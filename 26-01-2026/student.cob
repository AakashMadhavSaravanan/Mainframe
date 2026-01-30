       IDENTIFICATION DIVISION.
       PROGRAM-ID. STUDENT.

       ENVIRONMENT DIVISION.
       INPUT-OUTPUT SECTION.
       FILE-CONTROL.
           SELECT STUD-IN ASSIGN TO "student_input.txt"
               ORGANIZATION IS LINE SEQUENTIAL.
           SELECT STUD-OUT ASSIGN TO "student_output.txt"
               ORGANIZATION IS LINE SEQUENTIAL.

       DATA DIVISION.
       FILE SECTION.
       FD STUD-IN.
       01 STUD-IN-REC.
           05 S-ID     PIC 9(5).
           05 S-NAME   PIC X(20).
           05 S-DEPT   PIC X(10).
           05 S-YEAR   PIC 9.
           05 S-MARKS  PIC 9(3).

       FD STUD-OUT.
       01 STUD-OUT-REC PIC X(80).

       WORKING-STORAGE SECTION.
       01 WS-EOF PIC X VALUE 'N'.

       PROCEDURE DIVISION.
       MAIN.
           OPEN INPUT STUD-IN
           OPEN OUTPUT STUD-OUT

           PERFORM UNTIL WS-EOF = 'Y'
               READ STUD-IN
                   AT END
                       MOVE 'Y' TO WS-EOF
                   NOT AT END
                       STRING
                           S-ID " "
                           S-NAME " "
                           S-DEPT " "
                           S-YEAR " "
                           S-MARKS
                           INTO STUD-OUT-REC
                       END-STRING
                       WRITE STUD-OUT-REC
               END-READ
           END-PERFORM

           CLOSE STUD-IN STUD-OUT
           STOP RUN.
