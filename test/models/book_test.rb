require 'test_helper'

class BookTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end

  test "book attributes must not be empty" do book = Book.new
  assert book.invalid?
  assert book.errors[:title].any?
    assert book.errors[:description].any?
    assert book.errors[:price].any?
    assert book.errors[:image_url].any?
  end
end
