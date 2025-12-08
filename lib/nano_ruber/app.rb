# frozen_string_literal: true
require "curses"
module NanoRuber
  class App
    def self.run
      Curses.init_screen
      Curses.setpos(0, 0)
      Curses.addstr("nano-ruber TUI loaded")
      Curses.refresh
      Curses.getch
    ensure
      Curses.close_screen
    end
  end
end
