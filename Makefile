.PHONY: compilar, jugar

compilar:
	Inform6/inform aventura.inf +language_name=Spanish +include_path=,lib,INFSP6,InformLibrary611,Alpha_pack

jugar:
	gargoyle aventura.ulx
