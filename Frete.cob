       IDENTIFICATION DIVISION.
       PROGRAM-ID. FRETE.
      *******************************
      *AREA DE COMENTARIOS - REMARKS
      *AUTHOR = GABRIELLE NUNES
      *OBJETIVO: RECEBER PRODUTO, VALOR E CALCULAR FRETE
      *UTILIZAR EVALUATE
      *DATA = 26/08/2021
      *******************************
       ENVIRONMENT DIVISION.
       CONFIGURATION SECTION.
       SPECIAL-NAMES.
           DECIMAL-POINT IS COMMA.

       DATA DIVISION.

       WORKING-STORAGE SECTION.

       77 WRK-PRODUTO       PIC X(20)     VALUE SPACES.
       77 WRK-UF            PIC X(02)     VALUE SPACES.
       77 WRK-VALOR-PRODUTO PIC 9(06)V99  VALUE ZEROS.
       77 WRK-FRETE         PIC 9(04)V99  VALUE ZEROS.

       PROCEDURE DIVISION.
           DISPLAY 'PRODUTO:  '
           ACCEPT WRK-PRODUTO.

           DISPLAY 'VALOR DO PRODUTO:  '
           ACCEPT WRK-VALOR-PRODUTO.

           DISPLAY 'ESTADO DA ENTREGA:  '
           ACCEPT WRK-UF.

           EVALUATE WRK-UF
               WHEN 'SP'
                   COMPUTE WRK-FRETE = WRK-VALOR-PRODUTO * 1,05
               WHEN 'RJ'
                   COMPUTE WRK-FRETE = WRK-VALOR-PRODUTO * 1,10
               WHEN 'MG'
                   COMPUTE WRK-FRETE = WRK-VALOR-PRODUTO * 1,15
               WHEN OTHER
                   DISPLAY 'ESTADO NAO FAZ PARTE DA AREA DE ENTREGA.'
           END-EVALUATE.

               DISPLAY '=============================='
                IF WRK-FRETE NOT EQUAL 0
               DISPLAY 'VALOR DO FRETE COM O PRODUTO: ' WRK-FRETE
                END-IF.
            STOP RUN.
