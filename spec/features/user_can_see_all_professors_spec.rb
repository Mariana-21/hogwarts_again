require 'rails_helper'

describe "As a visitor", type: :feature do
    it "can see all professors and their attributes in one page" do 
        professor_1 = Professor.create(name:"Minerva McGonagall",
                                        age: "204",
                                        specialty: "Transfiguration")
        professor_2 = Professor.create(name: "Rolanda Hooch",
                                        age: "104",
                                        specialty: "Flying")
        professor_3 = Professor.create(name: "Filius Flitwick",
                                        age: "304",
                                        specialty: "Charms")

        visit "/professors"

        expect(page).to have_content(professor_1.name)
        expect(page).to have_content(professor_1.age)
        expect(page).to have_content(professor_1.specialty)
        expect(page).to have_content(professor_2.name) 
        expect(page).to have_content(professor_2.age) 
        expect(page).to have_content(professor_2.specialty) 
        expect(page).to have_content(professor_3.name) 
        expect(page).to have_content(professor_3.age) 
        expect(page).to have_content(professor_3.specialty) 
    end
end