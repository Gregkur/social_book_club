import flatpickr from "flatpickr";

const initFlatPicker = () => {
  const flatpickr = document.querySelector('.datepickr')
    if (flatpickr) {
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