



NOTES: 
=====

As of 4/26/2022 - Installing CCSv11.2

As of 4/20/2022 - Installing CCSv9.3
	- Based on this link: https://www.ti.com/tool/PROCESSOR-SDK-C667X#downloads
		The following version compatibility was ~inferred:  
			- CCSv9.3.0 and SDKv6.3.0.106 (see screenshot file)
			- But, maybe I didn't need SDK, just needed BIOS_MCSDK?
			- BIOS_MCSDK version? - use 'BIOS-MCSDK_2.1.2.5' that came on DVD with EVM? 
				- Did find BIOS-MCSDK_2.1.2.6 downloads (latest version Feb-27-2013):
					- https://www.ti.com/tool/BIOSLINUXMCSDK#downloads
					- also shows ti_emupack_keystone1 download (same version that was on DVD - 1.0.6.0!)
					- but do not see ti_emupack_5.0.838.0 that was on DVD on online.
				- Could I have installed latest/greatest CCS version (v11.x)?
					- then ti_emupack_5.0.838.0, ti_emupack_keystone1_1.0.6.0,
					- then BIOS-MCSDK_2.1.2.6 (plus its patch?)

1. Install /drivers/USB_COM_Driver.exe 

2. Follow 'remaining' instructions in the 'Quick Setup Guide' (TMDSEVM6678L_EVM_Quick_Start_Guide.pdf ?)

3. Install CCSv9.3.0 ---> C:\ti\ccs930 (CCSv11.2 ---> C:\ti\ccs1120)
	a. Use offline installer (or they recommend to disable McAfee!)
	b. Create/select installation folder of 'C\ti\ccs930'
	c. Choose 'Custom' install
	d. Select 'C6000 DSPs' (during 'choose ISA' option)
	e. Finish installation, but do not launch CCS yet!
	f. Note, Reference 'BiosMulticoreSDK_2.1_GettingStartedGuide.pdf' has an
		install CCSv5 section that is a little useful but not CCS930 specific at all.

4. Make sure CCS is closed and emulator/board is not connected

5. Emulator support files, copy from EVM DVD...
	a. Copy file 'TIXDS2XXUSB_onboard_Connection.xml' 
		to the directory '~\ti\ccs930\ccs_base\common\targetdb\connections' (existed for CCSv11.20 and not the same, I will NOT replace for now!)
	b. Copy (replace?) file 'evmc6678l.gel' to (in?) '\ti\ccs930\ccs\ccs_base\emulation\boards\evmc6678l\gel'. (existed for CCSv11.2 and binary same so no replace.)

6. Install ti_emupack_5.0.838.0 (can be installed 'on top of' CCS baseline release)  --> ~\ti\ccs<version>\ccs_base\
	a. ~\ti\ccsv5\ccs_base\ was for CCSv5
	b. ~\ti\ccs930\ccs\ccs_base is the way it was for CCSv9.30 (and CCSv11.20)

7. Install ti_emupack_keystone1_1.0.6.0 (can be installed 'on top of' CCS baseline release) --> ~\ti\ccs<version>\ccs_base\

8. Install BIOS_MCSDK_<version?>
	a. The BiosMulticoreSDK Getting Started Guide shows install it under CCS version, eg. ~\ti\ccsv5\
		I installed it under ~\ti\  (oh well, CCS930 seemed to have discovered it okay)
	b. See screenshots of BIOS_MCSDK installation/wizard steps.

9. C6000 Code Generation Tools (CGT) update needed?
	a. README on DVD has this statement and link...
	
" This version of BIOS-MCSDK uses a newer version of the C6000 Code Generation Tools than
the one provided from CCS. Please grab the corresponding version as listed in the BIOS-MCSDK
Release Notes from the following website:
https://www-a.ti.com/downloads/sds_support/TICodegenerationTools/download.htm "

	b. Also, page 10 of 'BiosMulticoreSDK_2.1_GettingStartedGuide.pdf' has "Instruction to Add Compiler Path"
		step that looks consistent with above comment.  
		
	c. However, a, b above was around CCSv5 time-frame, could this still be true for CCS930? (i.e. - step no longer needed?)
	d. I think it is no longer needed, because there is a "ti-cgt-c6000_8.3.12" folder already under ~\ti\
		so if anything, try having CCS discover/point-to the 8.3.2 version of CGT, right? (see steps 10d-e to follow)
		
10. Launching CCS
	a. Reference 'BiosMulticoreSDK_2.1_GettingStartedGuide.pdf' starting on page 9 was useful,
		it is CCSv5 specific but the 'discovery' process was relevant for CCS930.
	b. For example, pages 10-12, the steps for "Windows-->Preferences" under "CCS/Build/Compilers" and "CCS/RTSC/Products" 
	c. Pages 12-16, sections for "Use JTAG to Load the Application", "Loading and Setting up the EVM with the Gel file" and
		"Running the Demonstration Application" were very useful!
	d. Based on above step 9a-d: should just 'point to' ti-cgt-c6000_8.3.12 and avoid old CCSv5 CGT 'update' steps?!?!
	e. One more point, On my system,
		1. I did go ahead and install '~\ti\compilers\C6000_CGT_741' so I could have CCS point to that and test it out
		2. Under my CCSv5 install, I see '~\ti\ccsv5\tools\compiler\c6000_7.3.4' - which is the one they suggest 'not to use'
		3. And as mentioned, I think CCS930 'brought in' '~\ti\ccs930\ccs\tools\compiler\ti-cgt-c6000_8.3.12' and
			'~\ti\ccs930\ccs\tools\compiler\ti-cgt-c6000_8.3.5' 
		
		
		
	
	
	








