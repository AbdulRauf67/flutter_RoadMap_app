
class Studentmodel{
  String uID;
  String sName;
  int sAge;
  Studentmodel(this.uID,this.sName,this.sAge);
  Map<String,dynamic> toMap(){
    return {
      'uID':uID,
      'sName':sName,
      'sAge': sAge
    };
  }
}