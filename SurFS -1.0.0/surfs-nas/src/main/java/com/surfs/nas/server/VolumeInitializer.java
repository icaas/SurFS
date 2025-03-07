/* This Source Code Form is subject to the terms of the Mozilla Public
 * License, v. 2.0. If a copy of the MPL was not distributed with this
 * file, You can obtain one at http://mozilla.org/MPL/2.0/. */

package com.surfs.nas.server;

import com.autumn.core.service.ServiceFactory;
import com.autumn.core.service.ServiceImpl;
import com.surfs.nas.transport.ThreadPool;
import java.io.File;
import java.util.Properties;


public class VolumeInitializer implements ServiceImpl {

    private VolumeDirectoryMaker make = null;

    @Override
    public void start() throws Exception {
        Properties p = ServiceFactory.getServiceConfig().getProperties();
        if (p == null) {
            throw new Exception("");
        }
        String path = p.getProperty("path");
        if (path == null || path.trim().isEmpty()) {
            throw new Exception("");
        }
        File f = new File(path);
        if (!f.exists()) {
            throw new Exception("");
        } else {
            if (!f.isDirectory()) {
                throw new Exception("");
            }
        }
        make = new VolumeDirectoryMaker(f);
        make.start();
    }

    @Override
    public void stop() {
        ThreadPool.stopThread(make);
    }

}
