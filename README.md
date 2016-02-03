# 週報を書けって怒ってくれるlambda
[AWSのドキュメント](https://docs.aws.amazon.com/ja_jp/lambda/latest/dg/with-scheduled-events.html)

毎週日曜日の17時に週報書けって言ってくれます
タイムゾーンは良くわかりません

```
cron(0 17 ? * SUN *)
```

現状hentekoのAWSアカウントで運用してます

index.coffeeのwebhookUriは各自用意して毎回書いてbuildしてください

# build

```
$ npm install
$ gulp build
```

できたlambda.zipをAWS Lambdaにアップロードする
