algoritmo "Primeiro Programa"

var
  volume: real
  pico: caractere
  turbinas: inteiro

inicio

  escreva("Volume do reservatorio (%): ")
  leia(volume)

  escreva("Horario de pico S/N: ")
  leia(pico)

  se (volume < 20) entao
    turbinas <- 0
    escreval("Status: Critico")
    escreval("Turbinas ativas: " , turbinas)
  senao
    se ((volume >= 20) e (volume <= 50)) entao
      se (pico = "S") entao
        turbinas <- 1
      senao
        turbinas <- 0
        escreval("Status: Operação Moderada")
        escreval("Turbinas ativas: " , turbinas)
      fimse
    senao
      se ((volume > 50) e (volume <= 80)) entao
        se (pico = "S") entao
          turbinas <- 2
        senao
          turbinas <- 1
          escreval("Status: Operacao Plena")
          escreval("Turbinas ativas: " , turbinas)
        fimse
      senao
        turbinas <- 3
        escreval("Status: Vazao Maxima")
        escreval("Turbinas ativas: " , turbinas)
      fimse
    fimse
  fimse

fimalgoritmo
