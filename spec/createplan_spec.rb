


require "json"
require "selenium-webdriver"
require "rspec"
require "yaml"
require "mail"
require "./spec/helper.rb"
require "./spec/before.rb"
require "./spec/user.rb"
require "./spec/plan.rb"
include RSpec::Expectations

include Before
include User
include Plan

describe "Create Plan" do

  setup
  
  before(:each) do
    create_and_verify_user
  end
  
  after(:each) do
    destroy_plan
    remove_previously_added_user
    
    @driver.quit
    @verification_errors.should == []
  end
  
  it "create plan" do

    create_and_verify_plan
    sign_out_user

  end

end
