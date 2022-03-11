// ./bin/rails stimulus:manifest:update
import { Controller } from "@hotwired/stimulus";

export default class extends Controller {
  connect() {
    console.log("Address controller is connected");
  }

  initGoogle() {
    // set up autocomplete
  }

  placeSelected() {
    // user the values from autocomplete
  }
}
