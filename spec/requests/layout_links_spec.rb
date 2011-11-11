require 'spec_helper'

describe "LayoutLinks" do
  it "should have a Home page at '/'"
    get '/'
    response.should have_selector('title', :content=> "Home")
    
    it "should have a Contact page at '/contact'"
    get '/contact'
    response.should have_selector('title', :content=>"Contact")
    
    it "should have an About page at '/about'"
    get '/About'
    response.should have_selector('title', :content=>"About")
    
    it "should have a Help page at '/help'"
    get '/Help'
    response.should have_selector('title', :content=>"Help")
    
    it "should have a signup page at '/signup'"
    get '/signup'
    response.should have_selector('title', :content=>"Sign up")
    
    it "should have the right links on the layout"
    visit root_path
    response.should have_selector('title', :content => "Home")
    click_link "About"
    response.should have_selector('title', :content => "About")
    click_link "Contact"
    response.should have_selector('title', :content => "Contact")
end
