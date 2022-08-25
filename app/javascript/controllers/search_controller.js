import { Controller } from "@hotwired/stimulus"

console.log('eeee')

// Connects to data-controller="search"
export default class extends Controller {
  connect() {
    console.log('coucououcouc')
  }
}
