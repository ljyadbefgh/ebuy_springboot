package com.lcvc.ebuy_springboot.aop;


import org.aspectj.lang.annotation.Aspect;
import org.springframework.stereotype.Component;

@Aspect
@Component
public class MySpringValidatorAspect {

    /*@Around("execution(* com.lcvc.ebuy_springboot.service..*.*(..)) && args(..,result)")
    public Object doAround(ProceedingJoinPoint pjp, BindingResult result) {
        result.getFieldErrors();
        return null;
    }
*/
}
