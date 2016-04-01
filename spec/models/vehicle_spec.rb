require 'rails_helper'

describe Vehicle do

  it { should belong_to(:volunteer) }

end
