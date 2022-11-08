// ignore_for_file: constant_identifier_names

class Question {
  final int id;
  final String question;
  final List<String> options;

  Question({required this.id, required this.question, required this.options});
}

const List sample_data = [
  {
    "id": 1,
    "question": "I couldn't seem to experience any positive feeling at all",
    "options": ['Never', 'Sometimes', 'Often', 'Almost always'],
  },
  {
    "id": 2,
    "question": "I just couldn't seem to get going",
    "options": ['Never', 'Sometimes', 'Often', 'Almost always'],
  },
  {
    "id": 3,
    "question": "I felt that I had nothing to look forward to",
    "options": ['Never', 'Sometimes', 'Often', 'Almost always'],
  },
  {
    "id": 4,
    "question": "I felt sad and depressed",
    "options": ['Never', 'Sometimes', 'Often', 'Almost always'],
  },
  {
    "id": 5,
    "question": "I felt that I had lost interest in just about everything",
    "options": ['Never', 'Sometimes', 'Often', 'Almost always'],
  },
  {
    "id": 6,
    "question": "I felt I wasn't worth much as a person",
    "options": ['Never', 'Sometimes', 'Often', 'Almost always'],
  },
  {
    "id": 7,
    "question": "I felt that life wasn't worthwhile",
    "options": ['Never', 'Sometimes', 'Often', 'Almost always'],
  },
  {
    "id": 8,
    "question": "I couldn't seem to get any enjoyment out of the things I did",
    "options": ['Never', 'Sometimes', 'Often', 'Almost always'],
  },
  {
    "id": 9,
    "question": "I felt down-hearted and blue",
    "options": ['Never', 'Sometimes', 'Often', 'Almost always'],
  },
  {
    "id": 10,
    "question": "I was unable to become enthusiastic about anything",
    "options": ['Never', 'Sometimes', 'Often', 'Almost always'],
  },
  {
    "id": 11,
    "question": "I felt I was pretty worthless",
    "options": ['Never', 'Sometimes', 'Often', 'Almost always'],
  },
  {
    "id": 12,
    "question": "I could see nothing in the future to be hopeful about",
    "options": ['Never', 'Sometimes', 'Often', 'Almost always'],
  },
  {
    "id": 13,
    "question": "I felt that life was meaningless",
    "options": ['Never', 'Sometimes', 'Often', 'Almost always'],
  },
  {
    "id": 14,
    "question": "I found it difficult to work up the initiative to do things",
    "options": ['Never', 'Sometimes', 'Often', 'Almost always'],
  },
  {
    "id": 15,
    "question": "Education",
    "options": [
      'No school',
      'Less than high school',
      'High school',
      'University degree',
      'Graduate degree'
    ],
  },
  {
    "id": 16,
    "question": "Gender",
    "options": ['Male', 'Female', 'Other'],
  },
  {
    "id": 17,
    "question": "Martial Status",
    "options": ['Never married', 'Currently married', 'Previously married'],
  },
  {
    "id": 18,
    "question": "Age",
    "options": [
      'Primary Children',
      'Secondary Children',
      'Adults',
      'Elder Adults',
      'Older People'
    ],
  },
];
