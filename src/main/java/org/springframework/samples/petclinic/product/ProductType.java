package org.springframework.samples.petclinic.product;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;
import javax.validation.constraints.NotEmpty;
import javax.validation.constraints.Size;

import org.springframework.samples.petclinic.model.BaseEntity;

import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

@Entity
@Table(name = "producttypes")
@Getter
@Setter

public class ProductType extends BaseEntity{
	
	
	@Column(name = "name",unique=true)
	@Size(min = 3, max = 50)
    String name;
	
	
	
	
}
