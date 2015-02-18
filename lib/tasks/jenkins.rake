namespace :jenkins do 
 def rspec_eport_path
    "repots/rspec/"
  end

  task :spec_report_setup do
    rm_rf rspec_report_path
    mkdir_p rspec_report_path
  end

  task :ci => [:report_setup, 'jenkins:setup:rspec', 'rake:spec']

  task :unit => [:spec_report_setup, "jenkins:setups:rspec", 'rake:spec:lib']

  task :functional => [:spec_report_setup, "jenkins:setup:rspec", 'rake:spec' ]

  namespace :setup do 
    task :pre_ci do 
      ENV["CI_REPORTS"] = rspec_report_path
      gem 'ci_reporter'
      require 'ci/reporter/rake/rspec'
    end
    task :rspec => [:pre_ci, "ci:setup:rspec"]
  end

end
