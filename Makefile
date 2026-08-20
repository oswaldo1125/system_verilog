#============= variables flecsibles para nominar la carpeta y el modulo ===========
MODULE     ?=half_adder
MODULE_DIR ?=half-adder

#============ directorios del los archivos RTL y TB ==============================
RTL_SRC = HW/$(MODULE_DIR)/$(MODULE).sv
TB_SRC  = TB/$(MODULE_DIR)/tb_$(MODULE).sv

TOP_TB    = tb_$(MODULE)
SNAPSHOT  = $(MODULE)_sim
BUILD_DIR = sim_build

$(BUILD_DIR):
	mkdir -p $(BUILD_DIR)

compile: $(BUILD_DIR)
	cd $(BUILD_DIR) && xvlog -sv $(addprefix ../,$(RTL_SRC) $(TB_SRC))

elaborate: compile
	cd $(BUILD_DIR) && xelab $(TOP_TB) -s $(SNAPSHOT) -debug typical

run: elaborate
	cd $(BUILD_DIR) && xsim -R $(SNAPSHOT)

clean: 
	rm -rf $(BUILD_DIR)
