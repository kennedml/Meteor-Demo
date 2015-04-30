Template.body.events({
  "submit .new-task": function (event) {
    // This function is called when the new task form is submitted

    var text = event.target.text.value;

    Tasks.insert({
      text: text,
      createdAt: new Date() // current time
    });

    // Clear form
    event.target.text.value = "";

    // Prevent default form submit
    return false;
  }
});
