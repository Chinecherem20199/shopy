import 'package:fpdart/fpdart.dart';
import 'package:shopy/core/failure.dart';

typedef FutureEither<T> = Future<Either<Failure, T>>;
typedef FailureVoid = FutureEither<void>;
