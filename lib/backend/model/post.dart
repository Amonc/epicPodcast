class Post {
  int ?id;
  DateTime? date;
  DateTime? dateGmt;
  Map<String, dynamic>? guid;
  DateTime? modified;
  DateTime? modifiedGmt;
  String? slug;
  String? status;
  String? type;
  String? link;
  Map<String, dynamic>? title;
  Map<String, dynamic>? content;
  Map<String, dynamic>? excerpt;
  int ?author;
  int? featuredMedia;
  String ?commentStatus;
  String? pingStatus;
  bool? sticky;
  String? template;
  String? format;
  Map<String, dynamic>? meta;
  List<int>? categories;
  List<dynamic>? tags;

  Post({
    required this.id,
    this.date,
    this.dateGmt,
    this.guid,
    this.modified,
    this.modifiedGmt,
    this.slug,
    this.status,
    this.type,
    this.link,
    this.title,
    this.content,
    this.excerpt,
    this.author,
    this.featuredMedia,
    this.commentStatus,
    this.pingStatus,
    this.sticky,
    this.template,
    this.format,
    this.meta,
    this.categories,
    this.tags,
  });

  Post.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    date = DateTime.parse(json['date']);
    dateGmt = DateTime.parse(json['date_gmt']);
    guid = json['guid'];
    modified = DateTime.parse(json['modified']);
    modifiedGmt = DateTime.parse(json['modified_gmt']);
    slug = json['slug'];
    status = json['status'];
    type = json['type'];
    link = json['link'];
    title = json['title'];
    content = json['content'];
    excerpt = json['excerpt'];
    author = json['author'];
    featuredMedia = json['featured_media'];
    commentStatus = json['comment_status'];
    pingStatus = json['ping_status'];
    sticky = json['sticky'];
    template = json['template'];
    format = json['format'];
    meta = json['meta'];
    categories = List<int>.from(json['categories']);
    tags = json['tags'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();

    data['id'] = this.id;
    data['date'] = this.date!.toIso8601String();
    data['date_gmt'] = this.dateGmt!.toIso8601String();
    data['guid'] =  this.guid;
    data['modified'] = this.modified!.toIso8601String();
    data['modified_gmt'] = this.modifiedGmt!.toIso8601String();
    data['slug'] = this.slug;
    data['status'] = this.status;
    data['type'] = this.type;
    data['link'] = this.link;
    data['title'] = this.title;
    data['content'] =this.content;
    data['excerpt'] =  this.excerpt;
    data['author'] = this.author;
    data['featured_media'] = this.featuredMedia;
    data['comment_status'] = this.commentStatus;
    data['ping_status'] = this.pingStatus;
    data['sticky'] = this.sticky;
    data['template'] = this.template;
    data['format'] = this.format;
    data['meta'] = this.meta;
    data['categories'] = this.categories;
    data['tags'] = this.tags;
    return data;
  }
}
