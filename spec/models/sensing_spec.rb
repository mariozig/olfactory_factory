require 'spec_helper'

describe Sensing do
  before { @sensing = FactoryGirl.create(:sensing) }

  subject { @sensing }

  it { should respond_to(:thing) }
  it { should respond_to(:adjective) }
  it { should be_valid }
end
