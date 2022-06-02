class TimeStamp {
  final DateTime start;
  final Duration duration;
  const TimeStamp(this.start, this.duration);

  @override
  String toString() {
    return '${start.toString()} - ${start.add(duration).toString()}';
  }
}

class TimeStampsCalculator {
  List<TimeStamp> calculateTimeStamp(
    DateTime dayStart,
    DateTime dayEnd,
    List<TimeStamp> occupiedTimeStamps,
    Duration outputTimeStampDuration,
  ) {
    final dayDuration = dayEnd.difference(dayStart);
    final timeStamps = <TimeStamp>[];
    // ignore: use_named_constants
    for (var i = const Duration();
        i < dayDuration;
        i += outputTimeStampDuration) {
      final start = dayStart.add(i);
      var occupied = false;
      for (final occupiedTime in occupiedTimeStamps) {
        if (occupiedTime.start.isAtSameMomentAs(start)) {
          final outputMinutes = outputTimeStampDuration.inMinutes;
          final roundedMinutes =
              (occupiedTime.duration.inMinutes / outputMinutes).ceil() *
                  outputMinutes;
          occupied = true;
          i += Duration(minutes: roundedMinutes) - outputTimeStampDuration;
          break;
        }
      }
      if (occupied) {
        continue;
      }
      timeStamps.add(TimeStamp(start, outputTimeStampDuration));
    }
    return timeStamps;
  }
}


  // final calc = TimeStampsCalculator();

  //   final result = calc.calculateTimeStamp(

  //     DateTime(2020, 1, 1, 8),

  //     DateTime(2020, 1, 1, 16),

  //     [

  //       TimeStamp(DateTime(2020, 1, 1, 10, 0), const Duration(minutes: 70)),

  //       TimeStamp(DateTime(2020, 1, 1, 14, 0), const Duration(hours: 1)),

  //     ],

  //     const Duration(minutes: 30),

  //   );

  //   for (final element in result) {

  //     print('$element\n');

  //   }

