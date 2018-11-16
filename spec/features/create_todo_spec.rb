require "rails_helper"

feature"Create a todo"do
    scenario"Successfully"do
        visit '/'
        click_on "Add a new todo"
        fill_in "Title",	with: "Buy a pint of milk" 
        click_on "Submit"

        expect(page).to have_css '.todos li', text: "Buy a pint of milk"  
    end
end