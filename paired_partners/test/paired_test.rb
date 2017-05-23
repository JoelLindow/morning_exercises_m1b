require 'minitest/autorun'
require 'minitest/pride'
require './lib/paired'

class PairedTest < Minitest::Test

  def test_it_exists
    paired = Paired.new(["Aby", "Bernadette", "Charles", "Dana", "Eddie", "Fernanda", "Gus", "Hiro"])

    assert_instance_of Paired, paired
  end

  def test_names_have_properly_stored_as_items_in_an_array_data_structure
    paired = Paired.new(["Aby", "Bernadette", "Charles", "Dana", "Eddie", "Fernanda", "Gus", "Hiro"])

    assert_equal Array, paired.name_list.class
  end

  def test_it_can_return_a_single_name_from_the_list
    paired = Paired.new(["Aby", "Bernadette", "Charles", "Dana", "Eddie", "Fernanda", "Gus", "Hiro"])

    assert_equal "Aby", paired.name_list[0]
  end

  def test_it_can_return_proper_pairs_with_no_duplicates
    paired = Paired.new(["Aby", "Bernadette", "Charles", "Dana", "Eddie", "Fernanda", "Gus", "Hiro"])
    paired.return_pairs

    pair_list = [

                ]

  end

  def test_it_can_return_proper_pairs_with_no_duplicates
    paired = Paired.new(["Aby", "Bernadette", "Charles", "Dana", "Eddie", "Fernanda", "Gus", "Hiro"])
    paired.return_pairs
    pair_list = [
            ["Bernadette", "Aby"],
            ["Charles", "Aby"],
            ["Charles", "Bernadette"],
            ["Dana", "Aby"],
            ["Dana", "Bernadette"],
            ["Dana", "Charles"],
            ["Eddie", "Aby"],
            ["Eddie", "Bernadette"],
            ["Eddie", "Charles"],
            ["Eddie", "Dana"],
            ["Fernanda", "Aby"],
            ["Fernanda", "Bernadette"],
            ["Fernanda", "Charles"],
            ["Fernanda", "Dana"],
            ["Fernanda", "Eddie"],
            ["Gus", "Aby"],
            ["Gus", "Bernadette"],
            ["Gus", "Charles"],
            ["Gus", "Dana"],
            ["Gus", "Eddie"],
            ["Gus", "Fernanda"],
            ["Hiro", "Aby"],
            ["Hiro", "Bernadette"],
            ["Hiro", "Charles"],
            ["Hiro", "Dana"],
            ["Hiro", "Eddie"],
            ["Hiro", "Fernanda"],
            ["Hiro", "Gus"]
            ]
    assert_equal pair_list, paired.pairs
  end
end
