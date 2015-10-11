package com.go4venue.web.persistence.beans;

/**
 * This bean class represents Monalisa property
 * 
 * @author rohit.kumar
 *
 */
public class Property implements Cloneable {

    private long key;
    private String name;
    private String value;
    private String description;
    private String environment;

    public long getKey() {
	return key;
    }

    public void setKey(long key) {
	this.key = key;
    }

    public String getName() {
	return name;
    }

    public void setName(String name) {
	this.name = name;
    }

    public String getValue() {
	return value;
    }

    public void setValue(String value) {
	this.value = value;
    }

    public String getDescription() {
	return description;
    }

    public void setDescription(String description) {
	this.description = description;
    }

    public String getEnvironment() {
	return environment;
    }

    public void setEnvironment(String environment) {
	this.environment = environment;
    }

    @Override
    public Object clone() {
	try {
	    Property clone = (Property) super.clone();

	    clone.setKey(this.key);
	    clone.setName(this.name);
	    clone.setValue(this.value);
	    clone.setDescription(this.description);
	    clone.setEnvironment(this.environment);
	    return clone;
	} catch (CloneNotSupportedException e) {
	    // this shouldn't happen, since we are Cloneable
	    throw new InternalError(e);
	}
    }

    @Override
    public int hashCode() {
	final int prime = 31;
	int result = 1;
	result = prime * result + ((name == null) ? 0 : name.hashCode());
	return result;
    }

    @Override
    public boolean equals(Object obj) {
	if (this == obj)
	    return true;
	if (obj == null)
	    return false;
	if (getClass() != obj.getClass())
	    return false;
	Property other = (Property) obj;
	if (name == null) {
	    if (other.name != null)
		return false;
	} else if (!name.equals(other.name))
	    return false;
	return true;
    }

    @Override
    public String toString() {
	return "Property [key=" + key + ", name=" + name + ", value=" + value + ", description=" + description + ", environment=" + environment + "]";
    }

}
