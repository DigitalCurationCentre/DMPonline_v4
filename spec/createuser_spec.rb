require "json"
require "selenium-webdriver"
require "rspec"
require "yaml"
require "mail"
require "./spec/helper.rb"
require "./spec/before.rb"
require "./spec/after.rb"
require "./spec/user.rb"
include RSpec::Expectations

include Before
include After
include User

describe "Create User" do

  setup 

  
  teardown
    
  after(:all) do
    begin
      remove_previously_added_user('dmp_user')
    rescue
      screen_capture
    end
  end
  
  after(:each) do
    if !example.instance_variable_get(:@exception).nil? 
      screen_capture
    end
  end
    
  it "create user" do
    create_and_verify_user
    sign_out_user 
    	
  end
    
end
