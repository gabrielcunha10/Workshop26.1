# 📊 Análise de Vendas Globais da BMW

Este projeto aplica técnicas de Machine Learning em um dataset de vendas
globais da BMW, com o objetivo de prever se as vendas (`units_sold`)
estão acima ou abaixo da mediana, caracterizando um problema de
classificação binária.

------------------------------------------------------------------------

## 📁 Estrutura do Projeto

    📦 Workshop26.1
     ┣ 📂 dia04(machine_learning_python)
     ┃ ┣ 📂 tabela_utilizada
     ┃ ┃ ┗ 📄 bmw_global_sales_dataset.csv
     ┃ ┗ 📄 desafio_19_03.ipynb
     ┗ 📄 README.md

------------------------------------------------------------------------

## 🎯 Objetivo

Construir um modelo de classificação que determine:

-   Classe 1 → vendas acima da mediana\
-   Classe 0 → vendas abaixo ou iguais à mediana

------------------------------------------------------------------------

## 📥 Carregamento dos Dados

A base de dados está localizada em:

    tabela_utilizada/bmw_global_sales_dataset.csv

Carregamento:

``` python
import pandas as pd

df = pd.read_csv('tabela_utilizada/bmw_global_sales_dataset.csv')
```

------------------------------------------------------------------------

## 🔍 Exploração dos Dados

Foram utilizadas funções para entender o dataset:

-   `head()` → visualizar registros iniciais\
-   `info()` → tipos de dados\
-   `describe()` → estatísticas descritivas

------------------------------------------------------------------------

## 🧹 Tratamento dos Dados

-   Verificação de valores nulos\
-   Criação da variável target com base na mediana de `units_sold`\
-   Seleção das variáveis relevantes

``` python
limite = df['units_sold'].median()
df['target'] = (df['units_sold'] > limite).astype(int)
```

------------------------------------------------------------------------

## ⚙️ Pré-processamento

-   Codificação de variáveis categóricas com `get_dummies()`\
-   Normalização dos dados com `StandardScaler`

------------------------------------------------------------------------

## 🔢 Separação dos Dados

-   Definição de variáveis independentes (X) e dependente (y)\
-   Divisão em treino e teste com `train_test_split`

------------------------------------------------------------------------

## 🤖 Modelagem

Foram utilizados três modelos:

-   Regressão Logística\
-   Árvore de Decisão\
-   Random Forest

------------------------------------------------------------------------

## 📊 Avaliação dos Modelos

Os modelos foram avaliados utilizando:

-   Acurácia\
-   Matriz de confusão

------------------------------------------------------------------------

## 💾 Salvamento do Modelo

O modelo final foi salvo para reutilização futura:

``` python
import joblib

joblib.dump(modelo_rf, 'modelo_bmw.pkl')
```

------------------------------------------------------------------------

## 🚀 Conclusão

O projeto seguiu todas as etapas de um pipeline de Machine Learning,
desde o tratamento dos dados até a construção, avaliação e salvamento do
modelo, permitindo a realização de previsões futuras sem necessidade de
novo treinamento.
