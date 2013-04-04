# Be sure to restart your server when you modify this file.

WeightRecorderP130330::Application.config.session_store :cookie_store,
                                                        key: '_weight-recorder-p130330_session',
                                                        expire_after: 3.months

# Use the database for sessions instead of the cookie-based default,
# which shouldn't be used to store highly confidential information
# (create the session table with "rails generate session_migration")
# WeightRecorderP130330::Application.config.session_store :active_record_store