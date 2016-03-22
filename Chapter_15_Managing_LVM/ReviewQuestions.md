
1. `8e  Linux LVM`
2. `vgcreate vggroup --physicalextentsize 4M /dev/sdb3`
3. `pvs` , `pvdisplay`
4. `vgextend vgroup /dev/sdd`
5. `lvcreate -L 6M  -n lvvol1 vgroup`
6. `lvresize -L+100M lvvol1` -> `lvextend`
7. -> ad disk space
8. `-r` 
9. `lvdisplay`
10. `e2fsck -c /groups/` ->fsck
