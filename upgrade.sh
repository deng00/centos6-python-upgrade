#!/bin/bash
python2.7 -V
# pkg depend
yum install -y gcc zlib-devel bzip2-devel openssl-devel xz-libs wget
# download python
wget --no-check-certificate http://www.python.org/ftp/python/2.7.12/Python-2.7.12.tar.xz 
xz -d Python-2.7.12.tar.xz
tar -xvf Python-2.7.12.tar

# 进入目录:
cd Python-2.7.12
# 运行配置 configure:
./configure --prefix=/usr/local
# 编译安装:
make
sudo make install
# 修改链接
ln -sf /usr/local/bin/python2.7  /usr/bin/python
# 查看新版本
python -V
which python

# 获取setuptools软件包
wget --no-check-certificate https://pypi.python.org/packages/source/s/setuptools/setuptools-1.4.2.tar.gz
# 解压:
tar -xvf setuptools-1.4.2.tar.gz
cd setuptools-1.4.2
# 使用 Python 2.7.8 安装 setuptools
python2.7 setup.py install

# 安装pip
curl https://bootstrap.pypa.io/get-pip.py | python2.7 -
