require 'rails_helper'

describe Car do

  it { should belong_to(:volunteer) }

end
