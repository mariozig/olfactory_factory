require 'spec_helper'

describe Thing do
  before { @thing = Thing.new(name: "lemon") }

  subject { @thing }

  it { should respond_to(:name) }
  it { should respond_to(:sensings) }
  it { should respond_to(:adjectives) }
  it { should be_valid }
end
