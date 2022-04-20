If you are using a full compressed image of CCSv5.2.1:

    On Windows, double-click on CCS_5.2.1.xxxxx_win32.zip
        1. On the menu bar, go to Actions -> Extract
        2. Select the directory where you wish to extract the files
        3. Select all of the following:
            a. "All files/folders in archive"
            b. Overwrite existing files
            c. De-select the following:
            d. Open Explorer Window
            e. Skip older files
        4. Click on Extract
        Note: If you are using McAfee, your installation may hang.  Instead, use the offline installer 
	or disable the McAfee firewall. McAfee will allow you disable it for a period of time. 
	60min should be enough to complete the installation. 

    On Linux, untar CCS_5.2.1.xxxxx_linux.tar.gz and extract all files
           If installing from DVD on Linux, you need to either mount the DVD with execute permissions first, 
           or copy the files off the DVD to a local drive and change permissions there to run the installer. 


Once extraction has successfully completed, proceed with the installation steps below.


To install Code Composer Studio

    On Windows:
        1. Run ccs_setup_5.2.1.xxxxx.exe 
        2. Choose where you want to install 
        3. Select the components you wish to install 
    On Linux:
        1. Run ccs_setup_5.2.1.xxxxx.bin 
        2. Choose where you want to install 
        3. Select the components you wish to install 
        * Note: To facilitate the installation of emulation drivers, it is necessary to run part of the installation process as root.  
             You may either run the whole install as root, or install the drivers after CCS installation has completed.  
         	If you decide to not run the whole CCS installation as root, you can navigate to the <Install-Folder>/ccsv5/install_scripts folder, 
          	and run the “install_drivers.sh” script as root. 

