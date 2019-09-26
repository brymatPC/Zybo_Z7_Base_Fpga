set vivado=C:/Xilinx/Vivado/2019.1/bin/vivado

RMDIR /S /Q "../work"

echo Running tcl script to regenerate project
%vivado% -nolog -nojournal -mode batch -source generateProject.tcl

Rem Delete generated files and folders
echo Deleting generated files and folders

RMDIR /S /Q "../bd/zyboZ7/ip"
RMDIR /S /Q "../bd/zyboZ7/ipshared"
RMDIR /S /Q "../bd/zyboZ7/sim"
RMDIR /S /Q "../bd/zyboZ7/synth"
RMDIR /S /Q "../bd/zyboZ7/ui"
DEL /Q "..\bd\zyboZ7\zyboZ7.bxml"
DEL /Q "..\bd\zyboZ7\zyboZ7_ooc.xdc"

PAUSE