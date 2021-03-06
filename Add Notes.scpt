JsOsaDAS1.001.00bplist00�Vscript_8/**
 *
 *
 * @author Greg Cosgrove
 * Special thanks to Brandon Pittman whose OmniFocusLibrary.js I used as a template for this script
 */

var app = Application('omnifocus');
app.includeStandardAdditions = true;
var current = Application.currentApplication();
current.includeStandardAdditions = true;

var doc = app.defaultDocument;

function selected() {
    return app.windows[0].content.selectedTrees.value();
}

function appendNote(tasks, tags) {
    tasks.forEach(function(task) {
        var oldTags = task.note();
        task.note = oldTags + " " + tags;
    })
	alert("Success!");
}

function alert(text, informationalText) {
    var options = { }
    if (informationalText) options.message = informationalText
    app.displayAlert(text, options)
}



function prompt(text, defaultAnswer) {
    var options = { defaultAnswer: defaultAnswer || '' }
    try {
        return app.displayDialog(text, options).textReturned
    } catch (e) {
        return null
    }
}

var targetTasks = selected();

var newTags = prompt("What Tags?", "")

appendNote(targetTasks, newTags);                              Njscr  ��ޭ