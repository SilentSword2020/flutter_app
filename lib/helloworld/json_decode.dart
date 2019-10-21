import 'dart:convert' show json;

main() {
  // NOTE: Be sure to use double quotes ("),
  // not single quotes ('), inside the JSON string.
  // This string is JSON, not Dart.
  var jsonString = '''
  [
    {"score": 40},
    {"score": 80}
  ]
  ''';

  var scores = json.decode(jsonString);
  assert(scores is List);

  var firstScore = scores[0];
  assert(firstScore is Map);
  assert(firstScore['score'] == 40);
  print(firstScore is Map);
  print(firstScore['score'] == 40);
}
