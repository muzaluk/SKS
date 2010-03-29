# Be sure to restart your server when you modify this file.

# Your secret key for verifying cookie session data integrity.
# If you change this key, all old sessions will become invalid!
# Make sure the secret is at least 30 characters and all random, 
# no regular words or you'll be exposed to dictionary attacks.
ActionController::Base.session = {
  :key         => '_SKS_session',
  :secret      => '9af0125a1095bc94e8b2ac927b64d5e96d7c4f52fd8d2161c27860bce26a435f5dd4917459593537c621579f199e07f964dec21da3745272b691093c9dd25ae7'
}

# Use the database for sessions instead of the cookie-based default,
# which shouldn't be used to store highly confidential information
# (create the session table with "rake db:sessions:create")
# ActionController::Base.session_store = :active_record_store
