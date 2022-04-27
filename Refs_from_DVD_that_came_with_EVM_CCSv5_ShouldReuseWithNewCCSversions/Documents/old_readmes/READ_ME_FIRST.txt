*******************************************************************************
**  Texas Instruments
**  TMx320C66xx DSP EVM 
**  README_FIRST file
**
**  November 13, 2012
*******************************************************************************


*******************************************************************************
README Table of Contents
*******************************************************************************

I.      Introduction and the Quick Start Guide
II.     DVD Contents
III.    Installing Code Composer Studio (CCS)
IV.     Installing SYS/BIOS Multicore Software Development Kit(BIOS-MCSDK)
V.      Installing Linux Multicore Software Development Kit (Linux-MCSDK)
VI.     Restoring Factory Images 


*******************************************************************************
I.     Introduction
*******************************************************************************

Congratulations!

You have purchased a High Performance, Multicore DSP EValuation Module (EVM)
for the TMS3206657, TMS320C6670 or TMS320C6678 device. This DVD contains both the 
SYS/BIOS and Linux Multicore Software Development Kits for those platforms.

If you have not done so, you should follow the directions in the Section III of this 
Read me. This will walk you through installing the USB driver properly and running 
the Out of Box demonstration programs. Once that is complete you can proceed to 
Section IV or V of this Read Me.


*******************************************************************************
II.     DVD Contents
*******************************************************************************
This DVD contains the following:

-------------------------------------------------------------------------------
Directory                       Contents
-------------------------------------------------------------------------------
BIOS-MCSDK_2.1.2.5     SYS/BIOS MCSDK installer, Release Notes,
                                Getting Started Guide and Software Manifest.

Linux-MCSDK            Linux MCSDK, Release Notes,
                                User's Guide and Software Manifest.

CCS_5.2.1              Texas Instruments Code Composer Studio and
                                Release Notes for both Windows and Linux.

program_evm            Factory images and tools in case you need to restore
                                the EEPROM, NAND, and NOR to the state they
                                were when you first received the EVM.

drivers                Contains the XDS100 USB drivers and install to be used with 
                                the Quick Start Guide.

TMDXEVM6657L_HW_Docs   Contains the hardware documentation for TMDSEVM6657LS.								

TMDXEVM6670L_HW_Docs   Contains the hardware documentation for TMDXEVM6670L.

TMDXEVM6678L_HW_Docs   Contains the hardware documentation for TMDXEVM6678L.

TMDSEVM6657LS_Quick_Setup_Guide.pdf         Contains the quick setup guide for TMDSEVM6657LS.

TMDSEVM6670L_EVM_Quick_Start_Guide.pdf      Contains the quick setup guide for TMDXEVM6670L.

TMDSEVM6678L_EVM_Quick_Start_Guide.pdf      Contains the quick setup guide for TMDXEVM6678L.

READ_ME_FIRST.txt      This document.

*******************************************************************************
III.   EVM Quick Start Demo 
*******************************************************************************
To quickly start the EVM please follow the instructions here.
 
1. Perform DVD driver installation by running \drivers\USB_COM_Driver.exe BEFORE plugging in the USB cable or powering up the EVM.
2. Follow the remaining instructions in the Quick Setup Guide.  

*******************************************************************************
         
*******************************************************************************
IV.    Code Composer Studio 
*******************************************************************************
To install please read the release notes in the CCS_5.2.1 directory and follow the instructions here.
 
1. Install CCS, the installers are under CCS_5.2.1/CCS5.2.1.00018_linux(_win32)
2. Copy file CCS_5.2.1/TIXDS2XXUSB_onboard_Connection.xml to the directory your_CCS_install_dir/ccsv5/ccs_base/common/targetdb/connections
3. Make sure the CCS is closed
4. Make sure the emulation is not connected
5. install ti_emupack_5.0.838.0
6. Install ti_emupack_keystone1_1.0.6.0 for the appropriate platforms 


*******************************************************************************
V.    SYS/BIOS Multicore Software Development Kit
*******************************************************************************
To get set up and start using SYS/BIOS MCSDK please refer to the Release 
Notes and Getting Started Guide in the BIOS-MCSDK folder. You should install Code Composer Studio
before installing SYS/BIOS MCSDK.

This version of BIOS-MCSDK uses a newer version of the C6000 Code Generation Tools than
the one provided from CCS. Please grab the corresponding version as listed in the BIOS-MCSDK
Release Notes from the following website:
https://www-a.ti.com/downloads/sds_support/TICodegenerationTools/download.htm

Note: If you install BIOS-MCSDK outside of its default directory (c:\ti or $HOME/ti), the RTSC 
paths for some of the module packages might be broken. If so, the project's properties will
need to be updated to point to your installation location.

*******************************************************************************
VI.  Linux Multicore Software Development Kit
*******************************************************************************
To get setup and start using the Linux MCSDK please refer to the Release Notes  
and the Users Guide  in the Linux-MCSDK directory.


*******************************************************************************
VII.   Restoring Factory Images 
*******************************************************************************
Please refer to the program_evm_userguide.pdf document for details.

