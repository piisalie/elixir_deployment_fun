import Config
secret_key_base = System.fetch_env!("MY_APP_SECRET_KEY")

config :deployment_example, DeploymentExampleWeb.Endpoint, server: true

config :deployment_example, DeploymentExampleWeb.Endpoint,
  http: [:inet6, port: String.to_integer(System.get_env("PORT") || "4000")],
  secret_key_base: secret_key_base
