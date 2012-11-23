task :contacts => :environment do
  puts Contact.all.inspect
end