       IDENTIFICATION DIVISION.
       PROGRAM-ID. ARRAYS.
      *******************************
      *AREA DE COMENTARIOS - REMARKS
      *AUTHOR = GABRIELLE NUNES
      *OBJETIVO: RECEBER E IMPRIMIR UMA DATA DO SISTEMA
      *UTILIZAR VARIAVEIS TIPO TABELA -OCCURS (ARRAY)
      *DATA = 26/08/2021
      *******************************
       ENVIRONMENT DIVISION.
       DATA DIVISION.
       WORKING-STORAGE SECTION.
       01 WRK-MESES.
           02 WRK-MES PIC X(09) OCCURS 12 TIMES.
       01 WRK-DATASISTEMA.
           02 WRK-ANOSISTEMA PIC 9(04) VALUE ZEROS.
           02 WRK-MESSISTEMA PIC 9(02) VALUE ZEROS.
           02 WRK-DIASISTEMA PIC 9(02) VALUE ZEROS.

       PROCEDURE DIVISION.
           ACCEPT WRK-DATASISTEMA FROM DATE YYYYMMDD.
           PERFORM 0100-MONTAMES.
           DISPLAY 'DATA: ' WRK-DIASISTEMA ' DE '
           WRK-MES (WRK-MESSISTEMA) 'DE ' WRK-ANOSISTEMA.

           STOP RUN.

       0100-MONTAMES.
           MOVE 'JANEIRO'   TO WRK-MES(01).
           MOVE 'FEVEREIRO' TO WRK-MES(02).
           MOVE 'MARCO'     TO WRK-MES(03).
           MOVE 'ABRIL'     TO WRK-MES(04).
           MOVE 'MAIO'      TO WRK-MES(05).
           MOVE 'JUNHO'     TO WRK-MES(06).
           MOVE 'JULHO'     TO WRK-MES(07).
           MOVE 'AGOSTO'    TO WRK-MES(08).
           MOVE 'SETEMBRO'  TO WRK-MES(09).
           MOVE 'OUTUBRO'   TO WRK-MES(10).
           MOVE 'NOVEMBRO'  TO WRK-MES(11).
           MOVE 'DEZEMBRO'  TO WRK-MES(12).
