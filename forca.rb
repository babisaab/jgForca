require_relative 'ui'

def joga(nome)
    palavra_secreta = sorteia_palavra_secreta

    erros = 0
    chutes = []
    pontuacao_atual = 0

    while erros < 5
        chute = pede_um_chute chutes, erros
        if chutes.include? chute
            avisa_chute_efetuado chute
            next #proximo laço
        end
        chutes << chute
        
        chutou_uma_letra = chute.size == 1
        if chutou_uma_letra
            letra_procurada = chute[0]
            total_letras_encontradas = palavra_secreta.count letra_procurada #conta cada letra da string
            if total_letras_encontradas == 0
                avisa_letra_não_encontrada
                erros += 1
            else
                avisa_letra_encontrada total_letras_encontradas
            end
        else
            acertou = chute == palavra_secreta
            if acertou
                avisa_acertou_palavra
                pontuacao_atual += 100
                break
            else
                avisa_errou_palavra
                pontuacao_atual -= 30
                erros += 1
             end
        end
    end
    avisa_pontuacao
end

loop do
    joga nome
    if não_quer_jogar?
        break
    end
end