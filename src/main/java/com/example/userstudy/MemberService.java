package com.example.userstudy;

import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Service;
import java.util.List;
import java.util.Optional;

@Service
@RequiredArgsConstructor
public class MemberService {
    private final MemberRepository repository;

    public Member create(Member member) {
        return repository.save(member);
    }

    
    public List<Member> findAll() {
        return repository.findAll();
    }

    // READ: 특정 회원 조회
    public Optional<Member> findById(Long id) {
        return repository.findById(id);
    }

    // UPDATE: 회원 정보 수정
    public Member update(Long id, Member updatedMember) {
        return repository.findById(id)
            .map(member -> {
                member.setName(updatedMember.getName());
                member.setEmail(updatedMember.getEmail());
                return repository.save(member);
            })
            .orElseThrow(() -> new RuntimeException("회원을 찾을 수 없습니다: " + id));
    }

    // DELETE: 회원 삭제
    public void delete(Long id) {
        if (!repository.existsById(id)) {
            throw new RuntimeException("회원을 찾을 수 없습니다: " + id);
        }
        repository.deleteById(id);
    }
}
