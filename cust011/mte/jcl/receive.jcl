//RECEIVE  JOB (124400000),'CUST011-R3',CLASS=A,
//             MSGCLASS=X,MSGLEVEL=(1,1),REGION=0M,NOTIFY=&SYSUID
//SMPEUCL  EXEC PGM=GIMSMP,REGION=0K,PARM='DATE=U'
//*
//SMPCSI   DD DISP=SHR,DSN=PRODUCT.SYSV15.SMPE11.CSI
//SMPPTFIN DD PATH='/u/users/cust011/SO07038'
//SMPLOG   DD SYSOUT=*
//SMPHOLD  DD DUMMY
//SMPCNTL  DD   *
  SET BOUNDARY(GLOBAL).
  RECEIVE
    SELECT(SO07038)
    FORFMID(CNM4F00)
    SYSMODS       .
/*
//
