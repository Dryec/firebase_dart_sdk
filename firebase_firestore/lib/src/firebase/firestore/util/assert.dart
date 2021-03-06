// File created by
// Lung Razvan <long1eu>
// on 17/09/2018

// ignore_for_file: avoid_positional_boolean_parameters

/// Triggers a hard assertion. The condition is guaranteed to be checked at
/// runtime. If the condition is false an AssertionError will be thrown.
void hardAssert(bool condition, String message) {
  if (!condition) {
    throw AssertionError(message);
  }
}

T checkNotNull<T>(T reference, [Object errorMessage]) {
  if (reference == null) {
    throw ArgumentError('$errorMessage');
  }
  return reference;
}

/// Ensures the truth of an expression involving one or more parameters to the
/// calling method.

void checkArgument(bool expression, Object errorMessage) {
  if (!expression) {
    throw ArgumentError(errorMessage);
  }
}

/// Throws an AssertionError with the provided message. The method returns an
/// AssertionError so it can be used with a throw statement. However, the
/// method itself throws an AssertionError so fail will not accidentally be
/// silent if the throw is forgotten.
StateError fail(String message, [Error cause]) {
  throw StateError('$message ${cause != null ? 'cause: $cause' : ''}');
}
