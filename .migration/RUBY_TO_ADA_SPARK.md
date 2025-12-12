# Ruby TUI → Ada/SPARK Migration Guide

## Policy
TUI applications should be migrated to Ada/SPARK for:
- Formal verification
- Memory safety without runtime overhead
- Proven correctness

## Migration Steps
1. Create `alire.toml` project
2. Use `Terminal_Interface.Curses` from GNAT
3. Convert Ruby curses code to Ada
4. Apply SPARK annotations for critical sections

## Status: PENDING MIGRATION
