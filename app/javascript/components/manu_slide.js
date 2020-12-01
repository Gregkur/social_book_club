const initMenuSlide = () => {
    const nav = document.querySelector(".header__nav");
    const hamburger = document.querySelector(".hamburger");
    const burger = document.getElementById('hamburger2')
    const body = document.querySelector('body')
    hamburger.addEventListener("click", function() {
        hamburger.classList.toggle("is-active");
        if (hamburger.classList.contains("is-active")){
          burger.checked = true
        }else{
          burger.checked = false
        }
        nav.classList.toggle("overflow");
        body.classList.toggle("overflow-x")
        
    });
}
export { initMenuSlide }