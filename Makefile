.PHONY: all debug clean

all:
	ROCK_SDK=${PWD}/sdk rock -v --nolibcache --noclean --cc=clang +-pthread -driver=make

debug:
	ROCK_SDK=${PWD}/sdk gdb --args rock -v --nolibcache --noclean --cc=clang +-pthread -driver=make

clean:
	rock -x
	rm -rf build
