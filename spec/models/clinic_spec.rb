require 'rails_helper'

describe Clinic do

  it { should belong_to(:address) }
  it { should have_many(:business_hours) }

end
