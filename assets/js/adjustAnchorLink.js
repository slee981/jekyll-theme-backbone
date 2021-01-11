window.addEventListener("hashchange", () => {
    // wait for anchor scroll to settle where it thinks is correct
    // without timeout, autoscroll takes effect too early
    setTimeout(onHashChange, 1000);
});

// adjust anchor tags to view with a fixed topnav bar
function onHashChange() {
    // get height of navbar
    let menu = document.getElementById("menu");
    // dynamically get menu height
    let menuStyle = getComputedStyle(menu);
    let menuHeight = parseInt(menuStyle.height);
    let pad = menuHeight + 10;

    window.scrollTo(window.scrollX, window.scrollY - pad);
}