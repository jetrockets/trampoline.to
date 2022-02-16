import { Controller } from 'stimulus';

import { useClickOutside, useWindowResize, useDebounce } from 'stimulus-use';

export default class ModalController extends Controller {
  static targets = ['content'];

  static debounces = ['windowResize'];

  connect() {
    useClickOutside(this);
    useWindowResize(this);
    useDebounce(this, { wait: 250 });
  }

  clickOutside(event) {
    if (event.cancelable) event.preventDefault();

    event.preventDefault();
    this.hide();
  }

  windowResize() {
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
