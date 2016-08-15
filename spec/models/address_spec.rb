require 'rails_helper'

describe Address do

  subject { build(:address) }

  it { should have_one(:user) }
  it { should have_one(:clinic) }

  it "has a valid factory" do
    subject.valid?
    expect(subject.errors.messages).to eq({})
  end

end
