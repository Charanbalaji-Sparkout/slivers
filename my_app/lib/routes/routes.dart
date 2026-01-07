import 'package:go_router/go_router.dart';
import 'package:my_app/screens/diet/diet_screen.dart';
import 'package:my_app/screens/exercise/excercise_screen.dart';
import 'package:my_app/screens/home/home_screen.dart';
import 'package:my_app/screens/weight_gain/weight_gain_screen.dart';
import 'package:my_app/screens/weight_loss/weight_loss_screen.dart';

final GoRouter router = GoRouter(
  routes: [
    GoRoute(path: '/', builder: (context, state) => HomeScreen()),
    GoRoute(
      path: '/weight_loss',
      name: '/weight_loss',
      builder: (context, state) {
        var params = state.extra as Map<String, String>?;
        return WeightLossScreen(
        label: params?['capturedLabel'] ?? '',
        imageUrl: params?['capturedImageUrl'] ?? '',
      );
      },
    ),
    GoRoute(
      path: '/weight_gain/:label/:imageUrl',
      builder: (context, state) => WeightGainScreen(
        label: Uri.decodeFull(state.pathParameters['label'] ?? ''),
        imageUrl: Uri.decodeFull(state.pathParameters['imageUrl'] ?? ''),
      ),
    ),
    GoRoute(
      path: '/diet/:label/:imageUrl',
      builder: (context, state) => DietScreen(
        label: Uri.decodeFull(state.pathParameters['label'] ?? ''),
        imageUrl: Uri.decodeFull(state.pathParameters['imageUrl'] ?? ''),
      ),
    ),
    GoRoute(
      path: '/exercise/:label/:imageUrl',
      builder: (context, state) => ExcerciseScreen(
        label: Uri.decodeFull(state.pathParameters['label'] ?? ''),
        imageUrl: Uri.decodeFull(state.pathParameters['imageUrl'] ?? ''),
      ),
    ),
  ],
);
