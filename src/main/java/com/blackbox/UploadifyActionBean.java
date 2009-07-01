package com.blackbox;

import net.sourceforge.stripes.action.*;

import java.io.File;
import java.io.IOException;

/**
 * An action for handling uploads.
 * <p/>
 * There are a couple important things to note about this.<br />
 * 1. This will be called once per file <br />
 * 2. The fileDataName in the js has to map up to a field in this class.
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

    public FileBean fileData; // must be the same as the fileDataName in the js

    public void setFileData(FileBean fileData) {
        this.fileData = fileData;
    }

    public Resolution test() throws IOException {

        // make sure this directory exists
        File savedFile = new File("/tmp/uploads", fileData.getFileName());
        fileData.save(savedFile);

        return new ForwardResolution("/index.jsp");
    }
}
