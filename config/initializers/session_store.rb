# Be sure to restart your server when you modify this file.

# Your secret key for verifying cookie session data integrity.
# If you change this key, all old sessions will become invalid!
# Make sure the secret is at least 30 characters and all random, 
# no regular words or you'll be exposed to dictionary attacks.
ActionController::Base.session = {
  :key         => '_redes_session',
  :secret      => 'a3e1a25ab8fa827cce45d4101989833f72dc129308af94cced10f01bfa09cc3a7a2e43d1de49159d2f573c8fe1f572bd437314c5b32fbf83f50e775af5b7c343'
}

# Use the database for sessions instead of the cookie-based default,
# which shouldn't be used to store highly confidential information
# (create the session table with "rake db:sessions:create")
# ActionController::Base.session_store = :active_record_store
