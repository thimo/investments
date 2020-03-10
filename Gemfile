source "https://rubygems.org"
git_source(:github) { |repo| "https://github.com/#{repo}.git" }

ruby "2.6.5"

gem "jbuilder", "~> 2.7"
gem "pg", ">= 0.18", "< 2.0"
gem "puma", "~> 4.1"
gem "rails", "~> 6.0.2", ">= 6.0.2.1"
gem "rails-i18n"
gem "redis", "~> 4.0"
gem "turbolinks", "~> 5"
gem "webpacker", "~> 4.0"

gem "awesome_print", require: "awesome_print"
gem "bootsnap", ">= 1.4.2", require: false
gem "bootstrap_form"
gem "country_select"
gem "devise", "~> 4.7"
gem "draper"
gem "enum_help", "~> 0.0.17"
gem "pundit"
gem "slim-rails"

group :development, :test do
  gem "byebug", platforms: [:mri, :mingw, :x64_mingw]
  gem "factory_bot_rails"
  gem "guard"
end

group :development do
  gem "bullet" # help to kill N+1 queries and unused eager loading
  gem "guard-livereload", require: false # Adds live-reloading, run with `guard -P livereload`
  gem "guard-minitest", require: false
  gem "letter_opener"
  gem "listen", ">= 3.0.5", "< 3.2"
  gem "pry-rails"
  gem "rack-livereload"
  gem "scout_apm"
  gem "spring"
  gem "spring-watcher-listen"
  gem "terminal-notifier-guard"
  gem "web-console", ">= 3.3.0"

  gem "reek"
  gem "rubocop"
  gem "rubocop-performance"
  gem "rubocop-rails"
  gem "ruby-debug-ide", require: false
  gem "solargraph"
end

group :test do
  gem "capybara", ">= 2.15"
  gem "faker"
  gem "launchy" # For "save_and_open_page" debugging during testing
  gem "minitest"
  gem "minitest-reporters"
  gem "selenium-webdriver"
  gem "webdrivers"
end

group :production, :staging do
  gem "exception_notification"
end
