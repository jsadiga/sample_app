require 'spec_helper'

describe "StaticPages" do
  describe "Home Page" do
    it "should have the contect 'Sample App'" do
      # Run the generator again with the --webrat flag if you want to use webrat methods/matchers
      visit '/static_pages/home'
      expect(page).to have_content('Sample App')
  end
    it "should have title Home" do
      visit '/static_pages/Home'
      expect(page).to have_title("Ruby on Rails Tutorial Sample app | Home")
    end
  end

      describe "Help page" do

      	it "should have content for 'Help'" do
      		visit '/static_pages/help'
      		expect(page).to have_content('Help')
      	end
        it "should have title Help" do
        visit '/static_pages/Help'
        expect(page).to have_title("Ruby on Rails Tutorial Sample app | Help")
    end
      end

      describe "About us" do
      	it " should have about" do
      		visit '/static_pages/about'
      		expect(page).to have_content('About us')      		
    end
        it "should have title About" do
        visit '/static_pages/About'
        expect(page).to have_title("Ruby on Rails Tutorial Sample app | About")
    end
  end
end
