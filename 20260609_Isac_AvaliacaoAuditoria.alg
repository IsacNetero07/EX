algoritmo "Avaliação"

var 
    vm, pt, imposto, multa, frete, valortotalrs: real
    pais, si, destino: caractere

inicio

    escreval("Digite o valor original da mercadoria em (dólares):")
    leia(vm)
    escreval("Digite o peso total do lote em (KG):")
    leia(pt)
    escreval("Digite o pais de origem E para EUA, C para China ou O para Outros:")
    leia(pais)
    escreval("Digite o status da inspeção: A para Aprovado, D para Divergência ou P para Proibido:")
    leia(si)

    imposto <- 0
    multa <- 0
    frete <- 0

    se (si = "P") entao
        imposto <- 0
        multa <- 0
        frete <- 500 
        destino <- "LOTE CONFISCADO - ENVIADO PARA DESTRUIÇÃO"
    senao
        
        se (si = "D") entao
            multa <- vm * 0.25
            destino <- "LOTE RETIDO PARA PAGAMENTO DE MULTA"
        senao
            multa <- 0
            destino <- "LOTE LIBERADO PARA DISTRIBUIÇÃO"
        fimse

        se (pais = "C") entao
            se (vm <= 50) entao
                imposto <- vm * 0.20
            senao
                imposto <- vm * 0.60
            fimse
        senao
            se (pais = "E") entao
                se (vm <= 100) entao
                    imposto <- vm * 0.30
                senao
                    imposto <- vm * 0.50
                fimse
            senao 
                imposto <- vm * 0.40
            fimse
        fimse

        frete <- pt * 5

        se ((pt > 100) e (pais = "C")) entao
            frete <- frete * 0.85 
        fimse
        
        
        frete <- frete * 5.00
    fimse

    valortotalrs <- (vm * 5.00) + (imposto * 5.00) + (multa * 5.00) + frete

    escreval("======= Relatório =======")
    escreval("Imposto (R$): ", imposto * 5.00)
    escreval("Multa (R$): ", multa * 5.00)
    escreval("Frete (R$): ", frete)
    escreval("Custo Total Final (R$): ", valortotalrs)
    escreval("Destino Final: ", destino)

fimalgoritmo