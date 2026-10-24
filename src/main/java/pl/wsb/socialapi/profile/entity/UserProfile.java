package pl.wsb.socialapi.profile.entity;

import jakarta.persistence.*;
import java.time.LocalDateTime;

@Entity
@Table(name = "user_profile")
public class UserProfile {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;

    @Column(name = "username", nullable = false,
            unique = true, length = 40)
    private String username;

    @Column(name = "display_name", nullable = false, length = 80)
    private String displayName;

    @Column(name = "email", nullable = false,
            unique = true, length = 120)
    private String email;

    @Column(name = "bio", length = 250)
    private String bio;

    @Column(name = "created_at", nullable = false)
    private LocalDateTime createdAt;

    @Column(name = "active", nullable = false)
    private Boolean active;

    @Embedded
    private Address address;

    protected UserProfile() {
    }

    public UserProfile(String username, String displayName,
                       String email, String bio,
                       LocalDateTime createdAt, Boolean active,
                       Address address) {
        this.username = username;
        this.displayName = displayName;
        this.email = email;
        this.bio = bio;
        this.createdAt = createdAt;
        this.active = active;
        this.address = address;
    }

    public Long getId() {
        return id;
    }

    public String getUsername() {
        return username;
    }

    public String getDisplayName() {
        return displayName;
    }

    public String getEmail() {
        return email;
    }

    public String getBio() {
        return bio;
    }

    public LocalDateTime getCreatedAt() {
        return createdAt;
    }

    public Boolean getActive() {
        return active;
    }

    public Address getAddress() {
        return address;
    }
}