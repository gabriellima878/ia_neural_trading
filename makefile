# Makefile para automatizar tarefas do projeto IA Neural Trading

# Nome do ambiente virtual (ajuste se necessário)
ENV=tf-keras

# Comando para inicializar o ambiente com pyenv
init:
	@echo "🔧 Ativando ambiente virtual com pyenv..."
	@export PYENV_ROOT="$$HOME/.pyenv" && \
	export PATH="$$PYENV_ROOT/bin:$$PATH" && \
	eval "$$(pyenv init -)" && \
	eval "$$(pyenv virtualenv-init -)" && \
	pyenv activate $(ENV) && \
	echo "✅ Ambiente ativado com sucesso!"

# Instala dependências do projeto
install:
	@echo "📦 Instalando dependências do projeto..."
	@pip install -r requirements.txt

# Inicia o Jupyter Notebook com o ambiente virtual ativo
notebook:
	@echo "🚀 Iniciando Jupyter Notebook com ambiente $(ENV)..."
	@export PYENV_ROOT="$$HOME/.pyenv" && \
	export PATH="$$PYENV_ROOT/bin:$$PATH" && \
	eval "$$(pyenv init -)" && \
	eval "$$(pyenv virtualenv-init -)" && \
	pyenv activate $(ENV) && \
	jupyter notebook

# Limpa arquivos temporários e desnecessários
clean:
	@echo "🧹 Limpando arquivos temporários..."
	@find . -name "__pycache__" -type d -exec rm -r {} + || true
	@rm -rf .ipynb_checkpoints
	@rm -f *.pyc
	@rm -f *.pyo
	@rm -f *.DS_Store
	@echo "✅ Limpeza concluída."

# Exibe ajuda
help:
	@echo ""
	@echo "📘 Comandos disponíveis:"
	@echo "  make init       → Ativa o ambiente virtual com pyenv"
	@echo "  make install    → Instala as dependências do projeto (requirements.txt)"
	@echo "  make notebook   → Inicia o Jupyter Notebook no ambiente virtual"
	@echo "  make clean      → Remove arquivos temporários"
	@echo "  make help       → Exibe esta ajuda"
	@echo ""