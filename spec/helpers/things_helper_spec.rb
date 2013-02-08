require 'spec_helper'

describe ThingsHelper do

  describe "#page_header" do
    let(:name) { "name text" }
    let(:subtext) { "sub text" }

    describe "name capitalization" do
      it { helper.page_header(name.downcase).should have_content(name.capitalize) }
      it { helper.page_header(name.downcase).should_not have_content(name.downcase) }
    end

    describe "without subtext" do
      subject(:output) { helper.page_header(name) }

      it { output.should have_selector("h1") }
      it { output.should_not have_selector("small") }
      it { output.should have_content(name.capitalize) }
      it { output.should_not have_content(subtext) }
    end

    describe "with subtext" do
      subject(:output) { helper.page_header(name, subtext) }

      it { output.should have_selector("h1") }
      it { output.should have_selector("small") }
      it { output.should have_content(name.capitalize) }
      it { output.should have_content(subtext) }
    end
  end
end