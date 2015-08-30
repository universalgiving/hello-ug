if (Meteor.isServer) {
    Meteor.startup(function () {

        if (Init.find().count() <= 0) {
            Tasks.insert({
                text: "Task 0: Insert a new task on to-do list!",
                createdAt: new Date()});

            Tasks.insert({
                text: "Task 1: Does it show up yet? Look at the header section",
                createdAt: new Date()});
            Tasks.insert({
                text: "Task 2: Now let's restart your vagrant environment see if the tasks are persisted?",
                createdAt: new Date()
            });

            Tasks.insert({
                text: "Task 3: vagrant destroy",
                createdAt: new Date()
            });

            Tasks.insert({
                text: "Task 4: vagrant up",
                createdAt: new Date()
            });

            Tasks.insert({
                text: "Task 5: Find a way to persist a new task!",
                createdAt: new Date()
            });

            Init.insert({
                init: true
            })
        }

    });

}