# spring jpa one to many

```
Caused by: org.hibernate.MappingException: Could not determine type for: java.util.List, at table: ss_user, for columns: [org.hibernate.mapping.Column(role_list)]
```

## 解决方案

注解要么写在字段上，要么写在getXX上，千万千万不能混合使用，否则会报这个错误！

```
https://nvry.iteye.com/blog/1729436
```

## Incorrect: 

```java
public class Mail implements Serializable {
	private static final long serialVersionUID = 1L;

	@Column(name="CNT***DR")
	private String cn***dr;

    private List<Sa***tion> saasPor***ions;

    @OneToMany(mappedBy = "mailId")
    public List<Saa***cation> getSaa***ations() {
        return saa***tions;
    }

    public void setSa***ations(List<Sa***ication> saa***ions) {
        this.saa***tions = saa***tions;
    }

```

## Correct 

```java
public class Mail implements Serializable {
	private static final long serialVersionUID = 1L;

	@Column(name="CNT***DR")
	private String cn***dr;

    @OneToMany(mappedBy = "mailId")
    private List<Sa***tion> saasPor***ions;

    
    public List<Saa***cation> getSaa***ations() {
        return saa***tions;
    }

    public void setSa***ations(List<Sa***ication> saa***ions) {
        this.saa***tions = saa***tions;
    }

```