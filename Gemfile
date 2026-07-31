source "https://rubygems.org"
git_source(:github) { |repo| "https://github.com/#{repo}.git" }

gem "rails",                         "~> 8.1"
gem "image_processing",              "~> 2.0"
gem "mini_magick",                   "~> 5.3"
gem "active_storage_validations",    "~> 3.0"
gem "bcrypt",                        "~> 3.1"
gem "will_paginate",                 "~> 4.0"
gem "will_paginate-bootstrap-style", "~> 0.3"
gem "propshaft",                     "~> 1.3"
gem "importmap-rails",               "~> 1.2"
gem "turbo-rails",                   "~> 1.5"
gem "stimulus-rails",                "~> 1.3"
gem "jbuilder",                      "~> 2.15"
gem "puma",                          "~> 6.6"
gem "bootsnap",                      "~> 1.12", require: false
gem "config",                        "~> 5.6"
gem "sqlite3",                       "~> 2.9"
gem "pg",                            "~> 1.6"

group :development do
  gem "web-console", "~> 4.2"
end

group :test do
  gem "capybara",                 "~> 3.40"
  gem "selenium-webdriver",       "~> 4.10"
  gem "webdrivers",               "~> 5.3"
  gem "rails-controller-testing", "~> 1.0"
  gem "minitest",                 "~> 6.0"
  gem "minitest-reporters",       "~> 1.8"
end

group :development, :test do
  gem "debug",       "~> 1.11", platforms: %i[ mri mingw x64_mingw ]
  gem "faker",       "~> 2.23"
end

gem "rdoc", "7.0.4" # Ruby4.0 警告の発生を抑えるため

# Windows ではタイムゾーン情報用の tzinfo-data gem を含める必要があります
# gem "tzinfo-data", platforms: [:mingw, :mswin, :x64_mingw, :jruby]
