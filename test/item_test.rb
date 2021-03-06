require './lib/item'
require 'minitest/autorun'
require 'minitest/pride'

class ItemTest < Minitest::Test

  def test_it_exists
    item = Item.new({name: 'Peach', price: "$0.75"})

    assert_instance_of Item, item
  end

  def test_it_has_attributes
    item1 = Item.new({name: 'Peach', price: "$0.75"})
    item2 = Item.new({name: 'Tomato', price: '$0.50'})

    assert_equal "Tomato", item2.name
    assert_equal "$0.50", item2.price
  end

  def test_items_can_be_added
    item1 = Item.new({name: 'Peach', price: "$0.75"})
    item2 = Item.new({name: 'Tomato', price: '$0.50'})


  end

  end

end
