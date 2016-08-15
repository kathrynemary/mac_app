require 'rails_helper'

describe User do
  subject { build(:user) }

  it { should have_one(:volunteer) }
  it { should have_one(:organizer) }
  it { should have_many(:addresses) }
  it { should have_many(:on_call_times) }

  it "has a valid factory" do
    subject.valid?
    expect(subject.errors.messages).to eq({})
  end
end
