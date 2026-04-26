package com.example.userstudy;

import lombok.RequiredArgsConstructor;
import org.springframework.web.bind.annotation.*;
import java.util.List;

@RestController
@RequestMapping("/api/members")
@RequiredArgsConstructor
public class MemberController {
    private final MemberRepository repository;

    // @GetMapping
    // public List<Member> getAll(){
    //     return repository.findAll();
    // }
    @GetMapping(value = "/api/members", produces = "application/json; charset=UTF-8")
    public List<Member> getMembers() {
    return repository.findAll();
    }

    @PostMapping
    public Member create(@RequestBody Member member){
        return repository.save(member);
    }
}
