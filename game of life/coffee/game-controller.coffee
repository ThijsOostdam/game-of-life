define ['grid','grid-tools','game-of-life','grid-visualizer','grid-interactor','jquery']
, (grid,gridTools,GameOfLife,gridVisualizer,gridInteractor,jquery) ->
  moduleName = "game-controller"
  console.log moduleName

  gameController =
    setupAndRun : () ->
      console.log moduleName, "setup and run"

      # Set initial cells TEMP
      #[x][x][o]
      #[o][x][o]
      #[x][o][o]
      grid.grid[2][0] = true
      grid.grid[0][1] = true
      grid.grid[2][1] = true
      grid.grid[1][2] = true
      grid.grid[2][2] = true

      console.log moduleName, "starting grid:", grid

      lifeloop = () ->
        # Run game of life logic once on the grid.
        grid.grid = GameOfLife.doLogic grid.grid
        #console.log moduleName, "grid:", grid.grid
        gridVisualizer.render grid.grid, canvas
        requestAnimationFrame lifeloop

      requestAnimationFrame lifeloop
