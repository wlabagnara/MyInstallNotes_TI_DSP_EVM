################################################################################
# Automatically-generated file. Do not edit!
################################################################################

SHELL = cmd.exe

CG_TOOL_ROOT := C:/ti/ccs1120/ccs/tools/compiler/ti-cgt-c6000_8.3.12

GEN_OPTS__FLAG := --cmd_file="configPkg/compiler.opt" 
GEN_CMDS__FLAG := -l"configPkg/linker.cmd" 

ORDERED_OBJS += \
"./global-resource-list.obj" \
"./nimu_cppi_qmss_iface.obj" \
"./nimu_osal.obj" \
"./nimu_pa_iface.obj" \
"./policy_dsp-only.obj" \
"./setuprm.obj" \
"./src2/helloWorld.obj" \
"./src2/udpHello.obj" \
$(GEN_CMDS__FLAG) \
-llibc.a \

-include ../makefile.init

RM := DEL /F
RMDIR := RMDIR /S/Q

# All of the sources participating in the build are defined here
-include sources.mk
-include subdir_vars.mk
-include src2/subdir_vars.mk
-include subdir_rules.mk
-include src2/subdir_rules.mk
-include objects.mk

ifneq ($(MAKECMDGOALS),clean)
ifneq ($(strip $(C55_DEPS)),)
-include $(C55_DEPS)
endif
ifneq ($(strip $(C_UPPER_DEPS)),)
-include $(C_UPPER_DEPS)
endif
ifneq ($(strip $(S67_DEPS)),)
-include $(S67_DEPS)
endif
ifneq ($(strip $(S62_DEPS)),)
-include $(S62_DEPS)
endif
ifneq ($(strip $(S_DEPS)),)
-include $(S_DEPS)
endif
ifneq ($(strip $(OPT_DEPS)),)
-include $(OPT_DEPS)
endif
ifneq ($(strip $(C??_DEPS)),)
-include $(C??_DEPS)
endif
ifneq ($(strip $(ASM_UPPER_DEPS)),)
-include $(ASM_UPPER_DEPS)
endif
ifneq ($(strip $(S??_DEPS)),)
-include $(S??_DEPS)
endif
ifneq ($(strip $(C64_DEPS)),)
-include $(C64_DEPS)
endif
ifneq ($(strip $(CXX_DEPS)),)
-include $(CXX_DEPS)
endif
ifneq ($(strip $(S64_DEPS)),)
-include $(S64_DEPS)
endif
ifneq ($(strip $(INO_DEPS)),)
-include $(INO_DEPS)
endif
ifneq ($(strip $(CLA_DEPS)),)
-include $(CLA_DEPS)
endif
ifneq ($(strip $(S55_DEPS)),)
-include $(S55_DEPS)
endif
ifneq ($(strip $(SV7A_DEPS)),)
-include $(SV7A_DEPS)
endif
ifneq ($(strip $(C62_DEPS)),)
-include $(C62_DEPS)
endif
ifneq ($(strip $(C67_DEPS)),)
-include $(C67_DEPS)
endif
ifneq ($(strip $(PDE_DEPS)),)
-include $(PDE_DEPS)
endif
ifneq ($(strip $(K_DEPS)),)
-include $(K_DEPS)
endif
ifneq ($(strip $(C_DEPS)),)
-include $(C_DEPS)
endif
ifneq ($(strip $(CC_DEPS)),)
-include $(CC_DEPS)
endif
ifneq ($(strip $(C++_DEPS)),)
-include $(C++_DEPS)
endif
ifneq ($(strip $(C43_DEPS)),)
-include $(C43_DEPS)
endif
ifneq ($(strip $(S43_DEPS)),)
-include $(S43_DEPS)
endif
ifneq ($(strip $(ASM_DEPS)),)
-include $(ASM_DEPS)
endif
ifneq ($(strip $(S_UPPER_DEPS)),)
-include $(S_UPPER_DEPS)
endif
ifneq ($(strip $(CPP_DEPS)),)
-include $(CPP_DEPS)
endif
ifneq ($(strip $(SA_DEPS)),)
-include $(SA_DEPS)
endif
endif

-include ../makefile.defs

# Add inputs and outputs from these tool invocations to the build variables 
EXE_OUTPUTS += \
udpStack.out \

EXE_OUTPUTS__QUOTED += \
"udpStack.out" \

BIN_OUTPUTS += \
udpStack.hex \

BIN_OUTPUTS__QUOTED += \
"udpStack.hex" \


# All Target
all: $(OBJS) $(GEN_CMDS)
	@$(MAKE) --no-print-directory -Onone "udpStack.out"

# Tool invocations
udpStack.out: $(OBJS) $(GEN_CMDS)
	@echo 'Building target: "$@"'
	@echo 'Invoking: C6000 Linker'
	"C:/ti/ccs1120/ccs/tools/compiler/ti-cgt-c6000_8.3.12/bin/cl6x" -mv6600 --define=USE_BIOS --define=SOC_C6678 --define=DEVICE_C6678 -g --diag_suppress=1111 --diag_suppress=827 --diag_suppress=824 --diag_suppress=837 --diag_suppress=1037 --diag_suppress=195 --diag_suppress=77 --diag_suppress=232 --diag_warning=225 --diag_warning=994 --diag_warning=262 --diag_wrap=off --display_error_number -z -m"udpStack.map" -i"C:/ti/ccs1120/ccs/tools/compiler/ti-cgt-c6000_8.3.12/lib" -i"C:/ti/ccs1120/ccs/tools/compiler/ti-cgt-c6000_8.3.12/include" --reread_libs --diag_wrap=off --display_error_number --warn_sections --xml_link_info="udpStack_linkInfo.xml" --rom_model -o "udpStack.out" $(ORDERED_OBJS)
	@echo 'Finished building target: "$@"'
	@echo ' '
	@$(MAKE) --no-print-directory post-build

udpStack.hex: $(EXE_OUTPUTS)
	@echo 'Building secondary target: "$@"'
	@echo 'Invoking: C6000 Hex Utility'
	"C:/ti/ccs1120/ccs/tools/compiler/ti-cgt-c6000_8.3.12/bin/hex6x" --diag_wrap=off -o "udpStack.hex" $(EXE_OUTPUTS__QUOTED)
	@echo 'Finished building secondary target: "$@"'
	@echo ' '
	@$(MAKE) --no-print-directory post-build

# Other Targets
clean:
	-$(RM) $(BIN_OUTPUTS__QUOTED)$(GEN_FILES__QUOTED)$(EXE_OUTPUTS__QUOTED)
	-$(RM) "global-resource-list.obj" "nimu_cppi_qmss_iface.obj" "nimu_osal.obj" "nimu_pa_iface.obj" "policy_dsp-only.obj" "setuprm.obj" "src2\helloWorld.obj" "src2\udpHello.obj" 
	-$(RM) "global-resource-list.d" "nimu_cppi_qmss_iface.d" "nimu_osal.d" "nimu_pa_iface.d" "policy_dsp-only.d" "setuprm.d" "src2\helloWorld.d" "src2\udpHello.d" 
	-$(RMDIR) $(GEN_MISC_DIRS__QUOTED)
	-@echo 'Finished clean'
	-@echo ' '

post-build:
	-C:/ti/pdk_c667x_2_0_16/packages/pdkAppImageCreate.bat C:/ti/pdk_c667x_2_0_16/packages C:/ti/ccs1120/ccs/tools/compiler/ti-cgt-c6000_8.3.12 C:/Projects/udpStack/ws_ccs11/udpStack/Debug udpStack C6678 dsp
	-@echo ' '

.PHONY: all clean dependents
.SECONDARY:

-include ../makefile.targets

