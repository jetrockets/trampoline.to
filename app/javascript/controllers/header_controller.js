import { Controller } from 'stimulus';

export default class HeaderController extends Controller {
  static targets = ['mobileMenu'];
  // connect() {
  // get toggleClass
  // }

  escClose(event) {
    if (event.key === 'Escape') this.hide();
  }

  show() {
    this.mobileMenuTarget.classList.remove('hidden');
  }

  hide() {
    this.mobileMenuTarget.classList.add('hidden');
  }
}
