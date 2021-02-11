class User
  def initialize(name, bio, age, password)
    @name = name
    @bio = bio
    @age = age
    @password = Password.new(password)
  end

  def authenticate(candidate_password)
    @password.correct? ? true : false
  end

  def profile
    "#{@name}, born in #{birth_year}: #{@bio}"
  end

  private

  def birth_year
    Time.new.year - @age
  end
end

class Password
  def initialize(password)
    @password = password
  end

  def correct?(candidate_password)
    @password == candidate_password
  end
end
