Sentry.init do |config|
  config.dsn = 'https://b52851923e2a40ed96f5c28033ad0fc2@o732318.ingest.sentry.io/5796746'
  config.breadcrumbs_logger = [:active_support_logger, :http_logger]

  config.traces_sample_rate = 1
end