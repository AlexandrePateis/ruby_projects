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

def remove_contact 
    print "Which name do you want to remove? Type here: "
    name = gets.chomp

    @schedule.each do |c|
        if c[:name].downcase == (name.downcase)
            indice = @schedule.index(c)
            @schedule.delete_at(indice)
            break
        end   
    end         
end


loop do
    puts "1-Add contact\n2-Show contact\n3-Remove contact\n4-Quit"
    op = gets.chomp.to_i
    case 
    when op == 1
        add_contact
    when op == 2
        show_contact
    when op == 3
        remove_contact    
    else op >3
        break
    end
end