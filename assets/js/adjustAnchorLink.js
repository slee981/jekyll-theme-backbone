window.addEventListener("hashchange", () => {
    // wait for anchor scroll to take effect
    setTimeout(onHashChange, 1000);
});

// adjust anchor tags to view with a fixed topnav bar
function onHashChange() {
    // get height of navbar
    let menu = document.getElementById("menu");
    let menuStyle = getComputedStyle(menu);
    let menuHeight = parseInt(menuStyle.height);
    let pad = menuHeight + 10;

    window.scrollTo(window.scrollX, window.scrollY - pad);
}