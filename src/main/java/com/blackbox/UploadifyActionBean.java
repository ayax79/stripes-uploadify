package com.blackbox;

import net.sourceforge.stripes.action.ActionBean;
import net.sourceforge.stripes.action.ActionBeanContext;
import net.sourceforge.stripes.action.Resolution;
import net.sourceforge.stripes.action.ForwardResolution;

/**
 *
 * @author andrew
 */
public class UploadifyActionBean implements ActionBean {
    private ActionBeanContext actionBeanContext;


    @Override
    public void setContext(ActionBeanContext actionBeanContext) {
        this.actionBeanContext = actionBeanContext;
    }

    @Override
    public ActionBeanContext getContext() {
        return actionBeanContext;
    }

    public Resolution test() {
        return new ForwardResolution("/test.jsp");
    }
}
