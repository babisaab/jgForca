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

def avisa_chute_efetuado chute
    puts "Você já chutou #{chute}"
end

def avisa_letra_não_encontrada
    puts"Letra não encontrada."
end

def avisa_letra_encontrada total_letras_encontradas
    puts"Letra encontrada #{total_letras_encontradas} vezes."
end

def avisa_acertou_palavra 
    puts "Parabéns, Você acertou!"
end

def avisa_errou_palavra
    puts "Que pena, você errou!"
end

def avisa_pontuacao
    puts "Você ganhou #{pontuacao_atual} pontos."
end

loop do
    joga nome
    if não_quer_jogar?
        break
    end