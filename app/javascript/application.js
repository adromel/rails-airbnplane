// Entry point for the build script in your package.json

import "@hotwired/turbo-rails";
import "./controllers";
import "bootstrap";
import * as LibName from "vanilla-js-calendar";

var elem = document.getElementById("aa");
var JSCalendar = LibName.JSCalendar;
var JSCalendarEvent = LibName.JSCalendarEvent;
var calendar = new JSCalendar(elem, {
  /* options */
})
  .init()
  .render();

// console.log("all ok ");

// console.log(flatpickr);

// console.log(rangePlugin);

// const element = document.querySelector("#aa");

const disableDate = JSON.parse(element.dataset.dateDisable);

// console.log(disableDate);

// flatpickr(element, {
//   minDate: "today",
//   plugins: [new rangePlugin({ input: "#bb" })],
// });
