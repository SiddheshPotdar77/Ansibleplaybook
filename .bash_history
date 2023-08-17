ssh-keygen
ssh-copy-id ubuntu@172.31.34.71
ssh-copy-id ubuntu@172.31.35.77
sudo apt-get update
sudo apt-get install software-properties-common
sudo apt-add-repository ppa:ansible/ansible
sudo apt-get update
sudo apt-get install -y ansible
ansible --version
cd /etc/ansible
ls
sudo vim hosts
cd
date
ls -la
ansible all 'date'
ansible all date
ansible all -a date
ansible all -a 'ls -la'
ansible all -i /etc/ansible/hosts -m command 'date'
ansible all -i /etc/ansible/hosts -m command -a 'date'
ansible all -m command -a 'date'
ansible all -a 'date'
ansible all -la 'date'
ansible all -a 'ls -la'
ansible all -m shell -a 'free -m > file1'
ssh 172.31.34.71 
ansible all -m shell -a 'curl -fsSL https://get.docker.com -o install-docker.sh~'
ansible all -m shell -a 'sudo sh install-docker.sh'
ansible all -m shell -a 'sh install-docker.sh'
ansible all -m shell -a 'sudo sh install-docker.sh'
ansible all -m shell -a 'curl -fsSL https://get.docker.com -o install-docker.sh'
ansible all -m shell -a 'sudo sh install-docker.sh'
ssh 172.31.35.77
sudo useradd sai
sudo passwd sai
vim /etc/passwd
ansible all -m user -a 'name=siddhesh password=admin'
ansible all -m user -a 'name=siddhesh password=admin' -b
vim /etc/passwd
ssh 172.31.35.77
ansible all -m user -a 'name=gayu password=test uid=9876 comment"housewife" home=/tmp/gayu shell=/bin/bash' -b
ansible all -m user -a 'name=gayu password=test uid=9876 comment="housewife" home=/tmp/gayu shell=/bin/bash' -b
ssh 172.31.35.77
ansible all -m file -a 'name=/tmp/file56 state=touch' -b
ssh 172.31.35.77
ansible all -m file -a 'name=/tmp/dir1 state=directory' -b
ssh 172.31.35.77
ansible all -m file -a 'name=/tmp/dir1 state=absent' -b
ssh 172.31.35.77
ansible all -m file -a 'name=/tmp/file56 chmod=777 owner=test gruop=test' -b
ansible all -m file -a 'name=/tmp/file56 chmod=777 owner=test group=test' -b
ansible all -m file -a 'name=/tmp/file56 mod=777 owner=test group=test' -b
ansible all -m file -a 'name=/tmp/file56 mod=777 owner=gayu group=gayu' -b
ssh 172.31.35.77
ansible all -m file -a 'name=/tmp/file56 mod=777 owner=siddhesh group=siddhesh' -b
ansible all -m file -a 'name=/tmp/file56 mode=777 owner=siddhesh group=siddhesh' -b
ssh 172.31.35.77
cat > def
ansible all -m copy -a 'src=def dest=/tmp/def' -b
ssh 172.31.35.77
ansible all -m copy -a 'content="Siddhesh" src=/tmp/def' -b
ansible all -m copy -a 'content="Siddhesh" dest=/tmp/def' -b
ssh 172.31.35.77
ansible all -m copy -a 'src=def dest=/tmp/def mode=700 owner=gayu gruop=gayu' -b
ansible all -m copy -a 'src=def dest=/tmp/def mode=700 owner=siddhesh gruop=siddhesh' -b
ansible all -m copy -a 'src=def dest=/tmp/def mode=777 owner=gayu gruop=gayu' -b
ansible all -m copy -a 'src=def dest=/tmp/def mode=777 owner=gayu group=gayu' -b
ssh 172.31.35.77
ansible all -m apt -a 'name=git state=present' -b
ansible all -m apt -a 'name=git state=absent' -b
ssh 172.31.35.77
ansible all -m apt -a 'name=git state=present update_cache=yes' -b
ssh 172.31.35.77
ansible all -m apt -a 'name=tomcat state=present update_cache=yes' -b
ansible all -m apt -a 'name=tomcat9 state=present update_cache=yes' -b
ansible all -m replace -a 'regexp=8080 replace=9090 path=/etc/tomcat9/server.xml' -b
ansible all -m service -a 'name=tomcat9 state=restarted' -b
ansible all -m replace -a 'regexp=9090 replace=8080 path=/etc/tomcat9/server.xml' -b
ansible all -m service -a 'name=tomcat9 state=restarted' -b
ansible all -m apt -a 'name=tomcat9 state=absent' -b
ansible all -m command -a 'date'
ansible all -m -a 'free m'
ansible all -m -a 'free -m'
ansible all -m command -a 'free -m'
ansible all -m shell -a 'curl -fsSL https://get.docker.com -o install-docker.sh'
ansible all -m user -a 'name=mayur password=admin uid=3456 comment="normal user" home=/tmp/mayur shell=/bin/bash' -b
ssh 172.31.34.71
ansible all -m file -a 'name=dfg state=touch' -b
ssh 172.31.34.71
ansible all -m file -a 'name=/tmp/ddfg state=touch' -b
ssh 172.31.34.71
ansible all -m file -a 'name=/tmp/ddfg state=absent' -b
cat > hgf
ansible all -m copy -a 'src=hfg dest=/tmp' -b
ansible all -m copy -a 'src=hgf dest=/tmp' -b
ssh 172.31.34.71
ansible all -m file -a 'name=testing mode=777 owner=siddhesh group=siddhesh' -b
ansible all -m file -a 'name=/tmp/testing mode=777 owner=siddhesh group=siddhesh' -b
ansible all -m file -a 'name=/tmp/testing mode=777 owner=siddhesh group=siddhesh state=present' -b
ansible all -m file -a 'name=/tmp/testing state=present' -b
ansible all -m file -a 'name=/tmp/rest state=present' -b
ansible all -m file -a 'name=rest state=present' -b
ansible all -m file -a 'name=ghj state=present' -b
ansible all -m file -a 'name=ghj state=present'
ansible all -m file -a 'name=file234 state=present'
ansible all -m file -a 'name=file47 state=present' -b
ansible all -m file -a 'name=/tmp/file47 state=present' -b
ls
rm -f def hgf
ls
cd /tmp
ls
cd
ssh 172.31.34.71
ansible all -m file -a 'name=file47 state=touch' -b
ssh 172.31.34.71
ansible all -m file -a 'name=file47 mode=777 owner=root group=ssidhesh' -b
ansible all -m file -a 'name=file47 mode=777 owner=root group=siddhesh' -b
ssh 172.31.34.71
ansible all -m apt -a 'name=git state=present' -b
ansible all -m apt -a 'name=git state=absent' -b
ansible all -m apt -a 'name=git state=present' -b
ansible all -m service -a 'name=git state=stopped' -b
ansible all -m service -a 'name=git state=restarted' -b
ansible all -m service -a 'name=tomcat9 state=restarted' -b
ansible all -m service -a 'name=tomcat9 state=present' -b
ansible all -m apt -a 'name=tomcat9 state=present' -b
ansible all -m service -a 'name=tomcat9 state=stopped' -b
ansible all -m service -a 'name=tomcat9 state=restarted' -b
ansible all -m replace -a 'regexp=8080 replace=0909 path=/etc/tomcat9/server.xml' -b
ansible all -m service -a 'name=tomcat9 state=restarted' -b
ansible all -m uri -a 'url=abdgdh.com status_code=200' -b
ansible all -m fetch -a 'src=/etc/passwd dest=/tmp' -b
ssh 172.31.34.71
ls
mkdir playbooks
cd playbooks/
vim usercreat.yml
ansible-playbook usercreat.yml -b
vim usercreat.yml
anible-playbook usercreat.yml
anible-playbook usercreat.yml -b
cd
anible-playbook usercreat.yml -b
exit
