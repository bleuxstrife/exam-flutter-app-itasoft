import 'package:exam_app_itasoft/cubit/adjustment/adjustment_stock_cubit.dart';
import 'package:exam_app_itasoft/data_source/repo/warehouse/warehouse_repo.dart';
import 'package:exam_app_itasoft/model/stock_item/stock_item_detail.dart';
import 'package:exam_app_itasoft/utils/datetime_helper.dart';
import 'package:exam_app_itasoft/widgets/base_button.dart';
import 'package:exam_app_itasoft/widgets/space.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

import '../../widgets/app_color.dart';
import '../../widgets/app_style.dart';

class ItemDetailView extends StatelessWidget {
  final StockItemDetail item;
  final bool needToAdjust;
  const ItemDetailView(
      {super.key, required this.item, this.needToAdjust = false});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) =>
          AdjustmentStockCubit(RepositoryProvider.of<WarehouseRepo>(context)),
      child: Builder(builder: (context) {
        return _buildContent(context);
      }),
    );
  }

  Widget _buildContent(BuildContext context) {
    return PopScope(
      canPop: context.watch<AdjustmentStockCubit>().canPop,
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: SingleChildScrollView(
          child: Column(
            children: [
              _buildItemTitle(),
              Space.vMedium,
              _itemImage(context),
              Space.vMedium,
              _buildForm(),
              Space.vMedium,
              _buildButton(context)
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildButton(BuildContext context) {
    return Center(
      child: BaseButton.smallButton(
          text: needToAdjust ? "Request Item" : "Back",
          onPressed: () {
            if (needToAdjust) {
              context.read<AdjustmentStockCubit>().requestItem(context, item);
            } else {
              context.pop();
            }
          }),
    );
  }

  Widget _itemImage(BuildContext context) {
    final size = MediaQuery.of(context).size.width / 5;
    return Container(
        width: size,
        height: size,
        alignment: Alignment.center,
        color: AppColor.systemLightPurpleColor,
        child: Padding(
            padding: const EdgeInsets.all(10),
            child: Icon(
              Icons.warehouse,
              size: size / 2,
              color: AppColor.systemPurpleColor,
            )));
  }

  Widget _buildForm() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        _buildFormItem("ID Gudang", item.warehouse),
        Space.vSmall,
        _buildFormItem("Nama Barang", item.name),
        Space.vSmall,
        _buildFormItem(
            "Exp Date", DatetimeHelper.formatStockItemDate(item.expired)),
        Space.vSmall,
        _buildFormItem("Quantity", item.stock),
        Space.vSmall,
        _buildFormItem("Safety Stock", item.safetyStock),
      ],
    );
  }

  Widget _buildFormItem(String title, String content) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Expanded(
            flex: 1,
            child: Text(
              title,
              style: AppStyle.labelBoldStyle,
            )),
        Space.vMedium,
        Expanded(
            flex: 2,
            child: Text(
              content,
              style: AppStyle.labelStyle,
              textAlign: TextAlign.right,
            )),
      ],
    );
  }

  Widget _buildItemTitle() {
    return Card(
      elevation: 5,
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: SizedBox(
          width: double.infinity,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Text(
                item.name,
                style: AppStyle.labelBoldStyle,
              ),
              Text(
                "Category : ${item.category}",
                style: AppStyle.subLabelStyle,
              )
            ],
          ),
        ),
      ),
    );
  }
}
