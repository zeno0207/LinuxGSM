#!/bin/bash
# LinuxGSM fix_sy.sh module
# Author: Daniel Gibbs
# Contributors: https://linuxgsm.com/contrib
# Website: https://linuxgsm.com
# Description: Create symlinks for renamed Synergy serverfiles.
# Solution from Github: https://github.com/jacobneiltaylor/docker-synergy/blob/main/bugfix.sh

moduleselfname="$(basename "$(readlink -f "${BASH_SOURCE[0]}")")"

if [ ! -L "${serverfiles}/bin/libtier0.so" ]; then
    mv "${serverfiles}/bin/libtier0.so" "${serverfiles}/bin/libtier0.so.bak"
	ln -s "${serverfiles}/bin/libtier0_srv.so" "${serverfiles}/bin/libtier0.so"
fi
if [ ! -L "${serverfiles}/bin/libvstdlib.so" ]; then
    mv "${serverfiles}/bin/libvstdlib.so" "${serverfiles}/bin/libvstdlib.so.bak"
	ln -s "${serverfiles}/bin/libvstdlib_srv.so" "${serverfiles}/bin/libvstdlib.so"
fi
if [ ! -L "${serverfiles}/bin/vphysics.so" ]; then
    mv "${serverfiles}/bin/vphysics.so" "${serverfiles}/bin/vphysics.so.bak"
	ln -s "${serverfiles}/bin/vphysics_srv.so" "${serverfiles}/bin/vphysics.so"
fi
if [ ! -L "${serverfiles}/bin/studiorender.so" ]; then
    mv "${serverfiles}/bin/studiorender.so" "${serverfiles}/bin/studiorender.so.bak"
	ln -s "${serverfiles}/bin/studiorender_srv.so" "${serverfiles}/bin/studiorender.so"
fi
if [ ! -L "${serverfiles}/bin/soundemittersystem.so" ]; then
    mv "${serverfiles}/bin/soundemittersystem.so" "${serverfiles}/bin/soundemittersystem.so.bak"
	ln -s "${serverfiles}/bin/soundemittersystem_srv.so" "${serverfiles}/bin/soundemittersystem.so"
fi
if [ ! -L "${serverfiles}/bin/shaderapiempty.so" ]; then
    mv "${serverfiles}/bin/shaderapiempty.so" "${serverfiles}/bin/shaderapiempty.so.bak"
	ln -s "${serverfiles}/bin/shaderapiempty_srv.so" "${serverfiles}/bin/shaderapiempty.so"
fi
if [ ! -L "${serverfiles}/bin/scenefilecache.so" ]; then
    mv "${serverfiles}/bin/scenefilecache.so" "${serverfiles}/bin/scenefilecache.so.bak"
	ln -s "${serverfiles}/bin/scenefilecache_srv.so" "${serverfiles}/bin/scenefilecache.so"
fi
if [ ! -L "${serverfiles}/bin/materialsystem.so" ]; then
    mv "${serverfiles}/bin/materialsystem.so" "${serverfiles}/bin/materialsystem.so.bak"
	ln -s "${serverfiles}/bin/materialsystem_srv.so" "${serverfiles}/bin/materialsystem.so"
fi
if [ ! -L "${serverfiles}/bin/engine.so" ]; then
    mv "${serverfiles}/bin/engine.so" "${serverfiles}/bin/engine.so.bak"
	ln -s "${serverfiles}/bin/engine_srv.so" "${serverfiles}/bin/engine.so"
fi
