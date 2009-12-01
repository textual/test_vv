# Be sure to restart your server when you modify this file.

# Your secret key for verifying cookie session data integrity.
# If you change this key, all old sessions will become invalid!
# Make sure the secret is at least 30 characters and all random, 
# no regular words or you'll be exposed to dictionary attacks.
ActionController::Base.session = {
  :key         => '_vv_session',
  :secret      => '7d42a5b0d9b86b3e8f6c76f15d2905493cc2bc83c775efb215a3a55bcd81568f9d2cda5f85c5396a36595c88ed7ba01d120113913b5e896030ff736ce90f9cfb'
}

# Use the database for sessions instead of the cookie-based default,
# which shouldn't be used to store highly confidential information
# (create the session table with "rake db:sessions:create")
# ActionController::Base.session_store = :active_record_store
