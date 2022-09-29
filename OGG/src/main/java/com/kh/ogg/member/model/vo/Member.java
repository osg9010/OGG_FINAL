package com.kh.ogg.member.model.vo;
import java.util.Date;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@NoArgsConstructor
@AllArgsConstructor
public class Member {
	
	private int m_no; // ȸ����ȣ
	private String m_id; // ���̵�
	private String m_pwd; // ��й�ȣ
	private String m_name; // �̸�
	private String m_nickname; // �г���
	private String m_phonenumber; // �޴��� ��ȣ
	private String m_email; // �̸���
	private Date m_joindate; // ���� ��¥
	private String m_emailagreement; // �̸��� ���� ���� ���� (Y:���� / N:���� / DEFAULT 'N")
	private String m_recommend; // ��õ�� ���̵�

	private Date m_agreement; // ��� ���� ��¥ 
	private String m_status; // ���� (Y:���� / N:Ż��)
	private String m_authority; // ���� (ROLE_USER:�̿��� / ROLE_ADMIN:���)
	private int m_enabled; // ��ť��Ƽ ����
	
	private String m_account; // ��� ����
	private String m_card_name; // ī���
	private String m_card_num; // ī�� ��ȣ
	private int m_point; // ����Ʈ

}