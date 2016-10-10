#cloud-config
runcmd:
  - aws s3 cp s3://scott/chef/${role}.tgz /var/tmp
  - tar zxvf /var/tmp/${role}.tgz -C /etc/chef
  - chef-client -c /etc/chef/client.rb -z
