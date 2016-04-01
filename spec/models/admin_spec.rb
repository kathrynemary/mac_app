require 'rails_helper'

describe Admin do

  it { should belong_to(:user) }

end
