require 'spec_helper'

describe "Thing pages" do

  subject { page }

  describe "thing listing" do
    let!(:thing1) { FactoryGirl.create(:thing) }
    let!(:thing2) { FactoryGirl.create(:thing) }

    before(:each) { visit things_path }

    describe "things" do
      it { find_link(thing1.name)[:href].should ==  thing_path(thing1) }
      it { find_link(thing2.name)[:href].should ==  thing_path(thing2) }
    end

  end
end