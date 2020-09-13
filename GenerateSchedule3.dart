import 'package:flutter/material.dart';
import 'package:smart_schedule_creator/CreateSchedule3.dart';
import 'package:smart_schedule_creator/GeneratingTasks.dart';
import 'package:smart_schedule_creator/homepage.dart';
import 'package:smart_schedule_creator/UnavailableTimes.dart';
import 'package:smart_schedule_creator/TaskRow3.dart';

class GenerateSchedule3 extends StatefulWidget {

  final List unavTimesSun;
  final List unavTimesMon;
  final List unavTimesTue;
  final List unavTimesWed;
  final List unavTimesThu;
  final List unavTimesFri;
  final List unavTimesSat;
  final TimeOfDay bedtime;
  final TimeOfDay waketime;
  final Set positionSun;
  final Set positionMon;
  final Set positionTue;
  final Set positionWed;
  final Set positionThu;
  final Set positionFri;
  final Set positionSat;
  final List newTimes;
  final List newTasks;
  final List newDaysSun;
  final List newDaysMon;
  final List newDaysTue;
  final List newDaysWed;
  final List newDaysThu;
  final List newDaysFri;
  final List newDaysSat;


  GenerateSchedule3({
    Key key,
    @required this.unavTimesSun,
    @required this.unavTimesMon,
    @required this.unavTimesTue,
    @required this.unavTimesWed,
    @required this.unavTimesThu,
    @required this.unavTimesFri,
    @required this.unavTimesSat,
    @required this.bedtime,
    @required this.waketime,
    @required this.positionSun,
    @required this.positionMon,
    @required this.positionTue,
    @required this.positionWed,
    @required this.positionThu,
    @required this.positionFri,
    @required this.positionSat,
    @required this.newTimes,
    @required this.newTasks,
    @required this.newDaysSun,
    @required this.newDaysMon,
    @required this.newDaysTue,
    @required this.newDaysWed,
    @required this.newDaysThu,
    @required this.newDaysFri,
    @required this.newDaysSat,

  }) : super(key: key);

  @override
  _GenerateSchedule3State createState() => _GenerateSchedule3State();
}


class _GenerateSchedule3State extends State<GenerateSchedule3> {

  List unavailabilityTimes = [];
  List unavTimesSun2 = [];

  @override
  Widget build(BuildContext context) {
    TimeOfDay bedtime = widget.bedtime;
    TimeOfDay waketime = widget.waketime;
    List unavTimesSun = widget.unavTimesSun;
    List unavTimesMon = widget.unavTimesMon;
    List unavTimesTue = widget.unavTimesTue;
    List unavTimesWed = widget.unavTimesWed;
    List unavTimesThu = widget.unavTimesThu;
    List unavTimesFri = widget.unavTimesFri;
    List unavTimesSat = widget.unavTimesSat;
    Set positionSun = widget.positionSun;
    Set positionMon = widget.positionMon;
    Set positionTue = widget.positionTue;
    Set positionWed = widget.positionWed;
    Set positionThu = widget.positionThu;
    Set positionFri = widget.positionFri;
    Set positionSat = widget.positionSat;
    List newTimes = widget.newTimes;
    List newDaysSun = widget.newDaysSun;
    List newDaysMon = widget.newDaysMon;
    List newDaysTue = widget.newDaysTue;
    List newDaysWed = widget.newDaysWed;
    List newDaysThu = widget.newDaysThu;
    List newDaysFri = widget.newDaysFri;
    List newDaysSat = widget.newDaysSat;
    List newTasks = widget.newTasks;

    /// FUNCTIONS TO DETERMINE UNAVAILABILITY TIMES, ADD TASKS, AND REMINDERS
    addTasksSunday(unavailabilityTimes) {
      //Determine unavailability
      if (positionSun.isNotEmpty == true) {
        for (var i = 0; i < positionSun.length; i++) {
          unavTimesSun[positionSun.elementAt(i)] =
          "${unavTimesSun[positionSun.elementAt(i)]}: Unavailable";
        }
        //Add tasks
        if (newTasks.length > 0) {
          for (var i = 0; i < newTasks.length; i++) {
              if (newDaysSun[i][0] == newTasks[i]) {
                for (var t = 0; t < newTimes[i][0]; t++) {
                  if (positionSun.contains(0) == false && unavTimesSun.length > 0) {
                    unavTimesSun[0] = "${unavTimesSun[0]}: ${newTasks[i][i]}";
                    positionSun.add(0);
                  }
                  else if (positionSun.contains(1) == false && unavTimesSun.length >= 1) {
                    unavTimesSun[1] = "${unavTimesSun[1]}: ${newTasks[i][i]}";
                    positionSun.add(1);
                  }
                  else if (positionSun.contains(2) == false && unavTimesSun.length >= 2) {
                    unavTimesSun[2] = "${unavTimesSun[2]}: ${newTasks[i][i]}";
                    positionSun.add(2);
                  }
                  else if (positionSun.contains(3) == false && unavTimesSun.length >= 3) {
                    unavTimesSun[3] = "${unavTimesSun[3]}: ${newTasks[i][i]}";
                    positionSun.add(3);
                  }
                  else if (positionSun.contains(4) == false && unavTimesSun.length >= 4) {
                    unavTimesSun[4] = "${unavTimesSun[4]}: ${newTasks[i][i]}";
                    positionSun.add(4);
                  }
                  else if (positionSun.contains(5) == false && unavTimesSun.length >= 5) {
                    unavTimesSun[5] = "${unavTimesSun[5]}: ${newTasks[i][i]}";
                    positionSun.add(5);
                  }
                  else if (positionSun.contains(6) == false && unavTimesSun.length >= 6) {
                    unavTimesSun[6] = "${unavTimesSun[6]}: ${newTasks[i][i]}";
                    positionSun.add(6);
                  }
                  else if (positionSun.contains(7) == false && unavTimesSun.length >= 7) {
                    unavTimesSun[7] = "${unavTimesSun[7]}: ${newTasks[i][i]}";
                    positionSun.add(7);
                  }
                  else if (positionSun.contains(8) == false && unavTimesSun.length >= 8) {
                    unavTimesSun[8] = "${unavTimesSun[8]}: ${newTasks[i][i]}";
                    positionSun.add(8);
                  }
                  else if (positionSun.contains(9) == false && unavTimesSun.length >= 9) {
                    unavTimesSun[9] = "${unavTimesSun[9]}: ${newTasks[i][i]}";
                    positionSun.add(9);
                  }
                  else if (positionSun.contains(10) == false && unavTimesSun.length >= 10) {
                    unavTimesSun[10] = "${unavTimesSun[10]}: ${newTasks[i][i]}";
                    positionSun.add(10);
                  }
                  else if (positionSun.contains(11) == false && unavTimesSun.length == 11) {
                    unavTimesSun[11] = "${unavTimesSun[11]}: ${newTasks[i][i]}";
                    positionSun.add(11);
                  }
                }
              }
          }
        }
      } else {
        for (var i = 0; i < newTasks.length; i++) {
            if(newDaysSun[i][0] == newTasks[i]){
              for (var t = 0; t < newTimes[i][0]; t++) {
                if (positionSun.contains(0) == false && unavTimesSun.length > 0) {
                  unavTimesSun[0] = "${unavTimesSun[0]}: ${newTasks[i][i]}";
                  positionSun.add(0);
                }
                else if (positionSun.contains(1) == false && unavTimesSun.length >= 1) {
                  unavTimesSun[1] = "${unavTimesSun[1]}: ${newTasks[i][i]}";
                  positionSun.add(1);
                }
                else if (positionSun.contains(2) == false && unavTimesSun.length >= 2) {
                  unavTimesSun[2] = "${unavTimesSun[2]}: ${newTasks[i][i]}";
                  positionSun.add(2);
                }
                else if (positionSun.contains(3) == false && unavTimesSun.length >= 3) {
                  unavTimesSun[3] = "${unavTimesSun[3]}: ${newTasks[i][i]}";
                  positionSun.add(3);
                }
                else if (positionSun.contains(4) == false && unavTimesSun.length >= 4) {
                  unavTimesSun[4] = "${unavTimesSun[4]}: ${newTasks[i][i]}";
                  positionSun.add(4);
                }
                else if (positionSun.contains(5) == false && unavTimesSun.length >= 5) {
                  unavTimesSun[5] = "${unavTimesSun[5]}: ${newTasks[i][i]}";
                  positionSun.add(5);
                }
                else if (positionSun.contains(6) == false && unavTimesSun.length >= 6) {
                  unavTimesSun[6] = "${unavTimesSun[6]}: ${newTasks[i][i]}";
                  positionSun.add(6);
                }
                else if (positionSun.contains(7) == false && unavTimesSun.length >= 7) {
                  unavTimesSun[7] = "${unavTimesSun[7]}: ${newTasks[i][i]}";
                  positionSun.add(7);
                }
                else if (positionSun.contains(8) == false && unavTimesSun.length >= 8) {
                  unavTimesSun[8] = "${unavTimesSun[8]}: ${newTasks[i][i]}";
                  positionSun.add(8);
                }
                else if (positionSun.contains(9) == false && unavTimesSun.length >= 9) {
                  unavTimesSun[9] = "${unavTimesSun[9]}: ${newTasks[i][i]}";
                  positionSun.add(9);
                }
                else if (positionSun.contains(10) == false && unavTimesSun.length >= 10) {
                  unavTimesSun[10] = "${unavTimesSun[10]}: ${newTasks[i][i]}";
                  positionSun.add(10);
                }
                else if (positionSun.contains(11) == false && unavTimesSun.length == 11) {
                  unavTimesSun[11] = "${unavTimesSun[11]}: ${newTasks[i][i]}";
                  positionSun.add(11);
                }
              }
            }
        }
      }
      return unavTimesSun;
    }
    unavTimesSun2 = addTasksSunday(unavailabilityTimes);

    addTasksMonday(unavailabilityTimes) {
      //Determine unavailability
      if (positionMon.isNotEmpty == true) {
        for (var i = 0; i < positionMon.length; i++) {
          unavTimesMon[positionMon.elementAt(i)] =
          "${unavTimesMon[positionMon.elementAt(i)]}: Unavailable";
        }
        //Add tasks
        if (newTasks.length > 0) {
          for (var i = 0; i < newTasks.length; i++) {
              if(newDaysMon[i][0] == newTasks[i]){
                for (var t = 0; t < newTimes[i][0]; t++) {
                  if (positionMon.contains(0) == false && unavTimesMon.length > 0) {
                    unavTimesMon[0] = "${unavTimesMon[0]}: ${newTasks[i][i]}";
                    positionMon.add(0);
                  }
                  else if (positionMon.contains(1) == false && unavTimesMon.length >= 1) {
                    unavTimesMon[1] = "${unavTimesMon[1]}: ${newTasks[i][i]}";
                    positionMon.add(1);
                  }
                  else if (positionMon.contains(2) == false && unavTimesMon.length >= 2) {
                    unavTimesMon[2] = "${unavTimesMon[2]}: ${newTasks[i][i]}";
                    positionMon.add(2);
                  }
                  else if (positionMon.contains(3) == false && unavTimesMon.length >= 3) {
                    unavTimesMon[3] = "${unavTimesMon[3]}: ${newTasks[i][i]}";
                    positionMon.add(3);
                  }
                  else if (positionMon.contains(4) == false && unavTimesMon.length >= 4) {
                    unavTimesMon[4] = "${unavTimesMon[4]}: ${newTasks[i][i]}";
                    positionMon.add(4);
                  }
                  else if (positionMon.contains(5) == false && unavTimesMon.length >= 5) {
                    unavTimesMon[5] = "${unavTimesMon[5]}: ${newTasks[i][i]}";
                    positionMon.add(5);
                  }
                  else if (positionMon.contains(6) == false && unavTimesMon.length >= 6) {
                    unavTimesMon[6] = "${unavTimesMon[6]}: ${newTasks[i][i]}";
                    positionMon.add(6);
                  }
                  else if (positionMon.contains(7) == false && unavTimesMon.length >= 7) {
                    unavTimesMon[7] = "${unavTimesMon[7]}: ${newTasks[i][i]}";
                    positionMon.add(7);
                  }
                  else if (positionMon.contains(8) == false && unavTimesMon.length >= 8) {
                    unavTimesMon[8] = "${unavTimesMon[8]}: ${newTasks[i][i]}";
                    positionMon.add(8);
                  }
                  else if (positionMon.contains(9) == false && unavTimesMon.length >= 9) {
                    unavTimesMon[9] = "${unavTimesMon[9]}: ${newTasks[i][i]}";
                    positionMon.add(9);
                  }
                  else if (positionMon.contains(10) == false && unavTimesMon.length >= 10) {
                    unavTimesMon[10] = "${unavTimesMon[10]}: ${newTasks[i][i]}";
                    positionMon.add(10);
                  }
                  else if (positionMon.contains(11) == false && unavTimesMon.length == 11) {
                    unavTimesMon[11] = "${unavTimesMon[11]}: ${newTasks[i][i]}";
                    positionMon.add(11);
                  }
                }
              }
          }
        }
      } else {
        for (var i = 0; i < newTasks.length; i++) {
              if(newDaysMon[i][0] == newTasks[i]){
                for (var t = 0; t < newTimes[i][0]; t++) {
                  if (positionMon.contains(0) == false &&
                      unavTimesMon.length > 0) {
                    unavTimesMon[0] = "${unavTimesMon[0]}: ${newTasks[i][i]}";
                    positionMon.add(0);
                  }
                  else if (positionMon.contains(1) == false &&
                      unavTimesMon.length >= 1) {
                    unavTimesMon[1] = "${unavTimesMon[1]}: ${newTasks[i][i]}";
                    positionMon.add(1);
                  }
                  else if (positionMon.contains(2) == false &&
                      unavTimesMon.length >= 2) {
                    unavTimesMon[2] = "${unavTimesMon[2]}: ${newTasks[i][i]}";
                    positionMon.add(2);
                  }
                  else if (positionMon.contains(3) == false &&
                      unavTimesMon.length >= 3) {
                    unavTimesMon[3] = "${unavTimesMon[3]}: ${newTasks[i][i]}";
                    positionMon.add(3);
                  }
                  else if (positionMon.contains(4) == false &&
                      unavTimesMon.length >= 4) {
                    unavTimesMon[4] = "${unavTimesMon[4]}: ${newTasks[i][i]}";
                    positionMon.add(4);
                  }
                  else if (positionMon.contains(5) == false &&
                      unavTimesMon.length >= 5) {
                    unavTimesMon[5] = "${unavTimesMon[5]}: ${newTasks[i][i]}";
                    positionMon.add(5);
                  }
                  else if (positionMon.contains(6) == false &&
                      unavTimesMon.length >= 6) {
                    unavTimesMon[6] = "${unavTimesMon[6]}: ${newTasks[i][i]}";
                    positionMon.add(6);
                  }
                  else if (positionMon.contains(7) == false &&
                      unavTimesMon.length >= 7) {
                    unavTimesMon[7] = "${unavTimesMon[7]}: ${newTasks[i][i]}";
                    positionMon.add(7);
                  }
                  else if (positionMon.contains(8) == false &&
                      unavTimesMon.length >= 8) {
                    unavTimesMon[8] = "${unavTimesMon[8]}: ${newTasks[i][i]}";
                    positionMon.add(8);
                  }
                  else if (positionMon.contains(9) == false &&
                      unavTimesMon.length >= 9) {
                    unavTimesMon[9] = "${unavTimesMon[9]}: ${newTasks[i][i]}";
                    positionMon.add(9);
                  }
                  else if (positionMon.contains(10) == false &&
                      unavTimesMon.length >= 10) {
                    unavTimesMon[10] = "${unavTimesMon[10]}: ${newTasks[i][i]}";
                    positionMon.add(10);
                  }
                  else if (positionMon.contains(11) == false &&
                      unavTimesMon.length == 11) {
                    unavTimesMon[11] = "${unavTimesMon[11]}: ${newTasks[i][i]}";
                    positionMon.add(11);
                  }
                }
              }
          }
        }
      return unavTimesMon;
    }
    unavTimesMon = addTasksMonday(unavailabilityTimes);

    addTasksTuesday(unavailabilityTimes) {
      if (positionTue.isNotEmpty == true) {
        for (var i = 0; i < positionTue.length; i++) {
          unavTimesTue[positionTue.elementAt(i)] =
          "${unavTimesTue[positionTue.elementAt(i)]}: Unavailable";
        }
        //Add tasks
        if (newTasks.length > 0) {
          for (var i = 0; i < newTasks.length; i++) {
            if (newDaysTue[i][0] == newTasks[i]) {
              for (var t = 0; t < newTimes[i][0]; t++) {
                if (positionTue.contains(0) == false && unavTimesTue.length > 0) {
                  unavTimesTue[0] = "${unavTimesTue[0]}: ${newTasks[i][i]}";
                  positionTue.add(0);
                }
                else if (positionTue.contains(1) == false && unavTimesTue.length >= 1) {
                  unavTimesTue[1] = "${unavTimesTue[1]}: ${newTasks[i][i]}";
                  positionTue.add(1);
                }
                else if (positionTue.contains(2) == false && unavTimesTue.length >= 2) {
                  unavTimesTue[2] = "${unavTimesTue[2]}: ${newTasks[i][i]}";
                  positionTue.add(2);
                }
                else if (positionTue.contains(3) == false && unavTimesTue.length >= 3) {
                  unavTimesTue[3] = "${unavTimesTue[3]}: ${newTasks[i][i]}";
                  positionTue.add(3);
                }
                else if (positionTue.contains(4) == false && unavTimesTue.length >= 4) {
                  unavTimesTue[4] = "${unavTimesTue[4]}: ${newTasks[i][i]}";
                  positionTue.add(4);
                }
                else if (positionTue.contains(5) == false && unavTimesTue.length >= 5) {
                  unavTimesTue[5] = "${unavTimesTue[5]}: ${newTasks[i][i]}";
                  positionTue.add(5);
                }
                else if (positionTue.contains(6) == false && unavTimesTue.length >= 6) {
                  unavTimesTue[6] = "${unavTimesTue[6]}: ${newTasks[i][i]}";
                  positionTue.add(6);
                }
                else if (positionTue.contains(7) == false && unavTimesTue.length >= 7) {
                  unavTimesTue[7] = "${unavTimesTue[7]}: ${newTasks[i][i]}";
                  positionTue.add(7);
                }
                else if (positionTue.contains(8) == false && unavTimesTue.length >= 8) {
                  unavTimesTue[8] = "${unavTimesTue[8]}: ${newTasks[i][i]}";
                  positionTue.add(8);
                }
                else if (positionTue.contains(9) == false && unavTimesTue.length >= 9) {
                  unavTimesTue[9] = "${unavTimesTue[9]}: ${newTasks[i][i]}";
                  positionTue.add(9);
                }
                else if (positionTue.contains(10) == false && unavTimesTue.length >= 10) {
                  unavTimesTue[10] = "${unavTimesTue[10]}: ${newTasks[i][i]}";
                  positionTue.add(10);
                }
                else if (positionTue.contains(11) == false && unavTimesTue.length == 11) {
                  unavTimesTue[11] = "${unavTimesTue[11]}: ${newTasks[i][i]}";
                  positionTue.add(11);
                }
              }
            }
          }
        }
      } else {
        for (var i = 0; i < newTasks.length; i++) {
          if (newDaysTue[i][0] == newTasks[i]) {
            for (var t = 0; t < newTimes[i][0]; t++) {
              if (positionTue.contains(0) == false && unavTimesTue.length > 0) {
                unavTimesTue[0] = "${unavTimesTue[0]}: ${newTasks[i][i]}";
                positionTue.add(0);
              }
              else if (positionTue.contains(1) == false && unavTimesTue.length >= 1) {
                unavTimesTue[1] = "${unavTimesTue[1]}: ${newTasks[i][i]}";
                positionTue.add(1);
              }
              else if (positionTue.contains(2) == false && unavTimesTue.length >= 2) {
                unavTimesTue[2] = "${unavTimesTue[2]}: ${newTasks[i][i]}";
                positionTue.add(2);
              }
              else if (positionTue.contains(3) == false && unavTimesTue.length >= 3) {
                unavTimesTue[3] = "${unavTimesTue[3]}: ${newTasks[i][i]}";
                positionTue.add(3);
              }
              else if (positionTue.contains(4) == false && unavTimesTue.length >= 4) {
                unavTimesTue[4] = "${unavTimesTue[4]}: ${newTasks[i][i]}";
                positionTue.add(4);
              }
              else if (positionTue.contains(5) == false && unavTimesTue.length >= 5) {
                unavTimesTue[5] = "${unavTimesTue[5]}: ${newTasks[i][i]}";
                positionTue.add(5);
              }
              else if (positionTue.contains(6) == false && unavTimesTue.length >= 6) {
                unavTimesTue[6] = "${unavTimesTue[6]}: ${newTasks[i][i]}";
                positionTue.add(6);
              }
              else if (positionTue.contains(7) == false && unavTimesTue.length >= 7) {
                unavTimesTue[7] = "${unavTimesTue[7]}: ${newTasks[i][i]}";
                positionTue.add(7);
              }
              else if (positionTue.contains(8) == false && unavTimesTue.length >= 8) {
                unavTimesTue[8] = "${unavTimesTue[8]}: ${newTasks[i][i]}";
                positionTue.add(8);
              }
              else if (positionTue.contains(9) == false && unavTimesTue.length >= 9) {
                unavTimesTue[9] = "${unavTimesTue[9]}: ${newTasks[i][i]}";
                positionTue.add(9);
              }
              else if (positionTue.contains(10) == false && unavTimesTue.length >= 10) {
                unavTimesTue[10] = "${unavTimesTue[10]}: ${newTasks[i][i]}";
                positionTue.add(10);
              }
              else if (positionTue.contains(11) == false && unavTimesTue.length == 11) {
                unavTimesTue[11] = "${unavTimesTue[11]}: ${newTasks[i][i]}";
                positionTue.add(11);
              }
            }
          }
        }
      }
      return unavTimesTue;
    }
    unavTimesTue = addTasksTuesday(unavailabilityTimes);

    addTasksWednesday(unavailabilityTimes) {
      if (positionWed.isNotEmpty == true) {
        for (var i = 0; i < positionWed.length; i++) {
          unavTimesWed[positionWed.elementAt(i)] =
          "${unavTimesWed[positionWed.elementAt(i)]}: Unavailable";
        }
        //Add tasks
        if (newTasks.length > 0) {
          for (var i = 0; i < newTasks.length; i++) {
            if (newDaysWed[i][0] == newTasks[i]) {
              for (var t = 0; t < newTimes[i][0]; t++) {
                if (positionWed.contains(0) == false && unavTimesWed.length > 0) {
                  unavTimesWed[0] = "${unavTimesWed[0]}: ${newTasks[i][i]}";
                  positionWed.add(0);
                }
                else if (positionWed.contains(1) == false && unavTimesWed.length >= 1) {
                  unavTimesWed[1] = "${unavTimesWed[1]}: ${newTasks[i][i]}";
                  positionWed.add(1);
                }
                else if (positionWed.contains(2) == false && unavTimesWed.length >= 2) {
                  unavTimesWed[2] = "${unavTimesWed[2]}: ${newTasks[i][i]}";
                  positionWed.add(2);
                }
                else if (positionWed.contains(3) == false && unavTimesWed.length >= 3) {
                  unavTimesWed[3] = "${unavTimesWed[3]}: ${newTasks[i][i]}";
                  positionWed.add(3);
                }
                else if (positionWed.contains(4) == false && unavTimesWed.length >= 4) {
                  unavTimesWed[4] = "${unavTimesWed[4]}: ${newTasks[i][i]}";
                  positionWed.add(4);
                }
                else if (positionWed.contains(5) == false && unavTimesWed.length >= 5) {
                  unavTimesWed[5] = "${unavTimesWed[5]}: ${newTasks[i][i]}";
                  positionWed.add(5);
                }
                else if (positionWed.contains(6) == false && unavTimesWed.length >= 6) {
                  unavTimesWed[6] = "${unavTimesWed[6]}: ${newTasks[i][i]}";
                  positionWed.add(6);
                }
                else if (positionWed.contains(7) == false && unavTimesWed.length >= 7) {
                  unavTimesWed[7] = "${unavTimesWed[7]}: ${newTasks[i][i]}";
                  positionWed.add(7);
                }
                else if (positionWed.contains(8) == false && unavTimesWed.length >= 8) {
                  unavTimesWed[8] = "${unavTimesWed[8]}: ${newTasks[i][i]}";
                  positionWed.add(8);
                }
                else if (positionWed.contains(9) == false && unavTimesWed.length >= 9) {
                  unavTimesWed[9] = "${unavTimesWed[9]}: ${newTasks[i][i]}";
                  positionWed.add(9);
                }
                else if (positionWed.contains(10) == false && unavTimesWed.length >= 10) {
                  unavTimesWed[10] = "${unavTimesWed[10]}: ${newTasks[i][i]}";
                  positionWed.add(10);
                }
                else if (positionWed.contains(11) == false && unavTimesWed.length == 11) {
                  unavTimesWed[11] = "${unavTimesWed[11]}: ${newTasks[i][i]}";
                  positionWed.add(11);
                }
              }
            }
          }
        }
      } else {
        for (var i = 0; i < newTasks.length; i++) {
          if (newDaysWed[i][0] == newTasks[i]) {
            for (var t = 0; t < newTimes[i][0]; t++) {
              if (positionWed.contains(0) == false && unavTimesWed.length > 0) {
                unavTimesWed[0] = "${unavTimesWed[0]}: ${newTasks[i][i]}";
                positionWed.add(0);
              }
              else if (positionWed.contains(1) == false && unavTimesWed.length >= 1) {
                unavTimesWed[1] = "${unavTimesWed[1]}: ${newTasks[i][i]}";
                positionWed.add(1);
              }
              else if (positionWed.contains(2) == false && unavTimesWed.length >= 2) {
                unavTimesWed[2] = "${unavTimesWed[2]}: ${newTasks[i][i]}";
                positionWed.add(2);
              }
              else if (positionWed.contains(3) == false && unavTimesWed.length >= 3) {
                unavTimesWed[3] = "${unavTimesWed[3]}: ${newTasks[i][i]}";
                positionWed.add(3);
              }
              else if (positionWed.contains(4) == false && unavTimesWed.length >= 4) {
                unavTimesWed[4] = "${unavTimesWed[4]}: ${newTasks[i][i]}";
                positionWed.add(4);
              }
              else if (positionWed.contains(5) == false && unavTimesWed.length >= 5) {
                unavTimesWed[5] = "${unavTimesWed[5]}: ${newTasks[i][i]}";
                positionWed.add(5);
              }
              else if (positionWed.contains(6) == false && unavTimesWed.length >= 6) {
                unavTimesWed[6] = "${unavTimesWed[6]}: ${newTasks[i][i]}";
                positionWed.add(6);
              }
              else if (positionWed.contains(7) == false && unavTimesWed.length >= 7) {
                unavTimesWed[7] = "${unavTimesWed[7]}: ${newTasks[i][i]}";
                positionWed.add(7);
              }
              else if (positionWed.contains(8) == false && unavTimesWed.length >= 8) {
                unavTimesWed[8] = "${unavTimesWed[8]}: ${newTasks[i][i]}";
                positionWed.add(8);
              }
              else if (positionWed.contains(9) == false && unavTimesWed.length >= 9) {
                unavTimesWed[9] = "${unavTimesWed[9]}: ${newTasks[i][i]}";
                positionWed.add(9);
              }
              else if (positionWed.contains(10) == false && unavTimesWed.length >= 10) {
                unavTimesWed[10] = "${unavTimesWed[10]}: ${newTasks[i][i]}";
                positionWed.add(10);
              }
              else if (positionWed.contains(11) == false && unavTimesWed.length == 11) {
                unavTimesWed[11] = "${unavTimesWed[11]}: ${newTasks[i][i]}";
                positionWed.add(11);
              }
            }
          }
        }
      }
      return unavTimesWed;
    }
    unavTimesWed = addTasksWednesday(unavailabilityTimes);

    addTasksThursday(unavailabilityTimes) {
      if (positionThu.isNotEmpty == true) {
        for (var i = 0; i < positionThu.length; i++) {
          unavTimesThu[positionThu.elementAt(i)] =
          "${unavTimesThu[positionThu.elementAt(i)]}: Unavailable";
        }
        //Add tasks
        if (newTasks.length > 0) {
          for (var i = 0; i < newTasks.length; i++) {
            if (newDaysThu[i][0] == newTasks[i]) {
              for (var t = 0; t < newTimes[i][0]; t++) {
                if (positionThu.contains(0) == false && unavTimesThu.length > 0) {
                  unavTimesThu[0] = "${unavTimesThu[0]}: ${newTasks[i][i]}";
                  positionThu.add(0);
                }
                else if (positionThu.contains(1) == false && unavTimesThu.length >= 1) {
                  unavTimesThu[1] = "${unavTimesThu[1]}: ${newTasks[i][i]}";
                  positionThu.add(1);
                }
                else if (positionThu.contains(2) == false && unavTimesThu.length >= 2) {
                  unavTimesThu[2] = "${unavTimesThu[2]}: ${newTasks[i][i]}";
                  positionThu.add(2);
                }
                else if (positionThu.contains(3) == false && unavTimesThu.length >= 3) {
                  unavTimesThu[3] = "${unavTimesThu[3]}: ${newTasks[i][i]}";
                  positionThu.add(3);
                }
                else if (positionThu.contains(4) == false && unavTimesThu.length >= 4) {
                  unavTimesThu[4] = "${unavTimesThu[4]}: ${newTasks[i][i]}";
                  positionThu.add(4);
                }
                else if (positionThu.contains(5) == false && unavTimesThu.length >= 5) {
                  unavTimesThu[5] = "${unavTimesThu[5]}: ${newTasks[i][i]}";
                  positionThu.add(5);
                }
                else if (positionThu.contains(6) == false && unavTimesThu.length >= 6) {
                  unavTimesThu[6] = "${unavTimesThu[6]}: ${newTasks[i][i]}";
                  positionThu.add(6);
                }
                else if (positionThu.contains(7) == false && unavTimesThu.length >= 7) {
                  unavTimesThu[7] = "${unavTimesThu[7]}: ${newTasks[i][i]}";
                  positionThu.add(7);
                }
                else if (positionThu.contains(8) == false && unavTimesThu.length >= 8) {
                  unavTimesThu[8] = "${unavTimesThu[8]}: ${newTasks[i][i]}";
                  positionThu.add(8);
                }
                else if (positionThu.contains(9) == false && unavTimesThu.length >= 9) {
                  unavTimesThu[9] = "${unavTimesThu[9]}: ${newTasks[i][i]}";
                  positionThu.add(9);
                }
                else if (positionThu.contains(10) == false && unavTimesThu.length >= 10) {
                  unavTimesThu[10] = "${unavTimesThu[10]}: ${newTasks[i][i]}";
                  positionThu.add(10);
                }
                else if (positionThu.contains(11) == false && unavTimesThu.length == 11) {
                  unavTimesThu[11] = "${unavTimesThu[11]}: ${newTasks[i][i]}";
                  positionThu.add(11);
                }
              }
            }
          }
        }
      }else{
        for (var i = 0; i < newTasks.length; i++) {
          if (newDaysThu[i][0] == newTasks[i]) {
            for (var t = 0; t < newTimes[i][0]; t++) {
              if (positionThu.contains(0) == false && unavTimesThu.length > 0) {
                unavTimesThu[0] = "${unavTimesThu[0]}: ${newTasks[i][i]}";
                positionThu.add(0);
              }
              else if (positionThu.contains(1) == false && unavTimesThu.length >= 1) {
                unavTimesThu[1] = "${unavTimesThu[1]}: ${newTasks[i][i]}";
                positionThu.add(1);
              }
              else if (positionThu.contains(2) == false && unavTimesThu.length >= 2) {
                unavTimesThu[2] = "${unavTimesThu[2]}: ${newTasks[i][i]}";
                positionThu.add(2);
              }
              else if (positionThu.contains(3) == false && unavTimesThu.length >= 3) {
                unavTimesThu[3] = "${unavTimesThu[3]}: ${newTasks[i][i]}";
                positionThu.add(3);
              }
              else if (positionThu.contains(4) == false && unavTimesThu.length >= 4) {
                unavTimesThu[4] = "${unavTimesThu[4]}: ${newTasks[i][i]}";
                positionThu.add(4);
              }
              else if (positionThu.contains(5) == false && unavTimesThu.length >= 5) {
                unavTimesThu[5] = "${unavTimesThu[5]}: ${newTasks[i][i]}";
                positionThu.add(5);
              }
              else if (positionThu.contains(6) == false && unavTimesThu.length >= 6) {
                unavTimesThu[6] = "${unavTimesThu[6]}: ${newTasks[i][i]}";
                positionThu.add(6);
              }
              else if (positionThu.contains(7) == false && unavTimesThu.length >= 7) {
                unavTimesThu[7] = "${unavTimesThu[7]}: ${newTasks[i][i]}";
                positionThu.add(7);
              }
              else if (positionThu.contains(8) == false && unavTimesThu.length >= 8) {
                unavTimesThu[8] = "${unavTimesThu[8]}: ${newTasks[i][i]}";
                positionThu.add(8);
              }
              else if (positionThu.contains(9) == false && unavTimesThu.length >= 9) {
                unavTimesThu[9] = "${unavTimesThu[9]}: ${newTasks[i][i]}";
                positionThu.add(9);
              }
              else if (positionThu.contains(10) == false && unavTimesThu.length >= 10) {
                unavTimesThu[10] = "${unavTimesThu[10]}: ${newTasks[i][i]}";
                positionThu.add(10);
              }
              else if (positionThu.contains(11) == false && unavTimesThu.length == 11) {
                unavTimesThu[11] = "${unavTimesThu[11]}: ${newTasks[i][i]}";
                positionThu.add(11);
              }
            }
          }
        }
      }
      return unavTimesThu;
    }
    unavTimesThu = addTasksThursday(unavailabilityTimes);

    addTasksFriday(unavailabilityTimes) {
      if (positionFri.isNotEmpty == true) {
        for (var i = 0; i < positionFri.length; i++) {
          unavTimesFri[positionFri.elementAt(i)] =
          "${unavTimesFri[positionFri.elementAt(i)]}: Unavailable";
        }
        //Add tasks
        if (newTasks.length > 0) {
          for (var i = 0; i < newTasks.length; i++) {
            if (newDaysFri[i][0] == newTasks[i]) {
              for (var t = 0; t < newTimes[i][0]; t++) {
                if (positionFri.contains(0) == false && unavTimesFri.length > 0) {
                  unavTimesFri[0] = "${unavTimesFri[0]}: ${newTasks[i][i]}";
                  positionFri.add(0);
                }
                else if (positionFri.contains(1) == false && unavTimesFri.length >= 1) {
                  unavTimesFri[1] = "${unavTimesFri[1]}: ${newTasks[i][i]}";
                  positionFri.add(1);
                }
                else if (positionFri.contains(2) == false && unavTimesFri.length >= 2) {
                  unavTimesFri[2] = "${unavTimesFri[2]}: ${newTasks[i][i]}";
                  positionFri.add(2);
                }
                else if (positionFri.contains(3) == false && unavTimesFri.length >= 3) {
                  unavTimesFri[3] = "${unavTimesFri[3]}: ${newTasks[i][i]}";
                  positionFri.add(3);
                }
                else if (positionFri.contains(4) == false && unavTimesFri.length >= 4) {
                  unavTimesFri[4] = "${unavTimesFri[4]}: ${newTasks[i][i]}";
                  positionFri.add(4);
                }
                else if (positionFri.contains(5) == false && unavTimesFri.length >= 5) {
                  unavTimesFri[5] = "${unavTimesFri[5]}: ${newTasks[i][i]}";
                  positionFri.add(5);
                }
                else if (positionFri.contains(6) == false && unavTimesFri.length >= 6) {
                  unavTimesFri[6] = "${unavTimesFri[6]}: ${newTasks[i][i]}";
                  positionFri.add(6);
                }
                else if (positionFri.contains(7) == false && unavTimesFri.length >= 7) {
                  unavTimesFri[7] = "${unavTimesFri[7]}: ${newTasks[i][i]}";
                  positionFri.add(7);
                }
                else if (positionFri.contains(8) == false && unavTimesFri.length >= 8) {
                  unavTimesFri[8] = "${unavTimesFri[8]}: ${newTasks[i][i]}";
                  positionFri.add(8);
                }
                else if (positionFri.contains(9) == false && unavTimesFri.length >= 9) {
                  unavTimesFri[9] = "${unavTimesFri[9]}: ${newTasks[i][i]}";
                  positionFri.add(9);
                }
                else if (positionFri.contains(10) == false && unavTimesFri.length >= 10) {
                  unavTimesFri[10] = "${unavTimesFri[10]}: ${newTasks[i][i]}";
                  positionFri.add(10);
                }
                else if (positionFri.contains(11) == false && unavTimesFri.length == 11) {
                  unavTimesFri[11] = "${unavTimesFri[11]}: ${newTasks[i][i]}";
                  positionFri.add(11);
                }
              }
            }
          }
        }
      }else{
        for (var i = 0; i < newTasks.length; i++) {
          if (newDaysFri[i][0] == newTasks[i]) {
            for (var t = 0; t < newTimes[i][0]; t++) {
              if (positionFri.contains(0) == false && unavTimesFri.length > 0) {
                unavTimesFri[0] = "${unavTimesFri[0]}: ${newTasks[i][i]}";
                positionFri.add(0);
              }
              else if (positionFri.contains(1) == false && unavTimesFri.length >= 1) {
                unavTimesFri[1] = "${unavTimesFri[1]}: ${newTasks[i][i]}";
                positionFri.add(1);
              }
              else if (positionFri.contains(2) == false && unavTimesFri.length >= 2) {
                unavTimesFri[2] = "${unavTimesFri[2]}: ${newTasks[i][i]}";
                positionFri.add(2);
              }
              else if (positionFri.contains(3) == false && unavTimesFri.length >= 3) {
                unavTimesFri[3] = "${unavTimesFri[3]}: ${newTasks[i][i]}";
                positionFri.add(3);
              }
              else if (positionFri.contains(4) == false && unavTimesFri.length >= 4) {
                unavTimesFri[4] = "${unavTimesFri[4]}: ${newTasks[i][i]}";
                positionFri.add(4);
              }
              else if (positionFri.contains(5) == false && unavTimesFri.length >= 5) {
                unavTimesFri[5] = "${unavTimesFri[5]}: ${newTasks[i][i]}";
                positionFri.add(5);
              }
              else if (positionFri.contains(6) == false && unavTimesFri.length >= 6) {
                unavTimesFri[6] = "${unavTimesFri[6]}: ${newTasks[i][i]}";
                positionFri.add(6);
              }
              else if (positionFri.contains(7) == false && unavTimesFri.length >= 7) {
                unavTimesFri[7] = "${unavTimesFri[7]}: ${newTasks[i][i]}";
                positionFri.add(7);
              }
              else if (positionFri.contains(8) == false && unavTimesFri.length >= 8) {
                unavTimesFri[8] = "${unavTimesFri[8]}: ${newTasks[i][i]}";
                positionFri.add(8);
              }
              else if (positionFri.contains(9) == false && unavTimesFri.length >= 9) {
                unavTimesFri[9] = "${unavTimesFri[9]}: ${newTasks[i][i]}";
                positionFri.add(9);
              }
              else if (positionFri.contains(10) == false && unavTimesFri.length >= 10) {
                unavTimesFri[10] = "${unavTimesFri[10]}: ${newTasks[i][i]}";
                positionFri.add(10);
              }
              else if (positionFri.contains(11) == false && unavTimesFri.length == 11) {
                unavTimesFri[11] = "${unavTimesFri[11]}: ${newTasks[i][i]}";
                positionFri.add(11);
              }
            }
          }
        }
      }
      return unavTimesFri;
    }
    unavTimesFri = addTasksFriday(unavailabilityTimes);

    addTasksSaturday(unavailabilityTimes) {
      if (positionSat.isNotEmpty == true) {
        for (var i = 0; i < positionSat.length; i++) {
          unavTimesSat[positionSat.elementAt(i)] =
          "${unavTimesSat[positionSat.elementAt(i)]}: Unavailable";
        }
        //Add tasks
        if (newTasks.length > 0) {
          for (var i = 0; i < newTasks.length; i++) {
            if (newDaysSat[i][0] == newTasks[i]) {
              for (var t = 0; t < newTimes[i][0]; t++) {
                if (positionSat.contains(0) == false && unavTimesSat.length > 0) {
                  unavTimesSat[0] = "${unavTimesSat[0]}: ${newTasks[i][i]}";
                  positionSat.add(0);
                }
                else if (positionSat.contains(1) == false && unavTimesSat.length >= 1) {
                  unavTimesSat[1] = "${unavTimesSat[1]}: ${newTasks[i][i]}";
                  positionSat.add(1);
                }
                else if (positionSat.contains(2) == false && unavTimesSat.length >= 2) {
                  unavTimesSat[2] = "${unavTimesSat[2]}: ${newTasks[i][i]}";
                  positionSat.add(2);
                }
                else if (positionSat.contains(3) == false && unavTimesSat.length >= 3) {
                  unavTimesSat[3] = "${unavTimesSat[3]}: ${newTasks[i][i]}";
                  positionSat.add(3);
                }
                else if (positionSat.contains(4) == false && unavTimesSat.length >= 4) {
                  unavTimesSat[4] = "${unavTimesSat[4]}: ${newTasks[i][i]}";
                  positionSat.add(4);
                }
                else if (positionSat.contains(5) == false && unavTimesSat.length >= 5) {
                  unavTimesSat[5] = "${unavTimesSat[5]}: ${newTasks[i][i]}";
                  positionSat.add(5);
                }
                else if (positionSat.contains(6) == false && unavTimesSat.length >= 6) {
                  unavTimesSat[6] = "${unavTimesSat[6]}: ${newTasks[i][i]}";
                  positionSat.add(6);
                }
                else if (positionSat.contains(7) == false && unavTimesSat.length >= 7) {
                  unavTimesSat[7] = "${unavTimesSat[7]}: ${newTasks[i][i]}";
                  positionSat.add(7);
                }
                else if (positionSat.contains(8) == false && unavTimesSat.length >= 8) {
                  unavTimesSat[8] = "${unavTimesSat[8]}: ${newTasks[i][i]}";
                  positionSat.add(8);
                }
                else if (positionSat.contains(9) == false && unavTimesSat.length >= 9) {
                  unavTimesSat[9] = "${unavTimesSat[9]}: ${newTasks[i][i]}";
                  positionSat.add(9);
                }
                else if (positionSat.contains(10) == false && unavTimesSat.length >= 10) {
                  unavTimesSat[10] = "${unavTimesSat[10]}: ${newTasks[i][i]}";
                  positionSat.add(10);
                }
                else if (positionSat.contains(11) == false && unavTimesSat.length == 11) {
                  unavTimesSat[11] = "${unavTimesSat[11]}: ${newTasks[i][i]}";
                  positionSat.add(11);
                }
              }
            }
          }
        }
      } else{
        for (var i = 0; i < newTasks.length; i++) {
          if (newDaysSat[i][0] == newTasks[i]) {
            for (var t = 0; t < newTimes[i][0]; t++) {
              if (positionSat.contains(0) == false && unavTimesSat.length > 0) {
                unavTimesSat[0] = "${unavTimesSat[0]}: ${newTasks[i][i]}";
                positionSat.add(0);
              }
              else if (positionSat.contains(1) == false && unavTimesSat.length >= 1) {
                unavTimesSat[1] = "${unavTimesSat[1]}: ${newTasks[i][i]}";
                positionSat.add(1);
              }
              else if (positionSat.contains(2) == false && unavTimesSat.length >= 2) {
                unavTimesSat[2] = "${unavTimesSat[2]}: ${newTasks[i][i]}";
                positionSat.add(2);
              }
              else if (positionSat.contains(3) == false && unavTimesSat.length >= 3) {
                unavTimesSat[3] = "${unavTimesSat[3]}: ${newTasks[i][i]}";
                positionSat.add(3);
              }
              else if (positionSat.contains(4) == false && unavTimesSat.length >= 4) {
                unavTimesSat[4] = "${unavTimesSat[4]}: ${newTasks[i][i]}";
                positionSat.add(4);
              }
              else if (positionSat.contains(5) == false && unavTimesSat.length >= 5) {
                unavTimesSat[5] = "${unavTimesSat[5]}: ${newTasks[i][i]}";
                positionSat.add(5);
              }
              else if (positionSat.contains(6) == false && unavTimesSat.length >= 6) {
                unavTimesSat[6] = "${unavTimesSat[6]}: ${newTasks[i][i]}";
                positionSat.add(6);
              }
              else if (positionSat.contains(7) == false && unavTimesSat.length >= 7) {
                unavTimesSat[7] = "${unavTimesSat[7]}: ${newTasks[i][i]}";
                positionSat.add(7);
              }
              else if (positionSat.contains(8) == false && unavTimesSat.length >= 8) {
                unavTimesSat[8] = "${unavTimesSat[8]}: ${newTasks[i][i]}";
                positionSat.add(8);
              }
              else if (positionSat.contains(9) == false && unavTimesSat.length >= 9) {
                unavTimesSat[9] = "${unavTimesSat[9]}: ${newTasks[i][i]}";
                positionSat.add(9);
              }
              else if (positionSat.contains(10) == false && unavTimesSat.length >= 10) {
                unavTimesSat[10] = "${unavTimesSat[10]}: ${newTasks[i][i]}";
                positionSat.add(10);
              }
              else if (positionSat.contains(11) == false && unavTimesSat.length == 11) {
                unavTimesSat[11] = "${unavTimesSat[11]}: ${newTasks[i][i]}";
                positionSat.add(11);
              }
            }
          }
        }
      }
      return unavTimesSat;
    }
    unavTimesSat = addTasksSaturday(unavailabilityTimes);

    return Scaffold(
        appBar: AppBar(
        title: Text("Your Custom Study Schedule",
        style: TextStyle(fontFamily: 'Acme')),
    backgroundColor: Colors.redAccent[400],
    ),

      bottomNavigationBar:
      BottomNavigationBar(backgroundColor: Colors.redAccent[400],
          items: [
            new BottomNavigationBarItem(
              icon: new IconButton(
                icon: Icon(Icons.chevron_left, color: Colors.white),
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => GeneratingTasks(
                        bedtime: bedtime,
                        waketime: waketime,
                      )));
                },
              ),
              title: new Text(
                "Back",
                textAlign: TextAlign.center,
                style: TextStyle(color: Colors.white),
              ),
            ),
            new BottomNavigationBarItem(
              icon: new IconButton(
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => HomePage()));
                },
                icon: Icon(
                  Icons.home,
                  color: Colors.white,
                ),
              ),
              title: new Text(
                "Home",
                textAlign: TextAlign.center,
                style: TextStyle(color: Colors.white,),
              ),
            )
          ]),
          body: ListView(scrollDirection: Axis.vertical,
            children: [
              Column(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Card(
                    color: Colors.lightBlue[100],
                    elevation: 14.0,
                    shadowColor: Colors.blueGrey,
                    child: Column(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Text("SUNDAY", textAlign: TextAlign.center,style: TextStyle(color: Colors.redAccent[400],fontFamily: 'Acme', fontSize: 23)),
                        for(var i = 0; i< unavTimesSun2.length; i++) Card(child: ListTile(title: Text(unavTimesSun2[i].toString()))),
                      ],
                    ),
                  ),
                  Card(
                    color: Colors.lightBlue[100],
                    elevation: 14.0,
                    shadowColor: Colors.blueGrey,
                    child: Column(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Text("MONDAY", textAlign: TextAlign.center,style: TextStyle(color: Colors.redAccent[400],fontFamily: 'Acme', fontSize: 23)),
                        for(var i = 0; i< unavTimesMon.length; i++) Card(child: ListTile(title: Text(unavTimesMon[i].toString()))),
                      ],
                    ),
                  ),
                  Card(
                    color: Colors.lightBlue[100],
                    elevation: 14.0,
                    shadowColor: Colors.blueGrey,
                    child: Column(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Text("TUESDAY", textAlign: TextAlign.center,style: TextStyle(color: Colors.redAccent[400],fontFamily: 'Acme', fontSize: 23)),
                        for(var i = 0; i< unavTimesTue.length; i++) Card(child: ListTile(title: Text(unavTimesTue[i].toString()))),
                      ],
                    ),
                  ),
                  Card(
                    color: Colors.lightBlue[100],
                    elevation: 14.0,
                    shadowColor: Colors.blueGrey,
                    child: Column(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Text("WEDNESDAY", textAlign: TextAlign.center,style: TextStyle(color: Colors.redAccent[400],fontFamily: 'Acme', fontSize: 23)),
                        for(var i = 0; i< unavTimesWed.length; i++) Card(child: ListTile(title: Text(unavTimesWed[i].toString()))),
                      ],
                    ),
                  ),
                  Card(
                    color: Colors.lightBlue[100],
                    elevation: 14.0,
                    shadowColor: Colors.blueGrey,
                    child: Column(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Text("THURSDAY", textAlign: TextAlign.center,style: TextStyle(color: Colors.redAccent[400],fontFamily: 'Acme', fontSize: 23)),
                        for(var i = 0; i< unavTimesThu.length; i++) Card(child: ListTile(title: Text(unavTimesThu[i].toString()))),
                      ],
                    ),
                  ),
                  Card(
                    color: Colors.lightBlue[100],
                    elevation: 14.0,
                    shadowColor: Colors.blueGrey,
                    child: Column(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Text("FRIDAY", textAlign: TextAlign.center,style: TextStyle(color: Colors.redAccent[400],fontFamily: 'Acme', fontSize: 23)),
                        for(var i = 0; i< unavTimesFri.length; i++) Card(child: ListTile(title: Text(unavTimesFri[i].toString()))),
                      ],
                    ),
                  ),
                  Card(
                    color: Colors.lightBlue[100],
                    elevation: 14.0,
                    shadowColor: Colors.blueGrey,
                    child: Column(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Text("SATURDAY", textAlign: TextAlign.center,style: TextStyle(color: Colors.redAccent[400],fontFamily: 'Acme', fontSize: 23)),
                        for(var i = 0; i< unavTimesSat.length; i++) Card(child: ListTile(title: Text(unavTimesSat[i].toString()))),
                      ],
                    ),
                  ),
                ],
              )
            ],
          ),
    );
  }
}
