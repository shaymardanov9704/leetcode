/// Validate IP Address

class Solution468 {
  bool isHexadecimal(String value) {
    return int.tryParse(value, radix: 16) != null;
  }

  String checkIPv4(String ip) {
    final list = ip.split(".");
    if (list.length > 4) return "Neither";
    for (var s in list) {
      if (s.contains(RegExp(r'[a-zA-Z]')) || s.isEmpty) {
        return "Neither";
      } else {
        if (int.parse(s.replaceAll(RegExp(r'[^0-9]'),'')) > 255 || int.parse(s.replaceAll(RegExp(r'[^0-9]'),'')) < 0) {
          return "Neither";
        }
      }
    }
    return "IPv4";
  }

  String checkIPv6(String ip) {
    final list = ip.split(":");
    if (list.length > 8) return "Neither";
    for (var s in list) {
      if (!isHexadecimal(s) || s.length > 4) {
        return "Neither";
      }
    }
    return "IPv6";
  }

  String validIPAddress(String queryIP) {
    if (queryIP.contains(".")) {
      return checkIPv4(queryIP);
    } else if (queryIP.contains(":")) {
      return checkIPv6(queryIP);
    }
    return "Neither";
  }
}
