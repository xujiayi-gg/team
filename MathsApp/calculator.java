package cn.whp.util;

public class calculator {

	/**
	 * @param args
	 */ int setNumeratorAndDenominator(int a, int b){  // ���÷��Ӻͷ�ĸ
		    int c = f(Math.abs(a),Math.abs(b));         // �������Լ��
		   int  numerator = a / c;
		    int denominator = b / c;
		    if(numerator<0 && denominator<0){
		       numerator = - numerator;
		      denominator = - denominator;
		      
		    }
			return c;
		  }
	 int f(int a,int b){  // ��a��b�����Լ��
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
