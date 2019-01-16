# Creating a recipe

under recipes directory in default.rb or create new file with .rb extension.

    execute "update-upgrade" do
        command "sudo apt-get install python-pip nginx -y"
        action :run
    end

# Running recipies against node

    knife bootstrap <server_ip> --ssh-user <server_user> --sudo --identity-file <pem_file_location> --node-name <node_name> --run-list 'recipe[<cookbook_name>]'