1. chown :group file
2. find / -user user-1
3. chmod -R ug+rwx,o-wrx /data  
4. umask u+x ? -> chmod +x file
5. chmod g+s /dir
6. chmod +t /dir
7. setfacl -R -m g:sales:r *
8. setfacl -R -m d:g:sales:r /dir and setfacl -R -m g:sales:r /dir
9. umask o-rwx
10. chmod o-rwx myfile -> chattr +i myfile
