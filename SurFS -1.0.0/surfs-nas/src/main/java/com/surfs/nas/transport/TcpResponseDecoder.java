/* This Source Code Form is subject to the terms of the Mozilla Public
 * License, v. 2.0. If a copy of the MPL was not distributed with this
 * file, You can obtain one at http://mozilla.org/MPL/2.0/. */

package com.surfs.nas.transport;

public class TcpResponseDecoder extends TcpCommandDecoder {

    private final TcpClient client;

    public TcpResponseDecoder(TcpClient client) {
        this.client = client;
    }

    @Override
    public void decode() throws Throwable {
        byte cmdtype = this.readByte();
        int sequence = this.readInt();
        TcpResponse response = TcpResponse.newInstance(cmdtype, sequence);
        response.read(this);
        TcpRequest tr = client.requestMap.get(response.getSequence());
        if (tr != null) {
            tr.setResponse(response);
        }
    }
}
