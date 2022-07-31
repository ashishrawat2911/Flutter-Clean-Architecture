extension FutureExtention<T, S> on Future<T> {
  Future<S> map<S>(S Function(T e) fun) async {
    return fun(await this);
  }
}
