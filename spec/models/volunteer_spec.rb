require 'rails_helper'

describe Volunteer do

  it { should belong_to(:user) }
  it { should have_one(:car) }
  it { should have_one(:accommodation) }

end
