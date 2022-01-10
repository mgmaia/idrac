#!/bin/bash

${USER}=user_test
${PASSWORD}=pass_test

for i in {128..139}
do
	echo "IP 192.168.15.$i"
        sshpass -p root_pwd ssh -o StrictHostKeyChecking=no root@192.168.15.$i "set idrac.users.10.username ${USER}"
        sshpass -p root_pwd ssh root@192.168.15.$i "set idrac.users.10.password ${PASSWORD}"
        sshpass -p root_pwd ssh root@1192.168.15.$i "set idrac.users.10.enable 1"
        sshpass -p root_pwd ssh root@192.168.15.$i "set idrac.users.10.Privilege 0x1ff"
        sshpass -p root_pwd ssh root@192.168.15.$i "set idrac.users.10.IpmiLanPrivilege 4"
        sshpass -p root_pwd ssh root@192.168.15.$i "set idrac.users.10.IpmiSerialPrivilege 4"
        sshpass -p root_pwd ssh root@192.168.15.$i "set idrac.users.10.SolEnable Enabled"
done
