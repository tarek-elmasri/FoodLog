require 'test_helper'

class EntryTest < ActiveSupport::TestCase
  test 'saving carb with string ?' do 
    entry= Entry.new(meal_type: "dinnner" , carbohydrates: "50" , fats: 30, calories: 500)
    assert entry.save
  end
end
