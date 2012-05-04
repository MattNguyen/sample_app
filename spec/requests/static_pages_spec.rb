require 'spec_helper'

describe "Static pages" do 
  subject { page }

  describe "Home pages" do
    before { visit root_path }

    it { should have_selector('h1', text: 'Sample App') }
    it { should have_selector('title', text: full_title(''))} 

    it { should_not have_selector('title', text: '| Home') }
  end

  describe "Contact" do
    before { visit contact_path }

    it { should have_selector('h1', text: 'Contact') }
    it { should have_selector('title', text: full_title('Contact')) } 
  end

  describe "About" do
    before { visit about_path }

    it { should have_selector('h1', text: 'About') }
    it { should have_selector('title', text: full_title('About')) } 

  end

  describe "Help" do
    before { visit help_path }

    it { should have_selector('h1', text: 'Help') }
    it { should have_selector('title', text: full_title('Help')) } 
  end
end