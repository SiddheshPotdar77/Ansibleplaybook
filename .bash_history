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
cd playbooks/
ls
ansible-playbook usercreat.yml -b
ssh 172.31.34.71
vim apache.yml
ansible-playbook apache.yml -b
vim apache.yml
ansible-playbook apache.yml -b
vim tomcat.yml
ls
vim tomcat-users.xml
vim tomcat.yml
ansible-playbook tomcat.yml
vim tomcat.yml
ansible-playbook tomcat.yml
vim tomcat.yml
ls
ansible all -m apt -a 'name=tomcat9 state=absent' -b
ansible-playbook tomcat.yml
vim tomcat.yml
ansible-playbook tomcat.yml -b
vim tomcat.yml
ansible-playbook tomcat.yml -b
vim tomcat.yml
ansible-playbook tomcat.yml -b
vim tomcat.yml
ansible-playbook tomcat.yml -b
vim tomcat.yml
ansible-playbook tomcat.yml -b
cd
ssh 172.31.34.71
cd playbooks/
vim copys1tois2.yml
ansible-playbook copys1tos2.yml -b
ansible-playbook copys1tois2.yml -b
vim copys1tois2.yml
ansible-playbook copys1tois2.yml -b
cd /tmp
ls
cd 172.31.34.71/
ls
pwd
cd
cd playbooks/
vim copys1tois2.yml
ansible-playbook copys1tois2.yml -b
ssh 172.31.35.77
cd
git login
git --help
ls
git status
git init
git add .
git status
git commit -m 'a'
git remote add origin https://github.com/SiddheshPotdar77/Ansibleplaybook.git
git push -u origin master
cd playbooks/
ls
vim copyfetch.yml
cd
ssh 172.31.34.71
cd playbooks/
ls
vim copyfetch.yml
ansible-playbook copyfetch.yml -b
cd
cd /tmp
ls
cd 172.31.34.71/
ls
pwd
cd
vim copyfetch.yml
cd playbooks/
ls
vim copyfetch.yml
ansible-playbook copyfetch.yml -b
vim copyfetch.yml
ansible-playbook copyfetch.yml -b
ssh 172.31.35.77
cd
sudo vim /ec/ansible/hosts
sudo vim /etc/ansible/hosts
cd playbooks/
mkdir group_vars
cd group_vars
vim webserver
ls
cd
cd playbooks/
vim host1.yml
ansible-playbook host1.yml -b
mkdir host_scope
ls
cd host_scope/
vim 172.31.35.77
cd ..
vim host2.yml
ansible-playbook hosy2.yml -b
ansible-playbook host2.yml -b
vim host2.yml
cd host_scope/
ls
vim 172.31.35.77
cd ..
vim host2.yml
ansible-playbook host2.yml -b
vim host2.yml
ansible-playbook host2.yml -b
vim host2.yml
cd host_scope/
vim 172.31.35.77
cd ..
ansible-playbook host2.yml -b
vim host2.yml
cd host_scope/
vim 172.31.35.77
cd ..
ansible-playbook host2.yml -b
vim 172.31.35.77
cd host_scope/
vim 172.31.35.77
cd ..
vim host2.yml
ansible-playbook host2.yml -b
ls
cd host_scope/
ls
vim 172.31.35.77
cd ..
vim host2.yml
ansible-playbook host2.yml -b
vim host2.yml
ls
mkdir host_vars
cd host_vars/
vim 172.31.35.77 
cd ..
ansible-playbook host2.yml -b
ssh 172.31.35.77
vim loops1.yml
ansible-playbook loops1.yml -b
vim loop2.yml
ansible-playbook loop2.yml -b
vim loop2.yml
ansible-playbook loop2.yml -b
wq
vim loop2.yml
ansible-playbook loop2.yml -b
wq
vim loop2.yml
wq
vim loop2.yml
ansible-playbook loop2.yml -b
vim loop3.yml
ansible-playbook loop3.yml -b
wq
vim loop3.yml
ansible-playbook loop3.yml -b
vim loop3.yml
ansible-playbook loop3.yml -b
vim loop3.yml
ansible-playbook loop3.yml -b
vim loop3.yml
ansible-playbook loop3.yml -b
vim loop3.yml
ansible-playbook loop3.yml -b
ansible all -m apt -a 'name=firewalld state=absent' -b
ansible-playbook loop3.yml -b
cd /etc/ansible/hosts
vim /etc/ansible/hosts
sudo vim /etc/ansible/hosts
ansible-playbook loop3.yml -b
vim loop3.yml
ansible-playbook loop3.yml -b
vim loop3.yml
ansible-playbook loop3.yml -b
vim loop3.yml
vim loop4.yml
ansible-playbook loop4.yml -b
vim loop4.yml
ansible-playbook loop4.yml -b
cd
git push https://github.com/SiddheshPotdar77/Ansibleplaybook.git
git pull https://github.com/SiddheshPotdar77/Ansibleplaybook.git
git pull
git init
git status
git add .
git commit -m "b"
git pull https://github.com/SiddheshPotdar77/Ansibleplaybook.git
git pull
git push https://github.com/SiddheshPotdar77/Ansibleplaybook.git
cd playbooks/
vim handle.yml
ansible-playbook handle.yml
wq
vim handle.yml
ansible-playbook handle.yml
vim handle.yml
ansible all -m apt -a 'name=apache2 state=absent' -b
ansible-playbook handle.yml -b
vim handle.yml
ansible all -m apt -a 'name=apache2 state=absent' -b
ansible-playbook handle.yml -b
ansible all -m apt -a 'name=tomcat9 state=absent' -b
ansible all -m apt -a 'name=tomcat9-admin state=absent' -b
vim newtomcat.yml
ansible-playbook newtomcat.yml -b
vim newtomcat.yml
ansible-playbook newtomcat.yml -b
ansible all -m apt -a 'name=tomcat9-admin state=absent' -b
ansible all -m apt -a 'name=tomcat9 state=absent' -b
ansible-playbook newtomcat.yml -b
vim newtomcat.yml
ssh 172.31.35.77
ls
sudo vim tomcat-users.xml
vim newtomcat.yml
ansible all -m apt -a 'name=tomcat9-admin state=absent' -b
ansible all -m apt -a 'name=tomcat9 state=absent' -b
ansible-playbook newtomcat.yml -b
ssh 172.31.35.77
ssh 172.31.34.71
ansible all -m apt -a 'name=tomcat9 state=absent' -b
ansible all -m apt -a 'name=tomcat9-admin state=absent' -b
ansible-playbook newtomcat.yml -b
vim newtomcat.yml
ls
vim handle.yml
vim newtomcat.yml
vim errorhandle.yml
ansible-playbook errorhandle.yml -b
vim errorhandle.yml
ansible-playbook errorhandle.yml -b
ansible all -m apt - a 'name=git state=absent' -b
ansible all -m apt -a 'name=git state=absent' -b
ansible-playbook errorhandle.yml -b
vim errorhandle.yml
ansible-playbook errorhandle.yml -b
vim errorhandle.yml
ansible all -m apt -a 'name=git state=absent update_cache=yes' -b
ansible-playbook errorhandle.yml -b
ansible-vault create v1.yml
vim v1.yml
ansible-vault view v1
ansible-vault view v1.yml
ansible-vault edit v1.yml
vim v2.yml
ansible-vault encrypt v2.yml
vim v2.yml
ansible-vault rekey v2.yml
vim v2.yml
vim tags.yml
anible playbook tags.yml --tags="tagged" -b
anible-playbook tags.yml --tags="tagged" -b
ansible-playbook tags.yml --tags="tagged" -b

vim tags.yml
ansible-playbook tags.yml --tags="tagged"
vim tags.yml
ansible-playbook tags.yml --tags="tagged"
vim when.yml
ansible-playbook when.yml -b
vim when.yml
ansible-playbook when.yml -b
vim when.yml
ansible-playbook when.yml -b
vim filecheck.yml
ansible-playbook filecheck.yml -b
vim filecheck.yml
ansible-playbook filecheck.yml -b
vim filecheck.yml
ansible-playbook filecheck.yml -b
ssh 172.31.34.71
ansible-playbook filecheck.yml -b
vim filecheck.yml
ansible-playbook filecheck.yml -b
vim filecheck.yml
ansible-playbook filecheck.yml -b
vim filecheck.yml
ansible-playbook filecheck.yml -b
vim filecheck.yml
ansible 172.31.34.71 -m file -a 'name=/home/ubuntu/f1 state=touch' -b
vim filecheck.yml
ansible-playbook filecheck.yml -b
vim filecheck.yml
ansible-playbook filecheck.yml -b
git add .
git commit -m "c"
git push
ansible all -m file -a 'name=/tmp/gh1 state=touch' -b
ansible 172.31.34.71 -m file -a 'name=/tmp/gh1 mode=770' -b
ansible all -m file -a 'name=/tmp/gh1 state=touch' -b
cd downloads/
cd playbooks/
ls
vim excute.yml
ansible-playbook execute.yml -b
ansible-playbook excute.yml -b
vim excute.yml
ansible-playbook excute.yml -b
vim excute.yml
ansible-playbook excute.yml -b
vim excute.yml
ansible-playbook excute.yml -b
ansible all -m file -a 'name=/tmp/gh2 state=touch' -b
ansible 172.31.34.71 -m file -a 'name=/tmp/gh2 mode=770' -b
vim excute.yml
ansible-playbook excute.yml -b
ansible 172.31.34.71 -m apt -a 'name=tomcat9 state=absent' -b
ansible all -m apt -a 'name=tomcat9 state=absent' -b
ansible all -m apt -a 'name=tomcat9-admin state=absent' -b
ansible all -m apt -a 'name=git state=absent' -b
ansible all -m apt -a 'name=maven state=absent' -b
cd /etc/ansible/hosts/
sudo vim /etc/ansible/hosts
vim cicd.yml
ansible-playbook cicd.yml -b
vim cicd.yml
ansible-playbook cicd.yml -b
vim cicd.yml
ansible-playbook cicd.yml -b
ssh 172.31.34.71
vim cicd.yml
ansible-playbook cicd.yml -b
vim child1.yml
vim parent1.yml
ansible-playbook parent1.yml -b
vim parent1.yml
ansible-playbook parent1.yml -b
vim installapache2.yml
vim chnageindexfile.yml
vim restart.yml
vim checkurlresponse.yml
vim apache2.yml
ansible-playbook apache2.yml -b
git add .
git commit -m "d"
git push
ssh 172.31.35.77
ssh 172.31.34.71
vim cicdsofw.yml
vim osinfo.yml
asnible-playbook osinfo.yml -b
ansible-playbook osinfo.yml -b
vim osinfo.yml
ansible-playbook osinfo.yml -b
vim osinfo.yml
ansible-playbook osinfo.yml -b
vim osinfo.yml
ansible-playbook osinfo.yml -b
vim softasos.yml
ansible-playbook softasos.yml -b
vim softasos.yml
ansible-playbook softasos.yml -b
ansible all -m apt -a 'name=git state=absent' -b
ansible-playbook softasos.yml -b
git push
git add .
git commit -m "d"
git push
sudo vim /etc/ansible/hosts
exit
whoami
sudo passwd ubuntu
sudo vim /etc/ssh/sshd_config
sudo service ssh restart
cd playbooks/
ls
vim apache.yml
ansible-playbook apache.yml -b
cd
cd /var/lib/apt/lists/lock
cd /var/lib/apt
ls
cd lists/
ls
cd locks/
ls
ls -la lock
sudo chmod o+R 770
sudo chmod 770 o+R lock
sudo chmod 770 lock
ls -la lock
sudo chmod 777 lock
ls -la lock
cd
sudo rm /var/lib/apt/lists/lock
sudo rm /var/lib/dpkg/lock
sudo rm /var/lib/dpkg/lock-frontend
sudo rm /var/cache/apt/archives/lock
sudo dpkg --configure -a
cd /var/lib/apt/lists
ls
cd 
cd /var/lib/apt/lists/lock
cd /var/lib/apt/lists
ls
cd /etc/ansible
ls
sudo vim ansible.cfg
ssh keygen
ssh-keygen
ssh-copy-id ubuntu@172.31.43.196
sudo vim /etc/ansible/hosts
ansible all -a 'date'
ansible all -m -a 'date'
ansible all -a 'date'
ssh-copy-id ubuntu@172.31.34.71
ansible all -a 'date'
cd playbooks/
ls
ssh 172.31.43.196
vim practise.yml
ansible-playbook practise.yml -b
cd 
cd /tmp
ls
cd 172.31.43.196
ls
pwd
cd
cd playbooks/
vim practise.yml
ansible-playbook practise.yml -b
ssh 172.31.34.71 
vim practise2.yml
ansible-playbook practise2.yml -b
vim practise2.yml
ansible all -m apt -a 'name=tomcat9 state=absent purge=yes' -b
ansible all -m apt -a 'name=tomcat9-admin state=absent purge=yes' -b
ansible-playbook practise2.yml -b
vim practise2.yml
vim practise3.yml
ansible-playbook practise3.yml --syntax-check
ansible-playbook practise3.yml -b

ansible all -m apt -a 'name=git state=absent' -b
ansible-playbook practise3.yml -b
vim practise1.yml
vim practise.yml
vim practise2.yml
ansible-playbook practise2.yml --tags="tagged" -b
ansible-playbook practise2.yml --tags="untagged" -b
vim practise4.yml
ansible-playbook practise4.yml -b
vim practise4.yml
ansible-playbook practise4.yml -b

vim practise5.yml
ansible-playobok practise5.yml -b
ansible-playbook practise5.yml -b
vim practise4.yml
vim practise5.yml
ansible-playbook practise5.yml -b
ssh 172.31.43.196
vim ch1.yml
ansible-playbook pa1.yml -b
vim pa1.yml
ansible all -m apt -a 'name=apache2 state=absent' -b
ansible-playbook pa1.yml
vim pa1.yml
ansible-playbook pa1.yml
vim pa1.yml
ansible-playbook pa1.yml
vim practise6.yml
ansible-playbook practise6.yml -b
vim practise6.yml
ansible-playbook practise6.yml -b
vim practise6.yml
ansible-playbook practise6.yml -b
vim practise6.yml
ansible-playbook practise6.yml -b
vim practise7.yml
anible-playbook practise7.yml
ansible-playbook practise7.yml
vim practise7.yml
ansible-playbook practise7.yml
vim practise7.yml
ansible-playbook practise7.yml -b
cd playbooks/
git add .
git commit -m "e"
git push
