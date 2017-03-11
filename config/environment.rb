# Load the Rails application.
require_relative 'application'

# Initialize the Rails application.
Rails.application.initialize!

$redis = Redis.new(host: '127.0.0.1', port: 6379, db: 1)
