# Algoritimo-de-Djikstra

O algoritmo de Djikstra com duas pilhas para cálculo de expressões aritméticas.
Este algoritmo possui os seguintes passos:
- Crie duas pilhas, uma para valores e outra para expressões
- Percorra cada caracter da expressão da seguinte forma:
  - Se o caracter for um (, não faça nada.
  - Se o caracter for um operador, empilhe na pilha de operadores
  - Se o caracter for um valor, empilhe na pilha de valores.
  - Se o caracter for um ), desempilhe um operador e dois valores, aplique o operador a estes valores e empilhe o resultado (na pilha de valores)
