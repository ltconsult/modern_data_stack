# gh cli

type -p curl >/dev/null || sudo apt install curl -y
curl -fsSL https://cli.github.com/packages/githubcli-archive-keyring.gpg | sudo dd of=/usr/share/keyrings/githubcli-archive-keyring.gpg \
&& sudo chmod go+r /usr/share/keyrings/githubcli-archive-keyring.gpg \
&& echo "deb [arch=$(dpkg --print-architecture) signed-by=/usr/share/keyrings/githubcli-archive-keyring.gpg] https://cli.github.com/packages stable main" | sudo tee /etc/apt/sources.list.d/github-cli.list > /dev/null \
&& sudo apt update \
&& sudo apt install gh -y

# SSH KEY - NTConsult

ssh-keygen -t rsa

ssh-keygen -t rsa -b 2048 -C "luciano.teixeira@ltconsult.info"

ls -la /home/spark/.ssh/id_rsa.pub

ls -la /home/spark/.ssh/

cat /home/spark/.ssh/id_rsa.pub.pub


# Clone the especifc branch

git clone -b ltconsult-modern-data-stack https://github.com/ltconsult/airbyte.git
cd airbyte
docker-compose up -d
docker-compose down --volumes --rmi all

# Airflow prepare

mkdir airflow && cd airflow

mkdir -p ./dags ./logs ./plugins
echo -e "AIRFLOW_UID=$(id -u)" > .env

curl -LfO 'https://airflow.apache.org/docs/apache-airflow/2.5.0/docker-compose.yaml'

docker compose up airflow-init

docker-compose up -d

docker-compose down --volumes --rmi all