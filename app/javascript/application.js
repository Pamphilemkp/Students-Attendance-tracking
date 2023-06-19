// Entry point for the build script in your package.json
import "@hotwired/turbo-rails"
import "./controllers"
import * as bootstrap from "bootstrap"
import 'bootstrap/js/dist/alert';
import 'bootstrap/js/dist/button';
import "../stylesheets/application";


global.toastr = require("toastr")
