#!/bin/bash

# Ativa o ambiente virtual com pyenv
echo "🔁 Ativando ambiente tf-keras..."
eval "$(pyenv init -)"
pyenv activate tf-keras

# Inicia o Jupyter Notebook
echo "🚀 Abrindo Jupyter Notebook..."
jupyter notebook