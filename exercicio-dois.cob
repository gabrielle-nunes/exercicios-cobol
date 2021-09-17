       IDENTIFICATION DIVISION.
       PROGRAM-ID. SALARIO.
      *************************
      *EEEE
      *EEEE
      *************************
       ENVIRONMENT DIVISION.
       CONFIGURATION SECTION.
       SPECIAL-NAMES.
           DECIMAL-POINT IS COMMA.
       DATA DIVISION.
       WORKING-STORAGE SECTION.

       77 WRK-SALARIO-BRUTO      PIC 9(7)V99     VALUE ZEROS.
       77 WRK-SALARIO-BRUTO-ED   PIC $ZZZ.ZZ9,99 VALUE ZEROS.
       77 WRK-SALARIO-LIQUIDO    PIC 9(7)V99     VALUE ZEROS.
       77 WRK-SALARIO-LIQUIDO-ED PIC 9(7)V99     VALUE ZEROS.
       77 WRK-SALARIO-FINAL      PIC 9(7)V99     VALUE ZEROS.
       77 WRK-SALARIO-TOTAL      PIC 9(7)V99     VALUE ZEROS.
       77 WRK-VALOR-EXTRA        PIC 9(7)V99     VALUE ZEROS.
       77 WRK-HORAS-TRABALHADAS  PIC 9(3)        VALUE ZEROS.
       77 WRK-HORAS-EXTRAS       PIC 9(3)        VALUE ZEROS.
       77 WRK-CONTROLE           PIC 9(1)        VALUE ZEROS.
       77 WRK-RESUL              PIC 9(9)        VALUE ZEROS.

       PROCEDURE DIVISION.
       PERFORM 0100-INICIALIZAR.

       0100-INICIALIZAR.
           DISPLAY 'INSIRA SEU SALARIO BRUTO: '.
           ACCEPT WRK-SALARIO-BRUTO.
           DISPLAY 'INSIRA SUAS HORAS TRABALHADAS NO MES: '.
           ACCEPT WRK-HORAS-TRABALHADAS.

       0200-PROCESSAR.
           IF (WRK-SALARIO-BRUTO > 0 AND WRK-HORAS-TRABALHADAS >= 0
               AND (WRK-HORAS-TRABALHADAS < 720)
               WRK-CONTROLE = 1
               IF WRK-SALARIO-BRUTO < 800
                   MOVE WRK-SALARIO-LIQUIDO TO WRK-SALARIO-BRUTO
               END-IF

           IF WRK-SALARIO-BRUTO >= 800 AND WRK-SALARIO-BRUTO <= 1600
               MULTIPLY WRK-SALARIO-BRUTO BY 0,13
               GIVING WRK-SALARIO-FINAL
               SUBTRACT WRK-SALARIO-BRUTO FROM WRK-SALARIO-FINAL
               GIVING WRK-SALARIO-LIQUIDO
           END-IF

           IF WRK-SALARIO-BRUTO > 1600
               MULTIPLY WRK-SALARIO-BRUTO BY 0,22
               GIVING WRK-SALARIO-FINAL
               SUBTRACT WRK-SALARIO-BRUTO FROM WRK-SALARIO-FINAL
               GIVING WRK-SALARIO-LIQUIDO
           END-IF

           IF WRK-HORAS-TRABALHADAS <= 160
               DISPLAY 'VOCE NAO TEM HORAS EXTRAS.'
               ELSE
               SUBTRACT 160 FROM WRK-HORAS-TRABALHADAS
               GIVING WRK-HORAS-EXTRAS
           END-IF


           IF WRK-HORAS-EXTRAS > 0
               DIVIDE WRK-SALARIO-BRUTO BY 160 GIVING WRK-RESUL
               MULTIPLY WRK-RESUL BY WRK-HORAS-EXTRAS
               GIVING WRK-RESUL
               MOVE WRK-RESUL TO WRK-VALOR-EXTRA
               COMPUTE WRK-RESUL = (WRK-VALOR-EXTRA + WRK-VALOR-EXTRA)
               * 0,5
               MOVE WRK-RESUL TO WRK-VALOR-EXTRA
           END-IF

           END-IF.

       0300-FINALIZAR.

           DISPLAY 'SEU SALARIO LIQUIDO: ' WRK-SALARIO-LIQUIDO
           DISPLAY 'ADICIONAL DE HORAS EXTRAS: ' WRK-VALOR-EXTRA
           ADD WRK-SALARIO-LIQUIDO WRK-VALOR-EXTRA TO WRK-SALARIO-TOTAL
           DISPLAY 'SEU SALARIO FINAL: ' WRK-SALARIO-TOTAL

           STOP RUN.
