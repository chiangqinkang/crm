*** Settings ***
Library  SeleniumLibrary

*** Variables ***



*** Keywords ***
Begin Web Test
    #Initialize Selenium
    #Set selenium speed      .2s
    Set selenium timeout    10s

    #open the browser
    open browser            about:blank       ${BROWSER}

End Web Test
    close browser