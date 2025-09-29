-- Tạo database
CREATE DATABASE QLSV_DOAN_01
GO

USE QLSV_DOAN_01
GO


-- Bảng Lớp
CREATE TABLE Class (
    ClassCode VARCHAR(10) PRIMARY KEY,
    ClassName NVARCHAR(50) NOT NULL
)

-- Bảng Sinh viên
CREATE TABLE Student (
    StudentCode VARCHAR(10) PRIMARY KEY,
    FullName NVARCHAR(100) NOT NULL,
    DOB DATE NOT NULL,
    ClassCode VARCHAR(10) NOT NULL,
    FOREIGN KEY (ClassCode) REFERENCES Class(ClassCode)
)

-- Thêm dữ liệu mẫu
INSERT INTO Class (ClassCode, ClassName) VALUES
('CNTT01', N'Công nghệ thông tin 01'),
('CNTT02', N'Công nghệ thông tin 02')

INSERT INTO Student (StudentCode, FullName, DOB, ClassCode) VALUES
('SV001', N'Nguyễn Văn A', '2000-01-01', 'CNTT01'),
('SV002', N'Trần Thị B', '2000-05-12', 'CNTT01')
