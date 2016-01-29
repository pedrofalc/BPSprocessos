CarrierWave.configure do |config|
     config.fog_credentials = {
       provider: 'AWS',
       aws_access_key_id: 'AKIAILE56JB7YCX4LDXQ',
       aws_secret_access_key:'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',
       region: 'us-west-2', # optional, defaults to 'us-east-1'
     }
     config.fog_directory  = 'projetobruno'                          # required
     config.fog_public = false # optional, defaults to true
     config.fog_attributes = { 'Cache-Control' => "max-age=#{365.day.to_i}" } # optional, defaults to {}
end
