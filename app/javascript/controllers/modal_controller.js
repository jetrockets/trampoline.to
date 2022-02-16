import { Controller } from 'stimulus';

import { useClickOutside } from 'stimulus-use';

export default class ModalController extends Controller {
  static targets = ['content'];

  connect() {
    useClickOutside(this);
  }

  clickOutside(event) {
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
