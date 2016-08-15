require 'rails_helper'

describe Clinic do
  subject { build(:clinic) }

  it { should belong_to(:address) }
  it { should have_many(:business_hours) }

  it "has a valid factory" do
    subject.valid?
    expect(subject.errors.messages).to eq({})
  end

end
