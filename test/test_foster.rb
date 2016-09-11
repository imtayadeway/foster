require "helper"

class TestFoster < Minitest::Test
  def test_that_it_parses_an_isbn_13_string
    isbn13 = Foster.parse("978-0-679-72009-6")
    assert(isbn13.kind_of?(Foster::Isbn13))
  end

  def test_that_it_parses_an_isbn_13_prefix
    isbn13 = Foster.parse("978-0-679-72009-6")
    assert_equal("978", isbn13.prefix)
  end

  def test_that_it_parses_an_isbn_13_registration_group
    isbn13 = Foster.parse("978-0-679-72009-6")
    assert_equal("0", isbn13.registration_group)
  end

  def test_that_it_parses_an_isbn_13_registrant
    isbn13 = Foster.parse("978-0-679-72009-6")
    assert_equal("679", isbn13.registrant)
  end

  def test_that_it_parses_an_isbn_13_publication
    isbn13 = Foster.parse("978-0-679-72009-6")
    assert_equal("72009", isbn13.publication)
  end

  def test_that_it_parses_an_isbn_13_check_digit
    isbn13 = Foster.parse("978-0-679-72009-6")
    assert_equal("6", isbn13.check_digit)
  end

  def test_that_it_can_find_an_english_language_publisher
    require "foster/publishers"
    isbn13 = Foster.parse("978-0-679-72009-6")
    assert_equal("Random House; Alfred A. Knopf", isbn13.publisher)
  end

  def test_that_it_parses_an_isbn_10_string
    isbn10 = Foster.parse("0-679-72009-6")
    assert(isbn10.kind_of?(Foster::Isbn10))
  end

  def test_that_it_parses_an_isbn_10_registration_group
    isbn10 = Foster.parse("0-679-72009-6")
    assert_equal("0", isbn10.registration_group)
  end

  def test_that_it_parses_an_isbn_10_registrant
    isbn10 = Foster.parse("0-679-72009-6")
    assert_equal("679", isbn10.registrant)
  end

  def test_that_it_parses_an_isbn_10_publication
    isbn10 = Foster.parse("0-679-72009-6")
    assert_equal("72009", isbn10.publication)
  end

  def test_that_it_parses_an_isbn_10_check_digit
    isbn10 = Foster.parse("0-679-72009-6")
    assert_equal("6", isbn10.check_digit)
  end
end
