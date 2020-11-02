require 'rails_helper'

RSpec.describe PostsController, type: :controller do 
    describe "#index logged in" do
    login_user
    it "responds with 200 ok when not logged in" do 
    get :index
    expect(response).to be_successful
    end 

    it "current_user to have the right id" do 
        expect(subject.current_user.id).to eq(1)
    end 
end 



    describe "#index logged out" do 
        it "responds with 200 ok when not logged in" do 
        get :index
        expect(response).to be_successful
        end 

        it "does not have a current_user" do 
            expect(subject.current_user).to be(nil)
        end 
    end 

    describe "#hidden logged in" do 
        login_user
        it "responds with 200 ok" do 
            get :hidden
            expect(response).to be_successful
        end
        it "current_user to have the correct email" do 
            expect(subject.current_user.email).to eq("user@test.com")
        end     
    end 

    describe "#hidden logged out" do 
    it "responds with 200 ok" do 
        get :hidden
        expect(response).to have_http_status(302)
    end     
end 
end 