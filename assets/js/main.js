// When the user scrolls down 80px from the top of the document, resize the navbar's padding and the logo's font size
window.onscroll = () => scrollFunction();

function scrollFunction() {
  let menu = document.getElementById("menu");

  // if you are scrolling
  if (document.body.scrollTop > 80 || document.documentElement.scrollTop > 80) {
    menu.style.borderBottom = "1px solid rgb(65, 65, 65)";
    menu.style["boxShadow"] = "5px 10px 18px #888888";
    menu.style["opacity"] = "0.95";

    // find and replace the navbar padding 
    // if scrolling, smaller navbar
    menu.className = menu.className.replace(/py-\d/, 'py-3');
  }

  // if you are not scrolling
  else {
    menu.style["boxShadow"] = "none";
    menu.style.borderBottom = "none";
    menu.style["opacity"] = "1";

    // find and replace the navbar padding 
    // if not scrolling, bigger navbar
    menu.className = menu.className.replace(/py-\d/, 'py-4');
  }
}
