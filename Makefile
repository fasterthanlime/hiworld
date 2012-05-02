.PHONY: all

all:
	rock -x
	ROCK_SDK=sdk rock -v --driver=make --cc=clang
