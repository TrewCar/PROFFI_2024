package com.example.myapplication;

import android.graphics.MeshSpecification;
import android.renderscript.Sampler;
import android.widget.TextView;

import java.net.HttpURLConnection;
import java.net.URL;
import java.net.URLConnection;

import javax.net.ssl.HttpsURLConnection;

public class Api {

    public String TextAPI(String URL){
        try {
            URL url = new URL(URL);
            HttpURLConnection con = (HttpURLConnection)url.openConnection();
            con.getResponseCode();

            String res = con.getResponseMessage();
            return res;

        }
        catch (Exception ex){
            return ex.getMessage();
        }
    }
}
