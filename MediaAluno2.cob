       IDENTIFICATION DIVISION.
       PROGRAM-ID. MEDIA-ALUNO-2.
      *******************************
      *AREA DE COMENTARIOS - REMARKS
      *AUTHOR = GABRIELLE NUNES
      *OBJETIVO: RECEBER 02 NOTAS, MEDIA E IMPRIMIR
      *UTILIZAR EVALUATE
      *DATA = 25/08/2021
      *******************************
       ENVIRONMENT DIVISION.
       CONFIGURATION SECTION.
       SPECIAL-NAMES.
           DECIMAL-POINT IS COMMA.
       DATA DIVISION.
       WORKING-STORAGE SECTION.
       77 WRK-NOTA1 PIC 9(02)  VALUE ZEROS.
       77 WRK-NOTA2 PIC 9(02)  VALUE ZEROS.
       77 WRK-MEDIA PIC 9(02)V9  VALUE ZEROS.

       PROCEDURE DIVISION.
           ACCEPT WRK-NOTA1.
           ACCEPT WRK-NOTA2.
            COMPUTE WRK-MEDIA = (WRK-NOTA1 + WRK-NOTA2) / 2.
              EVALUATE WRK-MEDIA
               WHEN 10
                    DISPLAY 'APROVADO - BONUS'
               WHEN 6 THRU 9,9
                    DISPLAY 'APROVADO'
               WHEN 2 THRU 5,9
                   DISPLAY 'RECUPERACAO'
               WHEN OTHER
                   DISPLAY 'REPROVADO'
               END-EVALUATE.

           DISPLAY 'MEDIA:  ' WRK-MEDIA.
            STOP RUN.
