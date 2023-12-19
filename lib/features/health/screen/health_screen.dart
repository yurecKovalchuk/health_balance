import 'package:flutter/material.dart';

import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:health_balance/features/features.dart';

class HealthScreen extends StatefulWidget {
  const HealthScreen({super.key});

  @override
  State<HealthScreen> createState() => _HealthScreenState();
}

class _HealthScreenState extends State<HealthScreen> {
  HealthBloc get _bloc => BlocProvider.of<HealthBloc>(context);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocConsumer<HealthBloc, HealthState>(
        builder: (context, state) {
          return Padding(
            padding: const EdgeInsets.all(24.0),
            child: Column(
              children: [
                Row(
                  children: [
                    Text(
                      'Health balance',
                      style: Theme.of(context).textTheme.headlineSmall?.copyWith(
                            fontWeight: FontWeight.w600,
                          ),
                    ),
                    const Spacer(),
                    InkWell(
                      child: Row(
                        children: [
                          Text(
                            'Last week',
                            style: Theme.of(context).textTheme.titleMedium?.copyWith(
                                  fontWeight: FontWeight.w400,
                                ),
                          ),
                          const Icon(Icons.menu_open)
                        ],
                      ),
                    )
                  ],
                ),
                Container(
                  height: 80,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(16.0),
                    color: Theme.of(context).colorScheme.onSecondary,
                  ),
                  margin: const EdgeInsets.symmetric(
                    vertical: 16.0,
                  ),
                  foregroundDecoration: const BoxDecoration(shape: BoxShape.circle),
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 24),
                        child: Row(
                          children: [
                            const Icon(
                              Icons.circle,
                              color: Colors.amber,
                              size: 8,
                            ),
                            const SizedBox(
                              width: 8,
                            ),
                            Text("Body: ${state.healthBalanceModel.body?.toStringAsFixed(1)} %"),
                            const Spacer(),
                            const Icon(Icons.circle, color: Colors.deepPurple, size: 8),
                            const SizedBox(
                              width: 8,
                            ),
                            Text("Body: ${state.healthBalanceModel.mind?.toStringAsFixed(1)} %"),
                            const Spacer(),
                            const Icon(Icons.circle, color: Colors.blue, size: 8),
                            const SizedBox(
                              width: 8,
                            ),
                            Text("Body: ${state.healthBalanceModel.spirit?.toStringAsFixed(1)} %"),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(
                          height: 16.0,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15.0),
                          ),
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(15.0),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Expanded(
                                  flex: state.healthBalanceModel.body!.toInt(),
                                  child: AnimatedContainer(
                                    duration: const Duration(seconds: 1),
                                    color: Colors.amber,
                                  ),
                                ),
                                Expanded(
                                  flex: state.healthBalanceModel.mind!.toInt(),
                                  child: AnimatedContainer(
                                    duration: const Duration(seconds: 1),
                                    color: Colors.deepPurple,
                                  ),
                                ),
                                Expanded(
                                  flex: state.healthBalanceModel.spirit!.toInt(),
                                  child: AnimatedContainer(
                                    duration: const Duration(seconds: 1),
                                    color: Colors.blue,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 24,
                ),
                SliderTheme(
                  data: SliderThemeData(
                    trackShape: CustomTrackShape(),
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      const Text('Body'),
                      Slider(
                        value: state.healthBalanceModel.body!.toDouble(),
                        max: 100,
                        divisions: 100,
                        onChanged: (double value) {
                          _bloc.updateValues(
                            value,
                            state.healthBalanceModel.mind!.toDouble(),
                            state.healthBalanceModel.spirit!.toDouble(),
                          );
                        },
                      ),
                      const SizedBox(
                        height: 16,
                      ),
                      const Text('Mind'),
                      Slider(
                        value: state.healthBalanceModel.mind!.toDouble(),
                        max: 100,
                        divisions: 100,
                        onChanged: (double value) {
                          _bloc.updateValues(
                            state.healthBalanceModel.body!.toDouble(),
                            value,
                            state.healthBalanceModel.spirit!.toDouble(),
                          );
                        },
                      ),
                      const SizedBox(
                        height: 16,
                      ),
                      const Text('Spirit'),
                      Slider(
                        value: state.healthBalanceModel.spirit!.toDouble(),
                        max: 100,
                        divisions: 100,
                        onChanged: (double value) {
                          _bloc.updateValues(state.healthBalanceModel.body!.toDouble(),
                              state.healthBalanceModel.mind!.toDouble(), value);
                        },
                      ),
                    ],
                  ),
                ),
              ],
            ),
          );
        },
        listener: (context, state) {},
      ),
    );
  }
}

class CustomTrackShape extends RoundedRectSliderTrackShape {
  @override
  Rect getPreferredRect({
    required RenderBox parentBox,
    Offset offset = Offset.zero,
    required SliderThemeData sliderTheme,
    bool isEnabled = false,
    bool isDiscrete = false,
  }) {
    final trackHeight = sliderTheme.trackHeight;
    final trackLeft = offset.dx;
    final trackTop = offset.dy + (parentBox.size.height - trackHeight!) / 2;
    final trackWidth = parentBox.size.width;
    return Rect.fromLTWH(trackLeft, trackTop, trackWidth, trackHeight);
  }
}
