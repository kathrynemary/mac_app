require 'rails_helper'

describe Organizer do
  subject { build(:organizer) }

  it { should belong_to(:user) }

  it "has a valid factory" do
    subject.valid?
    expect(subject.errors.messages).to eq({})
  end

end
