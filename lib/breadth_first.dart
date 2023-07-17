import 'dart:collection';

class Graph<T> {
  Map<T, List<T>>? _adjacencyList;
  Graph() {
    _adjacencyList = Map();
  }

  void insertEdge(T node1, T node2) {
    _adjacencyList!.putIfAbsent(node1, () => []).add(node2);
  }

  void BFS(T startNode) {
    var visited = Set<T>();
    var queue = Queue<T>();
    visited.add(startNode);
    queue.add(startNode);
    while (queue.isNotEmpty) {
      var currentNode = queue.removeFirst();
      print("Visited: $currentNode");
      try {
        if (_adjacencyList![currentNode] == null) {
          throw EmptyException('End..');
        }
        for (T neighbor in _adjacencyList![currentNode]!) {
          if (!visited.contains(neighbor)) {
            visited.add(neighbor);
            queue.add(neighbor);
          }
        }
      } on EmptyException catch (e) {
        print(e);
      } catch (e) {
        print(e);
      }
    }
  }

  void DFS(T startNode, Set<T> visited) {
    try {
      visited.add(startNode);
      print("Visited Node: $startNode");
      if (_adjacencyList![startNode] == null) {
        throw EmptyException('No Elements');
      }
      for (T neighbour in _adjacencyList![startNode]!) {
        if (!visited.contains(neighbour)) {
          DFS(neighbour, visited);
        }
      }
    } on EmptyException catch (e) {
      print(e);
    } catch (e) {
      print(e);
    }
  }
}

abstract class CustomException implements Exception {
  const CustomException([this.message]);
  final String? message;

  @override
  String toString() {
    String result = 'CustomException';
    if (message is String) return '$result: $message';
    return result;
  }
}

//extend custom exception class for EmptyException, you can make your own exception class like this.
class EmptyException extends CustomException {
  const EmptyException([String? message]) : super(message);
}

void main(List<String> args) {
  Graph graph = Graph<int>();
  graph.insertEdge(0, 1);
  graph.insertEdge(0, 2);
  graph.insertEdge(1, 2);
  graph.insertEdge(2, 0);
  graph.insertEdge(2, 3);
  graph.insertEdge(1, 4);
  graph.insertEdge(4, 3);
  graph.insertEdge(3, 3);
  graph.BFS(2);
  graph.DFS(2, <int>{});
}