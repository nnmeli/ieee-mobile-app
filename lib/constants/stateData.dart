

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class StateData extends ChangeNotifier{
  int gtuIndex = 0 ;
  int ieeeIndex = 0 ;
  int mainIndex = 0 ;
  int viewIndex = 0 ;

  int profileIndex = 0 ;

  void newIndexGtu(x){ gtuIndex = x ;
  notifyListeners();
  }
  void newIndexIeee(x){ ieeeIndex = x ;
  notifyListeners();
  }

  void newIndexMain(x){ mainIndex = x ;
  notifyListeners();
  }

  void newIndexProfile(x){ profileIndex = x ;
  notifyListeners();
  }


}
