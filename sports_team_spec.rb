require("minitest/autorun")
require("minitest/rg")

require_relative('../sports_team.rb')

class TestTeam < MiniTest::Test

def setup
  @team = Team.new("Rangers", ["Ronaldo", "Messi"], "Ferguson")
end

def test_getting_team_name
  result = @team.team_name()
  assert_equal("Rangers", result)
end

def test_getting_players_name
  result = @team.players()
  assert_equal(["Ronaldo","Messi"], result)
end

def test_getting_coach_name
  result = @team.coach()
  assert_equal("Ferguson", result)
end

def test_update_coach_name
  @team.set_name("Klopp")
 assert_equal("Klopp", @team.coach())
end

def test_add_player
  @team.add_players("Kane")
  assert_equal(3, @team.players.length)
end

def test_check_players
  result = @team.player_check("Ronaldo")
  assert_equal(true, result)
end

end

# Now we would like you to make a class that represents a sports team.
#
# Make a class to represent a Team that has the properties Team name (String), Players (array of strings) and a Coach (String).
# For each property in the class make a getter method than can return them.
# Create a setter method to allow the coach's name to be updated.
# Refactor the class to use attr_reader or attr_accessor instead of your own getter and setter methods.
# Create a method that adds a new player to the players array.
# Add a method that takes in a string of a player's name and checks to see if they are in the players array.
# Add a points property into your class that starts at 0.
# Create a method that takes in whether the team has won or lost and updates the points property for a win.
