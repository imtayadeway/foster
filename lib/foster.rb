module Foster
  ParseError = Class.new(StandardError)

  require "foster/base"
  require "foster/isbn13"
  require "foster/isbn10"
  require "foster/parser"

  def self.parse(string)
    Parser.parse(string)
  end
end
