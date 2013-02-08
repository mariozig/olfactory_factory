require 'spec_helper'

describe Adjective do
  subject(:adjective) { FactoryGirl.create(:adjective) }

  it { should respond_to(:name) }
  it { should respond_to(:sensings) }
  it { should respond_to(:things) }
  it { should be_valid }
end
