package fileupload;

import common.JDBConnPool;

public class MyFileDAO extends JDBConnPool {
    // 새로운 게시물을 입력합니다.
    public int insertFile(MyFileDTO dto) {
        int applyResult = 0;
        try {
            String query = "INSERT INTO myfile ( "
                    + " title, cate, ofile, sfile) "
                    + " VALUES ( "
                    + " ?, ?, ?, ?)";

            psmt = con.prepareStatement(query);
            psmt.setString(1, dto.getTitle());
            psmt.setString(2, dto.getCate());
            psmt.setString(3, dto.getOfile());
            psmt.setString(4, dto.getSfile());

            applyResult = psmt.executeUpdate();

        } catch (Exception e) {
            System.out.println("INSERT 중 예외 발생");
            e.printStackTrace();
        }
        return applyResult;
    }
}
