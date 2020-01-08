class Commit {
  String message;
  int comment_count;
  String url;

  Commit({
    this.message,
    this.comment_count,
    this.url,
  });

  factory Commit.fromJson(Map<String, dynamic> json) {
    return Commit(
        message: json['message'],
        comment_count: json['comment_count'],
        url: json['url']
    );
  }
}
