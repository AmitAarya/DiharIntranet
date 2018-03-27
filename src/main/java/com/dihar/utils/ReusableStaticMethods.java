package com.dihar.utils;

import java.util.ArrayList;
import java.util.List;
import java.util.Random;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

import com.dihar.common.DBConnection;
public class ReusableStaticMethods {
	private static Logger logger = LoggerFactory.getLogger(ReusableStaticMethods.class);
    DBConnection dbconnection=DBConnection.getInstance();
	/*
	 * numcount is total numbers which will select numcount should not be
	 * greater than upper bound
	 */
	public static List<Integer> randomNumber(int lowerbound, int upperbound, int numcount) {
		List<Integer> random = new ArrayList<Integer>();
		final int[] ints = new Random().ints(lowerbound, upperbound + 1).distinct().limit(numcount).toArray();
		for (int i = 0; i < ints.length; i++) {
			random.add(ints[i]);
		}
		logger.info(random.toString());
		return random;
	}

	public static List<Integer> randomNumberDuplicate(int lowerbound, int upperbound, int numcount) {
		List<Integer> random = new ArrayList<Integer>();
		final int[] ints = new Random().ints(lowerbound, upperbound + 1).limit(numcount).toArray();
		for (int i = 0; i < ints.length; i++) {
			random.add(ints[i]);
		}
		logger.info(random.toString());
		return random;
	}

	public static List<String> convertIntegerListToString(List<Integer> list) {
		List<String> temp = new ArrayList<String>();
		for (int i = 0; i < list.size(); i++) {
			if (list.get(i) < 10) {
				temp.add("0" + list.get(i));
			} else {
				temp.add(String.valueOf(list.get(i)));
			}

		}
		return temp;

	}

	public static String IntegerListToString(List<Integer> list, String string) {
		String str = "";
		for (int i = 0; i < list.size(); i++) {
			str = str + list.get(i);
		}
		return string + str;

	}

	public static String StringListToString(List<String> list) {
		String str = "";
		for (int i = 0; i < list.size(); i++) {
			str = str + list.get(i) + ",";
		}
		str = str.substring(0, str.length() - 1);
		return str;
	}

	public static String covertStringToTwoDecimalNum(String input) {
		float ftnum = Float.parseFloat(input);
		return String.format("%.2f", ftnum);

	}

	public static String removeZeroFromticket(String val) {
		if (val.length() != 0) {
			val = val.substring(0, val.length() - 1);
			return val;

		} else {
			return null;
		}
	}

	public static String getLastDigitFromticket(String val) {
		if (val.length() != 0) {
			val = val.substring(val.length() - 1, val.length());
			return val;

		} else {
			return null;
		}
	}
	public static long fact(int num) {
		long fact = 1;
		for (int i = 1; i <= num; i++) {
			fact = fact * i;
		}
		logger.info(String.valueOf(fact));
		return fact;
	}

	public static int calculateNoOfline(int n, int r) {
		long result = fact(n) / (fact(n - r) * fact(r));
		return (int) result;
	}
	public static double fmtToTwoDecimal(double number) {
		return Math.round((number * 100)) / 100.0;
	}
}
