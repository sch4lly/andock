# Multiple connections  
With Andock it is very easy to deploy the same project on different servers. If you want for example run `production` on seperate server than all other environments.
A connection is an [ansible inventory](https://docs.ansible.com/ansible/latest/user_guide/intro_inventory.html) file. Connections are stored under `project/.andock/connections` and should be commited to git.
## Step 1: Add a new connection
To add an new connection simple run: 
```
andock connect <name> <domain>
```

## Step 2: Execute an command on a seperate host. 
Now you can run `any` andock command on the new host. (If you don't specify any connection the `default` connection will be used.)

### Example:
Deploy on production host. (connection name is `production`):
```
    fin andock @production deploy
```

