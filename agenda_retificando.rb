#Objetivo: Criar uma agenda onde o usuario possa adicionar,
#remover, editar e ver os contatos

@schedule = []

def add_contact
    print"Name: "
    name = gets.chomp.to_s
    print"Tell: "
    tell = gets.chomp.to_s
    @schedule << {name: name, tell: tell}
end    

def show_contact
    puts"============================================"
    @schedule.each do |contact|
        puts "Name: #{contact[:name]} // Tell: #{contact[:tell]}"
    end
    puts"============================================"
end 

loop do
    puts "1-Add contact\n2-Show contact\n3-Remove contact\n4-Quit"
    op = gets.chomp.to_i
    case 
    when op == 1
        add_contact
    when op == 2
        show_contact
    else op >3
        break
    end
end