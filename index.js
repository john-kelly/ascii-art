var figlet = require('figlet');

var convert = function() {
    var editor = atom.workspace.getActiveTextEditor();
    figlet(editor.getSelectedText(), {
        font: "Star Wars"
    }, function(error, asciiArt) {
        if (error) {
            console.log(error);
        } else {
            editor.insertText(asciiArt);
        }
    });
};

module.exports = {
    activate: function() {
        atom.commands.add('atom-workspace', {
            'ascii-art:convert': function() {
                convert();
            }
        });
    }
};
