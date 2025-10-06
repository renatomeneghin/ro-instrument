open_project -project {/home/arthur/Desktop/projects_gnss/beaglevfire-gnss/work/libero/designer/DEFAULT_6BA5ED31DBDDB144872513/DEFAULT_6BA5ED31DBDDB144872513_fp/DEFAULT_6BA5ED31DBDDB144872513.pro}\
         -connect_programmers {FALSE}
load_programming_data \
    -name {MPFS025T} \
    -fpga {/home/arthur/Desktop/projects_gnss/beaglevfire-gnss/work/libero/designer/DEFAULT_6BA5ED31DBDDB144872513/DEFAULT_6BA5ED31DBDDB144872513.map} \
    -header {/home/arthur/Desktop/projects_gnss/beaglevfire-gnss/work/libero/designer/DEFAULT_6BA5ED31DBDDB144872513/DEFAULT_6BA5ED31DBDDB144872513.hdr} \
    -envm {/home/arthur/Desktop/projects_gnss/beaglevfire-gnss/work/libero/designer/DEFAULT_6BA5ED31DBDDB144872513/DEFAULT_6BA5ED31DBDDB144872513_envm.efc} \
    -snvm {/home/arthur/Desktop/projects_gnss/beaglevfire-gnss/work/libero/designer/DEFAULT_6BA5ED31DBDDB144872513/DEFAULT_6BA5ED31DBDDB144872513_snvm.efc} \
    -spm {/home/arthur/Desktop/projects_gnss/beaglevfire-gnss/work/libero/designer/DEFAULT_6BA5ED31DBDDB144872513/DEFAULT_6BA5ED31DBDDB144872513.spm} \
    -dca {/home/arthur/Desktop/projects_gnss/beaglevfire-gnss/work/libero/designer/DEFAULT_6BA5ED31DBDDB144872513/DEFAULT_6BA5ED31DBDDB144872513.dca}
export_single_dat \
    -name {MPFS025T} \
    -file {/home/arthur/Desktop/projects_gnss/beaglevfire-gnss/bitstream/DirectC/DEFAULT_6BA5ED31DBDDB144872513.dat} \
    -secured

save_project
close_project
