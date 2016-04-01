require 'rails_helper'

describe User do

  it { should have_one(:volunteer) }
  it { should have_one(:admin) }
  it { should belong_to(:address) }

end
