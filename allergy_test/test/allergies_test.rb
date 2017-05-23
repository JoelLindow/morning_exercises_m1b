require 'minitest/autorun'
require 'minitest/pride'
require './lib/allergies'
require 'pry'

class AllergiesTest < Minitest::Test

  def test_we_have_a_class_called_allergies
    patient = Allergies.new(128)
    assert_instance_of Allergies, patient
  end

  def test_it_can_return_an_allergen
    patient = Allergies.new(128)

    assert_equal "cats", patient.confirmed_allergies
  end

  def test_it_can_return_another_allergen
    patient = Allergies.new(64)

    assert_equal "pollen", patient.confirmed_allergies
  end

  def test_it_can_return_mutiple_allergens
    patient = Allergies.new(3)

    assert_equal "peanuts, eggs", patient.confirmed_allergies
  end

  def test_it_can_return_mutiple_allergens
    patient = Allergies.new(3)

    assert_equal "peanuts, eggs", patient.confirmed_allergies
  end

end
