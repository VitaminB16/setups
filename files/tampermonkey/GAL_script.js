// ==UserScript==
// @name         GAL Accept
// @namespace    http://tampermonkey.net/
// @version      2024-06-19
// @description  Automatically completes the gcloud auth login process by clicking the "Allow" button on the Google OAuth consent screen. Saves precious time.
// @author       You
// @match        https://accounts.google.com/signin/oauth/*
// @icon         https://www.google.com/s2/favicons?sz=64&domain=google.com
// @grant        none
// ==/UserScript==

var find_accept_button1 = function() {
    let res = []
    let buttons = document.querySelectorAll('.VfPpkd-vQzf8d')
    if (buttons == []) {
        return 0
    }
    buttons.forEach(x => res.push(x.textContent))
    let allowIndex = res.indexOf("Allow");
    let continueIndex = res.indexOf("Continue");

    // First, try to find "Allow" button; if not found, then look for "Continue"
    let buttonToClick = allowIndex !== -1 ? buttons[allowIndex] :
                        continueIndex !== -1 ? buttons[continueIndex] : null;

    return buttonToClick;
}


var click_accept_button1 = function() {
    let button = find_accept_button1()
    button.click()
}

setTimeout(click_accept_button1, 200)
