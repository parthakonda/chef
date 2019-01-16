# Creating environment

You need to set the environment variable in your workstation with key `EDITOR`

for `vi` editor

    export EDITOR=export EDITOR=$(which vi)

for `nano`

    export EDITOR=$(which nano)

## Create sample environment
    
    knife environment create <environment_name>

# Uploading your environment from a file

    knife environment from file <path_to_your_environment_file>