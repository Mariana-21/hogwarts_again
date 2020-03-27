require 'rails_helper'

describe "As a vistor", type: :feature do 
    it "I can visit each professors show page" do 
        snape = Professor.create(name: "Severus Snape", 
                                    age: 45, 
                                    specialty: "Potions")
        hagarid = Professor.create(name: "Rubus Hagarid", 
                                    age: 38 , 
                                    specialty: "Care of Magical Creatures")
        lupin = Professor.create(name: "Remus Lupin", 
                                    age: 49 , 
                                    specialty: "Defense Against The Dark Arts")

        harry = Student.create(name: "Harry Potter" , 
                                age: 11 , 
                                house: "Gryffindor" )
        malfoy = Student.create(name: "Draco Malfoy" , 
                                age: 12 ,
                                house: "Slytherin" )
        longbottom = Student.create(name: "Neville Longbottom" , 
                                    age: 11 , 
                                    house: "Gryffindor" )

        visit "/professors/#{snape.id}"

        within("#professor-#{snape.id}") do
            expect(page).to have_content(snape.name)

            within("#student-#{harry.id}") do
                expect(page).to have_content(harry.name)
            end
        end
    end
end