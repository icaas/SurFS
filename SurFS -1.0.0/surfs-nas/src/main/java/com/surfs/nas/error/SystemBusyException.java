/* This Source Code Form is subject to the terms of the Mozilla Public
 * License, v. 2.0. If a copy of the MPL was not distributed with this
 * file, You can obtain one at http://mozilla.org/MPL/2.0/. */

package com.surfs.nas.error;

import java.io.IOException;

public class SystemBusyException extends IOException {

    public SystemBusyException() {
        super("File system busy.");
    }

    public SystemBusyException(String cause) {
        super(cause);
    }

    public SystemBusyException(Throwable cause) {
        super(cause);
    }
}
