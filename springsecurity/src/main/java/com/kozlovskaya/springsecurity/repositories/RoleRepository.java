package com.kozlovskaya.springsecurity.repositories;

import com.kozlovskaya.springsecurity.entities.Role;
import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface RoleRepository extends CrudRepository<Role, Long> {
}
