// This file is automatically compiled by Webpack, along with any other files
// present in this directory. You're encouraged to place your actual application logic in
// a relevant structure within app/javascript and only use these pack files to reference
// that code so it'll be compiled.
console.log('application.js loaded');


import Rails from "@rails/ujs"
import Turbolinks from "turbolinks"
import * as ActiveStorage from "@rails/activestorage"
import "channels"
//= require jquery
//= require jquery_ujs
//= require turbolinks
//= require bootstrap-sprockets
//= require_tree .

Rails.start()
Turbolinks.start()
ActiveStorage.start()


// ----------------------------------------------------
// Note(lewagon): ABOVE IS RAILS DEFAULT CONFIGURATION
// WRITE YOUR OWN JS STARTING FROM HERE 👇
// ----------------------------------------------------

// External imports
import "bootstrap";

// Internal imports, e.g:
import { initBookingCable } from '../channels/booking_channel';

// import { initSelect2 } from '../components/init_select2';
import { openCalendar } from '../components/open-calendar';
import { keepCalendarOpen } from '../components/open-calendar';
import { openAddTopic } from '../components/open-add-topic';
import { openCompletedCoffeeChats } from '../components/open-completed-coffee-chats';

document.addEventListener('turbolinks:load', () => {
  initBookingCable();
  openCalendar();
  keepCalendarOpen();
  openAddTopic();
  openCompletedCoffeeChats();
  flatpickr('.time-selector', {
    enableTime: true,
    noCalendar: true,
    dateFormat: "H:i"
  });
  flatpickr('.date-selector', {
    mode: "multiple",
    dateFormat: "Y-m-d",
    minDate: "today"
  })
});

import "controllers"
