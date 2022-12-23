ansible-playbook
=



#### ansible apt模块说明
```bash
# 在安装foo软件包前更新然后安装foo
- apt: name=foo update_cache=yes

# 移除foo软件包
- apt: name=foo state=absent

# 安装foo软件包
- apt: name=foo state=present

# 安装foo 1.0软件包
- apt: name=foo=1.00 state=present

# 安装nginx最新的名字为squeeze-backport发布包，并且安装前执行更新
- apt: name=nginx state=latest default_release=squeeze-backports update_cache=yes

# 只下载openjdk-6-jdk最新的软件包，不安装
- apt: name=openjdk-6-jdk state=latest install_recommends=no

# 安装所有软件包到最新版本
- apt: upgrade=dist

# 更新apt-get的list
- apt: update_cache=yes

# 3600秒后停止update_cache
- apt: update_cache=yes cache_valid_time=3600

# 安装远程节点上的/tmp/mypackage.deb软件包
- apt: deb=/tmp/mypackage.deb
```