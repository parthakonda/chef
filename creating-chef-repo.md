# Creating a chef-repo

    cd ~/
    chef generate app chef-repo

# Create `.chef` directory
This is required to hold the `pems` and `knife.rb`
    
    ~/chef-repo/
    mkdir .chef

# Copy the pems to .chef

    scp -r -i <pem_file> <user>@<chef_server_ip>:~/.chef/ ~/chef-repo/

# Create `knife.rb` (~/chef-repo/.chef/knife.rb)

    current_dir = File.dirname(__FILE__)
    log_level                :info
    log_location             STDOUT
    node_name                '<user>'
    client_key               "<user>.pem"
    validation_client_name   '<org>-validator'
    validation_key           "<org>-validator.pem"
    chef_server_url          'https://<chef_server_ip>/organizations/<org>'
    cache_type               'BasicFile'
    cache_options( :path => "#{ENV['HOME']}/.chef/checksums" )
    cookbook_path            ["#{current_dir}/../cookbooks"]

# Fetch certificates

    cd ~/chef-repo
    knife ssl fetch

This will create a folder under .chef/ as `trusted_certs` and will copy the `<server_ip>.crt`

# Check certificates
    cd ~/chef-repo
    knife ssl check

# Verfify client
    cd ~/chef-repo
    knife client list

Here you will see the validators & clients
