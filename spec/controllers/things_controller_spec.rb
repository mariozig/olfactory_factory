require 'spec_helper'

describe ThingsController do
  let(:test_thing) { Thing.create! valid_attributes }

  def valid_attributes
    { :name => "Fish Oil" }
  end

  # This should return the minimal set of values that should be in the session
  # in order to pass any filters or authentication defined in the ThingsController.
  def valid_session
    {}
  end

  describe "GET 'new'" do
    before(:each) { get :new, {}, valid_session }
    it "returns http success" do
      response.should be_success
    end

    it "assigns a new thing as test_thing" do
      assigns(:thing).should be_a_new(Thing)
    end
  end

  describe "GET 'index'" do
    before(:each) do
      get :index, { :id => test_thing.to_param }, valid_session
    end

    it "should be successful" do
      response.should be_success
    end

    it "assigns all things as @things" do
      assigns(:things).should eq([test_thing])
    end
  end

  describe "GET 'show'" do
    before(:each) do
      get :show, { :id => test_thing.to_param }, valid_session
    end

    it "should be successful" do
      response.should be_success
    end

    it "assigns the requested thing as test_thing" do
      assigns(:thing).should eq(test_thing)
    end
  end

  describe "POST 'create'" do

    describe "with valid params" do

      before(:each) { post :create, { :thing => valid_attributes }, valid_session }

      it "creates a new Post" do
        expect {
          post :create, { :thing => valid_attributes }, valid_session
        }.to change(Thing, :count).by(1)
      end

      it "assigns a newly created thing as test_thing" do
        assigns(:thing).should be_a(Thing)
        assigns(:thing).should be_persisted
      end

      it "redirects to the things index" do
        response.should redirect_to(Thing)
      end
    end

    describe "with invalid params" do
      before(:each) do
        Thing.any_instance.stub(:save).and_return(false)
        post :create, { :thing => { name: nil } }, valid_session
      end

      it "assigns a newly created but unsaved thing as @thing" do
        assigns(:thing).should be_a_new(Thing)
      end

      it "re-renders the 'new' template" do
        response.should render_template("new")
      end
    end
  end

end