import 'dart:convert';

class GiphyGif {
  Data data;
  Meta meta;

  GiphyGif({
    this.data,
    this.meta,
  });

  factory GiphyGif.fromJson(String str) => GiphyGif.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory GiphyGif.fromMap(Map<String, dynamic> json) => GiphyGif(
    data: json["data"] == null ? null : Data.fromMap(json["data"]),
    meta: json["meta"] == null ? null : Meta.fromMap(json["meta"]),
  );

  Map<String, dynamic> toMap() => {
    "data": data == null ? null : data.toMap(),
    "meta": meta == null ? null : meta.toMap(),
  };
}

class Data {
  String type;
  String id;
  String url;
  String slug;
  String bitlyGifUrl;
  String bitlyUrl;
  String embedUrl;
  String username;
  String source;
  String title;
  String rating;
  String contentUrl;
  String sourceTld;
  String sourcePostUrl;
  int isSticker;
  DateTime importDatetime;
  String trendingDatetime;
  Images images;
  User user;

  Data({
    this.type,
    this.id,
    this.url,
    this.slug,
    this.bitlyGifUrl,
    this.bitlyUrl,
    this.embedUrl,
    this.username,
    this.source,
    this.title,
    this.rating,
    this.contentUrl,
    this.sourceTld,
    this.sourcePostUrl,
    this.isSticker,
    this.importDatetime,
    this.trendingDatetime,
    this.images,
    this.user,
  });

  factory Data.fromJson(String str) => Data.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory Data.fromMap(Map<String, dynamic> json) => Data(
    type: json["type"] == null ? null : json["type"],
    id: json["id"] == null ? null : json["id"],
    url: json["url"] == null ? null : json["url"],
    slug: json["slug"] == null ? null : json["slug"],
    bitlyGifUrl: json["bitly_gif_url"] == null ? null : json["bitly_gif_url"],
    bitlyUrl: json["bitly_url"] == null ? null : json["bitly_url"],
    embedUrl: json["embed_url"] == null ? null : json["embed_url"],
    username: json["username"] == null ? null : json["username"],
    source: json["source"] == null ? null : json["source"],
    title: json["title"] == null ? null : json["title"],
    rating: json["rating"] == null ? null : json["rating"],
    contentUrl: json["content_url"] == null ? null : json["content_url"],
    sourceTld: json["source_tld"] == null ? null : json["source_tld"],
    sourcePostUrl: json["source_post_url"] == null ? null : json["source_post_url"],
    isSticker: json["is_sticker"] == null ? null : json["is_sticker"],
    importDatetime: json["import_datetime"] == null ? null : DateTime.parse(json["import_datetime"]),
    trendingDatetime: json["trending_datetime"] == null ? null : json["trending_datetime"],
    images: json["images"] == null ? null : Images.fromMap(json["images"]),
    user: json["user"] == null ? null : User.fromMap(json["user"]),
  );

  Map<String, dynamic> toMap() => {
    "type": type == null ? null : type,
    "id": id == null ? null : id,
    "url": url == null ? null : url,
    "slug": slug == null ? null : slug,
    "bitly_gif_url": bitlyGifUrl == null ? null : bitlyGifUrl,
    "bitly_url": bitlyUrl == null ? null : bitlyUrl,
    "embed_url": embedUrl == null ? null : embedUrl,
    "username": username == null ? null : username,
    "source": source == null ? null : source,
    "title": title == null ? null : title,
    "rating": rating == null ? null : rating,
    "content_url": contentUrl == null ? null : contentUrl,
    "source_tld": sourceTld == null ? null : sourceTld,
    "source_post_url": sourcePostUrl == null ? null : sourcePostUrl,
    "is_sticker": isSticker == null ? null : isSticker,
    "import_datetime": importDatetime == null ? null : importDatetime.toIso8601String(),
    "trending_datetime": trendingDatetime == null ? null : trendingDatetime,
    "images": images == null ? null : images.toMap(),
    "user": user == null ? null : user.toMap(),
  };
}

class Images {
  DownsizedSmall hd;
  The480WStill downsizedLarge;
  The480WStill fixedHeightSmallStill;
  FixedHeight original;
  FixedHeight fixedHeightDownsampled;
  The480WStill downsizedStill;
  The480WStill fixedHeightStill;
  The480WStill downsizedMedium;
  The480WStill downsized;
  The480WStill previewWebp;
  DownsizedSmall originalMp4;
  FixedHeight fixedHeightSmall;
  FixedHeight fixedHeight;
  DownsizedSmall downsizedSmall;
  DownsizedSmall preview;
  FixedHeight fixedWidthDownsampled;
  The480WStill fixedWidthSmallStill;
  FixedHeight fixedWidthSmall;
  The480WStill originalStill;
  The480WStill fixedWidthStill;
  Looping looping;
  FixedHeight fixedWidth;
  The480WStill previewGif;
  The480WStill the480WStill;

  Images({
    this.hd,
    this.downsizedLarge,
    this.fixedHeightSmallStill,
    this.original,
    this.fixedHeightDownsampled,
    this.downsizedStill,
    this.fixedHeightStill,
    this.downsizedMedium,
    this.downsized,
    this.previewWebp,
    this.originalMp4,
    this.fixedHeightSmall,
    this.fixedHeight,
    this.downsizedSmall,
    this.preview,
    this.fixedWidthDownsampled,
    this.fixedWidthSmallStill,
    this.fixedWidthSmall,
    this.originalStill,
    this.fixedWidthStill,
    this.looping,
    this.fixedWidth,
    this.previewGif,
    this.the480WStill,
  });

  factory Images.fromJson(String str) => Images.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory Images.fromMap(Map<String, dynamic> json) => Images(
    hd: json["hd"] == null ? null : DownsizedSmall.fromMap(json["hd"]),
    downsizedLarge: json["downsized_large"] == null ? null : The480WStill.fromMap(json["downsized_large"]),
    fixedHeightSmallStill: json["fixed_height_small_still"] == null ? null : The480WStill.fromMap(json["fixed_height_small_still"]),
    original: json["original"] == null ? null : FixedHeight.fromMap(json["original"]),
    fixedHeightDownsampled: json["fixed_height_downsampled"] == null ? null : FixedHeight.fromMap(json["fixed_height_downsampled"]),
    downsizedStill: json["downsized_still"] == null ? null : The480WStill.fromMap(json["downsized_still"]),
    fixedHeightStill: json["fixed_height_still"] == null ? null : The480WStill.fromMap(json["fixed_height_still"]),
    downsizedMedium: json["downsized_medium"] == null ? null : The480WStill.fromMap(json["downsized_medium"]),
    downsized: json["downsized"] == null ? null : The480WStill.fromMap(json["downsized"]),
    previewWebp: json["preview_webp"] == null ? null : The480WStill.fromMap(json["preview_webp"]),
    originalMp4: json["original_mp4"] == null ? null : DownsizedSmall.fromMap(json["original_mp4"]),
    fixedHeightSmall: json["fixed_height_small"] == null ? null : FixedHeight.fromMap(json["fixed_height_small"]),
    fixedHeight: json["fixed_height"] == null ? null : FixedHeight.fromMap(json["fixed_height"]),
    downsizedSmall: json["downsized_small"] == null ? null : DownsizedSmall.fromMap(json["downsized_small"]),
    preview: json["preview"] == null ? null : DownsizedSmall.fromMap(json["preview"]),
    fixedWidthDownsampled: json["fixed_width_downsampled"] == null ? null : FixedHeight.fromMap(json["fixed_width_downsampled"]),
    fixedWidthSmallStill: json["fixed_width_small_still"] == null ? null : The480WStill.fromMap(json["fixed_width_small_still"]),
    fixedWidthSmall: json["fixed_width_small"] == null ? null : FixedHeight.fromMap(json["fixed_width_small"]),
    originalStill: json["original_still"] == null ? null : The480WStill.fromMap(json["original_still"]),
    fixedWidthStill: json["fixed_width_still"] == null ? null : The480WStill.fromMap(json["fixed_width_still"]),
    looping: json["looping"] == null ? null : Looping.fromMap(json["looping"]),
    fixedWidth: json["fixed_width"] == null ? null : FixedHeight.fromMap(json["fixed_width"]),
    previewGif: json["preview_gif"] == null ? null : The480WStill.fromMap(json["preview_gif"]),
    the480WStill: json["480w_still"] == null ? null : The480WStill.fromMap(json["480w_still"]),
  );

  Map<String, dynamic> toMap() => {
    "hd": hd == null ? null : hd.toMap(),
    "downsized_large": downsizedLarge == null ? null : downsizedLarge.toMap(),
    "fixed_height_small_still": fixedHeightSmallStill == null ? null : fixedHeightSmallStill.toMap(),
    "original": original == null ? null : original.toMap(),
    "fixed_height_downsampled": fixedHeightDownsampled == null ? null : fixedHeightDownsampled.toMap(),
    "downsized_still": downsizedStill == null ? null : downsizedStill.toMap(),
    "fixed_height_still": fixedHeightStill == null ? null : fixedHeightStill.toMap(),
    "downsized_medium": downsizedMedium == null ? null : downsizedMedium.toMap(),
    "downsized": downsized == null ? null : downsized.toMap(),
    "preview_webp": previewWebp == null ? null : previewWebp.toMap(),
    "original_mp4": originalMp4 == null ? null : originalMp4.toMap(),
    "fixed_height_small": fixedHeightSmall == null ? null : fixedHeightSmall.toMap(),
    "fixed_height": fixedHeight == null ? null : fixedHeight.toMap(),
    "downsized_small": downsizedSmall == null ? null : downsizedSmall.toMap(),
    "preview": preview == null ? null : preview.toMap(),
    "fixed_width_downsampled": fixedWidthDownsampled == null ? null : fixedWidthDownsampled.toMap(),
    "fixed_width_small_still": fixedWidthSmallStill == null ? null : fixedWidthSmallStill.toMap(),
    "fixed_width_small": fixedWidthSmall == null ? null : fixedWidthSmall.toMap(),
    "original_still": originalStill == null ? null : originalStill.toMap(),
    "fixed_width_still": fixedWidthStill == null ? null : fixedWidthStill.toMap(),
    "looping": looping == null ? null : looping.toMap(),
    "fixed_width": fixedWidth == null ? null : fixedWidth.toMap(),
    "preview_gif": previewGif == null ? null : previewGif.toMap(),
    "480w_still": the480WStill == null ? null : the480WStill.toMap(),
  };
}

class The480WStill {
  String url;
  String width;
  String height;
  String size;

  The480WStill({
    this.url,
    this.width,
    this.height,
    this.size,
  });

  factory The480WStill.fromJson(String str) => The480WStill.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory The480WStill.fromMap(Map<String, dynamic> json) => The480WStill(
    url: json["url"] == null ? null : json["url"],
    width: json["width"] == null ? null : json["width"],
    height: json["height"] == null ? null : json["height"],
    size: json["size"] == null ? null : json["size"],
  );

  Map<String, dynamic> toMap() => {
    "url": url == null ? null : url,
    "width": width == null ? null : width,
    "height": height == null ? null : height,
    "size": size == null ? null : size,
  };
}

class DownsizedSmall {
  String height;
  String mp4;
  String mp4Size;
  String width;

  DownsizedSmall({
    this.height,
    this.mp4,
    this.mp4Size,
    this.width,
  });

  factory DownsizedSmall.fromJson(String str) => DownsizedSmall.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory DownsizedSmall.fromMap(Map<String, dynamic> json) => DownsizedSmall(
    height: json["height"] == null ? null : json["height"],
    mp4: json["mp4"] == null ? null : json["mp4"],
    mp4Size: json["mp4_size"] == null ? null : json["mp4_size"],
    width: json["width"] == null ? null : json["width"],
  );

  Map<String, dynamic> toMap() => {
    "height": height == null ? null : height,
    "mp4": mp4 == null ? null : mp4,
    "mp4_size": mp4Size == null ? null : mp4Size,
    "width": width == null ? null : width,
  };
}

class FixedHeight {
  String height;
  String mp4;
  String mp4Size;
  String size;
  String url;
  String webp;
  String webpSize;
  String width;
  String frames;
  String hash;

  FixedHeight({
    this.height,
    this.mp4,
    this.mp4Size,
    this.size,
    this.url,
    this.webp,
    this.webpSize,
    this.width,
    this.frames,
    this.hash,
  });

  factory FixedHeight.fromJson(String str) => FixedHeight.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory FixedHeight.fromMap(Map<String, dynamic> json) => FixedHeight(
    height: json["height"] == null ? null : json["height"],
    mp4: json["mp4"] == null ? null : json["mp4"],
    mp4Size: json["mp4_size"] == null ? null : json["mp4_size"],
    size: json["size"] == null ? null : json["size"],
    url: json["url"] == null ? null : json["url"],
    webp: json["webp"] == null ? null : json["webp"],
    webpSize: json["webp_size"] == null ? null : json["webp_size"],
    width: json["width"] == null ? null : json["width"],
    frames: json["frames"] == null ? null : json["frames"],
    hash: json["hash"] == null ? null : json["hash"],
  );

  Map<String, dynamic> toMap() => {
    "height": height == null ? null : height,
    "mp4": mp4 == null ? null : mp4,
    "mp4_size": mp4Size == null ? null : mp4Size,
    "size": size == null ? null : size,
    "url": url == null ? null : url,
    "webp": webp == null ? null : webp,
    "webp_size": webpSize == null ? null : webpSize,
    "width": width == null ? null : width,
    "frames": frames == null ? null : frames,
    "hash": hash == null ? null : hash,
  };
}

class Looping {
  String mp4;
  String mp4Size;

  Looping({
    this.mp4,
    this.mp4Size,
  });

  factory Looping.fromJson(String str) => Looping.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory Looping.fromMap(Map<String, dynamic> json) => Looping(
    mp4: json["mp4"] == null ? null : json["mp4"],
    mp4Size: json["mp4_size"] == null ? null : json["mp4_size"],
  );

  Map<String, dynamic> toMap() => {
    "mp4": mp4 == null ? null : mp4,
    "mp4_size": mp4Size == null ? null : mp4Size,
  };
}

class User {
  String avatarUrl;
  String bannerImage;
  String bannerUrl;
  String profileUrl;
  String username;
  String displayName;
  bool isVerified;

  User({
    this.avatarUrl,
    this.bannerImage,
    this.bannerUrl,
    this.profileUrl,
    this.username,
    this.displayName,
    this.isVerified,
  });

  factory User.fromJson(String str) => User.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory User.fromMap(Map<String, dynamic> json) => User(
    avatarUrl: json["avatar_url"] == null ? null : json["avatar_url"],
    bannerImage: json["banner_image"] == null ? null : json["banner_image"],
    bannerUrl: json["banner_url"] == null ? null : json["banner_url"],
    profileUrl: json["profile_url"] == null ? null : json["profile_url"],
    username: json["username"] == null ? null : json["username"],
    displayName: json["display_name"] == null ? null : json["display_name"],
    isVerified: json["is_verified"] == null ? null : json["is_verified"],
  );

  Map<String, dynamic> toMap() => {
    "avatar_url": avatarUrl == null ? null : avatarUrl,
    "banner_image": bannerImage == null ? null : bannerImage,
    "banner_url": bannerUrl == null ? null : bannerUrl,
    "profile_url": profileUrl == null ? null : profileUrl,
    "username": username == null ? null : username,
    "display_name": displayName == null ? null : displayName,
    "is_verified": isVerified == null ? null : isVerified,
  };
}

class Meta {
  int status;
  String msg;
  String responseId;

  Meta({
    this.status,
    this.msg,
    this.responseId,
  });

  factory Meta.fromJson(String str) => Meta.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory Meta.fromMap(Map<String, dynamic> json) => Meta(
    status: json["status"] == null ? null : json["status"],
    msg: json["msg"] == null ? null : json["msg"],
    responseId: json["response_id"] == null ? null : json["response_id"],
  );

  Map<String, dynamic> toMap() => {
    "status": status == null ? null : status,
    "msg": msg == null ? null : msg,
    "response_id": responseId == null ? null : responseId,
  };
}
