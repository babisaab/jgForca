def boas_vindas
    puts "Bem vindo ao jogo da Forca!"
    puts "Qual é o seu nome?"
    nome = gets.strip
    puts "\n\n\n\n\n"
    puts "Vamos começar o jogo pra você, #{nome}"
    nome
end

def sorteia_palavra_secreta
    puts "Definindo uma palavra secreta..."
    palavra_secreta = "programador"
    puts "Palavra secreta com #{palavra_secreta.size} letras... boa sorte!"
    palavra_secreta
end

def não_quer_jogar?
    puts "Deseja jogar novamente? (S/N)"
    quero_jogar = gets.strip
    não_quer_jogar = quero_jogar.upcase == "N"
end

nome = boas_vindas

def pede_um_chute(chutes, erros)
    puts "\n\n\n"
    puts "Erros até agora: #{erros}"
    puts "Chutes até agora: #{chutes}"
    puts "Entre com uma letra ou uma palavra"
    chute = gets.strip
    puts "Será que você acertou? Você chutou #{chute}"
    chute
end

def joga(nome)
    palavra_secreta = sorteia_palavra_secreta

    erros = 0
    chutes = []
    pontuacao_atual = 0

    while erros < 5
        chute = pede_um_chute chutes, erros
        chutes << chute

        # verifica se acertou
    end

    puts "Você ganhou #{pontos_ate_agora} pontos."
end

loop do
    joga nome
    if não_quer_jogar?
        break
    end
end