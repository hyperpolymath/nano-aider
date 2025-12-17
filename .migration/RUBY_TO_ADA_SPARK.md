# Ruby TUI → Ada/SPARK Migration Guide

## Policy
TUI applications should be migrated to Ada/SPARK for:
- Formal verification
- Memory safety without runtime overhead
- Proven correctness

## Migration Steps
1. Create `alire.toml` project ✅
2. Use `Terminal_Interface.Curses` from GNAT ✅
3. Convert Ruby curses code to Ada ✅
4. Apply SPARK annotations for critical sections ✅

## Status: COMPLETED ✅

Migration completed on 2025-12-17.

### Files Created
- `src/alire.toml` - Alire package configuration
- `src/nano_aida.gpr` - GNAT project file
- `src/nano_aida.adb` - Main entry point
- `src/nano_aida_tui.ads` - TUI spec with SPARK annotations
- `src/nano_aida_tui.adb` - TUI implementation

### Files Removed
- `lib/nano_ruber/app.rb` - Old Ruby TUI
- `bin/nano-ruber` - Old Ruby entry point
- `test/smoke_test.rb` - Old Ruby test

### SPARK Annotations
The following contracts are enforced:
- `Initialize`: Pre - uninitialized state, Post - running or stopped
- `Run`: Pre - running state, Post - stopped state
- `Finalize`: Pre - not uninitialized, Post - stopped state
