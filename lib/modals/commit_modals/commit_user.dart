class CommitUser {
  String date;
  String name;

  CommitUser({
    this.date,
    this.name,
  });

  factory CommitUser.fromJson(Map<String, dynamic> data) {
    return CommitUser(
        date: data['date'],
        name: data['name']
    );
  }
}
