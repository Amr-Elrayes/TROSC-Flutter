import 'package:cubit_app/cubit/counter_cubit.dart';
import 'package:cubit_app/cubit/counter_state.dart';
import 'package:flutter/material.dart';

import 'package:flutter_bloc/flutter_bloc.dart';

// ignore: must_be_immutable
class Explain extends StatelessWidget {
  int teamApoints = 0;
  int teamBpoints = 0;

  Explain({super.key});
  @override
  Widget build(BuildContext context) {
    return BlocConsumer<CounterCubit, CounterState>(
      builder: (BuildContext context, state) {
        return Scaffold(
          backgroundColor: Colors.black,
          appBar: AppBar(
            backgroundColor: Colors.orange,
            title: Text('Points Counter'),
          ),
          body: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Container(
                    height: 500,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Text(
                          'Team A',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 32,
                          ),
                        ),
                        Text(
                          '${BlocProvider.of<CounterCubit>(context).temAPoints}',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 150,
                          ),
                        ),
                        ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            padding: EdgeInsets.all(8),
                            backgroundColor: Colors.orange,
                            minimumSize: Size(150, 50),
                          ),
                          onPressed: () {
                            BlocProvider.of<CounterCubit>(context)
                                .teamAIncrement(team: 'A', buttonNum: 1);
                          },
                          child: Text(
                            'Add 1 Point ',
                            style: TextStyle(
                              fontSize: 18,
                              color: Colors.black,
                            ),
                          ),
                        ),
                        ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.orange,
                            minimumSize: Size(150, 50),
                          ),
                          onPressed: () {
                            BlocProvider.of<CounterCubit>(context)
                                .teamAIncrement(team: 'A', buttonNum: 2);
                          },
                          child: Text(
                            'Add 2 Point',
                            style: TextStyle(
                              fontSize: 18,
                              color: Colors.black,
                            ),
                          ),
                        ),
                        ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.orange,
                            minimumSize: Size(150, 50),
                          ),
                          onPressed: () {
                            BlocProvider.of<CounterCubit>(context)
                                .teamAIncrement(team: 'A', buttonNum: 3);
                          },
                          child: Text(
                            'Add 3 Point ',
                            style: TextStyle(
                              fontSize: 18,
                              color: Colors.black,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    height: 500,
                    child: VerticalDivider(
                      indent: 50,
                      endIndent: 50,
                      color: const Color.fromARGB(255, 255, 255, 255),
                      thickness: 1,
                    ),
                  ),
                  Container(
                    height: 500,
                    child: tr(
                      child: VerticalDivider(
                        
                        indent: 50,
                        endIndent: 50,
                        color: const Color.fromARGB(255, 255, 255, 255),
                        thickness: 1,
                      ),
                    ),
                  ),
                  Container(
                    height: 500,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Text(
                          'Team B',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 32,
                          ),
                        ),
                        Text(
                          '${BlocProvider.of<CounterCubit>(context).temBPoints}',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 150,
                          ),
                        ),
                        ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            padding: EdgeInsets.all(8),
                            backgroundColor: Colors.orange,
                            minimumSize: Size(150, 50),
                          ),
                          onPressed: () {
                            BlocProvider.of<CounterCubit>(context)
                                .teamAIncrement(team: 'B', buttonNum: 1);
                          },
                          child: Text(
                            'Add 1 Point ',
                            style: TextStyle(
                              fontSize: 18,
                              color: Colors.black,
                            ),
                          ),
                        ),
                        ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.orange,
                            minimumSize: Size(150, 50),
                          ),
                          onPressed: () {
                            BlocProvider.of<CounterCubit>(context)
                                .teamAIncrement(team: 'B', buttonNum: 2);
                          },
                          child: Text(
                            'Add 2 Point ',
                            style: TextStyle(
                              fontSize: 18,
                              color: Colors.black,
                            ),
                          ),
                        ),
                        ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.orange,
                            minimumSize: Size(150, 50),
                          ),
                          onPressed: () {
                            BlocProvider.of<CounterCubit>(context)
                                .teamAIncrement(team: 'B', buttonNum: 3);
                          },
                          child: Text(
                            'Add 3 Point ',
                            style: TextStyle(
                              fontSize: 18,
                              color: Colors.black,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  padding: EdgeInsets.all(8),
                  backgroundColor: Colors.orange,
                  minimumSize: Size(150, 50),
                ),
                onPressed: () {
                      BlocProvider.of<CounterCubit>(context)
                      .teamReset();
                },
                child: Text(
                  'Reset',
                  style: TextStyle(
                    fontSize: 18,
                    color: Colors.black,
                  ),
                ),
              ),
            ],
          ),
        );
      },
      listener: (context, state) {
        if (State is CounterAIncrement) {
          teamApoints = BlocProvider.of<CounterCubit>(context).temAPoints;
        } else {
          teamBpoints = BlocProvider.of<CounterCubit>(context).temBPoints;
        }
      },
    );
  }
}