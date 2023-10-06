# multiplexer_verilog

This repository contains Verilog modules for implementing multiplexers. Specifically, it includes two modules:

1. `mux`: A 2-to-1 multiplexer.
2. `largemux`: A larger multiplexer composed of multiple smaller ones.

## Introduction

In digital design, a multiplexer (MUX) is a critical component that selects one of several inputs and forwards the selected input as the output. This repository provides Verilog implementations of multiplexer modules.

## Module Descriptions

### `mux`

The `mux` module is a simple 2-to-1 multiplexer. It has the following inputs and outputs:

- Inputs:
  - `A`: Data input 0
  - `B`: Data input 1
  - `S`: Select input (control signal)
  
- Outputs:
  - `O`: Output, which will be either `A` or `B` based on the value of `S`.

### `largemux`

The `largemux` module is a larger multiplexer that uses multiple instances of the `mux` module to create a more complex multiplexer. It has the following inputs and outputs:

- Inputs:
  - `i0`, `i1`, `i2`, `i3`: Data inputs (0 through 3)
  - `s0`, `s1`: Select inputs (control signals)
  
- Outputs:
  - `O`: Output, which is the result of selecting from the four data inputs based on the values of `s0` and `s1`.
