require_relative './pages/googlePage'
require_relative './pages/citizensAdivceHomepage'

module C_A_Module
    def googlePage
        GooglePage.new
    end

    def citizensAdviceHomepage
        CitizensAdviceHomepage.new
    end
end

