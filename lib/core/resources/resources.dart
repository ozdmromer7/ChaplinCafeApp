sealed class Resource<T> {
  const Resource();
}

class Succes<T> extends Resource<T> {
  final T data;

  const Succes({required this.data});
}

class Failure<T> extends Resource<T> {
  final Exception exception;

  const Failure({required this.exception});
}

class Loading<T> extends Resource<T> {
  const Loading();
}
