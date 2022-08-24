// Entry point for the build script in your package.json
// import "@hotwired/turbo-rails";
// import "./controllers";
import "bootstrap";
import { Application } from "@hotwired/stimulus";
import Flatpickr from "stimulus-flatpickr";

const application = Application.start();
console.log(Flatpickr);
application.register("flatpickr", Flatpickr);

// // Configure Stimulus development experience
application.debug = true;
window.Stimulus = application;

// export { application };
