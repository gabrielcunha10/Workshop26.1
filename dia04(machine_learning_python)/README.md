# 📊 Análise de Vendas Globais da BMW

Este projeto realiza uma análise de dados e aplicação de modelos de
machine learning utilizando o dataset **bmw_global_sales_dataset**. O
objetivo principal é prever se as vendas (`units_sold`) estão acima da
mediana.

------------------------------------------------------------------------

## 📁 Estrutura do Repositório

```
📦 Workshop26.1
 ┣ 📂 dia04(machine_learning_python)
 ┃ ┣ 📂 tabela_utilizada
 ┃ ┃ ┗ 📄 bmw_global_sales_dataset.csv
 ┃ ┗ 📄 desafio_19_03.ipynb
 ┗ 📄 README.md
```

------------------------------------------------------------------------

## 📥 Como Carregar a Tabela

A base de dados utilizada está localizada em:

tabela_utilizada/bmw_global_sales_dataset.csv

### ✔️ Execução local

``` python
import pandas as pd

df = pd.read_csv('tabela_utilizada/bmw_global_sales_dataset.csv')
```

------------------------------------------------------------------------

### ✔️ Execução no Google Colab

``` python
from google.colab import files
uploaded = files.upload()

df = pd.read_csv('bmw_global_sales_dataset.csv')
```

------------------------------------------------------------------------

## 🔄 Etapas do Projeto

- Carregamento e exploração dos dados
- Tratamento de valores nulos
- Criação da variável alvo
- Codificação de variáveis categóricas
- Normalização dos dados
- Divisão em treino e teste
- Treinamento de modelos de classificação
- Avaliação dos resultados

------------------------------------------------------------------------

## 🎯 Variável Target

A variável target é definida com base na mediana de `units_sold`:

``` python
limite = df['units_sold'].median()
df['target'] = (df['units_sold'] > limite).astype(int)
```

------------------------------------------------------------------------

## 🛠️ Tecnologias Utilizadas

-   Python\
-   Pandas\
-   NumPy\
-   Scikit-learn\
-   Matplotlib
