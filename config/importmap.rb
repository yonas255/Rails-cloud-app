# Pin application
pin "application"

# Turbo (needed for delete)
pin "@hotwired/turbo-rails", to: "turbo.min.js", preload: true

# Stimulus
pin "@hotwired/stimulus", to: "stimulus.min.js", preload: true
pin "@hotwired/stimulus-loading", to: "stimulus-loading.js", preload: true



# Stimulus controllers
pin_all_from "app/javascript/controllers", under: "controllers"
