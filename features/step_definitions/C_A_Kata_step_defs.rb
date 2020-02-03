Given("I am on the Google Homepage") do
    googlePage.visitGoogle
  end
  
  When("I search for Citizen Adivce on google") do
    googlePage.searchForCitizensAdivce
  end
  
  When("I click the citizen advice link from the search") do
    googlePage.clickCitizenAdivceLink
  end

  When("I select the English Site") do
    citizensAdviceHomepage.selectEnglandSite
  end
  
  Then("I see the Citizen Advice Homepage") do
    expect(page.should have_css('li', class: 'top-item', count: 10))
  end
  
  When("I search for state pension on the homepage") do
    citizensAdviceHomepage.fillSearchBar
    citizensAdviceHomepage.clickSearch
  end
  
  Then("I see a link to State Pension") do
    expect(page.should have_css('a', text: "State Pension"))
  end