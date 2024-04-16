*** Settings ***
Library            SeleniumLibrary
Resource           resources.robot
Test Setup         Abrir o navegador
Test Teardown      Fechar o navegador

*** Test Cases ***
CT01 - Abrir o Site Goldfish e Pesquisar Deckslits Pioneer
    [Documentation]    Abrir MTG Goldfish
    ...    Pesquisar por decklists de Pioneer
    [Tags]    CT01
    Abrir o navegador
    Fechar o navegador
    Acessar a home page do site "https://www.mtggoldfish.com/"
    Entrar no menu Decks
    Selecionar a opção Popular Decks / Metagame
    Selecionar a opção "Pìoneer"
    Selecionar a opção "View More"   
    Selecionar o deck mais popular atualmente
    Exportar o deck mais popular
    Mostrar na console a lista do deck mais popular      
