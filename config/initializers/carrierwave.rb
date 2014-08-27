CarrierWave.configure do |config|
  config.fog_credentials = {
    provider:                 'AWS',
    aws_access_key_id:        'AKIAIAFYBTWP72ZURLXQ',
    aws_secret_access_key:    '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',
  }
  config.fog_directory  = ENV["AWS_S3_BUCKET"]
end
