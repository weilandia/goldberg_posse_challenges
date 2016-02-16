var Person = require('./person');

describe('Person', function() {

  it('has attributes', function() {
    var person = new Person({
            first_name: "Jose",
            last_name:  "Buendia",
            email:      "jose@gmail.com",
            state:      "CA"
            });

    expect(person.first_name).toBe("Jose");
  });
});
