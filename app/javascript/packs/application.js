// This file is automatically compiled by Webpack, along with any other files
// present in this directory. You're encouraged to place your actual application logic in
// a relevant structure within app/javascript and only use these pack files to reference
// that code so it'll be compiled.

require("@rails/ujs").start()
require("turbolinks").start()
require("@rails/activestorage").start()
require("channels")


// Uncomment to copy all static images under ../images to the output folder and reference
// them with the image_pack_tag helper in views (e.g <%= image_pack_tag 'rails.png' %>)
// or the `imagePath` JavaScript helper below.
//
// const images = require.context('../images', true)
// const imagePath = (name) => images(name, true)

// hamburger


// ----------------------------------------------------
// Note(lewagon): ABOVE IS RAILS DEFAULT CONFIGURATION
// WRITE YOUR OWN JS STARTING FROM HERE 👇
// ----------------------------------------------------

// External imports
import "bootstrap";
import "../plugins/flatpickr"
import { initMapbox } from '../plugins/init_mapbox';
// Internal imports, e.g:
// import { initSelect2 } from '../components/init_select2';
import { initBookingMenu } from '../components/booking-menu'

document.addEventListener('turbolinks:load', () => {
  // Flat picker
  flatpickr(".datepicker", {
    altInput: true,
    altFormat: "F j, Y",
    dateFormat: "Y-m-d",
    minDate: "today",
  });
//vars
  const nav = document.querySelector(".header__nav");
  const hamburger = document.querySelector(".hamburger");
  const burger = document.getElementById('hamburger2')
  const body = document.querySelector('body')

// Menu slide
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

  // Geo Map
  initMapbox()
  // Swal
  initBookingMenu()
});
