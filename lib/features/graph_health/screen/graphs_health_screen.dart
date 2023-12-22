import 'package:flutter/material.dart';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:health_balance/app/app.dart';

import 'package:health_balance/features/features.dart';
import 'package:pie_chart/pie_chart.dart';

class GraphHealthScreen extends StatefulWidget {
  const GraphHealthScreen({
    super.key,
  });

  @override
  State<GraphHealthScreen> createState() => _GraphHealthScreenState();
}

class _GraphHealthScreenState extends State<GraphHealthScreen> {
  GraphHealthBloc get _bloc => BlocProvider.of<GraphHealthBloc>(context);

  late Map<String, double> dataMap;

  @override
  void initState() {
    _bloc.getListHealthBalanceDTO();
    super.initState();
  }

  List<Color> colorList = [
    Colors.amber,
    Colors.deepPurple,
    Colors.blue,
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () => context.go(AppRoutInfo.healthScreen.path),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24.0, vertical: 36),
        child: BlocConsumer<GraphHealthBloc, GraphHealthState>(
          builder: (context, state) {
            return Column(
              children: [
                Text(
                  'Average health balance for the week',
                  style: Theme.of(context).textTheme.titleMedium?.copyWith(
                        fontWeight: FontWeight.w400,
                      ),
                ),
                const SizedBox(
                  height: 36,
                ),
                state.healthBalanceDTO == null
                    ? const CircularProgressIndicator()
                    : PieChart(
                        dataMap: dataMap,
                        colorList: colorList,
                        chartRadius: MediaQuery.of(context).size.width / 2,
                        ringStrokeWidth: 24,
                        animationDuration: const Duration(seconds: 3),
                        chartValuesOptions: const ChartValuesOptions(
                            showChartValues: true,
                            showChartValuesOutside: true,
                            chartValueStyle: TextStyle(color: Colors.white),
                            showChartValuesInPercentage: true,
                            showChartValueBackground: false),
                        legendOptions: const LegendOptions(
                            showLegends: true,
                            legendShape: BoxShape.rectangle,
                            legendTextStyle: TextStyle(fontSize: 16),
                            legendPosition: LegendPosition.bottom,
                            showLegendsInRow: true),
                      ),
              ],
            );
          },
          listener: (context, state) {
            if(state.healthBalanceDTO != null){
              dataMap = _bloc.averageValueToMap();
            }
          },
        ),
      ),
    );

  }

}
