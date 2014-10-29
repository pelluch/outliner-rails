source 'https://rubygems.org'


# Bundle edge Rails instead: gem 'rails', github: 'rails/rails'
gem 'rails', '4.1.6'

# For easy JSON response
gem 'active_model_serializers', '~> 0.9.0'

# A thin and fast web server
gem 'thin', '~> 1.6.3'

group :doc do
	# bundle exec rake doc:rails generates the API under doc/api.
	gem 'sdoc', '~> 0.4.1'
end

group :production do
	# Use postgresql as the database for Active Record
	gem 'pg', '~> 0.17.1'
end

group :development do
	gem 'annotate', '~> 2.6.5'
end

group :development, :test do
	gem 'pry-byebug', '~> 2.0.0'
	gem 'sqlite3', '~> 1.3.9'
	# Spring speeds up development by keeping your application running in the background. Read more: https://github.com/rails/spring
	gem 'spring', '~> 1.1.3'
end
