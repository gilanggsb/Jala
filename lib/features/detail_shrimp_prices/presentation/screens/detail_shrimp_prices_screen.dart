import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

import '../../../features.dart';

class DetailShrimpPricesScreen extends StatefulWidget {
  final DetailShrimpPricesParams detailShrimpPricesParams;
  const DetailShrimpPricesScreen(
      {super.key, required this.detailShrimpPricesParams});

  @override
  State<DetailShrimpPricesScreen> createState() =>
      _DetailShrimpPricesScreenState();
}

class _DetailShrimpPricesScreenState extends State<DetailShrimpPricesScreen> {
  final detailShrimpPricesBloc = getIt.get<DetailShrimpPricesBloc>();
  @override
  void initState() {
    detailShrimpPricesBloc.detailShrimpPricesParams =
        widget.detailShrimpPricesParams;
    detailShrimpPricesBloc.add(const DetailShrimpPricesEvent.getData());
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider.value(
      value: detailShrimpPricesBloc,
      child: DefaultScaffold(
        marginBody: const EdgeInsets.all(0),
        appBar: DefaultAppBar(
          title: 'Harga Udang',
          leading: IconButton(
            icon: const Icon(
              Icons.arrow_back,
              size: 28,
              color: AppColors.white,
            ),
            onPressed: () {
              context.pop();
            },
          ),
          actions: [
            IconButton(
              onPressed: () {
                AppUtils.copyLink(
                  context,
                  URL.shareShrimpPrices(widget.detailShrimpPricesParams.id),
                  'Tautan berhasil disalin',
                );
              },
              icon: const Icon(
                Icons.share,
                color: AppColors.white,
              ),
            )
          ],
        ),
        body: BlocBuilder<DetailShrimpPricesBloc, DetailShrimpPricesState>(
          builder: (context, state) {
            return state.maybeWhen(
              orElse: () => const SizedBox(),
              loading: () => const Center(
                child: DefaultCircularProgressIndicator(),
              ),
              failed: (message) => const Center(
                child: DefaultText('Gagal memuat data'),
              ),
              success: (shrimpPrice) {
                return DetailPrice(shrimpPrice: shrimpPrice!);
              },
            );
          },
        ),
      ),
    );
  }
}
