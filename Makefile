dev = /dev/sdb1
dataFile = -f bin


all:boot install
	loader $(dev) boot 
	@echo "Finalizado... Dispositivo USB listo."
	

#Generar binario de bootloader
boot:boot.asm
	nasm $(dataFile) boot.asm


install:loader.c
	cc loader.c -o loader
	cp loader /bin/loader
