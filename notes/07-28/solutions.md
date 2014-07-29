These are my example approaches. Yours are likely to look somewhat
different.

* Define a function to find the hypotenuse of a right triangle
  with side lengths a and b

def hypotenuse a,b
  Math.sqrt(a**2 + b**2)
end

* What methods do strings have that symbols don't? Describe a few.
> "".methods - :a.methods
=> [:+, :*, :%, :[]=, :insert, :bytesize, :succ!, :next!, :upto, :index, :rindex, :replace, :clear, :chr, :getbyte, :setbyte, :byteslice, :scrub, :scrub!, :to_i, :to_f, :to_str, :dump, :upcase!, :downcase!, :capitalize!, :swapcase!, :hex, :oct, :split, :lines, :bytes, :chars, :codepoints, :reverse, :reverse!, :concat, :<<, :prepend, :crypt, :ord, :include?, :start_with?, :end_with?, :scan, :ljust, :rjust, :center, :sub, :gsub, :chop, :chomp, :strip, :lstrip, :rstrip, :sub!, :gsub!, :chop!, :chomp!, :strip!, :lstrip!, :rstrip!, :tr, :tr_s, :delete, :squeeze, :count, :tr!, :tr_s!, :delete!, :squeeze!, :each_line, :each_byte, :each_char, :each_codepoint, :sum, :slice!, :partition, :rpartition, :force_encoding, :b, :valid_encoding?, :ascii_only?, :unpack, :encode, :encode!, :to_r, :to_c]
lines - splits the string into lines
starts_with? - tests if the string starts with a certain prefix
chomp - removes newlines from the end of a string

* What methods do symbols have that strings don't?
> :a.methods - "".methods
=> [:id2name, :to_proc]

* Why doesn't Fixnum.new work?
- it isn't defined to work
- new is a private method
- there isn't an obvious "empty" number
- ...

* Write code using methods on at least one number, string, symbol,
  array and hash.
(Answers will vary wildly)

* Define Musher class such that
  Musher.new("+").mush(["array", "of", "strings"])  == "array + of + strings"

class Musher
  def initialize separator
    @separator = separator
  end

  def mush words
    words.join(" #{@separator} ")
  end
end

* Define an Averager class that can compute the average of two numbers.

class Averager
  def initialize fst,snd
    @fst, @snd
  end

  def average
    (@fst + @snd) / 2.0
  end
end
Averager.new(5,15).average
=> 10

class Averager2
  def initialize
  end

  def average fst, snd
    (fst + snd) / 2.0
  end
end
Averager.new.average(5,15)
=> 10

class Averager3
  def self.average fst, snd
    (fst + snd) / 2.0
  end
end
Averager.average(5,15)
=> 10

class MultiAverager
  def self.average *numbers
    numbers.reduce(&:+) / numbers.length.to_f
  end
end

* Write a script to read list of lines from a file and print one at random
File.read("/path/to/file").lines.sample.chomp
