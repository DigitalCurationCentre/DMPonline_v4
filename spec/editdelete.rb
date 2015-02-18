require "json"
require "selenium-webdriver"
require "rspec"
include RSpec::Expectations

describe "Editdelete" do

  before(:each) do
    @driver = Selenium::WebDriver.for :firefox
    @base_url = "http://leeds.library.ualberta.ca/"
    @accept_next_alert = true
    @driver.manage.timeouts.implicit_wait = 30
    @verification_errors = []
  end
  
  after(:each) do
    @driver.quit
    @verification_errors.should == []
  end
  
  it "test_editdelete" do
    @driver.get(@base_url + "/")
    @driver.find_element(:id, "user_email").clear
    @driver.find_element(:id, "user_email").send_keys "dit.test@ualberta.ca"
    @driver.find_element(:id, "user_password").clear
    @driver.find_element(:id, "user_password").send_keys "password"
    @driver.find_element(:name, "commit").click
    verify { (@driver.find_element(:css, "a.dropdown-toggle").text).should == "Signed in as dit.test@ualberta.ca" }
    @driver.find_element(:link, "My plans").click
    @driver.find_element(:xpath, "(//a[contains(text(),'Create plan')])[2]").click
    @driver.find_element(:id, "no-funder").click
    @driver.find_element(:id, "create-plan-button").click
    @driver.find_element(:id, "new-project-confirmed").click
    @driver.find_element(:name, "commit").click
    @driver.find_element(:link, "My plans").click
    @driver.find_element(:link, "Edit").click
    @driver.find_element(:link, "Answer questions").click
    @driver.find_element(:xpath, "//div[@id='sections-accordion']/div/div/a/span").click
    @driver.find_element(:css, "span.plus-laranja").click
    verify { (@driver.find_element(:id, "1049144766-status").text).should == "Not answered yet" }
    @driver.find_element(:name, "commit").click
    verify { (@driver.find_element(:id, "1049144766-status").text).should == "Answered less than a minute ago by dit.test@ualberta.ca" }
    @driver.find_element(:xpath, "//div[@id='sections-accordion']/div[3]/div/a/div").click
    @driver.find_element(:css, "#1049144772-guidance > div.accordion-group > div.accordion-heading > a.accordion-guidance-link > span.plus-laranja").click
    @driver.find_element(:css, "#question-form-1049144772 > #new_answer > fieldset.actions > ol > #answer_submit_action > input[name=\"commit\"]").click
    @driver.find_element(:xpath, "//div[@id='sections-accordion']/div[5]/div/a/span").click
    @driver.find_element(:css, "#1049144775-guidance > div.accordion-group > div.accordion-heading > a.accordion-guidance-link > span.plus-laranja").click
    @driver.find_element(:css, "#question-form-1049144775 > #new_answer > fieldset.actions > ol > #answer_submit_action > input[name=\"commit\"]").click
    @driver.find_element(:css, "#question-form-1049144775 > #new_answer > fieldset.actions > ol > #answer_submit_action > input[name=\"commit\"]").click
    @driver.find_element(:xpath, "//div[@id='sections-accordion']/div[7]/div/a/span").click
    @driver.find_element(:css, "#question-form-1049144777 > #new_answer > fieldset.actions > ol > #answer_submit_action > input[name=\"commit\"]").click
    @driver.find_element(:xpath, "//div[@id='sections-accordion']/div[9]/div/a/span").click
    @driver.find_element(:css, "#question-form-1049144781 > #new_answer > fieldset.actions > ol > #answer_submit_action > input[name=\"commit\"]").click
    @driver.find_element(:xpath, "//div[@id='sections-accordion']/div[11]/div/a/span").click
    @driver.find_element(:css, "#question-form-1049144784 > #new_answer > fieldset.actions > ol > #answer_submit_action > input[name=\"commit\"]").click
    @driver.find_element(:link, "Plan details").click
    @driver.find_element(:link, "Edit plan details").click
    @driver.find_element(:id, "project_principal_investigator").clear
    @driver.find_element(:id, "project_principal_investigator").send_keys "Dit Test"
    @driver.find_element(:name, "commit").click
    @driver.find_element(:link, "University of Alberta Data Management Questions").click
    verify { (@driver.find_element(:id, "1050936392-status").text).should == "(5 questions, 1 answered)" }
    verify { (@driver.find_element(:id, "1050936393-status").text).should == "(3 questions, 1 answered)" }
    verify { (@driver.find_element(:id, "1050936394-status").text).should == "(2 questions, 1 answered)" }
    verify { (@driver.find_element(:id, "1050936395-status").text).should == "(3 questions, 1 answered)" }
    verify { (@driver.find_element(:id, "1050936396-status").text).should == "(4 questions, 1 answered)" }
    verify { (@driver.find_element(:id, "1050936397-status").text).should == "(2 questions, 1 answered)" }
    @driver.find_element(:link, "My plans").click
    verify { (@driver.find_element(:link, "My project (University of Alberta Template)").text).should == "My project (University of Alberta Template)" }
    @driver.find_element(:link, "Delete").click
    close_alert_and_get_its_text().should =~ /^Are you sure you wish to delete this plan[\s\S]$/
    verify { (@driver.find_element(:xpath, "//p[2]").text).should == "Welcome.\n You are now ready to create your first DMP.\nClick the 'Create plan' button below to begin." }
    @driver.find_element(:css, "a.dropdown-toggle").click
    @driver.find_element(:link, "Sign out").click
  end
  
  def element_present?(how, what)
    ${receiver}.find_element(how, what)
    true
  rescue Selenium::WebDriver::Error::NoSuchElementError
    false
  end
  
  def alert_present?()
    ${receiver}.switch_to.alert
    true
  rescue Selenium::WebDriver::Error::NoAlertPresentError
    false
  end
  
  def verify(&blk)
    yield
  rescue ExpectationNotMetError => ex
    @verification_errors << ex
  end
  
  def close_alert_and_get_its_text(how, what)
    alert = ${receiver}.switch_to().alert()
    alert_text = alert.text
    if (@accept_next_alert) then
      alert.accept()
    else
      alert.dismiss()
    end
    alert_text
  ensure
    @accept_next_alert = true
  end
end
