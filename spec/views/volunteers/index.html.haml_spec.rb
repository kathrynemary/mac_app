require 'rails_helper'

RSpec.describe "volunteers/index.html.haml", type: :view do
 # before :each do
 #   User.create(first_name: "Jane", last_name: "Doe")
 # end

  it "does math" do
    expect(1 + 1).to eq(2)
  end

  it "displays some text" do
    render :text => "This is rendered!"
    expect(rendered).to include("rendered")
  end

  it "displays the new volunteer button" do
    render
    expect(rendered).to have_link("New Volunteer Account", new_volunteer_path)
  end

end
