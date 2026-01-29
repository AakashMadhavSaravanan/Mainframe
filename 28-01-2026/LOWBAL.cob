       IDENTIFICATION DIVISION.
       PROGRAM-ID. LOWBAL.

       DATA DIVISION.
       WORKING-STORAGE SECTION.
       01 BALANCE   PIC 9(6).
       01 MIN-BAL   PIC 9(6) VALUE 1000.

       PROCEDURE DIVISION.
           DISPLAY "ENTER ACCOUNT BALANCE: "
           ACCEPT BALANCE

           IF BALANCE < MIN-BAL
              DISPLAY "Warning: Low balance"
           ELSE
              DISPLAY "Balance sufficient"
           END-IF

           STOP RUN.
