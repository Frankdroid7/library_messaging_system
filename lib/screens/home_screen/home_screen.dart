import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:libary_messaging_system/screens/home_screen/bloc/home_screen_bloc.dart';
import 'package:libary_messaging_system/screens/home_screen/bloc/home_screen_event.dart';
import 'package:libary_messaging_system/screens/home_screen/bloc/home_screen_state.dart';
import '../../router.gr.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  void initState() {
    super.initState();
    BlocProvider.of<HomeScreenBloc>(context).add(GetAllDepartmentsEvent());
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Departments'),
        automaticallyImplyLeading: false,
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () => context.pushRoute(AddBroadcastScreen()),
        child: Icon(Icons.add),
      ),
      body: SafeArea(
        child: BlocBuilder<HomeScreenBloc, HomeScreenState>(
          builder: (context, state) {
            switch (state.homeScreenStatus) {
              case HomeScreenStatus.loaded:
                return ListView.builder(
                  itemCount: state.departments!.length,
                  itemBuilder: (context, index) {
                    return Card(
                      margin: EdgeInsets.all(10),
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 16.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.stretch,
                          children: [
                            Text(state.departments![index]),
                            SizedBox(height: 20),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                ElevatedButton(
                                    onPressed: () {}, child: Text('CHAT')),
                                ElevatedButton(
                                    onPressed: () {},
                                    child: Text('GENERAL BROADCAST')),
                              ],
                            ),
                          ],
                        ),
                      ),
                    );
                  },
                );
              default:
                return Center(child: CircularProgressIndicator());
            }
          },
        ),
      ),
    );
  }
}
