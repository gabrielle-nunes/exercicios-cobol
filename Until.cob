       IDENTIFICATION DIVISION.
       PROGRAM-ID. PERFORM-TIMES.
      *******************************
      *AREA DE COMENTARIOS - REMARKS
      *AUTHOR = GABRIELLE NUNES
      *OBJETIVO: ESTUDAR O COMPORTAMENTO DO COPY.
      *DATA = 26/08/2021
      *******************************
       ENVIRONMENT DIVISION.
       CONFIGURATION SECTION.
       SPECIAL-NAMES.
           DECIMAL-POINT IS COMMA.

       DATA DIVISION.
       WORKING-STORAGE SECTION.
           COPY'BOOK.COB'.

       PROCEDURE DIVISION.
       0001-PRINCIPAL.
           PERFORM 0100-INICIALIZAR.
           IF WRK-VENDAS > 0
               PERFORM 0200-PROCESSAR UNTIL WRK-VENDAS = 0
           END-IF.
           PERFORM 0300-FINALIZAR.

           STOP RUN.

       0100-INICIALIZAR.
           ACCEPT WRK-VENDAS.

       0200-PROCESSAR.
           ADD 1 TO WRK-QTVENDAS.
           ADD WRK-VENDAS TO WRK-TOTAL.
           ACCEPT WRK-VENDAS.
           MOVE WRK-TOTAL TO WRK-TOTAL-ED.

       0300-FINALIZAR.
           DISPLAY '---------------------------'
           DISPLAY 'TOTAL EM REAIS DAS VENDAS: ' WRK-TOTAL-ED.
           DISPLAY 'TOTAL DE VENDAS INSERIDAS: ' WRK-QTVENDAS.
           DISPLAY 'FINAL DE PROCESSAMENTO.'.