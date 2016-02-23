var any = require('./any');

describe('any', function() {

  it('returns false if none', function() {
    var collection = [1, 2, 3, 4, 5];
    function condition(item) {
      |item| item > 6;
    }
    expect(any(collection, condition())).toBe(false);
  });
});
