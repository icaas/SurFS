/* This Source Code Form is subject to the terms of the Mozilla Public
 * License, v. 2.0. If a copy of the MPL was not distributed with this
 * file, You can obtain one at http://mozilla.org/MPL/2.0/. */

package com.autumn.core;

import org.mortbay.jetty.Server;

/**
 * <p>Title: 关闭JETTY</p>
 *
 * <p>Description: 关闭JETTY服务</p>
 *
 * <p>Copyright: Autumn Copyright (c) 2011</p>
 *
 * <p>Company: Autumn </p>
 *
 * @author 刘社朋
 * @version 2.0
 */
public class JettyListener implements JVMListener {

    private Server server = null;

    public JettyListener(Server server) throws Exception {
        this.server = server;
    }

    @Override
    public void systemDestroyed() {
        if (server != null) {
            try {
                JettyServer.stop(server);
            } catch (Exception r) {
            }
        }
    }
}
