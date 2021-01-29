class Today {
  final String title;
  final bool isChecked;

  Today({this.title, this.isChecked});
}

class TodayData {
  final _data = [
    Today(title: 'Start making a presentation', isChecked: false),
    Today(title: 'Pay for rent', isChecked: false),
    Today(title: 'Buy a milk', isChecked: true),
    Today(title: 'Don`t forget to pick up Mickael from school', isChecked: true),
    Today(title: 'Buy a chocolate for Charlotte', isChecked: false),
  ];

  List<Today> get today => [..._data];
}