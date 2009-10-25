# Be sure to restart your server when you modify this file.

# Your secret key for verifying cookie session data integrity.
# If you change this key, all old sessions will become invalid!
# Make sure the secret is at least 30 characters and all random, 
# no regular words or you'll be exposed to dictionary attacks.
ActionController::Base.session = {
  :key         => '_Domino_session',
  :secret      => 'ed47e17a78eb8d8da526cdc5d9c9ff6e5059e2c8c582638aa27b24f84e3718a7be1289449c64c62fef4c60c9bdfe6758719cc613ec6edd2b367e180e4d0a7c9e'
}

# Use the database for sessions instead of the cookie-based default,
# which shouldn't be used to store highly confidential information
# (create the session table with "rake db:sessions:create")
# ActionController::Base.session_store = :active_record_store
