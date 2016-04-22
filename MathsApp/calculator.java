package cn.whp.util;

public class calculator {

	/**
	 * @param args
	 */ int setNumeratorAndDenominator(int a, int b){  // 设置分子和分母
		    int c = f(Math.abs(a),Math.abs(b));         // 计算最大公约数
		   int  numerator = a / c;
		    int denominator = b / c;
		    if(numerator<0 && denominator<0){
		       numerator = - numerator;
		      denominator = - denominator;
		      
		    }
			return c;
		  }
	 int f(int a,int b){  // 求a和b的最大公约数
		    if(a < b){
		      int c = a;
		      a = b;
		      b = c;
		    }
		    int r = a % b;
		    while(r != 0){
		      a = b;
		      b = r;;
		      r = a % b;
		    }
		    return b;
		  }

		
	
	
}
