path = require 'path'
pkgRoot = atom.packages.resolvePackagePath('fuzzy-finder')
FuzzyFinderView = require path.join(pkgRoot, 'lib', 'fuzzy-finder-view')

module.exports =
class View extends FuzzyFinderView
  getEmptyMessage: ->
    'No files here'

  toggle: (items) ->
    if @panel?.isVisible()
      @cancel()
    else
      @setItems items
      @show()
