# nano-aida Architecture

An Ada/SPARK TUI application with formal verification for terminal-based interfaces.

## Design Principles

1. **Formal Verification**: SPARK annotations for provable correctness
2. **Memory Safety**: Ada's strong typing prevents buffer overflows
3. **RSR Compliance**: Follows Rhodium Standard Repository guidelines

## Components

### Core TUI (`nano_aida_tui.ads/adb`)
- State machine with formal contracts
- Terminal_Interface.Curses for ncurses bindings
- SPARK Mode enabled for specification

### Main Entry (`nano_aida.adb`)
- Command-line argument parsing
- Test mode for CI/CD verification
- Graceful error handling

## State Machine

```
Uninitialized → Initialize → Running → Run → Stopped
                    ↓                         ↑
                  (error) ──────────────────→
```

## Build System

- **Alire**: Ada package manager
- **GPRbuild**: GNAT project builder
- **GNATprove**: SPARK formal prover
