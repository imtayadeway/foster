class Isbn::Isbn13 < Isbn::Base
  DIGITS = 13

  def self.valid?(string)
    true
  end

  def prefix
    elements[0]
  end

  def registration_group
    elements[1]
  end

  def registrant
    elements[2]
  end

  def publication
    elements[3]
  end

  def check_digit
    elements[4]
  end
end
