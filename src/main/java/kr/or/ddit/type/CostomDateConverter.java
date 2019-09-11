package kr.or.ddit.type;

import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.core.convert.converter.Converter;

public class CostomDateConverter implements Converter<String, Date>{
	
	private static final Logger logger = LoggerFactory.getLogger(CostomDateConverter.class);
	
	// <property name = "reg_dt" value="2019-08-08"/>
	@Override
	public Date convert(String source) {
		
		SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
		
		logger.debug("CostomDateConverter()");
		try {
			return sdf.parse(source);
		} catch (ParseException e) {
			e.printStackTrace();
		}
		return null;
	}

}
