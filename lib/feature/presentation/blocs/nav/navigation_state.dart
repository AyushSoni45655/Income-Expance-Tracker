part of 'navigation_bloc.dart';

@immutable
sealed class NavigationState {}

final class NavigationInitial extends NavigationState {}
final class NavigationNavState extends NavigationState{
  final curruntIndex;
  NavigationNavState({required this.curruntIndex});
}