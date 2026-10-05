puts "Bem-vindo a agenda!"
puts "As opções são: listar, guardar e sair"
puts "Se digitar algo mais, irá ocorrer uma busca na agenda com o valor digitado\n\n"

agenda = {}

while true
  print "> "
  opt = gets.chomp
  
  case opt
  when /sair/i
    puts "Finalizando sistema ..."
    return
  when /listar/i
    agenda.each do |key, val|
      puts "#{key} = #{val}"
    end
    puts "Pesquisa concluída com sucesso."
  when /guardar/i
    puts "Digite o nome:"
    nome = gets.chomp.strip
    
    puts "Digite o telefone:"
    fone = gets.chomp.strip

    if nome.size < 1 || fone.size < 1
      puts "Precisa digitar conteúdo com mais de 1 caractere"
      next
    end

    agenda[nome] = fone
    puts "Gravado nome e telefone com sucesso.\n\n"
    else 
      fone = agenda[opt]
    puts fone ? fone : "Não encontrado"
  end
end
