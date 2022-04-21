/*
 * led_play.c
 *
 *  Created on: Apr 21, 2022
 *      Author: wlaba
 */


// #include <cerrno>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <ti/sysbios/BIOS.h>
#include <ti/sysbios/hal/Hwi.h>
#include <ti/bios/include/swi.h>
#include "ti\platform\platform.h"
#include "ti\platform\resource_mgr.h"


/* OSAL functions for Platform Library */ uint8_t
*Osal_platformMalloc (uint32_t num_bytes, uint32_t alignment) {
 return malloc(num_bytes);
}

void Osal_platformFree (uint8_t *dataPtr, uint32_t num_bytes) {
 /* Free up the memory */
 if (dataPtr)
 {
 free(dataPtr);
 }
}

void Osal_platformSpiCsEnter(void) {
 /* Get the hardware semaphore.
 *
 * Acquire Multi core CPPI synchronization lock
 */
 while ((CSL_semAcquireDirect (PLATFORM_SPI_HW_SEM)) == 0);
return;
}

void Osal_platformSpiCsExit (void) {
 /* Release the hardware semaphore
 *
 * Release multi-core lock.
 */
 CSL_semReleaseSemaphore (PLATFORM_SPI_HW_SEM);
return;
}

/*************************************************************************
* main()
* Entry point for the application.
************************************************************************/
int main() {
 /* Start the BIOS 6 Scheduler - it will kick off our main thread ledPlayTask() */
 platform_write("Start BIOS 6\n");
BIOS_start();
}

/*************************************************************************
* EVM_init()
* Initializes the platform hardware. This routine is configured to start in
* the evm.cfg configuration file. It is the first routine that BIOS
* calls and is executed before Main is called. If you are debugging within
* CCS the default option in your target configuration file may be to execute
* all code up until Main as the image loads. To debug this you should disable
* that option.
************************************************************************/
void EVM_init() {
 platform_init_flags sFlags;
 platform_init_config sConfig;
 int32_t pform_status;
 /* Initialize the UART */
 platform_uart_init();
 platform_uart_set_baudrate(115200);
 (void) platform_write_configure(PLATFORM_WRITE_ALL);
 /*
  * You can choose what to initialize on the platform by setting the following
  * flags. Things like the DDR, PLL, etc should have been set by the boot loader.
  */
  memset( (void *) &sFlags, 0, sizeof(platform_init_flags));
  memset( (void *) &sConfig, 0, sizeof(platform_init_config));
  sFlags.pll = 0; /* PLLs for clocking */
  sFlags.ddr = 0; /* External memory */
  sFlags.tcsl = 1; /* Time stamp counter */
  sFlags.phy = 0; /* Ethernet */
  sFlags.ecc = 0; /* Memory ECC */
  sConfig.pllm = 0; /* Use libraries default clock divisor */
  pform_status = platform_init(&sFlags, &sConfig);
  /* If we initialized the platform okay */
  if (pform_status != Platform_EOK) {
  /* Initialization of the platform failed... die */
  platform_write("Platform failed to initialize. Error code %d \n", pform_status);
  platform_write("We will die in an infinite loop... \n");
  while (1) {
  (void) platform_led(1, PLATFORM_LED_ON, PLATFORM_USER_LED_CLASS);
  (void) platform_delay(50000);
  (void) platform_led(1, PLATFORM_LED_OFF, PLATFORM_USER_LED_CLASS);
  (void) platform_delay(50000);
  }
  }
 return;
 }

/*************************************************************************
* ledPlayTask()
*
* This is the main task for the example. It will write send text
* messages to both the console and the UART using platform_write and then
* twinkle the LEDs. This task is configured to start in led_play.cfg
* configuration file and it is called from BIOS.
*
************************************************************************/
int ledPlayTask (void) {
 platform_info p_info;
 uint32_t led_no = 0;
 /* Get information about the platform */
 platform_get_info(&p_info);
 platform_write("Lets twinkle some LED's\n");
/* Play forever */
 while(1) {
 platform_led(led_no, PLATFORM_LED_ON, PLATFORM_USER_LED_CLASS);
 platform_delay(30000);
 platform_led(led_no, PLATFORM_LED_OFF, PLATFORM_USER_LED_CLASS);
 led_no = (++led_no) % p_info.led[PLATFORM_USER_LED_CLASS].count;
 }
}

