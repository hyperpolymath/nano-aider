# nano-aida - Development Tasks
set shell := ["bash", "-uc"]
set dotenv-load := true

project := "nano-aida"

# Show all recipes
default:
    @just --list --unsorted

# Build with Alire
build:
    cd src && alr build

# Run tests
test:
    cd src && alr build && ./bin/nano_aida --test

# Clean build artifacts
clean:
    cd src && alr clean
    rm -rf src/obj src/bin

# Format Ada code
fmt:
    @echo "Run: gnatpp -rnb src/*.ad?"

# Run SPARK prover
prove:
    cd src && alr exec -- gnatprove -P nano_aida.gpr --level=2

# Lint
lint:
    cd src && alr exec -- gnatcheck -P nano_aida.gpr
