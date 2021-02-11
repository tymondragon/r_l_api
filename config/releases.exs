import Config

database_url =
  System.get_env("DATABASE_URL") ||
    raise """
    environment variable DATABASE_URL is missing.
    For example: ecto://USER:PASS@HOST/DATABASE
    """
secret_key_base = System.fetch_env!("SECRET_KEY_BASE")
cool_text = System.fetch_env!("COOL_TEXT")
application_port =  System.fetch_env!("APP_PORT")

config :r_l_api, RLApiWeb.Endpoint,
  http: [:inet6, port: String.to_integer(application_port) || "4000"],
  secret_key_base: secret_key_base

config :r_l_api,
  cool_text: cool_text

  config :r_l_api, RLApi.Repo,
  # ssl: true,
  url: database_url,
  pool_size: String.to_integer(System.get_env("POOL_SIZE") || "10")
