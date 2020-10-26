# reactnative_expo React Native+Expo On Docker

# Requirement

- Mac OS Catalina Ver.10.15.6
- docker version 19.03.12, build 48a66213fe
- docker-compose version 1.26.2, build eefe0d31
- Expo clientがセットアップされた検証端末(iPhone or Android)

# Installation

1. プロジェクト名をあらかじめ決めておきます。

1. gitリポジトリをcloneします

    ```
    git clone https://github.com/tokihidenori/reactnative_expo_on_docker.git {プロジェクト名} && rm -rf {プロジェクト名}/.git
    ```

    ※あらかじめ.gitフォルダは削除しています。

1. プロジェクト名のディレクトリへ移動します。

    ```
    cd {プロジェクト名}
    ```

1. 初期化用シェルスクリプトのパーミッションを変更します。

    ```
    chmod 755 ./initialize.sh
    ```

1. 初期化用シェルスクリプトを実行します。

    ```
    ./initialize.sh {プロジェクト名}
    ```

1. 
