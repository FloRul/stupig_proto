import 'package:flutter/material.dart';

class FailureRateIndicator extends StatelessWidget {
  final double failureRate; // Value between 0 and 100

  const FailureRateIndicator({
    super.key,
    required this.failureRate,
  });

  @override
  Widget build(BuildContext context) {
    return Visibility(
      visible: failureRate > 0,
      child: Tooltip(
        message:
            'Failure Rate: Your chances of experiencing an unexpected \'learning opportunity.\'\nHigher rate = higher risk of earning exactly zero rewards, just like those unit tests you promised to write later.',
        child: Row(
          children: [
            Icon(
              Icons.error,
              color: Colors.red[400],
            ),
            const SizedBox(width: 4),
            Text('${failureRate.toStringAsFixed(1)} %')
          ],
        ),
      ),
    );
  }
}
