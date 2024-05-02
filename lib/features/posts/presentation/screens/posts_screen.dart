import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

import '../../../features.dart';

class PostsScreen extends StatefulWidget {
  const PostsScreen({super.key});

  @override
  State<PostsScreen> createState() => _PostsScreenState();
}

class _PostsScreenState extends State<PostsScreen> {
  final ScrollController scrollController = ScrollController();
  @override
  void initState() {
    scrollController.addListener(() {
      if (scrollController.position.pixels >=
          scrollController.position.maxScrollExtent) {
        final postsBloc = context.read<PostsBloc>();
        if (postsBloc.hasReachedEnd || postsBloc.isLoading) {
          return;
        }
        postsBloc.add(const PostsEvent.nextPage());
      }
    });
    super.initState();
  }

  @override
  void dispose() {
    scrollController.dispose();
    super.dispose();
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
              'Kabar terbaru',
              style: AppUtils.boldTextStyle(
                fontColor: AppColors.darkBlue,
                fontSize: 18,
              ),
            ),
            16.heightBox,
            Flexible(
              child: BlocConsumer<PostsBloc, PostsState>(
                listener: (context, state) {
                  state.maybeWhen(
                    orElse: () {},
                    success: (data, isLoading, hasReachedEnd) {
                      if (hasReachedEnd != null && hasReachedEnd) {
                        AppUtils.showSnackBar(
                            context, 'Berhasil memuat semua data');
                      }
                    },
                    failed: (message, shrimpPrices) {
                      if (!shrimpPrices.isNull) {
                        AppUtils.showSnackBar(context, message);
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
                            final Post post = data[index];
                            return MediaCard(
                              createdAt: post.createdAt,
                              description: post.metaDescription,
                              title: post.title,
                              imageUrl: post.image,
                              onPress: () {
                                context.pushNamed(
                                  RouteName.webviewBlog.name,
                                  extra: WebviewParamsScreen(
                                    webviewUrl: URL.webviewPost(post.id ?? 0),
                                    title: 'Kabar Udang',
                                  ),
                                );
                              },
                              onPressShare: () {
                                AppUtils.copyLink(
                                  context,
                                  URL.sharePost(post.id ?? 0),
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
                    failed: (text, data) {
                      if (data != null) {
                        return ListView.separated(
                          controller: scrollController,
                          shrinkWrap: true,
                          itemCount: data.length,
                          separatorBuilder: (context, index) => 12.heightBox,
                          itemBuilder: (context, index) {
                            if (index < data.length) {
                              final Post post = data[index];
                              return MediaCard(
                                createdAt: post.createdAt,
                                description: post.metaDescription,
                                title: post.title,
                                imageUrl: post.image,
                                onPress: () {
                                  context.pushNamed(
                                    RouteName.webviewBlog.name,
                                    extra: WebviewParamsScreen(
                                      webviewUrl: URL.webviewPost(post.id ?? 0),
                                      title: 'Kabar Udang',
                                    ),
                                  );
                                },
                                onPressShare: () {
                                  AppUtils.copyLink(
                                    context,
                                    URL.sharePost(post.id ?? 0),
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
                      }
                      return const Center(
                        child: DefaultText('Gagal memuat data'),
                      );
                    },
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
