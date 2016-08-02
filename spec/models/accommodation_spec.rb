require 'rails_helper'

describe Accommodation do
  subject { build(:accommodation) }

  it { should belong_to(:volunteer) }

  it "has a valid factory" do
    subject.valid?
    expect(subject.errors.messages).to eq({})
  end
end
