       IDENTIFICATION DIVISION.
       PROGRAM-ID. PARAGRAFO.
      *******************************
      *AREA DE COMENTARIOS - REMARKS
      *AUTHOR = GABRIELLE NUNES
      *OBJETIVO: PARAGRAFO E LOGICA ESTRUTURADA
      *DATA = 25/08/2021
      *******************************
       ENVIRONMENT DIVISION.
       DATA DIVISION.
       WORKING-STORAGE SECTION.
       77 WRK-NOTA1 PIC 9(02)  VALUE ZEROS.
       77 WRK-NOTA2 PIC 9(02)  VALUE ZEROS.
       77 WRK-MEDIA PIC 9(02)V9  VALUE ZEROS.

       PROCEDURE DIVISION.
       0001-PRINCIPAL.
           PERFORM 0100-INICIALIZAR.
           IF WRK-NOTA1 > 0 AND WRK-NOTA2 > 0
               PERFORM 0200-PROCESSAR
           END-IF.
           PERFORM 0300-FINALIZAR.

           STOP RUN.

       0100-INICIALIZAR.
           ACCEPT WRK-NOTA1.
           ACCEPT WRK-NOTA2.

       0200-PROCESSAR.
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

       0300-FINALIZAR.
           DISPLAY '---------------------------'
           DISPLAY 'FINAL DE PROCESSAMENTO.'.
