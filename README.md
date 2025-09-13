
# MISE EN PLACE D'UNE CI GITHUB ACTION

## Etapes de mise en place du projet

- Créez des comptes sur Github
- Récupérer le code de shopease
- Provisionner l'infrastructure 
- Créez les fichiers fichiers (Dockerfile, docker-compose , build)
- Mise en place du pipeline CI
- Vérifier notre infrastructure

  

## Presentation des differents outils et Plateformes

- Docker: C'est une plate-forme logicielle qui vous permet de concevoir , tester et déployer rapidement des applications à l'aide de conteneurs.
![docker](data:images/png;base64,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)
Pour Le cours de Docker pour en apprendre plus vous rentre sur : [eazytraining.fr](https://eazytraining.fr/cours/introduction-a-docker/)
>**Note:** Pour en savoir plus je vous invite à aller regarder notre site web ou vous allez retrouver des cours très intéressant sur ces différentes technologies. [EAZYTraining](https://eazytraining.fr/)

  

## Mise en place de l'environnement

### Compte AWS:

Pour créer un compte aws , il suffit de se rendre sur [aws](https://portal.aws.amazon.com/billing/signup#/start/email) et suivre les différentes étapes.

### Compte Gitlab

Pour créer un compte Github, il suffit de se rendre sur [gitlab]([Sign up · GitLab](https://gitlab.com/users/sign_up)).

### Installation de Packer

Pour installer Packer il suffit de suivre les etapes de la documentation officielle : [ici](https://developer.hashicorp.com/packer/tutorials/docker-get-started/get-started-install-cli)

Dans notre cas nous sommes sur un serveur linux:

![Installation de Packer](images/install_paccker1.png)

Une fois l'installation terminée , nous allons vérifier qu'il est bien présent:

![check packer](images/check_packer.png)

### Installation de Terraform

Pour installer Terraform, suivre la procedure de la documentation Officielle: [ici](https://developer.hashicorp.com/terraform/tutorials/aws-get-started/install-cli)

![Installation Terraform](images/install_terraform.png)

Une fois l'installation terminée , nous allons vérifier:

![check terraform](images/check_terraform.png)

### Installation de Docker

Docker sera installer directement sur notre infrastructure que nous allons provisionner via terraform

et il nous suffit juste d'utiliser ces deux commandes:

```bash

curl -fsSL https://get.docker.com -o install-docker.sh

sudo sh install-docker.sh

```

  

## Mise en place de notre Pipeline CI/CD

  

### Step 1: Creation d'un Nouveau Projet sur Gitlab

  

Pour se faire , on va se connecte à notre compte gitlab

  

Puis réaliser les étapes ci-dessous:

- Cliquer sur New Project

![create project](images/gitlab-1.png)

- Create Blank Project

![create project](images/gitlab2.png)

- Valider la configuration


  

Une fois que c'est fait nous allons passer à la rédaction de notre Dockerfile

  

### Step 2: Rédaction du Fichier Dockerfile

Avant de rédiger notre fichier Dockerfile nous allons cloner notre projet en Local sur notre serveur

```bash

https://gitlab.com/ulrichnoumsi98/mini-projet-gitlab.git

cd mini-projet-gitlab

touch Dockerfile

```

Nous pouvons dès à présent rédiger votre fichier Dockerfile

![Dockerfile](images/dockerfile.png)

  

### Step 3: Provisionnement de l'infrastructure

Se rendre sur votre compte aws et realiser les operations suivantes:

+ Créer une paire de clés

+ Créer une accesskey et une secret key

Une fois que c'est fait , créer un dossier infra qui aura pour contenu:

+ Un dossier packer pour notre AMI

+ un dossier terraform pour notre code terraform

```bash

mkdir infra

mkdir -p infra/packer infra/terraform

```

![infra](images/infra1.png)

  

La Hiérarchie des dossiers étant établi nous allons insérer les différents code sources et lancer le provisionnement de notre infrastructure:

#### Build de l'AMI

```bash

cd infra/packer

packer fmt docker.pkr.hcl

packer validate docker.pkr.hcl

packer build docker.pkr.hcl

```

Une fois le build terminée, nous avons une images de disponible sur aws:

![packer](images/packer-ami.png)

#### Provisionnement de l'infrastructure

```bash

cd infra/terraform

terraform init

terraform plan

terraform apply

```

![apply](images/apply.tf.png)

Visualisons sur notre console AWS:

![terraform](images/virtual-server.png)

Une fois que l'environnement est mise en place nous allons configurer notre fichier .gitlab-ci.yml

#### Configuration du fichier .gitlab-ci.yml

Il suffit de suivre quelques instruction et le tour est joué

![gitlab-ci](images/gitlab-ci.png)

Le fichier étant complet nous allons créer une variable sur la plateforme gitlab pour pouvoir contenir la paire de clés qui va nous aider à nous connecter à notre serveur.

Pour se faire , il faut se rendre a **Settings > CI / CD > Variables ** et cliquer sur Add Variable.

+ Key: ID_RSA

+ Value: Mettre la valeur de votre clés

+ Type: File

Réaliser la même opération pour la variable images_NAME qui représente l'URL du registre du conteneur lié au projet spécifique. Cette URL dépend de l'instance GitLab.

![variables](images/variables.png)

Une fois cette configuration terminée, il faut pousser le code sur votre repos et le pipeline devrait se lancer

  

Après quelques instant nous avons les jobs qui vont se lancer :

![job](images/job_start.png)

## Résultat

Comme vous pouvez le voir plus ci-dessous notre site web a bien été déployée sur notre serveur:

![website](images/resultats.png)

## Conclusion
Comme vous pouvez le constater il est tout a fait possible de realiser un deploiement sur n'importe quelle infrastructure a notre disposition
il suffit juste de savoir au préalable quel est le process de façon manuelle et puis de l'adapter dans un script d'automatisation.

------------
Ulrich NOUMSI

Ing Cloud & DevOps

LinkeInd : https://www.linkedin.com/in/ulrich-steve-noumsi/
