module Isbn
  ParseError = Class.new(StandardError)

  require "isbn/base"
  require "isbn/isbn13"
  require "isbn/isbn10"
  require "isbn/parser"

  def self.parse(string)
    Parser.parse(string)
  end
end
