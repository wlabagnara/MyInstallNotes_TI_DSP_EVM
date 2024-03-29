/*
 * udpHello.c
 *
 * This program implements a UDP echo server, which echos back any
 * input it receives.
 *
 * Copyright (C) 2007 Texas Instruments Incorporated - http://www.ti.com/ 
 * 
 * 
 *  Redistribution and use in source and binary forms, with or without 
 *  modification, are permitted provided that the following conditions 
 *  are met:
 *
 *    Redistributions of source code must retain the above copyright 
 *    notice, this list of conditions and the following disclaimer.
 *
 *    Redistributions in binary form must reproduce the above copyright
 *    notice, this list of conditions and the following disclaimer in the 
 *    documentation and/or other materials provided with the   
 *    distribution.
 *
 *    Neither the name of Texas Instruments Incorporated nor the names of
 *    its contributors may be used to endorse or promote products derived
 *    from this software without specific prior written permission.
 *
 *  THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS 
 *  "AS IS" AND ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT 
 *  LIMITED TO, THE IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR
 *  A PARTICULAR PURPOSE ARE DISCLAIMED. IN NO EVENT SHALL THE COPYRIGHT 
 *  OWNER OR CONTRIBUTORS BE LIABLE FOR ANY DIRECT, INDIRECT, INCIDENTAL, 
 *  SPECIAL, EXEMPLARY, OR CONSEQUENTIAL DAMAGES (INCLUDING, BUT NOT 
 *  LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES; LOSS OF USE,
 *  DATA, OR PROFITS; OR BUSINESS INTERRUPTION) HOWEVER CAUSED AND ON ANY
 *  THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY, OR TORT 
 *  (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE 
 *  OF THIS SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.
 *
*/

#include <stdio.h> /// @blab
#include <stdlib.h> /// @blab

#include <ti/ndk/inc/netmain.h>

#pragma DATA_SECTION(next, ".sharedVar")
#pragma DATA_ALIGN (next, 128)

typedef struct {
    uint32_t core;
    uint32_t count;
    float in1;
    float out1;
} Shared1_T;

typedef union {
    Shared1_T oShared1[8];
    uint8_t padding[128];
} n;

volatile n next;


//
// dtask_udp_hello() - UDP Echo Server Daemon Function
// (SOCK_DGRAM, port 7)
//
// Returns "1" if socket 's' is still open, and "0" if its been closed
//
int dtask_udp_hello( SOCKET s, uint32_t unused )
{
    struct sockaddr_in sin1;
    struct timeval     to;
    int                i,tmp;
    char               *pBuf;
    void*             hBuffer;

    static unsigned int rx_count = 0; /// @blab

    (void)unused;

    // Configure our socket timeout to be 3 seconds
    to.tv_sec  = 3;
    to.tv_usec = 0;
    setsockopt( s, SOL_SOCKET, SO_SNDTIMEO, &to, sizeof( to ) );
    setsockopt( s, SOL_SOCKET, SO_RCVTIMEO, &to, sizeof( to ) );

    for(;;)
    {
        tmp = sizeof( sin1 );
        char rxBuf[256] = {' '};
        float in1 = 0.0f;

        i = (int)recvncfrom( s, (void **)&pBuf, 0, (struct sockaddr *)&sin1, (int *)&tmp, &hBuffer );

        memcpy((void *) rxBuf, (void *) pBuf, i);
        //in1 = atof("700.0");
        in1 = atof(&rxBuf[17]); // in1 at fixed buffer location!

        next.oShared1[7].core = 7;
        next.oShared1[7].count = 999;
        next.oShared1[7].in1 = in1;

        // Spit any data back out
        if( i >= 0 )
        {
            printf("\rTargetRx %d: %s", rx_count++, rxBuf); // @blab
            fflush(stdout);
            sendto( s, pBuf, i, 0, (struct sockaddr *)&sin1, sizeof(sin1) );
            recvncfree( hBuffer );
        }
        else
            break;
    }

    // Since the socket is still open, return "1"
    // (we need to leave UDP sockets open)
    return(1);    
}


