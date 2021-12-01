      * Purpose & Info
      *================
      * 1- Update YLIBUPPF after 2nd leg payments into ISA FTD accounts.
      *===================================================================
      * Devloped Date            :  29 Nov 2021
      * Devloped By              :  Ray Steller
      * Last Modfied Date        :
      *===================================================================
      *-------------------------------------------------------------------
      *H Change Control
      *H --------------
      *H Project     Programmer    Date         Level
      *H =======     ==========    ====         =====
      *H PJ0337      Ray Steller   29/11/21     A1     Created
      *
      *****************************************************************
     H DFTACTGRP(*NO)
      *---------------------------------------------------------------------
     FSA10LF    IF   E           K DISK
      * ---------------------------------------------------------------
      * ---------------------------------------------------------------
      * ---------------------------------------------------------------
     D#SAPFDS        E ds                  EXTNAME(SAPF)
     D LC              C                   'abcdefghijklmnopqrstuvwxyz'
     D UC              C                   'ABCDEFGHIJKLMNOPQRSTUVWXYZ'
      *
      /Copy QrpgCpySrc,DA_SYSCTL
      /Copy QrpgCpySrc,DA_JOBCTLE
      /Copy QrpgCpySrc,PR_UTM02C
      /Copy QrpgcpySrc,CONST_VAR1
      /Copy QrpgcpySrc,PR_Q02HSR

      * ---------------------------------------------------------------
      * ---------------------------------------------------------------
      * KLIST
      * ---------------------------------------------------------------
      * ---------------------------------------------------------------
      * Main Logic
      * ---------------------------------------------------------------
       In DAJOBCTLE;
       In DASYSCTL; //contains Today's date, £YesterdayCymd etc

       ExSR Main;
       *InLR = *On;

       Return;
       //-----------------------------------------------------------------------
          BegSR Main;
       //-----------------------------------------------------------------------

            ExSR BuidPostingCursor;                                                                
