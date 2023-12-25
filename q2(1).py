Q2: Crete a collaborative Directory/common/adm with the follong characteristics:
	-->Group ownership of comman/adm is admin.
	-->The directory should be readable,writwble and accessible to members of admin
	but not to any other user.
	(It is understood that root user has access to all files and directory on the system.)

Sol:--> #mkdir -p /common / adm
	#chgrp admin/comman/adm
	#chmod 770/common/adm.
