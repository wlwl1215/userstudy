package com.example.userstudy.repository;

import org.springframework.data.jpa.repository.JpaRepository;

import com.example.userstudy.Member;

public interface MemberRepository extends JpaRepository<Member, Long> {

}
