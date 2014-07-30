Inventory = {
   apple:  1.00,
   banana: 2.00,
   carrot: 3.00
}

class Cart
  def initialize
    @contents = Hash.new(0)
  end

  def add(item)
    unless Inventory.include?(item)
      raise "You can't buy what we don't have"
    end
    @contents[item] += 1
  end

  def remove(item)
    unless @contents[item] > 0
      raise "You don't have any #{item} so you can't remove them"
    end
    @contents[item] -= 1
  end

  def subtotal
    sub = 0
    @contents.each do |item, amount|
      cost = Inventory[item]
      sub += cost * amount
    end
    sub
  end

  def total
    sub = subtotal
    # 10% discount on orders above $100
    sub = 0.9 * sub if sub >= 100
    # Tax
    sub * 1.07
  end
end
