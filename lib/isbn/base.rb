class Isbn::Base
  def initialize(elements)
    @elements = elements
  end

  private

  attr_reader :elements
end
