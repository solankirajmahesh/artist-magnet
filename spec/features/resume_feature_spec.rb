require 'rails_helper'
require 'spec_lib'

feature "Resume" do
  user = nil
  before :each do
    user ||= FactoryGirl.create(:user)
    visit_home
  end

  scenario "can be created from the homepage", :js => true do
    within("#sidebar-item-build-resume") do
      click_link 'New Resume'
    end
    expect(page).to have_text('Credits')
  end

end

