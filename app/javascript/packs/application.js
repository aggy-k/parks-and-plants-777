// This file is automatically compiled by Webpack, along with any other files
// present in this directory. You're encouraged to place your actual application logic in
// a relevant structure within app/javascript and only use these pack files to reference
// that code so it'll be compiled.

require("@rails/ujs").start()
require("turbolinks").start()
require("channels")

import { editPlant } from '../scripts/edit-plant';
import { initSelect2 } from '../scripts/init-select2';

document.addEventListener('turbolinks:load', () =>{
  editPlant();
  initSelect2();
})
