
# SystemVerilog Digital Design Examples

Este repositório contém exemplos de mini projetos digitais desenvolvidos em **SystemVerilog**, uma linguagem de descrição de hardware amplamente utilizada. Os códigos foram testados na plataforma [EDA Playground](https://www.edaplayground.com/home), que permite simulação e validação de projetos digitais diretamente no navegador.

## Estrutura do Repositório

O repositório está organizado da seguinte forma:

```
systemverilog-design-examples/
├── XNOR/
│   ├── design.sv        # Implementação do circuito XNOR
│   ├── testbench.sv     # Testbench para verificar o funcionamento do XNOR
├── AND/
│   ├── design.sv        # Implementação do circuito AND
│   ├── testbench.sv     # Testbench para verificar o funcionamento do AND
├── MUX/
│   ├── design.sv        # Implementação do MUX
│   ├── testbench.sv     # Testbench para verificar o funcionamento do MUX
├── FlipFlopD/
│   ├── design.sv        # Implementação do Flip-Flop Tipo D
│   ├── testbench.sv     # Testbench para verificar o Flip-Flop Tipo D
├── AND_XOR/
│   ├── design.sv        # Implementação combinada de AND + XOR
│   ├── testbench.sv     # Testbench para verificar o circuito AND + XOR
└── README.md            # Documentação do repositório
```

## Descrição dos Circuitos

### 1. **XNOR**
Circuito XNOR básico que retorna `1` quando as entradas são iguais.

### 2. **AND**
Implementação de uma porta lógica AND, que retorna `1` se todas as entradas forem `1`.

### 3. **MUX**
Multiplexador (MUX) que seleciona uma das entradas com base no sinal de controle.

### 4. **Flip-Flop Tipo D**
Flip-Flop D com reset assíncrono e habilitação, projetado para armazenar dados na borda de subida do clock.

### 5. **AND + XOR**
Circuito combinacional que combina as operações AND e XOR, e em seguida aplica a negação (complemento) do resultado dessa combinação.
## Como Usar

### Executando no EDA Playground
1. Acesse o [EDA Playground](https://www.edaplayground.com/home).
2. Crie um novo playground e copie os arquivos `design.sv` e `testbench.sv` para os campos correspondentes.
3. Escolha o simulador desejado (ex.: **Icarus Verilog**, **ModelSim**, ou outros suportados).
4. Execute a simulação e visualize os resultados.

### Simulação Local
Se preferir rodar localmente:
1. Clone o repositório:
   ```bash
   git clone https://github.com/seu-usuario/systemverilog-design-examples.git
   ```
2. Acesse a pasta do circuito desejado:
   ```bash
   cd systemverilog-design-examples/XNOR
   ```
3. Compile e simule utilizando um simulador compatível com SystemVerilog:
   ```bash
   iverilog -g2012 -o xnor_tb design.sv testbench.sv
   vvp xnor_tb
   ```

## Ferramentas Recomendadas

- **EDA Playground**: Simulador online para projetos em SystemVerilog.
- **Icarus Verilog**: Simulador de código aberto para SystemVerilog.
- **ModelSim** ou **QuestaSim**: Simuladores comerciais para projetos digitais.
- **GTKWave**: Para visualização de formas de onda geradas na simulação.

---

**Autor:** Desenvolvido durante estudos na graduação em Engenharia Elétrica.  
