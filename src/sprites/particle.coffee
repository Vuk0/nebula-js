Q.Sprite.extend 'Particle',
  init: (p) ->
    @_super p,
      asset: 'particle.png'
      type: Q.SPRITE_NONE
      gravity: 0
      z: 5
      opacity: 0.5
      scale: 0.5

    @add('2d')

    @.on 'step', ->
      if @p.scale >= 0
        @p.scale -= 0.01
      else
        @.destroy()

  draw: (ctx) ->
    ctx.globalCompositeOperation = 'lighter'

    @_super(ctx)

