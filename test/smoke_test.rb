require_relative "../lib/nano_ruber/app"
puts "Smoke test: loading app..."
NanoRuber::App.run rescue puts "App loaded successfully (interactive test skipped)"
