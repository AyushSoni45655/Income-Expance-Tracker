import 'package:get_it/get_it.dart';
import 'package:income_expance_tracker_app/feature/presentation/blocs/nav/navigation_bloc.dart';
import 'package:income_expance_tracker_app/feature/presentation/blocs/password/toggle_bloc.dart';
final sl = GetIt.instance;
Future<void>setUpLocator()async{
  sl.registerFactory(() => ToggleBloc(),);
  sl.registerFactory(() => NavigationBloc(),);
}