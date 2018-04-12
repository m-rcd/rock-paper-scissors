require 'capybara/rspec'
require File.join(File.dirname(__FILE__), '..', '..', 'app.rb')

Capybara.app = RPS

describe "homepage", :type => :feature do
  it "says the name of the game" do
    visit '/'
    expect(page).to have_content 'ROCK PAPER SCISSORS'
  end
end

