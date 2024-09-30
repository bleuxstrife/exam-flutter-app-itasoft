import 'package:exam_app_itasoft/cubit/home/home_cubit.dart';
import 'package:exam_app_itasoft/cubit/stock_detail/stock_detail_cubit.dart';
import 'package:exam_app_itasoft/cubit/stock_filter/stock_filter_cubit.dart';
import 'package:exam_app_itasoft/data_source/repo/warehouse/warehouse_repo.dart';
import 'package:exam_app_itasoft/model/stock_item/stock_item.dart';
import 'package:exam_app_itasoft/state/stock_filter/stock_filter_state.dart';
import 'package:exam_app_itasoft/utils/datetime_helper.dart';
import 'package:exam_app_itasoft/widgets/app_style.dart';
import 'package:exam_app_itasoft/widgets/base_text_field.dart';
import 'package:exam_app_itasoft/widgets/custom_grid.dart';
import 'package:exam_app_itasoft/widgets/space.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../widgets/app_color.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    final repo = RepositoryProvider.of<WarehouseRepo>(context);
    return MultiBlocProvider(
        providers: [
          BlocProvider(create: (_) => HomeCubit(repo)..init()),
          BlocProvider(create: (_) => StockDetailCubit(repo)),
          BlocProvider(
            create: (_) => StockFilterCubit(),
          )
        ],
        child: Builder(
          builder: (context) => PopScope(
            canPop: context.watch<StockDetailCubit>().canPop,
            child: Padding(
                padding: const EdgeInsets.all(16), child: _buildContent(context)),
          ),
        ));
  }

  Widget _buildContent(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        _buildSearchFilter(context),
        Space.vMedium,
        Expanded(child: _buildRefresh(context))
      ],
    );
  }

  Widget _buildSearchFilter(BuildContext context) {
    final cubitWatch = context.watch<StockFilterCubit>();
    final cubitRead = context.read<StockFilterCubit>();
    return BlocListener<StockFilterCubit, StockFilterState>(
      listener: (context, state) => state.maybeWhen(
          filter: (search, sort) => context
              .read<HomeCubit>()
              .updateFilter(search: search, sort: sort),
          orElse: () {
            return;
          }),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Expanded(
              child: BaseTextField.searchTextField(
                  controller: cubitWatch.searchCtrl,
                  onChanged: (search) => cubitRead.searchOnChanged(search))),
          Space.hMedium,
          Expanded(
              child: BaseTextField.filterDropDown<String>(
                  value: cubitWatch.sort,
                  listItem: cubitWatch.listFilter,
                  callback: (filter) => cubitRead.filterCallback(filter),
                  itemBuilder: (_, name, isSelected) =>
                      BaseTextField.buildItemDropDown(name, isSelected)))
        ],
      ),
    );
  }

  Widget _buildRefresh(BuildContext context) {
    return RefreshIndicator(
        child: _buildGrid(context),
        onRefresh: () async {
          await context.read<HomeCubit>().refreshData();
        });
  }

  _buildGrid(BuildContext context) {
    // final cubitWatch = context.watch<HomeCubit>();
    final cubitRead = context.read<HomeCubit>();
    return CustomGrid<StockItem, HomeCubit>(
      buildItem: (context, item) => _buildItem(context, item),
      refresh: () => cubitRead.refreshData,
      emptyText: "Tidak ada stock",
    );
  }

  Widget _buildItem(BuildContext context, StockItem item) {
    final size = MediaQuery.of(context).size.width / 10;
    return InkWell(
      onTap: () => context.read<StockDetailCubit>().getDetail(context, item.id),
      child: Card(
        color: AppColor.systemWhiteColor,
        elevation: 5,
        child: Padding(
          padding: const EdgeInsets.all(8),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Container(
                  width: size,
                  height: size,
                  alignment: Alignment.center,
                  color: AppColor.systemLightPurpleColor,
                  child:  Padding(
                      padding: const EdgeInsets.all(10),
                      child: Icon(
                        Icons.warehouse,
                        size: size/2,
                        color: AppColor.systemPurpleColor,
                      ))),
              Space.hSmall,
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      item.name,
                      style: AppStyle.itemLabelStyle,
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                    ),
                    Text(
                      DatetimeHelper.formatStockItemDate(item.expired),
                      style: DatetimeHelper.isExpire(item.expired)
                          ? AppStyle.itemLabelRedStyle
                          : AppStyle.itemLabelStyle,
                      maxLines: 1,
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
