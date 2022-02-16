import { Controller } from 'stimulus';

import { useClickOutside } from 'stimulus-use';

export default class ModalController extends Controller {
  static targets = ['content'];

  connect() {
    useClickOutside(this);
  }

  clickOutside(event) {
    if (event.cancelable) event.preventDefault();

    event.preventDefault();
    this.hide();
  }

  escClose(event) {
    if (event.key === 'Escape') this.hide();
  }

  show() {
    this.contentTarget.classList.remove('hidden');
  }

  hide() {
    this.contentTarget.classList.add('hidden');
  }
}
