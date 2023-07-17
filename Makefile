setup:
	python3 -m venv ~/.udacity_capstone
	source ~/.udacity_capstone/bin/activate
	
install:
	echo "Installing: dependencies..."
	pip install --upgrade pip &&\
	    pip install -r app/requirements.txt
	echo "Installing: hadolint..."
	./bin/install_hadolint.sh
	echo
	echo "Installing: kubectl"
	./bin/install_kubectl.sh
	echo
	echo "Installing: eksctl"
	./bin/install_eksctl.sh
	
test:

lint:
	./bin/hadolint app/Dockerfile
	pylint --disable=R,C,W1203,W1202 app/app.py
	
run-app:
	python3 app/app.py
	
build-docker:
	./bin/build_docker.sh

run-docker: build-docker
	./bin/run_docker.sh
	
upload-docker: upload-docker
	./bin/upload_docker.sh
	
eks-create-cluster:
	./bin/eks_create_cluster.sh	
