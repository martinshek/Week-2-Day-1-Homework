require("minitest/autorun")
require("minitest/rg")

require_relative('../codeclan_student.rb')

class TestStudent < MiniTest::Test

  def setup
    @student = Student.new("Shaggy", "G7")
end

def test_getting_name
  result = @student.name()
  assert_equal("Shaggy", result)
end

def test_getting_cohort
  result = @student.cohort()
  assert_equal("G7", result)
end

def test_update_name
  @student.set_name("Scrappy")
  assert_equal("Scrappy", @student.name())
end

def test_update_cohort
  @student.set_cohort("G8")
  assert_equal("G8", @student.cohort())
end

def test_student_talk
  result = @student.talk()
  assert_equal("I can't talk!", result)
end

def test_student_fave_lang
  result = @student.fave_lang("Ruby")
  assert_equal("I love Ruby", result)
end

end

# Create a class called Student that takes in a name (String) and a cohort (string - e.g "E18", "G6", etc) when an new instance is created.
# Create a couple of Getter methods, one that returns the name property and one that returns the cohort property of the student.
# Add in Setter methods to update the students name and what cohort they are in.
# Create a method that gets the student to talk (eg. Returns "I can talk!).
# Create a method that takes in a students favourite programming language and returns it as part of a string (eg. student1.say_favourite_language("Ruby") -> "I love Ruby").
