package com.pinkelephant.model.user;

import java.util.Base64;

public class Award {
    private int id;
    private byte[] image;
    private String title;
    private String desc;

    public Award() {
        super();
    }

    public Award(int id, byte[] image, String title, String desc) {
        this.id = id;
        this.image = image;
        this.title = title;
        this.desc = desc;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    // Corrected getter and setter for the image field
    public byte[] getImage() {
        return image;
    }

    public void setImage(byte[] image) {
        this.image = image;
    }

    // Modified getter to convert the byte array to a Base64-encoded string
    public String getBase64Image() {
        return Base64.getEncoder().encodeToString(image);
    }

    // Modified setter to decode the Base64 string and set the image byte array
    public void setBase64Image(String base64Image) {
        this.image = Base64.getDecoder().decode(base64Image);
    }

    public String getTitle() {
        return title;
    }

    public void setTitle(String title) {
        this.title = title;
    }

    public String getDesc() {
        return desc;
    }

    public void setDesc(String desc) {
        this.desc = desc;
    }
}
