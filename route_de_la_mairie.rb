

 require 'nokogiri'
 require 'open-uri'



 def get_the_email_of_a_townhal_from_its_webpage (url)

doc = Nokogiri::HTML(open(url))
puts doc.xpath('/html/body/div/main/section[2]/div/table/tbody/tr[4]/td[2]').text

=begin
il faut aller chercher le lien de l'adresse mais dans le code source (clique droit puis "examiner l'élément").
xpath me permet de cibler ma recherche.
=end


end

get_the_email_of_a_townhal_from_its_webpage('http://annuaire-des-mairies.com/95/vaureal.html')
#on appelle la méthode pour avoir l'e-mail sur la console.




def get_all_the_urls_of_val_doise_townhalls
doc = Nokogiri::HTML(open('http://annuaire-des-mairies.com/val-d-oise.html'))
doc.css("td a.lientxt").each do |element|
#css est une extraction de données. Il est donc nécessaire de l'utiliser pour faire 'css' pour cibler la recherche
puts element.text
puts element["href"]
end
end

puts"annuaire"
get_all_the_urls_of_val_doise_townhalls
#on appelle la méthode pour avoir les e-mails sur la console.


