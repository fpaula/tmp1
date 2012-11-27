namespace :contacts do
  desc 'Lista todos os contatos'
  task :list => :environment  do
    contact_list
  end

  desc 'Deleta todos os contatos'
  task :delete_all => :environment do
    contact_list
    puts "### #{Contact.delete_all.inspect} CONTATOS REMOVIDOS ###"
  end

  def contact_list
    puts '### INICIANDO PESQUISA ###'
    contacts = Contact.all
    contacts.each do |contact|
      puts contact.inspect
      puts '=' * 50
    end
    puts "### TOTAL: #{contacts.count} ###"
    contacts
  end
end