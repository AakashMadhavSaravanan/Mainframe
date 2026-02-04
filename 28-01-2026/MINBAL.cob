       IDENTIFICATION DIVISION.
       PROGRAM-ID. MINBAL.

       DATA DIVISION.
       WORKING-STORAGE SECTION.
       01 BALANCE     PIC 9(6).
       01 MIN-BAL     PIC 9(6) VALUE 1000.

       PROCEDURE DIVISION.
           DISPLAY "ENTER ACCOUNT BALANCE: "
           ACCEPT BALANCE

           IF BALANCE >= MIN-BAL
              DISPLAY "Minimum balance maintained"
           ELSE
              DISPLAY "Minimum balance not maintained"
           END-IF

           STOP RUN.
