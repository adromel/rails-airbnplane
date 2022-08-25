import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="search"
export default class extends Controller {
  static targets = [ "input", "list" ]


  update() {
    fetch(`/search?query=${this.inputTarget.value}`)
    .then(response => response.text())
    .then((htmlResult) => {
      this.listTarget.innerHTML = htmlResult
    })

  }

  connect() {
    console.log('coco')
  }
}
