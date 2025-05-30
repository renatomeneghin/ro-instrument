set_defvar -name {SPEED}   -value {STD}
set_defvar -name {VOLTAGE} -value {1.0}
set_defvar -name {TEMPR}   -value {EXT}
set_defvar -name {PART_RANGE}   -value {EXT}
set_defvar -name {IO_DEFT_STD} -value {LVCMOS18}
set_defvar -name {PACOMP_PARPT_MAX_NET} -value {10}
set_defvar -name {PA4_GB_MAX_RCLKINT_INSERTION} -value {16}
set_defvar -name {PA4_GB_MIN_GB_FANOUT_TO_USE_RCLKINT} -value {1000}
set_defvar -name {PA4_GB_MAX_FANOUT_DATA_MOVE} -value {5000}
set_defvar -name {PA4_GB_HIGH_FANOUT_THRESHOLD} -value {5000}
set_defvar -name {PA4_GB_COUNT} -value {24}
set_defvar -name {RESTRICTPROBEPINS} -value {0}
set_defvar -name {RESTRICTSPIPINS} -value {0}
set_defvar -name {PDC_IMPORT_HARDERROR} -value {1}
set_defvar -name {PA4_IDDQ_FF_FIX} -value {1}
set_defvar -name {BLOCK_PLACEMENT_CONFLICTS} -value {ERROR}
set_defvar -name {BLOCK_ROUTING_CONFLICTS} -value {LOCK}
set_defvar -name {RTG4_MITIGATION_ON} -value {0}
set_defvar -name {USE_CONSTRAINT_FLOW} -value True
set_defvar -name {FHB_AUTO_INSTANTIATION} -value {0}
set_defvar -name {SYSTEM_CONTROLLER_SUSPEND_MODE} -value {0}

set_partition_info -name "/DEFAULT_6BA5ED31DBDDB144872513" -timestamp "1742230913"
set_partition_info -name "/DEFAULT_6BA5ED31DBDDB144872513/BVF_RISCV_SUBSYSTEM_inst_0/IHC_SUBSYSTEM_0" -timestamp "1742230913"
set_partition_info -name "/DEFAULT_6BA5ED31DBDDB144872513/M2_INTERFACE_0/FIC1_INITIATOR/FIC_1_INITIATOR_0" -timestamp "1742230913"
set_partition_info -name "/DEFAULT_6BA5ED31DBDDB144872513/M2_INTERFACE_0/PCIE_INITIATOR_inst_0/PCIE_INITIATOR_0" -timestamp "1742230913"
set_compile_info \
    -category {"Device Selection"} \
    -name {"Family"} \
    -value {"PolarFireSoC"}
set_compile_info \
    -category {"Device Selection"} \
    -name {"Device"} \
    -value {"MPFS025T"}
set_compile_info \
    -category {"Device Selection"} \
    -name {"Package"} \
    -value {"FCVG484"}
set_compile_info \
    -category {"Device Selection"} \
    -name {"Speed Grade"} \
    -value {"STD"}
set_compile_info \
    -category {"Device Selection"} \
    -name {"Core Voltage"} \
    -value {"1.0V"}
set_compile_info \
    -category {"Device Selection"} \
    -name {"Part Range"} \
    -value {"EXT"}
set_compile_info \
    -category {"Device Selection"} \
    -name {"Default I/O technology"} \
    -value {"LVCMOS 1.8V"}
set_compile_info \
    -category {"Source Files"} \
    -name {"Topcell"} \
    -value {"DEFAULT_6BA5ED31DBDDB144872513"}
set_compile_info \
    -category {"Source Files"} \
    -name {"Format"} \
    -value {"Verilog"}
set_compile_info \
    -category {"Source Files"} \
    -name {"Source"} \
    -value {"/home/arthur/Desktop/projects_gnss/beaglevfire-gnss/work/libero/synthesis/DEFAULT_6BA5ED31DBDDB144872513.vm"}
set_compile_info \
    -category {"Options"} \
    -name {"Limit the number of high fanout nets to display to"} \
    -value {"10"}
compile \
    -desdir {/home/arthur/Desktop/projects_gnss/beaglevfire-gnss/work/libero/designer/DEFAULT_6BA5ED31DBDDB144872513} \
    -design DEFAULT_6BA5ED31DBDDB144872513 \
    -fam PolarFireSoC \
    -die PA5SOC025T \
    -pkg fcvg484 \
    -merge_pdc 0
