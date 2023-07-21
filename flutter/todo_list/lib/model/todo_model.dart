class TodoModel {
  final int? id;
  final String? title;
  final String? description;
  final bool? isDone;

  TodoModel({
    this.id,
    this.title,
    this.description,
    this.isDone,
  });

  // the code below is used to create a factory method for converting the json Data
  // to dart object
  factory TodoModel.fromJson(Map<String, dynamic> json) => TodoModel(
        id: json['id'],
        title: json['title'],
        description: json['description'],
        isDone: json['isDone'] == 0 ? false : true,
      );

  // the code below is used to create a method for converting dart object to json to
  // be stored in the database
  Map<String, dynamic> toJson() => {
        'id': id,
        'title': title,
        'description': description,
        'isDone': isDone == false
            ? 0
            : 1, // since the sqlite does not have the boolean type
      };
}
