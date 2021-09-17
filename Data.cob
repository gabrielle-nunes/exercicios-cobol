       IDENTIFICATION DIVISION.
       PROGRAM-ID. DATA-SISTEMA.
      *******************************
      *AREA DE COMENTARIOS - REMARKS
      *AUTHOR = GABRIELLE NUNES
      *OBJETIVO: RECEBER E IMPRIMIR UMA DATA DO SISTEMA
      *UTILIZAR VARIAVEIS NIVEL 01, 02...(ESTRUTURADA)
      *DATA = 23/08/2021
      *******************************
       ENVIRONMENT DIVISION.
       DATA DIVISION.
       WORKING-STORAGE SECTION.
       01 WRK-DATA.
           02 WRK-ANO PIC 9(04) VALUE ZEROS.
           02 WRK-MES PIC 9(02) VALUE ZEROS.
           02 WRK-DIA PIC 9(02) VALUE ZEROS.
       PROCEDURE DIVISION.
           ACCEPT WRK-DATA FROM DATE YYYYMMDD.
           DISPLAY 'DATA: ' WRK-DIA ' DE ' WRK-MES ' DE ' WRK-ANO.
           STOP RUN.