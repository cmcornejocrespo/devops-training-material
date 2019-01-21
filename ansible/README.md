# Ansible

## Concepts
- [Directory Layout](http://docs.ansible.com/ansible/latest/playbooks_best_practices.html#directory-layout)
- [Module Index](http://docs.ansible.com/ansible/latest/modules_by_category.html)

## Examples
- Using Ansible to configure wordpress stack
```sh
# run vagrant and then ansible against it
    $ VAGRANT_VAGRANTFILE=Vagrantfile.ansible vagrant up
    $ ansible-playbook -i inventory wordpress-nginx/site.yml
```
```sh
    $ VAGRANT_VAGRANTFILE=Vagrantfile.provisioner vagrant up
```

- Run Ansible to provision EC2 instance in AWS