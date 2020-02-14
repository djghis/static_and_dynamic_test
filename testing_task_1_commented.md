### Testing task 1:

# Carry out static testing on the code below.
# Comment on any errors that you see below.
```ruby

class CardGame  


  def checkforAce(card)  #should have underscore check_for_ace not Ace
    if card.value = 1  #should be ==
      return true
    else
      return false
    end
  end

  dif highest_card(card1 card2)  #should be def, also need a coma between card1 and card 2
  if card1.value > card2.value
    return card   #it missing the integer 1
  else
    return card2
end
end  #indentation is wrong

def self.cards_total(cards)
  total  # we don't know what total is.
  for card in cards
    total += card.value
    return "You have a total of" + total  #this is in the wrong place and need to be string interpolated.
  end
end
```
