library admin_email_migration_v2_api.browser;

import "package:google_oauth2_client/google_oauth2_browser.dart" as oauth;

import 'package:google_admin_email_migration_v2_api/src/cloud_api_browser.dart';
import "package:google_admin_email_migration_v2_api/admin_email_migration_v2_api_client.dart";

/** Email Migration API lets you migrate emails of users to Google backends. */
class Admin extends Client with BrowserClient {

  /** OAuth Scope2: Manage email messages of users on your domain */
  static const String EMAIL_MIGRATION_SCOPE = "https://www.googleapis.com/auth/email.migration";

  final oauth.OAuth2 auth;

  Admin([oauth.OAuth2 this.auth]);
}
