using System;

public static class EasingFunctionHelpers {
  public static float PI = 3.14159265f;
  public static double easeIn(double x){
    if( x > 1){
      x = 1;
    }
    return 1 - Math.Cos((x * PI) / 2);
  }

  public static double easeOut(double x){
    if( x > 1){
      x = 1;
    }
    return Math.Sin((x * PI) / 2);
  }
}