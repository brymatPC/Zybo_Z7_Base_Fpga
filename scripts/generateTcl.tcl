pwd
cd [get_property DIRECTORY [current_project]]
pwd
cd ../bd
write_bd_tcl -force -bd_folder "../bd" -no_project_wrapper zyboZ7Bd.tcl
cd ../work
write_project_tcl -force -target_proj_dir "work" -no_copy_sources -use_bd_files {../zyboZ7.tcl}
cd ../scripts