// flat picker

import flatpickr from "flatpickr";

const initFlatPicker = () => {
  const element = document.querySelector('.datepicker')
    if (element) {
      flatpickr(".datepicker", {
        altInput: true,
        altFormat: "F j, Y",
        dateFormat: "Y-m-d",
        minDate: "today",
        // enableTime: true,
      });
    }
}

export { initFlatPicker }
