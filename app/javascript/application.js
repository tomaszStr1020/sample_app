// Entry point for the build script in your package.json
import "@hotwired/turbo-rails"
import "./controllers"
require("@rails/ujs").start()
require("turbolinks").start()
require("@rails/activestorage").start()
require("channels")
require("jquery")
import "bootstrap"