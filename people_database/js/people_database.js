var peopleDatabase = function() {
  var Person = require('./person')
  this.people = [];

  this.add = function(person_args) {
    var person = new Person(person_args);
    this.people.push(person);
  };
};

module.exports = peopleDatabase;
