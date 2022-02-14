source 'https://rubygems.org'
git_source(:github) { |repo| "https://github.com/#{repo}.git" }

ruby '2.7.1'

gem 'rails', '~> 6.0.4', '>= 6.0.4.1'
gem 'pg', '>= 0.18', '< 2.0'
gem 'puma', '~> 4.1'
gem 'bootsnap', '>= 1.4.2', require: false
gem 'rack-cors'
# コンソール出力結果を表にする Doc: https://github.com/cldwalker/hirb
gem 'hirb', '~> 0.7.3'
# コンソール文字列補正 Doc: https://github.com/steakknife/hirb-unicode
gem 'hirb-unicode-steakknife', '~> 0.0.9'

gem 'bcrypt', '~> 3.1', '>= 3.1.12'
gem 'jwt', '~> 2.2'

# CookieのSameSite属性をNoneにする(Chrome 80対応)
# Doc: https://qiita.com/ahera/items/0c8276da6b0bed2b580c
gem 'rails_same_site_cookie'

group :development, :test do
  gem 'byebug', platforms: [:mri, :mingw, :x64_mingw]
  gem 'pry-byebug', '~> 3.9'
  # テスト結果色付け Doc: https://github.com/kern/minitest-reporters
  gem 'minitest-reporters', '~> 1.1', '>= 1.1.11'
  gem 'rspec-rails', '~> 5.0.0'
  gem 'factory_bot_rails'
end

group :development do
  gem 'listen', '~> 3.2'
  gem 'spring'
  gem 'spring-watcher-listen', '~> 2.0.0'
end


# Windows does not include zoneinfo files, so bundle the tzinfo-data gem
gem 'tzinfo-data', platforms: [:mingw, :mswin, :x64_mingw, :jruby]
