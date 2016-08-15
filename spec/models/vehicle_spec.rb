require 'rails_helper'

describe Vehicle do
  subject { build(:vehicle) }

  it { should belong_to(:volunteer) }

  it "has a valid factory" do
    subject.valid?
    expect(subject.errors.messages).to eq({})
  end

end
