       IDENTIFICATION DIVISION.
       PROGRAM-ID. NOME.
      *******************************
      *AREA DE COMENTARIOS - REMARKS
      *AUTHOR = GABRIELLE NUNES
      *OBJETIVO: RECEBER E IMPRIMIR UMA STRING
      *DATA = 23/08/2021
      *******************************
       ENVIRONMENT DIVISION.
       DATA DIVISION.
       WORKING-STORAGE SECTION.
       77 WRK-NOME PIC X(20) VALUE SPACES.
       PROCEDURE DIVISION.
           ACCEPT WRK-NOME FROM CONSOLE.
           DISPLAY 'Nome:' WRK-NOME(1:6).
           STOP RUN.