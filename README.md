# RISC-V Core Building Blocks & Verification Suite (SystemVerilog)

Colección modular de bloques de hardware digital y lógica combinacional/secuencial descritos en **SystemVerilog sintetizable**, diseñados como la base arquitectónica para la construcción progresiva de un procesador **RISC-V (RV32I)**.

El repositorio abarca desde primitivas de manipulación de datos y rutas aritméticas hasta la verificación funcional mediante *testbenches* dirigidos y flujos de simulación por terminal (CLI).

## 1. Estructura del Repositorio

El diseño desacopla el hardware sintetizable de las rutinas de verificación:

* `HW/`: Módulos de hardware (RTL) organizados por bloques funcionales del datapath y control.
* `TB/`: Bancos de prueba (*Testbenches*) dirigidos para validación funcional y cobertura de casos esquina (*corner cases*).
* `sim_build/`: Directorio temporal para artefactos intermedios generados por las herramientas de simulación.
* `Makefile`: Reglas de automatización para compilación, elaboración y ejecución de simulaciones.

```text
system_verilog/
├── HW/             # Código fuente sintetizable (.sv)
├── TB/             # Bancos de pruebas y verificación (.sv)
├── sim_build/      # Objetos compilados y logs de simulación
├── Makefile        # Reglas de automatización CLI
└── README.md
```

## 2. Funcionamiento del Repositorio y Flujo de Travajo ##

este repositorio esta diseñado tomando en cuenta un flujo de trabajo basado en consola de comandos por lo que este repositorio cuenta con un archivo `Makefile` el cual se encarga de la automatizacion de la funciones de compilacion, elaboracion y de construccion del proyecto haciendo uso de comandos que se pueden poner directamente en la consola.

antes de poder utilizar los comanods es necesario realizar modificaciones en el make file, al principio de cada menu se encuentran listados el nombre del RTL,del archivo Testberch y de la carpeta del modulo,teniendo en cuenta los datos anteriores a continuacion se deja instrucciones para poder modificar el make file para poder compilar cuaquiera de los modulos disponibles en este repositorio:

1. ingresar el nombre del modulo:
por defecto el modulo instanciado dentro del make file es `half_adder.sv`

**apartado por defecto del makefile:**

```makefile
MODULE ?=half_adder
```

**modificiacion necesaria para un nuevo modulo:**

```makefile
MODULE ?=<nombre del modulo con el que se quiera travajar>
```

## 3. Modulos y Practicas RTL ##

<details>
<summary><b> 1. Bit manipulation & Swizzling</b></summary>

 > **Descripcion:** Inversor de orden de bytes (endianness swap) de 32 bits.

* **Codigo RTL:** [`practice_1.sv`](./HW/bit_swizzling/practice_1.sv)
* **Testberch:** [`tb_practice_1.sv`](./TB/bit_swizzling/tb_practice_1.sv)
* **Carpeta del Module:** [`bit_swizzling`](./HW/bit_swizzling/)

</details>
