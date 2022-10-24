# Ansible-k8s
ansible自动化安装k8s集群，包含kube-vip

### Ansible
##### 1.安装
0.[官方安装文档](https://docs.ansible.com/ansible/latest/installation_guide/intro_installation.html#selecting-an-ansible-package-and-version-to-install)
1.首先确保pip已经安装, 不是最新版本就升级到最新版本;
2.安装最新版本，`python3 -m pip install --user ansible`; 
3.如果安装完成后找不到ansible命令，需要`cd ~; find . | grep ansible`，将找到的ansible目录加入到PATH中。

##### 2.配置
0.生成配置文件，参考文档：[官方示例配置文件](https://github.com/ansible/ansible/blob/devel/examples/ansible.cfg)
`ansible-config init --disabled > ansible.cfg`
1.拷贝备份文件到etc，`mkdir -p /etc/ansible/; cp ansible.cfg /etc/ansible/`

##### 3.使用
