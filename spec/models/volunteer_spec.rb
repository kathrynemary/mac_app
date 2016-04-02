require 'rails_helper'

describe Volunteer do

  it { should belong_to(:user) }
  it { should have_one(:vehicle) }
  it { should have_one(:accommodation) }

end
