require 'rails_helper'

describe BusinessHour do

  subject { build(:business_hour) }

  it { should belong_to(:clinic) }

  it "has a valid factory" do
    subject.valid?
    expect(subject.errors.messages).to eq({})
  end

end
