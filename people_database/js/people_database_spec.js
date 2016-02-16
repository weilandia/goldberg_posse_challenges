var peopleDatabase = require('./people_database')

describe('db can add people', function() {

  it('starts with and empty arr', function() {
    var db = new peopleDatabase();

    expect(db.people[0]).toBe(undefined);
  });

  it('can add people', function() {
    var db = new peopleDatabase();

    db.add({first_name: "Jose",
            last_name:  "Buendia",
            email:      "jose@gmail.com",
            state:      "CA"});

    person = db.people[0];

    expect(person.first_name).toBe('Jose');
  });

  it('can add multiple people', function() {
    var db = new peopleDatabase();

    db.add({first_name: "Jose",
            last_name:  "Buendia",
            email:      "jose@gmail.com",
            state:      "CA"});

    db.add({first_name: "Ursula",
            last_name:  "Buendia",
            email:      "ursula@gmail.com",
            state:      "CA"});

    person = db.people[1];

    expect(person.first_name).toBe('Ursula');
  });
});
