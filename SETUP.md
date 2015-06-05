#Purpose

The purpose of this guide is to create a working installation of
[DMPonline_v4](https://github.com/DigitalCurationCentre/DMPonline_v4) (commit [f02617326ef18b1faae210dc266a30785fdfc0f2](https://github.com/DigitalCurationCentre/DMPonline_v4/commit/f02617326ef18b1faae210dc266a30785fdfc0f2)).

It is based upon a [previous guide](https://github.com/softwaresaved/smp-service) that was meant for an older version of DMPonline_v4 which is now outdated, due to a recent commit in DMPonline_v4, but still valuable.

# Installation
## Dependencies for Scientific Linux 6
- for Rails:

        $ sudo yum install nodejs

- for DMPonline:

        $ sudo yum install wkhtmltopdf
        $ wkhtmltopdf -V
        Name:
            wkhtmltopdf 0.10.0 rc2
        $ sudo yum install libcurl-devel

## Dependencies for Ubuntu 14.04.1 LTS
- general:

        $ sudo apt-get install git
        $ sudo apt-get install curl
        
- for Rails:

        $ sudo apt-get install nodejs
        
- for DMPonline:

        $ sudo apt-get install wkhtmltopdf
        $ wkhtmltopdf -V
        Name:
            wkhtmltopdf 0.10.0 rc2
        $ sudo apt-get install libcurl4-openssl-dev

## Install RVM and latest ruby

* Ruby Version Manager
* https://rvm.io
* https://rvm.io/rvm/basics
* https://rvm.io/rvm/install

Though Ruby 2.0.0-p247 was originally recommended, these instructions recommend the latest version 2.1.1.

Install RVM:

    $ gpg --keyserver hkp://keys.gnupg.net --recv-keys 409B6B1796C275462A1703113804BB82D39DC0E3
    $ \curl -sSL https://get.rvm.io | bash

Dependencies for RVM are installed by RVM itself:

    Installing required packages: gawk, g++, libreadline6-dev, zlib1g-dev, libssl-dev, libyaml-dev, libsqlite3-dev, sqlite3, autoconf, libgdbm-dev, libncurses5-dev, automake, libtool, bison, libffi-dev

Install Ruby 2.1.1:

    $ source ~/.rvm/scripts/rvm
    $ rvm list known
    $ rvm install 2.1.1
    $ rvm use 2.1.1

..or setup the right ruby version for this project

    $ cd DMPonline_v4
    $ echo "ruby-2.1.1" > .ruby-version
    $ cd ../ && cd DMPonline_v4 && ruby -v
    ruby 2.1.1p76 (2014-02-24 revision 45161) [x86_64-linux]

Each time you enter this directory, the right version is set for you.

## Install MySQL server 5.0+

Install - Scientific Linux 6:

    $ sudo yum install mysql-server
    $ sudo yum install mysql-devel

Install - Ubuntu 14.04.1 LTS:

    $ sudo apt-get install mysql-server
    $ sudo apt-get install libmysqlclient-dev

Configure:

    $ mysql --version
    mysql  Ver 14.14 Distrib 5.1.73, for redhat-linux-gnu (x86_64) using readline 5.1
    $ sudo su -
    $ service mysqld start
    $ mysql_secure_installation
    Enter current password for root (enter for none):
    Change the root password? [Y/n] Y
    Remove anonymous users? [Y/n] Y
    Disallow root login remotely? [Y/n] Y
    Remove test database and access to it? [Y/n]  Y
    Reload privilege tables now? [Y/n] Y

##Install DMPonline

### Clone repository

        $ git clone https://github.com/DigitalCurationCentre/DMPonline_v4
        $ cd DMPonline_v4
        
### Install Ruby gems

    $ gem install bundler
    $ bundle install

### Configure Figaro

[Figaro](https://github.com/laserlemon/figaro) is a ruby gem that loads values from config/application.yml into your environment. 

We added this gem to keep all configuration in one place, and refer to it (e.g. in initializers) by use of the environment variable ENV.

        $ cp config/application_example.yml config/application.yml
        
See below for the configuration keys.

### Configure database

Copy database configuration:

    $ cp config/database_example.yml config/database.yml

Edit config/database.yml and update:

* database
* username
* password

### Configure SMTP server

Edit the following lines in config/environments/development.rb. Provide your own SMTP server URL and port:

        config.action_mailer.smtp_settings = { :address => ENV['DMP_SMTP_ADDRESS'], :port => ENV['DMP_SMTP_PORT'] }
        ActionMailer::Base.smtp_settings = { :address => ENV['DMP_SMTP_ADDRESS'], :port => ENV['DMP_SMTP_PORT'] }
    
Or set these keys in config/application.yml:
        
        DMP_SMTP_ADDRESS: "localhost"
        DMP_SMTP_PORT: 25

### Configure e-mails

Edit config/initializers/contact_us.rb. Update this value which is used to set the To: field in e-mails sent when the form on the /contact-us page is submitted:

        config.mailer_to = ENV['DMP_CONTACT_US_EMAIL_FROM']
    
And set the appropriate value in config/application.yml:

        DMP_CONTACT_US_EMAIL_FROM: "dmponline@dcc.ac.uk"

Edit app/mailers/user_mailer.rb. Update this value which is used to set the From: field in e-mails sent to users relating to change in their plan permissions (e.g. they are added as a collaborator):

        default from: ENV['USER_MAILER_EMAIL_FROM']
    
And set the appropriate value in config/application.yml:

        DMP_USER_MAILER_EMAIL_FROM: "info@dcc.ac.uk"

Edit config/initializers/devise.rb. Update this value which is used to set the Reply-To: field in e-mails sent to users when they register, or have forgotten their password:

        config.mailer_sender = ENV['DEVISE_EMAIL_FROM']
        
And set the appropriate value in config/application.yml:

        DEVISE_EMAIL_FROM: "info@dcc.ac.uk"

Edit config/environments/development.rb. Update these values which are used to set the From:, Subject: and To: fields in error report e-mails:

        :email_prefix => ENV['DMP_ERR_EMAIL_PREFIX'],
        :sender_address => ENV['DMP_ERR_EMAIL_SENDER_ADDRESS'],
        :exception_recipients => JSON.parse(ENV['DMP_ERR_EMAIL_EXCEPTION_RECIPIENTS'])
        
And set the appropriate value in config/application.yml:

        DMP_ERR_EMAIL_PREFIX: "[DMPonline4 ERROR] "
        DMP_ERR_EMAIL_SENDER_ADDRESS: "\"No-reply\" <noreply@dcc.ac.uk>"
        DMP_ERR_EMAIL_EXCEPTION_RECIPIENTS: "[\"dmponline@dcc.ac.uk\"]"
        
Make sure that DMP_ERR_EMAIL_EXCEPTION_RECIPIENTS is a json string!

Update this value which is is used to set the From: field in e-mails sent to users when they register, or have forgotten their password:

        ActionMailer::Base.default :from => ENV['DMP_EMAIL_FROM']
        
And set the appropriate value in config/application.yml:

        DMP_EMAIL_FROM: "nicolas.franck@ugent.be"

Update this value which, when running in development-mode, is used in e-mails sent to users when they register, have forgotten their password, or when there are changes in plan permissions, to provide a link to the relevant page of DMPonline:

        config.action_mailer.default_url_options = { :host => ENV['DMP_HOST'] }

And set the appropriate value in config/application.yml:

        DMP_HOST: "localhost:3000"

Edit config/application.rb. Update this value which, when running in production-mode, is used in e-mails sent to users when they register, have forgotten their password, or when there are changes in plan permissions, to provide a link to the relevant page of DMPonline:

        config.action_mailer.default_url_options = { :host => ENV['DMP_HOST'] }

### Configure security tokens

Create a security token:

        $ irb
        > require 'securerandom'
        > SecureRandom.hex(64)

Or:

        $ bundle exec rake secret

Edit config/initializers/devise.rb. Copy the security token into the pepper:

        config.pepper = ENV['DEVISE_PEPPER']
    
or set the appropriate value in config/application.yml:

        DEVISE_PEPPER: "de451fa8d44af2c286d922f753d1b10fd23b99c10747143d9ba118988b9fa9601fea66bfe31266ffc6a331dc7331c71ebe845af8abcdb84c24b42b8063386530"

Create another security token, as above.

Edit config/initializers/secret_token.rb. Copy in the security token:

        DMPonline4::Application.config.secret_token = ENV['SECRET_TOKEN']
    
or set the appropriate value in config/application.yml:

        SECRET_TOKEN: "4eca200ee84605da3c8b315a127247d1bed3af09740090e559e4df35821fbc013724fbfc61575d612564f8e9c5dbb4b83d02469bfdeb39489151e4f9918598b2"

### Declare path to wkhtmltopdf

Find the path to wkhtmltopdf:

        $ which wkhtmltopdf
        /usr/local/bin/wkhtmltopdf

Edit config/application.rb. If necessary, update the path to wkhtmltopdf:

        WickedPdf.config = {
                :exe_path => ENV['WICKED_PDF_EXE']
        }
    
or set the appropriate value in config/application.yml:

        WICKED_PDF_EXE: "/usr/local/bin/wkhtmltopdf"

### Configure reCAPTCHA

To configure [reCAPTCHA](http://www.google.com/recaptcha/), which is used on the Contact Us page to display letters and numbers users have to enter before submitting a form:

* [Sign up](https://accounts.google.com/SignUp) with Google (if you have not already done so).
* Go to [reCAPTCHA](http://www.google.com/recaptcha/).
* Click Get reCAPTCHA
* Click Register a new site
* Enter a Label e.g.: myhost.mydomain.ac.uk DMPonline Contact Us
* Enter the domain where you will host DMPonline e.g. myhost.mydomain.ac.uk
* Click Register
* A Site Key and a Secret Key will be created.
* Edit config/initializers/recaptcha.rb.
* Replace `'replace_this_with_your_public_key'` with your Site Key.
* Replace `'replace_this_with_your_private_key'` with your Secret Key.
* Comment out the `config.proxy` line.

### Fix seeds.rb

This fork contains a fixed version of the seed file, found at
[softwaresaved/smp-service](https://github.com/softwaresaved/smp-service/blob/eaea66804be50feaab12a5b01b58a6121eef94c2/db/seeds.rb), which is better than the version at [DMPonline_v4](https://raw.githubusercontent.com/DigitalCurationCentre/DMPonline_v4/6791c19e751560ac9a18d3bb80f8ff21bc31ff39/db/seeds.rb).

## fix gem lederman/rails-settings

It is possible that this command fails:

        $ bundle exec rake db:seed
        ActiveModel::MassAssignmentSecurity::Error: Can't mass-assign protected attributes: var, target

The [cause](https://github.com/ledermann/rails-settings/issues/59) is ruby gem protected_attributes.
This is fixed in the initializer config/initializer/rails_settings.rb.

### Create database

    $ bundle exec rake db:setup

### Start server

    $ rails server

Browse to http://localhost:3000/ and you should see DMPonline.

#Access to administration website

By default there are no users, and no roles. Registered users will only be able to access pages that are not prefixed by "/admin". To access the ActiveAdmin pages, a super-admin has to be created.

Register yourself using the web interface.

Open your rails console:

    $ rails console
    > user = User.find_by_email('user@someplace.org')
    > user.roles.create({ name: 'admin' })

Reload your page. Click on the link "Signed in as <user>". A new item "Super admin area"
has been added.

#Problems

- The models did not contain any input validation, which caused a lot of problems. This has been fixed in this fork, but can contain unwanted behaviour.
- export format "docx" in projects_controller can fail:

    Errno::ENOENT at /projects/my-plan-dcc-template/plans/9/export
    No such file or directory @ rb_sysopen - /usr/local/rvm/gems/ruby-2.1.1@dmponline/gems/htmltoword-0.2.0/lib/htmltoword/xslt/html_to_wordml.xslt
