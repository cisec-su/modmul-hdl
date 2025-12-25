# modmul-hdl
# Efficient hardware modules for modular multiplication targetting FPGA architectures (can be used in ASIC as well)

## Integer Multiplication
- Muliply-And-Accumulate (MAC) using Standard Tiling.
- Non-Standard Tiling from "de Dinechin, F., & Pasca, B. (2009, August). Large multipliers with fewer DSP blocks. In 2009 International Conference on Field Programmable Logic and Applications (pp. 250-255). IEEE.". Uses 8 DSPs (DSP48E2) for 60-bit multiplication.
- 32-bit mulitplicaton with Non-Standard Tiling. Uses 3 DSPs (DSP48E2) for 32-bit multiplication.

## Modular Reduction
- Barrett
- Montgomery with shift-adds.
- Word-level Montgomery
- Mixed-Radix Word-level Montgomery.
- K^2Red.
- K^2Red with shift-adds.

Modular reduction modules correspond to the following academic publication. Please consider using the following bibTeX excerpt:
```
@article{tosun2024efficient,
  title={Efficient Modular Multiplication Hardware for Number Theoretic Transform on FPGA},
  author={Tosun, Tolun and K{\i}rb{\i}y{\i}k, Selim and Ko{\c{c}}er, Emre and Sava{\c{s}}, Erkay and Alaybeyo{\u{g}}lu, Ersin},
  journal={Cryptology ePrint Archive},
  year={2024}
}
```
