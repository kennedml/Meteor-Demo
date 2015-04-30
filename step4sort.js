Template.body.helpers({
  tasks: function () {
    // Show newest tasks first
    return Tasks.find({}, {sort: {createdAt: -1}});
  }
});
