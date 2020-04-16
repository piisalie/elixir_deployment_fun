import Config
config :my_app, :secret_key, System.fetch_env!("MY_APP_SECRET_KEY")
