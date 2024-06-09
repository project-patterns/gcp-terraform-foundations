tools/device-info.cfg: tools/device-info.sh
	./tools/device-info.sh > tools/device-info.cfg

tools/terraform: tools/tools.cfg tools/device-info.cfg
	. ./tools/tools.cfg && . ./tools/device-info.cfg && curl https://releases.hashicorp.com/terraform/$${terraform}/terraform_$${terraform}_$${device_platform}_$${device_architecture}.zip > tools/terraform.zip
	unzip -o ./tools/terraform.zip  terraform -d ./tools
	rm ./tools/terraform.zip
	touch tools/terraform
