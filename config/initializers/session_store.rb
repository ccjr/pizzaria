# Be sure to restart your server when you modify this file.

# Your secret key for verifying cookie session data integrity.
# If you change this key, all old sessions will become invalid!
# Make sure the secret is at least 30 characters and all random, 
# no regular words or you'll be exposed to dictionary attacks.
ActionController::Base.session = {
  :key         => '_pizza_session',
  :secret      => '9108f4b03bfa8a035667f2614caeb8a7314048c21e70ea52872659cbcb236f9968fffe1f6f6a6ccf633089b563d8bc0478484cab2b29fabade45632fa43fb948'
}

# Use the database for sessions instead of the cookie-based default,
# which shouldn't be used to store highly confidential information
# (create the session table with "rake db:sessions:create")
# ActionController::Base.session_store = :active_record_store
