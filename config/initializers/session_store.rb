# Be sure to restart your server when you modify this file.

# Your secret key for verifying cookie session data integrity.
# If you change this key, all old sessions will become invalid!
# Make sure the secret is at least 30 characters and all random, 
# no regular words or you'll be exposed to dictionary attacks.
ActionController::Base.session = {
  :key         => '_q2010_session',
  :secret      => '06c14d6f5398af198993181a25bedb647c38154bee686ef17a1ffc4600c61f9b34df94367968950485acd97e16284f7fd5bd267bdedb6bde291972a9cf61ab35'
}

# Use the database for sessions instead of the cookie-based default,
# which shouldn't be used to store highly confidential information
# (create the session table with "rake db:sessions:create")
# ActionController::Base.session_store = :active_record_store
