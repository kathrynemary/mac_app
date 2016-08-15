require 'rails_helper'

describe User do
  subject { build(:user) }

  it { should have_one(:volunteer) }
  it { should have_one(:organizer) }
  it { should belong_to(:address) }

  it "has a valid factory" do
    subject.valid?
    expect(subject.errors.messages).to eq({})
  end
end
