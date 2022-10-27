class Task {
  final String taskname;
  bool ischecek;
  Task({required this.taskname, this.ischecek = false});
  void doneChange() {
    ischecek = !ischecek;
  }
}
