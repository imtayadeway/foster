class Isbn::Parser
  def self.parse(string)
    elements = string.split("-")
    case elements.length
    when 5
      Isbn::Isbn13.new(elements)
    when 4
      Isbn::Isbn10.new(elements)
    else
      raise string
    end
  end

  def self.parse(string)
    isbn = string.delete("-")
    case isbn.length
    when Isbn::Isbn13::DIGITS
      raise ParseError, string unless Isbn::Isbn13.valid?(isbn)
      prefix = isbn[0..2]
      registration_group = isbn[3]
      registrant = isbn[4..6]
      publication = isbn[7..11]
      check_digit = isbn[12]
      Isbn::Isbn13.new([prefix, registration_group, registrant, publication, check_digit])
    when Isbn::Isbn10::DIGITS
      raise ParseError, string unless Isbn::Isbn10.valid?(isbn)
      registration_group = isbn[0]
      registrant = isbn[1..3]
      publication = isbn[4..8]
      check_digit = isbn[9]
      Isbn::Isbn10.new([registration_group, registrant, publication, check_digit])
    else
      raise ParseError, string
    end
  end
end
