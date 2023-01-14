import { Controller } from "@hotwired/stimulus"
import { get } from "@rails/request.js"

export default class extends Controller {

  static targets = ['postBelongsToInput'] // use the target Avo prepared for you
  static values = { view: String }


  async connect() {


    if (['new'].includes(this.viewValue)) {
      console.log("Controller device is connected ")
      //this.captureTheInitialValue()
      // Trigger the change on load
      this.preSelectedArea = null
      //await this.onDeviceModelChange()

    }
  }


  async onCommentChange() {
    console.log("++++++++++++++ onCommentChange called +++++++++++++++++")
    console.log(this.postBelongsToInputTarget.value)
  }

}
