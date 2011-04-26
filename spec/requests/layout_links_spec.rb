require 'spec_helper'

describe "LayoutLinks" do

	it "should have home page at root" do
		get '/'
		response.should have_selector(
				'title', 
				:content => "Home")
	end

	it "should have contact page" do
		get '/contact'
		response.should have_selector(
				'title', 
				:content => "Contact")
	end

	it "should have about page" do
		get '/about'
		response.should have_selector(
				'title', 
				:content => "About")
	end

	it "should have help page" do
		get '/help'
		response.should have_selector(
				'title', 
				:content => "Help")
	end

	it "should have signup page" do
		get '/signup'
		response.should have_selector(
				'title', 
				:content => "Sign up")
	end

  it "should have the right links on the layout" do
    visit root_path
    click_link "About"
    response.should have_selector('title', :content => "About")
    click_link "Help"
    response.should have_selector('title', :content => "Help")
    click_link "Contact"
    response.should have_selector('title', :content => "Contact")
    click_link "Home"
    response.should have_selector('title', :content => "Home")
    click_link "Sign up"
    response.should have_selector('title', :content => "Sign up")
	end

end
