import { Controller } from "@hotwired/stimulus"
//import { Controller } from "https://unpkg.com/@hotwired/stimulus/dist/stimulus.js"
export default class extends Controller {
  static targets = ["header"]
  connect() {
    alert("foooo");
    this.element.textContent = "Hello World!"
  }
}
