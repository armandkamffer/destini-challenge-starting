class Story {
  String storyTitle;
  String choiceOne;
  String choiceTwo;
  int choiceOneStoryNumber;
  int choiceTwoStoryNumber;

  Story({String storyTitle, String choiceOne, String choiceTwo, int choiceOneStoryNumber, int choiceTwoStoryNumber}) {
    this.storyTitle = storyTitle;
    this.choiceOne = choiceOne;
    this.choiceTwo = choiceTwo;
    this.choiceOneStoryNumber = choiceOneStoryNumber;
    this.choiceTwoStoryNumber = choiceTwoStoryNumber;
  }
}