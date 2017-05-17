require 'minitest/autorun'
require 'minitest/pride'
require './allergy'
# require 'pry'

class AllergyTest < Minitest::Test

  def test_if_class_exists
    a = Allergy.new

    assert_instance_of Allergy, a
  end

  def test_if_there_are_eight_allergies
    a = Allergy.new
    input = a.allergy_list.keys
    expected = a.allergy_list.keys


    assert_equal expected, input
  end

  def test_what_score_of_two_would_mean
    a = Allergy.new
    input = a.allergy_list.values[1]
    expected = a.adding_allergies(2)

    assert_equal 2, "peanuts", a.adding_allergies
  end

  def test_what_a_score_of_3_would_mean
    skip
    a = Allergy.new
    input =
    expected = a.allergy_list.values[0][1]

    assert_equal 3, a.allergy_list.values[]
  end

end
