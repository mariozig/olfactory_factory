require 'spec_helper'

describe Adjective do
  before { @adjective =  FactoryGirl.create(:adjective) }

  subject { @adjective }

  it { should respond_to(:name) }
  it { should respond_to(:sensings) }
  it { should respond_to(:things) }
  it { should be_valid }
end
