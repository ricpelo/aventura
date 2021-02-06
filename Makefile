.PHONY: compilar compilar-glulxe jugar jugar-glulxe

compilar:
	Inform6/inform aventura.inf +language_name=Spanish +include_path=,lib,INFSP6,InformLibrary611,Alpha_pack

compilar-glulxe:
	Inform6/inform aventura.inf -G +language_name=Spanish +include_path=,lib,INFSP6,InformLibrary611,Alpha_pack

jugar:
	gargoyle-free aventura.z5

jugar-glulxe:
	gargoyle-free aventura.ulx
