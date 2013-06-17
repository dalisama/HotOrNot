# Be sure to restart your server when you modify this file.

# Your secret key for verifying cookie session data integrity.
# If you change this key, all old sessions will become invalid!
# Make sure the secret is at least 30 characters and all random, 
# no regular words or you'll be exposed to dictionary attacks.
ActionController::Base.session = {
  :key         => '_HotOrNot_session',
  :secret      => 'a3a1b33cf80216330c3bd8daa58580ebd65c4eddee1cc817d1708ea8e3f76c6929690bc92af0adc911760e91b4156470e3b82e3256c36ad9d6df903e87587b7d'
}

# Use the database for sessions instead of the cookie-based default,
# which shouldn't be used to store highly confidential information
# (create the session table with "rake db:sessions:create")
# ActionController::Base.session_store = :active_record_store
