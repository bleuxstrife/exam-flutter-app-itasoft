import 'package:exam_app_itasoft/widgets/circular_loading.dart';
import 'package:exam_app_itasoft/widgets/on_refresh.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../state/result_state/result_state.dart';
import 'app_style.dart';

class CustomGrid<T, B extends StateStreamable<ResultState<List<T>>>>
    extends StatelessWidget {
  const CustomGrid(
      {super.key,
      required this.buildItem,
      required this.refresh,
      this.emptyText});

  final GridItem buildItem;
  final GridRefresh refresh;
  final String? emptyText;

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<B, ResultState<List<T>>>(
        builder: (context, state) => state.maybeWhen(
            data: (data) {
              if (data.isEmpty) return _emptyData(context, emptyText);
              return _grid(context, data);
            },
            error: (eM) => Center(
                  child: OnRefresh(message: eM, onRefresh: () => refresh()),
                ),
            orElse: () => const Center(
                  child: CircularLoading(),
                )));
  }

  Widget _grid(BuildContext context, List<T> data) {
    final aspectRatio = MediaQuery.of(context).size.height / 350;
    return GridView.builder(
        itemCount: data.length,
        gridDelegate:  SliverGridDelegateWithFixedCrossAxisCount(
          childAspectRatio: aspectRatio,
            crossAxisCount: 2, crossAxisSpacing: 1, mainAxisSpacing: 3),
        itemBuilder: (context, index) => buildItem(context, data[index]));
  }

  Widget _emptyData(BuildContext context, String? emptyNote) {
    return Center(
      child: Text(
        emptyNote ?? "Tidak ada data",
        style: AppStyle.labelStyle,
        textAlign: TextAlign.center,
      ),
    );
  }
}

typedef GridItem<T> = Widget Function(BuildContext context, T item);
typedef GridRefresh = void Function();
typedef TryAgainCallback = void Function();
