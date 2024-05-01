import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../features.dart';

class JalaMediaScreen extends StatelessWidget {
  const JalaMediaScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (_) => getIt<DiseasesBloc>()..init()),
        BlocProvider(create: (_) => getIt<PostsBloc>()..init()),
      ],
      child: MaterialApp(
        home: DefaultTabController(
          length: 3,
          child: DefaultScaffold(
            appBar: DefaultAppBar(
              appbarSize: 100,
              title: 'Jala Media',
              bottom: PreferredSize(
                preferredSize: const Size.fromHeight(kToolbarHeight),
                child: Material(
                  child: TabBar(
                    indicatorColor: AppColors.primary,
                    unselectedLabelColor: AppColors.grey,
                    labelColor: AppColors.primary,
                    indicatorWeight: 4,
                    indicatorSize: TabBarIndicatorSize.tab,
                    tabs: [
                      Tab(
                        child: DefaultText(
                          'Harga Udang',
                          style: AppUtils.boldTextStyle(
                            fontSize: 14,
                            letterSpacing: 0.5,
                          ),
                        ),
                      ),
                      Tab(
                        child: DefaultText(
                          'Kabar Udang',
                          style: AppUtils.boldTextStyle(
                            fontSize: 14,
                            letterSpacing: 0.5,
                          ),
                        ),
                      ),
                      Tab(
                        child: DefaultText(
                          'Penyakit',
                          style: AppUtils.boldTextStyle(
                            fontSize: 14,
                            letterSpacing: 0.5,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            body: const TabBarView(
              children: [
                Icon(Icons.directions_car),
                PostsScreen(),
                DiseasesScreen()
              ],
            ),
          ),
        ),
      ),
    );
  }
}
