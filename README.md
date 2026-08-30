# RISC-V Core Building Blocks & Verification Suite (SystemVerilog) #

Colección modular de bloques de hardware digital y lógica combinacional/secuencial descritos en **SystemVerilog sintetizable**, diseñados como la base arquitectónica para la construcción progresiva de un procesador **RISC-V (RV32I)**.

El repositorio abarca desde primitivas de manipulación de datos y rutas aritméticas hasta la verificación funcional mediante *testbenches* dirigidos y flujos de simulación por terminal (CLI).

---

## 1. Estructura del Repositorio

El diseño desacopla el hardware sintetizable de las rutinas de verificación:

* `HW/`: Módulos de hardware (RTL) organizados por bloques funcionales del datapath y control.
* `TB/`: Bancos de prueba (*Testbenches*) dirigidos para validación funcional y cobertura de casos esquina.
* `sim_build/`: Directorio temporal para artefactos intermedios generados por las herramientas de simulación.
* `Makefile`: Automatización de compilación, elaboración y ejecución de simulaciones.

```text
system_verilog/
├── HW/             # Código fuente sintetizable (.sv)
├── TB/             # Bancos de pruebas y verificación (.sv)
├── sim_build/      # Objetos compilados y logs de simulación
├── Makefile        # Reglas de automatización CLI
└── README.md
