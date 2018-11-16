require_relative '../rails_helper.rb'

feature"Navigate to the home page"do
    scenario"successfully"do
        visit root_path
        expect(page).to have_css 'h1', text: 'Todos'
    end
end