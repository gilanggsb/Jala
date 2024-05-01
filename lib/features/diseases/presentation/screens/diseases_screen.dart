import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:jalatest/features/features.dart';

class DiseasesScreen extends StatefulWidget {
  const DiseasesScreen({super.key});

  @override
  State<DiseasesScreen> createState() => _DiseasesScreenState();
}

class _DiseasesScreenState extends State<DiseasesScreen> {
  final ScrollController scrollController = ScrollController();
  @override
  void initState() {
    scrollController.addListener(() {
      if (scrollController.position.pixels >=
          scrollController.position.maxScrollExtent) {
        final diseasesBloc = context.read<DiseasesBloc>();
        if (diseasesBloc.hasReachedEnd) {
          return;
        }
        diseasesBloc.add(const DiseasesEvent.nextPage());
      }
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return DefaultScaffold(
      body: SizedBox(
        height: context.getHeight,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisSize: MainAxisSize.min,
          children: [
            DefaultText(
              'Daftar Penyakit',
              style: AppUtils.boldTextStyle(
                fontColor: AppColors.darkBlue,
                fontSize: 18,
              ),
            ),
            16.heightBox,
            Flexible(
              child: BlocConsumer<DiseasesBloc, DiseasesState>(
                listener: (context, state) {
                  state.maybeWhen(
                    orElse: () {},
                    success: (data, isLoading, hasReachedEnd) {
                      if (hasReachedEnd != null && hasReachedEnd) {
                        AppUtils.showSnackBar(
                            context, 'Berhasil memuat semua data');
                      }
                    },
                  );
                },
                builder: (context, state) {
                  return state.maybeWhen(
                    orElse: () => const SizedBox(),
                    success: (data, isLoading, hasReachedEnd) {
                      return ListView.separated(
                        controller: scrollController,
                        shrinkWrap: true,
                        itemCount: data.length +
                            (isLoading != null && isLoading ? 1 : 0),
                        separatorBuilder: (context, index) => 12.heightBox,
                        itemBuilder: (context, index) {
                          if (index < data.length) {
                            final Disease disease = data[index];
                            return MediaCard(
                              disease: disease,
                              onPress: () {
                                context.pushNamed(
                                  RouteName.webviewBlog.name,
                                  extra: WebviewParamsScreen(
                                    webviewUrl:
                                        URL.webviewDisease(disease.id ?? 0),
                                    title: 'Info Penyakit',
                                  ),
                                );
                              },
                              onPressShare: () {
                                AppUtils.copyLink(
                                  context,
                                  URL.shareDisease(disease.id ?? 0),
                                  'Tautan berhasil di salin',
                                );
                              },
                            );
                          }

                          return const Center(
                            child: DefaultCircularProgressIndicator(),
                          ).paddingOnly(top: 12);
                        },
                      );
                    },
                    failed: (text) => const Center(
                      child: DefaultText('Gagal mengambil data'),
                    ),
                    initial: () => const SizedBox(),
                    loading: () => const Center(
                      child: DefaultCircularProgressIndicator(),
                    ),
                  );
                },
              ),
            ),
          ],
        ).paddingSymmetric(horizontal: 8, vertical: 6),
      ),
    );
  }
}
