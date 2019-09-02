package com.wowo;

import com.fasterxml.jackson.core.type.TypeReference;
import com.fasterxml.jackson.databind.ObjectMapper;

import java.io.IOException;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;

public class JacksonDemo {
    public static void main(String[] args) throws IOException {
        ObjectMapper mapper=new ObjectMapper();
        //java数组<=>JSON
        //java对象<=>JSON
//        mapper.writeValue(obj);
        //JSON==>java对象
//        mapper.readValue(str，Class)；
        //数组<==>JSON
        //数组==>JSON
        String [] arr={"AJAX","JSON","Vce"};
        String str=mapper.writeValueAsString(arr);
        System.out.println("str="+str);
        str="[\"AJAX\",\"JSON\",\"Vce\"]";
        //JSON==>Java数组
        String [] arr1=mapper.readValue(str,String[].class);
        System.out.println(Arrays.toString(arr1));

        //Java对象<==>JSON
        //Java对象==>JSON
        User user=new User(1,"tom",23);
        str=mapper.writeValueAsString(user);
        System.out.println("str="+str);
        //JSON==>Java对象
        str="{\"id\":2,\"name\":\"tom\",\"age\":23}";
        User user2=mapper.readValue(str,User.class);
        System.out.println(user2.toString());

        //Java List<User> <==>JSON
        //Java List<User> ==>JSON
        List<User> users=new ArrayList<>();
        users.add(new User(3,"alice",23));
        users.add(new User(3,"timi ",23));
        users.add(new User(3,"jack",23));
        str=mapper.writeValueAsString(users);
        System.out.println("str="+str);
        //JSON ==>Java List<User>///
        str="[{\"id\":3,\"name\":\"alice\",\"age\":23},{\"id\":3,\"name\":\"timi \",\"age\":23},{\"id\":3,\"name\":\"jack\",\"age\":23}]";
        List<User> users2=mapper.readValue(str,new TypeReference<List<User>>(){});
        System.out.println(users2);
    }
}
