//APPLY    JOB (124400000),'CUST011-R3',CLASS=A,
//             MSGCLASS=X,MSGLEVEL=(1,1),REGION=0M,NOTIFY=&SYSUID
//SMPEUCL  EXEC PGM=GIMSMP,REGION=0K,PARM='DATE=U'
//*
//SMPCSI   DD DISP=SHR,DSN=PRODUCT.SYSV15.SMPE11.CSI
//SMPLOG   DD SYSOUT=*
//SMPHOLD  DD DUMMY
//SMPCNTL  DD   *
 SET BOUNDARY(CAIT).
   APPLY
     REDO
     SELECT(SO07038)
     BYPASS(HOLDSYSTEM(DOC,RESTART))
         GROUP .
/*
//
