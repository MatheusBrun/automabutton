// ignore_for_file: public_member_api_docs, sort_constructors_first
class Button {
  late String id;
  late String name;
  late String url;
  Button({
    required this.id,
    required this.name,
    required this.url,
  });

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'name': name,
      'url': url,
    };
  }

  Button.fromMap(Map<String, dynamic> map) {
    id = map[id];
    name = map[name];
    url = map[url];
  }
  @override
  String toString() {
    return 'Url{id: $id, name: $name, url: $url}';
  }
}
