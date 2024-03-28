import "package:quiz_app/models/quiz_question.dart";

const questions = [
  Questions(
    'What are the main building blocks of Flutter UIs?',
    [
      'Widgets',
      'Components',
      'Blocks',
      'Functions',
    ],
  ),
  Questions('How are Flutter UIs built?', [
    'By combining widgets in code',
    'By combining widgets in a visual editor',
    'By defining widgets in config files',
    'By using XCode for iOS and Android Studio for Android',
  ]),
  Questions(
    'What\'s the purpose of a StatefulWidget?',
    [
      'Update UI as data changes',
      'Update data as UI changes',
      'Ignore data changes',
      'Render UI that does not depend on data',
    ],
  ),
  Questions(
    'Which widget should you try to use more often: StatelessWidget or StatefulWidget?',
    [
      'StatelessWidget',
      'StatefulWidget',
      'Both are equally good',
      'None of the above',
    ],
  ),
  Questions(
    'What happens if you change data in a StatelessWidget?',
    [
      'The UI is not updated',
      'The UI is updated',
      'The closest StatefulWidget is updated',
      'Any nested StatefulWidgets are updated',
    ],
  ),
  Questions(
    'How should you update data inside of StatefulWidgets?',
    [
      'By calling setState()',
      'By calling updateData()',
      'By calling updateUI()',
      'By calling updateState()',
    ],
  ),
  Questions(
    'What is the capital of France?',
    ['Paris', 'Rome', 'Berlin', 'Madrid'],
  ),
  Questions(
    'Who painted the Mona Lisa?',
    ['Leonardo da Vinci', 'Vincent van Gogh', 'Pablo Picasso', 'Michelangelo'],
  ),
  Questions(
    'What is the chemical symbol for water?',
    ['H2O', 'CO2', 'NaCl', 'CH4'],
  ),
  Questions(
    'What is the largest planet in our solar system?',
    ['Jupiter', 'Saturn', 'Mars', 'Earth'],
  ),
  Questions(
    'Who wrote "Romeo and Juliet"?',
    ['William Shakespeare', 'Jane Austen', 'Charles Dickens', 'Mark Twain'],
  ),
  Questions(
    'What is the square root of 64?',
    ['8', '4', '16', '6'],
  ),
  Questions(
    'Who won the FIFA World Cup in 2018?',
    ['France', 'Croatia', 'Brazil', 'Germany'],
  ),
  Questions(
    'Which player has won the Ballon d\'Or the most times?',
    ['Lionel Messi', 'Cristiano Ronaldo', 'Michel Platini', 'Marco van Basten'],
  ),
  Questions(
    'Which team has won the UEFA Champions League the most times?',
    ['Real Madrid', 'Barcelona', 'Liverpool', 'AC Milan'],
  ),
  Questions(
    'Who is the all-time leading goalscorer in the English Premier League?',
    ['Alan Shearer', 'Wayne Rooney', 'Thierry Henry', 'Sergio Agüero'],
  ),
  Questions(
    'Which country has won the most Copa America titles?',
    ['Uruguay', 'Argentina', 'Brazil', 'Chile'],
  ),
  Questions(
    'Who is known as "The King of Football"?',
    ['Pelé', 'Diego Maradona', 'Johan Cruyff', 'Zinedine Zidane'],
  ),
];
