#!/bin/bash

# update yum
yum -y update

# pkg depend
yum install -y gcc zlib-devel bzip2-devel openssl-devel xz-libs wget 

# download python
wget --no-check-certificate http://www.python.org/ftp/python/2.7.12/Python-2.7.12.tar.xz 
xz -d Python-2.7.12.tar.xz
tar -xvf Python-2.7.12.tar

# install py
cd Python-2.7.12
# configure:
./configure --prefix=/usr/local
make
sudo make install

# change bin
ln -sf /usr/local/bin/python2.7  /usr/bin/python
# check
python -V
which python

# install pip
curl https://bootstrap.pypa.io/get-pip.py | python2.7 -

# fix yum
sed -i "s/\/usr\/bin\/python/\/usr\/bin\/python2.6/" /usr/bin/yum

# end
