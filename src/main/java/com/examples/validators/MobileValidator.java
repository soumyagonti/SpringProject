package com.examples.validators;
import com.examples.pojo.Jewellery;
import org.springframework.validation.Errors;
import org.springframework.validation.Validator;

public class MobileValidator implements Validator
{
    @Override
    public boolean supports(Class<?> clazz) {
        return Jewellery.class.isAssignableFrom(clazz);
    }

    @Override
    public void validate(Object target, Errors errors)
    {
        Jewellery mobile=(Jewellery) target;
        if(mobile.getId()==0)
        {
            errors.rejectValue("id","id.error","*This is a required field");
        } else if (mobile.getId()<0 || mobile.getId()>1000) {
            errors.rejectValue("id","id.error","Please enter the id between 1 and 1000");
        }
        if (mobile.getName() == null || mobile.getName().isEmpty()) {
            errors.rejectValue("name", "name.error", "*This is a required field");
        } else if (!mobile.getName().matches("^[a-zA-Z]+$")) {
            errors.rejectValue("name", "name.error", "Alphabets only");
        }
        String color = mobile.getColor();
        if (color == null || color.isEmpty()) {
            errors.rejectValue("color", "color.error", "*This is a required field");
        }
        String price = mobile.getPrice();
        if (price == null || price.isEmpty()) {
            errors.rejectValue("price", "price.error", "*This is a required field");
        } else if (!price.matches("^[0-9]{5,8}+$")) {
            errors.rejectValue("price", "price.error", "Digits only, length range from 5 to 8");
        }
    }
}
