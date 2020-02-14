require('minitest/autorun')
require('minitest/reporters')
require('pry')
Minitest::Reporters.use! Minitest::Reporters::SpecReporter.new

require_relative('../card_game')
require_relative('../card')

class TestCardgame < Minitest::Test

  def setup
    @cardgame = CardGame.new
    @card = Card.new("hearts", 1)
    @card1 = Card.new("diamonds", 3)
    @card2 = Card.new("clubs", 5)
    @cards = [@card1, @card2]
  end


  def test_check_for_ace
    result = @cardgame.check_for_ace(@card)
    assert_equal(true, result)
  end

  def test_check_for_ace_it_is_not
    result = @cardgame.check_for_ace(@card1)
    assert_equal(false, result)
  end
  #
  #
  def test_highest_card
    result = @cardgame.highest_card(@card1, @card2)
    assert_equal(5, result.value)
  end

  def test_cards_total
    result = CardGame.cards_total(@cards)
    assert_equal("You have a total of 8", result)
  end

end
