require "yaml"

module After 

  def teardown 

    after(:all) do
    
      @driver.quit
      @verification_errors.should == []

    end
  end

end
