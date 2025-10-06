new_project \
         -name {DEFAULT_6BA5ED31DBDDB144872513} \
         -location {/home/arthur/Desktop/projects_gnss/beaglevfire-gnss/work/libero/designer/DEFAULT_6BA5ED31DBDDB144872513/DEFAULT_6BA5ED31DBDDB144872513_fp} \
         -mode {chain} \
         -connect_programmers {FALSE}
add_actel_device \
         -device {MPFS025T} \
         -name {MPFS025T}
enable_device \
         -name {MPFS025T} \
         -enable {TRUE}
save_project
close_project
