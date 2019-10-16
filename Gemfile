source 'https://rubygems.org'

git_source(:github) do |repo_name|
  repo_name = "#{repo_name}/#{repo_name}" unless repo_name.include?("/")
  "https://github.com/#{repo_name}.git"
end


gem 'rails', '~> 5.0.5'
gem 'sqlite3', '~> 1.3.6'
gem 'puma', '~> 3.0'
gem 'jbuilder'

group :development, :test do
  gem 'byebug', platform: :mri
  gem 'faker'
  gem 'pry'
end

group :development do
  gem 'listen', '~> 3.0.5'
  gem 'spring'
  gem 'spring-watcher-listen', '~> 2.0.0'
end

group :test do
  gem 'rspec', '~> 3.9'
  gem 'rspec-rails', '~> 3.9'
end

gem 'tzinfo-data', platforms: [:mingw, :mswin, :x64_mingw, :jruby]
