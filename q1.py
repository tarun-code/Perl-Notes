#Q1: Create the following users, group and group membership?
-->A group named admin.
-->A user Harry who belongs to admin as a secondry group.
-->A user natasha who also belongs to admin as a secondry group.
-->A user Sarah who must have access to an interactive shell on the system and who not a member of admin.
-->Harry ,Natasha and Sarah should all have the passward as pass.

sol:--> #groupadd admin
	#useradd -G admin Harry
	#useradd -G admin Natasha
	#useradd Sarah
	#passwd users
