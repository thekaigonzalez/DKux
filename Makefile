dirs:
	mkdir dkux

all:
	gcc src/imagekit.c -c -o src/imagekit.o
	dmd src/imagekit_export.d src/imagekit.o -od./dkux/initrd-api.o -L-llua5.3
	gcc src/Kux-RunFunction.c -c
	dmd src/Kux-Base.d src/Kux-RunFunction.o -L-llua5.3 -od./dkux/kux-run
	luac -o dkux/initrd.img src/initrd.lua

