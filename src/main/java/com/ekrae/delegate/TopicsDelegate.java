package com.ekrae.delegate;

import com.ekrae.entity.TopicsEntity;
import com.ekrae.repository.TopicsRepo;
import org.springframework.stereotype.Service;

import java.util.ArrayList;
import java.util.List;
import java.util.Optional;

@Service
public class TopicsDelegate {
    private TopicsRepo topicsRepo;

    public TopicsDelegate(TopicsRepo topicsRepo) {
        this.topicsRepo = topicsRepo;
    }


    public Optional<List<TopicsEntity>> getTopicByTag(String tag) {

        return this.topicsRepo.findByTag(tag);
    }

    public List<TopicsEntity> getAllTopics() {

        List<TopicsEntity> topics = new ArrayList<>();
        Iterable<TopicsEntity> all = this.topicsRepo.findAll();

        for (TopicsEntity entity : all) {
            topics.add(entity);

        }
        return topics;
    }

    public Optional<List<TopicsEntity>> getTopicsFromSearch(String desc) {

        return this.topicsRepo.findWithCustom(desc);
    }

}
