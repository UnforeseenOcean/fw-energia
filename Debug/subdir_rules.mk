################################################################################
# Automatically-generated file. Do not edit!
################################################################################

SHELL = cmd.exe

# Each subdirectory must supply rules for building sources it contributes
build-182883825:
	@$(MAKE) --no-print-directory -Onone -f subdir_rules.mk build-182883825-inproc

build-182883825-inproc: ../iowine-fw.ino
	@echo 'Building file: "$<"'
	@echo 'Invoking: Resource Custom Build Step'
	
	@echo 'Finished building: "$<"'
	@echo ' '

iowine-fw.cpp: build-182883825 ../iowine-fw.ino
main.cpp: build-182883825

%.o: ./%.cpp $(GEN_OPTS) | $(GEN_HDRS)
	@echo 'Building file: "$<"'
	@echo 'Invoking: GNU Compiler'
	"C:/Users/Andriux/AppData/Local/Energia15/packages/energia/tools/arm-none-eabi-gcc/6.3.1-20170620/bin/arm-none-eabi-gcc.exe" -c -mcpu=cortex-m4 -march=armv7e-m -mthumb -mfloat-abi=soft -Dxdc_target_types__=gnu/targets/arm/std.h -Dxdc_target_name__=M4F -Dxdc_cfg__xheader__=\"configPkg/package/cfg/energia_pm4g.h\" -Dxdc__nolocalstring=1 -DBOARD_CC3220SF_LAUNCHXL -DF_CPU=80000000L -DENERGIA_CC3220SF_LAUNCHXL -DENERGIA_ARCH_CC3220EMT -DSL_PLATFORM_MULTI_THREADED -DENERGIA=18 -DARDUINO=10610 -I"C:/Users/Andriux/AppData/Local/Energia15/packages/energia/hardware/cc3220emt/5.6.2/cores/cc3220emt/ti/runtime/wiring/" -I"C:/Users/Andriux/AppData/Local/Energia15/packages/energia/hardware/cc3220emt/5.6.2/cores/cc3220emt/ti/runtime/wiring/cc32xx" -I"C:/Users/Andriux/AppData/Local/Energia15/packages/energia/hardware/cc3220emt/5.6.2/system/kernel/tirtos/packages/ti/sysbios/posix" -I"C:/Users/Andriux/AppData/Local/Energia15/packages/energia/hardware/cc3220emt/5.6.2/system/kernel/tirtos/packages" -I"C:/Users/Andriux/AppData/Local/Energia15/packages/energia/hardware/cc3220emt/5.6.2/system/source" -I"C:/Users/Andriux/AppData/Local/Energia15/packages/energia/hardware/cc3220emt/5.6.2/system/energia" -I"C:/Users/Andriux/AppData/Local/Energia15/packages/energia/hardware/cc3220emt/5.6.2/system/source/ti/devices/cc32xx/driverlib" -I"C:/Users/Andriux/AppData/Local/Energia15/packages/energia/hardware/cc3220emt/5.6.2/system/source/ti/devices/cc32xx/inc" -I"C:/Users/Andriux/AppData/Local/Energia15/packages/energia/hardware/cc3220emt/5.6.2/system/source/ti/devices/cc32xx/" -I"C:/Users/Andriux/AppData/Local/Energia15/packages/energia/hardware/cc3220emt/5.6.2/cores/cc3220emt" -I"C:/Users/Andriux/AppData/Local/Energia15/packages/energia/hardware/cc3220emt/5.6.2/variants/CC3220SF_LAUNCHXL" -I"C:/git/fw-energia" -I"C:/Users/Andriux/AppData/Local/Energia15/packages/energia/tools/arm-none-eabi-gcc/6.3.1-20170620/arm-none-eabi/include" -Os -ffunction-sections -fdata-sections -g -gdwarf-3 -gstrict-dwarf -w -Wall -mabi=aapcs -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)"  -fno-rtti -fno-threadsafe-statics -fno-exceptions $(GEN_OPTS__FLAG) -o"$@" "$<"
	@echo 'Finished building: "$<"'
	@echo ' '


