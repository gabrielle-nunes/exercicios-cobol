       IDENTIFICATION DIVISION.
       PROGRAM-ID. CAIXA.
      *************************
      *EEEE
      *EEEE
      *************************
       ENVIRONMENT DIVISION.
       DATA DIVISION.
       WORKING-STORAGE SECTION.
       77 WRK-SAQUE PIC 9(6) VALUES ZEROS.
       77 WRK-TOTAL-NOTAS-50 PIC 9(6) VALUES ZEROS.
       77 WRK-TOTAL-NOTAS-10 PIC 9(6) VALUES ZEROS.

       PROCEDURE DIVISION.


           DISPLAY 'DIGITE O VALOR DO SAQUE: '.
           ACCEPT WRK-SAQUE.







           DISPLAY 'VALOR DO SAQUE: ' WRK-SAQUE.


           STOP RUN.
