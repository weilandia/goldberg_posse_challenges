var peopleDatabase = function() {
  var Person = require('./person')
  this.people = [];

  this.add = function(person_args) {
    var person = new Person(person_args);
    this.people.push(person);
  };

  this.remove = function(email) {
    var length = this.people.length;
    for (var i = 0; i < length; i++) {
      if (this.people[i].email === email) {
        delete this.people[i];
      };
    };
  };

  this.collect_state = function(state) {
    var length = this.people.length;
    var state_coll = []
    for (var i = 0; i < length; i++) {
      if (this.people[i].state === state) {
        state_coll.push(this.people[i]);
      };
    };
    return state_coll
  };
};

module.exports = peopleDatabase;
