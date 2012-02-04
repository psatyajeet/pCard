class CardMailer < ActionMailer::Base
  default :from => "from@example.com"
  
  def card_email(card)
    @card=card
      @url= "http://princetoncards.com/card" #this is the url that holds the card
    mail (:to => card.recipient :subject => "You have received a Greeting Card!")
  end

end
