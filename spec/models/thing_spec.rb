require 'spec_helper'

describe Thing do
  before { @thing = Thing.new(name: "lemon") }
  
  subject { @thing }
  
  it { should respond_to(:name) }
  it { should be_valid }
end
