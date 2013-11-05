Q.scene 'Game', (stage) ->
  player = new Q.SmallShip
    x: Q.center().x
    y: Q.center().y
  player.add("player")
  player.add("minimap")

  stage.insert new Q.Background target: player

  for [1..(Q.width * Q.height / 10000)]
    stage.insert new Q.Star target: player

  stage.insert player

  for [1..5]
    enemy = new Q.SmallShip
      x: player.p.x
      y: player.p.y
    enemy.add("aiHunter")
    stage.insert enemy

  stage.add 'viewport'
  stage.follow(player, x: true, y: true)

