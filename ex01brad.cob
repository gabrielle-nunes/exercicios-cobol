       IDENTIFICATION DIVISION.
       PROGRAM-ID. CAIXA.
      *************************
      *EEEE
      *EEEE
      *************************
       ENVIRONMENT DIVISION.
       DATA DIVISION.
       WORKING-STORAGE SECTION.
       77 WRK-NOTA PIC 9(2) VALUES ZEROS.
       77 WRK-NUMNOTA PIC 9(5) VALUES ZEROS.
       77 WRK-CONDICIONAL PIC 9(1) VALUES ZEROS.
       77 WRK-TOTAL PIC 9(6) VALUES ZEROS.
       77 WRK-SAQUE PIC 9(6) VALUES ZEROS.

       PROCEDURE DIVISION.
           DISPLAY 'DIGITE O VALOR DO SAQUE: '.
           ACCEPT WRK-SAQUE FROM CONSOLE.
           MOVE WRK-SAQUE TO WRK-TOTAL.

           PERFORM UNTIL WRK-CONDICIONAL EQUALS 0
           EVALUATE WRK-SAQUE
               IF WRK-TOTAL >= WRK-NOTA
                  SUBTRACT WRK-TOTAL FROM WRK-NOTA GIVING WRK-TOTAL
                  ADD 1 TO WRK-NUMNOTA
               ELSE
                   DISPLAY 'VOCE RECEBERA' WRK-NUMNOTA ' NOTAS DE R$'
                   WRK-NOTA

               WHEN 50
                   WRK-NOTA VALUES 10
                   WRK-NUMNOTA VALUES 0

               WHEN 10
                   WRK-NOTA VALUES 5
                   WRK-NUMNOTA VALUES 0

               WHEN 5
                   WRK-NOTA VALUES 1
                   WRK-NUMNOTA VALUES 0

               WHEN 1
                   WRK-CONDICIONAL VALUES 1
           END-IF
           END-EVALUATE
           END-PERFORM.
       STOP RUN.
