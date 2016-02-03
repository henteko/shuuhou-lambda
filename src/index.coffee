webhookUri = 'webhook url' # TODO: 書き換えてくれ！
channel = '#shuuhou'

Slack = require 'slack-node'
slack = new Slack();
slack.setWebhook(webhookUri);

exports.handler = (event, context) ->
  slack.webhook {
    channel: channel,
    username: "bot",
    text: "<!channel> 週報書こうね!"
  }, (err, response) ->
    console.log(response)

  return
