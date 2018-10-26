require 'minitest/autorun'
require 'minitest/pride'
require './multilinguist.rb'

class TestMultilinguist < MiniTest::Test

  def test_language_in
    #define
      linguist = Multilinguist.new

    #act
      expected = "en"
      actual = linguist.language_in("USA")

    #assert
      assert_equal(expected, actual)
  end
end
