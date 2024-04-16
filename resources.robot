*** Settings ***
Library    SeleniumLibrary


*** Variables ***
${navegador}                   chrome
${goldfish}                    https://www.mtggoldfish.com/
${logoGoldfish}                locator=//img[contains(@alt,'MTGGoldfish Logo')]
${dropdown_locator}            css=    a.nav-link.dropdown-toggle
${decks}                       //a[@class='nav-link dropdown-toggle'][contains(.,'Decks')]
${Popular Decks / Metagame}    //a[@class='dropdown-item'][contains(.,'Popular Decks / Metagame')]
${pioneertier}                 //a[@href='/metagame/pioneer#paper'][contains(.,'Pioneer')]
${listadeck}                   //textarea[contains(@class,'copy-paste-box')]    
${clicardeck}                  //a[@href='/archetype/pioneer-rakdos-midrange#paper'][contains(.,'Rakdos Midrange')]
${export}                      (//a[contains(.,'Export to Arena')])[1]
${viewmore}                    //a[@href='/metagame/pioneer/full']

*** Keywords ***

Abrir o navegador
    Open Browser        ${navegador}
    Maximize Browser Window

Fechar o navegador
    Capture Page Screenshot
    Close Browser

Acessar a home page do site "https://www.mtggoldfish.com/"
    Go To    ${goldfish}
    # Wait Until Element Is Visible    //h3[@class='home-trending'][contains(.,'Recent Major Tournaments')]

 Entrar no menu Decks
    Click Element    ${decks}
    # Wait Until Element Is Visible    ${Popular Decks / Metagame}

Selecionar a opção Popular Decks / Metagame
    Click Element    ${Popular Decks / Metagame}
    # Wait Until Element Is Visible    locator=${pioneertier}

Selecionar a opção "Pìoneer"
    Click Element    ${pioneertier}

Selecionar a opção "View More"   
    Click Element    ${viewmore}

Selecionar o deck mais popular atualmente
    Click Element    ${clicardeck}

Exportar o deck mais popular
    Click Element    ${export}  

Mostrar na console a lista do deck mais popular      
    ${decklist}        Get Text    ${listadeck}
    Log To Console    ${decklist}
