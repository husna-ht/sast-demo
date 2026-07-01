package com.example.model;

public class User {

    private Long id;
    private String username;
    private String password;
    private String email;
    private String role;
    private boolean enabled;

    public User() {}

    public User(String username, String password, String email) {
        this.username = username;
        this.password = password;
        this.email    = email;
        this.role     = "ROLE_USER";
        this.enabled  = true;
    }

    public Long getId()                  { return id; }
    public void setId(Long id)           { this.id = id; }

    public String getUsername()              { return username; }
    public void   setUsername(String u)      { this.username = u; }

    public String getPassword()              { return password; }
    public void   setPassword(String p)      { this.password = p; }

    public String getEmail()                 { return email; }
    public void   setEmail(String e)         { this.email = e; }

    public String getRole()                  { return role; }
    public void   setRole(String r)          { this.role = r; }

    public boolean isEnabled()               { return enabled; }
    public void    setEnabled(boolean en)    { this.enabled = en; }
}
