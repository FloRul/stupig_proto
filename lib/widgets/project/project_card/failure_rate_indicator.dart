import 'package:flutter/material.dart';

class FailureRateIndicator extends StatelessWidget {
  final double failureRate; // Value between 0 and 100

  const FailureRateIndicator({
    super.key,
    required this.failureRate,
  });

  Color _getColorBasedOnRate() {
    if (failureRate <= 25) {
      return Colors.green;
    } else if (failureRate <= 50) {
      return Colors.yellow;
    } else if (failureRate <= 75) {
      return Colors.orange;
    } else {
      return Colors.red;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Visibility(
      visible: failureRate > 0,
      child: Row(
        children: [
          Icon(
            Icons.error,
            color: _getColorBasedOnRate(),
          ),
          const SizedBox(width: 8),
          Text('${failureRate.toStringAsFixed(1)} %')
        ],
      ),
    );
  }
}
