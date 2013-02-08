require 'spec_helper'

describe Sensing do
  subject(:sensing) { FactoryGirl.create(:sensing) }

  it { should respond_to(:thing) }
  it { should respond_to(:adjective) }
  it { should be_valid }
end
