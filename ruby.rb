loop do
    puts "Agenda com contatos"
    puts "Digite 0 para sair ou 1 para continuar"
    op = gets.to_i
    
    break if op == 0
    contatos = []
    
    loop do
        contato={}
        
        print "Digite o nome: "
        contato["nome"] = gets.chomp.to_s

        print "Digite o número: "
        contato["número"] = gets.to_i

        contatos << contato
        puts ""
        puts "Deseja adicionar mais ?"
        puts "1-Sim"
        puts "2-Não"
        k = gets.to_i 
        
        break if k == 2

    end
    
    contatos.each do |a|
        puts "============================================"
        puts "Nome: #{a["nome"]} // Telefone: #{a["número"]}"
        puts "============================================"
    end


end