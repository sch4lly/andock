#!/usr/bin/env sh
# Clean up local host.
sudo sed -i '/dev.andock.ci/d' /etc/hosts

    # Update local hosts file.
    echo "
127.0.0.1    dev.andock.ci" | sudo tee --append /etc/hosts

    echo "
127.0.0.1   master.demo-project.dev.andock.ci" | sudo tee --append /etc/hosts

sudo cat /etc/hosts

echo $(ssh -o BatchMode=yes -o ConnectTimeout=5 -o UserKnownHostsFile=/dev/null -o StrictHostKeyChecking=no travis@localhost echo ok 2>&1)
echo $(ssh -o BatchMode=yes -o ConnectTimeout=5 -o UserKnownHostsFile=/dev/null -o StrictHostKeyChecking=no travis@127.0.0.1 echo ok 2>&1)
echo $(ssh -o BatchMode=yes -o ConnectTimeout=5 -o UserKnownHostsFile=/dev/null -o StrictHostKeyChecking=no travis@dev.andock.ci echo ok 2>&1)
