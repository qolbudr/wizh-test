class AuthUrl {
  static const prefix = '/auth';
  static const login = '$prefix/login';
  static const register = '$prefix/register';
}

class JobUrl {
  static const prefix = '/job';
  static const jobs = '/jobs';
  
  static String jobWithId(String id) => '$prefix/$id';
}

class UserUrl {
  static const prefix = '/user';
  
  static String userWithid(String id) => '$prefix/$id';
}


class SessionUrl {
  static const prefix = '/session';
  static const sessions = '/sessions';
  
  static String sessionWithId(String id) => '$prefix/$id';
}

class PaymentUrl {
  static const prefix = '/payment';
  static const chats = '$prefix/chats';
  static const mappings = '$prefix/mappings';
  static const chat = '$prefix/chat';
  static const payMapping = '$prefix/mapping/pay';
  
  static String payChatWithId(String id) => '$prefix/chat/$id/pay';
  static String bypassChat = '$prefix/chat/bypass';
}

class ChatUrl {
  static const prefix = '/chat';
  
  static String chatWithId(String roomId) => '$prefix/$roomId';
}

class MappingUrl {
  static const mappings = '/mappings';
  static const interests = '/interests';
}