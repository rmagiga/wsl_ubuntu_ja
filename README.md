# WSL Ubuntu Ja

Ansibleを利用した、WSL上のUbuntu 22.04に、日本語の開発環境を構築するプロジェクトです。   


## 必要要件

WSL2上で、Ubuntu 22.04がインストールされているが稼働状態が動かすために必要です。
初期インストールで、ユーザーIDとパスワードが設定されていれば動くようにしています。

- Windows 11
- WSL2
- WSLg
- Ubuntu 22.04

## 使い方

### apt update

現在インストールされているプログラムを最新にしておきます。

```bash
sudo apt update && sudo apt upgrade -y
```

### Ansibleのインストール

Ansibleに必要なシェルもプロジェクトに入っているので、git cloneで持ってきます。  
gitコマンドは、初期状態で入っているはずです。

Ubuntu上で以下のコマンドを実行します。
持ってきたプロジェクト上で、install.shを実行するとAnsibleのインストールが開始されます。
内部で、「sudo」を実行しているので、入力プロンプトが出たら、パスワードを入力してください。

```bash
$ git clone https://github.com/rmagiga/wsl_ubuntu_ja.git
```

```
$ wsl_ubuntu_ja
$ ./install.sh
```

### Ubuntuの日本語化設定を実行する

```bash
$ ./run.sh 01_ubuntu_ja.yml
```

### Dockerのインストール

```bash
$ ./run.sh 02_docker.yml
```
