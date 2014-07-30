2.
  * Write a method `grade` that takes in a numerical grade 1-100 and
     prints out the letter version of it.
```
# Here's a solution using case statements
def number_to_grade(score)
  case score
  when 90..100
    # Note: I'm assuming there's no extra credit
    "A"
  when 80..90
    "B"
  when 70..80
    "C"
  when 60..70
    "D"
  else
    "F"
  end
end

# Here's the equivalent using if/elsif/else
def number_to_grade(score)
  if score >= 90
    # Note: this works for scores > 100
    "A"
  elsif score >= 80
    # I don't need to worry about scores > 90 because
    # the if above would have caught them
    "B"
  elsif score >= 70
    "C"
  elsif score >= 60
    "D"
  else
    "F"
  end
end
```

* Write a function that produces an array of random scores:
   `students(5) = [88, 93, 91, 73, 97]`

```
# Explicit, wordier, but totally fine version
def students(count)
  result = []
  count.times do
    result << (1..100).to_a.sample
  end
  result
end

# More idiomatic, slightly better
def students(count)
  count.times.map { Random.rand(100) }
end
```

* Compute the grades for a class of 25 students. Write a function to
  determine how many A's there were.
```
student_scores = students(25)

class_grades = Hash.new(0)
student_scores.each do |score|
  letter_grade = grade(score)
  # Scores start at 0 because of the `Hash.new(0)` above
  class_grades[letter_grade] += 1
end

puts class_grades
puts "#{class_grades["A"]} many A's"
```

3. Will be covered in class

4. Write a shopping cart class that stores any number of items
   * Users should be able to add and remove items from the cart
   * The cart should be able to compute the total checkout price, after applying tax
   * Shoppers get a 10% discout if they spend more than $100 (before tax)
```
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
    unless Inventory.includes?(item)
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
```
