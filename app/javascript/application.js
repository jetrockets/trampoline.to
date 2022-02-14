import { Application } from '@hotwired/stimulus';
import { Turbo } from '@hotwired/turbo-rails';
import Rails from '@rails/ujs';

import {
  Dropdown,
  Toggle,
  Modal
} from 'tailwindcss-stimulus-components';

const application = Application.start();
// application.debug = false
window.Stimulus = application;
application.register('dropdown', Dropdown);
application.register('modal', Modal);
application.register('toggle', Toggle);

Rails.start();
Turbo.setProgressBarDelay(500);
