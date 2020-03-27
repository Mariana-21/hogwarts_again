class ProfessorsController < ApplicationController

    def index 
        require'pry'; binding.pry
        @professors = Professor.all
    end 

    def show

    end 
end 