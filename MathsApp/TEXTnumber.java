package cn.whp.util;

import junit.framework.Assert;

import org.junit.Before;
import org.junit.Test;

public class TEXTnumber {

	/**
	 * @param args
	 */
	
		
	calculator cal;
	@Before
		public void setup()
		{
			cal=new calculator();
		}
	@Test	
public void textone()
{
	
		double sum;
		sum=cal.setNumeratorAndDenominator(3, 0);
	Assert.assertEquals("´íÎó ",sum,0,0);
	

}
	@Test(expected=ArithmeticException.class)
	public void textoneException()
	{
		int sum;
		sum=cal.setNumeratorAndDenominator(2, 8);
	Assert.assertEquals("ÓÐ´íÎó ",sum,2.0,0);
		
	}
	
	@Test(timeout=200)
	public void time(){
	
	double sum=cal.setNumeratorAndDenominator(2, 8);
	Assert.assertEquals("ÓÐ´íÎó ",sum,1600000.0,0);
	
}

}
