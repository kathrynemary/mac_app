require 'rails_helper'

describe Address do

  it { should have_one(:user) }
  it { should have_one(:clinic) }

end
