library admin_email_migration_v2_api.console;

import "package:google_oauth2_client/google_oauth2_console.dart" as oauth2;

import 'package:google_admin_email_migration_v2_api/src/console_client.dart';

import "package:google_admin_email_migration_v2_api/admin_email_migration_v2_api_client.dart";

/** Email Migration API lets you migrate emails of users to Google backends. */
@deprecated
class Admin extends Client with ConsoleClient {

  /** OAuth Scope2: Manage email messages of users on your domain */
  static const String EMAIL_MIGRATION_SCOPE = "https://www.googleapis.com/auth/email.migration";

  final oauth2.OAuth2Console auth;

  Admin([oauth2.OAuth2Console this.auth]);
}
