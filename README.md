# reactnative_expo# React Native+Expo@Docker

# Requirement

- Mac OS Catalina Ver.10.15.6
- docker version 19.03.12, build 48a66213fe
- docker-compose version 1.26.2, build eefe0d31

# Installation

1. .envファイルを更新します

    検証用端末のIPなど設定する必要があります。

    - ADB_IP
        検証端末のIPアドレスを指定してください。カンマ区切りで複数指定可能なようです

    - REACT_NATIVE_PACKAGER_HOSTNAME
        Dockerコンテナ可動端末のIPアドレス

1. Dockerコンテナをビルドします

    ```
    docker-compose build
    ```

1. Dockerコンテナへ接続します

    ```
    docker-compose run --rm react_native bash --logi
    ```

1. expoプロジェクトを作成します

    ```
    expo init .
    ```

1. プロジェクトテンプレートを選択するとプロジェクトのセットアップが開始されます

    ```
    ? Choose a template: (Use arrow keys)
    ----- Managed workflow -----
    blank                 a minimal app as clean as an empty canvas
    ❯ blank (TypeScript)    same as blank but with TypeScript configuration
    tabs                  several example screens and tabs using react-navigation
    ----- Bare workflow -----
    minimal               bare and minimal, just the essentials to get you started
    minimal (TypeScript)  same as minimal but with TypeScript configuration
    ```

1. セットアップが完了したらコンテナから抜けます

    ```
    exit
    ```

1. Dockerコンテナを起動します

    ```
    docker-compose up
    ```
