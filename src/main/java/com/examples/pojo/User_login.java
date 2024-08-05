package com.examples.pojo;

public class User_login
{
    private int id;
    private String username;
    private String random;
    private String login_time;
    private String logout_time;

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getUsername() {
        return username;
    }

    public void setUsername(String username) {
        this.username = username;
    }

    public String getRandom() {
        return random;
    }

    public void setRandom(String random) {
        this.random = random;
    }

    public String getLogin_time() {
        return login_time;
    }

    public void setLogin_time(String login_time) {
        this.login_time = login_time;
    }

    public String getLogout_time() {
        return logout_time;
    }

    public void setLogout_time(String logout_time) {
        this.logout_time = logout_time;
    }

    @Override
    public String toString() {
        return "User_login{" +
                "id=" + id +
                ", username='" + username + '\'' +
                ", random='" + random + '\'' +
                ", login_time='" + login_time + '\'' +
                ", logout_time='" + logout_time + '\'' +
                '}';
    }
}
