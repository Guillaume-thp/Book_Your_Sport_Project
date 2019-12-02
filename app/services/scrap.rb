
class Scrap
  def initialize
  end


  def perform

  	opts = {
    headless: true
  }

  if (chrome_bin = ENV.fetch('GOOGLE_CHROME_SHIM', nil))
    opts.merge!( options: {binary: chrome_bin})
  end 

browser = Watir::Browser.new :chrome, opts
browser.goto 'https://my.urbansoccer.fr/user?goto=reserver'
email_field = browser.text_field(type: 'email')
password_field = browser.text_field(type: 'password')
email_field.set("michaelyohang@gmail.com")
password_field.set("MKthp10bys")
password_field.send_keys(:enter)

idf = browser.path(id: "IDF")
idf.double_click

puteaux = browser.div(text: "Puteaux")
return puteaux.text
puteaux.double_click
# cliquer sur la fleche droite du calendrier pour le mois suivant
 #browser.span(class:["DayPicker-NavButton", "DayPicker-NavButton--next"]).click

binding.irb
date = browser.div(text: "21") # Choisir le jour, A changer par la variable tiré du formulaire de recherche
date.click


#dropdown heure
browser.element(:xpath => "/html/body/div/div/div/div[4]/div/div/div[2]/div[2]/div[2]/div[2]/div[1]/div/select[1]/option[@value='15h00']").click
#dropdown durée
browser.element(:xpath => "/html/body/div/div/div/div[4]/div/div/div[2]/div[2]/div[2]/div[2]/div[1]/div/select[2]/option[@value='120']").click

#Type de terrain. Remplacer un tiret par un underscore dans un attribut.
browser.input(data_label:"3 contre 3").click

#return browser.element(:xpath => "//div[3]/span[2]").text #browser.div(class: "reservation-header").text
  end
end


#type de terrain : browser.element(:xpath => "//div[2]/span[2]").text
# date : browser.element(:xpath => "//div[3]/span[2]").text
# durée : browser.element(:xpath => "//div[2]/div[2]/span[2]").text
# browser.element(:xpath => "//div[2]/div[3]/span[2]).text
# prix : browser.element(:xpath => "//div[2]/div[3]/span[2]").text

