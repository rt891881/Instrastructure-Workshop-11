       IDENTIFICATION DIVISION.                                                 
       PROGRAM-ID. FAPCOB99.                                                    
      ******************************************************************        
      *REMARKS.  BATCH COBOL PROGRAM.                                           
      *          USE PROCESSOR COBNBL.                                          
      *          TAKRO01   2020/04/28 VER 5.                                    
      *          DELETE COMMENT and SPLIT FILLER                          
      ******************************************************************        
       ENVIRONMENT DIVISION.                                                    
       INPUT-OUTPUT SECTION.                                                    
       FILE-CONTROL.                                                            
       DATA DIVISION.                                                           
      ******************************************************************        
       WORKING-STORAGE SECTION.                                                 
      ******************************************************************        
       COPY FAPHDR.                                                             
       01  PROGRAM-WORK-FIELDS.                                                 
           02  INPUT-SWITCH      PIC X(3).                                      
               88  END-OF-FILE   VALUE 'EOF'.                                   
           02  LINES-WRITTEN     PIC 9(3).                                      
               88  NEW-PAGE      VALUE 31.                                      
           02  PAGE-COUNT        PIC 9(3).                                      
       COPY FAPPAGE.                                                            
       01  DATA-LINE.                                                           
           02  FILLER                PIC X(5).                                  
           02  OUTPUT-FIELD1         PIC ZZ,ZZZ,ZZ9.                            
           02  FILLER                PIC X(5).                                  
           02  OUTPUT-FIELD2         PIC X(10).                                 
           02  FILLER                PIC X(5).                                  
           02  OUTPUT-FIELD3         PIC X(20).                                 
           02  FILLER                PIC X(5).                                  
           02  OUTPUT-FIELD4         PIC ZZZ,ZZ9.                               
           02  FILLER                PIC X(5).                                  
           02  OUTPUT-FIELD5         PIC ZZZ,ZZ9.                               
           02  FILLER                PIC X(5).                                  
           02  OUTPUT-TOTAL          PIC ZZZ,ZZZ,ZZZ,ZZZ,Z99.                                        
      *     02  FILLER                PIC X(10).                     
           02  FILLER                PIC X(5).                     
           02  FILLER                PIC X(5).                                 
      ******************************************************************        
       PROCEDURE DIVISION.                                                      
      ******************************************************************        
           GOBACK.                                                              
