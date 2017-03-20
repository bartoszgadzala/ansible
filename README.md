# ansible
Dockerized Ansible

## Usage

```
docker run -it --rm -v /path/to/ansible/playbook:/ansible/ -w="/ansible"  bartoszgadzala/ansible  ansible-playbook -i <inventory> <playbook>.yml
```
