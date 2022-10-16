# Ansible-k8s
ansible自动化安装k8s集群，包含kube-vip

### Ansible
##### 安装
0.[官方安装文档](https://docs.ansible.com/ansible/latest/installation_guide/intro_installation.html#selecting-an-ansible-package-and-version-to-install)
1.首先确保pip已经安装, 不是最新版本就升级到最新版本;
2.安装最新版本，`python3 -m pip install --user ansible`; 
3.如果安装完成后找不到ansible命令，需要`cd ~; find . | grep ansible`，将找到的ansible目录加入到PATH中。
