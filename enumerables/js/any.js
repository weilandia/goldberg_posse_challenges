function any(collection, condition()) {
  for (i = 0, len = collection.length; i < len; i++) {
    if (condition(collection[i])) {
      return true;
    }
  }
  return false;
}

module.exports = any;
