# reactnative_expo React Native+Expo@Docker

# Requirement

- Mac OS Catalina Ver.10.15.6
- docker version 19.03.12, build 48a66213fe
- docker-compose version 1.26.2, build eefe0d31
- Expo clientがセットアップされた検証端末(iPhone or Android)

# Installation

1. gitリポジトリをcloneします

    ```
    git clone https://github.com/tokihidenori/reactnative_expo.git && rm -rf reactnative_expo2/.git
    ```

    ※あらかじめ.gitフォルダは削除しています。

1. .envファイルを追加します

    検証用端末のIPなどを記載します。

    - ADB_IP
        検証端末のIPアドレスを指定してください。カンマ区切りで複数指定可能なようです

    - REACT_NATIVE_PACKAGER_HOSTNAME
        Dockerコンテナ可動端末のIPアドレス

    ```yaml:sample
    ADB_IP=192.168.50.3,192.168.50.4
    REACT_NATIVE_PACKAGER_HOSTNAME=192.168.50.2
    ```

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

1. セットアップが完了したらコンテナからExitします

    ```
    exit
    ```

1. Dockerコンテナを起動します

    ```
    docker-compose up
    ```

1. 表示されたQRコードを検証端末で読み込みするとExpo Client上にアプリ画面が表示されます。