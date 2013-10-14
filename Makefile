BUCKET=boxes.community.kerlock.com
VMWARE=./boxes/asheville-api-vmware-precise64.box
VIRTUALBOX=./boxes/asheville-api-virtualbox-precise64.box
PROJECT=asheville/accounts/

virtualbox:
	@s3cmd -c .creds --acl-public put $(VIRTUALBOX) s3://$(BUCKET)/$(PROJECT)

vmware:
	@s3cmd -c .creds --acl-public put $(VMWARE) s3://$(BUCKET)/$(PROJECT)
