figlet = require 'figlet'

module.exports =
  activate: ->
    # https://discuss.atom.io/t/replacement-for-atom-workspaceview-command/13636
    # https://github.com/lee-dohm/tabs-to-spaces/commit/6225c3eedd27ff3a15fa1f8debb2a85f9c301d4b
    atom.commands.add 'atom-workspace',
      'ascii-art:convert': =>
        convert()

convert = ->
  editor = atom.workspace.getActiveTextEditor()
  figlet editor.getSelectedText(), {font: "Larry 3D 2"}, (error, asciiArt) ->
    if error
      console.log error
    else
      editor.insertText("\n#{asciiArt}\n")
