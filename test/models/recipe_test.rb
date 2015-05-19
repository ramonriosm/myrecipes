require 'test_helper'

class RecipeTest < ActiveSupport::TestCase
  
  def setup
    @recipe = Recipe.new(name: "Chicken parm",
                  summary: "This is the best chicken parm ever",
                  description: "add onions, tomato, chicken, fried for 20 minutos")
  end
  
  test "recipe should be valid" do
    assert @recipe.valid?
  end
  
  test "name should be present" do
    @recipe.name = " "
    assert_not @recipe.valid?
  end
  
  test "name lenght should no be to long" do
    @recipe.name = "a"*101
    assert_not @recipe.valid?
  end
  
  test "name lenght should no be to short" do
    @recipe.name = "a"*4
    assert_not @recipe.valid?
  end
  
  test "summary should be present" do
    @recipe.summary = " "
    assert_not @recipe.valid?
  end
  
  test "summary lenght should no be to long" do
    @recipe.summary = "a"*151
    assert_not @recipe.valid?
  end
  
  test "summary lenght should no be to short" do
    @recipe.summary = "a"*9
    assert_not @recipe.valid?
  end
  
  test "description should be present" do
    @recipe.description = " "
    assert_not @recipe.valid?
  end
  
  test "description lenght should no be to long" do
    @recipe.description = "a"*501
    assert_not @recipe.valid?
  end
  
  test "description lenght should no be to short" do
    @recipe.description = "a"*19
    assert_not @recipe.valid?
  end
  
end