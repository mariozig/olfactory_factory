require 'spec_helper'

describe Thing do
  subject(:thing) { FactoryGirl.create(:thing) }

  describe "when valid" do
    it { should respond_to(:name) }
    it { should respond_to(:sensings) }
    it { should respond_to(:adjectives) }
    it { should be_valid }
  end

  describe "when invalid" do
    it "should require a name" do
      FactoryGirl.build(:thing, :name => nil).should_not be_valid
    end
  end

end
