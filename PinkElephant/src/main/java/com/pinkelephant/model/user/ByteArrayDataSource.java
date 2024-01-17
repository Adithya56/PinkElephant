package com.pinkelephant.model.user;

import java.io.ByteArrayInputStream;
import java.io.InputStream;
import java.io.OutputStream;
import javax.activation.DataSource;
import org.springframework.stereotype.Component;
import com.pinkelephant.controllers.user.homeController;

public class ByteArrayDataSource implements DataSource {

    private final byte[] data;
    private final String type;

    public ByteArrayDataSource(byte[] data, String type) {
        this.data = data;
        this.type = type;
    }

    @Override
    public InputStream getInputStream() {
        return new ByteArrayInputStream(data);
    }

    @Override
    public OutputStream getOutputStream() {
        throw new UnsupportedOperationException();
    }

    @Override
    public String getContentType() {
        return type;
    }

    @Override
    public String getName() {
        return "ByteArrayDataSource";
    }
}
