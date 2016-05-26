# 名前
Language Switcher らくらく言語切替スイッチ


# 概要
Language Switcher は Salesforce の UI 言語を簡単かつスムーズに変更できる Lightning コンポーネントです。
Salesforce のマルチ言語での利用環境を快適にしてくれます。

コンポーネントは以下よりインストールが可能です。
- [AppExchange](https://appexchange.salesforce.com/listingDetail?listingId=a0N3000000DptX2EAJ)
- [AppExchangeJapan](https://appexchangejp.salesforce.com/listingDetail?listingId=a0N3000000DpsxaEAB)

実際の使用感などはデモビデオをご覧ください(YouTube)
 - [英語バージョン](https://www.youtube.com/watch?v=KiyNhFhrkFw)
 - [日本語バージョン](https://www.youtube.com/watch?v=704P7Pp0fXU)


# ソースコードのデプロイ方法
gulpスクリプトを利用してSalesforce環境へコードをデプロイできます(EE/UE/DE)。以下の手順に従ってください。

1. .envファイルをこのディレクトリに作成します。
```
SF_USERNAME="Your Salesforce Username"
SF_PASSWORD="Password + Security Token"
```
2. gulpスクリプトを実行します。
```Shell
$ npm install
$ npm run gulp
```



# 利用方法
このコンポーエントはLightnigアプリケーションビルダーで作成するLightningアプリで利用できます。
Lightning App Builder上では、２つの言語を切り替える指定できます。
また、ボタン及びボタンの注釈のテキストをカスタマイズすることができます。
