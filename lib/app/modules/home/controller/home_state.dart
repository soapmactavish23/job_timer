part of 'home_controller.dart';

enum HomeStatus {
  initial,
  loading,
  complete,
  failure;
}

class HomeState extends Equatable {
  const HomeState(
      {required this.projects,
      required this.status,
      required this.projectFilter});
  final List<ProjectModel> projects;
  final HomeStatus status;
  final ProjectStatus projectFilter;

  const HomeState._({
    required this.projects,
    required this.status,
    required this.projectFilter,
  });

  HomeState.initial()
      : this._(
          status: HomeStatus.initial,
          projects: [],
          projectFilter: ProjectStatus.em_andamento,
        );

  @override
  List<Object?> get props => [projects, status, projectFilter];
  HomeState copyWith(
      {List<ProjectModel>? projects,
      HomeStatus? status,
      ProjectStatus? projectFilter}) {
    return HomeState(
        projects: projects ?? this.projects,
        status: status ?? this.status,
        projectFilter: projectFilter ?? this.projectFilter);
  }
}
