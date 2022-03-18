class User {
  String? email;

  User.empty();

  User(this.email);
}

class AdminUser extends User with MailSystemChecker {
  AdminUser.empty() : super.empty();

  AdminUser(String? email) : super(email);
}

class GeneralUser extends User {
  GeneralUser.empty() : super.empty();

  GeneralUser(String? email) : super(email);
}

mixin MailSystemChecker on User {
  String? getMailSystem() => email?.split('@').last;
}

class UserManager<T extends User> {
  Set<T> users = {};

  void addOne(T user) => users.add(user);

  void add(List<T> userList) => users.addAll(userList);

  void removeOne(T user) => users.remove(user);

  void remove(List<T> userList) => users..removeAll(userList);

  List<String> getEmails() {
    final List<String> emails = [];

    for (final user in users) {
      if (user.email != null) {
        if (user is AdminUser) {
          emails.add(user.getMailSystem()!);
        } else {
          emails.add(user.email!);
        }
      }
    }

    return emails;
  }
}
