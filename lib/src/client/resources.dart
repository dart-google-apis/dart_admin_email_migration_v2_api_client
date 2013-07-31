part of admin_email_migration_v2_api;

class MailResource_ {

  final Client _client;

  MailResource_(Client client) :
      _client = client;

  /**
   * Insert Mail into Google's Gmail backends
   *
   * [request] - MailItem to send in this request
   *
   * [userKey] - The email or immutable id of the user
   *
   * [content] - Base64 Data of the file content to be uploaded
   *
   * [contentType] - MimeType of the file to be uploaded
   *
   * [optParams] - Additional query parameters
   */
  async.Future<core.Map> insert(MailItem request, core.String userKey, {core.String content, core.String contentType, core.Map optParams}) {
    var url = "{userKey}/mail";
    var uploadUrl = "/upload/email/v2/users/{userKey}/mail";
    var urlParams = new core.Map();
    var queryParams = new core.Map();

    var paramErrors = new core.List();
    if (userKey == null) paramErrors.add("userKey is required");
    if (userKey != null) urlParams["userKey"] = userKey;
    if (optParams != null) {
      optParams.forEach((key, value) {
        if (value != null && queryParams[key] == null) {
          queryParams[key] = value;
        }
      });
    }

    if (!paramErrors.isEmpty) {
      throw new core.ArgumentError(paramErrors.join(" / "));
    }

    var response;
    if (content != null) {
      response = _client.upload(uploadUrl, "POST", request.toString(), content, contentType, urlParams: urlParams, queryParams: queryParams);
    } else {
      response = _client.request(url, "POST", body: request.toString(), urlParams: urlParams, queryParams: queryParams);
    }
    return response;
  }
}

