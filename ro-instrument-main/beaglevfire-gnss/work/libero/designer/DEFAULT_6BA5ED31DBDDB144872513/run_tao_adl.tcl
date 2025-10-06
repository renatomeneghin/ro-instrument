set_device -family {PolarFireSoC} -die {MPFS025T} -speed {STD}
read_adl {/home/arthur/Desktop/projects_gnss/beaglevfire-gnss/work/libero/designer/DEFAULT_6BA5ED31DBDDB144872513/DEFAULT_6BA5ED31DBDDB144872513.adl}
read_afl {/home/arthur/Desktop/projects_gnss/beaglevfire-gnss/work/libero/designer/DEFAULT_6BA5ED31DBDDB144872513/DEFAULT_6BA5ED31DBDDB144872513.afl}
map_netlist
read_sdc {/home/arthur/Desktop/projects_gnss/beaglevfire-gnss/work/libero/constraint/DEFAULT_6BA5ED31DBDDB144872513_derived_constraints.sdc}
read_sdc {/home/arthur/Desktop/projects_gnss/beaglevfire-gnss/work/libero/constraint/fic_clocks.sdc}
check_constraints {/home/arthur/Desktop/projects_gnss/beaglevfire-gnss/work/libero/constraint/placer_sdc_errors.log}
estimate_jitter -report {/home/arthur/Desktop/projects_gnss/beaglevfire-gnss/work/libero/designer/DEFAULT_6BA5ED31DBDDB144872513/place_and_route_jitter_report.txt}
write_sdc -mode layout {/home/arthur/Desktop/projects_gnss/beaglevfire-gnss/work/libero/designer/DEFAULT_6BA5ED31DBDDB144872513/place_route.sdc}
