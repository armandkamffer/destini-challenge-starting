import 'story.dart';

class StoryBrain {
  int _storyNumber = 0;

  List<Story> _storyData = [
    Story(
        storyTitle:
            'Your car has blown a tire on a winding road in the middle of nowhere with no cell phone reception. You decide to hitchhike. A rusty pickup truck rumbles to a stop next to you. A man with a wide brimmed hat with soulless eyes opens the passenger door for you and asks: "Need a ride, boy?".',
        choiceOne: 'I\'ll hop in. Thanks for the help!',
        choiceTwo: 'Better ask him if he\'s a murderer first.',
        choiceOneStoryNumber: 2,
        choiceTwoStoryNumber: 1),
    Story(
        storyTitle: 'He nods slowly, unphased by the question.',
        choiceOne: 'At least he\'s honest. I\'ll climb in.',
        choiceTwo: 'Wait, I know how to change a tire.',
        choiceOneStoryNumber: 2,
        choiceTwoStoryNumber: 3),
    Story(
        storyTitle:
            'As you begin to drive, the stranger starts talking about his relationship with his mother. He gets angrier and angrier by the minute. He asks you to open the glovebox. Inside you find a bloody knife, two severed fingers, and a cassette tape of Elton John. He reaches for the glove box.',
        choiceOne: 'I love Elton John! Hand him the cassette tape.',
        choiceTwo: 'It\'s him or me! You take the knife and stab him.',
        choiceOneStoryNumber: 5,
        choiceTwoStoryNumber: 4),
    Story(
        storyTitle:
            'What? Such a cop out! Did you know traffic accidents are the second leading cause of accidental death for most adult age groups?',
        choiceOne: 'Restart',
        choiceTwo: '',
        choiceOneStoryNumber: -1),
    Story(
        storyTitle:
            'As you smash through the guardrail and careen towards the jagged rocks below you reflect on the dubious wisdom of stabbing someone while they are driving a car you are in.',
        choiceOne: 'Restart',
        choiceTwo: '',
        choiceOneStoryNumber: -1),
    Story(
        storyTitle:
            'You bond with the murderer while crooning verses of "Can you feel the love tonight". He drops you off at the next town. Before you go he asks you if you know any good places to dump bodies. You reply: "Try the pier".',
        choiceOne: 'Restart',
        choiceTwo: '',
        choiceOneStoryNumber: -1)
  ];

  String getStory() {
    return _storyData[_storyNumber].storyTitle;
  }

  String getChoiceOne() {
    return _storyData[_storyNumber].choiceOne;
  }

  String getChoiceTwo() {
    return _storyData[_storyNumber].choiceTwo;
  }

  void nextStory({int choiceNumber}) {
    switch (choiceNumber) {
      case 1:
        {
          if (_storyData[_storyNumber].choiceOneStoryNumber == null) return;
          if (_storyData[_storyNumber].choiceOneStoryNumber == -1) {
            reset();
            return;
          }
          _storyNumber = _storyData[_storyNumber].choiceOneStoryNumber;
        }
        break;
      case 2:
        {
          if (_storyData[_storyNumber].choiceTwoStoryNumber !=
              null) if (_storyData[_storyNumber].choiceTwoStoryNumber == -1) {
            reset();
            return;
          }
          _storyNumber = _storyData[_storyNumber].choiceTwoStoryNumber;
        }
        break;
    }
  }

  void reset() {
    _storyNumber = 0;
  }

  bool buttonShouldBeVisible({int choiceNumber}) {
    switch (choiceNumber) {
      case 1: return _storyData[_storyNumber].choiceOneStoryNumber != null;
      case 2: return _storyData[_storyNumber].choiceTwoStoryNumber != null;
    }
  }
}