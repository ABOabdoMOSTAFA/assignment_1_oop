class Holiday{
  String nameHoliday;
  int day;
  String mouth;
  Holiday({ this.nameHoliday, this.day, this.mouth});
  static bool inSameMouth(Holiday h1, Holiday h2){
    if(h1.mouth==h2.mouth){
      return true;
    }
    return false;
  }
  static avgDate(List<Holiday> holy){
    int sum =0;
    for(int i=0;i<holy.length;i++){
      sum+=holy[i].day;
    }
    return sum~/holy.length;
  }
}
void main(){
  Holiday H1= Holiday(nameHoliday: "independence",day: 4,mouth: "july");
  Holiday H2= Holiday(nameHoliday: "independence",day: 4,mouth: "july");
  print(Holiday.inSameMouth(H1, H2));
  List<Holiday> holy=[
    H1= Holiday(nameHoliday: "independence",day: 4,mouth: "july"),
    H2= Holiday(nameHoliday: "independence",day: 4,mouth: "july"),

  ];
  print(Holiday.avgDate(holy));
}