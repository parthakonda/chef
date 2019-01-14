current_dir = File.dirname(__FILE__)
log_level                :info
log_location             STDOUT
node_name                'user'
client_key               "user.pem"
validation_client_name   'org-validator'
validation_key           "org-validator.pem"
chef_server_url          'https://<server_ip>/organizations/org'
cache_type               'BasicFile'
cache_options( :path => "#{ENV['HOME']}/.chef/checksums" )
cookbook_path            ["#{current_dir}/../cookbooks"]
