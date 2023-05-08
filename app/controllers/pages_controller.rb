class PagesController < ApplicationController

  #page home
    def home
      puts params.inspect
      @gossips = Gossip.all
    end
  
  #page team
    def team
      
    end
  
  #page contact
    def contact
      
    end
  
  #page welcome dynamique
    def welcome
      @first_name = params[:first_name]
      puts params[:first_name].inspect
    end
  
  #page potin dynamique
    def potin
      @gossips = Gossip.all
      @id = params[:id]
    end
  
  
  #page auteur dynamique
  def author
    @gossips = Gossip.all
    @title = User.find(params[:user_id]).first_name
    @id = params[:user_id]
  end
end