package com.kh.spring.board.model.service;

import java.util.ArrayList;

import com.kh.spring.board.model.vo.Board;
import com.kh.spring.board.model.vo.Reply;
import com.kh.spring.common.model.vo.PageInfo;

public interface BoardService {
	
	// 게시글 총 갯수 가져오기
	int selectListCount();
	
	// 게시글 리스트 조회
	ArrayList<Board> selectList(PageInfo pi);
	
	// 게시글 작성 서비스(insert)
	int insertBoard(Board b);
	
	// 게시글 상제조회
	Board selectBoard(int boardNo);
	
	// 게시글 조회수 증가 (update)
	int increaseCount(int boardNo);
	
	// 게시글 삭제서비스 (update)
	int deleteBoard(int boardNo);
	
	// 게시글 수정 서비스(update)
	int updateBoard(Board b);
	
	// 댓글리스트 불러오기
	ArrayList<Reply> selectReplyList(int boardNo);
	
	// 댓글작성
	int insertReply(Reply r);
	
	// TON-N분석 = 조회수가 높은 board 5개 가져오기
	ArrayList<Board> selectTopBoardList();
	
	
}
