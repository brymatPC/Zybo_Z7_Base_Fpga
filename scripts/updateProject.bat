set vivado=C:/Xilinx/Vivado/2019.2/bin/vivado

RMDIR /S /Q "../work"

echo Running tcl script to regenerate project
%vivado% -nolog -nojournal -mode batch -source generateProject.tcl

Rem Delete generated files and folders
echo Deleting generated files and folders

RMDIR /S /Q "../bd/ZyboZ7Bd/ip"
RMDIR /S /Q "../bd/ZyboZ7Bd/ipshared"
RMDIR /S /Q "../bd/ZyboZ7Bd/sim"
RMDIR /S /Q "../bd/ZyboZ7Bd/synth"
RMDIR /S /Q "../bd/ZyboZ7Bd/ui"
DEL /Q "..\bd\ZyboZ7Bd\ZyboZ7Bd.bxml"
DEL /Q "..\bd\ZyboZ7Bd\ZyboZ7Bd_ooc.xdc"

PAUSE