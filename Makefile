VENV ?= ./.superduperminikuber
PYTHON_EXE ?= python3
ANSIBLE_VERSION ?= 2.7.8
PYTHON_OK := $(shell type -P ${PYTHON_EXE})

install:
	@echo '*********** Checking for Python installation ***********'
ifeq ('$(PYTHON_OK)','')
	$(error package '${PYTHON_EXE}' not found)
else
	@echo '****** Creating virtualenv and installing Ansible ******'
	$(shell ${PYTHON_EXE} -m venv $(VENV) && \
	${VENV}/bin/pip install --upgrade pip --quiet && \
	${VENV}/bin/pip install ansible==${ANSIBLE_VERSION} --quiet)
	@echo '*************** Installation Complete ******************'
endif
