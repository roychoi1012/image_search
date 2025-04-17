// lib/core/result.dart

sealed class Result<SuccessType, FailureType> {
  const Result();
}

class Success<T> extends Result<T, Never> {
  final T data;
  const Success(this.data);
}

class Failure<E> extends Result<Never, E> {
  final E error;
  const Failure(this.error);
}
