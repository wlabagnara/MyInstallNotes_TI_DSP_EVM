################################################################################
# Automatically-generated file. Do not edit!
################################################################################

SHELL = cmd.exe

# Each subdirectory must supply rules for building sources it contributes
global-resource-list.obj: C:/ti/pdk_c667x_2_0_16/packages/ti/drv/rm/device/c6678/global-resource-list.c $(GEN_OPTS) | $(GEN_FILES) $(GEN_MISC_FILES)
	@echo 'Building file: "$<"'
	@echo 'Invoking: C6000 Compiler'
	"C:/ti/ccs1120/ccs/tools/compiler/ti-cgt-c6000_8.3.12/bin/cl6x" -mv6600 --include_path="C:/Projects/udpStack/ws_ccs11/udpStack" --include_path="C:/ti/pdk_c667x_2_0_16/packages/ti/transport/ndk/nimu" --include_path="C:/ti/pdk_c667x_2_0_16/packages" --include_path="{NDK_INSTALL_DIR}/packages" --include_path="C:/ti/ccs1120/ccs/tools/compiler/ti-cgt-c6000_8.3.12/include" --define=USE_BIOS --define=SOC_C6678 --define=DEVICE_C6678 -g --diag_suppress=1111 --diag_suppress=827 --diag_suppress=824 --diag_suppress=837 --diag_suppress=1037 --diag_suppress=195 --diag_suppress=77 --diag_suppress=232 --diag_warning=225 --diag_warning=994 --diag_warning=262 --diag_wrap=off --display_error_number --preproc_with_compile --preproc_dependency="$(basename $(<F)).d_raw" $(GEN_OPTS__FLAG) "$<"
	@echo 'Finished building: "$<"'
	@echo ' '

nimu_cppi_qmss_iface.obj: C:/ti/pdk_c667x_2_0_16/packages/ti/transport/ndk/nimu/example/helloWorld/src/nimu_cppi_qmss_iface.c $(GEN_OPTS) | $(GEN_FILES) $(GEN_MISC_FILES)
	@echo 'Building file: "$<"'
	@echo 'Invoking: C6000 Compiler'
	"C:/ti/ccs1120/ccs/tools/compiler/ti-cgt-c6000_8.3.12/bin/cl6x" -mv6600 --include_path="C:/Projects/udpStack/ws_ccs11/udpStack" --include_path="C:/ti/pdk_c667x_2_0_16/packages/ti/transport/ndk/nimu" --include_path="C:/ti/pdk_c667x_2_0_16/packages" --include_path="{NDK_INSTALL_DIR}/packages" --include_path="C:/ti/ccs1120/ccs/tools/compiler/ti-cgt-c6000_8.3.12/include" --define=USE_BIOS --define=SOC_C6678 --define=DEVICE_C6678 -g --diag_suppress=1111 --diag_suppress=827 --diag_suppress=824 --diag_suppress=837 --diag_suppress=1037 --diag_suppress=195 --diag_suppress=77 --diag_suppress=232 --diag_warning=225 --diag_warning=994 --diag_warning=262 --diag_wrap=off --display_error_number --preproc_with_compile --preproc_dependency="$(basename $(<F)).d_raw" $(GEN_OPTS__FLAG) "$<"
	@echo 'Finished building: "$<"'
	@echo ' '

nimu_osal.obj: C:/ti/pdk_c667x_2_0_16/packages/ti/transport/ndk/nimu/example/helloWorld/src/nimu_osal.c $(GEN_OPTS) | $(GEN_FILES) $(GEN_MISC_FILES)
	@echo 'Building file: "$<"'
	@echo 'Invoking: C6000 Compiler'
	"C:/ti/ccs1120/ccs/tools/compiler/ti-cgt-c6000_8.3.12/bin/cl6x" -mv6600 --include_path="C:/Projects/udpStack/ws_ccs11/udpStack" --include_path="C:/ti/pdk_c667x_2_0_16/packages/ti/transport/ndk/nimu" --include_path="C:/ti/pdk_c667x_2_0_16/packages" --include_path="{NDK_INSTALL_DIR}/packages" --include_path="C:/ti/ccs1120/ccs/tools/compiler/ti-cgt-c6000_8.3.12/include" --define=USE_BIOS --define=SOC_C6678 --define=DEVICE_C6678 -g --diag_suppress=1111 --diag_suppress=827 --diag_suppress=824 --diag_suppress=837 --diag_suppress=1037 --diag_suppress=195 --diag_suppress=77 --diag_suppress=232 --diag_warning=225 --diag_warning=994 --diag_warning=262 --diag_wrap=off --display_error_number --preproc_with_compile --preproc_dependency="$(basename $(<F)).d_raw" $(GEN_OPTS__FLAG) "$<"
	@echo 'Finished building: "$<"'
	@echo ' '

nimu_pa_iface.obj: C:/ti/pdk_c667x_2_0_16/packages/ti/transport/ndk/nimu/example/helloWorld/src/nimu_pa_iface.c $(GEN_OPTS) | $(GEN_FILES) $(GEN_MISC_FILES)
	@echo 'Building file: "$<"'
	@echo 'Invoking: C6000 Compiler'
	"C:/ti/ccs1120/ccs/tools/compiler/ti-cgt-c6000_8.3.12/bin/cl6x" -mv6600 --include_path="C:/Projects/udpStack/ws_ccs11/udpStack" --include_path="C:/ti/pdk_c667x_2_0_16/packages/ti/transport/ndk/nimu" --include_path="C:/ti/pdk_c667x_2_0_16/packages" --include_path="{NDK_INSTALL_DIR}/packages" --include_path="C:/ti/ccs1120/ccs/tools/compiler/ti-cgt-c6000_8.3.12/include" --define=USE_BIOS --define=SOC_C6678 --define=DEVICE_C6678 -g --diag_suppress=1111 --diag_suppress=827 --diag_suppress=824 --diag_suppress=837 --diag_suppress=1037 --diag_suppress=195 --diag_suppress=77 --diag_suppress=232 --diag_warning=225 --diag_warning=994 --diag_warning=262 --diag_wrap=off --display_error_number --preproc_with_compile --preproc_dependency="$(basename $(<F)).d_raw" $(GEN_OPTS__FLAG) "$<"
	@echo 'Finished building: "$<"'
	@echo ' '

policy_dsp-only.obj: C:/ti/pdk_c667x_2_0_16/packages/ti/drv/rm/device/c6678/policy_dsp-only.c $(GEN_OPTS) | $(GEN_FILES) $(GEN_MISC_FILES)
	@echo 'Building file: "$<"'
	@echo 'Invoking: C6000 Compiler'
	"C:/ti/ccs1120/ccs/tools/compiler/ti-cgt-c6000_8.3.12/bin/cl6x" -mv6600 --include_path="C:/Projects/udpStack/ws_ccs11/udpStack" --include_path="C:/ti/pdk_c667x_2_0_16/packages/ti/transport/ndk/nimu" --include_path="C:/ti/pdk_c667x_2_0_16/packages" --include_path="{NDK_INSTALL_DIR}/packages" --include_path="C:/ti/ccs1120/ccs/tools/compiler/ti-cgt-c6000_8.3.12/include" --define=USE_BIOS --define=SOC_C6678 --define=DEVICE_C6678 -g --diag_suppress=1111 --diag_suppress=827 --diag_suppress=824 --diag_suppress=837 --diag_suppress=1037 --diag_suppress=195 --diag_suppress=77 --diag_suppress=232 --diag_warning=225 --diag_warning=994 --diag_warning=262 --diag_wrap=off --display_error_number --preproc_with_compile --preproc_dependency="$(basename $(<F)).d_raw" $(GEN_OPTS__FLAG) "$<"
	@echo 'Finished building: "$<"'
	@echo ' '

setuprm.obj: C:/ti/pdk_c667x_2_0_16/packages/ti/transport/ndk/nimu/example/helloWorld/src/setuprm.c $(GEN_OPTS) | $(GEN_FILES) $(GEN_MISC_FILES)
	@echo 'Building file: "$<"'
	@echo 'Invoking: C6000 Compiler'
	"C:/ti/ccs1120/ccs/tools/compiler/ti-cgt-c6000_8.3.12/bin/cl6x" -mv6600 --include_path="C:/Projects/udpStack/ws_ccs11/udpStack" --include_path="C:/ti/pdk_c667x_2_0_16/packages/ti/transport/ndk/nimu" --include_path="C:/ti/pdk_c667x_2_0_16/packages" --include_path="{NDK_INSTALL_DIR}/packages" --include_path="C:/ti/ccs1120/ccs/tools/compiler/ti-cgt-c6000_8.3.12/include" --define=USE_BIOS --define=SOC_C6678 --define=DEVICE_C6678 -g --diag_suppress=1111 --diag_suppress=827 --diag_suppress=824 --diag_suppress=837 --diag_suppress=1037 --diag_suppress=195 --diag_suppress=77 --diag_suppress=232 --diag_warning=225 --diag_warning=994 --diag_warning=262 --diag_wrap=off --display_error_number --preproc_with_compile --preproc_dependency="$(basename $(<F)).d_raw" $(GEN_OPTS__FLAG) "$<"
	@echo 'Finished building: "$<"'
	@echo ' '

build-1431120239:
	@$(MAKE) --no-print-directory -Onone -f subdir_rules.mk build-1431120239-inproc

build-1431120239-inproc: ../udpStack.cfg
	@echo 'Building file: "$<"'
	@echo 'Invoking: XDCtools'
	"C:/ti/ccs1120/xdctools_3_62_01_16_core/xs" --xdcpath="C:/ti/bios_6_76_03_01/packages;C:/ti/pdk_c667x_2_0_16/packages;C:/ti/edma3_lld_2_12_05_30E/packages;C:/ti/ipc_3_50_04_08/packages;C:/ti/ndk_3_61_01_01/packages;C:/ti/uia_2_30_01_02/packages;C:/ti/bios_6_76_03_01/packages/ti/posix/ccs;" xdc.tools.configuro -o configPkg -t ti.targets.elf.C66 -p ti.platforms.evm6678 -r debug -c "C:/ti/ccs1120/ccs/tools/compiler/ti-cgt-c6000_8.3.12" "$<"
	@echo 'Finished building: "$<"'
	@echo ' '

configPkg/linker.cmd: build-1431120239 ../udpStack.cfg
configPkg/compiler.opt: build-1431120239
configPkg/: build-1431120239


