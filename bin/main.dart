void main() {
  int countSeniors(List<String> details) {
    int result = 0;
    for(var element in details){
      if (int.parse(element.substring(11,13)) > 60) {
        result++;
      }
    }
    for (int i = 0; i < details.length; i++) {
      if (int.parse(details[i].substring(11,13)) > 60) {
        result++;
      }
    }
    return result;
  }

  countSeniors(["7868190130M7522", "5303914400F9211", "9273338290F4010"]);
}
