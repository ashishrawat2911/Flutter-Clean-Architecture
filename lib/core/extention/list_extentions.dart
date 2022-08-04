extension ListExt<T, E> on List<E> {
  List<T> mapToList<T>(T Function(E e) toElement) => map<T>(toElement).toList();
}
