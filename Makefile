VENV ?= ./.superduperminikuber
PYTHON_EXE ?= python3
PYTHON_OK := $(shell type -P ${PYTHON_EXE})

install:
	@echo '*********** Checking for Python installation ***********'
ifeq ('$(PYTHON_OK)','')
	$(error package '${PYTHON_EXE}' not found)
else
	@echo '****** Creating virtualenv and installing Ansible ******'
	${PYTHON_EXE} -m venv $(VENV)
	${VENV}/bin/pip install --upgrade pip
	${VENV}/bin/pip install -r requirements-dev.txt
	@echo '*************** Installation Complete ******************'
endif
