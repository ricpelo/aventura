.PHONY: compilar compilar-glulxe jugar jugar-glulxe

CC=Inform6/inform
FLAGS=+language_name=Spanish +include_path=,lib,INFSP6,InformLibrary611,Alpha_pack

aventura.z5: aventura.inf
	$(CC) $< $(FLAGS)

aventura.ulx: aventura.inf
	$(CC) $< $(FLAGS) -G

ruinas.z5: ruinas.inf
	$(CC) $< $(FLAGS)

ruinas.ulx: ruinas.inf
	$(CC) $< $(FLAGS) -G

compilar:
	Inform6/inform aventura.inf +language_name=Spanish +include_path=,lib,INFSP6,InformLibrary611,Alpha_pack

compilar-glulxe:
	Inform6/inform aventura.inf -G +language_name=Spanish +include_path=,lib,INFSP6,InformLibrary611,Alpha_pack

jugar:
	gargoyle-free aventura.z5

jugar-glulxe:
	gargoyle-free aventura.ulx
