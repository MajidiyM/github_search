import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:github_search/repo_list/bloc/repos_list_bloc.dart';
import 'package:github_search/repo_list/widget.dart/widget.dart';
import '../../repositories/repositrories.dart';

class RepoListScreen extends StatefulWidget {
  const RepoListScreen({super.key});

  @override
  State<RepoListScreen> createState() => _RepoListScreenState();
}

class _RepoListScreenState extends State<RepoListScreen> {
  final _reposListBloc = ReposListBloc(GithubRepo());

  @override
  void initState() {
    super.initState();
    _reposListBloc.add(LoadReposList());
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF0d1525),
      appBar: AppBar(
        title: const Text(
          "Git Search",
          style: TextStyle(
            fontWeight: FontWeight.w500,
            color: Colors.white,
          ),
        ),
        backgroundColor: Theme.of(context).appBarTheme.backgroundColor,
      ),
      body: RefreshIndicator(
        onRefresh: () async {
          return _reposListBloc.add(LoadReposList());
        },
        child: BlocBuilder<ReposListBloc, ReposListState>(
          bloc: _reposListBloc,
          builder: (context, state) {
            if (state is ReposListLoaded) {
              return Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  children: [
                    // поле поиска
                    const TextField(
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 22.0,
                      ),
                      // стиль поля поиска
                      decoration: InputDecoration(
                          contentPadding: EdgeInsets.symmetric(
                              vertical: 15.0, horizontal: 10.0),
                          filled: true,
                          fillColor: Color(0xFF1b2333),
                          labelStyle: TextStyle(
                            color: Colors.black,
                          )),
                    ),
                    const SizedBox(
                      height: 20.0,
                    ),
                    Expanded(
                      // список проектов
                      child: ListView.separated(
                        shrinkWrap:
                            true, // Указываем ListView сжиматься, чтобы занять только необходимое пространство
                        itemBuilder: (context, index) {
                          final reposContent = state.reposList[index];
                          return RepoCard(reposContent: reposContent);
                        }, // RepoCard() - виджет карточек проектов
                        separatorBuilder: (context, index) => const Divider(),
                        itemCount: state.reposList.length,
                      ),
                    ),
                  ],
                ),
              );
            }
            if (state is ReposListLoadingFailure) {
              return Center(
                child: TextButton(
                  onPressed: () {
                    _reposListBloc.add(LoadReposList());
                  },
                  child: const Text('Try again'),
                ),
              );
            }
            return const Center(
              child: CircularProgressIndicator(),
            );
          },
        ),
      ),
    );
  }
}
