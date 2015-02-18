# Selenium helper methods
  
  def element_present?(how, what)
    @driver.find_element(how, what)
    true
  rescue Selenium::WebDriver::Error::NoSuchElementError
    false
  end
  
  def alert_present?()
    @driver.switch_to.alert
    true
  rescue Selenium::WebDriver::Error::NoAlertPresentError
    false
  end
  
  def verify(&blk)
    yield
  rescue ExpectationNotMetError => ex
    @verification_errors << ex
  end
  
  def close_alert_and_get_its_text()
    alert = @driver.switch_to().alert()
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

  def screen_capture
      metadata = example.nil? ? {:file_path => 'before_after', :full_description => 'failure occurred in a before or after block'} : example.metadata
      filename = File.basename(metadata[:file_path])
      screenshot = "#{@screenshots_dir}#{filename}-#{Time.now.strftime('failshot__%d_%m_%Y__%H_%M_%S')}.png"
      @driver.save_screenshot screenshot
      puts metadata[:full_description] + "\n  Screenshot: #{screenshot}"
  end