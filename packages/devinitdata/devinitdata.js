if (Meteor.isServer) {
    Meteor.startup(function () {

        if (Init.find().count() <= 0) {

            Meteor.call("addTask", "Task 0: Insert a new task on to-do list!");
            Meteor.call("addTask", "Task 1: Does it show up yet? Look at the header section");
            Meteor.call("addTask", "Task 2: Now let's restart your vagrant environment see if the tasks are persisted?");
            Meteor.call("addTask", "Task 3: vagrant destroy");
            Meteor.call("addTask", "Task 4: vagrant up");
            Meteor.call("addTask", "Task 5: Find a way to persist a new task!");


            Init.insert({
                init: true
            })
        }

    });

}