package myspring.user.vo;

import java.util.List;

import javax.xml.bind.annotation.XmlElement;
import javax.xml.bind.annotation.XmlRootElement;

@XmlRootElement(name = "member")
public class MemberVOXML {
	private String status;
	private List<MemberVO> memberList;
	
	public MemberVOXML() {}
	
	public MemberVOXML(String status, List<MemberVO>memberList) {
		this.status = status;
		this.memberList = memberList;
	}

	public String getStatus() {
		return status;
	}
	@XmlElement
	public void setStatus(String status) {
		this.status = status;
	}

	public List<MemberVO> getMemberList() {
		return memberList;
	}
	@XmlElement(name="member")
	public void setMemberList(List<MemberVO> memberList) {
		this.memberList = memberList;
	}
	
}
