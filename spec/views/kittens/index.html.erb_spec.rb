require 'rails_helper'

RSpec.describe "kittens/index", type: :view do
  before(:each) do
    assign(:kittens, [
      Kitten.create!(
        name: "Name",
        age: 2,
        cuteness: "Cuteness",
        softness: "Softness"
      ),
      Kitten.create!(
        name: "Name",
        age: 2,
        cuteness: "Cuteness",
        softness: "Softness"
      )
    ])
  end

  it "renders a list of kittens" do
    render
    assert_select "tr>td", text: "Name".to_s, count: 2
    assert_select "tr>td", text: 2.to_s, count: 2
    assert_select "tr>td", text: "Cuteness".to_s, count: 2
    assert_select "tr>td", text: "Softness".to_s, count: 2
  end
end
