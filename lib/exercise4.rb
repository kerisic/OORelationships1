class ScrambledDiary
  def initialize(contents)
    @contents = contents
  end

  def read
    @contents
  end

  def give_it(transformation)
    @contents = transformation.transform(@contents)
  end
end

class Scramble_by_advancing_chars
  def initialize(steps)
    @steps = steps
  end

  def transform(contents)
    plain_chars = contents.chars
    scrambled_chars = plain_chars.map do |char|
      (char.ord + @steps).chr
    end
    contents = scrambled_chars.join
  end
end

class Unscramble_by_advancing_chars
  def initialize(steps)
    @steps = steps
  end

  def transform(contents)
    scrambled_chars = contents.chars
    plain_chars = scrambled_chars.map do |char|
      (char.ord - @steps).chr
    end
    contents = plain_chars.join
  end
end

class Scramble_by_reversing
  def transform(contents)
    contents.reverse
  end
end

class Unscramble_by_reversing
  def transform(contents)
    contents.reverse
  end
end
