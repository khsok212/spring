package kr.or.ddit.type;

import java.text.SimpleDateFormat;
import java.util.Date;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.PropertyEditorRegistrar;
import org.springframework.beans.PropertyEditorRegistry;
import org.springframework.beans.propertyeditors.CustomDateEditor;

public class CustomDatePropertyEditor implements PropertyEditorRegistrar {

	private static final Logger logger = LoggerFactory.getLogger(CustomDatePropertyEditor.class);
	
	// 문자열 -> java.util.Date
	@Override
	public void registerCustomEditors(PropertyEditorRegistry registry) {
										// 어떤 타입에 대해서 , 어떻게 변환할지
		registry.registerCustomEditor(Date.class, new CustomDateEditor(new SimpleDateFormat("yyyy-MM-dd"), true));
		logger.debug("registerCustomEditors()");
	}
	
}
