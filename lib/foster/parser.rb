class Foster::Parser
  def self.parse(string)
    elements = string.split("-")
    case elements.length
    when 5
      Foster::Isbn13.new(elements)
    when 4
      Foster::Isbn10.new(elements)
    else
      raise string
    end
  end

  def self.parse(string)
    isbn = string.delete("-")
    case isbn.length
    when Foster::Isbn13::DIGITS
      raise ParseError, string unless Foster::Isbn13.valid?(isbn)
      prefix = isbn[0..2]
      registration_group = isbn[3]
      registrant = isbn[4..6]
      publication = isbn[7..11]
      check_digit = isbn[12]
      Foster::Isbn13.new([prefix, registration_group, registrant, publication, check_digit])
    when Foster::Isbn10::DIGITS
      raise ParseError, string unless Foster::Isbn10.valid?(isbn)
      registration_group = isbn[0]
      registrant = isbn[1..3]
      publication = isbn[4..8]
      check_digit = isbn[9]
      Foster::Isbn10.new([registration_group, registrant, publication, check_digit])
    else
      raise ParseError, string
    end
  end
end
