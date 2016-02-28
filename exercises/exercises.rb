require 'minitest/autorun'
require 'minitest/pride'
require './lib/wand'
require './lib/wizard'
require './lib/pet'

class EnumsTest < Minitest::Test

  def test_each_wand
    wands = []
    wands << Wand.new("Elm", 12, "Unicorn Hair")
    wands << Wand.new("Cherry", 11, "Basilisk Fang")
    wands << Wand.new("Oak", 14, "Dragon Heartstring")
    wands << Wand.new("Pine", 13, "Phoenix Feather")

    result = []

    wands.each do |wand|
      # your code goes here
    end

    expected = ["Elm", "Cherry", "Oak", "Pine"]

    assert_equal expected, result
  end

  def test_wizards_string
    wizards = []
    wizards << Wizard.new("Draco Malfoy")
    wizards << Wizard.new("Bellatrix Lestrange")
    wizards << Wizard.new("Lucius Malfoy")
    wizards << Wizard.new("Fenrir Greyback")
    wizards << Wizard.new("Amycus Carrow")

    result = ""

    wizards.each do |wizard|
      # your code goes here
    end

    expected = "Malfoy Lestrang Malfoy Greyback Carrow"
  end

  def test_can_wands_grow
    wands = []
    wands << Wand.new("Elm", 12, "Unicorn Hair")
    wands << Wand.new("Cherry", 11, "Basilisk Fang")
    wands << Wand.new("Oak", 14, "Dragon Heartstring")
    wands << Wand.new("Pine", 13, "Phoenix Feather")

    actual = wand_sizes.map do |size|
      # your code goes here
    end

    expected = [14, 13, 16, 14]

    assert_equal expected, actual
  end

  def test_can_get_all_12_inch_wands

    wand1 = Wand.new("Elm", 12, "Unicorn Hair")
    wand2 = Wand.new("Cherry", 11, "Basilisk Fang")
    wand3 = Wand.new("Oak", 12, "Dragon Heartstring")
    wand4 = Wand.new("Pine", 13, "Phoenix Feather")

    wands = [wand1, wand2, wand3, wand4]

    actual = wands.select do |wand|
      # your code here
    end

    expected = [wand1, wand3]

    assert_equal expected, actual
  end

end
