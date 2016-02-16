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

  it('can delete people based on email', function() {
    var db = new peopleDatabase();

    db.add({first_name: "Jose",
            last_name:  "Buendia",
            email:      "jose@gmail.com",
            state:      "CA"});

    db.add({first_name: "Ursula",
            last_name:  "Buendia",
            email:      "ursula@gmail.com",
            state:      "CA"});

    expect(db.people[0].first_name).toBe("Jose");

    db.remove("jose@gmail.com");

    expect(db.people[0]).toBe(undefined);
  });

  it('can collect people by state', function() {
    var db = new peopleDatabase();

    db.add({first_name: "Jose",
            last_name:  "Buendia",
            email:      "jose@gmail.com",
            state:      "CA"});

    db.add({first_name: "Ursula",
            last_name:  "Buendia",
            email:      "ursula@gmail.com",
            state:      "UT"});

    db.add({first_name: "Segundo",
            last_name:  "Buendia",
            email:      "ursula@gmail.com",
            state:      "CA"});

    expect(db.collect_state("CA").length).toBe(2);

    expect(db.collect_state("CA")[0].first_name).toBe("Jose");

    expect(db.collect_state("CA")[1].first_name).toBe("Segundo");
  });

  it('can count by state', function() {
    var db = new peopleDatabase();

    db.add({first_name: "Jose",
            last_name:  "Buendia",
            email:      "jose@gmail.com",
            state:      "CA"});

    db.add({first_name: "Ursula",
            last_name:  "Buendia",
            email:      "ursula@gmail.com",
            state:      "UT"});

    db.add({first_name: "Segundo",
            last_name:  "Buendia",
            email:      "ursula@gmail.com",
            state:      "CA"});

    expect(db.state_count("CA")).toBe(2);
    expect(db.state_count("UT")).toBe(1);
    expect(db.state_count("NV")).toBe(0);
  });

  it('can list emails', function() {
    var db = new peopleDatabase();

    db.add({first_name: "Jose",
            last_name:  "Buendia",
            email:      "jose@gmail.com",
            state:      "CA"});

    db.add({first_name: "Ursula",
            last_name:  "Buendia",
            email:      "ursula@gmail.com",
            state:      "UT"});

    db.add({first_name: "Segundo",
            last_name:  "Buendia",
            email:      "ursula@gmail.com",
            state:      "CA"});

    expect(db.emails()).toBe("jose@gmail.com, ursula@gmail.com, ursula@gmail.com");
  });
});
