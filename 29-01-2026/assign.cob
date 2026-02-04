       IDENTIFICATION DIVISION.
       PROGRAM-ID. SERIESMENU.

       DATA DIVISION.
       WORKING-STORAGE SECTION.
       01 CHOICE        PIC 9.
       01 N             PIC 99.
       01 I             PIC 99.
       01 J             PIC 99.
       01 DIV-COUNT     PIC 99.
       01 A             PIC 99 VALUE 0.
       01 B             PIC 99 VALUE 1.
       01 C             PIC 99.

       PROCEDURE DIVISION.
       MAIN-PARA.
           DISPLAY "=============================="
           DISPLAY " MENU-DRIVEN SERIES GENERATOR "
           DISPLAY "=============================="
           DISPLAY "1. Generate Fibonacci "
           DISPLAY "2. Generate Prime "
           DISPLAY "3. Generate Even & Odd"
           DISPLAY "4. Exit"
           DISPLAY "Enter your choice: "
           ACCEPT CHOICE

           IF CHOICE = 1
               DISPLAY "Enter number of terms: "
               ACCEPT N

               MOVE 0 TO A
               MOVE 1 TO B

               DISPLAY A
               DISPLAY B

               PERFORM VARYING I FROM 3 BY 1 UNTIL I > N
                   COMPUTE C = A + B
                   DISPLAY C
                   MOVE B TO A
                   MOVE C TO B
               END-PERFORM

           ELSE IF CHOICE = 2
               DISPLAY "Enter N: "
               ACCEPT N

               PERFORM VARYING I FROM 2 BY 1 UNTIL I > N
                   MOVE 0 TO DIV-COUNT

                   PERFORM VARYING J FROM 1 BY 1 UNTIL J > I
                       IF FUNCTION MOD(I, J) = 0
                           ADD 1 TO DIV-COUNT
                       END-IF
                   END-PERFORM

                   IF DIV-COUNT = 2
                       DISPLAY I
                   END-IF
               END-PERFORM

           ELSE IF CHOICE = 3
               DISPLAY "Enter N: "
               ACCEPT N

               PERFORM VARYING I FROM 1 BY 1 UNTIL I > N
                   IF FUNCTION MOD(I, 2) = 0
                       DISPLAY I " EVEN"
                   ELSE
                       DISPLAY I " ODD"
                   END-IF
               END-PERFORM

           ELSE IF CHOICE = 4
               DISPLAY "Exiting Program..."

           ELSE
               DISPLAY "Invalid Choice"
           END-IF

           STOP RUN.
