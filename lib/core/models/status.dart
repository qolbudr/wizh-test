class Status {
  const Status({this.isInitial = true, this.isEmpty = false, this.isLoading = false, this.isError = false, this.isSuccess = false, this.message});
  final String? message;
  final bool isInitial, isEmpty, isLoading, isError, isSuccess;

  const Status.initial() : this(isInitial: true);
  const Status.empty({String? message}) : this(isEmpty: true, message: message);
  const Status.loading({String? message}) : this(isLoading: true, message: message);
  const Status.error({String? message}) : this(isError: true, message: message);
  const Status.success({String? message}) : this(isSuccess: true, message: message);
}
