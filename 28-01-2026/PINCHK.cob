       IDENTIFICATION DIVISION.
       PROGRAM-ID. PINCHK.

       DATA DIVISION.
       WORKING-STORAGE SECTION.
       01 STORED-PIN   PIC 9(4) VALUE 1234.
       01 ENTERED-PIN  PIC 9(4).

       PROCEDURE DIVISION.
           DISPLAY "ENTER PIN: "
           ACCEPT ENTERED-PIN

           IF ENTERED-PIN = STORED-PIN
              DISPLAY "Access Granted"
           ELSE
              DISPLAY "Access Denied"
           END-IF

           STOP RUN.
