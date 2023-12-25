Q3: Copy the file /etc/fstab to /var/tmp. Configure the permissions of /var/tmp/fstab so that:
	-->The file /var/tmp/fstab is owerned by root user.
	-->The file--//-- belongs to the group user.
	-->The file--//-- should not be executable by anyone.
	-->The user ..... is able to read  as well as write /var/tmp/fstab.
	-->All other users have the ability to read /var/tmp/fstab.

Sol:--> #cp -av /etc/fstab  /var/tmp
	#chown root:root /var/tmp/fstab
	#setfacl -m u:..user1..:rw /var/tmp/fstab
	#setfacl -m u:..user2..:rw /var/tmp/fstab
	#chown o=r /var/tmp/fstab.

