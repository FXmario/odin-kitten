require 'rails_helper'

RSpec.describe "kittens/edit", type: :view do
  before(:each) do
    @kitten = assign(:kitten, Kitten.create!(
      name: "MyString",
      age: 1,
      cuteness: "MyString",
      softness: "MyString"
    ))
  end

  it "renders the edit kitten form" do
    render

    assert_select "form[action=?][method=?]", kitten_path(@kitten), "post" do

      assert_select "input[name=?]", "kitten[name]"

      assert_select "input[name=?]", "kitten[age]"

      assert_select "input[name=?]", "kitten[cuteness]"

      assert_select "input[name=?]", "kitten[softness]"
    end
  end
end
