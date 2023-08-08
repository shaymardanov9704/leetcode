///Number of Segments in a String
class Solution434 {
  int countSegments(String s) {
    if (s.trim().isEmpty) return 0;
    return s.trim().split(RegExp(r'\s+')).length;
  }
}
