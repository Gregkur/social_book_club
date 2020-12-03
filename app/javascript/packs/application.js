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
import { initMapbox } from '../plugins/init_mapbox';
//import Swal from 'sweetalert2'
// import 'sweetalert2/src/sweetalert2.scss'
// Internal imports, e.g:
// import { initSelect2 } from '../components/init_select2';
import { initBookingMenu } from '../components/booking-menu'
import { initJoinMenu } from '../components/join-menu'
import { initMenuSlide } from "../components/manu_slide";
import { initFlatPicker } from "../plugins/flatpickr";
import { initBookingConfirmation } from '../components/booking-confirmation';

document.addEventListener('turbolinks:load', () => {
  // Flat picker
  initFlatPicker()
  // Swal for joining
  initJoinMenu()

  // Menu slide
  initMenuSlide()

  // Geo Map
  initMapbox()
  // Swal
  initBookingMenu()
  // Swal
  initBookingConfirmation()

});
