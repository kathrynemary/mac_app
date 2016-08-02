require 'rails_helper'

describe Volunteer do
  subject { build(:volunteer) }

  it { should belong_to(:user) }
  it { should have_one(:vehicle) }
  it { should have_one(:accommodation) }

  it "has a valid factory" do
    subject.valid?
    expect(subject.errors.messages).to eq({})
  end

end
