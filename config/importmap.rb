# Pin npm packages by running ./bin/importmap

pin "application", preload: true
pin "@hotwired/turbo-rails", to: "turbo.min.js", preload: true
pin "@hotwired/stimulus", to: "stimulus.min.js", preload: true
pin "@hotwired/stimulus-loading", to: "stimulus-loading.js", preload: true
pin_all_from "app/javascript/controllers", under: "controllers"

# Avo custom JS entrypoint
pin "avo.custom", preload: true
pin "@rails/request.js", to: "https://ga.jspm.io/npm:@rails/request.js@0.0.6/src/index.js"

pin "turbo_ready", to: "https://ga.jspm.io/npm:turbo_ready@0.1.2/app/javascript/index.js"
pin "@alpinejs/morph", to: "https://ga.jspm.io/npm:@alpinejs/morph@3.10.5/dist/module.esm.js"
pin "alpinejs", to: "https://ga.jspm.io/npm:alpinejs@3.10.5/dist/module.esm.js"
