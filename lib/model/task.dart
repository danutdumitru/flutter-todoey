class Task {
  String title;
  bool done;

  Task({this.title, this.done});
}

final List<Task> kTasksData = [
  Task(title: 'Buy milk', done: false),
  Task(title: 'Buy eggs', done: false),
  Task(title: 'Buy bread', done: true),
];
