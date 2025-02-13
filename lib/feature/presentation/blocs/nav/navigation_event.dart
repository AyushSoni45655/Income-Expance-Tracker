part of 'navigation_bloc.dart';

@immutable
sealed class NavigationEvent {}
class NavigationNavEvent extends NavigationEvent{
  final int index;
  NavigationNavEvent({required this.index});
}