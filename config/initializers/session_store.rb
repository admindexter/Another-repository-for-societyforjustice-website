# Be sure to restart your server when you modify this file.

# Your secret key for verifying cookie session data integrity.
# If you change this key, all old sessions will become invalid!
# Make sure the secret is at least 30 characters and all random,
# no regular words or you'll be exposed to dictionary attacks.
ActionController::Base.session = {
  :key         => '_societyforjustice_session',
  :secret      => 'c5892c7c268432f7e8f7c35987ca18aecd284fa4b3806a98f32ce6580c3fbe173fc1970aaffb29dca5736aa20e73ea1da106030fa228cd562bb18ed41ff74cb5'
}

# Use the database for sessions instead of the cookie-based default,
# which shouldn't be used to store highly confidential information
# (create the session table with "rake db:sessions:create")
  ActionController::Base.session_store = :active_record_store

