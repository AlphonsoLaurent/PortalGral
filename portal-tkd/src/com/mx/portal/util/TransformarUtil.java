package com.mx.portal.util;

import java.lang.reflect.InvocationTargetException;

import org.apache.commons.beanutils.BeanUtils;

public final class TransformarUtil {
	public final static Object transformar(Object elemento) {
		Object object = new Object();
		try {
			BeanUtils.copyProperties(object, elemento);
		} catch (IllegalAccessException e) {
			e.printStackTrace();
		} catch (InvocationTargetException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return object;
	}
}
