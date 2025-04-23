CREATE DATABASE IF NOT EXISTS vegetable_app_db CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;
USE vegetable_app_db;

-- Bảng 1: vegetables (Thông tin về các loại rau củ nhận diện)
-- Lưu thông tin chung, giới thiệu dinh dưỡng tổng quát, URL ảnh chính, và class_index từ mô hình.
CREATE TABLE vegetables (
    id INT AUTO_INCREMENT PRIMARY KEY, -- ID duy nhất cho mỗi loại rau củ, tự tăng
    class_index INT UNIQUE NOT NULL, -- Chỉ mục (index) trả về từ mô hình nhận diện (0-45), phải là duy nhất và không rỗng. LIÊN KẾT VỚI KẾT QUẢ MÔ HÌNH.
    vietnamese_name VARCHAR(255) NOT NULL, -- Tên tiếng Việt của rau củ
    scientific_name VARCHAR(255), -- Tên khoa học (có thể rỗng)
    description TEXT, -- Mô tả chung về rau củ (có thể rỗng)
    nutritional_info TEXT, -- Đoạn văn giới thiệu/tóm tắt về dinh dưỡng (có thể rỗng). Phần liệt kê sẽ ở bảng vegetable_nutritional_points
    image_url VARCHAR(255), -- URL đến ảnh minh họa đẹp của rau củ (lưu trữ trên server/cloud) (có thể rỗng)
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP, -- Thời gian tạo bản ghi
    updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP -- Thời gian cập nhật bản ghi gần nhất
);

-- Thêm chỉ mục cho class_index để tăng tốc độ truy vấn khi dùng kết quả mô hình
CREATE INDEX idx_veg_class_index ON vegetables (class_index);


-- Bảng 2: recipes (Thông tin chung về các món ăn)
-- Lưu thông tin tổng quát về mỗi món ăn.
CREATE TABLE recipes (
    id INT AUTO_INCREMENT PRIMARY KEY, -- ID duy nhất cho mỗi món ăn, tự tăng
    name VARCHAR(255) NOT NULL, -- Tên món ăn
    description TEXT, -- Mô tả ngắn về món ăn (có thể rỗng)
    image_url VARCHAR(255), -- URL đến ảnh minh họa của món ăn đã hoàn thành (lưu trữ trên server/cloud) (có thể rỗng)
    prep_time VARCHAR(50), -- Thời gian chuẩn bị
    cook_time VARCHAR(50), -- Thời gian nấu
    servings VARCHAR(50), -- Số lượng khẩu phần
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP, -- Thời gian tạo bản ghi
    updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP -- Thời gian cập nhật bản ghi gần nhất
);


-- Bảng 3: recipe_vegetables
-- Dùng để tìm các món ăn chứa loại rau củ CỤ THỂ từ kết quả nhận diện (chức năng gợi ý).
CREATE TABLE recipe_vegetables (
    id INT AUTO_INCREMENT PRIMARY KEY,
    recipe_id INT NOT NULL, -- ID của món ăn (khóa ngoại tham chiếu đến bảng recipes)
    vegetable_id INT NOT NULL, -- ID của loại rau củ (khóa ngoại tham chiếu đến bảng vegetables)

    -- Thiết lập Khóa ngoại (Foreign Keys)
    FOREIGN KEY (recipe_id) REFERENCES recipes(id) ON DELETE CASCADE, -- Nếu món ăn bị xóa, các liên kết này cũng bị xóa
    FOREIGN KEY (vegetable_id) REFERENCES vegetables(id) ON DELETE CASCADE, -- Nếu loại rau củ bị xóa, các liên kết này cũng bị xóa

    -- Đảm bảo mỗi loại rau củ chỉ được liên kết 1 lần cho mỗi món ăn trong bảng này
    UNIQUE KEY unique_recipe_vegetable (recipe_id, vegetable_id)
);
-- Thêm chỉ mục cho khóa ngoại nếu cần để tối ưu join
CREATE INDEX idx_rec_veg_recipe_id ON recipe_vegetables (recipe_id);
CREATE INDEX idx_rec_veg_vegetable_id ON recipe_vegetables (vegetable_id);


-- Bảng 4: recipe_items (Liệt kê TẤT CẢ các nguyên liệu cho một món ăn)
CREATE TABLE recipe_items (
    id INT AUTO_INCREMENT PRIMARY KEY,
    recipe_id INT NOT NULL, -- Liên kết tới bảng recipes
    item_name VARCHAR(255) NOT NULL, -- Tên nguyên liệu
    quantity VARCHAR(255), -- Số lượng và đơn vị
    notes VARCHAR(255), -- Các ghi chú đi kèm nguyên liệu (ví dụ: "(băm nhỏ)", có thể rỗng)
    image_url VARCHAR(255), -- URL ảnh minh họa cho nguyên liệu này (tùy chọn, có thể rỗng).
    order_index INT NOT NULL, -- Thứ tự xuất hiện của nguyên liệu trong danh sách

    -- Thiết lập Khóa ngoại
    FOREIGN KEY (recipe_id) REFERENCES recipes(id) ON DELETE CASCADE,

    -- Đảm bảo thứ tự và tên nguyên liệu là duy nhất cho mỗi món ăn
    UNIQUE KEY unique_item_order_per_recipe (recipe_id, order_index)
);
-- Thêm chỉ mục cho khóa ngoại
CREATE INDEX idx_rec_item_recipe_id ON recipe_items (recipe_id);


-- Bảng 5: recipe_steps (Liệt kê các bước chế biến)
-- Dùng để hiển thị hướng dẫn từng bước trong công thức trên ứng dụng.
CREATE TABLE recipe_steps (
    id INT AUTO_INCREMENT PRIMARY KEY,
    recipe_id INT NOT NULL, -- Liên kết tới bảng recipes
    step_number INT NOT NULL, -- Số thứ tự của bước chế biến
    instruction_text LONGTEXT NOT NULL, -- Nội dung hướng dẫn của bước đó
    image_url VARCHAR(255), -- URL ảnh minh họa cho bước này (tùy chọn, có thể rỗng)

    -- Thiết lập Khóa ngoại
    FOREIGN KEY (recipe_id) REFERENCES recipes(id) ON DELETE CASCADE,

    -- Đảm bảo số thứ tự bước là duy nhất trong cùng một món ăn
    UNIQUE KEY unique_recipe_step (recipe_id, step_number)
);
-- Thêm chỉ mục cho khóa ngoại
CREATE INDEX idx_rec_step_recipe_id ON recipe_steps (recipe_id);


-- Bảng 6: vegetable_nutritional_points (Liệt kê các điểm dinh dưỡng dạng gạch đầu dòng)
-- Dùng để hiển thị danh sách lợi ích/thành phần dinh dưỡng cụ thể của từng loại rau củ.
CREATE TABLE vegetable_nutritional_points (
    id INT AUTO_INCREMENT PRIMARY KEY,
    vegetable_id INT NOT NULL, -- Khóa ngoại liên kết tới bảng vegetables
    point_text TEXT NOT NULL, -- Nội dung của gạch đầu dòng (ví dụ: 'Vitamin K: Rất quan trọng...')
    display_order INT NOT NULL, -- Thứ tự hiển thị của gạch đầu dòng

    -- Thiết lập Khóa ngoại
    FOREIGN KEY (vegetable_id) REFERENCES vegetables(id) ON DELETE CASCADE,

    -- Đảm bảo thứ tự hiển thị là duy nhất cho mỗi loại rau củ
    UNIQUE KEY unique_nutri_point_order_per_veg (vegetable_id, display_order)
);
-- Thêm chỉ mục cho khóa ngoại
CREATE INDEX idx_veg_nutri_point_veg_id ON vegetable_nutritional_points (vegetable_id);


-- Bảng 7: vegetable_select_points (Liệt kê các điểm về cách chọn mua dạng gạch đầu dòng)
-- Dùng để hiển thị hướng dẫn cách chọn mua của từng loại rau củ.
CREATE TABLE vegetable_select_points (
    id INT AUTO_INCREMENT PRIMARY KEY,
    vegetable_id INT NOT NULL, -- Khóa ngoại liên kết tới bảng vegetables
    point_text TEXT NOT NULL, -- Nội dung của điểm (ví dụ: 'Chọn củ chắc, nặng tay.')
    display_order INT NOT NULL, -- Thứ tự hiển thị của điểm này trong danh sách

    -- Thiết lập Khóa ngoại
    FOREIGN KEY (vegetable_id) REFERENCES vegetables(id) ON DELETE CASCADE,

    -- Đảm bảo thứ tự hiển thị là duy nhất cho mỗi loại rau củ
    UNIQUE KEY unique_select_order_per_veg (vegetable_id, display_order)
);
-- Thêm chỉ mục cho khóa ngoại
CREATE INDEX idx_veg_select_point_veg_id ON vegetable_select_points (vegetable_id);


-- Bảng 8: vegetable_preserve_points (Liệt kê các điểm về cách bảo quản dạng gạch đầu dòng)
-- Dùng để hiển thị hướng dẫn cách bảo quản của từng loại rau củ.
CREATE TABLE vegetable_preserve_points (
    id INT AUTO_INCREMENT PRIMARY KEY,
    vegetable_id INT NOT NULL, -- Khóa ngoại liên kết tới bảng vegetables
    point_text TEXT NOT NULL, -- Nội dung của điểm (ví dụ: 'Bảo quản trong ngăn mát tủ lạnh.')
    display_order INT NOT NULL, -- Thứ tự hiển thị của điểm này trong danh sách

    -- Thiết lập Khóa ngoại
    FOREIGN KEY (vegetable_id) REFERENCES vegetables(id) ON DELETE CASCADE,

    -- Đảm bảo thứ tự hiển thị là duy nhất cho mỗi loại rau củ
    UNIQUE KEY unique_preserve_order_per_veg (vegetable_id, display_order)
);
-- Thêm chỉ mục cho khóa ngoại
CREATE INDEX idx_veg_preserve_point_veg_id ON vegetable_preserve_points (vegetable_id);

