Q.Sprite.extend 'Explosion',

  init: (p) ->
    @_super Q._extend
        asset: 'particle.png'
        type: Q.SPRITE_NONE
        collisionMask: Q.SPRITE_NONE
        z: 5
        scale: 2
      , p

    @add('2d')

  step: (dt) ->
    @p.vx *= (1 - dt)
    @p.vy *= (1 - dt)
    @p.scale += dt
    if @p.opacity >= 0
      @p.opacity -= dt
    else
      @.destroy()

  draw: (ctx) ->
    ctx.save()
    ctx.globalCompositeOperation = 'lighter'
    @_super(ctx)
    ctx.restore()

