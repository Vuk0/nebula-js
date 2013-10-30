Q.scene 'Game', (stage) ->
  stage.insert new Q.Background

  player = new Q.Player
    x: Q.center().x
    y: Q.center().y

  stage.insert new Q.Star player: player for [1..(Q.width * Q.height / 5000)]

  stage.insert player

  stage.on 'destroy', ->
    player.destroy

  stage.add('viewport')
  stage.follow(player, x: true, y: true)

