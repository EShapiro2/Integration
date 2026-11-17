#!/bin/bash
cd /home/user/grassroots-mail && bash bin/mail-read Code "Code #33" > /home/user/tmp/mail-rd.txt 2>&1
cut -c1-${1:-1500} /home/user/tmp/mail-rd.txt | grep -v "^$"
