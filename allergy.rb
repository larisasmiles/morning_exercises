# “Scientists have developed an allergy test that produces a single numeric score that summarizes information about all the allergies a person has.
#        The test checks for the following allergies and assigns them the corresponding value:
#        * eggs (1)
#        * peanuts (2)
#        * shellfish (4)
#        * strawberries (8)
#        * tomatoes (16)
#        * chocolate (32)
#        * pollen (64)
#        * cats (128)
#        If Jorge is allergic to peanuts and chocolate, he gets a score of 34.
#        You’re job is to write a program that takes the number and translates it back the allergens that the patient is allergic to.
#        In this case, 34 would translate back into a report saying that Jorge was allergic to peanuts and chocolate.
#        Because you all love TDD, here are some cases that you can test against:
#        * A score of two would mean that the patient is allergic to just peanuts.
#        * A score of 3 would mean that the patient is allergic to eggs and peanuts.”

require "pry"
class Allergy
  attr_reader :score

  def initialize(score)
    @score              = score
    multiple_allergies = []
    allergy_list       = {
      "eggs" => 1, "peanutes" => 2, "shellfish" => 4, "strawberries" => 8, "tomatoes" => 16, "chocolate" => 32, "pollen" => 64,
      "cats" => 128 }
  end

  def adding_allergies(score)
    allergy_list.each do |num, allergy| #look into .map...
      if @score - num >= 0
        multiple_allergies << allergy
        @score = score - num
        binding.pry
      end
  end
      multiple_allergies
  end
end

a = Allergy.new(3)
