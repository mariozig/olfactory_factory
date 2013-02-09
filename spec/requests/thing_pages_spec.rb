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

    describe "removing a thing" do
      it "should have delete icons" do
        should have_css('.icon-trash', :count => 2)
      end

      it "should reduce the Thing count by one" do
        expect {
          click_link("destroy-thing-#{thing1.id}")
        }.to change(Thing, :count).by(-1)
      end
    end

  end

  describe "show thing" do
    let(:thing) { FactoryGirl.create(:thing) }

    before(:each) { visit thing_path(thing) }

    it { should have_content(thing.name.capitalize) }
  end

  describe "adding a new thing" do
    before(:each) { visit new_thing_path }

    it { should have_field("thing_name") }
    it { should have_button("Create Thing") }

    it "should increase the thing count" do
      fill_in "Name", with: "roses"
      click_button "Create Thing"
    end
  end

end