require 'rails_helper'

describe Message do
  it { should belong_to(:sender) }
  it { should belong_to(:recipient) }
end
