#!/bin/bash
clone() {
	git clone https://github.com/jordan-grindrod/python_exercises

	mv ./python_exercises/hangman.py .

	touch README.py

	echo "this is a python application" > README.py

	python3 hangman.py
}

pip-thing() {
	pip3 install -r ./python_exercises/pip_dependencies.txt

}

virtual-environment(){
	sudo pip3 install virtualenv
	virtualenv venv1
	source venv1/bin/activate
}
pip-thing
virtual-environment
clone
deactivate

