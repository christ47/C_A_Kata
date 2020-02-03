require 'capybara/dsl'

class CitizensAdviceHomepage
    include Capybara::DSL

    def selectEnglandSite
        find('a', text: 'England', class: 'home-extent-popup__link').click
    end

    def fillSearchBar
        input = find('input', class: 'searchPlaceholder')
        input.send_keys('State Pension', [:enter])
    end

    def clickSearch
        find(:css, '[value="Search"]').click
    end
end