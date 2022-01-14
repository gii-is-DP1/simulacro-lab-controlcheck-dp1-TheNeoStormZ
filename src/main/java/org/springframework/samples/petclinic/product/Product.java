package org.springframework.samples.petclinic.product;

import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.OneToMany;
import javax.persistence.OneToOne;
import javax.persistence.Table;
import javax.validation.constraints.Min;
import javax.validation.constraints.Size;

import org.springframework.samples.petclinic.model.BaseEntity;

import lombok.Getter;
import lombok.Setter;

@Entity
@Table(name = "products")
@Getter
@Setter
public class Product extends BaseEntity{

    
    @Column(name = "name")
    @Size(min = 3, max = 50)
    String name;
    
    @Min(value = 0)
    @Column(name = "price")
    double price;
    
   @ManyToOne
   @JoinColumn(name="product_type")
    ProductType ProductType;
   
   
}
