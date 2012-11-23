task :contacts => :environment do
  puts '### INICIANDO PESQUISA ###'
  c = Contact.all
  c.each do |contact|
    puts contact.inspect
    puts '=' * 50
  end
  puts "### TOTAL: #{c.count} ###"
end