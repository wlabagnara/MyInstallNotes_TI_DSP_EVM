################################################################################
# Automatically-generated file. Do not edit!
################################################################################

SHELL = cmd.exe

# Each subdirectory must supply rules for building sources it contributes
src2/helloWorld.obj: C:/Projects/udpStack/src2/helloWorld.c $(GEN_OPTS) | $(GEN_FILES) $(GEN_MISC_FILES)
	@echo 'Building file: "$<"'
	@echo 'Invoking: C6000 Compiler'
	"C:/ti/ccs1120/ccs/tools/compiler/ti-cgt-c6000_8.3.12/bin/cl6x" -mv6600 --include_path="C:/Projects/udpStack/ws_ccs11/udpStack" --include_path="C:/ti/pdk_c667x_2_0_16/packages/ti/transport/ndk/nimu" --include_path="C:/ti/pdk_c667x_2_0_16/packages" --include_path="{NDK_INSTALL_DIR}/packages" --include_path="C:/ti/ccs1120/ccs/tools/compiler/ti-cgt-c6000_8.3.12/include" --define=USE_BIOS --define=SOC_C6678 --define=DEVICE_C6678 -g --diag_suppress=1111 --diag_suppress=827 --diag_suppress=824 --diag_suppress=837 --diag_suppress=1037 --diag_suppress=195 --diag_suppress=77 --diag_suppress=232 --diag_warning=225 --diag_warning=994 --diag_warning=262 --diag_wrap=off --display_error_number --preproc_with_compile --preproc_dependency="src2/$(basename $(<F)).d_raw" --obj_directory="src2" $(GEN_OPTS__FLAG) "$<"
	@echo 'Finished building: "$<"'
	@echo ' '

src2/udpHello.obj: C:/Projects/udpStack/src2/udpHello.c $(GEN_OPTS) | $(GEN_FILES) $(GEN_MISC_FILES)
	@echo 'Building file: "$<"'
	@echo 'Invoking: C6000 Compiler'
	"C:/ti/ccs1120/ccs/tools/compiler/ti-cgt-c6000_8.3.12/bin/cl6x" -mv6600 --include_path="C:/Projects/udpStack/ws_ccs11/udpStack" --include_path="C:/ti/pdk_c667x_2_0_16/packages/ti/transport/ndk/nimu" --include_path="C:/ti/pdk_c667x_2_0_16/packages" --include_path="{NDK_INSTALL_DIR}/packages" --include_path="C:/ti/ccs1120/ccs/tools/compiler/ti-cgt-c6000_8.3.12/include" --define=USE_BIOS --define=SOC_C6678 --define=DEVICE_C6678 -g --diag_suppress=1111 --diag_suppress=827 --diag_suppress=824 --diag_suppress=837 --diag_suppress=1037 --diag_suppress=195 --diag_suppress=77 --diag_suppress=232 --diag_warning=225 --diag_warning=994 --diag_warning=262 --diag_wrap=off --display_error_number --preproc_with_compile --preproc_dependency="src2/$(basename $(<F)).d_raw" --obj_directory="src2" $(GEN_OPTS__FLAG) "$<"
	@echo 'Finished building: "$<"'
	@echo ' '


