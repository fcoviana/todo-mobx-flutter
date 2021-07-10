class Task {
  String? id;
  String title;
  String description;

  Task({this.id, required this.title, required this.description});

  factory Task.fromJson(Map<String, dynamic> map) {
    return Task(
        id: map["id"], title: map["title"], description: map["description"]);
  }

  Map<String, dynamic> toJson() {
    return {
      "id": id,
      "title": title,
      "description": description,
    };
  }

  @override
  String toString() {
    return 'Task{id: $id, title: $title, description: $description}';
  }
}
