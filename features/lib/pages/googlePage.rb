require 'capybara/dsl'

URL = 'https://www.google.co.uk/'
class GooglePage
    include Capybara::DSL

    def visitGoogle
        visit(URL)
    end

    def searchForCitizensAdivce
        input = find('.gLFyf')
        input.fill_in :with => 'Citizens Advice'
        input.send_keys [:enter]
        
    end

    def clickCitizenAdivceLink
        all('h3', class: "LC20lb", text: "Citizens Advice").first.click
    end
end
