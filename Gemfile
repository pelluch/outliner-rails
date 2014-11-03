source 'https://rubygems.org'

ruby ENV['RUBY_VERSION'] || '2.1.3'

# Bundle edge Rails instead: gem 'rails', github: 'rails/rails'
gem 'rails', '4.1.6'

# For easy JSON response
gem 'active_model_serializers', '~> 0.9.0'

gem 'rack-timeout', '~> 0.1.0'

group :doc do
	# bundle exec rake doc:rails generates the API under doc/api.
	gem 'sdoc', '~> 0.4.1'
end

group :production do
	# Use postgresql as the database for Active Record
	gem 'pg', '~> 0.17.1'
	gem 'rails_12factor', '~> 0.0.3'
	gem 'unicorn', '~> 4.8.3'
end

group :development do
	gem 'annotate', '~> 2.6.5'
end

group :development, :test do
	gem 'pry-byebug', '~> 2.0.0'
	gem 'sqlite3', '~> 1.3.10'

	# Spring speeds up development by keeping your application running in the background. Read more: https://github.com/rails/spring
	gem 'spring', '~> 1.1.3'

	# A thin and fast web server
	gem 'thin', '~> 1.6.3'
end
