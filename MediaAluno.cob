       IDENTIFICATION DIVISION.
       PROGRAM-ID. MEDIA-ALUNO.
      *******************************
      *AREA DE COMENTARIOS - REMARKS
      *AUTHOR = GABRIELLE NUNES
      *OBJETIVO: RECEBER 02 NOTAS, MEDIA E IMPRIMIR
      *UTILIZAR COMANDOS IF/ELSE/ENDIF
      *DATA = 25/08/2021
      *******************************
       ENVIRONMENT DIVISION.
       DATA DIVISION.
       WORKING-STORAGE SECTION.
       77 WRK-NOTA1 PIC 9(02)  VALUE ZEROS.
       77 WRK-NOTA2 PIC 9(02)  VALUE ZEROS.
       77 WRK-MEDIA PIC 9(02)V9  VALUE ZEROS.

       PROCEDURE DIVISION.
           ACCEPT WRK-NOTA1.
           ACCEPT WRK-NOTA2.
            COMPUTE WRK-MEDIA = (WRK-NOTA1 + WRK-NOTA2) / 2.

              IF WRK-MEDIA >= 6
                    DISPLAY 'APROVADO'
              ELSE
               IF WRK-MEDIA >= 2
                   DISPLAY 'RECUPERACAO'
               ELSE
                   DISPLAY 'REPROVADO'
               END-IF
              END-IF.

           DISPLAY 'MEDIA:  ' WRK-MEDIA.
            STOP RUN.
