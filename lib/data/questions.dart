import 'package:quiz_app/models/quiz_question.dart';

const questions = [
  QuizQuestion(
    'What are the basic building blocks of Flutter UI?',
    ['Widgets', 'Blocks', 'Functions', 'Components'],
  ),
  QuizQuestion(
    'Who developed the Flutter Framework and continues to maintain it today?',
    ['Google', 'Facebook', 'Microsoft', 'Oracle'],
  ),
  QuizQuestion(
    'How many types of widgets are there in Flutter?',
    ['2', '4', '8+', '1'],
  ),
  QuizQuestion(
    'When building for iOS, Flutter is restricted to an __ compilation strategy',
    [
      'AOT (ahead-of-time)',
      'JIT (Just-in-time)',
      'Transcompilation',
      'Recompilation'
    ],
  ),
  QuizQuestion(
    'A sequence of asynchronous Flutter events is known as a:',
    ['Stream', 'Current', 'Flow', 'Series'],
  ),
];
