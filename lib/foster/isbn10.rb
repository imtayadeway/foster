class Foster::Isbn10 < Foster::Base
  DIGITS = 10

  def self.valid?(string)
    true
  end

  def registration_group
    elements[0]
  end

  def registrant
    elements[1]
  end

  def publication
    elements[2]
  end

  def check_digit
    elements[3]
  end
end
