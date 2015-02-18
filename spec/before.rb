require "yaml"

module Before

  def setup

  before(:all) do
    @properties = YAML.load_file('properties.yml')
    @base_dir = Dir.pwd.to_s
    @download_dir = @base_dir + '/tmp/'
    @screenshots_dir = @base_dir + '/spec/reports/'
    if RUBY_PLATFORM == 'i386-cygwin'
      @download_dir = @download_dir.gsub('/cygdrive/c/', 'C:\\').gsub('/', '\\')
      @screenshots_dir = @screenshots_dir.gsub('/cygdrive/c/', 'C:\\').gsub('/', '\\')
    end      
    Dir.mkdir(@download_dir) unless File.exists?(@download_dir)
    Dir.mkdir(@screenshots_dir) unless File.exists?(@screenshots_dir)
    
    profile = Selenium::WebDriver::Firefox::Profile.new
    profile["browser.download.folderList"] = 2
    profile["browser.download.dir"] = @download_dir
    profile["browser.helperApps.neverAsk.saveToDisk"] = 'application/pdf'

    # disable Firefox's built-in PDF viewer
    profile["pdfjs.disabled"] = true
 
    # disable Adobe Acrobat PDF preview plugin
    profile["plugin.scan.plid.all"] = false
    profile["plugin.scan.Acrobat"] = "99.0"
    
    @driver = Selenium::WebDriver.for :firefox, :profile => profile
    @base_url = @properties['base_url']
    @accept_next_alert = true
    @driver.manage.timeouts.implicit_wait = 30
    @verification_errors = []
  end
  sleep 10

  end

end
