// ignore_for_file: constant_identifier_names, file_names

class Question {
  final int id;
  final String title;
  final Map<int,String> options;

  Question(
      {required this.id,
      required this.title,
      required this.options,
      });
}

const List sample_data = [
  {
    "id": 1,
    "question": "I couldn't seem to experience any positive feeling at all",
    "options": {0:'Never',1: 'Sometimes', 2:'Often', 3:'Almost always'},
  },
  {
    "id": 2,
    "question": "I just couldn't seem to get going",
    "options": {0:'Never',1: 'Sometimes', 2:'Often', 3:'Almost always'},
  },
  {
    "id": 3,
    "question": "I felt that I had nothing to look forward to",
    "options": {0:'Never',1: 'Sometimes', 2:'Often', 3:'Almost always'},
  },
  {
    "id": 4,
    "question": "I felt sad and depressed",
    "options": {0:'Never',1: 'Sometimes', 2:'Often', 3:'Almost always'},
  },
  {
    "id": 5,
    "question": "I felt that I had lost interest in just about everything",
    "options": {0:'Never',1: 'Sometimes', 2:'Often', 3:'Almost always'},
  },
  {
    "id": 6,
    "question": "I felt I wasn't worth much as a person",
    "options": {0:'Never',1: 'Sometimes', 2:'Often', 3:'Almost always'},
  },
  {
    "id": 7,
    "question": "I felt that life wasn't worthwhile",
    "options": {0:'Never',1: 'Sometimes', 2:'Often', 3:'Almost always'},
  },
  {
    "id": 8,
    "question": "I couldn't seem to get any enjoyment out of the things I did",
    "options": {0:'Never',1: 'Sometimes', 2:'Often', 3:'Almost always'},
  },
  {
    "id": 9,
    "question": "I felt down-hearted and blue",
    "options": {0:'Never',1: 'Sometimes', 2:'Often', 3:'Almost always'},
  },
  {
    "id": 10,
    "question": "I was unable to become enthusiastic about anything",
    "options": {0:'Never',1: 'Sometimes', 2:'Often', 3:'Almost always'},
  },
  {
    "id": 11,
    "question": "I felt I was pretty worthless",
    "options": {0:'Never',1: 'Sometimes', 2:'Often', 3:'Almost always'},
  },
  {
    "id": 12,
    "question": "I could see nothing in the future to be hopeful about",
    "options": {0:'Never',1: 'Sometimes', 2:'Often', 3:'Almost always'},
  },
  {
    "id": 13,
    "question": "I felt that life was meaningless",
    "options": {0:'Never',1: 'Sometimes', 2:'Often', 3:'Almost always'},
  },
  {
    "id": 14,
    "question": "I found it difficult to work up the initiative to do things",
    "options": {0:'Never',1: 'Sometimes', 2:'Often', 3:'Almost always'},
  },
  {
    "id": 15,
    "question": "Education",
    "options": {
      0:'No school',
      1:'Less than high school',
      2:'High school',
      3:'University degree',
      4:'Graduate degree'
    },
  },
  {
    "id": 16,
    "question": "Gender",
    "options": {0:'Male', 1:'Female', 2:'Other'},
  },
  {
    "id": 17,
    "question": "Martial Status",
    "options": {0:'Never married', 1:'Currently married', 2:'Previously married'},
  },
  {
    "id": 18,
    "question": "Age",
    "options": {
      0:'Primary Children',
      1:'Secondary Children',
      2:'Adults',
      3:'Elder Adults',
      4:'Older People'
    },
  },
];
