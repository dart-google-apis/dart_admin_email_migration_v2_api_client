part of admin_email_migration_v2_api;

/** JSON template for MailItem object in Email Migration API. */
class MailItem {

  /** Boolean indicating if the mail is deleted (used in Vault) */
  core.bool isDeleted;

  /** Boolean indicating if the mail is draft */
  core.bool isDraft;

  /** Boolean indicating if the mail is in inbox */
  core.bool isInbox;

  /** Boolean indicating if the mail is in 'sent mails' */
  core.bool isSent;

  /** Boolean indicating if the mail is starred */
  core.bool isStarred;

  /** Boolean indicating if the mail is in trash */
  core.bool isTrash;

  /** Boolean indicating if the mail is unread */
  core.bool isUnread;

  /** Kind of resource this is. */
  core.String kind;

  /** List of labels (strings) */
  core.List<core.String> labels;

  /** Create new MailItem from JSON data */
  MailItem.fromJson(core.Map json) {
    if (json.containsKey("isDeleted")) {
      isDeleted = json["isDeleted"];
    }
    if (json.containsKey("isDraft")) {
      isDraft = json["isDraft"];
    }
    if (json.containsKey("isInbox")) {
      isInbox = json["isInbox"];
    }
    if (json.containsKey("isSent")) {
      isSent = json["isSent"];
    }
    if (json.containsKey("isStarred")) {
      isStarred = json["isStarred"];
    }
    if (json.containsKey("isTrash")) {
      isTrash = json["isTrash"];
    }
    if (json.containsKey("isUnread")) {
      isUnread = json["isUnread"];
    }
    if (json.containsKey("kind")) {
      kind = json["kind"];
    }
    if (json.containsKey("labels")) {
      labels = json["labels"].toList();
    }
  }

  /** Create JSON Object for MailItem */
  core.Map toJson() {
    var output = new core.Map();

    if (isDeleted != null) {
      output["isDeleted"] = isDeleted;
    }
    if (isDraft != null) {
      output["isDraft"] = isDraft;
    }
    if (isInbox != null) {
      output["isInbox"] = isInbox;
    }
    if (isSent != null) {
      output["isSent"] = isSent;
    }
    if (isStarred != null) {
      output["isStarred"] = isStarred;
    }
    if (isTrash != null) {
      output["isTrash"] = isTrash;
    }
    if (isUnread != null) {
      output["isUnread"] = isUnread;
    }
    if (kind != null) {
      output["kind"] = kind;
    }
    if (labels != null) {
      output["labels"] = labels.toList();
    }

    return output;
  }

  /** Return String representation of MailItem */
  core.String toString() => JSON.encode(this.toJson());

}

core.Map _mapMap(core.Map source, [core.Object convert(core.Object source) = null]) {
  assert(source != null);
  var result = new dart_collection.LinkedHashMap();
  source.forEach((core.String key, value) {
    assert(key != null);
    if(convert == null) {
      result[key] = value;
    } else {
      result[key] = convert(value);
    }
  });
  return result;
}
