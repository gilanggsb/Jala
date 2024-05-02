import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

import '../../../features.dart';

class NewPrices extends StatefulWidget {
  const NewPrices({super.key});

  @override
  State<NewPrices> createState() => _NewPricesState();
}

class _NewPricesState extends State<NewPrices> {
  final ScrollController scrollController = ScrollController();
  @override
  void initState() {
    scrollController.addListener(() {
      if (scrollController.position.pixels >=
          scrollController.position.maxScrollExtent) {
        final shrimpPricesBloc = context.read<ShrimpPricesBloc>();
        if (shrimpPricesBloc.hasReachedEnd || shrimpPricesBloc.isLoading) {
          return;
        }
        shrimpPricesBloc.add(const ShrimpPricesEvent.nextPage());
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
    return SizedBox(
      height: context.getHeight * 0.5,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const DefaultText(
            'Harga Terbaru',
            fontWeight: FontWeight.bold,
            fontSize: 18,
            color: AppColors.primary,
          ),
          8.heightBox,
          Flexible(
              child: BlocConsumer<ShrimpPricesBloc, ShrimpPricesState>(
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
                    itemCount:
                        data.length + (isLoading != null && isLoading ? 1 : 0),
                    separatorBuilder: (context, index) => 12.heightBox,
                    itemBuilder: (context, index) {
                      if (index < data.length) {
                        final shrimpPrice = data[index];

                        return NewPriceCard(
                          shrimpPrice: shrimpPrice,
                          onPressDetail: () {
                            context.pushNamed(
                              RouteName.detailShrimpPrices.name,
                              extra: DetailShrimpPricesParams(
                                id: shrimpPrice.id ?? 0,
                                shrimpPricesRequest: context
                                    .read<ShrimpPricesBloc>()
                                    .shrimpPricesRequest,
                              ),
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
                            final shrimpPrice = data[index];

                            return NewPriceCard(
                              shrimpPrice: shrimpPrice,
                              onPressDetail: () {},
                            );
                          }

                          return const Center(
                            child: DefaultCircularProgressIndicator(),
                          ).paddingOnly(top: 12);
                        });
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
          ))
        ],
      ),
    );
  }
}
