-- TRUY VẤN
-- a.Liệt kê các bài viết về các bài hát thuộc thể loại Nhạc trữ tình 
SELECT bv.ma_bviet, bv.tieude, bv.ten_bhat, bv.ngayviet, tg.ten_tgia, tl.ten_tloai
FROM baiviet bv
JOIN tacgia tg ON bv.ma_tgia = tg.ma_tgia
JOIN theloai tl ON bv.ma_tloai = tl.ma_tloai
WHERE tl.ten_tloai = "Nhạc trữ tình";

-- b.Liệt kê các bài viết của tác giả “Nhacvietplus”baiviet
SELECT bv.ma_bviet, bv.tieude, bv.ten_bhat, bv.ngayviet, tg.ten_tgia, tl.ten_tloai
FROM baiviet bv
JOIN tacgia tg ON bv.ma_tgia = tg.ma_tgia
JOIN theloai tl ON bv.ma_tloai = tl.ma_tloai
WHERE tg.ten_tgia = "Nhacvietplus";

-- c. Liệt kê các thể loại nhạc chưa có bài viết  cảm nhận nào
SELECT tl.ma_tloai, tl.ten_tloai
FROM theloai tl
LEFT JOIN baiviet bv ON tl.ma_tloai = bv.ma_tloai
WHERE bv.ma_bviet IS NULL;

-- d. Liệt kê các bài viết với các thông tin sau: mã bài viết, tên bài viết, tên bài hát, tên tác giả, tên thể loại, ngày viết
SELECT bv.ma_bviet,bv.ten_bhat, tg.ten_tgia, tl.ten_tloai, bv.ngayviet
FROM baiviet bv
JOIN tacgia tg ON bv.ma_tgia = tg.ma_tgia
JOIN theloai tl ON bv.ma_tloai = tl.ma_tloai;

-- e. Tìm thể loại có số bài viết nhiều nhất
SELECT tl.ma_tloai, tl.ten_tloai, COUNT(bv.ma_bviet) AS so_bai_viet
FROM theloai tl
JOIN baiviet bv ON tl.ma_tloai = bv.ma_tloai
GROUP BY tl.ma_tloai
ORDER BY so_bai_viet DESC
LIMIT 1;

-- f. Liệt kê 2 tác giả có số bài viết nhiều nhất
SELECT tg.ma_tgia, tg.ten_tgia, COUNT(bv.ma_bviet) AS so_bai_viet
FROM tacgia tg
JOIN baiviet bv ON tg.ma_tgia = bv.ma_tgia
GROUP BY tg.ma_tgia
ORDER BY so_bai_viet DESC
LIMIT 2;

-- g. Liệt kê các bài viết về các bài hát có tựa bài hát chứa 1 trong các từ “yêu”, “thương”, “anh”, "em"
SELECT * FROM baiviet 
WHERE baiviet.ten_bhat LIKE '%yêu%' OR baiviet.ten_bhat LIKE '%thương%' OR baiviet.ten_bhat LIKE '%anh%' OR baiviet.ten_bhat LIKE '%em%';

-- h.Liệt kê các bài viết về các bài hát có tiêu đề bài viết hoặc tựa bài hát chứa 1 trong các từ “yêu”, “thương”, “anh”, “em”
SELECT * FROM baiviet 
WHERE baiviet.tieude LIKE '%yêu%' OR baiviet.tieude LIKE '%thương%' OR baiviet.tieude LIKE '%anh%' OR baiviet.tieude LIKE '%em%';

-- i. Tạo 1 view có tên vw_Music để hiển thị thông tin về Danh sách các bài viết kèm theo Tên thể loại và tên tác giả
CREATE VIEW vw_Music AS
SELECT bv.ma_bviet, bv.ten_bhat, tl.ma_tloai, tg.ma_tgia
FROM baiviet bv
JOIN theloai tl ON tl.ma_tloai = bv.ma_tloai
JOIN tacgia tg ON tg.ma_tgia = bv.ma_tgia;

-- j. Tạo 1 thủ tục có tên sp_DSBaiViet với tham số truyền vào là Tên thể loại và trả về danh sách Bài viết của thể loại đó. Nếu thể loại không tồn tại thì hiển thị thông báo lỗ
DELIMITER //
CREATE PROCEDURE sp_DSBaiViet (IN tentloai VARCHAR(50))
BEGIN
    DECLARE count_baiviet INT;

    SELECT COUNT(*) INTO count_baiviet
    FROM baiviet
    INNER JOIN theloai ON baiviet.ma_tloai = theloai.ma_tloai
    WHERE theloai.ten_tloai = tentloai;

    IF count_baiviet = 0 THEN
        SIGNAL SQLSTATE '45000'
            SET MESSAGE_TEXT = 'Thể loại không tồn tại.';
    ELSE
        SELECT *
        FROM baiviet
        INNER JOIN theloai ON baiviet.ma_tloai = theloai.ma_tloai
        WHERE theloai.ten_tloai = tentloai;
    END IF;
END //
DELIMITER 

-- k. Thêm mới cột SLBaiViet vào trong bảng theloai. Tạo 1 trigger có tên tg_CapNhatTheLoai để khi thêm/sửa/xóa bài viết thì số lượng bài viết trong bảng theloai được cập nhật theo
ALTER TABLE theloai
ADD COLUMN SLBaiViet INT DEFAULT 0;

DELIMITER //
CREATE TRIGGER tg_CapNhatTheLoai
AFTER INSERT ON baiviet
FOR EACH ROW
BEGIN
    UPDATE theloai
    SET SLBaiViet = SLBaiViet + 1
    WHERE ma_tloai = NEW.ma_tloai;
END //
DELIMITER ;


-- CREATE TABLE Users (
-- id INT AUTO_INCREMENT PRIMARY KEY,
-- username VARCHAR(50) NOT NULL,
-- password VARCHAR(50) NOT NULL
);


sp_DSBaiViet