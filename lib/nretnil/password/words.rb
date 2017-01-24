#!/bin/env ruby
# encoding: UTF-8
# frozen_string_literal: true

module Nretnil
  # Password Class
  class Password
    VERBS = %w(
      is
      has
      get
      see
      need
      know
      would
      find
      take
      want
      does
      learn
      become
      come
      include
      thank
      provide
      create
      add
      understand
      consider
      choose
      develop
      remember
      determine
      grow
      allow
      supply
      bring
      improve
      maintain
      begin
      exist
      tend
      enjoy
      perform
      decide
      identify
      continue
      protect
      require
      occur
      write
      approach
      avoid
      prepare
      build
      achieve
      believe
      receive
      seem
      discuss
      realize
      contain
      follow
      refer
      solve
      describe
      prefer
      prevent
      discover
      ensure
      expect
      invest
      reduce
      speak
      appear
      explain
      explore
      involve
      lose
      afford
      agree
      hear
      remain
      represent
      apply
      forget
      recommend
      rely
      vary
      generate
      obtain
      accept
      communicate
      complain
      depend
      enter
      happen
      indicate
      suggest
      survive
      appreciate
      compare
      imagine
      manage
      differ
      encourage
      expand
      prove
      react
      recognize
      relax
      replace
      borrow
      earn
      emphasize
      enable
      operate
      reflect
      send
      anticipate
      assume
      engage
      enhance
      examine
      install
      participate
      intend
      introduce
      relate
      settle
      assure
      attract
      distribute
      overcome
      owe
      succeed
      suffer
      throw
      acquire
      adapt
      adjust
      argue
      arise
      confirm
      encouraging
      incorporate
      justify
      organize
      ought
      possess
      relieve
      retain
      shut
      calculate
      compete
      consult
      deliver
      extend
      investigate
      negotiate
      qualify
      retire
      rid
      weigh
      arrive
      attach
      behave
      celebrate
      convince
      disagree
      establish
      ignore
      imply
      insist
      pursue
      remaining
      specify
      warn
      accuse
      admire
      admit
      adopt
      announce
      apologize
      approve
      attend
      belong
      commit
      criticize
      deserve
      destroy
      hesitate
      illustrate
      inform
      manufacturing
      persuade
      pour
      propose
      remind
      shall
      submit
      suppose
      translate
      be
      have
      use
      make
      look
      help
      go
      being
      think
      read
      keep
      start
      give
      play
      feel
      put
      set
      change
      say
      cut
      show
      try
      check
      call
      move
      pay
      let
      increase
      turn
      ask
      buy
      guard
      hold
      offer
      travel
      cook
      dance
      excuse
      live
      purchase
      deal
      mean
      fall
      produce
      search
      spend
      talk
      upset
      tell
      cost
      drive
      support
      remove
      return
      run
      appropriate
      reserve
      leave
      reach
      rest
      serve
      watch
      charge
      break
      stay
      visit
      affect
      cover
      report
      rise
      walk
      pick
      lift
      mix
      stop
      teach
      concern
      fly
      born
      gain
      save
      stand
      fail
      lead
      listen
      worry
      express
      handle
      meet
      release
      sell
      finish
      press
      ride
      spread
      spring
      wait
      display
      flow
      hit
      shoot
      touch
      cancel
      cry
      dump
      push
      select
      conflict
      die
      eat
      fill
      jump
      kick
      pass
      pitch
      treat
      abuse
      beat
      burn
      deposit
      print
      raise
      sleep
      advance
      connect
      consist
      contribute
      draw
      fix
      hire
      join
      kill
      sit
      tap
      win
      attack
      claim
      drag
      drink
      guess
      pull
      wear
      wonder
      count
      doubt
      feed
      impress
      repeat
      seek
      sing
      slide
      strip
      wish
      collect
      combine
      command
      dig
      divide
      hang
      hunt
      march
      mention
      smell
      survey
      tie
      escape
      expose
      gather
      hate
      repair
      scratch
      strike
      employ
      hurt
      laugh
      lay
      respond
      split
      strain
      struggle
      swim
      train
      wash
      waste
      convert
      crash
      fold
      grab
      hide
      miss
      permit
      quote
      recover
      resolve
      roll
      sink
      slip
      suspect
      swing
      twist
      concentrate
      estimate
      prompt
      refuse
      regret
      reveal
      rush
      shake
      shift
      shine
      steal
      suck
      surround
      bear
      dare
      delay
      hurry
      invite
      kiss
      marry
      pop
      pray
      pretend
      punch
      quit
      reply
      resist
      rip
      rub
      smile
      spell
      stretch
      tear
      wake
      wrap
      was
      like
      even
      film
      water
      been
      well
      were
      example
      own
      study
      must
      form
      air
      place
      number
      part
      field
      fish
      process
      heat
      hand
      experience
      job
      book
      end
      point
      type
      value
      body
      market
      guide
      interest
      state
      radio
      course
      company
      price
      size
      card
      list
      mind
      trade
      line
      care
      group
      risk
      word
      force
      light
      name
      school
      amount
      order
      practice
      research
      sense
      service
      piece
      web
      boss
      sport
      page
      term
      test
      answer
      sound
      focus
      matter
      soil
      board
      oil
      picture
      access
      garden
      open
      range
      rate
      reason
      according
      site
      demand
      exercise
      image
      case
      cause
      coast
      age
      boat
      record
      result
      section
      building
      mouse
      cash
      class
      dry
      plan
      store
      tax
      involved
      side
      space
      rule
      weather
      figure
      man
      model
      source
      earth
      program
      design
      feature
      purpose
      question
      rock
      act
      birth
      dog
      object
      scale
      sun
      fit
      note
      profit
      related
      rent
      speed
      style
      war
      bank
      content
      craft
      bus
      exchange
      eye
      fire
      position
      pressure
      stress
      advantage
      benefit
      box
      complete
      frame
      issue
      limited
      step
      cycle
      face
      interested
      metal
      paint
      review
      room
      screen
      structure
      view
      account
      ball
      concerned
      discipline
      ready
      share
      balance
      bit
      black
      bottom
      gift
      impact
      machine
      shape
      tool
      wind
      address
      average
      career
      culture
      pot
      sign
      table
      task
      condition
      contact
      credit
      egg
      hope
      ice
      network
      separate
      attempt
      date
      effect
      link
      perfect
      post
      star
      voice
      challenge
      friend
      warm
      brush
      couple
      debate
      exit
      experienced
      function
      lack
      plant
      spot
      summer
      taste
      theme
      track
      wing
      brain
      button
      click
      correct
      desire
      fixed
      foot
      gas
      influence
      notice
      rain
      wall
      base
      damage
      distance
      pair
      staff
      sugar
      target
      text
      author
      complicated
      discount
      file
      ground
      lesson
      officer
      phase
      reference
      register
      secure
      sky
      stage
      stick
      title
      trouble
      advanced
      bowl
      bridge
      campaign
      club
      edge
      evidence
      fan
      letter
      lock
      option
      organized
      pack
      park
      quarter
      skin
      sort
      weight
      baby
      carry
      dish
      exact
      factor
      fruit
      muscle
      traffic
      trip
      appeal
      chart
      gear
      land
      log
      lost
      net
      season
      spirit
      tree
      wave
      belt
      bench
      closed
      commission
      copy
      drop
      firm
      frequent
      progress
      project
      stuff
      ticket
      tour
      angle
      blue
      breakfast
      doctor
      dot
      dream
      essay
      father
      fee
      finance
      juice
      limit
      luck
      milk
      mixed
      mouth
      pipe
      please
      seat
      stable
      storm
      team
      amazing
      bat
      beach
      blank
      busy
      catch
      chain
      cream
      crew
      detail
      detailed
      interview
      kid
      mark
      match
      pain
      pleasure
      score
      screw
      sex
      sharp
      shop
      shower
      suit
      tone
      window
      wise
      band
      block
      bone
      calendar
      cap
      coat
      contest
      court
      cup
      district
      finger
      garage
      guarantee
      hole
      hook
      implement
      layer
      lecture
      lie
      married
      narrow
      nose
      partner
      profile
      respect
      rice
      schedule
      telephone
      tip
      bag
      battle
      bed
      bill
      bother
      cake
      code
      curve
      dimension
      ease
      farm
      fight
      gap
      grade
      horse
      host
      husband
      loan
      mistake
      nail
      noise
      occasion
      package
      pause
      phrase
      race
      sand
      sentence
      shoulder
      smoke
      stomach
      string
      surprised
      towel
      vacation
      wheel
      arm
      associate
      bet
      blow
      border
      branch
      breast
      buddy
      bunch
      chip
      coach
      cross
      document
      draft
      dust
      floor
      golf
      habit
      iron
      judge
      knife
      landscape
      league
      mail
      mess
      parent
      pattern
      pin
      pool
      pound
      request
      salary
      shame
      shelter
      shoe
      tackle
      tank
      trust
      assist
      bake
      bar
      bell
      bike
      blame
      brick
      chair
      closet
      clue
      collar
      comment
      conference
      devil
      diet
      fear
      fuel
      glove
      jacket
      lunch
      monitor
      mortgage
      nurse
      pace
      panic
      peak
      provided
      reward
      row
      sandwich
      shock
      spite
      spray
      surprise
      till
      transition
      weekend
      yard
      alarm
      bend
      bicycle
      bite
      blind
      bottle
      cable
      candle
      clerk
      cloud
      concert
      counter
      dirty
      flower
      grandfather
      harm
      knee
      lawyer
      load
      loose
      mirror
      neck
      pension
      plate
      pleased
      proposed
      ruin
      ship
      skirt
      slice
      snow
      stroke
      switch
      tired
      trash
      tune
      worried
      zone
      anger
      award
      bid
      boot
      bug
      camp
      candy
      carpet
      cat
      champion
      channel
      clock
      comfort
      cow
      crack
      disappointed
      empty
      engineer
      entrance
      fault
      grass
      guy
      highlight
      island
      joke
      jury
      leg
      lip
      mate
      nerve
      passage
      pen
      pride
      priest
      promise
      resort
      ring
      roof
      rope
      sail
      scheme
      script
      slight
      smart
      sock
      station
      toe
      tower
      truck
      witness
    ).freeze
    NOUNS = %w(
      account
      achiever
      acoustics
      act
      action
      activity
      actor
      addition
      adjustment
      advertisement
      advice
      aftermath
      afternoon
      afterthought
      agreement
      air
      airplane
      airport
      alarm
      alley
      amount
      amusement
      anger
      angle
      animal
      answer
      ant
      ants
      apparatus
      apparel
      apple
      apples
      appliance
      approval
      arch
      argument
      arithmetic
      arm
      army
      art
      attack
      attempt
      attention
      attraction
      aunt
      authority
      babies
      baby
      back
      badge
      bag
      bait
      balance
      ball
      balloon
      balls
      banana
      band
      base
      baseball
      basin
      basket
      basketball
      bat
      bath
      battle
      bead
      beam
      bean
      bear
      bears
      beast
      bed
      bedroom
      beds
      bee
      beef
      beetle
      beggar
      beginner
      behavior
      belief
      believe
      bell
      bells
      berry
      bike
      bikes
      bird
      birds
      birth
      birthday
      bit
      bite
      blade
      blood
      blow
      board
      boat
      boats
      body
      bomb
      bone
      book
      books
      boot
      border
      bottle
      boundary
      box
      boy
      boys
      brain
      brake
      branch
      brass
      bread
      breakfast
      breath
      brick
      bridge
      brother
      brothers
      brush
      bubble
      bucket
      building
      bulb
      bun
      burn
      burst
      bushes
      business
      butter
      button
      cabbage
      cable
      cactus
      cake
      cakes
      calculator
      calendar
      camera
      camp
      can
      cannon
      canvas
      cap
      caption
      car
      card
      care
      carpenter
      carriage
      cars
      cart
      cast
      cat
      cats
      cattle
      cause
      cave
      celery
      cellar
      cemetery
      cent
      chain
      chair
      chairs
      chalk
      chance
      change
      channel
      cheese
      cherries
      cherry
      chess
      chicken
      chickens
      children
      chin
      church
      circle
      clam
      class
      clock
      clocks
      cloth
      cloud
      clouds
      clover
      club
      coach
      coal
      coast
      coat
      cobweb
      coil
      collar
      color
      comb
      comfort
      committee
      company
      comparison
      competition
      condition
      connection
      control
      cook
      copper
      copy
      cord
      cork
      corn
      cough
      country
      cover
      cow
      cows
      crack
      cracker
      crate
      crayon
      cream
      creator
      creature
      credit
      crib
      crime
      crook
      crow
      crowd
      crown
      crush
      cry
      cub
      cup
      current
      curtain
      curve
      cushion
      dad
      daughter
      day
      death
      debt
      decision
      deer
      degree
      design
      desire
      desk
      destruction
      detail
      development
      digestion
      dime
      dinner
      dinosaurs
      direction
      dirt
      discovery
      discussion
      disease
      disgust
      distance
      distribution
      division
      dock
      doctor
      dog
      dogs
      doll
      dolls
      donkey
      door
      downtown
      drain
      drawer
      dress
      drink
      driving
      drop
      drug
      drum
      duck
      ducks
      dust
      ear
      earth
      earthquake
      edge
      education
      effect
      egg
      eggnog
      eggs
      elbow
      end
      engine
      error
      event
      example
      exchange
      existence
      expansion
      experience
      expert
      eye
      eyes
      face
      fact
      fairies
      fall
      family
      fan
      fang
      farm
      farmer
      father
      father
      faucet
      fear
      feast
      feather
      feeling
      feet
      fiction
      field
      fifth
      fight
      finger
      finger
      fire
      fireman
      fish
      flag
      flame
      flavor
      flesh
      flight
      flock
      floor
      flower
      flowers
      fly
      fog
      fold
      food
      foot
      force
      fork
      form
      fowl
      frame
      friction
      friend
      friends
      frog
      frogs
      front
      fruit
      fuel
      furniture
      game
      garden
      gate
      geese
      ghost
      giants
      giraffe
      girl
      girls
      glass
      glove
      glue
      goat
      gold
      goldfish
      goodbye
      goose
      government
      governor
      grade
      grain
      grandfather
      grandmother
      grape
      grass
      grip
      ground
      group
      growth
      guide
      guitar
      gun
      hair
      haircut
      hall
      hammer
      hand
      hands
      harbor
      harmony
      hat
      hate
      head
      health
      hearing
      heart
      heat
      help
      hen
      hill
      history
      hobbies
      hole
      holiday
      home
      honey
      hook
      hope
      horn
      horse
      horses
      hose
      hospital
      hot
      hour
      house
      houses
      humor
      hydrant
      ice
      icicle
      idea
      impulse
      income
      increase
      industry
      ink
      insect
      instrument
      insurance
      interest
      invention
      iron
      island
      jail
      jam
      jar
      jeans
      jelly
      jellyfish
      jewel
      join
      joke
      journey
      judge
      juice
      jump
      kettle
      key
      kick
      kiss
      kite
      kitten
      kittens
      kitty
      knee
      knife
      knot
      knowledge
      laborer
      lace
      ladybug
      lake
      lamp
      land
      language
      laugh
      lawyer
      lead
      leaf
      learning
      leather
      leg
      legs
      letter
      letters
      lettuce
      level
      library
      lift
      light
      limit
      line
      linen
      lip
      liquid
      list
      lizards
      loaf
      lock
      locket
      look
      loss
      love
      low
      lumber
      lunch
      lunchroom
      machine
      magic
      maid
      mailbox
      man
      manager
      map
      marble
      mark
      market
      mask
      mass
      match
      meal
      measure
      meat
      meeting
      memory
      men
      metal
      mice
      middle
      milk
      mind
      mine
      minister
      mint
      minute
      mist
      mitten
      mom
      money
      monkey
      month
      moon
      morning
      mother
      motion
      mountain
      mouth
      move
      muscle
      music
      nail
      name
      nation
      neck
      need
      needle
      nerve
      nest
      net
      news
      night
      noise
      north
      nose
      note
      notebook
      number
      nut
      oatmeal
      observation
      ocean
      offer
      office
      oil
      operation
      opinion
      orange
      oranges
      order
      organization
      ornament
      oven
      owl
      owner
      page
      pail
      pain
      paint
      pan
      pancake
      paper
      parcel
      parent
      park
      part
      partner
      party
      passenger
      paste
      patch
      payment
      peace
      pear
      pen
      pencil
      person
      pest
      pet
      pets
      pickle
      picture
      pie
      pies
      pig
      pigs
      pin
      pipe
      pizzas
      place
      plane
      planes
      plant
      plantation
      plants
      plastic
      plate
      play
      playground
      pleasure
      plot
      plough
      pocket
      point
      poison
      police
      polish
      pollution
      popcorn
      porter
      position
      pot
      potato
      powder
      power
      price
      print
      prison
      process
      produce
      profit
      property
      prose
      protest
      pull
      pump
      punishment
      purpose
      push
      quarter
      quartz
      queen
      question
      quicksand
      quiet
      quill
      quilt
      quince
      quiver
      rabbit
      rabbits
      rail
      railway
      rain
      rainstorm
      rake
      range
      rat
      rate
      ray
      reaction
      reading
      reason
      receipt
      recess
      record
      regret
      relation
      religion
      representative
      request
      respect
      rest
      reward
      rhythm
      rice
      riddle
      rifle
      ring
      rings
      river
      road
      robin
      rock
      rod
      roll
      roof
      room
      root
      rose
      route
      rub
      rule
      run
      sack
      sail
      salt
      sand
      scale
      scarecrow
      scarf
      scene
      scent
      school
      science
      scissors
      screw
      sea
      seashore
      seat
      secretary
      seed
      selection
      self
      sense
      servant
      shade
      shake
      shame
      shape
      sheep
      sheet
      shelf
      ship
      shirt
      shock
      shoe
      shoes
      shop
      show
      side
      sidewalk
      sign
      silk
      silver
      sink
      sister
      sisters
      size
      skate
      skin
      skirt
      sky
      slave
      sleep
      sleet
      slip
      slope
      smash
      smell
      smile
      smoke
      snail
      snails
      snake
      snakes
      sneeze
      snow
      soap
      society
      sock
      soda
      sofa
      son
      song
      songs
      sort
      sound
      soup
      space
      spade
      spark
      spiders
      sponge
      spoon
      spot
      spring
      spy
      square
      squirrel
      stage
      stamp
      star
      start
      statement
      station
      steam
      steel
      stem
      step
      stew
      stick
      sticks
      stitch
      stocking
      stomach
      stone
      stop
      store
      story
      stove
      stranger
      straw
      stream
      street
      stretch
      string
      structure
      substance
      sugar
      suggestion
      suit
      summer
      sun
      support
      surprise
      sweater
      swim
      swing
      system
      table
      tail
      talk
      tank
      taste
      tax
      teaching
      team
      teeth
      temper
      tendency
      tent
      territory
      test
      texture
      theory
      thing
      things
      thought
      thread
      thrill
      throat
      throne
      thumb
      thunder
      ticket
      tiger
      time
      tin
      title
      toad
      toe
      toes
      tomatoes
      tongue
      tooth
      toothbrush
      toothpaste
      top
      touch
      town
      toy
      toys
      trade
      trail
      train
      trains
      tramp
      transport
      tray
      treatment
      tree
      trees
      trick
      trip
      trouble
      trousers
      truck
      trucks
      tub
      turkey
      turn
      twig
      twist
      umbrella
      uncle
      underwear
      unit
      use
      vacation
      value
      van
      vase
      vegetable
      veil
      vein
      verse
      vessel
      vest
      view
      visitor
      voice
      volcano
      volleyball
      voyage
      walk
      wall
      war
      wash
      waste
      watch
      water
      wave
      waves
      wax
      way
      wealth
      weather
      week
      weight
      wheel
      whip
      whistle
      wilderness
      wind
      window
      wine
      wing
      winter
      wire
      wish
      woman
      women
      wood
      wool
      word
      work
      worm
      wound
      wren
      wrench
      wrist
      writer
      writing
      yak
      yam
      yard
      yarn
      year
      yoke
      zebra
      zephyr
      zinc
      zipper
      zoo
    ).freeze
    ANIMALS = [
      'aardvark',
      'addax',
      'alligator',
      'alpaca',
      'anteater',
      'antelope',
      'aoudad',
      'ape',
      'argali',
      'armadillo',
      'ass',
      'baboon',
      'badger',
      'basilisk',
      'bat',
      'bear',
      'beaver',
      'bighorn',
      'bison',
      'boar',
      'budgerigar',
      'buffalo',
      'bull',
      'bunny',
      'burro',
      'camel',
      'canary',
      'capybara',
      'cat',
      'chameleon',
      'chamois',
      'cheetah',
      'chimpanzee',
      'chinchilla',
      'chipmunk',
      'civet',
      'coati',
      'colt',
      'cony',
      'cougar',
      'cow',
      'coyote',
      'crocodile',
      'crow',
      'deer',
      'dingo',
      'doe',
      'dog',
      'donkey',
      'dormouse',
      'dromedary',
      'duckbill',
      'dugong',
      'eland',
      'elephant',
      'elk',
      'ermine',
      'ewe',
      'fawn',
      'ferret',
      'finch',
      'fish',
      'fox',
      'frog',
      'gazelle',
      'gemsbok',
      'gila monster',
      'giraffe',
      'gnu',
      'goat',
      'gopher',
      'gorilla',
      'grizzly bear',
      'ground hog',
      'guanaco',
      'guinea pig',
      'hamster',
      'hare',
      'hartebeest',
      'hedgehog',
      'hippopotamus',
      'hog',
      'horse',
      'hyena',
      'ibex',
      'iguana',
      'impala',
      'jackal',
      'jaguar',
      'jerboa',
      'kangaroo',
      'kid',
      'kinkajou',
      'kitten',
      'koala',
      'koodoo',
      'lamb',
      'lemur',
      'leopard',
      'lion',
      'lizard',
      'llama',
      'lovebird',
      'lynx',
      'mandrill',
      'mare',
      'marmoset',
      'marten',
      'mink',
      'mole',
      'mongoose',
      'monkey',
      'moose',
      'mountain goat',
      'mouse',
      'mule',
      'musk deer',
      'muskox',
      'muskrat',
      'mustang',
      'mynah bird',
      'newt',
      'ocelot',
      'okapi',
      'opossum',
      'orangutan',
      'oryx',
      'otter',
      'ox',
      'panda',
      'panther',
      'parakeet',
      'parrot',
      'peccary',
      'pig',
      'platypus',
      'polar bear',
      'pony',
      'porcupine',
      'porpoise',
      'prairie dog',
      'pronghorn',
      'puma',
      'puppy',
      'quagga',
      'rabbit',
      'raccoon',
      'ram',
      'rat',
      'reindeer',
      'reptile',
      'rhinoceros',
      'roebuck',
      'salamander',
      'seal',
      'sheep',
      'shrew',
      'silver fox',
      'skunk',
      'sloth',
      'snake',
      'springbok',
      'squirrel',
      'stallion',
      'steer',
      'tapir',
      'tiger',
      'toad',
      'turtle',
      'vicuna',
      'walrus',
      'warthog',
      'waterbuck',
      'weasel',
      'whale',
      'wildcat',
      'wolf',
      'wolverine',
      'wombat',
      'woodchuck',
      'yak',
      'zebra',
      'zebu'
    ].freeze
    ADJECTIVES = %w(
      different
      used
      important
      every
      large
      available
      popular
      able
      basic
      known
      various
      difficult
      several
      united
      historical
      hot
      useful
      mental
      scared
      additional
      emotional
      old
      political
      similar
      healthy
      financial
      medical
      traditional
      federal
      entire
      strong
      actual
      significant
      successful
      electrical
      expensive
      pregnant
      intelligent
      interesting
      poor
      happy
      responsible
      cute
      helpful
      recent
      willing
      nice
      wonderful
      impossible
      serious
      huge
      rare
      technical
      typical
      competitive
      critical
      electronic
      immediate
      aware
      educational
      environmental
      global
      legal
      relevant
      accurate
      capable
      dangerous
      dramatic
      efficient
      powerful
      foreign
      hungry
      practical
      psychological
      severe
      suitable
      numerous
      sufficient
      unusual
      consistent
      cultural
      existing
      famous
      pure
      afraid
      obvious
      careful
      latter
      unhappy
      acceptable
      aggressive
      boring
      distinct
      eastern
      logical
      reasonable
      strict
      administrative
      automatic
      civil
      former
      massive
      southern
      unfair
      visible
      alive
      angry
      desperate
      exciting
      friendly
      lucky
      realistic
      sorry
      ugly
      unlikely
      anxious
      comprehensive
      curious
      impressive
      informal
      inner
      pleasant
      sexual
      sudden
      terrible
      unable
      weak
      wooden
      asleep
      confident
      conscious
      decent
      embarrassed
      guilty
      lonely
      mad
      nervous
      odd
      remarkable
      substantial
      suspicious
      tall
      tiny
      more
      some
      one
      all
      many
      most
      other
      such
      even
      new
      just
      good
      any
      each
      much
      own
      great
      another
      same
      few
      free
      right
      still
      best
      public
      human
      both
      local
      sure
      better
      general
      specific
      enough
      long
      small
      less
      high
      certain
      little
      common
      next
      simple
      hard
      past
      big
      possible
      particular
      real
      major
      personal
      current
      left
      national
      least
      natural
      physical
      short
      last
      single
      individual
      main
      potential
      professional
      international
      lower
      open
      according
      alternative
      special
      working
      true
      whole
      clear
      dry
      easy
      cold
      commercial
      full
      low
      primary
      worth
      necessary
      positive
      present
      close
      creative
      green
      late
      fit
      glad
      proper
      complex
      content
      due
      effective
      middle
      regular
      fast
      independent
      original
      wide
      beautiful
      complete
      active
      negative
      safe
      visual
      wrong
      ago
      quick
      ready
      straight
      white
      direct
      excellent
      extra
      junior
      pretty
      unique
      classic
      final
      overall
      private
      separate
      western
      alone
      familiar
      official
      perfect
      bright
      broad
      comfortable
      flat
      rich
      warm
      young
      heavy
      valuable
      correct
      leading
      slow
      clean
      fresh
      normal
      secret
      tough
      brown
      cheap
      deep
      objective
      secure
      thin
      chemical
      cool
      extreme
      exact
      fair
      fine
      formal
      opposite
      remote
      total
      vast
      lost
      smooth
      dark
      double
      equal
      firm
      frequent
      internal
      sensitive
      constant
      minor
      previous
      raw
      soft
      solid
      weird
      amazing
      annual
      busy
      dead
      false
      round
      sharp
      thick
      wise
      equivalent
      initial
      narrow
      nearby
      proud
      spiritual
      wild
      adult
      apart
      brief
      crazy
      prior
      rough
      sad
      sick
      strange
      external
      illegal
      loud
      mobile
      nasty
      ordinary
      royal
      senior
      super
      tight
      upper
      yellow
      dependent
      funny
      gross
      ill
      spare
      sweet
      upstairs
      usual
      brave
      calm
      dirty
      downtown
      grand
      honest
      loose
      male
      quiet
      brilliant
      dear
      drunk
      empty
      female
      inevitable
      neat
      ok
      representative
      silly
      slight
      smart
      stupid
      temporary
      weekly
      that
      this
      what
      which
      time
      these
      work
      no
      only
      then
      first
      money
      over
      business
      his
      game
      think
      after
      life
      day
      home
      economy
      away
      either
      fat
      key
      training
      top
      level
      far
      fun
      house
      kind
      future
      action
      live
      period
      subject
      mean
      stock
      chance
      beginning
      upset
      chicken
      head
      material
      salt
      car
      appropriate
      inside
      outside
      standard
      medium
      choice
      north
      square
      born
      capital
      shot
      front
      living
      plastic
      express
      feeling
      otherwise
      plus
      savings
      animal
      budget
      minute
      character
      maximum
      novel
      plenty
      select
      background
      forward
      glass
      joint
      master
      red
      vegetable
      ideal
      kitchen
      mother
      party
      relative
      signal
      street
      connect
      minimum
      sea
      south
      status
      daughter
      hour
      trick
      afternoon
      gold
      mission
      agent
      corner
      east
      neither
      parking
      routine
      swimming
      winter
      airline
      designer
      dress
      emergency
      evening
      extension
      holiday
      horror
      mountain
      patient
      proof
      west
      wine
      expert
      native
      opening
      silver
      waste
      plane
      leather
      purple
      specialist
      bitter
      incident
      motor
      pretend
      prize
      resident
    ).freeze
    WORDS = VERBS + NOUNS + ADJECTIVES + ANIMALS
  end
end
