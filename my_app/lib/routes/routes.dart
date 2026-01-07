import 'package:go_router/go_router.dart';
import 'package:my_app/screens/diet/diet_screen.dart';
import 'package:my_app/screens/exercise/excercise_screen.dart';
import 'package:my_app/screens/home/home_screen.dart';
import 'package:my_app/screens/weight_gain/weight_gain_screen.dart';
import 'package:my_app/screens/weight_loss/weight_loss_screen.dart';

final GoRouter router=GoRouter(
  routes: [
    GoRoute(path: '/',builder: (context,state)=> HomeScreen()),
    GoRoute(path: '/weight_loss',builder: (context,state)=> WeightLossScreen()),
    GoRoute(path: '/weight_gain',builder: (context,state)=> WeightGainScreen()),
    GoRoute(path: '/diet',builder: (context,state)=> DietScreen()),
    GoRoute(path: '/exercise',builder: (context,state)=> ExcerciseScreen()),
  ]);