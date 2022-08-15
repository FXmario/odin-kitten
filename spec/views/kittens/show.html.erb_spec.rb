require 'rails_helper'

RSpec.describe "kittens/show", type: :view do
  before(:each) do
    @kitten = assign(:kitten, Kitten.create!(
      name: "Name",
      age: 2,
      cuteness: "Cuteness",
      softness: "Softness"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Name/)
    expect(rendered).to match(/2/)
    expect(rendered).to match(/Cuteness/)
    expect(rendered).to match(/Softness/)
  end
end
