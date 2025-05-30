read_sdc -scenario "place_and_route" -netlist "optimized" -pin_separator "/" -ignore_errors {/home/arthur/Desktop/projects_gnss/beaglevfire-gnss/work/libero/designer/DEFAULT_6BA5ED31DBDDB144872513/place_route.sdc}
set_options -tdpr_scenario "place_and_route" 
save
set_options -analysis_scenario "place_and_route"
report -type combinational_loops -format xml {/home/arthur/Desktop/projects_gnss/beaglevfire-gnss/work/libero/designer/DEFAULT_6BA5ED31DBDDB144872513/DEFAULT_6BA5ED31DBDDB144872513_layout_combinational_loops.xml}
report -type slack {/home/arthur/Desktop/projects_gnss/beaglevfire-gnss/work/libero/designer/DEFAULT_6BA5ED31DBDDB144872513/pinslacks.txt}
set coverage [report \
    -type     constraints_coverage \
    -format   xml \
    -slacks   no \
    {/home/arthur/Desktop/projects_gnss/beaglevfire-gnss/work/libero/designer/DEFAULT_6BA5ED31DBDDB144872513/DEFAULT_6BA5ED31DBDDB144872513_place_and_route_constraint_coverage.xml}]
set reportfile {/home/arthur/Desktop/projects_gnss/beaglevfire-gnss/work/libero/designer/DEFAULT_6BA5ED31DBDDB144872513/coverage_placeandroute}
set fp [open $reportfile w]
puts $fp $coverage
close $fp