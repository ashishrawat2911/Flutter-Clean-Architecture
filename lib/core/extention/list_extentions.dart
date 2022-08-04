extension ListExt<T, E> on List<E> {
  List<T> maptoList<T>(T Function(E e) toElement) => map<T>(toElement).toList();
}
