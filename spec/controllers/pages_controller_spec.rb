require 'spec_helper'
require 'pp'

describe PagesController do
  render_views
	
  describe "GET 'home'" do
  
    it "returns http success" do
      get 'home'
      response.should be_success
    end

    it "it should have correct title" do
      get 'home'
      response.body.should have_selector("title", :text => "Ruby on Rails Tutorial Sample App | Home")
    end
  end

  describe "GET 'contact'" do
    it "returns http success" do
      get 'contact'
      response.should be_success
    end

    it "it should have correct title" do
      get 'contact'
      response.body.should have_selector("title", :text => "Ruby on Rails Tutorial Sample App | Contact")
    end
 
 	it "shouls have a non-blank body" do
 		get 'contact'
 		response.body.should_not =~ /<body>\s*<\/body>/
 	end
  end

  describe "GET 'about'" do
    it "returns http success" do
      get 'about'
      response.should be_success
    end
    
    it "it should have correct title" do
      get 'about'
      response.body.should have_selector("title", :text => "Ruby on Rails Tutorial Sample App | About")
    end
    
  end

end
