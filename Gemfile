source 'http://rubygems.org'
 
gem 'rails', '3.1.1' 
# 9/28/2011 Add 'therubyracer' to resolve  
#           "Could not find a JavaScript runtime." 
#           See http://stackoverflow.com/questions/6282307 
# gem 'therubyracer' 

gem 'gravatar_image_tag', '1.0.0.pre2' 
# 9/28/2011:  will_paginate 3.0.2 released 9/27/2011. 
#             "kludge" patch in tutorial section 13.1.3 
#             no longer needed 
# gem 'will_paginate', '3.0.pre2' 
gem 'will_paginate', '3.0.2' 

# gem 'sqlite3', '1.3.4'
# gem 'pg'
gem 'pg', :group => :production
gem 'pg', :group => [:development, :test]
 
# Asset template engines 
gem 'sass-rails', "~> 3.1.0.rc" 
gem 'coffee-script' 
# gem 'uglifier'
gem "uglifier", "~> 1.0.4"
gem "uglifier-rails", "~> 3.1.0.rc.2"
 
gem 'jquery-rails'
 
group :development do 
  gem 'rspec-rails', '2.7.0' 
  gem 'annotate', '2.4.0' 
  gem 'faker', '0.3.1' 
end
 
group :test do 
  gem 'rspec-rails', '2.7.0' 
  gem 'webrat', '0.7.1' 
  # 9/28/2011:  spork 0.9.0.rc9 from 6/30/2011 gets rid of 
  #             some deprecation warnings at startup 
  # gem 'spork', '0.9.0.rc5' 
  gem 'spork', '0.9.0.rc9' 
  gem 'factory_girl_rails', '1.0'
 
  # 9/28/2011:  Add autotest (from section 3.5 exercises) 
  # gem 'autotest', '4.4.6' 
  # gem 'autotest-rails-pure', '4.1.2' 
  # gem 'autotest-fsevent', '0.2.4' # Mac OS X only 
  # gem 'autotest-growl', '0.2.9' 
end

