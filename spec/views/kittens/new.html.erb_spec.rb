require 'rails_helper'

RSpec.describe "kittens/new", type: :view do
  before(:each) do
    assign(:kitten, Kitten.new(
      name: "MyString",
      age: 1,
      cuteness: "MyString",
      softness: "MyString"
    ))
  end

  it "renders new kitten form" do
    render

    assert_select "form[action=?][method=?]", kittens_path, "post" do

      assert_select "input[name=?]", "kitten[name]"

      assert_select "input[name=?]", "kitten[age]"

      assert_select "input[name=?]", "kitten[cuteness]"

      assert_select "input[name=?]", "kitten[softness]"
    end
  end
end
