# AWS Terraform 1



## TP1 

* Oui on peut savoir que l'on est sur une VM car il y a hyperHypervisor detected: Xen HVM lorsque l'on tape dmsg | less

* Non on est ne sait pas que l'on est sur du AWS 

* l'IP local 172.31.90.91/20 
sa plage est de 172.31.80.1 à 172.31.95.254 et comme premiere machine 172.31.80.0

installation d'Apache2 

    ubuntu@ip-172-31-90-91:~$ sudo systemctl start apache2
    ubuntu@ip-172-31-90-91:~$ sudo apache2ctl -v
    Server version: Apache/2.4.29 (Ubuntu)
    Server built:   2020-08-12T21:33:25
    ubuntu@ip-172-31-90-91:~$ 