package com.ekrae.repository;


import com.ekrae.entity.TopicsEntity;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

import java.util.List;
import java.util.Optional;

@Repository
public interface TopicsRepo extends CrudRepository<TopicsEntity, Long> {

    TopicsEntity findByTitle(String name);
    Optional<List<TopicsEntity>> findByTag(String tag);

    @Query(value = "SELECT * FROM topic t WHERE t.desc like %?1% OR t.title like %?1%" , nativeQuery = true)
    Optional<List<TopicsEntity>> findWithCustom(String desc);

}
