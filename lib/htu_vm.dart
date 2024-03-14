import 'package:stacked/stacked.dart';

class HTUScreenVM extends BaseViewModel {
  final tagLine =
      "The troubleshooter is based on the troubleshooting manuals of the PSA components. It gives instant access to years of accumulated knowledge of PSA systems and their functions, aiding technicians and biomedical engineers in their work.";

  final htulist1txt =
      "At start-up, a diagram of PSA system is shown. The diagram is divided into four main areas; Air Compressor, Refrigerated Dryer, Oxygen Generator and Oxygen Booster.";

  final htulist2txt =
      "Choose the area which is believed to be faulty by clicking on the system diagram at start-up. By choosing the faulty area in the system, the “Problem” page is opened that shows the problems that might occur in the components of the PSA system";

  final htulist3txt =
      "Once the relevant problem has been identified, the troubleshooter refers to the most probable causes listed on the “Probable Cause” page. ";

  final htulist4txt =
      "A probable cause to the problem can be selected from the list which is believed to be relevant. Following this, the troubleshooter refers to the “Solution” page where the corrective procedures required for the most probable cause are showns";
}
