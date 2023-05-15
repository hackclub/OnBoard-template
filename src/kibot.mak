#!/usr/bin/make
# Automatically generated by KiBot from `config.yaml`
KIBOT=kibot
DEBUG=
CONFIG=config.yaml
SCH=main.sch
PCB=main.kicad_pcb
DEST=Fabrication
KIBOT_CMD=$(KIBOT) $(DEBUG) -c $(CONFIG) -e $(SCH) -b $(PCB) -d $(DEST)
LOGFILE=kibot_error.log

#
# Default target
#
all: run_erc run_drc Elecrow_gerbers Elecrow_drill Elecrow FusionPCB_gerbers FusionPCB_drill FusionPCB JLCPCB_gerbers JLCPCB_drill JLCPCB P-Ban_gerbers P-Ban_drill P-Ban PCBWay_gerbers PCBWay_drill PCBWay print_sch print_front print_bottom print_gnd print_power print_s1 print_s2 interactive_bom bom_html bom_xlsx bom_csv gerbers excellon_drill gerber_drills position pcb_top_g pcb_bot_g pcb_top_b pcb_bot_b pcb_top_r pcb_bot_r step

#
# SCH/PCB targets
#
pre_sch: run_erc

out_sch: print_sch bom_html bom_xlsx bom_csv

all_sch: pre_sch out_sch

pre_pcb: run_drc

out_pcb: Elecrow_gerbers Elecrow_drill Elecrow FusionPCB_gerbers FusionPCB_drill FusionPCB JLCPCB_gerbers JLCPCB_drill JLCPCB P-Ban_gerbers P-Ban_drill P-Ban PCBWay_gerbers PCBWay_drill PCBWay print_front print_bottom print_gnd print_power print_s1 print_s2 interactive_bom gerbers excellon_drill gerber_drills position pcb_top_g pcb_bot_g pcb_top_b pcb_bot_b pcb_top_r pcb_bot_r step

all_pcb: pre_pcb out_pcb

#
# Available targets (outputs)
#
run_erc: Fabrication/main-erc_0.1.txt

run_drc: Fabrication/main-drc_0.1.txt

Elecrow_gerbers: Fabrication/Elecrow/main.GTL Fabrication/Elecrow/main.G1 Fabrication/Elecrow/main.G2 Fabrication/Elecrow/main.G3 Fabrication/Elecrow/main.G4 Fabrication/Elecrow/main.GBL Fabrication/Elecrow/main.GTO Fabrication/Elecrow/main.GBO Fabrication/Elecrow/main.GTS Fabrication/Elecrow/main.GBS Fabrication/Elecrow/main.GML

Elecrow_drill: Fabrication/Elecrow/main.TXT Fabrication/Elecrow/main-NPTH.TXT

Elecrow: Fabrication/Elecrow/main-Elecrow_0.1.zip

FusionPCB_gerbers: Fabrication/FusionPCB/main.GTL Fabrication/FusionPCB/main.GL2 Fabrication/FusionPCB/main.GL3 Fabrication/FusionPCB/main.GL4 Fabrication/FusionPCB/main.GL5 Fabrication/FusionPCB/main.GBL Fabrication/FusionPCB/main.GTO Fabrication/FusionPCB/main.GBO Fabrication/FusionPCB/main.GTS Fabrication/FusionPCB/main.GBS Fabrication/FusionPCB/main.GML

FusionPCB_drill: Fabrication/FusionPCB/main.TXT

FusionPCB: Fabrication/FusionPCB/main-FusionPCB_0.1.zip

JLCPCB_gerbers: Fabrication/JLCPCB/main-F_Cu_0.1.gbr Fabrication/JLCPCB/main-B_Cu_0.1.gbr Fabrication/JLCPCB/main-In1_Cu_0.1.gbr Fabrication/JLCPCB/main-In2_Cu_0.1.gbr Fabrication/JLCPCB/main-In3_Cu_0.1.gbr Fabrication/JLCPCB/main-In4_Cu_0.1.gbr Fabrication/JLCPCB/main-F_SilkS_0.1.gbr Fabrication/JLCPCB/main-B_SilkS_0.1.gbr Fabrication/JLCPCB/main-F_Mask_0.1.gbr Fabrication/JLCPCB/main-B_Mask_0.1.gbr Fabrication/JLCPCB/main-Edge_Cuts_0.1.gbr

JLCPCB_drill: Fabrication/JLCPCB/main-PTH.drl Fabrication/JLCPCB/main-NPTH.drl

JLCPCB: Fabrication/JLCPCB/main-JLCPCB_0.1.zip

P-Ban_gerbers: Fabrication/P-Ban/main-F_Cu_0.1.gtl Fabrication/P-Ban/main-B_Cu_0.1.gbl Fabrication/P-Ban/main-In1_Cu_0.1.gp1 Fabrication/P-Ban/main-In2_Cu_0.1.gp2 Fabrication/P-Ban/main-In3_Cu_0.1.gp3 Fabrication/P-Ban/main-In4_Cu_0.1.gp4 Fabrication/P-Ban/main-F_SilkS_0.1.gto Fabrication/P-Ban/main-B_SilkS_0.1.gbo Fabrication/P-Ban/main-F_Mask_0.1.gts Fabrication/P-Ban/main-B_Mask_0.1.gbs Fabrication/P-Ban/main-Edge_Cuts_0.1.gm1 Fabrication/P-Ban/製造基準書.txt

P-Ban_drill: Fabrication/P-Ban/main.drl Fabrication/P-Ban/main-drill_map_0.1.gbr Fabrication/P-Ban/main-drl.rpt

P-Ban: Fabrication/P-Ban/main-P-Ban_0.1.zip

PCBWay_gerbers: Fabrication/PCBWay/main.gtl Fabrication/PCBWay/main.gl2 Fabrication/PCBWay/main.gl3 Fabrication/PCBWay/main.gl4 Fabrication/PCBWay/main.gl5 Fabrication/PCBWay/main.gbl Fabrication/PCBWay/main.gto Fabrication/PCBWay/main.gbo Fabrication/PCBWay/main.gts Fabrication/PCBWay/main.gbs Fabrication/PCBWay/main.gtp Fabrication/PCBWay/main.gbp Fabrication/PCBWay/main.gm1

PCBWay_drill: Fabrication/PCBWay/main.drl Fabrication/PCBWay/main-NPTH.drl

PCBWay: Fabrication/PCBWay/main-PCBWay_0.1.zip

print_sch: Fabrication/main-schematic_0.1.pdf

print_front: Fabrication/main-F_Cu+Dwgs_User_0.1.pdf

print_bottom: Fabrication/main-B_Cu+Dwgs_User_0.1.pdf

print_gnd: Fabrication/main-GND+Dwgs_User_0.1.pdf

print_power: Fabrication/main-Power_+3,3V+Dwgs_User_0.1.pdf

print_s1: Fabrication/main-S1_Cu+Dwgs_User_0.1.pdf

print_s2: Fabrication/main-S2_Cu+Dwgs_User_0.1.pdf

interactive_bom: Fabrication/BoM/main-ibom_0.1.html

bom_html: Fabrication/BoM/main-bom_0.1.html

bom_xlsx: Fabrication/BoM/main-bom_0.1.xlsx

bom_csv: Fabrication/BoM/main-bom_0.1.csv

gerbers: Fabrication/Gerbers/main-F_Cu_0.1.gbr Fabrication/Gerbers/main-B_Cu_0.1.gbr Fabrication/Gerbers/main-GND_Cu_0.1.gbr Fabrication/Gerbers/main-Power_Cu_0.1.gbr Fabrication/Gerbers/main-S1_Cu_0.1.gbr Fabrication/Gerbers/main-S2_Cu_0.1.gbr Fabrication/Gerbers/main-F_Paste_0.1.gbr Fabrication/Gerbers/main-B_Paste_0.1.gbr Fabrication/Gerbers/main-F_SilkS_0.1.gbr Fabrication/Gerbers/main-B_SilkS_0.1.gbr Fabrication/Gerbers/main-F_Mask_0.1.gbr Fabrication/Gerbers/main-B_Mask_0.1.gbr Fabrication/Gerbers/main-Dwgs_User_0.1.gbr Fabrication/Gerbers/main-Edge_Cuts_0.1.gbr Fabrication/Gerbers/main-B_Fab_0.1.gbr Fabrication/Gerbers/main-job.gbrjob

excellon_drill: Fabrication/Drill/main-PTH_drill_0.1.drl Fabrication/Drill/main-PTH_drill_map_0.1.pdf Fabrication/Drill/main-NPTH_drill_0.1.drl Fabrication/Drill/main-NPTH_drill_map_0.1.pdf Fabrication/Drill/main-drl.rpt

gerber_drills: Fabrication/Drill/main-PTH_drill_0.1.gbr Fabrication/Drill/main-NPTH_drill_0.1.gbr

position: Fabrication/Position/main-top_pos_0.1.pos Fabrication/Position/main-bottom_pos_0.1.pos

pcb_top_g: Fabrication/PCB/green/main-top_0.1.jpg

pcb_bot_g: Fabrication/PCB/green/main-bottom_0.1.jpg

pcb_top_b: Fabrication/PCB/blue/main-top_0.1.jpg

pcb_bot_b: Fabrication/PCB/blue/main-bottom_0.1.jpg

pcb_top_r: Fabrication/PCB/red/main-top_0.1.jpg

pcb_bot_r: Fabrication/PCB/red/main-bottom_0.1.jpg

step: Fabrication/3D/main-3D_0.1.step

#
# Rules and dependencies
#

# ERC on following files: main.sch 
# ERC done against config.yaml
Fabrication/main-erc_0.1.txt: main.sch config.yaml
	@$(KIBOT_CMD) -s run_drc -i 1>> $(LOGFILE)

Fabrication/main-drc_0.1.txt: main.kicad_pcb config.yaml
	@$(KIBOT_CMD) -s run_erc -i 1>> $(LOGFILE)

# Gerbers compatible with Elecrow
Fabrication/Elecrow/main.GTL Fabrication/Elecrow/main.G1 Fabrication/Elecrow/main.G2 Fabrication/Elecrow/main.G3 Fabrication/Elecrow/main.G4 Fabrication/Elecrow/main.GBL Fabrication/Elecrow/main.GTO Fabrication/Elecrow/main.GBO Fabrication/Elecrow/main.GTS Fabrication/Elecrow/main.GBS Fabrication/Elecrow/main.GML: main.kicad_pcb config.yaml
	@$(KIBOT_CMD) -s all Elecrow_gerbers 1>> $(LOGFILE)

# Drill files compatible with Elecrow
Fabrication/Elecrow/main.TXT Fabrication/Elecrow/main-NPTH.TXT: main.kicad_pcb config.yaml
	@$(KIBOT_CMD) -s all Elecrow_drill 1>> $(LOGFILE)

# ZIP file for Elecrow
Fabrication/Elecrow/main-Elecrow_0.1.zip: config.yaml
	@$(KIBOT_CMD) -s all Elecrow 1>> $(LOGFILE)

# Gerbers compatible with FusionPCB
Fabrication/FusionPCB/main.GTL Fabrication/FusionPCB/main.GL2 Fabrication/FusionPCB/main.GL3 Fabrication/FusionPCB/main.GL4 Fabrication/FusionPCB/main.GL5 Fabrication/FusionPCB/main.GBL Fabrication/FusionPCB/main.GTO Fabrication/FusionPCB/main.GBO Fabrication/FusionPCB/main.GTS Fabrication/FusionPCB/main.GBS Fabrication/FusionPCB/main.GML: main.kicad_pcb config.yaml
	@$(KIBOT_CMD) -s all FusionPCB_gerbers 1>> $(LOGFILE)

# Drill files compatible with FusionPCB
Fabrication/FusionPCB/main.TXT: main.kicad_pcb config.yaml
	@$(KIBOT_CMD) -s all FusionPCB_drill 1>> $(LOGFILE)

# ZIP file for FusionPCB
Fabrication/FusionPCB/main-FusionPCB_0.1.zip: config.yaml
	@$(KIBOT_CMD) -s all FusionPCB 1>> $(LOGFILE)

# Gerbers compatible with JLCPCB
Fabrication/JLCPCB/main-F_Cu_0.1.gbr Fabrication/JLCPCB/main-B_Cu_0.1.gbr Fabrication/JLCPCB/main-In1_Cu_0.1.gbr Fabrication/JLCPCB/main-In2_Cu_0.1.gbr Fabrication/JLCPCB/main-In3_Cu_0.1.gbr Fabrication/JLCPCB/main-In4_Cu_0.1.gbr Fabrication/JLCPCB/main-F_SilkS_0.1.gbr Fabrication/JLCPCB/main-B_SilkS_0.1.gbr Fabrication/JLCPCB/main-F_Mask_0.1.gbr Fabrication/JLCPCB/main-B_Mask_0.1.gbr Fabrication/JLCPCB/main-Edge_Cuts_0.1.gbr: main.kicad_pcb config.yaml
	@$(KIBOT_CMD) -s all JLCPCB_gerbers 1>> $(LOGFILE)

# Drill files compatible with JLCPCB
Fabrication/JLCPCB/main-PTH.drl Fabrication/JLCPCB/main-NPTH.drl: main.kicad_pcb config.yaml
	@$(KIBOT_CMD) -s all JLCPCB_drill 1>> $(LOGFILE)

# ZIP file for JLCPCB
Fabrication/JLCPCB/main-JLCPCB_0.1.zip: config.yaml
	@$(KIBOT_CMD) -s all JLCPCB 1>> $(LOGFILE)

# Gerbers compatible with P-Ban
Fabrication/P-Ban/main-F_Cu_0.1.gtl Fabrication/P-Ban/main-B_Cu_0.1.gbl Fabrication/P-Ban/main-In1_Cu_0.1.gp1 Fabrication/P-Ban/main-In2_Cu_0.1.gp2 Fabrication/P-Ban/main-In3_Cu_0.1.gp3 Fabrication/P-Ban/main-In4_Cu_0.1.gp4 Fabrication/P-Ban/main-F_SilkS_0.1.gto Fabrication/P-Ban/main-B_SilkS_0.1.gbo Fabrication/P-Ban/main-F_Mask_0.1.gts Fabrication/P-Ban/main-B_Mask_0.1.gbs Fabrication/P-Ban/main-Edge_Cuts_0.1.gm1 Fabrication/P-Ban/製造基準書.txt: main.kicad_pcb config.yaml
	@$(KIBOT_CMD) -s all P-Ban_gerbers 1>> $(LOGFILE)

# Drill files compatible with P-Ban
Fabrication/P-Ban/main.drl Fabrication/P-Ban/main-drill_map_0.1.gbr Fabrication/P-Ban/main-drl.rpt: main.kicad_pcb config.yaml
	@$(KIBOT_CMD) -s all P-Ban_drill 1>> $(LOGFILE)

# ZIP file for P-Ban
Fabrication/P-Ban/main-P-Ban_0.1.zip: config.yaml
	@$(KIBOT_CMD) -s all P-Ban 1>> $(LOGFILE)

# Gerbers compatible with PCBWay
Fabrication/PCBWay/main.gtl Fabrication/PCBWay/main.gl2 Fabrication/PCBWay/main.gl3 Fabrication/PCBWay/main.gl4 Fabrication/PCBWay/main.gl5 Fabrication/PCBWay/main.gbl Fabrication/PCBWay/main.gto Fabrication/PCBWay/main.gbo Fabrication/PCBWay/main.gts Fabrication/PCBWay/main.gbs Fabrication/PCBWay/main.gtp Fabrication/PCBWay/main.gbp Fabrication/PCBWay/main.gm1: main.kicad_pcb config.yaml
	@$(KIBOT_CMD) -s all PCBWay_gerbers 1>> $(LOGFILE)

# Drill files compatible with PCBWay
Fabrication/PCBWay/main.drl Fabrication/PCBWay/main-NPTH.drl: main.kicad_pcb config.yaml
	@$(KIBOT_CMD) -s all PCBWay_drill 1>> $(LOGFILE)

# ZIP file for PCBWay
Fabrication/PCBWay/main-PCBWay_0.1.zip: config.yaml
	@$(KIBOT_CMD) -s all PCBWay 1>> $(LOGFILE)

# Print schematic (PDF)
Fabrication/main-schematic_0.1.pdf: main.sch config.yaml
	@$(KIBOT_CMD) -s all print_sch 1>> $(LOGFILE)

# Print F.Cu+Dwgs.User
Fabrication/main-F_Cu+Dwgs_User_0.1.pdf: main.kicad_pcb config.yaml
	@$(KIBOT_CMD) -s all print_front 1>> $(LOGFILE)

# Print B.Cu+Dwgs.User
Fabrication/main-B_Cu+Dwgs_User_0.1.pdf: main.kicad_pcb config.yaml
	@$(KIBOT_CMD) -s all print_bottom 1>> $(LOGFILE)

# Print GND+Dwgs.User
Fabrication/main-GND+Dwgs_User_0.1.pdf: main.kicad_pcb config.yaml
	@$(KIBOT_CMD) -s all print_gnd 1>> $(LOGFILE)

# Print Power_+3,3V+Dwgs.User
Fabrication/main-Power_+3,3V+Dwgs_User_0.1.pdf: main.kicad_pcb config.yaml
	@$(KIBOT_CMD) -s all print_power 1>> $(LOGFILE)

# Print Señal_1+Dwgs.User
Fabrication/main-S1_Cu+Dwgs_User_0.1.pdf: main.kicad_pcb config.yaml
	@$(KIBOT_CMD) -s all print_s1 1>> $(LOGFILE)

# Print Señal_2+Dwgs.User
Fabrication/main-S2_Cu+Dwgs_User_0.1.pdf: main.kicad_pcb config.yaml
	@$(KIBOT_CMD) -s all print_s2 1>> $(LOGFILE)

# Interactive Bill of Materials (HTML)
Fabrication/BoM/main-ibom_0.1.html: main.kicad_pcb config.yaml
	@$(KIBOT_CMD) -s all interactive_bom 1>> $(LOGFILE)

# Bill of Materials in HTML format
## Add additional .sch files here for export
Fabrication/BoM/main-bom_0.1.html: main.sch config.yaml
	@$(KIBOT_CMD) -s all bom_html 1>> $(LOGFILE)

# Bill of Materials in XLSX format
## Add additional .sch files here for export
Fabrication/BoM/main-bom_0.1.xlsx: main.sch config.yaml
	@$(KIBOT_CMD) -s all bom_xlsx 1>> $(LOGFILE)

# Bill of Materials in CSV format
## Add additional .sch files here for export
Fabrication/BoM/main-bom_0.1.csv: main.sch config.yaml
	@$(KIBOT_CMD) -s all bom_csv 1>> $(LOGFILE)

# Gerbers for the board house
Fabrication/Gerbers/main-F_Cu_0.1.gbr Fabrication/Gerbers/main-B_Cu_0.1.gbr Fabrication/Gerbers/main-GND_Cu_0.1.gbr Fabrication/Gerbers/main-Power_Cu_0.1.gbr Fabrication/Gerbers/main-S1_Cu_0.1.gbr Fabrication/Gerbers/main-S2_Cu_0.1.gbr Fabrication/Gerbers/main-F_Paste_0.1.gbr Fabrication/Gerbers/main-B_Paste_0.1.gbr Fabrication/Gerbers/main-F_SilkS_0.1.gbr Fabrication/Gerbers/main-B_SilkS_0.1.gbr Fabrication/Gerbers/main-F_Mask_0.1.gbr Fabrication/Gerbers/main-B_Mask_0.1.gbr Fabrication/Gerbers/main-Dwgs_User_0.1.gbr Fabrication/Gerbers/main-Edge_Cuts_0.1.gbr Fabrication/Gerbers/main-B_Fab_0.1.gbr Fabrication/Gerbers/main-job.gbrjob: main.kicad_pcb config.yaml
	@$(KIBOT_CMD) -s all gerbers 1>> $(LOGFILE)

# Excellon drill files
Fabrication/Drill/main-PTH_drill_0.1.drl Fabrication/Drill/main-PTH_drill_map_0.1.pdf Fabrication/Drill/main-NPTH_drill_0.1.drl Fabrication/Drill/main-NPTH_drill_map_0.1.pdf Fabrication/Drill/main-drl.rpt: main.kicad_pcb config.yaml
	@$(KIBOT_CMD) -s all excellon_drill 1>> $(LOGFILE)

# Gerber drill files
Fabrication/Drill/main-PTH_drill_0.1.gbr Fabrication/Drill/main-NPTH_drill_0.1.gbr: main.kicad_pcb config.yaml
	@$(KIBOT_CMD) -s all gerber_drills 1>> $(LOGFILE)

# Pick and place file
Fabrication/Position/main-top_pos_0.1.pos Fabrication/Position/main-bottom_pos_0.1.pos: main.kicad_pcb config.yaml
	@$(KIBOT_CMD) -s all position 1>> $(LOGFILE)

# PCB render top green
Fabrication/PCB/green/main-top_0.1.jpg: main.kicad_pcb config.yaml
	@$(KIBOT_CMD) -s all pcb_top_g 1>> $(LOGFILE)

# PCB render bottom green
Fabrication/PCB/green/main-bottom_0.1.jpg: main.kicad_pcb config.yaml
	@$(KIBOT_CMD) -s all pcb_bot_g 1>> $(LOGFILE)

# PCB render top blue
Fabrication/PCB/blue/main-top_0.1.jpg: main.kicad_pcb config.yaml
	@$(KIBOT_CMD) -s all pcb_top_b 1>> $(LOGFILE)

# PCB render bottom blue
Fabrication/PCB/blue/main-bottom_0.1.jpg: main.kicad_pcb config.yaml
	@$(KIBOT_CMD) -s all pcb_bot_b 1>> $(LOGFILE)

# PCB render top red
Fabrication/PCB/red/main-top_0.1.jpg: main.kicad_pcb config.yaml
	@$(KIBOT_CMD) -s all pcb_top_r 1>> $(LOGFILE)

# PCB render bottom red
Fabrication/PCB/red/main-bottom_0.1.jpg: main.kicad_pcb config.yaml
	@$(KIBOT_CMD) -s all pcb_bot_r 1>> $(LOGFILE)

# Generate 3D model (STEP)
Fabrication/3D/main-3D_0.1.step: main.kicad_pcb ../modelos.3dshapes/B3U_3000PB.wrl ../modelos.3dshapes/MPU-9250.wrl ../modelos.3dshapes/usb_B_micro_smd.wrl ../modelos.3dshapes/MCP73821.wrl ../modelos.3dshapes/c_0201.wrl ../modelos.3dshapes/c_0402.wrl ../modelos.3dshapes/LBCA2HNZYZ-711.wrl ../modelos.3dshapes/MKL03Z32CAF4R_20-WLCSP_1.995x1.609.wrl ../modelos.3dshapes/sod323.wrl ../modelos.3dshapes/TPS2115A.wrl ../modelos.3dshapes/ABS05-32.768KHZ-9-T.wrl ../modelos.3dshapes/r_0402.wrl ../modelos.3dshapes/SML-LX0404SIUPGUSB.wrl ../modelos.3dshapes/df12(3.0)-10dp-0.5v.wrl ../modelos.3dshapes/r_0201.wrl ../modelos.3dshapes/TPS82740B.wrl config.yaml
	@$(KIBOT_CMD) -s all step 1>> $(LOGFILE)

.PHONY: all pre_sch out_sch all_sch pre_pcb out_pcb all_pcb run_erc run_drc Elecrow_gerbers Elecrow_drill Elecrow FusionPCB_gerbers FusionPCB_drill FusionPCB JLCPCB_gerbers JLCPCB_drill JLCPCB P-Ban_gerbers P-Ban_drill P-Ban PCBWay_gerbers PCBWay_drill PCBWay print_sch print_front print_bottom print_gnd print_power print_s1 print_s2 interactive_bom bom_html bom_xlsx bom_csv gerbers excellon_drill gerber_drills position pcb_top_g pcb_bot_g pcb_top_b pcb_bot_b pcb_top_r pcb_bot_r step
