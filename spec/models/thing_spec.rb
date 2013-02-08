require 'spec_helper'

describe Thing do
  subject(:thing) { FactoryGirl.create(:thing) }

  it { should respond_to(:name) }
  it { should respond_to(:sensings) }
  it { should respond_to(:adjectives) }
  it { should be_valid }
end
