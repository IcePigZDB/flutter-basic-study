
import '../ui/home_page.dart';
import '../ui/study_page.dart';


const homePage = "/a";
const studyPage = "/b";

// ignore: non_constant_identifier_names
var RoutePath = {
  "$homePage": (context) => HomePage(),
  "$studyPage": (context) => StudyPage(),
};