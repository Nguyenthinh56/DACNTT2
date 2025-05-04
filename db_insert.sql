-- --------------------------------------
-- 1. Bắp cải (class_index: 0)
-- --------------------------------------

-- Chèn vào bảng vegetables
INSERT INTO vegetables (class_index, vietnamese_name, scientific_name, description, nutritional_info)
VALUES (
    0, 
    'Bắp cải', 
    'Brassica oleracea var. capitata', 
    'Bắp cải là một loại rau lá thuộc họ Cải (Brassicaceae), được trồng phổ biến ở Việt Nam, đặc biệt tại các vùng cao nguyên như Đà Lạt, Lạng Sơn. Rau có hình dạng tròn hoặc hơi dẹt, với các lớp lá dày, mịn, bọc chặt, màu xanh nhạt hoặc tím tùy giống. Bắp cải là nguyên liệu quan trọng trong ẩm thực Việt Nam, được dùng trong các món canh, xào, salad, cuốn, hoặc lên men thành dưa cải chua.',
    'Bắp cải là nguồn cung cấp dồi dào vitamin C, vitamin K, chất xơ, folate và các hợp chất chống oxy hóa như glucosinolate, polyphenol. Loại rau này hỗ trợ sức khỏe tim mạch bằng cách giảm cholesterol, cải thiện hệ tiêu hóa nhờ chất xơ, và tăng cường miễn dịch nhờ vitamin C. Các hợp chất sulfur trong bắp cải có tiềm năng phòng ngừa ung thư, đặc biệt là ung thư đại tràng và phổi.'
);

-- Chèn vào bảng vegetable_nutritional_points
INSERT INTO vegetable_nutritional_points (vegetable_id, point_text, display_order)
VALUES 
(1, 'Vitamin C (55% DV trong 100g): Tăng cường hệ miễn dịch, thúc đẩy sản xuất collagen, hỗ trợ chữa lành vết thương và bảo vệ tế bào khỏi tổn thương oxy hóa.', 1),
(1, 'Vitamin K (85% DV trong 100g): Quan trọng cho quá trình đông máu và duy trì sức khỏe xương, giúp giảm nguy cơ loãng xương.', 2),
(1, 'Chất xơ (2,5g trong 100g): Cải thiện tiêu hóa, ngăn ngừa táo bón, giảm cholesterol và hỗ trợ kiểm soát đường huyết.', 3),
(1, 'Glucosinolate và polyphenol: Các hợp chất chống oxy hóa giúp giảm viêm, bảo vệ tế bào và có tiềm năng giảm nguy cơ ung thư đại tràng, phổi.', 4),
(1, 'Folate (10% DV trong 100g): Hỗ trợ phát triển tế bào, đặc biệt quan trọng cho phụ nữ mang thai để ngăn ngừa dị tật ống thần kinh ở thai nhi.', 5),
(1, 'Ít calo (25 kcal trong 100g): Lý tưởng cho chế độ ăn kiêng, giúp duy trì cân nặng khỏe mạnh mà vẫn cung cấp dinh dưỡng dồi dào.', 6);

-- Chèn vào bảng vegetable_select_points
INSERT INTO vegetable_select_points (vegetable_id, point_text, display_order)
VALUES 
(1, 'Lá cuốn chặt, không hở: Bắp cải tươi có các lá bọc sát vào nhau, không có khe hở lớn, đảm bảo độ giòn và tươi.', 1),
(1, 'Đầu bắp cải nặng, chắc tay: Khi cầm, bắp cải nên có cảm giác nặng so với kích thước, cuống nhỏ và không bị nứt.', 2),
(1, 'Màu sắc tươi sáng: Lá bên ngoài có màu xanh trắng hoặc tím nhạt (tùy giống), không có đốm nâu hoặc vàng úa.', 3),
(1, 'Lá ngoài giòn, không héo: Kiểm tra lá ngoài cùng, nếu giòn và không mềm nhũn, bắp cải còn tươi.', 4),
(1, 'Tránh bắp cải bị dập hoặc có mùi lạ: Những vết dập hoặc mùi hôi có thể chỉ ra bắp cải đã bị hỏng hoặc bảo quản kém.', 5);

-- Chèn vào bảng vegetable_preserve_points
INSERT INTO vegetable_preserve_points (vegetable_id, point_text, display_order)
VALUES 
(1, 'Bọc trong túi nhựa có lỗ và để trong ngăn mát: Đặt bắp cải trong túi nhựa đục lỗ để duy trì độ ẩm và thông thoáng, bảo quản ở nhiệt độ 0-4°C trong tủ lạnh.', 1),
(1, 'Giữ nguyên đầu, không cắt nhỏ: Bắp cải nguyên đầu giữ được độ tươi lâu hơn so với khi đã cắt. Có thể bảo quản đến 2-3 tuần.', 2),
(1, 'Dùng que tăm cắm vào cuống: Cắm 3-4 que tăm vào cuống bắp cải và đặt trong nước như hoa tươi, giúp kéo dài độ tươi thêm vài ngày.', 3),
(1, 'Kiểm tra định kỳ: Loại bỏ lá ngoài nếu bị héo để tránh ảnh hưởng đến phần bên trong.', 4),
(1, 'Không để gần trái cây như táo, chuối: Các loại trái cây này tiết ra ethylene, làm bắp cải nhanh hỏng.', 5);

-- Chèn vào bảng recipes
INSERT INTO recipes (name, description, prep_time, cook_time, servings)
VALUES 
('Canh bắp cải thịt băm', 'Món canh nhẹ nhàng, ngọt thanh với bắp cải giòn và thịt băm thơm, phù hợp cho bữa cơm gia đình.', '10 phút', '15 phút', '4 người'),
('Bắp cải xào tỏi', 'Món xào đơn giản, giữ được độ giòn và vị ngọt tự nhiên của bắp cải, kết hợp với hương thơm đặc trưng của tỏi.', '5 phút', '10 phút', '3 người'),
('Bắp cải cuốn thịt', 'Món ăn hấp dẫn với lớp bắp cải mềm bọc nhân thịt heo băm, nấm và gia vị, hấp chín tạo hương vị đậm đà.', '20 phút', '25 phút', '4 người'),
('Salad bắp cải trộn mayonnaise', 'Món salad tươi mát với bắp cải thái sợi, cà rốt và sốt mayonnaise béo ngậy.', '15 phút', '0 phút', '4 người');

-- Chèn vào bảng recipe_vegetables
INSERT INTO recipe_vegetables (recipe_id, vegetable_id)
VALUES 
(1, 1),
(2, 1),
(3, 1),
(4, 1);

-- Chèn vào bảng recipe_items
INSERT INTO recipe_items (recipe_id, item_name, quantity, notes, order_index)
VALUES 
-- Canh bắp cải thịt băm
(1, 'Bắp cải', '300g', 'Rửa sạch, cắt khúc 3-4cm', 1),
(1, 'Thịt heo băm', '200g', 'Chọn nạc vai, ướp với 1/2 muỗng cà phê muối, 1/4 muỗng cà phê tiêu', 2),
(1, 'Cà chua', '1 quả (100g)', 'Thái múi cau', 3),
(1, 'Gừng', '10g', 'Cạo vỏ, thái sợi', 4),
(1, 'Hành lá', '2 nhánh (10g)', 'Thái nhỏ', 5),
(1, 'Nước mắm', '1 muỗng canh', 'Chọn loại ngon', 6),
(1, 'Muối', '1/2 muỗng cà phê', 'Điều chỉnh theo khẩu vị', 7),
(1, 'Dầu ăn', '1 muỗng canh', 'Dùng để xào', 8),
(1, 'Nước', '1 lít', 'Nước lọc', 9),
-- Bắp cải xào tỏi
(2, 'Bắp cải', '400g', 'Rửa sạch, cắt khúc 4-5cm', 1),
(2, 'Tỏi', '4 tép (15g)', 'Bóc vỏ, băm nhỏ', 2),
(2, 'Dầu ăn', '2 muỗng canh', 'Dùng để xào', 3),
(2, 'Nước mắm', '1 muỗng cà phê', 'Tăng hương vị', 4),
(2, 'Muối', '1/4 muỗng cà phê', 'Điều chỉnh theo khẩu vị', 5),
(2, 'Hạt tiêu', '1/4 muỗng cà phê', 'Rắc khi hoàn thiện', 6),
-- Bắp cải cuốn thịt
(3, 'Bắp cải', '8 lá lớn (400g)', 'Chọn lá to, luộc sơ để mềm', 1),
(3, 'Thịt heo băm', '300g', 'Chọn nạc vai, ướp với 1 muỗng cà phê nước mắm, 1/2 muỗng cà phê tiêu', 2),
(3, 'Nấm mèo', '20g', 'Ngâm nở, băm nhỏ', 3),
(3, 'Hành tím', '2 củ (20g)', 'Băm nhỏ', 4),
(3, 'Cà rốt', '50g', 'Bào sợi nhỏ', 5),
(3, 'Nước mắm', '1 muỗng canh', 'Nêm nhân', 6),
(3, 'Muối', '1/4 muỗng cà phê', 'Nêm nhân', 7),
(3, 'Dầu ăn', '1 muỗng canh', 'Xào nhân', 8),
-- Salad bắp cải trộn mayonnaise
(4, 'Bắp cải', '300g', 'Thái sợi mỏng', 1),
(4, 'Cà rốt', '100g', 'Bào sợi', 2),
(4, 'Mayonnaise', '3 muỗng canh', 'Chọn loại ít ngọt', 3),
(4, 'Sữa đặc', '1 muỗng canh', 'Tạo độ béo', 4),
(4, 'Giấm', '1 muỗng cà phê', 'Tạo vị chua nhẹ', 5),
(4, 'Muối', '1/4 muỗng cà phê', 'Nêm salad', 6),
(4, 'Hạt tiêu', '1/4 muỗng cà phê', 'Rắc khi hoàn thiện', 7);

-- Chèn vào bảng recipe_steps
INSERT INTO recipe_steps (recipe_id, step_number, instruction_text)
VALUES 
-- Canh bắp cải thịt băm
(1, 1, 'Chuẩn bị nguyên liệu: Rửa sạch bắp cải dưới vòi nước lạnh, loại bỏ lá héo, cắt khúc 3-4cm để dễ ăn. Cà chua rửa sạch, thái múi cau 6-8 miếng để tạo vị chua nhẹ. Hành lá rửa sạch, thái nhỏ phần đầu và lá riêng. Gừng cạo vỏ, thái sợi mỏng để tăng hương thơm.'),
(1, 2, 'Xào thịt băm: Đun nóng 1 muỗng canh dầu ăn trong nồi trên lửa vừa, cho thịt heo băm (đã ướp với 1/2 muỗng cà phê muối, 1/4 muỗng cà phê tiêu) vào. Xào đều 2-3 phút đến khi thịt săn lại, tiết ra mùi thơm, tránh để thịt quá khô.'),
(1, 3, 'Nấu nước dùng: Đổ 1 lít nước lọc vào nồi, đun sôi trên lửa lớn. Thêm cà chua và gừng, giảm lửa vừa, nấu 5 phút để cà chua tiết vị ngọt và gừng tạo hương thơm. Khuấy nhẹ để nước dùng trong.'),
(1, 4, 'Hoàn thiện canh: Cho bắp cải vào nồi, tăng lửa vừa, nêm 1 muỗng canh nước mắm và 1/2 muỗng cà phê muối. Đun 3-4 phút đến khi bắp cải mềm nhưng vẫn giòn. Rắc hành lá, khuấy nhẹ, tắt bếp. Múc canh ra bát, dùng nóng với cơm trắng.'),
-- Bắp cải xào tỏi
(2, 1, 'Chuẩn bị nguyên liệu: Rửa sạch bắp cải, ngâm trong nước muối loãng 5 phút để loại bỏ bụi bẩn, cắt khúc 4-5cm, để ráo hoàn toàn để tránh bị ra nước khi xào. Tỏi bóc vỏ, băm nhỏ hoặc đập dập để tăng hương thơm.'),
(2, 2, 'Phi tỏi thơm: Đun nóng 2 muỗng canh dầu ăn trong chảo lớn trên lửa vừa, cho tỏi vào phi khoảng 30 giây đến khi vàng nhẹ và dậy mùi thơm. Tránh để tỏi cháy vì sẽ tạo vị đắng.'),
(2, 3, 'Xào bắp cải: Tăng lửa lớn, cho bắp cải vào chảo, đảo đều liên tục 2-3 phút để bắp cải chín đều nhưng vẫn giữ độ giòn. Nêm 1 muỗng cà phê nước mắm và 1/4 muỗng cà phê muối, đảo nhanh tay để gia vị thấm đều.'),
(2, 4, 'Hoàn thiện món xào: Rắc 1/4 muỗng cà phê hạt tiêu để tăng vị cay nhẹ, đảo lần cuối trong 10 giây. Tắt bếp, chuyển bắp cải ra đĩa ngay để tránh bị mềm. Dùng nóng như món phụ với cơm.'),
-- Bắp cải cuốn thịt
(3, 1, 'Chuẩn bị lá và nhân: Chọn 8 lá bắp cải lớn, rửa sạch, luộc sơ trong nước sôi 1-2 phút đến khi mềm, vớt ra ngâm nước lạnh để giữ màu xanh. Trộn thịt heo băm, nấm mèo (ngâm nở, băm nhỏ), cà rốt bào sợi, hành tím băm với 1 muỗng cà phê nước mắm, 1/4 muỗng cà phê muối, 1/2 muỗng cà phê tiêu.'),
(3, 2, 'Xào nhân: Đun nóng 1 muỗng canh dầu ăn trong chảo, cho hỗn hợp nhân vào xào trên lửa vừa 3-4 phút đến khi chín 50% (thịt hơi tái). Khuấy đều để nhân thấm gia vị, để nguội 5 phút trước khi cuốn.'),
(3, 3, 'Cuộn bắp cải: Trải lá bắp cải lên mặt phẳng, đặt 1-2 muỗng nhân vào giữa, gấp hai bên lá và cuộn chặt như cuốn chả giò. Xếp các cuộn vào xửng hấp, đảm bảo mặt gấp hướng xuống để không bung ra.'),
(3, 4, 'Hấp và hoàn thiện: Hấp cuộn bắp cải trên lửa vừa trong 15 phút đến khi thịt chín hoàn toàn. Kiểm tra bằng cách dùng tăm xiên, nếu không có nước đỏ là chín. Lấy ra, sắp lên đĩa, dùng nóng với nước mắm pha chua ngọt.'),
-- Salad bắp cải trộn mayonnaise
(4, 1, 'Chuẩn bị rau củ: Rửa sạch bắp cải và cà rốt, ngâm trong nước muối loãng 5 phút để đảm bảo vệ sinh. Thái bắp cải thành sợi mỏng (khoảng 2mm), cà rốt bào sợi nhỏ bằng dụng cụ bào. Để ráo nước hoàn toàn để tránh làm loãng sốt.'),
(4, 2, 'Pha sốt mayonnaise: Trong bát lớn, trộn 3 muỗng canh mayonnaise, 1 muỗng canh sữa đặc, 1 muỗng cà phê giấm, 1/4 muỗng cà phê muối, và 1/4 muỗng cà phê hạt tiêu. Khuấy đều đến khi hỗn hợp mịn, tạo vị béo nhẹ và chua thanh.'),
(4, 3, 'Trộn salad: Cho bắp cải và cà rốt vào bát lớn, đổ sốt mayonnaise lên, dùng tay hoặc muỗng trộn đều để sốt bám đều từng sợi rau. Nêm nếm lại, điều chỉnh muối hoặc giấm nếu cần.'),
(4, 4, 'Làm lạnh và hoàn thiện: Đậy kín bát salad, để trong ngăn mát tủ lạnh 10 phút để rau thấm sốt và giòn hơn. Trước khi dùng, rắc thêm 1/4 muỗng cà phê hạt tiêu cho thơm. Dọn ra đĩa, ăn kèm thịt nướng hoặc gà chiên.');

-- -------------------------------------
-- 2. Bí đỏ (class_index: 1)
-- -------------------------------------

-- Chèn vào bảng vegetables
INSERT INTO vegetables (class_index, vietnamese_name, scientific_name, description, nutritional_info)
VALUES (
    1, 
    'Bí đỏ', 
    'Cucurbita moschata', 
    'Bí đỏ là một loại rau củ thuộc họ Bầu bí (Cucurbitaceae), được trồng rộng rãi ở Việt Nam, đặc biệt tại các tỉnh miền Trung và Tây Nguyên. Quả có hình tròn hoặc dẹt, vỏ màu cam đậm, thịt bên trong mềm, ngọt, màu vàng cam rực rỡ. Bí đỏ là nguyên liệu phổ biến trong ẩm thực Việt Nam, dùng để nấu canh, súp, chè, hoặc làm bánh.',
    'Bí đỏ giàu vitamin A (beta-carotene), vitamin C, chất xơ, và các chất chống oxy hóa như lutein, zeaxanthin. Rau củ này hỗ trợ sức khỏe mắt, tăng cường miễn dịch, cải thiện làn da, và giảm nguy cơ bệnh tim mạch nhờ kali và chất xơ. Bí đỏ cũng chứa chất chống viêm và có lượng calo thấp, lý tưởng cho chế độ ăn lành mạnh.'
);

-- Chèn vào bảng vegetable_nutritional_points
INSERT INTO vegetable_nutritional_points (vegetable_id, point_text, display_order)
VALUES 
(2, 'Vitamin A (245% DV trong 100g): Cung cấp beta-carotene, hỗ trợ thị lực, tăng cường miễn dịch, và bảo vệ da khỏi tác hại của tia UV.', 1),
(2, 'Vitamin C (20% DV trong 100g): Thúc đẩy sản xuất collagen, tăng cường miễn dịch, và hỗ trợ chữa lành vết thương.', 2),
(2, 'Chất xơ (3g trong 100g): Cải thiện tiêu hóa, hỗ trợ kiểm soát đường huyết, và giảm cholesterol, giúp duy trì sức khỏe tim mạch.', 3),
(2, 'Kali (340mg trong 100g): Hỗ trợ cân bằng huyết áp, giảm nguy cơ đột quỵ, và duy trì chức năng cơ bắp.', 4),
(2, 'Lutein và zeaxanthin: Các chất chống oxy hóa bảo vệ mắt khỏi thoái hóa điểm vàng và đục thủy tinh thể.', 5),
(2, 'Ít calo (26 kcal trong 100g): Phù hợp cho chế độ ăn kiêng, giúp kiểm soát cân nặng mà vẫn cung cấp dinh dưỡng dồi dào.', 6);

-- Chèn vào bảng vegetable_select_points
INSERT INTO vegetable_select_points (vegetable_id, point_text, display_order)
VALUES 
(2, 'Vỏ cứng, màu cam đậm: Bí đỏ tươi có vỏ chắc, màu cam sáng, không bị nứt hoặc có đốm mềm. Gõ vào vỏ nghe âm thanh rỗng là bí chín.', 1),
(2, 'Cuống khô, màu nâu: Cuống bí khô và cứng, không còn xanh, cho thấy bí đã chín hoàn toàn và ngọt.', 2),
(2, 'Nặng tay so với kích thước: Bí đỏ chất lượng có cảm giác nặng, thịt đặc, ít hạt, đảm bảo độ ngọt và thơm.', 3),
(2, 'Không có vết trầy xước lớn: Vỏ bí nguyên vẹn, không bị dập hoặc có vết cắt sâu để tránh hư hỏng nhanh.', 4),
(2, 'Tránh bí có mùi lạ hoặc mềm: Bí có mùi chua hoặc phần vỏ mềm khi ấn là dấu hiệu đã hỏng hoặc bảo quản kém.', 5);

-- Chèn vào bảng vegetable_preserve_points
INSERT INTO vegetable_preserve_points (vegetable_id, point_text, display_order)
VALUES 
(2, 'Bảo quản nơi khô ráo, thoáng mát: Để bí đỏ nguyên quả ở nơi nhiệt độ 10-15°C, tránh ánh nắng trực tiếp, có thể giữ tươi 2-3 tháng.', 1),
(2, 'Cắt nhỏ và bảo quản lạnh: Nếu cắt bí, bọc kín bằng màng bọc thực phẩm, để trong ngăn mát tủ lạnh (0-4°C), dùng trong 5-7 ngày.', 2),
(2, 'Đông lạnh để bảo quản lâu: Gọt vỏ, cắt miếng nhỏ, cho vào túi zip, đông lạnh ở -18°C, giữ được 6-8 tháng.', 3),
(2, 'Kiểm tra thường xuyên: Loại bỏ phần bí bị mềm hoặc có dấu hiệu hư hỏng để tránh lây lan sang phần còn lại.', 4),
(2, 'Tránh xếp chồng nặng: Không đặt vật nặng lên bí để tránh làm dập vỏ, gây hư hỏng nhanh.', 5);

-- Chèn vào bảng recipes
INSERT INTO recipes (name, description, prep_time, cook_time, servings)
VALUES 
('Canh bí đỏ tôm', 'Một món canh truyền thống Việt Nam, kết hợp vị ngọt tự nhiên của bí đỏ và tôm tươi, tạo nên món ăn thanh nhẹ, giàu dinh dưỡng, thường xuất hiện trong bữa cơm gia đình.', '10 phút', '20 phút', '4 người'),
('Chè bí đỏ', 'Món chè truyền thống Việt Nam, ngọt ngào, bùi bùi với bí đỏ mềm hòa quyện cùng nước cốt dừa béo và lá dứa thơm, là món tráng miệng yêu thích ở nhiều vùng miền.', '15 phút', '30 phút', '4 người'),
('Bí đỏ xào tỏi', 'Món xào đơn giản, phổ biến trong bữa ăn Việt Nam, với bí đỏ ngọt mềm, thấm vị tỏi thơm, là món phụ dễ làm, tiết kiệm thời gian.', '10 phút', '15 phút', '3 người'),
('Bánh bí đỏ hấp', 'Món bánh truyền thống Việt Nam, mềm mịn, ngọt nhẹ từ bí đỏ, thường được dùng làm món ăn nhẹ hoặc tráng miệng trong các dịp lễ, Tết.', '20 phút', '25 phút', '4 người');

-- Chèn vào bảng recipe_vegetables
INSERT INTO recipe_vegetables (recipe_id, vegetable_id)
VALUES 
(5, 2),
(6, 2),
(7, 2),
(8, 2);

-- Chèn vào bảng recipe_items
INSERT INTO recipe_items (recipe_id, item_name, quantity, notes, order_index)
VALUES 
-- Canh bí đỏ tôm
(5, 'Bí đỏ', '300g', 'Gọt vỏ, rửa sạch, cắt miếng vừa ăn (2-3cm)', 1),
(5, 'Tôm tươi', '200g', 'Bóc vỏ, bỏ đầu, rút chỉ đen', 2),
(5, 'Hành lá', '2 nhánh (10g)', 'Rửa sạch, thái nhỏ', 3),
(5, 'Nước mắm', '1 muỗng canh', 'Chọn loại ngon', 4),
(5, 'Muối', '1/2 muỗng cà phê', 'Điều chỉnh theo khẩu vị', 5),
(5, 'Hạt tiêu', '1/4 muỗng cà phê', 'Rắc khi hoàn thiện', 6),
(5, 'Dầu ăn', '1 muỗng canh', 'Dùng để xào', 7),
(5, 'Nước', '1 lít', 'Nước lọc', 8),
-- Chè bí đỏ
(6, 'Bí đỏ', '500g', 'Gọt vỏ, cắt miếng vừa (3cm)', 1),
(6, 'Nước cốt dừa', '200ml', 'Chọn loại đặc, thơm', 2),
(6, 'Đường nâu', '100g', 'Điều chỉnh theo khẩu vị', 3),
(6, 'Lá dứa', '2 lá', 'Rửa sạch, buộc gọn', 4),
(6, 'Nước', '1 lít', 'Nước lọc', 5),
(6, 'Muối', '1/4 muỗng cà phê', 'Tạo vị cân bằng', 6),
(6, 'Bột năng', '50g', 'Hòa với 100ml nước để tạo độ sệt', 7),
-- Bí đỏ xào tỏi
(7, 'Bí đỏ', '400g', 'Gọt vỏ, rửa sạch, cắt miếng mỏng (1cm)', 1),
(7, 'Tỏi', '4 tép (15g)', 'Bóc vỏ, băm nhỏ', 2),
(7, 'Dầu ăn', '2 muỗng canh', 'Dùng để xào', 3),
(7, 'Nước mắm', '1 muỗng cà phê', 'Tăng hương vị', 4),
(7, 'Muối', '1/4 muỗng cà phê', 'Điều chỉnh theo khẩu vị', 5),
(7, 'Hạt tiêu', '1/4 muỗng cà phê', 'Rắc khi hoàn thiện', 6),
(7, 'Hành lá', '1 nhánh (5g)', 'Thái nhỏ, trang trí', 7),
-- Bánh bí đỏ hấp
(8, 'Bí đỏ', '300g', 'Gọt vỏ, hấp chín, nghiền nhuyễn', 1),
(8, 'Bột gạo', '150g', 'Chọn loại bột gạo tẻ mịn', 2),
(8, 'Bột năng', '50g', 'Tạo độ dai cho bánh', 3),
(8, 'Đường trắng', '80g', 'Điều chỉnh theo khẩu vị', 4),
(8, 'Nước', '200ml', 'Nước ấm, dùng để nhào bột', 5),
(8, 'Dầu ăn', '1 muỗng canh', 'Phết khuôn để chống dính', 6),
(8, 'Muối', '1/4 muỗng cà phê', 'Tạo vị cân bằng', 7);

-- Chèn vào bảng recipe_steps
INSERT INTO recipe_steps (recipe_id, step_number, instruction_text)
VALUES 
-- Canh bí đỏ tôm
(5, 1, 'Chuẩn bị nguyên liệu: Gọt vỏ bí đỏ, rửa sạch, cắt miếng vừa ăn (2-3cm) để chín đều. Tôm tươi bóc vỏ, rút chỉ đen, rửa sạch với nước muối loãng, để ráo. Hành lá rửa sạch, thái nhỏ phần đầu và lá riêng để trang trí.'),
(5, 2, 'Xào tôm: Đun nóng 1 muỗng canh dầu ăn trong nồi trên lửa vừa, cho tôm vào xào 1-2 phút đến khi tôm chuyển màu hồng và săn lại, tỏa mùi thơm. Vớt tôm ra bát, giữ lại dầu trong nồi.'),
(5, 3, 'Nấu canh: Đổ 1 lít nước lọc vào nồi, đun sôi trên lửa lớn. Thêm bí đỏ, giảm lửa vừa, nấu 10 phút đến khi bí mềm nhưng không nát. Cho tôm đã xào vào, nêm 1 muỗng canh nước mắm và 1/2 muỗng cà phê muối, khuấy nhẹ.'),
(5, 4, 'Hoàn thiện canh: Đun thêm 2 phút để gia vị thấm đều, rắc hành lá và 1/4 muỗng cà phê hạt tiêu. Tắt bếp, múc canh ra bát, dùng nóng với cơm trắng để thưởng thức vị ngọt thanh của bí và tôm.'),
-- Chè bí đỏ
(6, 1, 'Chuẩn bị bí đỏ: Gọt vỏ bí đỏ, rửa sạch, cắt miếng vừa (3cm) để chè có kết cấu đẹp. Lá dứa rửa sạch, buộc gọn để dễ thả vào nồi. Hòa 50g bột năng với 100ml nước, khuấy đều để tạo độ sệt, tránh vón cục.'),
(6, 2, 'Nấu bí đỏ: Đun sôi 1 lít nước trong nồi, thả lá dứa và bí đỏ vào, nấu trên lửa vừa 15 phút đến khi bí mềm nhưng không nát. Thêm 100g đường nâu và 1/4 muỗng cà phê muối, khuấy đều để đường tan và tạo vị cân bằng.'),
(6, 3, 'Tạo độ sệt: Từ từ đổ hỗn hợp bột năng vào nồi, khuấy liên tục trên lửa nhỏ để chè sánh mịn, không bị vón. Nấu thêm 2-3 phút, kiểm tra độ sệt vừa ý thì vớt lá dứa ra.'),
(6, 4, 'Hoàn thiện chè: Thêm 200ml nước cốt dừa, khuấy nhẹ để tạo vị béo thơm. Múc chè ra bát, rưới thêm ít nước cốt dừa lên trên. Dùng nóng hoặc để nguội, thêm đá nếu thích.'),
-- Bí đỏ xào tỏi
(7, 1, 'Chuẩn bị nguyên liệu: Gọt vỏ bí đỏ, rửa sạch, cắt miếng mỏng (1cm) để dễ chín và thấm gia vị. Tỏi bóc vỏ, băm nhỏ hoặc đập dập. Hành lá rửa sạch, thái nhỏ để trang trí.'),
(7, 2, 'Phi tỏi thơm: Đun nóng 2 muỗng canh dầu ăn trong chảo lớn trên lửa vừa, cho tỏi vào phi 30 giây đến khi vàng nhẹ và dậy mùi thơm. Tránh để tỏi cháy vì sẽ tạo vị đắng.'),
(7, 3, 'Xào bí đỏ: Cho bí đỏ vào chảo, tăng lửa vừa, đảo đều 5-7 phút đến khi bí mềm nhưng vẫn giữ độ giòn nhẹ. Nêm 1 muỗng cà phê nước mắm và 1/4 muỗng cà phê muối, đảo nhanh tay để gia vị thấm.'),
(7, 4, 'Hoàn thiện món xào: Rắc 1/4 muỗng cà phê hạt tiêu và hành lá thái nhỏ, đảo lần cuối trong 10 giây. Tắt bếp, chuyển bí ra đĩa, dùng nóng như món phụ với cơm trắng.'),
-- Bánh bí đỏ hấp
(8, 1, 'Chuẩn bị bí đỏ: Gọt vỏ bí đỏ, rửa sạch, cắt miếng nhỏ, hấp chín trong 10 phút. Nghiền nhuyễn bí đỏ bằng nĩa hoặc máy xay, để nguội. Phết 1 muỗng canh dầu ăn vào khuôn để chống dính.'),
(8, 2, 'Nhào bột: Trộn 150g bột gạo, 50g bột năng, 80g đường trắng, và 1/4 muỗng cà phê muối trong bát lớn. Thêm bí đỏ nghiền và 200ml nước ấm, nhào đều đến khi hỗn hợp mịn, không dính tay.'),
(8, 3, 'Đổ khuôn: Đổ hỗn hợp bột vào khuôn, dàn đều, không đổ đầy để bánh nở. Đặt khuôn vào xửng hấp, đảm bảo nước trong nồi đã sôi trước khi hấp.'),
(8, 4, 'Hấp và hoàn thiện: Hấp bánh trên lửa vừa trong 15-20 phút, dùng tăm xiên kiểm tra, nếu không dính là chín. Lấy bánh ra, để nguội, cắt miếng vừa ăn. Dùng như món tráng miệng hoặc ăn nhẹ.');

-- --------------------------------------
-- 3. Bông cải trắng (class_index: 2)
-- --------------------------------------

-- Chèn vào bảng vegetables
INSERT INTO vegetables (class_index, vietnamese_name, scientific_name, description, nutritional_info)
VALUES (
    2, 
    'Bông cải trắng', 
    'Brassica oleracea var. botrytis', 
    'Bông cải trắng là một loại rau thuộc họ Cải (Brassicaceae), được trồng phổ biến ở Việt Nam, đặc biệt ở các vùng khí hậu mát như Đà Lạt, Lâm Đồng. Rau có phần đầu màu trắng kem, gồm các cụm hoa chặt chẽ, lá xanh bao quanh. Bông cải trắng được dùng trong các món xào, canh, luộc hoặc salad, là nguyên liệu quen thuộc trong ẩm thực Việt Nam nhờ vị giòn ngọt và dinh dưỡng cao.',
    'Bông cải trắng giàu vitamin C, vitamin K, folate, chất xơ và các hợp chất chống oxy hóa như glucosinolate. Loại rau này hỗ trợ miễn dịch, cải thiện tiêu hóa, tăng cường sức khỏe xương, và có tiềm năng giảm nguy cơ ung thư nhờ các hợp chất sulfur. Với lượng calo thấp, bông cải trắng là lựa chọn lý tưởng cho chế độ ăn lành mạnh.'
);

-- Chèn vào bảng vegetable_nutritional_points
INSERT INTO vegetable_nutritional_points (vegetable_id, point_text, display_order)
VALUES 
(3, 'Vitamin C (89% DV trong 100g): Tăng cường miễn dịch, hỗ trợ sản xuất collagen, và bảo vệ tế bào khỏi tổn thương oxy hóa.', 1),
(3, 'Vitamin K (77% DV trong 100g): Quan trọng cho đông máu và sức khỏe xương, giúp giảm nguy cơ loãng xương.', 2),
(3, 'Chất xơ (2.5g trong 100g): Cải thiện tiêu hóa, ngăn ngừa táo bón, và hỗ trợ kiểm soát đường huyết.', 3),
(3, 'Glucosinolate: Hợp chất chống oxy hóa giúp giảm viêm, bảo vệ tế bào, và có tiềm năng phòng ngừa ung thư dạ dày, đại tràng.', 4),
(3, 'Folate (14% DV trong 100g): Hỗ trợ phát triển tế bào, đặc biệt quan trọng cho phụ nữ mang thai.', 5),
(3, 'Ít calo (25 kcal trong 100g): Phù hợp cho chế độ ăn kiêng, giúp duy trì cân nặng khỏe mạnh.', 6);

-- Chèn vào bảng vegetable_select_points
INSERT INTO vegetable_select_points (vegetable_id, point_text, display_order)
VALUES 
(3, 'Đầu bông cải trắng chắc, không rời rạc: Chọn bông cải có cụm hoa trắng kem, không ngả vàng, các bông hoa ép chặt vào nhau.', 1),
(3, 'Lá xanh tươi, không héo: Lá bao quanh bông cải nên có màu xanh đậm, không vàng úa hoặc mềm nhũn.', 2),
(3, 'Cuống cứng, không mềm: Cuống bông cải tươi có độ cứng, không bị dập hoặc có mùi hôi.', 3),
(3, 'Không có đốm nâu hoặc đen: Tránh bông cải có vết thâm hoặc đốm bất thường, dấu hiệu của hư hỏng.', 4),
(3, 'Kích thước vừa phải: Bông cải nặng 500-700g thường giòn và ngọt hơn so với loại quá lớn.', 5);

-- Chèn vào bảng vegetable_preserve_points
INSERT INTO vegetable_preserve_points (vegetable_id, point_text, display_order)
VALUES 
(3, 'Bọc kín và để trong ngăn mát: Đặt bông cải trắng trong túi nhựa đục lỗ, bảo quản ở 0-4°C, giữ tươi được 2-3 tuần.', 1),
(3, 'Không rửa trước khi bảo quản: Giữ bông cải khô để tránh ẩm mốc, chỉ rửa trước khi chế biến.', 2),
(3, 'Cắt nhỏ và đông lạnh: Nếu cần bảo quản lâu, cắt bông cải thành miếng, chần sơ, để ráo, cho vào túi zip, đông lạnh ở -18°C, dùng trong 6 tháng.', 3),
(3, 'Kiểm tra định kỳ: Loại bỏ lá hoặc phần bông cải bị vàng để tránh lây lan hư hỏng.', 4),
(3, 'Tránh để gần táo, chuối: Các trái cây này tiết ethylene, làm bông cải nhanh hỏng.', 5);

-- Chèn vào bảng recipes
INSERT INTO recipes (name, description, prep_time, cook_time, servings)
VALUES 
('Canh bông cải trắng nấu tôm', 'Món canh thanh nhẹ, phổ biến trong bữa cơm Việt Nam, kết hợp bông cải trắng giòn ngọt với tôm tươi, tạo hương vị ngọt tự nhiên.', '10 phút', '15 phút', '4 người'),
('Bông cải trắng xào tỏi', 'Món xào đơn giản, quen thuộc trong ẩm thực Việt Nam, với bông cải trắng giòn, thấm vị tỏi thơm, phù hợp làm món phụ.', '10 phút', '10 phút', '3 người'),
('Bông cải trắng hấp nước mắm', 'Món hấp nhẹ nhàng, đậm chất Việt Nam, với bông cải trắng giữ độ giòn, ăn kèm nước mắm pha chua ngọt, thường xuất hiện trong bữa ăn gia đình.', '10 phút', '15 phút', '4 người'),
('Bông cải trắng luộc chấm kho quẹt', 'Món ăn dân dã Việt Nam, bông cải trắng luộc giòn ngọt kết hợp với kho quẹt đậm đà, là món phụ hoặc món chính trong bữa cơm quê.', '10 phút', '20 phút', '4 người');

-- Chèn vào bảng recipe_vegetables
INSERT INTO recipe_vegetables (recipe_id, vegetable_id)
VALUES 
(9, 3),
(10, 3),
(11, 3),
(12, 3);

-- Chèn vào bảng recipe_items
INSERT INTO recipe_items (recipe_id, item_name, quantity, notes, order_index)
VALUES 
-- Canh bông cải trắng nấu tôm
(9, 'Bông cải trắng', '300g', 'Rửa sạch, cắt miếng vừa ăn', 1),
(9, 'Tôm tươi', '200g', 'Bóc vỏ, bỏ đầu, rút chỉ đen', 2),
(9, 'Hành lá', '2 nhánh (10g)', 'Rửa sạch, thái nhỏ', 3),
(9, 'Nước mắm', '1 muỗng canh', 'Chọn loại ngon', 4),
(9, 'Muối', '1/2 muỗng cà phê', 'Điều chỉnh theo khẩu vị', 5),
(9, 'Hạt tiêu', '1/4 muỗng cà phê', 'Rắc khi hoàn thiện', 6),
(9, 'Dầu ăn', '1 muỗng canh', 'Dùng để xào', 7),
(9, 'Nước', '1 lít', 'Nước lọc', 8),
-- Bông cải trắng xào tỏi
(10, 'Bông cải trắng', '400g', 'Rửa sạch, cắt miếng vừa ăn', 1),
(10, 'Tỏi', '4 tép (15g)', 'Bóc vỏ, băm nhỏ', 2),
(10, 'Dầu ăn', '2 muỗng canh', 'Dùng để xào', 3),
(10, 'Nước mắm', '1 muỗng cà phê', 'Tăng hương vị', 4),
(10, 'Muối', '1/4 muỗng cà phê', 'Điều chỉnh theo khẩu vị', 5),
(10, 'Hạt tiêu', '1/4 muỗng cà phê', 'Rắc khi hoàn thiện', 6),
(10, 'Hành lá', '1 nhánh (5g)', 'Thái nhỏ, trang trí', 7),
-- Bông cải trắng hấp nước mắm
(11, 'Bông cải trắng', '500g', 'Rửa sạch, cắt miếng lớn', 1),
(11, 'Nước mắm', '2 muỗng canh', 'Chọn loại ngon, dùng pha nước chấm', 2),
(11, 'Đường', '1 muỗng cà phê', 'Pha nước chấm', 3),
(11, 'Tỏi', '2 tép (10g)', 'Băm nhỏ, dùng pha nước chấm', 4),
(11, 'Ớt', '1 quả (5g)', 'Thái lát, dùng pha nước chấm', 5),
(11, 'Nước', '2 muỗng canh', 'Nước ấm, dùng pha nước chấm', 6),
-- Bông cải trắng luộc chấm kho quẹt
(12, 'Bông cải trắng', '400g', 'Rửa sạch, cắt miếng vừa ăn', 1),
(12, 'Tôm khô', '30g', 'Ngâm nước ấm 15 phút, giã nhuyễn', 2),
(12, 'Thịt ba chỉ', '100g', 'Thái nhỏ', 3),
(12, 'Nước mắm', '2 muỗng canh', 'Chọn loại ngon', 4),
(12, 'Đường', '1 muỗng canh', 'Tạo vị ngọt cho kho quẹt', 5),
(12, 'Hạt tiêu', '1/4 muỗng cà phê', 'Tăng hương vị kho quẹt', 6),
(12, 'Hành tím', '2 củ (20g)', 'Băm nhỏ', 7),
(12, 'Dầu ăn', '2 muỗng canh', 'Dùng để phi hành', 8);

-- Chèn vào bảng recipe_steps
INSERT INTO recipe_steps (recipe_id, step_number, instruction_text)
VALUES 
-- Canh bông cải trắng nấu tôm
(9, 1, 'Chuẩn bị nguyên liệu: Rửa sạch bông cải trắng, cắt miếng vừa ăn (3-4cm). Tôm tươi bóc vỏ, rút chỉ đen, rửa sạch với nước muối loãng, để ráo. Hành lá rửa sạch, thái nhỏ phần đầu và lá riêng.'),
(9, 2, 'Xào tôm: Đun nóng 1 muỗng canh dầu ăn trong nồi, cho tôm vào xào 1-2 phút đến khi tôm chuyển màu hồng và săn lại. Vớt tôm ra bát, giữ lại dầu trong nồi.'),
(9, 3, 'Nấu canh: Đổ 1 lít nước lọc vào nồi, đun sôi. Thêm bông cải trắng, nấu trên lửa vừa 5-7 phút đến khi bông cải mềm nhưng vẫn giòn. Cho tôm vào, nêm 1 muỗng canh nước mắm và 1/2 muỗng cà phê muối.'),
(9, 4, 'Hoàn thiện canh: Đun thêm 2 phút để gia vị thấm, rắc hành lá và 1/4 muỗng cà phê hạt tiêu. Tắt bếp, múc canh ra bát, dùng nóng với cơm trắng để thưởng thức vị ngọt thanh.'),
-- Bông cải trắng xào tỏi
(10, 1, 'Chuẩn bị nguyên liệu: Rửa sạch bông cải trắng, ngâm nước muối loãng 5 phút, cắt miếng vừa ăn (3cm). Tỏi bóc vỏ, băm nhỏ. Hành lá rửa sạch, thái nhỏ để trang trí.'),
(10, 2, 'Phi tỏi thơm: Đun nóng 2 muỗng canh dầu ăn trong chảo lớn, cho tỏi vào phi 30 giây đến khi vàng nhẹ và dậy mùi thơm. Tránh để tỏi cháy vì sẽ tạo vị đắng.'),
(10, 3, 'Xào bông cải: Cho bông cải trắng vào chảo, tăng lửa vừa, đảo đều 4-5 phút đến khi bông cải chín nhưng vẫn giòn. Nêm 1 muỗng cà phê nước mắm và 1/4 muỗng cà phê muối, đảo nhanh tay.'),
(10, 4, 'Hoàn thiện món xào: Rắc 1/4 muỗng cà phê hạt tiêu và hành lá thái nhỏ, đảo lần cuối trong 10 giây. Tắt bếp, chuyển ra đĩa, dùng nóng như món phụ với cơm trắng.'),
-- Bông cải trắng hấp nước mắm
(11, 1, 'Chuẩn bị bông cải: Rửa sạch bông cải trắng, ngâm nước muối loãng 5 phút, cắt miếng lớn (5-6cm) để giữ độ giòn. Chuẩn bị xửng hấp và đun sôi nước.'),
(11, 2, 'Pha nước mắm: Trộn 2 muỗng canh nước mắm, 1 muỗng cà phê đường, 2 muỗng canh nước ấm, 2 tép tỏi băm, và 1 quả ớt thái lát. Khuấy đều để đường tan, tạo nước chấm chua ngọt.'),
(11, 3, 'Hấp bông cải: Xếp bông cải vào xửng, hấp trên lửa vừa 10-12 phút đến khi bông cải mềm nhưng vẫn giòn. Kiểm tra bằng cách dùng đũa xiên, nếu xuyên dễ là chín.'),
(11, 4, 'Hoàn thiện món hấp: Lấy bông cải ra, xếp lên đĩa, để nguội nhẹ 2 phút. Dọn kèm bát nước mắm pha, chấm ăn nóng để thưởng thức vị giòn ngọt và nước mắm đậm đà.'),
-- Bông cải trắng luộc chấm kho quẹt
(12, 1, 'Chuẩn bị bông cải: Rửa sạch bông cải trắng, ngâm nước muối loãng 5 phút, cắt miếng vừa ăn (3-4cm). Đun sôi nồi nước để luộc.'),
(12, 2, 'Làm kho quẹt: Đun nóng 2 muỗng canh dầu ăn, phi thơm hành tím băm. Cho thịt ba chỉ thái nhỏ và tôm khô giã nhuyễn vào, xào 3 phút đến khi thịt vàng. Thêm 2 muỗng canh nước mắm, 1 muỗng canh đường, đun nhỏ lửa 5-7 phút đến khi hỗn hợp sệt, rắc 1/4 muỗng cà phê hạt tiêu.'),
(12, 3, 'Luộc bông cải: Cho bông cải vào nồi nước sôi, luộc 5-7 phút đến khi mềm nhưng vẫn giòn. Vớt ra, ngâm ngay vào nước lạnh 1 phút để giữ độ giòn, sau đó để ráo.'),
(12, 4, 'Hoàn thiện món luộc: Xếp bông cải lên đĩa, dọn kèm bát kho quẹt. Chấm bông cải vào kho quẹt, dùng nóng với cơm trắng để thưởng thức vị dân dã.');

-- --------------------------------------
-- 4. Bông cải xanh (class_index: 3)
-- --------------------------------------

-- Chèn vào bảng vegetables
INSERT INTO vegetables (class_index, vietnamese_name, scientific_name, description, nutritional_info)
VALUES (
    3, 
    'Bông cải xanh', 
    'Brassica oleracea var. italica', 
    'Bông cải xanh là một loại rau thuộc họ Cải (Brassicaceae), được trồng phổ biến ở Việt Nam, đặc biệt ở các vùng khí hậu mát như Đà Lạt, Lâm Đồng. Rau có các cụm hoa màu xanh đậm, cuống dày, lá xanh bao quanh. Bông cải xanh được dùng trong các món xào, canh, luộc hoặc hấp, là nguyên liệu quen thuộc trong ẩm thực Việt Nam nhờ vị giòn, ngọt nhẹ và giá trị dinh dưỡng cao.',
    'Bông cải xanh giàu vitamin C, vitamin K, folate, chất xơ và các hợp chất chống oxy hóa như sulforaphane. Loại rau này hỗ trợ miễn dịch, cải thiện sức khỏe xương, tăng cường tiêu hóa, và có tiềm năng giảm nguy cơ ung thư nhờ các hợp chất chống viêm. Với lượng calo thấp, bông cải xanh là lựa chọn lý tưởng cho chế độ ăn lành mạnh.'
);

-- Chèn vào bảng vegetable_nutritional_points
INSERT INTO vegetable_nutritional_points (vegetable_id, point_text, display_order)
VALUES 
(4, 'Vitamin C (112% DV trong 100g): Tăng cường miễn dịch, hỗ trợ sản xuất collagen, và bảo vệ tế bào khỏi tổn thương oxy hóa.', 1),
(4, 'Vitamin K (116% DV trong 100g): Hỗ trợ đông máu và sức khỏe xương, giúp giảm nguy cơ loãng xương.', 2),
(4, 'Chất xơ (2.6g trong 100g): Cải thiện tiêu hóa, ngăn ngừa táo bón, và hỗ trợ kiểm soát đường huyết.', 3),
(4, 'Sulforaphane: Hợp chất chống oxy hóa giúp giảm viêm, bảo vệ tế bào, và có tiềm năng phòng ngừa ung thư vú, đại tràng.', 4),
(4, 'Folate (14% DV trong 100g): Hỗ trợ phát triển tế bào, đặc biệt quan trọng cho phụ nữ mang thai.', 5),
(4, 'Ít calo (35 kcal trong 100g): Phù hợp cho chế độ ăn kiêng, giúp duy trì cân nặng khỏe mạnh.', 6);

-- Chèn vào bảng vegetable_select_points
INSERT INTO vegetable_select_points (vegetable_id, point_text, display_order)
VALUES 
(4, 'Đầu bông cải xanh chắc, màu xanh đậm: Chọn bông cải có cụm hoa xanh đậm, không ngả vàng, các bông hoa ép chặt vào nhau.', 1),
(4, 'Cuống tươi, không héo: Cuống bông cải nên cứng, màu xanh, không mềm hoặc có dấu hiệu thâm.', 2),
(4, 'Lá xanh, không vàng úa: Lá bao quanh bông cải tươi, không héo hoặc có đốm nâu.', 3),
(4, 'Không có mùi lạ: Bông cải tươi có mùi nhẹ, tránh loại có mùi chua hoặc hôi bất thường.', 4),
(4, 'Tránh bông cải có hoa nở: Các cụm hoa không nên nở bung, vì đó là dấu hiệu bông cải đã già, kém giòn.', 5);

-- Chèn vào bảng vegetable_preserve_points
INSERT INTO vegetable_preserve_points (vegetable_id, point_text, display_order)
VALUES 
(4, 'Bọc kín trong túi nhựa và để ngăn mát: Đặt bông cải xanh trong túi nhựa đục lỗ, bảo quản ở 0-4°C, giữ tươi được 1-2 tuần.', 1),
(4, 'Không rửa trước khi bảo quản: Giữ bông cải khô để tránh ẩm mốc, chỉ rửa trước khi chế biến.', 2),
(4, 'Đông lạnh để bảo quản lâu: Cắt miếng, chần sơ trong nước sôi 2 phút, ngâm nước lạnh, để ráo, cho vào túi zip, đông lạnh ở -18°C, dùng trong 6-8 tháng.', 3),
(4, 'Kiểm tra định kỳ: Loại bỏ phần bông cải bị vàng hoặc héo để tránh lây lan hư hỏng.', 4),
(4, 'Tránh để gần trái cây tiết ethylene: Táo, chuối có thể làm bông cải xanh nhanh hỏng.', 5);

-- Chèn vào bảng recipes
INSERT INTO recipes (name, description, prep_time, cook_time, servings)
VALUES 
('Canh bông cải xanh nấu tôm', 'Món canh thanh nhẹ, phổ biến trong bữa cơm gia đình Việt Nam, với bông cải xanh giòn ngọt kết hợp tôm tươi, tạo vị ngọt tự nhiên.', '10 phút', '15 phút', '4 người'),
('Bông cải xanh xào tỏi', 'Món xào đơn giản, quen thuộc trong ẩm thực Việt Nam, với bông cải xanh giòn, thấm vị tỏi thơm, là món phụ dễ làm.', '10 phút', '10 phút', '3 người'),
('Bông cải xanh hấp nước mắm', 'Món hấp đậm chất Việt Nam, giữ nguyên độ giòn của bông cải xanh, ăn kèm nước mắm pha chua ngọt, phù hợp cho bữa cơm gia đình.', '10 phút', '12 phút', '4 người'),
('Bông cải xanh xào thịt bò', 'Món xào đậm đà, phổ biến trong ẩm thực Việt Nam, với bông cải xanh giòn kết hợp thịt bò mềm, là món chính thơm ngon.', '15 phút', '10 phút', '4 người');

-- Chèn vào bảng recipe_vegetables
INSERT INTO recipe_vegetables (recipe_id, vegetable_id)
VALUES 
(13, 4),
(14, 4),
(15, 4),
(16, 4);

-- Chèn vào bảng recipe_items
INSERT INTO recipe_items (recipe_id, item_name, quantity, notes, order_index)
VALUES 
-- Canh bông cải xanh nấu tôm
(13, 'Bông cải xanh', '300g', 'Rửa sạch, cắt miếng vừa ăn', 1),
(13, 'Tôm tươi', '200g', 'Bóc vỏ, bỏ đầu, rút chỉ đen', 2),
(13, 'Hành lá', '2 nhánh (10g)', 'Rửa sạch, thái nhỏ', 3),
(13, 'Nước mắm', '1 muỗng canh', 'Chọn loại ngon', 4),
(13, 'Muối', '1/2 muỗng cà phê', 'Điều chỉnh theo khẩu vị', 5),
(13, 'Hạt tiêu', '1/4 muỗng cà phê', 'Rắc khi hoàn thiện', 6),
(13, 'Dầu ăn', '1 muỗng canh', 'Dùng để xào', 7),
(13, 'Nước', '1 lít', 'Nước lọc', 8),
-- Bông cải xanh xào tỏi
(14, 'Bông cải xanh', '400g', 'Rửa sạch, cắt miếng vừa ăn', 1),
(14, 'Tỏi', '4 tép (15g)', 'Bóc vỏ, băm nhỏ', 2),
(14, 'Dầu ăn', '2 muỗng canh', 'Dùng để xào', 3),
(14, 'Nước mắm', '1 muỗng cà phê', 'Tăng hương vị', 4),
(14, 'Muối', '1/4 muỗng cà phê', 'Điều chỉnh theo khẩu vị', 5),
(14, 'Hạt tiêu', '1/4 muỗng cà phê', 'Rắc khi hoàn thiện', 6),
(14, 'Hành lá', '1 nhánh (5g)', 'Thái nhỏ, trang trí', 7),
-- Bông cải xanh hấp nước mắm
(15, 'Bông cải xanh', '500g', 'Rửa sạch, cắt miếng lớn', 1),
(15, 'Nước mắm', '2 muỗng canh', 'Chọn loại ngon, dùng pha nước chấm', 2),
(15, 'Đường', '1 muỗng cà phê', 'Pha nước chấm', 3),
(15, 'Tỏi', '2 tép (10g)', 'Băm nhỏ, dùng pha nước chấm', 4),
(15, 'Ớt', '1 quả (5g)', 'Thái lát, dùng pha nước chấm', 5),
(15, 'Nước', '2 muỗng canh', 'Nước ấm, dùng pha nước chấm', 6),
-- Bông cải xanh xào thịt bò
(16, 'Bông cải xanh', '300g', 'Rửa sạch, cắt miếng vừa ăn', 1),
(16, 'Thịt bò', '200g', 'Thái lát mỏng, ướp với 1/2 muỗng cà phê muối, 1/4 muỗng cà phê tiêu', 2),
(16, 'Tỏi', '3 tép (12g)', 'Bóc vỏ, băm nhỏ', 3),
(16, 'Dầu ăn', '2 muỗng canh', 'Dùng để xào', 4),
(16, 'Nước mắm', '1 muỗng canh', 'Tăng hương vị', 5),
(16, 'Đường', '1/2 muỗng cà phê', 'Tạo vị cân bằng', 6),
(16, 'Hạt tiêu', '1/4 muỗng cà phê', 'Rắc khi hoàn thiện', 7),
(16, 'Nước', '2 muỗng canh', 'Dùng để xào cho mềm', 8);

-- Chèn vào bảng recipe_steps
INSERT INTO recipe_steps (recipe_id, step_number, instruction_text)
VALUES 
-- Canh bông cải xanh nấu tôm
(13, 1, 'Chuẩn bị nguyên liệu: Rửa sạch bông cải xanh, ngâm nước muối loãng 5 phút, cắt miếng vừa ăn (3-4cm). Tôm tươi bóc vỏ, rút chỉ đen, rửa sạch, để ráo. Hành lá rửa sạch, thái nhỏ phần đầu và lá riêng.'),
(13, 2, 'Xào tôm: Đun nóng 1 muỗng canh dầu ăn trong nồi, cho tôm vào xào 1-2 phút đến khi tôm chuyển màu hồng và săn lại. Vớt tôm ra bát, giữ lại dầu trong nồi.'),
(13, 3, 'Nấu canh: Đổ 1 lít nước lọc vào nồi, đun sôi. Thêm bông cải xanh, nấu trên lửa vừa 5-6 phút đến khi bông cải mềm nhưng vẫn giòn. Cho tôm vào, nêm 1 muỗng canh nước mắm và 1/2 muỗng cà phê muối.'),
(13, 4, 'Hoàn thiện canh: Đun thêm 2 phút để gia vị thấm, rắc hành lá và 1/4 muỗng cà phê hạt tiêu. Tắt bếp, múc canh ra bát, dùng nóng với cơm trắng để thưởng thức vị ngọt thanh.'),
-- Bông cải xanh xào tỏi
(14, 1, 'Chuẩn bị nguyên liệu: Rửa sạch bông cải xanh, ngâm nước muối loãng 5 phút, cắt miếng vừa ăn (3cm). Tỏi bóc vỏ, băm nhỏ hoặc đập dập. Hành lá rửa sạch, thái nhỏ để trang trí.'),
(14, 2, 'Phi tỏi thơm: Đun nóng 2 muỗng canh dầu ăn trong chảo lớn, cho tỏi vào phi 30 giây đến khi vàng nhẹ và dậy mùi thơm. Tránh để tỏi cháy vì sẽ tạo vị đắng.'),
(14, 3, 'Xào bông cải: Cho bông cải xanh vào chảo, tăng lửa vừa, đảo đều 4-5 phút đến khi bông cải chín nhưng vẫn giòn. Nêm 1 muỗng cà phê nước mắm và 1/4 muỗng cà phê muối, đảo nhanh tay.'),
(14, 4, 'Hoàn thiện món xào: Rắc 1/4 muỗng cà phê hạt tiêu và hành lá thái nhỏ, đảo lần cuối trong 10 giây. Tắt bếp, chuyển ra đĩa, dùng nóng như món phụ với cơm trắng.'),
-- Bông cải xanh hấp nước mắm
(15, 1, 'Chuẩn bị bông cải: Rửa sạch bông cải xanh, ngâm nước muối loãng 5 phút, cắt miếng lớn (5-6cm) để giữ độ giòn. Chuẩn bị xửng hấp và đun sôi nước.'),
(15, 2, 'Pha nước mắm: Trộn 2 muỗng canh nước mắm, 1 muỗng cà phê đường, 2 muỗng canh nước ấm, 2 tép tỏi băm, và 1 quả ớt thái lát. Khuấy đều để đường tan, tạo nước chấm chua ngọt.'),
(15, 3, 'Hấp bông cải: Xếp bông cải vào xửng, hấp trên lửa vừa 8-10 phút đến khi bông cải mềm nhưng vẫn giòn. Dùng đũa xiên kiểm tra, nếu xuyên dễ là chín.'),
(15, 4, 'Hoàn thiện món hấp: Lấy bông cải ra, xếp lên đĩa, để nguội nhẹ 2 phút. Dọn kèm bát nước mắm pha, chấm ăn nóng để thưởng thức vị giòn ngọt và nước mắm đậm đà.'),
-- Bông cải xanh xào thịt bò
(16, 1, 'Chuẩn bị nguyên liệu: Rửa sạch bông cải xanh, ngâm nước muối loãng 5 phút, cắt miếng vừa ăn (3cm). Thịt bò thái lát mỏng, ướp với 1/2 muỗng cà phê muối, 1/4 muỗng cà phê tiêu trong 10 phút. Tỏi bóc vỏ, băm nhỏ.'),
(16, 2, 'Xào thịt bò: Đun nóng 1 muỗng canh dầu ăn trong chảo, cho nửa lượng tỏi băm vào phi thơm. Thêm thịt bò, xào trên lửa lớn 1-2 phút đến khi thịt tái, vớt ra để riêng.'),
(16, 3, 'Xào bông cải: Thêm 1 muỗng canh dầu ăn vào chảo, phi thơm tỏi còn lại. Cho bông cải xanh vào, xào 3-4 phút, thêm 2 muỗng canh nước để bông cải mềm. Nêm 1 muỗng canh nước mắm và 1/2 muỗng cà phê đường.'),
(16, 4, 'Hoàn thiện món xào: Cho thịt bò vào chảo, đảo đều 1 phút để thấm gia vị. Rắc 1/4 muỗng cà phê hạt tiêu, tắt bếp, chuyển ra đĩa. Dùng nóng với cơm trắng để thưởng thức vị đậm đà.');

-- --------------------------------------
-- 5. Cà chua (class_index: 4)
-- --------------------------------------

-- Chèn vào bảng vegetables
INSERT INTO vegetables (class_index, vietnamese_name, scientific_name, description, nutritional_info)
VALUES (
    4, 
    'Cà chua', 
    'Solanum lycopersicum', 
    'Cà chua là một loại quả thuộc họ Cà (Solanaceae), được trồng phổ biến ở Việt Nam, đặc biệt ở các vùng như Đà Lạt, Lâm Đồng và các tỉnh đồng bằng. Quả có hình tròn hoặc oval, màu đỏ hoặc vàng khi chín, thịt mềm, vị chua ngọt. Cà chua được dùng trong các món canh, xào, nước chấm, salad, hoặc ăn sống, là nguyên liệu quan trọng trong ẩm thực Việt Nam nhờ hương vị tươi mát và tính linh hoạt.',
    'Cà chua giàu vitamin C, vitamin A, lycopene, và kali. Lycopene là chất chống oxy hóa mạnh, giúp giảm nguy cơ bệnh tim và ung thư tuyến tiền liệt. Cà chua hỗ trợ sức khỏe mắt, cải thiện làn da, tăng cường miễn dịch, và có lượng calo thấp, phù hợp cho chế độ ăn lành mạnh.'
);

-- Chèn vào bảng vegetable_nutritional_points
INSERT INTO vegetable_nutritional_points (vegetable_id, point_text, display_order)
VALUES 
(5, 'Lycopene (3.2mg trong 100g): Chất chống oxy hóa giúp giảm nguy cơ bệnh tim, ung thư tuyến tiền liệt, và bảo vệ da khỏi tia UV.', 1),
(5, 'Vitamin C (17% DV trong 100g): Tăng cường miễn dịch, hỗ trợ sản xuất collagen, và thúc đẩy chữa lành vết thương.', 2),
(5, 'Vitamin A (17% DV trong 100g): Hỗ trợ thị lực, tăng cường miễn dịch, và duy trì làn da khỏe mạnh.', 3),
(5, 'Kali (237mg trong 100g): Giúp cân bằng huyết áp, hỗ trợ chức năng cơ bắp, và giảm nguy cơ đột quỵ.', 4),
(5, 'Chất xơ (1.2g trong 100g): Cải thiện tiêu hóa, hỗ trợ kiểm soát đường huyết, và duy trì sức khỏe đường ruột.', 5),
(5, 'Ít calo (18 kcal trong 100g): Phù hợp cho chế độ ăn kiêng, giúp kiểm soát cân nặng mà vẫn cung cấp dinh dưỡng.', 6);

-- Chèn vào bảng vegetable_select_points
INSERT INTO vegetable_select_points (vegetable_id, point_text, display_order)
VALUES 
(5, 'Quả căng mọng, màu đỏ tươi: Chọn cà chua có vỏ bóng, màu đỏ đều, không có vết thâm hoặc nứt.', 1),
(5, 'Cứng vừa, không quá mềm: Cà chua tươi có độ cứng nhẹ khi ấn, không nhũn hoặc quá rắn.', 2),
(5, 'Cuống xanh, tươi: Cuống cà chua còn xanh, không héo, cho thấy quả mới hái.', 3),
(5, 'Kích thước vừa, nặng tay: Cà chua nặng so với kích thước thường nhiều thịt, ít hạt, vị ngon hơn.', 4),
(5, 'Tránh quả có mùi lạ: Cà chua có mùi chua bất thường hoặc vỏ nhăn là dấu hiệu hư hỏng.', 5);

-- Chèn vào bảng vegetable_preserve_points
INSERT INTO vegetable_preserve_points (vegetable_id, point_text, display_order)
VALUES 
(5, 'Bảo quản ở nhiệt độ phòng: Để cà chua ở nơi thoáng mát, tránh ánh nắng trực tiếp, giữ tươi 5-7 ngày.', 1),
(5, 'Không để trong tủ lạnh lâu: Nhiệt độ lạnh làm cà chua mất vị ngọt, chỉ bảo quản ở ngăn mát (4-7°C) nếu cần giữ 10-14 ngày.', 2),
(5, 'Đông lạnh để bảo quản lâu: Cắt nhỏ, bỏ hạt, cho vào túi zip, đông lạnh ở -18°C, dùng trong 6 tháng cho sốt hoặc canh.', 3),
(5, 'Kiểm tra thường xuyên: Loại bỏ quả bị dập hoặc có đốm thâm để tránh lây lan hư hỏng.', 4),
(5, 'Giữ nguyên cuống khi bảo quản: Cuống giúp cà chua tươi lâu hơn, không nên rút trước khi dùng.', 5);

-- Chèn vào bảng recipes
INSERT INTO recipes (name, description, prep_time, cook_time, servings)
VALUES 
('Canh cà chua trứng', 'Món canh chua ngọt, phổ biến trong bữa cơm gia đình Việt Nam, với cà chua mềm và trứng mịn, tạo hương vị thanh nhẹ.', '10 phút', '15 phút', '4 người'),
('Cà chua nhồi thịt', 'Món ăn truyền thống Việt Nam, với cà chua nhồi thịt heo băm, hấp chín, thường xuất hiện trong bữa ăn gia đình hoặc dịp lễ.', '15 phút', '20 phút', '4 người'),
('Nước chấm cà chua', 'Món nước chấm đậm đà, phổ biến trong ẩm thực Việt Nam, dùng kèm rau luộc, thịt luộc hoặc cá chiên.', '10 phút', '15 phút', '4 người'),
('Cà chua xào thịt bò', 'Món xào quen thuộc trong ẩm thực Việt Nam, với cà chua chua ngọt kết hợp thịt bò mềm, là món chính thơm ngon.', '15 phút', '10 phút', '4 người');

-- Chèn vào bảng recipe_vegetables
INSERT INTO recipe_vegetables (recipe_id, vegetable_id)
VALUES 
(17, 5),
(18, 5),
(19, 5),
(20, 5);

-- Chèn vào bảng recipe_items
INSERT INTO recipe_items (recipe_id, item_name, quantity, notes, order_index)
VALUES 
-- Canh cà chua trứng
(17, 'Cà chua', '300g', 'Rửa sạch, cắt múi cau', 1),
(17, 'Trứng gà', '2 quả', 'Đánh tan với 1/4 muỗng cà phê muối', 2),
(17, 'Hành lá', '2 nhánh (10g)', 'Rửa sạch, thái nhỏ', 3),
(17, 'Nước mắm', '1 muỗng canh', 'Chọn loại ngon', 4),
(17, 'Muối', '1/2 muỗng cà phê', 'Điều chỉnh theo khẩu vị', 5),
(17, 'Hạt tiêu', '1/4 muỗng cà phê', 'Rắc khi hoàn thiện', 6),
(17, 'Dầu ăn', '1 muỗng canh', 'Dùng để phi hành', 7),
(17, 'Nước', '1 lít', 'Nước lọc', 8),
-- Cà chua nhồi thịt
(18, 'Cà chua', '4 quả (400g)', 'Chọn quả to, cắt ngang, bỏ ruột', 1),
(18, 'Thịt heo băm', '200g', 'Ướp với 1/2 muỗng cà phê muối, 1/4 muỗng cà phê tiêu', 2),
(18, 'Hành tím', '2 củ (20g)', 'Bóc vỏ, băm nhỏ', 3),
(18, 'Nước mắm', '1 muỗng cà phê', 'Ướp thịt', 4),
(18, 'Dầu ăn', '1 muỗng canh', 'Phết khuôn hấp', 5),
(18, 'Hành lá', '1 nhánh (5g)', 'Thái nhỏ, trang trí', 6),
(18, 'Hạt tiêu', '1/4 muỗng cà phê', 'Rắc khi hoàn thiện', 7),
-- Nước chấm cà chua
(19, 'Cà chua', '200g', 'Rửa sạch, thái nhỏ', 1),
(19, 'Tỏi', '3 tép (12g)', 'Bóc vỏ, băm nhỏ', 2),
(19, 'Nước mắm', '2 muỗng canh', 'Chọn loại ngon', 3),
(19, 'Đường', '1 muỗng canh', 'Tạo vị ngọt', 4),
(19, 'Ớt', '1 quả (5g)', 'Thái lát', 5),
(19, 'Dầu ăn', '1 muỗng canh', 'Dùng để phi tỏi', 6),
(19, 'Nước', '3 muỗng canh', 'Tạo độ sệt', 7),
-- Cà chua xào thịt bò
(20, 'Cà chua', '200g', 'Rửa sạch, cắt múi cau', 1),
(20, 'Thịt bò', '200g', 'Thái lát mỏng, ướp với 1/2 muỗng cà phê muối, 1/4 muỗng cà phê tiêu', 2),
(20, 'Tỏi', '3 tép (12g)', 'Bóc vỏ, băm nhỏ', 3),
(20, 'Dầu ăn', '2 muỗng canh', 'Dùng để xào', 4),
(20, 'Nước mắm', '1 muỗng canh', 'Tăng hương vị', 5),
(20, 'Đường', '1/2 muỗng cà phê', 'Tạo vị cân bằng', 6),
(20, 'Hạt tiêu', '1/4 muỗng cà phê', 'Rắc khi hoàn thiện', 7),
(20, 'Hành lá', '1 nhánh (5g)', 'Thái nhỏ, trang trí', 8);

-- Chèn vào bảng recipe_steps
INSERT INTO recipe_steps (recipe_id, step_number, instruction_text)
VALUES 
-- Canh cà chua trứng
(17, 1, 'Chuẩn bị nguyên liệu: Rửa sạch cà chua, cắt múi cau (6-8 miếng/quả). Đánh tan 2 quả trứng với 1/4 muỗng cà phê muối. Hành lá rửa sạch, thái nhỏ phần đầu và lá riêng.'),
(17, 2, 'Xào cà chua: Đun nóng 1 muỗng canh dầu ăn trong nồi, phi thơm đầu hành lá, cho cà chua vào xào 2-3 phút đến khi mềm và ra màu đỏ. Nêm 1/2 muỗng cà phê muối.'),
(17, 3, 'Nấu canh: Đổ 1 lít nước lọc vào nồi, đun sôi. Giảm lửa vừa, nấu 5 phút để cà chua tiết vị chua ngọt. Từ từ đổ trứng vào, khuấy nhẹ theo vòng tròn để trứng tạo vân mịn.'),
(17, 4, 'Hoàn thiện canh: Nêm 1 muỗng canh nước mắm, rắc hành lá và 1/4 muỗng cà phê hạt tiêu. Đun thêm 1 phút, tắt bếp, múc ra bát. Dùng nóng với cơm trắng để thưởng thức vị chua thanh.'),
-- Cà chua nhồi thịt
(18, 1, 'Chuẩn bị nguyên liệu: Rửa sạch cà chua, cắt ngang 1/3 phía trên, dùng muỗng lấy ruột, giữ nguyên vỏ. Trộn thịt heo băm với hành tím băm, 1 muỗng cà phê nước mắm, 1/4 muỗng cà phê tiêu.'),
(18, 2, 'Nhồi thịt: Nhồi hỗn hợp thịt vào cà chua, ấn nhẹ để thịt đầy nhưng không tràn. Phết 1 muỗng canh dầu ăn vào khay hoặc xửng hấp để chống dính.'),
(18, 3, 'Hấp cà chua: Xếp cà chua vào xửng, hấp trên lửa vừa 15-18 phút đến khi thịt chín, cà chua mềm nhưng không nát. Dùng tăm xiên kiểm tra, nếu xuyên dễ là chín.'),
(18, 4, 'Hoàn thiện món hấp: Lấy cà chua ra, xếp lên đĩa, rắc hành lá và 1/4 muỗng cà phê hạt tiêu. Dùng nóng với cơm trắng hoặc nước mắm pha để thưởng thức vị ngọt đậm đà.'),
-- Nước chấm cà chua
(19, 1, 'Chuẩn bị nguyên liệu: Rửa sạch cà chua, thái nhỏ. Tỏi bóc vỏ, băm nhỏ. Ớt rửa sạch, thái lát. Chuẩn bị bát nhỏ để pha nước chấm.'),
(19, 2, 'Xào cà chua: Đun nóng 1 muỗng canh dầu ăn trong chảo, phi thơm tỏi. Cho cà chua vào, xào 5 phút trên lửa vừa đến khi cà chua mềm và sệt, thêm 3 muỗng canh nước.'),
(19, 3, 'Nêm gia vị: Thêm 2 muỗng canh nước mắm, 1 muỗng canh đường, và ớt thái lát vào chảo. Khuấy đều, đun nhỏ lửa 3 phút để hỗn hợp sệt lại và gia vị hòa quyện.'),
(19, 4, 'Hoàn thiện nước chấm: Tắt bếp, đổ nước chấm ra bát, để nguội nhẹ. Dùng kèm rau luộc, thịt luộc, hoặc cá chiên để thưởng thức vị chua ngọt đậm đà.'),
-- Cà chua xào thịt bò
(20, 1, 'Chuẩn bị nguyên liệu: Rửa sạch cà chua, cắt múi cau. Thịt bò thái lát mỏng, ướp với 1/2 muỗng cà phê muối, 1/4 muỗng cà phê tiêu trong 10 phút. Tỏi bóc vỏ, băm nhỏ. Hành lá thái nhỏ.'),
(20, 2, 'Xào thịt bò: Đun nóng 1 muỗng canh dầu ăn trong chảo, phi thơm nửa lượng tỏi. Cho thịt bò vào, xào trên lửa lớn 1-2 phút đến khi tái, vớt ra để riêng.'),
(20, 3, 'Xào cà chua: Thêm 1 muỗng canh dầu ăn vào chảo, phi thơm tỏi còn lại. Cho cà chua vào, xào 2-3 phút đến khi mềm. Nêm 1 muỗng canh nước mắm và 1/2 muỗng cà phê đường.'),
(20, 4, 'Hoàn thiện món xào: Cho thịt bò vào chảo, đảo đều 1 phút để thấm gia vị. Rắc hành lá và 1/4 muỗng cà phê hạt tiêu, tắt bếp, chuyển ra đĩa. Dùng nóng với cơm trắng để thưởng thức vị chua ngọt.');

-- --------------------------------------
-- 6. Cà rốt (class_index: 5)
-- --------------------------------------
-- Chèn vào bảng vegetables
INSERT INTO vegetables (class_index, vietnamese_name, scientific_name, description, nutritional_info)
VALUES (
    5, 
    'Cà rốt', 
    'Daucus carota', 
    'Cà rốt là một loại củ thuộc họ Hoa tán (Apiaceae), được trồng phổ biến ở Việt Nam, đặc biệt ở các vùng khí hậu mát như Đà Lạt, Lâm Đồng. Củ có màu cam, hình trụ dài, thịt giòn, vị ngọt nhẹ. Cà rốt được dùng trong các món canh, xào, salad, hoặc ăn sống, là nguyên liệu quen thuộc trong ẩm thực Việt Nam nhờ hương vị tươi ngon và dinh dưỡng cao.',
    'Cà rốt giàu vitamin A (beta-carotene), vitamin K, vitamin C, kali và chất xơ. Beta-carotene hỗ trợ sức khỏe mắt, tăng cường miễn dịch, và cải thiện làn da. Cà rốt cũng chứa chất chống oxy hóa, giúp giảm nguy cơ bệnh tim và ung thư. Với lượng calo thấp, cà rốt là lựa chọn lý tưởng cho chế độ ăn lành mạnh.'
);

-- Chèn vào bảng vegetable_nutritional_points
INSERT INTO vegetable_nutritional_points (vegetable_id, point_text, display_order)
VALUES 
(6, 'Vitamin A (334% DV trong 100g): Cung cấp beta-carotene, hỗ trợ thị lực, tăng cường miễn dịch, và bảo vệ da khỏi tia UV.', 1),
(6, 'Chất xơ (2.8g trong 100g): Cải thiện tiêu hóa, ngăn ngừa táo bón, và hỗ trợ kiểm soát đường huyết.', 2),
(6, 'Vitamin K (13% DV trong 100g): Hỗ trợ đông máu và sức khỏe xương, giảm nguy cơ loãng xương.', 3),
(6, 'Kali (320mg trong 100g): Giúp cân bằng huyết áp, hỗ trợ chức năng cơ bắp, và giảm nguy cơ đột quỵ.', 4),
(6, 'Vitamin C (7% DV trong 100g): Tăng cường miễn dịch và thúc đẩy chữa lành vết thương.', 5),
(6, 'Ít calo (41 kcal trong 100g): Phù hợp cho chế độ ăn kiêng, giúp kiểm soát cân nặng mà vẫn cung cấp dinh dưỡng.', 6);

-- Chèn vào bảng vegetable_select_points
INSERT INTO vegetable_select_points (vegetable_id, point_text, display_order)
VALUES 
(6, 'Màu cam sáng, vỏ mịn: Chọn cà rốt có màu cam đậm, vỏ bóng, không có vết nứt hoặc đốm thâm.', 1),
(6, 'Cứng, không mềm: Cà rốt tươi có độ cứng khi ấn, không nhũn hoặc có dấu hiệu héo.', 2),
(6, 'Kích thước vừa, thẳng: Cà rốt dài 15-20cm, không dị dạng, thường giòn và ngọt hơn.', 3),
(6, 'Lá xanh tươi nếu còn: Nếu có lá, lá phải xanh, không vàng úa, cho thấy cà rốt mới hái.', 4),
(6, 'Tránh củ có mùi lạ: Cà rốt có mùi đất nhẹ, tránh loại có mùi chua hoặc bất thường.', 5);

-- Chèn vào bảng vegetable_preserve_points
INSERT INTO vegetable_preserve_points (vegetable_id, point_text, display_order)
VALUES 
(6, 'Bọc kín trong ngăn mát: Đặt cà rốt trong túi nhựa đục lỗ, bảo quản ở 0-4°C, giữ tươi được 3-4 tuần.', 1),
(6, 'Cắt bỏ lá trước khi bảo quản: Lá hút ẩm, làm cà rốt nhanh héo, nên cắt bỏ nếu có.', 2),
(6, 'Đông lạnh để bảo quản lâu: Gọt vỏ, cắt miếng, chần sơ 2 phút, để ráo, cho vào túi zip, đông lạnh ở -18°C, dùng trong 6-8 tháng.', 3),
(6, 'Kiểm tra định kỳ: Loại bỏ củ bị mềm hoặc có đốm thâm để tránh lây lan hư hỏng.', 4),
(6, 'Tránh để gần táo, lê: Các trái cây này tiết ethylene, làm cà rốt đắng và nhanh hỏng.', 5);

-- Chèn vào bảng recipes
INSERT INTO recipes (name, description, prep_time, cook_time, servings)
VALUES 
('Canh cà rốt thịt băm', 'Món canh ngọt thanh, phổ biến trong bữa cơm gia đình Việt Nam, với cà rốt giòn ngọt và thịt băm mềm, dễ làm và bổ dưỡng.', '10 phút', '20 phút', '4 người'),
('Cà rốt xào trứng', 'Món xào đơn giản, quen thuộc trong ẩm thực Việt Nam, với cà rốt giòn kết hợp trứng mịn, là món phụ tiết kiệm thời gian.', '10 phút', '10 phút', '3 người'),
('Salad cà rốt trộn mắm', 'Món salad đậm chất Việt Nam, với cà rốt bào sợi trộn nước mắm chua ngọt, thường dùng làm món khai vị hoặc ăn kèm.', '15 phút', '0 phút', '4 người'),
('Cà rốt kho thịt', 'Món kho truyền thống Việt Nam, với cà rốt mềm thấm vị thịt heo kho tàu, là món chính đậm đà trong bữa cơm.', '15 phút', '40 phút', '4 người');

-- Chèn vào bảng recipe_vegetables
INSERT INTO recipe_vegetables (recipe_id, vegetable_id)
VALUES 
(21, 6),
(22, 6),
(23, 6),
(24, 6);

-- Chèn vào bảng recipe_items
INSERT INTO recipe_items (recipe_id, item_name, quantity, notes, order_index)
VALUES 
-- Canh cà rốt thịt băm
(21, 'Cà rốt', '300g', 'Gọt vỏ, rửa sạch, thái lát mỏng hoặc cắt hạt lựu', 1),
(21, 'Thịt heo băm', '150g', 'Ướp với 1/2 muỗng cà phê muối, 1/4 muỗng cà phê tiêu', 2),
(21, 'Hành lá', '2 nhánh (10g)', 'Rửa sạch, thái nhỏ', 3),
(21, 'Nước mắm', '1 muỗng canh', 'Chọn loại ngon', 4),
(21, 'Muối', '1/2 muỗng cà phê', 'Điều chỉnh theo khẩu vị', 5),
(21, 'Hạt tiêu', '1/4 muỗng cà phê', 'Rắc khi hoàn thiện', 6),
(21, 'Dầu ăn', '1 muỗng canh', 'Dùng để phi hành', 7),
(21, 'Nước', '1 lít', 'Nước lọc', 8),
-- Cà rốt xào trứng
(22, 'Cà rốt', '300g', 'Gọt vỏ, rửa sạch, bào sợi hoặc thái lát mỏng', 1),
(22, 'Trứng gà', '2 quả', 'Đánh tan với 1/4 muỗng cà phê muối', 2),
(22, 'Tỏi', '3 tép (12g)', 'Bóc vỏ, băm nhỏ', 3),
(22, 'Dầu ăn', '2 muỗng canh', 'Dùng để xào', 4),
(22, 'Nước mắm', '1 muỗng cà phê', 'Tăng hương vị', 5),
(22, 'Hạt tiêu', '1/4 muỗng cà phê', 'Rắc khi hoàn thiện', 6),
(22, 'Hành lá', '1 nhánh (5g)', 'Thái nhỏ, trang trí', 7),
-- Salad cà rốt trộn mắm
(23, 'Cà rốt', '400g', 'Gọt vỏ, rửa sạch, bào sợi', 1),
(23, 'Nước mắm', '2 muỗng canh', 'Chọn loại ngon', 2),
(23, 'Đường', '1 muỗng canh', 'Tạo vị ngọt', 3),
(23, 'Tỏi', '2 tép (10g)', 'Băm nhỏ', 4),
(23, 'Ớt', '1 quả (5g)', 'Thái lát', 5),
(23, 'Nước cốt chanh', '1 muỗng canh', 'Tạo vị chua', 6),
(23, 'Rau mùi', '10g', 'Rửa sạch, thái nhỏ, trang trí', 7),
-- Cà rốt kho thịt
(24, 'Cà rốt', '200g', 'Gọt vỏ, rửa sạch, cắt khúc 3cm', 1),
(24, 'Thịt ba chỉ', '300g', 'Rửa sạch, cắt miếng 3cm', 2),
(24, 'Nước mắm', '2 muỗng canh', 'Chọn loại ngon', 3),
(24, 'Đường', '1 muỗng canh', 'Tạo vị ngọt và màu caramel', 4),
(24, 'Hành tím', '2 củ (20g)', 'Bóc vỏ, băm nhỏ', 5),
(24, 'Hạt tiêu', '1/4 muỗng cà phê', 'Tăng hương vị', 6),
(24, 'Dầu ăn', '1 muỗng canh', 'Dùng để phi hành', 7),
(24, 'Nước', '300ml', 'Nước lọc, dùng để kho', 8);

-- Chèn vào bảng recipe_steps
INSERT INTO recipe_steps (recipe_id, step_number, instruction_text)
VALUES 
-- Canh cà rốt thịt băm
(21, 1, 'Chuẩn bị nguyên liệu: Gọt vỏ cà rốt, rửa sạch, thái lát mỏng hoặc cắt hạt lựu (1cm). Thịt heo băm ướp với 1/2 muỗng cà phê muối, 1/4 muỗng cà phê tiêu trong 10 phút. Hành lá rửa sạch, thái nhỏ.'),
(21, 2, 'Xào thịt: Đun nóng 1 muỗng canh dầu ăn trong nồi, phi thơm đầu hành lá, cho thịt băm vào xào 2-3 phút đến khi thịt săn lại và thơm.'),
(21, 3, 'Nấu canh: Đổ 1 lít nước lọc vào nồi, đun sôi. Thêm cà rốt, giảm lửa vừa, nấu 10-12 phút đến khi cà rốt mềm. Nêm 1 muỗng canh nước mắm và 1/2 muỗng cà phê muối, khuấy đều.'),
(21, 4, 'Hoàn thiện canh: Đun thêm 2 phút để gia vị thấm, rắc hành lá và 1/4 muỗng cà phê hạt tiêu. Tắt bếp, múc ra bát, dùng nóng với cơm trắng để thưởng thức vị ngọt thanh.'),
-- Cà rốt xào trứng
(22, 1, 'Chuẩn bị nguyên liệu: Gọt vỏ cà rốt, rửa sạch, bào sợi hoặc thái lát mỏng (0.5cm). Đánh tan 2 quả trứng với 1/4 muỗng cà phê muối. Tỏi bóc vỏ, băm nhỏ. Hành lá thái nhỏ.'),
(22, 2, 'Xào cà rốt: Đun nóng 1 muỗng canh dầu ăn trong chảo, phi thơm tỏi. Cho cà rốt vào, xào trên lửa vừa 3-4 phút đến khi cà rốt mềm nhưng vẫn giòn. Nêm 1 muỗng cà phê nước mắm.'),
(22, 3, 'Thêm trứng: Đổ trứng vào chảo, đảo nhẹ để trứng bám đều cà rốt, xào thêm 1-2 phút đến khi trứng chín và tơi. Tránh đảo quá mạnh để trứng không nát.'),
(22, 4, 'Hoàn thiện món xào: Rắc hành lá và 1/4 muỗng cà phê hạt tiêu, đảo lần cuối trong 10 giây. Tắt bếp, chuyển ra đĩa, dùng nóng như món phụ với cơm trắng.'),
-- Salad cà rốt trộn mắm
(23, 1, 'Chuẩn bị nguyên liệu: Gọt vỏ cà rốt, rửa sạch, bào sợi mỏng, ngâm nước lạnh 5 phút cho giòn, để ráo. Tỏi băm nhỏ, ớt thái lát, rau mùi thái nhỏ.'),
(23, 2, 'Pha nước mắm: Trộn 2 muỗng canh nước mắm, 1 muỗng canh đường, 1 muỗng canh nước cốt chanh, tỏi băm, và ớt trong bát. Khuấy đều để đường tan, tạo vị chua ngọt cay.'),
(23, 3, 'Trộn salad: Cho cà rốt bào sợi vào bát lớn, đổ nước mắm pha vào, trộn đều để cà rốt thấm gia vị. Để 5 phút cho ngấm, thỉnh thoảng trộn lại.'),
(23, 4, 'Hoàn thiện salad: Rắc rau mùi lên trên, trộn nhẹ. Dọn ra đĩa, dùng làm món khai vị hoặc ăn kèm thịt nướng, cá chiên để thưởng thức vị giòn chua ngọt.'),
-- Cà rốt kho thịt
(24, 1, 'Chuẩn bị nguyên liệu: Gọt vỏ cà rốt, rửa sạch, cắt khúc 3cm. Thịt ba chỉ cắt miếng 3cm, rửa sạch. Hành tím bóc vỏ, băm nhỏ.'),
(24, 2, 'Phi hành và xào thịt: Đun nóng 1 muỗng canh dầu ăn trong nồi, phi thơm hành tím. Cho thịt ba chỉ vào, xào 3-4 phút đến khi thịt vàng nhẹ và ra mỡ.'),
(24, 3, 'Kho thịt và cà rốt: Thêm 2 muỗng canh nước mắm, 1 muỗng canh đường, đảo đều để thịt thấm. Đổ 300ml nước, cho cà rốt vào, đun sôi, sau đó giảm lửa nhỏ, kho 30 phút đến khi thịt mềm và nước sệt.'),
(24, 4, 'Hoàn thiện món kho: Rắc 1/4 muỗng cà phê hạt tiêu, đảo nhẹ. Tắt bếp, múc ra đĩa, dùng nóng với cơm trắng để thưởng thức vị đậm đà thấm đều.');

-- --------------------------------------
-- 7. Cà tím (class_index: 6)
-- --------------------------------------

-- Chèn vào bảng vegetables
INSERT INTO vegetables (class_index, vietnamese_name, scientific_name, description, nutritional_info)
VALUES (
    6, 
    'Cà tím', 
    'Solanum melongena', 
    'Cà tím là một loại quả thuộc họ Cà (Solanaceae), được trồng phổ biến ở Việt Nam, đặc biệt ở các vùng đồng bằng và miền Trung. Quả có hình dài hoặc tròn, vỏ màu tím đậm, thịt mềm, vị nhẹ. Cà tím được dùng trong các món kho, nướng, xào, hoặc canh, là nguyên liệu quen thuộc trong ẩm thực Việt Nam nhờ kết cấu mềm và khả năng thấm gia vị.',
    'Cà tím giàu chất xơ, vitamin B6, vitamin C, kali, và các chất chống oxy hóa như nasunin. Nasunin bảo vệ tế bào khỏi tổn thương và hỗ trợ sức khỏe não bộ. Cà tím giúp cải thiện tiêu hóa, hỗ trợ sức khỏe tim mạch, và có lượng calo thấp, phù hợp cho chế độ ăn lành mạnh.'
);

-- Chèn vào bảng vegetable_nutritional_points
INSERT INTO vegetable_nutritional_points (vegetable_id, point_text, display_order)
VALUES 
(7, 'Chất xơ (3g trong 100g): Cải thiện tiêu hóa, ngăn ngừa táo bón, và hỗ trợ kiểm soát đường huyết.', 1),
(7, 'Nasunin: Chất chống oxy hóa bảo vệ tế bào não, giảm viêm, và hỗ trợ sức khỏe thần kinh.', 2),
(7, 'Vitamin B6 (10% DV trong 100g): Hỗ trợ chuyển hóa năng lượng, cải thiện chức năng não, và giảm nguy cơ thiếu máu.', 3),
(7, 'Kali (230mg trong 100g): Giúp cân bằng huyết áp, hỗ trợ chức năng cơ bắp, và giảm nguy cơ đột quỵ.', 4),
(7, 'Vitamin C (4% DV trong 100g): Tăng cường miễn dịch và thúc đẩy chữa lành vết thương.', 5),
(7, 'Ít calo (25 kcal trong 100g): Phù hợp cho chế độ ăn kiêng, giúp kiểm soát cân nặng mà vẫn cung cấp dinh dưỡng.', 6);

-- Chèn vào bảng vegetable_select_points
INSERT INTO vegetable_select_points (vegetable_id, point_text, display_order)
VALUES 
(7, 'Vỏ tím đậm, bóng mịn: Chọn cà tím có vỏ tím sáng, không nhăn hoặc có vết thâm.', 1),
(7, 'Cứng, nặng tay: Cà tím tươi có độ cứng khi ấn nhẹ, không mềm nhũn, nặng so với kích thước.', 2),
(7, 'Cuống xanh, tươi: Cuống cà tím còn xanh, không héo, cho thấy quả mới hái.', 3),
(7, 'Kích thước vừa phải: Cà tím dài 15-20cm hoặc tròn cỡ nắm tay thường mềm, ít hạt, ngon hơn.', 4),
(7, 'Tránh quả có đốm vàng hoặc mùi lạ: Đốm vàng hoặc mùi chua là dấu hiệu cà tím đã già hoặc hư.', 5);

-- Chèn vào bảng vegetable_preserve_points
INSERT INTO vegetable_preserve_points (vegetable_id, point_text, display_order)
VALUES 
(7, 'Bảo quản ở ngăn mát: Đặt cà tím trong túi nhựa đục lỗ, để ở 4-7°C, giữ tươi được 7-10 ngày.', 1),
(7, 'Không rửa trước khi bảo quản: Giữ cà tím khô để tránh ẩm mốc, chỉ rửa trước khi chế biến.', 2),
(7, 'Đông lạnh để bảo quản lâu: Cắt lát, chần sơ 2 phút, để ráo, cho vào túi zip, đông lạnh ở -18°C, dùng trong 6 tháng.', 3),
(7, 'Kiểm tra định kỳ: Loại bỏ quả bị mềm hoặc có đốm thâm để tránh lây lan hư hỏng.', 4),
(7, 'Tránh để gần chuối, táo: Các trái cây này tiết ethylene, làm cà tím nhanh chín và hỏng.', 5);

-- Chèn vào bảng recipes
INSERT INTO recipes (name, description, prep_time, cook_time, servings)
VALUES 
('Cà tím kho tộ', 'Món kho đậm đà, phổ biến trong ẩm thực Việt Nam, với cà tím mềm thấm vị nước mắm và thịt heo, là món chính trong bữa cơm gia đình.', '15 phút', '30 phút', '4 người'),
('Cà tím nướng mỡ hành', 'Món nướng truyền thống Việt Nam, với cà tím nướng thơm lừng, phủ mỡ hành béo ngậy, ăn kèm nước mắm, là món phụ hoặc món chính.', '10 phút', '20 phút', '4 người'),
('Canh cà tím nấu tôm', 'Món canh thanh nhẹ, quen thuộc trong bữa cơm Việt Nam, với cà tím mềm và tôm tươi, tạo vị ngọt tự nhiên.', '10 phút', '15 phút', '4 người'),
('Cà tím xào tỏi', 'Món xào đơn giản, phổ biến trong ẩm thực Việt Nam, với cà tím mềm thấm vị tỏi thơm, là món phụ dễ làm.', '10 phút', '15 phút', '3 người');

-- Chèn vào bảng recipe_vegetables
INSERT INTO recipe_vegetables (recipe_id, vegetable_id)
VALUES 
(25, 7),
(26, 7),
(27, 7),
(28, 7);

-- Chèn vào bảng recipe_items
INSERT INTO recipe_items (recipe_id, item_name, quantity, notes, order_index)
VALUES 
-- Cà tím kho tộ
(25, 'Cà tím', '300g', 'Rửa sạch, cắt khúc 4cm', 1),
(25, 'Thịt ba chỉ', '200g', 'Rửa sạch, cắt miếng 3cm', 2),
(25, 'Nước mắm', '2 muỗng canh', 'Chọn loại ngon', 3),
(25, 'Đường', '1 muỗng canh', 'Tạo vị ngọt và màu caramel', 4),
(25, 'Hành tím', '2 củ (20g)', 'Bóc vỏ, băm nhỏ', 5),
(25, 'Hạt tiêu', '1/4 muỗng cà phê', 'Rắc khi hoàn thiện', 6),
(25, 'Dầu ăn', '1 muỗng canh', 'Dùng để phi hành', 7),
(25, 'Nước', '200ml', 'Nước lọc, dùng để kho', 8),
-- Cà tím nướng mỡ hành
(26, 'Cà tím', '400g', 'Chọn quả dài, rửa sạch, để nguyên quả', 1),
(26, 'Hành lá', '3 nhánh (15g)', 'Rửa sạch, thái nhỏ', 2),
(26, 'Dầu ăn', '3 muỗng canh', 'Dùng để làm mỡ hành', 3),
(26, 'Nước mắm', '2 muỗng canh', 'Chọn loại ngon, pha nước chấm', 4),
(26, 'Đường', '1 muỗng cà phê', 'Pha nước chấm', 5),
(26, 'Tỏi', '2 tép (10g)', 'Băm nhỏ, pha nước chấm', 6),
(26, 'Ớt', '1 quả (5g)', 'Thái lát, pha nước chấm', 7),
-- Cành cà tím nấu tôm
(27, 'Cà tím', '300g', 'Rửa sạch, cắt khúc 3cm', 1),
(27, 'Tôm tươi', '200g', 'Bóc vỏ, bỏ đầu, rút chỉ đen', 2),
(27, 'Hành lá', '2 nhánh (10g)', 'Rửa sạch, thái nhỏ', 3),
(27, 'Nước mắm', '1 muỗng canh', 'Chọn loại ngon', 4),
(27, 'Muối', '1/2 muỗng cà phê', 'Điều chỉnh theo khẩu vị', 5),
(27, 'Hạt tiêu', '1/4 muỗng cà phê', 'Rắc khi hoàn thiện', 6),
(27, 'Dầu ăn', '1 muỗng canh', 'Dùng để xào', 7),
(27, 'Nước', '1 lít', 'Nước lọc', 8),
-- Cà tím xào tỏi
(28, 'Cà tím', '400g', 'Rửa sạch, cắt lát dày 1cm', 1),
(28, 'Tỏi', '4 tép (15g)', 'Bóc vỏ, băm nhỏ', 2),
(28, 'Dầu ăn', '2 muỗng canh', 'Dùng để xào', 3),
(28, 'Nước mắm', '1 muỗng canh', 'Tăng hương vị', 4),
(28, 'Đường', '1/2 muỗng cà phê', 'Tạo vị cân bằng', 5),
(28, 'Hạt tiêu', '1/4 muỗng cà phê', 'Rắc khi hoàn thiện', 6),
(28, 'Hành lá', '1 nhánh (5g)', 'Thái nhỏ, trang trí', 7);

-- Chèn vào bảng recipe_steps
INSERT INTO recipe_steps (recipe_id, step_number, instruction_text)
VALUES 
-- Cà tím kho tộ
(25, 1, 'Chuẩn bị nguyên liệu: Rửa sạch cà tím, cắt khúc 4cm, ngâm nước muối loãng 10 phút để bớt nhựa, để ráo. Thịt ba chỉ cắt miếng 3cm. Hành tím băm nhỏ.'),
(25, 2, 'Xào thịt và cà tím: Đun nóng 1 muỗng canh dầu ăn trong nồi đất, phi thơm hành tím. Cho thịt ba chỉ vào, xào 3 phút đến khi vàng nhẹ. Thêm cà tím, đảo đều 2 phút.'),
(25, 3, 'Kho cà tím: Thêm 2 muỗng canh nước mắm, 1 muỗng canh đường, và 200ml nước vào nồi. Đun sôi, giảm lửa nhỏ, kho 20-25 phút đến khi cà tím mềm và nước sệt, thịt thấm gia vị.'),
(25, 4, 'Hoàn thiện món kho: Rắc 1/4 muỗng cà phê hạt tiêu, đảo nhẹ. Tắt bếp, múc ra bát, dùng nóng với cơm trắng để thưởng thức vị đậm đà và mềm thơm.'),
-- Cà tím nướng mỡ hành
(26, 1, 'Chuẩn bị nguyên liệu: Rửa sạch cà tím, để nguyên quả. Hành lá thái nhỏ. Pha nước mắm: trộn 2 muỗng canh nước mắm, 1 muỗng cà phê đường, tỏi băm, ớt thái lát, khuấy đều.'),
(26, 2, 'Nướng cà tím: Nướng cà tím trên bếp than hoặc lò nướng (200°C) 15-20 phút, lật đều để chín đều, vỏ hơi cháy xém. Bóc vỏ cà tím, xẻ dọc, xếp lên đĩa.'),
(26, 3, 'Làm mỡ hành: Đun nóng 3 muỗng canh dầu ăn, đổ vào bát hành lá, thêm 1/4 muỗng cà phê muối, khuấy đều. Rưới mỡ hành lên cà tím đã nướng.'),
(26, 4, 'Hoàn thiện món nướng: Dọn cà tím kèm bát nước mắm pha. Khi ăn, chấm cà tím vào nước mắm, thưởng thức vị thơm béo của mỡ hành và nước mắm đậm đà.'),
-- Canh cà tím nấu tôm
(27, 1, 'Chuẩn bị nguyên liệu: Rửa sạch cà tím, cắt khúc 3cm, ngâm nước muối loãng 5 phút, để ráo. Tôm tươi bóc vỏ, rút chỉ đen, rửa sạch. Hành lá thái nhỏ.'),
(27, 2, 'Xào tôm: Đun nóng 1 muỗng canh dầu ăn trong nồi, cho tôm vào xào 1-2 phút đến khi tôm chuyển màu hồng và săn lại. Vớt tôm ra bát, giữ lại dầu.'),
(27, 3, 'Nấu canh: Đổ 1 lít nước lọc vào nồi, đun sôi. Thêm cà tím, nấu trên lửa vừa 5-7 phút đến khi cà tím mềm. Cho tôm vào, nêm 1 muỗng canh nước mắm và 1/2 muỗng cà phê muối.'),
(27, 4, 'Hoàn thiện canh: Đun thêm 2 phút để gia vị thấm, rắc hành lá và 1/4 muỗng cà phê hạt tiêu. Tắt bếp, múc ra bát, dùng nóng với cơm trắng để thưởng thức vị ngọt thanh.'),
-- Cà tím xào tỏi
(28, 1, 'Chuẩn bị nguyên liệu: Rửa sạch cà tím, cắt lát dày 1cm, ngâm nước muối loãng 5 phút để bớt nhựa, để ráo. Tỏi bóc vỏ, băm nhỏ. Hành lá thái nhỏ.'),
(28, 2, 'Phi tỏi thơm: Đun nóng 2 muỗng canh dầu ăn trong chảo, phi tỏi 30 giây đến khi vàng nhẹ và dậy mùi thơm. Tránh để tỏi cháy vì sẽ tạo vị đắng.'),
(28, 3, 'Xào cà tím: Cho cà tím vào chảo, xào trên lửa vừa 5-7 phút đến khi cà tím mềm và thấm dầu. Nêm 1 muỗng canh nước mắm và 1/2 muỗng cà phê đường, đảo đều.'),
(28, 4, 'Hoàn thiện món xào: Rắc hành lá và 1/4 muỗng cà phê hạt tiêu, đảo lần cuối trong 10 giây. Tắt bếp, chuyển ra đĩa, dùng nóng như món phụ với cơm trắng.');

-- --------------------------------------
-- 8. Cải thìa (class_index: 7)
-- --------------------------------------
-- Chèn vào bảng vegetables
INSERT INTO vegetables (class_index, vietnamese_name, scientific_name, description, nutritional_info)
VALUES (
    7, 
    'Cải thìa', 
    'Brassica rapa subsp. chinensis', 
    'Cải thìa là một loại rau lá thuộc họ Cải (Brassicaceae), được trồng phổ biến ở Việt Nam, đặc biệt ở các vùng đồng bằng và đô thị. Rau có lá xanh đậm, cuống lá dày, trắng, giòn, vị ngọt nhẹ. Cải thìa được dùng trong các món xào, canh, luộc, hoặc ăn kèm lẩu, là nguyên liệu quen thuộc trong ẩm thực Việt Nam nhờ vị giòn và dinh dưỡng cao.',
    'Cải thìa giàu vitamin A, vitamin C, vitamin K, folate, và kali. Rau này hỗ trợ sức khỏe mắt, tăng cường miễn dịch, cải thiện tiêu hóa, và tốt cho xương nhờ vitamin K. Cải thìa cũng chứa chất chống oxy hóa, giúp giảm nguy cơ bệnh tim. Với lượng calo thấp, cải thìa là lựa chọn lý tưởng cho chế độ ăn lành mạnh.'
);

-- Chèn vào bảng vegetable_nutritional_points
INSERT INTO vegetable_nutritional_points (vegetable_id, point_text, display_order)
VALUES 
(8, 'Vitamin A (36% DV trong 100g): Hỗ trợ thị lực, tăng cường miễn dịch, và duy trì làn da khỏe mạnh.', 1),
(8, 'Vitamin C (75% DV trong 100g): Tăng cường miễn dịch, hỗ trợ sản xuất collagen, và bảo vệ tế bào khỏi tổn thương oxy hóa.', 2),
(8, 'Vitamin K (214% DV trong 100g): Hỗ trợ đông máu và sức khỏe xương, giảm nguy cơ loãng xương.', 3),
(8, 'Kali (170mg trong 100g): Giúp cân bằng huyết áp và hỗ trợ chức năng cơ bắp.', 4),
(8, 'Folate (16% DV trong 100g): Hỗ trợ phát triển tế bào, đặc biệt quan trọng cho phụ nữ mang thai.', 5),
(8, 'Ít calo (13 kcal trong 100g): Phù hợp cho chế độ ăn kiêng, giúp kiểm soát cân nặng mà vẫn cung cấp dinh dưỡng.', 6);

-- Chèn vào bảng vegetable_select_points
INSERT INTO vegetable_select_points (vegetable_id, point_text, display_order)
VALUES 
(8, 'Lá xanh đậm, không vàng úa: Chọn cải thìa có lá tươi, xanh mướt, không có đốm vàng hoặc héo.', 1),
(8, 'Cuống trắng, giòn: Cuống lá dày, màu trắng sáng, cứng khi bẻ, không mềm nhũn.', 2),
(8, 'Kích thước vừa phải: Cải thìa dài 20-30cm, lá và cuống cân đối, thường giòn và ngọt hơn.', 3),
(8, 'Không có mùi lạ: Cải thìa tươi có mùi nhẹ, tránh loại có mùi hôi hoặc chua bất thường.', 4),
(8, 'Rễ nhỏ, sạch: Nếu còn rễ, rễ phải nhỏ, không quá dài hoặc có đất bám nhiều.', 5);

-- Chèn vào bảng vegetable_preserve_points
INSERT INTO vegetable_preserve_points (vegetable_id, point_text, display_order)
VALUES 
(8, 'Bọc kín trong ngăn mát: Đặt cải thìa trong túi nhựa đục lỗ, bảo quản ở 0-4°C, giữ tươi được 7-10 ngày.', 1),
(8, 'Không rửa trước khi bảo quản: Giữ cải thìa khô để tránh ẩm mốc, chỉ rửa trước khi chế biến.', 2),
(8, 'Đông lạnh để bảo quản lâu: Cắt nhỏ, chần sơ 1-2 phút, để ráo, cho vào túi zip, đông lạnh ở -18°C, dùng trong 6 tháng.', 3),
(8, 'Kiểm tra định kỳ: Loại bỏ lá vàng hoặc cuống héo để tránh lây lan hư hỏng.', 4),
(8, 'Tránh để gần trái cây tiết ethylene: Táo, chuối làm cải thìa nhanh héo và vàng lá.', 5);

-- Chèn vào bảng recipes
INSERT INTO recipes (name, description, prep_time, cook_time, servings)
VALUES 
('Canh cải thìa nấu tôm', 'Món canh thanh nhẹ, phổ biến trong bữa cơm gia đình Việt Nam, với cải thìa giòn ngọt và tôm tươi, tạo vị ngọt tự nhiên.', '10 phút', '15 phút', '4 người'),
('Cải thìa xào tỏi', 'Món xào đơn giản, quen thuộc trong ẩm thực Việt Nam, với cải thìa giòn thấm vị tỏi thơm, là món phụ dễ làm.', '10 phút', '10 phút', '3 người'),
('Cải thìa luộc chấm nước mắm', 'Món luộc dân dã, phổ biến trong ẩm thực Việt Nam, với cải thìa giòn ngọt ăn kèm nước mắm pha, là món phụ nhẹ nhàng.', '10 phút', '5 phút', '4 người'),
('Cải thìa xào nấm', 'Món xào bổ dưỡng, phổ biến trong bữa ăn Việt Nam, với cải thìa giòn kết hợp nấm thơm, là món phụ hoặc món chính.', '10 phút', '10 phút', '4 người');

-- Chèn vào bảng recipe_vegetables
INSERT INTO recipe_vegetables (recipe_id, vegetable_id)
VALUES 
(29, 8),
(30, 8),
(31, 8),
(32, 8);

-- Chèn vào bảng recipe_items
INSERT INTO recipe_items (recipe_id, item_name, quantity, notes, order_index)
VALUES 
-- Canh cải thìa nấu tôm
(29, 'Cải thìa', '300g', 'Rửa sạch, cắt khúc 5cm', 1),
(29, 'Tôm tươi', '200g', 'Bóc vỏ, bỏ đầu, rút chỉ đen', 2),
(29, 'Hành lá', '2 nhánh (10g)', 'Rửa sạch, thái nhỏ', 3),
(29, 'Nước mắm', '1 muỗng canh', 'Chọn loại ngon', 4),
(29, 'Muối', '1/2 muỗng cà phê', 'Điều chỉnh theo khẩu vị', 5),
(29, 'Hạt tiêu', '1/4 muỗng cà phê', 'Rắc khi hoàn thiện', 6),
(29, 'Dầu ăn', '1 muỗng canh', 'Dùng để xào', 7),
(29, 'Nước', '1 lít', 'Nước lọc', 8),
-- Cải thìa xào tỏi
(30, 'Cải thìa', '400g', 'Rửa sạch, cắt khúc 5cm', 1),
(30, 'Tỏi', '4 tép (15g)', 'Bóc vỏ, băm nhỏ', 2),
(30, 'Dầu ăn', '2 muỗng canh', 'Dùng để xào', 3),
(30, 'Nước mắm', '1 muỗng cà phê', 'Tăng hương vị', 4),
(30, 'Muối', '1/4 muỗng cà phê', 'Điều chỉnh theo khẩu vị', 5),
(30, 'Hạt tiêu', '1/4 muỗng cà phê', 'Rắc khi hoàn thiện', 6),
(30, 'Hành lá', '1 nhánh (5g)', 'Thái nhỏ, trang trí', 7),
-- Cải thìa luộc chấm nước mắm
(31, 'Cải thìa', '500g', 'Rửa sạch, để nguyên cây hoặc cắt đôi', 1),
(31, 'Nước mắm', '2 muỗng canh', 'Chọn loại ngon, dùng pha nước chấm', 2),
(31, 'Đường', '1 muỗng cà phê', 'Pha nước chấm', 3),
(31, 'Tỏi', '2 tép (10g)', 'Băm nhỏ, dùng pha nước chấm', 4),
(31, 'Ớt', '1 quả (5g)', 'Thái lát, dùng pha nước chấm', 5),
(31, 'Nước', '2 muỗng canh', 'Nước ấm, dùng pha nước chấm', 6),
-- Cải thìa xào nấm
(32, 'Cải thìa', '300g', 'Rửa sạch, cắt khúc 5cm', 1),
(32, 'Nấm rơm', '200g', 'Rửa sạch, ngâm nước muối loãng, để ráo', 2),
(32, 'Tỏi', '3 tép (12g)', 'Bóc vỏ, băm nhỏ', 3),
(32, 'Dầu ăn', '2 muỗng canh', 'Dùng để xào', 4),
(32, 'Nước mắm', '1 muỗng canh', 'Tăng hương vị', 5),
(32, 'Đường', '1/2 muỗng cà phê', 'Tạo vị cân bằng', 6),
(32, 'Hạt tiêu', '1/4 muỗng cà phê', 'Rắc khi hoàn thiện', 7),
(32, 'Hành lá', '1 nhánh (5g)', 'Thái nhỏ, trang trí', 8);

-- Chèn vào bảng recipe_steps
INSERT INTO recipe_steps (recipe_id, step_number, instruction_text)
VALUES 
-- Canh cải thìa nấu tôm
(29, 1, 'Chuẩn bị nguyên liệu: Rửa sạch cải thìa, cắt khúc 5cm, để ráo. Tôm tươi bóc vỏ, rút chỉ đen, rửa sạch với nước muối loãng. Hành lá rửa sạch, thái nhỏ.'),
(29, 2, 'Xào tôm: Đun nóng 1 muỗng canh dầu ăn trong nồi, cho tôm vào xào 1-2 phút đến khi tôm chuyển màu hồng và săn lại. Vớt tôm ra bát, giữ lại dầu.'),
(29, 3, 'Nấu canh: Đổ 1 lít nước lọc vào nồi, đun sôi. Thêm cải thìa, nấu trên lửa vừa 4-5 phút đến khi cải thìa mềm nhưng vẫn giòn. Cho tôm vào, nêm 1 muỗng canh nước mắm và 1/2 muỗng cà phê muối.'),
(29, 4, 'Hoàn thiện canh: Đun thêm 2 phút để gia vị thấm, rắc hành lá và 1/4 muỗng cà phê hạt tiêu. Tắt bếp, múc ra bát, dùng nóng với cơm trắng để thưởng thức vị ngọt thanh.'),
-- Cải thìa xào tỏi
(30, 1, 'Chuẩn bị nguyên liệu: Rửa sạch cải thìa, ngâm nước muối loãng 5 phút, cắt khúc 5cm, để ráo. Tỏi bóc vỏ, băm nhỏ hoặc đập dập. Hành lá rửa sạch, thái nhỏ.'),
(30, 2, 'Phi tỏi thơm: Đun nóng 2 muỗng canh dầu ăn trong chảo, phi tỏi 30 giây đến khi vàng nhẹ và dậy mùi thơm. Tránh để tỏi cháy vì sẽ tạo vị đắng.'),
(30, 3, 'Xào cải thìa: Cho cải thìa vào chảo, tăng lửa vừa, đảo đều 3-4 phút đến khi cải thìa chín nhưng vẫn giòn. Nêm 1 muỗng cà phê nước mắm và 1/4 muỗng cà phê muối.'),
(30, 4, 'Hoàn thiện món xào: Rắc hành lá và 1/4 muỗng cà phê hạt tiêu, đảo lần cuối trong 10 giây. Tắt bếp, chuyển ra đĩa, dùng nóng như món phụ với cơm trắng.'),
-- Cải thìa luộc chấm nước mắm
(31, 1, 'Chuẩn bị cải thìa: Rửa sạch cải thìa, ngâm nước muối loãng 5 phút, để nguyên cây hoặc cắt đôi. Đun sôi nồi nước để luộc.'),
(31, 2, 'Pha nước mắm: Trộn 2 muỗng canh nước mắm, 1 muỗng cà phê đường, 2 muỗng canh nước ấm, 2 tép tỏi băm, và 1 quả ớt thái lát. Khuấy đều để đường tan, tạo nước chấm chua ngọt.'),
(31, 3, 'Luộc cải thìa: Cho cải thìa vào nồi nước sôi, luộc 3-4 phút đến khi cải thìa mềm nhưng vẫn giòn. Vớt ra, ngâm ngay vào nước lạnh 1 phút để giữ độ giòn, để ráo.'),
(31, 4, 'Hoàn thiện món luộc: Xếp cải thìa lên đĩa, dọn kèm bát nước mắm pha. Chấm cải thìa vào nước mắm, dùng nóng như món phụ để thưởng thức vị giòn ngọt.'),
-- Cải thìa xào nấm
(32, 1, 'Chuẩn bị nguyên liệu: Rửa sạch cải thìa, ngâm nước muối loãng 5 phút, cắt khúc 5cm, để ráo. Nấm rơm rửa sạch, ngâm nước muối loãng, để ráo. Tỏi băm nhỏ, hành lá thái nhỏ.'),
(32, 2, 'Phi tỏi thơm: Đun nóng 2 muỗng canh dầu ăn trong chảo, phi tỏi 30 giây đến khi vàng nhẹ và thơm. Cho nấm rơm vào, xào 2 phút đến khi nấm mềm.'),
(32, 3, 'Xào cải thìa: Thêm cải thìa vào chảo, đảo đều trên lửa vừa 3-4 phút đến khi cải thìa chín nhưng vẫn giòn. Nêm 1 muỗng canh nước mắm và 1/2 muỗng cà phê đường.'),
(32, 4, 'Hoàn thiện món xào: Rắc hành lá và 1/4 muỗng cà phê hạt tiêu, đảo lần cuối trong 10 giây. Tắt bếp, chuyển ra đĩa, dùng nóng như món phụ hoặc món chính với cơm trắng.');

-- --------------------------------------
-- 9. Cần tây (class_index: 8)
-- --------------------------------------

-- Chèn vào bảng vegetables
INSERT INTO vegetables (class_index, vietnamese_name, scientific_name, description, nutritional_info)
VALUES (
    8, 
    'Cần tây', 
    'Apium graveolens', 
    'Cần tây là một loại rau thuộc họ Hoa tán (Apiaceae), được trồng phổ biến ở Việt Nam, đặc biệt ở các vùng khí hậu mát như Đà Lạt, Lâm Đồng. Rau có thân dài, giòn, màu xanh nhạt, lá xanh đậm, mùi thơm đặc trưng. Cần tây được dùng trong các món xào, canh, salad, hoặc nước ép, là nguyên liệu quen thuộc trong ẩm thực Việt Nam nhờ vị giòn và dinh dưỡng cao.',
    'Cần tây giàu vitamin K, vitamin C, kali, folate, và chất xơ. Rau này hỗ trợ sức khỏe xương, giảm huyết áp, cải thiện tiêu hóa, và có đặc tính chống viêm nhờ apigenin và luteolin. Với lượng calo thấp, cần tây là lựa chọn lý tưởng cho chế độ ăn lành mạnh và giảm cân.'
);

-- Chèn vào bảng vegetable_nutritional_points
INSERT INTO vegetable_nutritional_points (vegetable_id, point_text, display_order)
VALUES 
(9, 'Vitamin K (37% DV trong 100g): Hỗ trợ đông máu và sức khỏe xương, giảm nguy cơ loãng xương.', 1),
(9, 'Kali (260mg trong 100g): Giúp cân bằng huyết áp, hỗ trợ chức năng cơ bắp, và giảm nguy cơ đột quỵ.', 2),
(9, 'Chất xơ (1.6g trong 100g): Cải thiện tiêu hóa, ngăn ngừa táo bón, và hỗ trợ kiểm soát đường huyết.', 3),
(9, 'Vitamin C (5% DV trong 100g): Tăng cường miễn dịch và thúc đẩy chữa lành vết thương.', 4),
(9, 'Apigenin và luteolin: Chất chống oxy hóa có đặc tính chống viêm, giảm nguy cơ bệnh tim và ung thư.', 5),
(9, 'Ít calo (16 kcal trong 100g): Phù hợp cho chế độ ăn kiêng, giúp kiểm soát cân nặng mà vẫn cung cấp dinh dưỡng.', 6);

-- Chèn vào bảng vegetable_select_points
INSERT INTO vegetable_select_points (vegetable_id, point_text, display_order)
VALUES 
(9, 'Thân giòn, màu xanh nhạt: Chọn cần tây có thân cứng, không mềm, màu xanh tươi, không ngả vàng.', 1),
(9, 'Lá xanh, không héo: Lá cần tây phải tươi, xanh đậm, không vàng úa hoặc khô.', 2),
(9, 'Mùi thơm nhẹ: Cần tây tươi có mùi thơm đặc trưng, tránh loại có mùi hôi hoặc chua.', 3),
(9, 'Thân không nứt, không đốm: Kiểm tra thân cần tây không có vết nứt, đốm thâm hoặc dấu hiệu hư hỏng.', 4),
(9, 'Kích thước vừa: Cần tây dài 30-40cm, thân dày 1-2cm thường giòn và ngọt hơn.', 5);

-- Chèn vào bảng vegetable_preserve_points
INSERT INTO vegetable_preserve_points (vegetable_id, point_text, display_order)
VALUES 
(9, 'Bọc kín trong ngăn mát: Quấn cần tây trong khăn giấy ẩm, đặt trong túi nhựa, bảo quản ở 0-4°C, giữ tươi 2-3 tuần.', 1),
(9, 'Không rửa trước khi bảo quản: Giữ cần tây khô để tránh ẩm mốc, chỉ rửa trước khi chế biến.', 2),
(9, 'Đông lạnh để bảo quản lâu: Cắt nhỏ, chần sơ 1-2 phút, để ráo, cho vào túi zip, đông lạnh ở -18°C, dùng trong 6 tháng.', 3),
(9, 'Kiểm tra định kỳ: Loại bỏ lá hoặc thân bị vàng để tránh lây lan hư hỏng.', 4),
(9, 'Tránh để gần táo, lê: Các trái cây này tiết ethylene, làm cần tây nhanh héo và đắng.', 5);

-- Chèn vào bảng recipes
INSERT INTO recipes (name, description, prep_time, cook_time, servings)
VALUES 
('Cần tây xào thịt bò', 'Món xào đậm đà, phổ biến trong ẩm thực Việt Nam, với cần tây giòn kết hợp thịt bò mềm, là món chính thơm ngon.', '15 phút', '10 phút', '4 người'),
('Canh cần tây nấu tôm', 'Món canh thanh nhẹ, quen thuộc trong bữa cơm Việt Nam, với cần tây giòn và tôm tươi, tạo vị ngọt tự nhiên.', '10 phút', '15 phút', '4 người'),
('Salad cần tây trộn gà', 'Món salad tươi mát, phổ biến trong ẩm thực Việt Nam, với cần tây giòn trộn gà xé, là món khai vị hoặc ăn nhẹ.', '15 phút', '10 phút', '4 người'),
('Cần tây xào nấm', 'Món xào bổ dưỡng, phổ biến trong bữa ăn Việt Nam, với cần tây giòn kết hợp nấm thơm, là món phụ hoặc món chính.', '10 phút', '10 phút', '4 người');

-- Chèn vào bảng recipe_vegetables
INSERT INTO recipe_vegetables (recipe_id, vegetable_id)
VALUES 
(33, 9),
(34, 9),
(35, 9),
(36, 9);

-- Chèn vào bảng recipe_items
INSERT INTO recipe_items (recipe_id, item_name, quantity, notes, order_index)
VALUES 
-- Cần tây xào thịt bò
(33, 'Cần tây', '300g', 'Rửa sạch, cắt khúc 4cm', 1),
(33, 'Thịt bò', '200g', 'Thái lát mỏng, ướp với 1/2 muỗng cà phê muối, 1/4 muỗng cà phê tiêu', 2),
(33, 'Tỏi', '3 tép (12g)', 'Bóc vỏ, băm nhỏ', 3),
(33, 'Dầu ăn', '2 muỗng canh', 'Dùng để xào', 4),
(33, 'Nước mắm', '1 muỗng canh', 'Tăng hương vị', 5),
(33, 'Đường', '1/2 muỗng cà phê', 'Tạo vị cân bằng', 6),
(33, 'Hạt tiêu', '1/4 muỗng cà phê', 'Rắc khi hoàn thiện', 7),
(33, 'Hành lá', '1 nhánh (5g)', 'Thái nhỏ, trang trí', 8),
-- Canh cần tây nấu tôm
(34, 'Cần tây', '200g', 'Rửa sạch, cắt khúc 3cm', 1),
(34, 'Tôm tươi', '200g', 'Bóc vỏ, bỏ đầu, rút chỉ đen', 2),
(34, 'Hành lá', '2 nhánh (10g)', 'Rửa sạch, thái nhỏ', 3),
(34, 'Nước mắm', '1 muỗng canh', 'Chọn loại ngon', 4),
(34, 'Muối', '1/2 muỗng cà phê', 'Điều chỉnh theo khẩu vị', 5),
(34, 'Hạt tiêu', '1/4 muỗng cà phê', 'Rắc khi hoàn thiện', 6),
(34, 'Dầu ăn', '1 muỗng canh', 'Dùng để xào', 7),
(34, 'Nước', '1 lít', 'Nước lọc', 8),
-- Salad cần tây trộn gà
(35, 'Cần tây', '300g', 'Rửa sạch, cắt khúc 3cm hoặc thái lát mỏng', 1),
(35, 'Ức gà', '200g', 'Luộc chín, xé sợi', 2),
(35, 'Nước mắm', '2 muỗng canh', 'Chọn loại ngon', 3),
(35, 'Đường', '1 muỗng canh', 'Tạo vị ngọt', 4),
(35, 'Tỏi', '2 tép (10g)', 'Băm nhỏ', 5),
(35, 'Nước cốt chanh', '1 muỗng canh', 'Tạo vị chua', 6),
(35, 'Rau mùi', '10g', 'Rửa sạch, thái nhỏ, trang trí', 7),
-- Cần tây xào nấm
(36, 'Cần tây', '300g', 'Rửa sạch, cắt khúc 4cm', 1),
(36, 'Nấm rơm', '200g', 'Rửa sạch, ngâm nước muối loãng, để ráo', 2),
(36, 'Tỏi', '3 tép (12g)', 'Bóc vỏ, băm nhỏ', 3),
(36, 'Dầu ăn', '2 muỗng canh', 'Dùng để xào', 4),
(36, 'Nước mắm', '1 muỗng canh', 'Tăng hương vị', 5),
(36, 'Đường', '1/2 muỗng cà phê', 'Tạo vị cân bằng', 6),
(36, 'Hạt tiêu', '1/4 muỗng cà phê', 'Rắc khi hoàn thiện', 7),
(36, 'Hành lá', '1 nhánh (5g)', 'Thái nhỏ, trang trí', 8);

-- Chèn vào bảng recipe_steps
INSERT INTO recipe_steps (recipe_id, step_number, instruction_text)
VALUES 
-- Cần tây xào thịt bò
(33, 1, 'Chuẩn bị nguyên liệu: Rửa sạch cần tây, cắt khúc 4cm, để ráo. Thịt bò thái lát mỏng, ướp với 1/2 muỗng cà phê muối, 1/4 muỗng cà phê tiêu trong 10 phút. Tỏi băm nhỏ, hành lá thái nhỏ.'),
(33, 2, 'Xào thịt bò: Đun nóng 1 muỗng canh dầu ăn trong chảo, phi thơm nửa lượng tỏi. Cho thịt bò vào, xào trên lửa lớn 1-2 phút đến khi tái, vớt ra để riêng.'),
(33, 3, 'Xào cần tây: Thêm 1 muỗng canh dầu ăn vào chảo, phi thơm tỏi còn lại. Cho cần tây vào, xào 2-3 phút đến khi cần tây mềm nhưng vẫn giòn. Nêm 1 muỗng canh nước mắm và 1/2 muỗng cà phê đường.'),
(33, 4, 'Hoàn thiện món xào: Cho thịt bò vào chảo, đảo đều 1 phút để thấm gia vị. Rắc hành lá và 1/4 muỗng cà phê hạt tiêu, tắt bếp, chuyển ra đĩa. Dùng nóng với cơm trắng để thưởng thức vị giòn thơm.'),
-- Canh cần tây nấu tôm
(34, 1, 'Chuẩn bị nguyên liệu: Rửa sạch cần tây, cắt khúc 3cm, để ráo. Tôm tươi bóc vỏ, rút chỉ đen, rửa sạch với nước muối loãng. Hành lá rửa sạch, thái nhỏ.'),
(34, 2, 'Xào tôm: Đun nóng 1 muỗng canh dầu ăn trong nồi, cho tôm vào xào 1-2 phút đến khi tôm chuyển màu hồng và săn lại. Vớt tôm ra bát, giữ lại dầu.'),
(34, 3, 'Nấu canh: Đổ 1 lít nước lọc vào nồi, đun sôi. Thêm cần tây, nấu trên lửa vừa 3-4 phút đến khi cần tây mềm nhưng vẫn giòn. Cho tôm vào, nêm 1 muỗng canh nước mắm và 1/2 muỗng cà phê muối.'),
(34, 4, 'Hoàn thiện canh: Đun thêm 2 phút để gia vị thấm, rắc hành lá và 1/4 muỗng cà phê hạt tiêu. Tắt bếp, múc ra bát, dùng nóng với cơm trắng để thưởng thức vị ngọt thanh.'),
-- Salad cần tây trộn gà
(35, 1, 'Chuẩn bị nguyên liệu: Rửa sạch cần tây, cắt khúc 3cm hoặc thái lát mỏng, ngâm nước lạnh 5 phút cho giòn, để ráo. Ức gà luộc chín, xé sợi. Rau mùi thái nhỏ.'),
(35, 2, 'Pha nước mắm: Trộn 2 muỗng canh nước mắm, 1 muỗng canh đường, 1 muỗng canh nước cốt chanh, và 2 tép tỏi băm trong bát. Khuấy đều để đường tan, tạo vị chua ngọt.'),
(35, 3, 'Trộn salad: Cho cần tây và gà xé sợi vào bát lớn, đổ nước mắm pha vào, trộn đều để thấm gia vị. Để 5 phút cho ngấm, thỉnh thoảng trộn lại.'),
(35, 4, 'Hoàn thiện salad: Rắc rau mùi lên trên, trộn nhẹ. Dọn ra đĩa, dùng làm món khai vị hoặc ăn nhẹ để thưởng thức vị giòn tươi và chua ngọt.'),
-- Cần tây xào nấm
(36, 1, 'Chuẩn bị nguyên liệu: Rửa sạch cần tây, cắt khúc 4cm, để ráo. Nấm rơm rửa sạch, ngâm nước muối loãng 5 phút, để ráo. Tỏi băm nhỏ, hành lá thái nhỏ.'),
(36, 2, 'Phi tỏi thơm: Đun nóng 2 muỗng canh dầu ăn trong chảo, phi tỏi 30 giây đến khi vàng nhẹ và thơm. Cho nấm rơm vào, xào 2 phút đến khi nấm mềm.'),
(36, 3, 'Xào cần tây: Thêm cần tây vào chảo, đảo đều trên lửa vừa 2-3 phút đến khi cần tây chín nhưng vẫn giòn. Nêm 1 muỗng canh nước mắm và 1/2 muỗng cà phê đường.'),
(36, 4, 'Hoàn thiện món xào: Rắc hành lá và 1/4 muỗng cà phê hạt tiêu, đảo lần cuối trong 10 giây. Tắt bếp, chuyển ra đĩa, dùng nóng như món phụ hoặc món chính với cơm trắng.');

-- --------------------------------------
-- 10. Củ cải đỏ (class_index: 9)
-- --------------------------------------

-- Chèn vào bảng vegetables
INSERT INTO vegetables (class_index, vietnamese_name, scientific_name, description, nutritional_info)
VALUES (
    9, 
    'Củ cải đỏ', 
    'Raphanus sativus', 
    'Củ cải đỏ là một loại củ thuộc họ Cải (Brassicaceae), được trồng phổ biến ở Việt Nam, đặc biệt ở các vùng khí hậu mát như Đà Lạt, Lâm Đồng. Củ có hình tròn hoặc oval, vỏ đỏ tươi, thịt trắng giòn, vị ngọt nhẹ và hơi cay. Củ cải đỏ được dùng trong các món salad, canh, kho, hoặc muối chua, là nguyên liệu quen thuộc trong ẩm thực Việt Nam nhờ vị giòn và dinh dưỡng cao.',
    'Củ cải đỏ giàu vitamin C, folate, kali, và chất xơ. Rau này hỗ trợ miễn dịch, cải thiện tiêu hóa, và có đặc tính chống oxy hóa nhờ anthocyanin trong vỏ đỏ. Củ cải đỏ cũng giúp giảm viêm và hỗ trợ sức khỏe tim mạch. Với lượng calo thấp, củ cải đỏ là lựa chọn lý tưởng cho chế độ ăn lành mạnh.'
);

-- Chèn vào bảng vegetable_nutritional_points
INSERT INTO vegetable_nutritional_points (vegetable_id, point_text, display_order)
VALUES 
(10, 'Vitamin C (30% DV trong 100g): Tăng cường miễn dịch, hỗ trợ sản xuất collagen, và bảo vệ tế bào khỏi tổn thương oxy hóa.', 1),
(10, 'Chất xơ (1.9g trong 100g): Cải thiện tiêu hóa, ngăn ngừa táo bón, và hỗ trợ kiểm soát đường huyết.', 2),
(10, 'Kali (233mg trong 100g): Giúp cân bằng huyết áp, hỗ trợ chức năng cơ bắp, và giảm nguy cơ đột quỵ.', 3),
(10, 'Folate (6% DV trong 100g): Hỗ trợ phát triển tế bào, đặc biệt quan trọng cho phụ nữ mang thai.', 4),
(10, 'Anthocyanin: Chất chống oxy hóa trong vỏ đỏ giúp giảm viêm, bảo vệ tim mạch, và giảm nguy cơ ung thư.', 5),
(10, 'Ít calo (16 kcal trong 100g): Phù hợp cho chế độ ăn kiêng, giúp kiểm soát cân nặng mà vẫn cung cấp dinh dưỡng.', 6);

-- Chèn vào bảng vegetable_select_points
INSERT INTO vegetable_select_points (vegetable_id, point_text, display_order)
VALUES 
(10, 'Vỏ đỏ tươi, bóng mịn: Chọn củ cải đỏ có vỏ đỏ sáng, không có vết thâm hoặc nứt.', 1),
(10, 'Cứng, nặng tay: Củ cải tươi có độ cứng khi ấn, không mềm nhũn, nặng so với kích thước.', 2),
(10, 'Lá xanh, tươi nếu còn: Nếu có lá, lá phải xanh, không vàng úa, cho thấy củ mới hái.', 3),
(10, 'Kích thước vừa: Củ cải đường kính 4-6cm thường giòn, ngọt, và ít xơ hơn củ quá lớn.', 4),
(10, 'Tránh củ có mùi lạ: Củ cải đỏ tươi có mùi đất nhẹ, tránh loại có mùi chua hoặc hôi.', 5);

-- Chèn vào bảng vegetable_preserve_points
INSERT INTO vegetable_preserve_points (vegetable_id, point_text, display_order)
VALUES 
(10, 'Bọc kín trong ngăn mát: Đặt củ cải đỏ trong túi nhựa đục lỗ, bảo quản ở 0-4°C, giữ tươi 3-4 tuần.', 1),
(10, 'Cắt bỏ lá trước khi bảo quản: Lá hút ẩm, làm củ cải nhanh héo, nên cắt bỏ nếu có.', 2),
(10, 'Đông lạnh để bảo quản lâu: Gọt vỏ, cắt miếng, chần sơ 2 phút, để ráo, cho vào túi zip, đông lạnh ở -18°C, dùng trong 6-8 tháng.', 3),
(10, 'Kiểm tra định kỳ: Loại bỏ củ bị mềm hoặc có đốm thâm để tránh lây lan hư hỏng.', 4),
(10, 'Tránh để gần táo, lê: Các trái cây này tiết ethylene, làm củ cải đỏ nhanh hỏng.', 5);

-- Chèn vào bảng recipes
INSERT INTO recipes (name, description, prep_time, cook_time, servings)
VALUES 
('Canh củ cải đỏ nấu thịt', 'Món canh ngọt thanh, phổ biến trong bữa cơm gia đình Việt Nam, với củ cải đỏ giòn ngọt và thịt heo mềm, dễ làm và bổ dưỡng.', '10 phút', '20 phút', '4 người'),
('Củ cải đỏ muối chua', 'Món muối chua truyền thống Việt Nam, với củ cải đỏ giòn, chua ngọt, thường dùng làm món ăn kèm hoặc khai vị.', '15 phút', '0 phút', '4 người'),
('Salad củ cải đỏ trộn mắm', 'Món salad tươi mát, phổ biến trong ẩm thực Việt Nam, với củ cải đỏ bào sợi trộn nước mắm, là món khai vị hoặc ăn kèm.', '15 phút', '0 phút', '4 người'),
('Củ cải đỏ kho tộ', 'Món kho đậm đà, quen thuộc trong ẩm thực Việt Nam, với củ cải đỏ thấm vị nước mắm và thịt heo, là món chính trong bữa cơm.', '15 phút', '30 phút', '4 người');

-- Chèn vào bảng recipe_vegetables
INSERT INTO recipe_vegetables (recipe_id, vegetable_id)
VALUES 
(37, 10),
(38, 10),
(39, 10),
(40, 10);

-- Chèn vào bảng recipe_items
INSERT INTO recipe_items (recipe_id, item_name, quantity, notes, order_index)
VALUES 
-- Canh củ cải đỏ nấu thịt
(37, 'Củ cải đỏ', '300g', 'Gọt vỏ, rửa sạch, cắt lát mỏng hoặc cắt hạt lựu', 1),
(37, 'Thịt heo nạc', '150g', 'Thái miếng mỏng, ướp với 1/2 muỗng cà phê muối', 2),
(37, 'Hành lá', '2 nhánh (10g)', 'Rửa sạch, thái nhỏ', 3),
(37, 'Nước mắm', '1 muỗng canh', 'Chọn loại ngon', 4),
(37, 'Muối', '1/2 muỗng cà phê', 'Điều chỉnh theo khẩu vị', 5),
(37, 'Hạt tiêu', '1/4 muỗng cà phê', 'Rắc khi hoàn thiện', 6),
(37, 'Dầu ăn', '1 muỗng canh', 'Dùng để phi hành', 7),
(37, 'Nước', '1 lít', 'Nước lọc', 8),
-- Củ cải đỏ muối chua
(38, 'Củ cải đỏ', '400g', 'Gọt vỏ, rửa sạch, thái lát mỏng', 1),
(38, 'Đường', '2 muỗng canh', 'Tạo vị ngọt', 2),
(38, 'Giấm', '3 muỗng canh', 'Giấm gạo, tạo vị chua', 3),
(38, 'Muối', '1 muỗng cà phê', 'Tăng hương vị', 4),
(38, 'Nước', '200ml', 'Nước ấm, dùng để pha hỗn hợp muối', 5),
(38, 'Tỏi', '2 tép (10g)', 'Thái lát mỏng', 6),
(38, 'Ớt', '1 quả (5g)', 'Thái lát, tùy khẩu vị', 7),
-- Salad củ cải đỏ trộn mắm
(39, 'Củ cải đỏ', '400g', 'Gọt vỏ, rửa sạch, bào sợi', 1),
(39, 'Nước mắm', '2 muỗng canh', 'Chọn loại ngon', 2),
(39, 'Đường', '1 muỗng canh', 'Tạo vị ngọt', 3),
(39, 'Tỏi', '2 tép (10g)', 'Băm nhỏ', 4),
(39, 'Nước cốt chanh', '1 muỗng canh', 'Tạo vị chua', 5),
(39, 'Ớt', '1 quả (5g)', 'Thái lát', 6),
(39, 'Rau mùi', '10g', 'Rửa sạch, thái nhỏ, trang trí', 7),
-- Củ cải đỏ kho tộ
(40, 'Củ cải đỏ', '300g', 'Gọt vỏ, rửa sạch, cắt khúc 3cm', 1),
(40, 'Thịt ba chỉ', '200g', 'Rửa sạch, cắt miếng 3cm', 2),
(40, 'Nước mắm', '2 muỗng canh', 'Chọn loại ngon', 3),
(40, 'Đường', '1 muỗng canh', 'Tạo vị ngọt và màu caramel', 4),
(40, 'Hành tím', '2 củ (20g)', 'Bóc vỏ, băm nhỏ', 5),
(40, 'Hạt tiêu', '1/4 muỗng cà phê', 'Rắc khi hoàn thiện', 6),
(40, 'Dầu ăn', '1 muỗng canh', 'Dùng để phi hành', 7),
(40, 'Nước', '200ml', 'Nước lọc, dùng để kho', 8);

-- Chèn vào bảng recipe_steps
INSERT INTO recipe_steps (recipe_id, step_number, instruction_text)
VALUES 
-- Canh củ cải đỏ nấu thịt
(37, 1, 'Chuẩn bị nguyên liệu: Gọt vỏ củ cải đỏ, rửa sạch, cắt lát mỏng hoặc cắt hạt lựu (1cm). Thịt heo thái miếng mỏng, ướp với 1/2 muỗng cà phê muối trong 10 phút. Hành lá rửa sạch, thái nhỏ.'),
(37, 2, 'Xào thịt: Đun nóng 1 muỗng canh dầu ăn trong nồi, phi thơm đầu hành lá. Cho thịt heo vào, xào 2-3 phút đến khi thịt săn lại và thơm.'),
(37, 3, 'Nấu canh: Đổ 1 lít nước lọc vào nồi, đun sôi. Thêm củ cải đỏ, giảm lửa vừa, nấu 10-12 phút đến khi củ cải mềm. Nêm 1 muỗng canh nước mắm và 1/2 muỗng cà phê muối.'),
(37, 4, 'Hoàn thiện canh: Đun thêm 2 phút để gia vị thấm, rắc hành lá và 1/4 muỗng cà phê hạt tiêu. Tắt bếp, múc ra bát, dùng nóng với cơm trắng để thưởng thức vị ngọt thanh.'),
-- Củ cải đỏ muối chua
(38, 1, 'Chuẩn bị nguyên liệu: Gọt vỏ củ cải đỏ, rửa sạch, thái lát mỏng (0.2cm), ngâm nước lạnh 5 phút, để ráo. Tỏi và ớt thái lát.'),
(38, 2, 'Pha nước muối: Hòa 2 muỗng canh đường, 1 muỗng cà phê muối, 3 muỗng canh giấm, và 200ml nước ấm trong bát. Khuấy đều để đường và muối tan hoàn toàn.'),
(38, 3, 'Ngâm củ cải: Xếp củ cải đỏ, tỏi, và ớt vào lọ thủy tinh sạch. Đổ nước muối vào, đảm bảo ngập củ cải. Đậy kín, để ở nhiệt độ phòng 1-2 ngày cho lên men nhẹ.'),
(38, 4, 'Hoàn thiện món muối: Sau khi muối chua, bảo quản lọ trong tủ lạnh, dùng trong 1-2 tuần. Dọn ra đĩa, ăn kèm thịt kho hoặc cá chiên để thưởng thức vị giòn chua ngọt.'),
-- Salad củ cải đỏ trộn mắm
(39, 1, 'Chuẩn bị nguyên liệu: Gọt vỏ củ cải đỏ, rửa sạch, bào sợi mỏng, ngâm nước lạnh 5 phút cho giòn, để ráo. Tỏi băm nhỏ, ớt thái lát, rau mùi thái nhỏ.'),
(39, 2, 'Pha nước mắm: Trộn 2 muỗng canh nước mắm, 1 muỗng canh đường, 1 muỗng canh nước cốt chanh, tỏi băm, và ớt trong bát. Khuấy đều để đường tan, tạo vị chua ngọt cay.'),
(39, 3, 'Trộn salad: Cho củ cải đỏ bào sợi vào bát lớn, đổ nước mắm pha vào, trộn đều để thấm gia vị. Để 5 phút cho ngấm, thỉnh thoảng trộn lại.'),
(39, 4, 'Hoàn thiện salad: Rắc rau mùi lên trên, trộn nhẹ. Dọn ra đĩa, dùng làm món khai vị hoặc ăn kèm thịt nướng, cá chiên để thưởng thức vị giòn chua ngọt.'),
-- Củ cải đỏ kho tộ
(40, 1, 'Chuẩn bị nguyên liệu: Gọt vỏ củ cải đỏ, rửa sạch, cắt khúc 3cm. Thịt ba chỉ cắt miếng 3cm, rửa sạch. Hành tím bóc vỏ, băm nhỏ.'),
(40, 2, 'Xào thịt và củ cải: Đun nóng 1 muỗng canh dầu ăn trong nồi đất, phi thơm hành tím. Cho thịt ba chỉ vào, xào 3 phút đến khi vàng nhẹ. Thêm củ cải đỏ, đảo đều 2 phút.'),
(40, 3, 'Kho củ cải: Thêm 2 muỗng canh nước mắm, 1 muỗng canh đường, và 200ml nước vào nồi. Đun sôi, giảm lửa nhỏ, kho 20-25 phút đến khi củ cải mềm và nước sệt, thịt thấm gia vị.'),
(40, 4, 'Hoàn thiện món kho: Rắc 1/4 muỗng cà phê hạt tiêu, đảo nhẹ. Tắt bếp, múc ra bát, dùng nóng với cơm trắng để thưởng thức vị đậm đà và giòn ngọt.');

-- --------------------------------------
-- 11. Củ cải trắng (class_index: 10)
-- --------------------------------------

-- Chèn vào bảng vegetables
INSERT INTO vegetables (class_index, vietnamese_name, scientific_name, description, nutritional_info)
VALUES (
    10, 
    'Củ cải trắng', 
    'Raphanus sativus var. longipinnatus', 
    'Củ cải trắng là một loại củ thuộc họ Cải (Brassicaceae), được trồng phổ biến ở Việt Nam, đặc biệt ở các vùng đồng bằng và khí hậu mát như Đà Lạt. Củ có hình trụ dài, vỏ trắng, thịt giòn, vị ngọt nhẹ và hơi cay. Củ cải trắng được dùng trong các món canh, kho, muối chua, hoặc salad, là nguyên liệu quen thuộc trong ẩm thực Việt Nam nhờ vị giòn và dinh dưỡng cao.',
    'Củ cải trắng giàu vitamin C, chất xơ, kali, và folate. Rau này hỗ trợ tiêu hóa, tăng cường miễn dịch, và có đặc tính chống viêm nhờ các hợp chất glucosinolate. Củ cải trắng cũng giúp thanh nhiệt, giảm cholesterol, và có lượng calo thấp, phù hợp cho chế độ ăn lành mạnh.'
);

-- Chèn vào bảng vegetable_nutritional_points
INSERT INTO vegetable_nutritional_points (vegetable_id, point_text, display_order)
VALUES 
(11, 'Vitamin C (25% DV trong 100g): Tăng cường miễn dịch, hỗ trợ sản xuất collagen, và bảo vệ tế bào khỏi tổn thương oxy hóa.', 1),
(11, 'Chất xơ (1.8g trong 100g): Cải thiện tiêu hóa, ngăn ngừa táo bón, và hỗ trợ kiểm soát đường huyết.', 2),
(11, 'Kali (280mg trong 100g): Giúp cân bằng huyết áp, hỗ trợ chức năng cơ bắp, và giảm nguy cơ đột quỵ.', 3),
(11, 'Folate (7% DV trong 100g): Hỗ trợ phát triển tế bào, đặc biệt quan trọng cho phụ nữ mang thai.', 4),
(11, 'Glucosinolate: Hợp chất chống oxy hóa giúp giảm viêm, hỗ trợ giải độc gan, và giảm nguy cơ ung thư.', 5),
(11, 'Ít calo (18 kcal trong 100g): Phù hợp cho chế độ ăn kiêng, giúp kiểm soát cân nặng mà vẫn cung cấp dinh dưỡng.', 6);

-- Chèn vào bảng vegetable_select_points
INSERT INTO vegetable_select_points (vegetable_id, point_text, display_order)
VALUES 
(11, 'Vỏ trắng, mịn, không vết thâm: Chọn củ cải trắng có vỏ bóng, trắng sáng, không nứt hoặc có đốm đen.', 1),
(11, 'Cứng, nặng tay: Củ cải tươi có độ cứng khi ấn, không mềm, nặng so với kích thước.', 2),
(11, 'Lá xanh, tươi nếu còn: Nếu có lá, lá phải xanh, không vàng úa, cho thấy củ mới hái.', 3),
(11, 'Kích thước vừa: Củ cải dài 20-30cm, đường kính 4-6cm thường giòn, ngọt, và ít xơ.', 4),
(11, 'Tránh củ có mùi lạ: Củ cải trắng tươi có mùi đất nhẹ, tránh loại có mùi chua hoặc hôi.', 5);

-- Chèn vào bảng vegetable_preserve_points
INSERT INTO vegetable_preserve_points (vegetable_id, point_text, display_order)
VALUES 
(11, 'Bọc kín trong ngăn mát: Đặt củ cải trắng trong túi nhựa đục lỗ, bảo quản ở 0-4°C, giữ tươi 3-4 tuần.', 1),
(11, 'Cắt bỏ lá trước khi bảo quản: Lá hút ẩm, làm củ cải nhanh héo, nên cắt bỏ nếu có.', 2),
(11, 'Đông lạnh để bảo quản lâu: Gọt vỏ, cắt miếng, chần sơ 2 phút, để ráo, cho vào túi zip, đông lạnh ở -18°C, dùng trong 6-8 tháng.', 3),
(11, 'Kiểm tra định kỳ: Loại bỏ củ bị mềm hoặc có đốm thâm để tránh lây lan hư hỏng.', 4),
(11, 'Tránh để gần táo, lê: Các trái cây này tiết ethylene, làm củ cải trắng nhanh hỏng.', 5);

-- Chèn vào bảng recipes
INSERT INTO recipes (name, description, prep_time, cook_time, servings)
VALUES 
('Canh củ cải trắng nấu tôm', 'Món canh thanh nhẹ, phổ biến trong bữa cơm gia đình Việt Nam, với củ cải trắng giòn ngọt và tôm tươi, tạo vị ngọt tự nhiên.', '10 phút', '20 phút', '4 người'),
('Củ cải trắng kho thịt', 'Món kho đậm đà, quen thuộc trong ẩm thực Việt Nam, với củ cải trắng thấm vị nước mắm và thịt heo, là món chính trong bữa cơm.', '15 phút', '30 phút', '4 người'),
('Củ cải trắng muối chua', 'Món muối chua truyền thống Việt Nam, với củ cải trắng giòn, chua ngọt, thường dùng làm món ăn kèm hoặc khai vị.', '15 phút', '0 phút', '4 người'),
('Salad củ cải trắng trộn mắm', 'Món salad tươi mát, phổ biến trong ẩm thực Việt Nam, với củ cải trắng bào sợi trộn nước mắm, là món khai vị hoặc ăn kèm.', '15 phút', '0 phút', '4 người');

-- Chèn vào bảng recipe_vegetables
INSERT INTO recipe_vegetables (recipe_id, vegetable_id)
VALUES 
(41, 11),
(42, 11),
(43, 11),
(44, 11);

-- Chèn vào bảng recipe_items
INSERT INTO recipe_items (recipe_id, item_name, quantity, notes, order_index)
VALUES 
-- Canh củ cải trắng nấu tôm
(41, 'Củ cải trắng', '300g', 'Gọt vỏ, rửa sạch, cắt lát mỏng hoặc cắt hạt lựu', 1),
(41, 'Tôm tươi', '200g', 'Bóc vỏ, bỏ đầu, rút chỉ đen', 2),
(41, 'Hành lá', '2 nhánh (10g)', 'Rửa sạch, thái nhỏ', 3),
(41, 'Nước mắm', '1 muỗng canh', 'Chọn loại ngon', 4),
(41, 'Muối', '1/2 muỗng cà phê', 'Điều chỉnh theo khẩu vị', 5),
(41, 'Hạt tiêu', '1/4 muỗng cà phê', 'Rắc khi hoàn thiện', 6),
(41, 'Dầu ăn', '1 muỗng canh', 'Dùng để xào', 7),
(41, 'Nước', '1 lít', 'Nước lọc', 8),
-- Củ cải trắng kho thịt
(42, 'Củ cải trắng', '300g', 'Gọt vỏ, rửa sạch, cắt khúc 3cm', 1),
(42, 'Thịt ba chỉ', '200g', 'Rửa sạch, cắt miếng 3cm', 2),
(42, 'Nước mắm', '2 muỗng canh', 'Chọn loại ngon', 3),
(42, 'Đường', '1 muỗng canh', 'Tạo vị ngọt và màu caramel', 4),
(42, 'Hành tím', '2 củ (20g)', 'Bóc vỏ, băm nhỏ', 5),
(42, 'Hạt tiêu', '1/4 muỗng cà phê', 'Rắc khi hoàn thiện', 6),
(42, 'Dầu ăn', '1 muỗng canh', 'Dùng để phi hành', 7),
(42, 'Nước', '200ml', 'Nước lọc, dùng để kho', 8),
-- Củ cải trắng muối chua
(43, 'Củ cải trắng', '400g', 'Gọt vỏ, rửa sạch, thái lát mỏng', 1),
(43, 'Đường', '2 muỗng canh', 'Tạo vị ngọt', 2),
(43, 'Giấm', '3 muỗng canh', 'Giấm gạo, tạo vị chua', 3),
(43, 'Muối', '1 muỗng cà phê', 'Tăng hương vị', 4),
(43, 'Nước', '200ml', 'Nước ấm, dùng để pha hỗn hợp muối', 5),
(43, 'Tỏi', '2 tép (10g)', 'Thái lát mỏng', 6),
(43, 'Ớt', '1 quả (5g)', 'Thái lát, tùy khẩu vị', 7),
-- Salad củ cải trắng trộn mắm
(44, 'Củ cải trắng', '400g', 'Gọt vỏ, rửa sạch, bào sợi', 1),
(44, 'Nước mắm', '2 muỗng canh', 'Chọn loại ngon', 2),
(44, 'Đường', '1 muỗng canh', 'Tạo vị ngọt', 3),
(44, 'Tỏi', '2 tép (10g)', 'Băm nhỏ', 4),
(44, 'Nước cốt chanh', '1 muỗng canh', 'Tạo vị chua', 5),
(44, 'Ớt', '1 quả (5g)', 'Thái lát', 6),
(44, 'Rau mùi', '10g', 'Rửa sạch, thái nhỏ, trang trí', 7);

-- Chèn vào bảng recipe_steps
INSERT INTO recipe_steps (recipe_id, step_number, instruction_text)
VALUES 
-- Canh củ cải trắng nấu tôm
(41, 1, 'Chuẩn bị nguyên liệu: Gọt vỏ củ cải trắng, rửa sạch, cắt lát mỏng hoặc cắt hạt lựu (1cm). Tôm tươi bóc vỏ, rút chỉ đen, rửa sạch với nước muối loãng. Hành lá rửa sạch, thái nhỏ.'),
(41, 2, 'Xào tôm: Đun nóng 1 muỗng canh dầu ăn trong nồi, cho tôm vào xào 1-2 phút đến khi tôm chuyển màu hồng và săn lại. Vớt tôm ra bát, giữ lại dầu.'),
(41, 3, 'Nấu canh: Đổ 1 lít nước lọc vào nồi, đun sôi. Thêm củ cải trắng, nấu trên lửa vừa 10-12 phút đến khi củ cải mềm. Cho tôm vào, nêm 1 muỗng canh nước mắm và 1/2 muỗng cà phê muối.'),
(41, 4, 'Hoàn thiện canh: Đun thêm 2 phút để gia vị thấm, rắc hành lá và 1/4 muỗng cà phê hạt tiêu. Tắt bếp, múc ra bát, dùng nóng với cơm trắng để thưởng thức vị ngọt thanh.'),
-- Củ cải trắng kho thịt
(42, 1, 'Chuẩn bị nguyên liệu: Gọt vỏ củ cải trắng, rửa sạch, cắt khúc 3cm. Thịt ba chỉ cắt miếng 3cm, rửa sạch. Hành tím bóc vỏ, băm nhỏ.'),
(42, 2, 'Xào thịt và củ cải: Đun nóng 1 muỗng canh dầu ăn trong nồi đất, phi thơm hành tím. Cho thịt ba chỉ vào, xào 3 phút đến khi vàng nhẹ. Thêm củ cải trắng, đảo đều 2 phút.'),
(42, 3, 'Kho củ cải: Thêm 2 muỗng canh nước mắm, 1 muỗng canh đường, và 200ml nước vào nồi. Đun sôi, giảm lửa nhỏ, kho 20-25 phút đến khi củ cải mềm và nước sệt, thịt thấm gia vị.'),
(42, 4, 'Hoàn thiện món kho: Rắc 1/4 muỗng cà phê hạt tiêu, đảo nhẹ. Tắt bếp, múc ra bát, dùng nóng với cơm trắng để thưởng thức vị đậm đà và giòn ngọt.'),
-- Củ cải trắng muối chua
(43, 1, 'Chuẩn bị nguyên liệu: Gọt vỏ củ cải trắng, rửa sạch, thái lát mỏng (0.2cm), ngâm nước lạnh 5 phút, để ráo. Tỏi và ớt thái lát.'),
(43, 2, 'Pha nước muối: Hòa 2 muỗng canh đường, 1 muỗng cà phê muối, 3 muỗng canh giấm, và 200ml nước ấm trong bát. Khuấy đều để đường và muối tan hoàn toàn.'),
(43, 3, 'Ngâm củ cải: Xếp củ cải trắng, tỏi, và ớt vào lọ thủy tinh sạch. Đổ nước muối vào, đảm bảo ngập củ cải. Đậy kín, để ở nhiệt độ phòng 1-2 ngày cho lên men nhẹ.'),
(43, 4, 'Hoàn thiện món muối: Sau khi muối chua, bảo quản lọ trong tủ lạnh, dùng trong 1-2 tuần. Dọn ra đĩa, ăn kèm thịt kho hoặc cá chiên để thưởng thức vị giòn chua ngọt.'),
-- Salad củ cải trắng trộn mắm
(44, 1, 'Chuẩn bị nguyên liệu: Gọt vỏ củ cải trắng, rửa sạch, bào sợi mỏng, ngâm nước lạnh 5 phút cho giòn, để ráo. Tỏi băm nhỏ, ớt thái lát, rau mùi thái nhỏ.'),
(44, 2, 'Pha nước mắm: Trộn 2 muỗng canh nước mắm, 1 muỗng canh đường, 1 muỗng canh nước cốt chanh, tỏi băm, và ớt trong bát. Khuấy đều để đường tan, tạo vị chua ngọt cay.'),
(44, 3, 'Trộn salad: Cho củ cải trắng bào sợi vào bát lớn, đổ nước mắm pha vào, trộn đều để thấm gia vị. Để 5 phút cho ngấm, thỉnh thoảng trộn lại.'),
(44, 4, 'Hoàn thiện salad: Rắc rau mùi lên trên, trộn nhẹ. Dọn ra đĩa, dùng làm món khai vị hoặc ăn kèm thịt nướng, cá chiên để thưởng thức vị giòn chua ngọt.');

-- --------------------------------------
-- 12. Củ dền (class_index: 11)
-- --------------------------------------

-- Chèn vào bảng vegetables
INSERT INTO vegetables (class_index, vietnamese_name, scientific_name, description, nutritional_info)
VALUES (
    11, 
    'Củ dền', 
    'Beta vulgaris', 
    'Củ dền là một loại củ thuộc họ Rau dền (Amaranthaceae), được trồng phổ biến ở Việt Nam, đặc biệt ở các vùng khí hậu mát như Đà Lạt, Lâm Đồng. Củ có hình tròn hoặc oval, vỏ và thịt màu đỏ tím, vị ngọt đậm. Củ dền được dùng trong các món canh, salad, nước ép, hoặc muối chua, là nguyên liệu quen thuộc trong ẩm thực Việt Nam nhờ màu sắc đẹp và dinh dưỡng cao.',
    'Củ dền giàu folate, mangan, kali, và chất xơ. Rau này chứa betalain, một chất chống oxy hóa mạnh, giúp giảm viêm và bảo vệ tim mạch. Củ dền hỗ trợ sức khỏe gan, cải thiện lưu thông máu, và có lượng calo thấp, phù hợp cho chế độ ăn lành mạnh.'
);

-- Chèn vào bảng vegetable_nutritional_points
INSERT INTO vegetable_nutritional_points (vegetable_id, point_text, display_order)
VALUES 
(12, 'Folate (20% DV trong 100g): Hỗ trợ phát triển tế bào, đặc biệt quan trọng cho phụ nữ mang thai.', 1),
(12, 'Betalain: Chất chống oxy hóa giúp giảm viêm, bảo vệ tim mạch, và hỗ trợ giải độc gan.', 2),
(12, 'Kali (325mg trong 100g): Giúp cân bằng huyết áp, hỗ trợ chức năng cơ bắp, và giảm nguy cơ đột quỵ.', 3),
(12, 'Chất xơ (2.8g trong 100g): Cải thiện tiêu hóa, ngăn ngừa táo bón, và hỗ trợ kiểm soát đường huyết.', 4),
(12, 'Mangan (16% DV trong 100g): Hỗ trợ chuyển hóa năng lượng và sức khỏe xương.', 5),
(12, 'Ít calo (43 kcal trong 100g): Phù hợp cho chế độ ăn kiêng, giúp kiểm soát cân nặng mà vẫn cung cấp dinh dưỡng.', 6);

-- Chèn vào bảng vegetable_select_points
INSERT INTO vegetable_select_points (vegetable_id, point_text, display_order)
VALUES 
(12, 'Vỏ đỏ tím, bóng mịn: Chọn củ dền có vỏ màu đỏ tím đậm, không có vết nứt hoặc thâm.', 1),
(12, 'Cứng, nặng tay: Củ dền tươi có độ cứng khi ấn, không mềm, nặng so với kích thước.', 2),
(12, 'Lá xanh, tươi nếu còn: Nếu có lá, lá phải xanh, không vàng úa, cho thấy củ mới hái.', 3),
(12, 'Kích thước vừa: Củ dền đường kính 5-8cm thường ngọt, ít xơ, và dễ chế biến.', 4),
(12, 'Tránh củ có mùi lạ: Củ dền tươi có mùi đất nhẹ, tránh loại có mùi chua hoặc hôi.', 5);

-- Chèn vào bảng vegetable_preserve_points
INSERT INTO vegetable_preserve_points (vegetable_id, point_text, display_order)
VALUES 
(12, 'Bọc kín trong ngăn mát: Đặt củ dền trong túi nhựa đục lỗ, bảo quản ở 0-4°C, giữ tươi 3-4 tuần.', 1),
(12, 'Cắt bỏ lá trước khi bảo quản: Lá hút ẩm, làm củ dền nhanh héo, nên cắt bỏ nếu có.', 2),
(12, 'Đông lạnh để bảo quản lâu: Gọt vỏ, cắt miếng, chần sơ 2-3 phút, để ráo, cho vào túi zip, đông lạnh ở -18°C, dùng trong 6-8 tháng.', 3),
(12, 'Kiểm tra định kỳ: Loại bỏ củ bị mềm hoặc có đốm thâm để tránh lây lan hư hỏng.', 4),
(12, 'Tránh để gần táo, lê: Các trái cây này tiết ethylene, làm củ dền nhanh hỏng.', 5);

-- Chèn vào bảng recipes
INSERT INTO recipes (name, description, prep_time, cook_time, servings)
VALUES 
('Canh củ dền nấu thịt', 'Món canh ngọt thanh, phổ biến trong bữa cơm gia đình Việt Nam, với củ dền mềm ngọt và thịt heo, tạo màu sắc hấp dẫn.', '10 phút', '25 phút', '4 người'),
('Salad củ dền trộn mắm', 'Món salad tươi mát, phổ biến trong ẩm thực Việt Nam, với củ dền bào sợi trộn nước mắm chua ngọt, là món khai vị hoặc ăn kèm.', '15 phút', '10 phút', '4 người'),
('Củ dền muối chua', 'Món muối chua truyền thống Việt Nam, với củ dền giòn, chua ngọt, thường dùng làm món ăn kèm hoặc khai vị.', '15 phút', '0 phút', '4 người'),
('Củ dền kho tộ', 'Món kho đậm đà, quen thuộc trong ẩm thực Việt Nam, với củ dền thấm vị nước mắm và thịt heo, là món chính trong bữa cơm.', '15 phút', '30 phút', '4 người');

-- Chèn vào bảng recipe_vegetables
INSERT INTO recipe_vegetables (recipe_id, vegetable_id)
VALUES 
(45, 12),
(46, 12),
(47, 12),
(48, 12);

-- Chèn vào bảng recipe_items
INSERT INTO recipe_items (recipe_id, item_name, quantity, notes, order_index)
VALUES 
-- Canh củ dền nấu thịt
(45, 'Củ dền', '300g', 'Gọt vỏ, rửa sạch, cắt hạt lựu hoặc lát mỏng', 1),
(45, 'Thịt heo nạc', '150g', 'Thái miếng mỏng, ướp với 1/2 muỗng cà phê muối', 2),
(45, 'Hành lá', '2 nhánh (10g)', 'Rửa sạch, thái nhỏ', 3),
(45, 'Nước mắm', '1 muỗng canh', 'Chọn loại ngon', 4),
(45, 'Muối', '1/2 muỗng cà phê', 'Điều chỉnh theo khẩu vị', 5),
(45, 'Hạt tiêu', '1/4 muỗng cà phê', 'Rắc khi hoàn thiện', 6),
(45, 'Dầu ăn', '1 muỗng canh', 'Dùng để phi hành', 7),
(45, 'Nước', '1 lít', 'Nước lọc', 8),
-- Salad củ dền trộn mắm
(46, 'Củ dền', '400g', 'Gọt vỏ, rửa sạch, luộc chín, bào sợi', 1),
(46, 'Nước mắm', '2 muỗng canh', 'Chọn loại ngon', 2),
(46, 'Đường', '1 muỗng canh', 'Tạo vị ngọt', 3),
(46, 'Tỏi', '2 tép (10g)', 'Băm nhỏ', 4),
(46, 'Nước cốt chanh', '1 muỗng canh', 'Tạo vị chua', 5),
(46, 'Ớt', '1 quả (5g)', 'Thái lát', 6),
(46, 'Rau mùi', '10g', 'Rửa sạch, thái nhỏ, trang trí', 7),
-- Củ dền muối chua
(47, 'Củ dền', '400g', 'Gọt vỏ, rửa sạch, thái lát mỏng', 1),
(47, 'Đường', '2 muỗng canh', 'Tạo vị ngọt', 2),
(47, 'Giấm', '3 muỗng canh', 'Giấm gạo, tạo vị chua', 3),
(47, 'Muối', '1 muỗng cà phê', 'Tăng hương vị', 4),
(47, 'Nước', '200ml', 'Nước ấm, dùng để pha hỗn hợp muối', 5),
(47, 'Tỏi', '2 tép (10g)', 'Thái lát mỏng', 6),
(47, 'Ớt', '1 quả (5g)', 'Thái lát, tùy khẩu vị', 7),
-- Củ dền kho tộ
(48, 'Củ dền', '300g', 'Gọt vỏ, rửa sạch, cắt khúc 3cm', 1),
(48, 'Thịt ba chỉ', '200g', 'Rửa sạch, cắt miếng 3cm', 2),
(48, 'Nước mắm', '2 muỗng canh', 'Chọn loại ngon', 3),
(48, 'Đường', '1 muỗng canh', 'Tạo vị ngọt và màu caramel', 4),
(48, 'Hành tím', '2 củ (20g)', 'Bóc vỏ, băm nhỏ', 5),
(48, 'Hạt tiêu', '1/4 muỗng cà phê', 'Rắc khi hoàn thiện', 6),
(48, 'Dầu ăn', '1 muỗng canh', 'Dùng để phi hành', 7),
(48, 'Nước', '200ml', 'Nước lọc, dùng để kho', 8);

-- Chèn vào bảng recipe_steps
INSERT INTO recipe_steps (recipe_id, step_number, instruction_text)
VALUES 
-- Canh củ dền nấu thịt
(45, 1, 'Chuẩn bị nguyên liệu: Gọt vỏ củ dền, rửa sạch, cắt hạt lựu hoặc lát mỏng (1cm). Thịt heo thái miếng mỏng, ướp với 1/2 muỗng cà phê muối trong 10 phút. Hành lá rửa sạch, thái nhỏ.'),
(45, 2, 'Xào thịt: Đun nóng 1 muỗng canh dầu ăn trong nồi, phi thơm đầu hành lá. Cho thịt heo vào, xào 2-3 phút đến khi thịt săn lại và thơm.'),
(45, 3, 'Nấu canh: Đổ 1 lít nước lọc vào nồi, đun sôi. Thêm củ dền, giảm lửa vừa, nấu 15-20 phút đến khi củ dền mềm. Nêm 1 muỗng canh nước mắm và 1/2 muỗng cà phê muối.'),
(45, 4, 'Hoàn thiện canh: Đun thêm 2 phút để gia vị thấm, rắc hành lá và 1/4 muỗng cà phê hạt tiêu. Tắt bếp, múc ra bát, dùng nóng với cơm trắng để thưởng thức vị ngọt thanh và màu sắc đẹp.'),
-- Salad củ dền trộn mắm
(46, 1, 'Chuẩn bị nguyên liệu: Gọt vỏ củ dền, rửa sạch, luộc trong nước sôi 8-10 phút đến khi mềm vừa, để nguội, bào sợi mỏng. Tỏi băm nhỏ, ớt thái lát, rau mùi thái nhỏ.'),
(46, 2, 'Pha nước mắm: Trộn 2 muỗng canh nước mắm, 1 muỗng canh đường, 1 muỗng canh nước cốt chanh, tỏi băm, và ớt trong bát. Khuấy đều để đường tan, tạo vị chua ngọt cay.'),
(46, 3, 'Trộn salad: Cho củ dền bào sợi vào bát lớn, đổ nước mắm pha vào, trộn đều để thấm gia vị. Để 5 phút cho ngấm, thỉnh thoảng trộn lại.'),
(46, 4, 'Hoàn thiện salad: Rắc rau mùi lên trên, trộn nhẹ. Dọn ra đĩa, dùng làm món khai vị hoặc ăn kèm thịt nướng, cá chiên để thưởng thức vị giòn ngọt và chua cay.'),
-- Củ dền muối chua
(47, 1, 'Chuẩn bị nguyên liệu: Gọt vỏ củ dền, rửa sạch, thái lát mỏng (0.2cm), ngâm nước lạnh 5 phút, để ráo. Tỏi và ớt thái lát.'),
(47, 2, 'Pha nước muối: Hòa 2 muỗng canh đường, 1 muỗng cà phê muối, 3 muỗng canh giấm, và 200ml nước ấm trong bát. Khuấy đều để đường và muối tan hoàn toàn.'),
(47, 3, 'Ngâm củ dền: Xếp củ dền, tỏi, và ớt vào lọ thủy tinh sạch. Đổ nước muối vào, đảm bảo ngập củ dền. Đậy kín, để ở nhiệt độ phòng 1-2 ngày cho lên men nhẹ.'),
(47, 4, 'Hoàn thiện món muối: Sau khi muối chua, bảo quản lọ trong tủ lạnh, dùng trong 1-2 tuần. Dọn ra đĩa, ăn kèm thịt kho hoặc cá chiên để thưởng thức vị giòn chua ngọt.'),
-- Củ dền kho tộ
(48, 1, 'Chuẩn bị nguyên liệu: Gọt vỏ củ dền, rửa sạch, cắt khúc 3cm. Thịt ba chỉ cắt miếng 3cm, rửa sạch. Hành tím bóc vỏ, băm nhỏ.'),
(48, 2, 'Xào thịt và củ dền: Đun nóng 1 muỗng canh dầu ăn trong nồi đất, phi thơm hành tím. Cho thịt ba chỉ vào, xào 3 phút đến khi vàng nhẹ. Thêm củ dền, đảo đều 2 phút.'),
(48, 3, 'Kho củ dền: Thêm 2 muỗng canh nước mắm, 1 muỗng canh đường, và 200ml nước vào nồi. Đun sôi, giảm lửa nhỏ, kho 20-25 phút đến khi củ dền mềm và nước sệt, thịt thấm gia vị.'),
(48, 4, 'Hoàn thiện món kho: Rắc 1/4 muỗng cà phê hạt tiêu, đảo nhẹ. Tắt bếp, múc ra bát, dùng nóng với cơm trắng để thưởng thức vị đậm đà và ngọt thơm.');

-- --------------------------------------
-- 13. Gừng (class_index: 12)
-- --------------------------------------

-- Chèn vào bảng vegetables
INSERT INTO vegetables (class_index, vietnamese_name, scientific_name, description, nutritional_info)
VALUES (
    12, 
    'Gừng', 
    'Zingiber officinale', 
    'Gừng là một loại củ thuộc họ Zingiberaceae, được trồng phổ biến ở Việt Nam, đặc biệt ở các vùng đồng bằng và miền núi. Củ có hình dạng bất định, vỏ nâu nhạt, thịt vàng nhạt, mùi thơm cay nồng. Gừng được dùng làm gia vị, thuốc dân gian, hoặc chế biến trong các món kho, canh, xào, và trà, là nguyên liệu không thể thiếu trong ẩm thực Việt Nam nhờ hương vị đặc trưng và công dụng sức khỏe.',
    'Gừng giàu gingerol, một hợp chất chống oxy hóa và chống viêm, hỗ trợ tiêu hóa, giảm buồn nôn, và tăng cường miễn dịch. Gừng cũng chứa vitamin C, magiê, kali, và có lượng calo thấp, phù hợp cho chế độ ăn lành mạnh. Gừng giúp giảm đau cơ, cải thiện tuần hoàn máu, và hỗ trợ điều trị cảm lạnh.'
);

-- Chèn vào bảng vegetable_nutritional_points
INSERT INTO vegetable_nutritional_points (vegetable_id, point_text, display_order)
VALUES 
(13, 'Gingerol: Hợp chất chống oxy hóa và chống viêm, giúp giảm buồn nôn, cải thiện tiêu hóa, và giảm nguy cơ bệnh mãn tính.', 1),
(13, 'Vitamin C (6% DV trong 100g): Tăng cường miễn dịch và hỗ trợ chữa lành vết thương.', 2),
(13, 'Kali (415mg trong 100g): Giúp cân bằng huyết áp, hỗ trợ chức năng cơ bắp, và giảm nguy cơ đột quỵ.', 3),
(13, 'Magiê (12% DV trong 100g): Hỗ trợ chức năng thần kinh, cơ bắp, và sức khỏe xương.', 4),
(13, 'Chống viêm tự nhiên: Gừng giúp giảm đau cơ, viêm khớp, và hỗ trợ điều trị cảm lạnh, cúm.', 5),
(13, 'Ít calo (80 kcal trong 100g): Phù hợp cho chế độ ăn lành mạnh, hỗ trợ kiểm soát cân nặng.', 6);

-- Chèn vào bảng vegetable_select_points
INSERT INTO vegetable_select_points (vegetable_id, point_text, display_order)
VALUES 
(13, 'Vỏ mịn, màu nâu nhạt: Chọn gừng có vỏ bóng, không nhăn hoặc khô, màu nâu vàng tươi.', 1),
(13, 'Cứng, không mềm: Gừng tươi có độ cứng khi ấn, không mềm hoặc có dấu hiệu héo.', 2),
(13, 'Mùi thơm cay nồng: Gừng tươi có mùi thơm đặc trưng, tránh loại có mùi chua hoặc mốc.', 3),
(13, 'Thịt vàng sáng: Cắt thử, thịt gừng phải vàng nhạt, mọng nước, không xơ hoặc thâm.', 4),
(13, 'Kích thước vừa: Củ gừng dài 5-10cm, không quá già để tránh xơ, dễ chế biến hơn.', 5);

-- Chèn vào bảng vegetable_preserve_points
INSERT INTO vegetable_preserve_points (vegetable_id, point_text, display_order)
VALUES 
(13, 'Bảo quản ở nhiệt độ phòng: Để gừng ở nơi thoáng mát, khô ráo, giữ tươi được 2-3 tuần.', 1),
(13, 'Bọc kín trong ngăn mát: Đặt gừng trong túi nhựa hoặc khăn giấy, bảo quản ở 4-7°C, giữ tươi 1-2 tháng.', 2),
(13, 'Đông lạnh để bảo quản lâu: Gọt vỏ, cắt lát hoặc băm nhỏ, cho vào túi zip, đông lạnh ở -18°C, dùng trong 6 tháng.', 3),
(13, 'Ngâm giấm hoặc rượu: Cắt lát mỏng, ngâm trong giấm hoặc rượu, bảo quản trong tủ lạnh, dùng trong 3-4 tháng.', 4),
(13, 'Kiểm tra định kỳ: Loại bỏ phần gừng bị mốc hoặc mềm để tránh lây lan hư hỏng.', 5);

-- Chèn vào bảng recipes
INSERT INTO recipes (name, description, prep_time, cook_time, servings)
VALUES 
('Gà kho gừng', 'Món kho đậm đà, phổ biến trong ẩm thực Việt Nam, với thịt gà thấm vị gừng cay nồng và nước mắm, là món chính trong bữa cơm gia đình.', '15 phút', '30 phút', '4 người'),
('Canh cá nấu gừng', 'Món canh thanh nhẹ, quen thuộc trong bữa cơm Việt Nam, với gừng giúp khử mùi tanh và tạo vị ấm, bổ dưỡng.', '10 phút', '20 phút', '4 người'),
('Trà gừng mật ong', 'Thức uống truyền thống Việt Nam, với gừng cay ấm kết hợp mật ong ngọt, giúp làm ấm cơ thể và hỗ trợ điều trị cảm lạnh.', '10 phút', '10 phút', '2 người'),
('Thịt bò xào gừng', 'Món xào thơm ngon, phổ biến trong ẩm thực Việt Nam, với gừng tạo vị cay nhẹ và thịt bò mềm, là món chính hấp dẫn.', '15 phút', '10 phút', '4 người');

-- Chèn vào bảng recipe_vegetables
INSERT INTO recipe_vegetables (recipe_id, vegetable_id)
VALUES 
(49, 13),
(50, 13),
(51, 13),
(52, 13);

-- Chèn vào bảng recipe_items
INSERT INTO recipe_items (recipe_id, item_name, quantity, notes, order_index)
VALUES 
-- Gà kho gừng
(49, 'Gừng', '50g', 'Gọt vỏ, thái sợi hoặc đập dập', 1),
(49, 'Đùi gà', '500g', 'Rửa sạch, chặt miếng vừa ăn', 2),
(49, 'Nước mắm', '2 muỗng canh', 'Chọn loại ngon', 3),
(49, 'Đường', '1 muỗng canh', 'Tạo vị ngọt và màu caramel', 4),
(49, 'Hành tím', '2 củ (20g)', 'Bóc vỏ, băm nhỏ', 5),
(49, 'Hạt tiêu', '1/4 muỗng cà phê', 'Rắc khi hoàn thiện', 6),
(49, 'Dầu ăn', '2 muỗng canh', 'Dùng để xào', 7),
(49, 'Nước', '200ml', 'Nước lọc, dùng để kho', 8),
-- Canh cá nấu gừng
(50, 'Gừng', '30g', 'Gọt vỏ, thái lát mỏng', 1),
(50, 'Cá lóc', '400g', 'Làm sạch, cắt khúc, ướp với 1/2 muỗng cà phê muối', 2),
(50, 'Hành lá', '2 nhánh (10g)', 'Rửa sạch, thái nhỏ', 3),
(50, 'Nước mắm', '1 muỗng canh', 'Chọn loại ngon', 4),
(50, 'Muối', '1/2 muỗng cà phê', 'Điều chỉnh theo khẩu vị', 5),
(50, 'Hạt tiêu', '1/4 muỗng cà phê', 'Rắc khi hoàn thiện', 6),
(50, 'Dầu ăn', '1 muỗng canh', 'Dùng để phi hành', 7),
(50, 'Nước', '1 lít', 'Nước lọc', 8),
-- Trà gừng mật ong
(51, 'Gừng', '50g', 'Gọt vỏ, thái lát mỏng hoặc đập dập', 1),
(51, 'Mật ong', '2 muỗng canh', 'Chọn loại nguyên chất', 2),
(51, 'Nước', '500ml', 'Nước lọc', 3),
(51, 'Chanh', '1/2 quả (10g)', 'Vắt lấy nước cốt, tùy chọn', 4),
-- Thịt bò xào gừng
(52, 'Gừng', '40g', 'Gọt vỏ, thái sợi mỏng', 1),
(52, 'Thịt bò', '300g', 'Thái lát mỏng, ướp với 1/2 muỗng cà phê muối, 1/4 muỗng cà phê tiêu', 2),
(52, 'Hành tây', '1 củ (100g)', 'Thái múi cau', 3),
(52, 'Dầu ăn', '2 muỗng canh', 'Dùng để xào', 4),
(52, 'Nước mắm', '1 muỗng canh', 'Tăng hương vị', 5),
(52, 'Đường', '1/2 muỗng cà phê', 'Tạo vị cân bằng', 6),
(52, 'Hạt tiêu', '1/4 muỗng cà phê', 'Rắc khi hoàn thiện', 7),
(52, 'Hành lá', '1 nhánh (5g)', 'Thái nhỏ, trang trí', 8);

-- Chèn vào bảng recipe_steps
INSERT INTO recipe_steps (recipe_id, step_number, instruction_text)
VALUES 
-- Gà kho gừng
(49, 1, 'Chuẩn bị nguyên liệu: Rửa sạch đùi gà, chặt miếng vừa ăn, ướp với 1 muỗng canh nước mắm trong 10 phút. Gừng gọt vỏ, thái sợi hoặc đập dập. Hành tím băm nhỏ.'),
(49, 2, 'Xào gà: Đun nóng 2 muỗng canh dầu ăn trong nồi, phi thơm hành tím và gừng. Cho gà vào, xào trên lửa vừa 5 phút đến khi gà vàng nhẹ và thơm.'),
(49, 3, 'Kho gà: Thêm 1 muỗng canh nước mắm, 1 muỗng canh đường, và 200ml nước vào nồi. Đun sôi, giảm lửa nhỏ, kho 20-25 phút đến khi gà mềm và nước sệt, thấm gia vị.'),
(49, 4, 'Hoàn thiện món kho: Rắc 1/4 muỗng cà phê hạt tiêu, đảo nhẹ. Tắt bếp, múc ra bát, dùng nóng với cơm trắng để thưởng thức vị cay nồng của gừng và thịt gà đậm đà.'),
-- Canh cá nấu gừng
(50, 1, 'Chuẩn bị nguyên liệu: Làm sạch cá lóc, cắt khúc, ướp với 1/2 muỗng cà phê muối trong 10 phút. Gừng gọt vỏ, thái lát mỏng. Hành lá rửa sạch, thái nhỏ.'),
(50, 2, 'Phi gừng: Đun nóng 1 muỗng canh dầu ăn trong nồi, phi thơm gừng lát 1 phút để gừng tiết mùi, giúp khử mùi tanh của cá.'),
(50, 3, 'Nấu canh: Đổ 1 lít nước lọc vào nồi, đun sôi. Thêm cá lóc, giảm lửa vừa, nấu 10-12 phút đến khi cá chín mềm. Nêm 1 muỗng canh nước mắm và 1/2 muỗng cà phê muối.'),
(50, 4, 'Hoàn thiện canh: Rắc hành lá và 1/4 muỗng cà phê hạt tiêu, đun thêm 1 phút. Tắt bếp, múc ra bát, dùng nóng với cơm trắng để thưởng thức vị ngọt thanh và ấm của gừng.'),
-- Trà gừng mật ong
(51, 1, 'Chuẩn bị nguyên liệu: Gừng gọt vỏ, thái lát mỏng hoặc đập dập để tiết tinh dầu. Chanh vắt lấy nước cốt (tùy chọn). Đun sôi 500ml nước lọc.'),
(51, 2, 'Nấu trà gừng: Cho gừng vào nồi nước sôi, giảm lửa nhỏ, đun 5-7 phút để gừng tiết vị cay và thơm. Tắt bếp, để nguội nhẹ (khoảng 60°C).'),
(51, 3, 'Pha mật ong: Lọc nước gừng qua rây, đổ vào cốc. Thêm 2 muỗng canh mật ong, khuấy đều để mật ong tan. Thêm nước cốt chanh nếu muốn vị chua nhẹ.'),
(51, 4, 'Hoàn thiện trà: Dọn trà gừng mật ong ra cốc, uống nóng để làm ấm cơ thể, hỗ trợ tiêu hóa, hoặc giảm triệu chứng cảm lạnh. Có thể thêm vài lát gừng tươi để trang trí.'),
-- Thịt bò xào gừng
(52, 1, 'Chuẩn bị nguyên liệu: Thịt bò thái lát mỏng, ướp với 1/2 muỗng cà phê muối, 1/4 muỗng cà phê tiêu trong 10 phút. Gừng gọt vỏ, thái sợi mỏng. Hành tây thái múi cau, hành lá thái nhỏ.'),
(52, 2, 'Xào thịt bò: Đun nóng 1 muỗng canh dầu ăn trong chảo, cho thịt bò vào, xào trên lửa lớn 1-2 phút đến khi tái. Vớt thịt bò ra, để riêng.'),
(52, 3, 'Xào gừng và hành tây: Thêm 1 muỗng canh dầu ăn vào chảo, phi thơm gừng sợi. Cho hành tây vào, xào 2 phút đến khi hành tây mềm. Nêm 1 muỗng canh nước mắm và 1/2 muỗng cà phê đường.'),
(52, 4, 'Hoàn thiện món xào: Cho thịt bò vào chảo, đảo đều 1 phút để thấm gia vị. Rắc hành lá và 1/4 muỗng cà phê hạt tiêu, tắt bếp, chuyển ra đĩa. Dùng nóng với cơm trắng để thưởng thức vị cay thơm.');

-- --------------------------------------
-- 14. Hành tím (class_index: 13)
-- --------------------------------------

-- Chèn vào bảng vegetables
INSERT INTO vegetables (class_index, vietnamese_name, scientific_name, description, nutritional_info)
VALUES (
    13, 
    'Hành tím', 
    'Allium cepa var. aggregatum', 
    'Hành tím là một loại củ thuộc họ Hành (Amaryllidaceae), được trồng phổ biến ở Việt Nam, đặc biệt ở các vùng như Lý Sơn, Quảng Ngãi. Củ nhỏ, vỏ màu tím đỏ, thịt trắng pha tím, vị cay nhẹ và thơm. Hành tím được dùng làm gia vị trong các món xào, kho, canh, hoặc làm hành phi, là nguyên liệu không thể thiếu trong ẩm thực Việt Nam nhờ hương vị đặc trưng và tính linh hoạt.',
    'Hành tím giàu vitamin C, chất xơ, flavonoid, và các hợp chất lưu huỳnh. Rau này có đặc tính chống oxy hóa, hỗ trợ miễn dịch, giảm viêm, và cải thiện sức khỏe tim mạch. Hành tím cũng giúp điều hòa đường huyết và có lượng calo thấp, phù hợp cho chế độ ăn lành mạnh.'
);

-- Chèn vào bảng vegetable_nutritional_points
INSERT INTO vegetable_nutritional_points (vegetable_id, point_text, display_order)
VALUES 
(14, 'Vitamin C (12% DV trong 100g): Tăng cường miễn dịch, hỗ trợ sản xuất collagen, và bảo vệ tế bào khỏi tổn thương oxy hóa.', 1),
(14, 'Flavonoid (quercetin): Chất chống oxy hóa mạnh, giúp giảm viêm, bảo vệ tim mạch, và giảm nguy cơ ung thư.', 2),
(14, 'Chất xơ (1.7g trong 100g): Cải thiện tiêu hóa, ngăn ngừa táo bón, và hỗ trợ kiểm soát đường huyết.', 3),
(14, 'Hợp chất lưu huỳnh: Hỗ trợ giải độc cơ thể, cải thiện sức khỏe gan, và có đặc tính kháng khuẩn.', 4),
(14, 'Kali (146mg trong 100g): Giúp cân bằng huyết áp và hỗ trợ chức năng cơ bắp.', 5),
(14, 'Ít calo (40 kcal trong 100g): Phù hợp cho chế độ ăn kiêng, giúp kiểm soát cân nặng mà vẫn cung cấp dinh dưỡng.', 6);

-- Chèn vào bảng vegetable_select_points
INSERT INTO vegetable_select_points (vegetable_id, point_text, display_order)
VALUES 
(14, 'Vỏ tím đỏ, bóng: Chọn hành tím có vỏ khô, màu tím đỏ sáng, không mốc hoặc ướt.', 1),
(14, 'Cứng, không mọc mầm: Hành tím tươi có độ cứng khi ấn, không mềm hoặc có mầm xanh.', 2),
(14, 'Kích thước vừa: Hành tím đường kính 2-4cm thường thơm, dễ bóc vỏ, và ít cay hơn củ nhỏ.', 3),
(14, 'Mùi thơm nhẹ: Hành tím tươi có mùi cay nhẹ, tránh loại có mùi hôi hoặc chua.', 4),
(14, 'Không có vết thâm: Kiểm tra củ không có đốm thâm hoặc dấu hiệu hư hỏng.', 5);

-- Chèn vào bảng vegetable_preserve_points
INSERT INTO vegetable_preserve_points (vegetable_id, point_text, display_order)
VALUES 
(14, 'Bảo quản nơi thoáng mát: Để hành tím ở nơi khô ráo, thoáng khí, tránh ánh nắng trực tiếp, giữ tươi 1-2 tháng.', 1),
(14, 'Dùng túi lưới: Đặt hành tím trong túi lưới hoặc rổ để thông thoáng, tránh ẩm mốc.', 2),
(14, 'Đông lạnh để bảo quản lâu: Bóc vỏ, băm nhỏ hoặc thái lát, cho vào túi zip, đông lạnh ở -18°C, dùng trong 6 tháng.', 3),
(14, 'Kiểm tra định kỳ: Loại bỏ củ bị mọc mầm, mềm, hoặc mốc để tránh lây lan hư hỏng.', 4),
(14, 'Tránh bảo quản trong tủ lạnh lâu: Độ ẩm cao trong tủ lạnh dễ làm hành tím mềm và mốc.', 5);

-- Chèn vào bảng recipes
INSERT INTO recipes (name, description, prep_time, cook_time, servings)
VALUES 
('Thịt kho hành tím', 'Món kho đậm đà, truyền thống trong ẩm thực Việt Nam, với hành tím tạo mùi thơm đặc trưng và thịt heo thấm vị, là món chính trong bữa cơm.', '15 phút', '40 phút', '4 người'),
('Cá chiên hành tím', 'Món cá chiên giòn, phổ biến trong ẩm thực Việt Nam, với hành tím phi thơm làm topping, là món chính hoặc món phụ.', '10 phút', '15 phút', '4 người'),
('Nước mắm chấm hành tím', 'Nước chấm truyền thống Việt Nam, với hành tím tạo vị thơm và cay nhẹ, dùng kèm các món luộc, chiên, hoặc nướng.', '10 phút', '0 phút', '4 người'),
('Gỏi gà hành tím', 'Món gỏi tươi mát, phổ biến trong ẩm thực Việt Nam, với hành tím thái mỏng trộn gà xé, là món khai vị hoặc ăn kèm.', '15 phút', '10 phút', '4 người');

-- Chèn vào bảng recipe_vegetables
INSERT INTO recipe_vegetables (recipe_id, vegetable_id)
VALUES 
(53, 14),
(54, 14),
(55, 14),
(56, 14);

-- Chèn vào bảng recipe_items
INSERT INTO recipe_items (recipe_id, item_name, quantity, notes, order_index)
VALUES 
-- Thịt kho hành tím
(53, 'Hành tím', '100g', 'Bóc vỏ, băm nhỏ hoặc thái lát mỏng', 1),
(53, 'Thịt ba chỉ', '300g', 'Rửa sạch, cắt miếng 3cm', 2),
(53, 'Nước mắm', '2 muỗng canh', 'Chọn loại ngon', 3),
(53, 'Đường', '1 muỗng canh', 'Tạo vị ngọt và màu caramel', 4),
(53, 'Hạt tiêu', '1/4 muỗng cà phê', 'Rắc khi hoàn thiện', 5),
(53, 'Dầu ăn', '1 muỗng canh', 'Dùng để phi hành', 6),
(53, 'Nước', '300ml', 'Nước lọc, dùng để kho', 7),
-- Cá chiên hành tím
(54, 'Hành tím', '80g', 'Bóc vỏ, thái lát mỏng', 1),
(54, 'Cá rô phi', '400g', 'Làm sạch, khứa hai bên, ướp với 1/2 muỗng cà phê muối', 2),
(54, 'Dầu ăn', '4 muỗng canh', 'Dùng để chiên cá và phi hành', 3),
(54, 'Nước mắm', '1 muỗng canh', 'Dùng để chấm, tùy chọn', 4),
(54, 'Hạt tiêu', '1/4 muỗng cà phê', 'Rắc khi hoàn thiện', 5),
(54, 'Hành lá', '1 nhánh (5g)', 'Thái nhỏ, trang trí', 6),
-- Nước mắm chấm hành tím
(55, 'Hành tím', '50g', 'Bóc vỏ, thái lát mỏng hoặc băm nhỏ', 1),
(55, 'Nước mắm', '3 muỗng canh', 'Chọn loại ngon', 2),
(55, 'Đường', '1 muỗng canh', 'Tạo vị ngọt', 3),
(55, 'Nước cốt chanh', '1 muỗng canh', 'Tạo vị chua', 4),
(55, 'Tỏi', '2 tép (10g)', 'Băm nhỏ', 5),
(55, 'Ớt', '1 quả (5g)', 'Thái lát', 6),
(55, 'Nước', '2 muỗng canh', 'Nước ấm, dùng để pha', 7),
-- Gỏi gà hành tím
(56, 'Hành tím', '100g', 'Bóc vỏ, thái lát mỏng, ngâm nước lạnh 5 phút để bớt hăng', 1),
(56, 'Ức gà', '200g', 'Luộc chín, xé sợi', 2),
(56, 'Nước mắm', '2 muỗng canh', 'Chọn loại ngon', 3),
(56, 'Đường', '1 muỗng canh', 'Tạo vị ngọt', 4),
(56, 'Nước cốt chanh', '1 muỗng canh', 'Tạo vị chua', 5),
(56, 'Rau răm', '10g', 'Rửa sạch, thái nhỏ, trang trí', 6),
(56, 'Ớt', '1 quả (5g)', 'Thái lát', 7);

-- Chèn vào bảng recipe_steps
INSERT INTO recipe_steps (recipe_id, step_number, instruction_text)
VALUES 
-- Thịt kho hành tím
(53, 1, 'Chuẩn bị nguyên liệu: Thịt ba chỉ rửa sạch, cắt miếng 3cm. Hành tím bóc vỏ, băm nhỏ hoặc thái lát mỏng.'),
(53, 2, 'Phi hành: Đun nóng 1 muỗng canh dầu ăn trong nồi, phi thơm hành tím đến khi vàng nhẹ và dậy mùi thơm.'),
(53, 3, 'Kho thịt: Cho thịt ba chỉ vào nồi, xào 3-4 phút đến khi vàng nhẹ. Thêm 2 muỗng canh nước mắm, 1 muỗng canh đường, và 300ml nước. Đun sôi, giảm lửa nhỏ, kho 30-35 phút đến khi thịt mềm và nước sệt.'),
(53, 4, 'Hoàn thiện món kho: Rắc 1/4 muỗng cà phê hạt tiêu, đảo nhẹ. Tắt bếp, múc ra bát, dùng nóng với cơm trắng để thưởng thức vị đậm đà và thơm của hành tím.'),
-- Cá chiên hành tím
(54, 1, 'Chuẩn bị nguyên liệu: Cá rô phi làm sạch, khứa hai bên, ướp với 1/2 muỗng cà phê muối trong 10 phút. Hành tím thái lát mỏng. Hành lá thái nhỏ.'),
(54, 2, 'Chiên cá: Đun nóng 3 muỗng canh dầu ăn trong chảo, chiên cá trên lửa vừa 5-7 phút mỗi mặt đến khi vàng giòn. Vớt cá ra, để ráo dầu.'),
(54, 3, 'Phi hành tím: Dùng 1 muỗng canh dầu ăn còn lại, phi hành tím trên lửa nhỏ 2-3 phút đến khi vàng giòn. Vớt hành ra, để ráo trên giấy thấm dầu.'),
(54, 4, 'Hoàn thiện món chiên: Đặt cá lên đĩa, rắc hành tím phi và hành lá lên trên, thêm 1/4 muỗng cà phê hạt tiêu. Dọn kèm nước mắm nguyên chất, dùng nóng với cơm trắng.'),
-- Nước mắm chấm hành tím
(55, 1, 'Chuẩn bị nguyên liệu: Hành tím bóc vỏ, thái lát mỏng hoặc băm nhỏ. Tỏi băm nhỏ, ớt thái lát.'),
(55, 2, 'Pha nước mắm: Trộn 3 muỗng canh nước mắm, 1 muỗng canh đường, 1 muỗng canh nước cốt chanh, và 2 muỗng canh nước ấm trong bát. Khuấy đều để đường tan.'),
(55, 3, 'Thêm hành tím: Cho hành tím, tỏi, và ớt vào bát nước mắm, khuấy đều để thấm gia vị. Để 5 phút cho hành tím bớt hăng và ngấm vị.'),
(55, 4, 'Hoàn thiện nước chấm: Đổ nước mắm ra bát nhỏ, dùng kèm các món luộc (rau, thịt), chiên (cá, đậu hũ), hoặc nướng để thưởng thức vị cay thơm của hành tím.'),
-- Gỏi gà hành tím
(56, 1, 'Chuẩn bị nguyên liệu: Ức gà luộc chín, xé sợi. Hành tím thái lát mỏng, ngâm nước lạnh 5 phút để bớt hăng, để ráo. Rau răm thái nhỏ, ớt thái lát.'),
(56, 2, 'Pha nước mắm: Trộn 2 muỗng canh nước mắm, 1 muỗng canh đường, 1 muỗng canh nước cốt chanh, và ớt trong bát. Khuấy đều để đường tan, tạo vị chua ngọt cay.'),
(56, 3, 'Trộn gỏi: Cho gà xé sợi và hành tím vào bát lớn, đổ nước mắm pha vào, trộn đều để thấm gia vị. Để 5 phút cho ngấm, thỉnh thoảng trộn lại.'),
(56, 4, 'Hoàn thiện gỏi: Rắc rau răm lên trên, trộn nhẹ. Dọn ra đĩa, dùng làm món khai vị hoặc ăn kèm cơm để thưởng thức vị giòn cay của hành tím và gà thơm.');

-- --------------------------------------
-- 15. Củ sen (class_index: 14)
-- --------------------------------------

-- Chèn vào bảng vegetables
INSERT INTO vegetables (class_index, vietnamese_name, scientific_name, description, nutritional_info)
VALUES (
    14, 
    'Củ sen', 
    'Nelumbo nucifera', 
    'Củ sen là thân rễ của cây sen, thuộc họ Sen (Nelumbonaceae), được trồng phổ biến ở Việt Nam, đặc biệt ở các vùng đồng bằng sông Cửu Long và hồ sen. Củ có hình trụ dài, vỏ nâu nhạt, thịt trắng, giòn, vị ngọt nhẹ. Củ sen được dùng trong các món canh, xào, salad, hoặc hầm, là nguyên liệu quen thuộc trong ẩm thực Việt Nam nhờ kết cấu giòn và dinh dưỡng cao.',
    'Củ sen giàu vitamin C, chất xơ, kali, và các hợp chất chống oxy hóa. Rau này hỗ trợ tiêu hóa, tăng cường miễn dịch, và cải thiện sức khỏe tim mạch. Củ sen cũng chứa đồng và sắt, giúp sản xuất hồng cầu và cải thiện tuần hoàn máu. Với lượng calo thấp, củ sen là lựa chọn lý tưởng cho chế độ ăn lành mạnh.'
);

-- Chèn vào bảng vegetable_nutritional_points
INSERT INTO vegetable_nutritional_points (vegetable_id, point_text, display_order)
VALUES 
(15, 'Vitamin C (44% DV trong 100g): Tăng cường miễn dịch, hỗ trợ sản xuất collagen, và bảo vệ tế bào khỏi tổn thương oxy hóa.', 1),
(15, 'Chất xơ (4.9g trong 100g): Cải thiện tiêu hóa, ngăn ngừa táo bón, và hỗ trợ kiểm soát đường huyết.', 2),
(15, 'Kali (556mg trong 100g): Giúp cân bằng huyết áp, hỗ trợ chức năng cơ bắp, và giảm nguy cơ đột quỵ.', 3),
(15, 'Đồng (23% DV trong 100g): Hỗ trợ sản xuất hồng cầu và duy trì sức khỏe thần kinh.', 4),
(15, 'Sắt (6% DV trong 100g): Thúc đẩy tuần hoàn máu và ngăn ngừa thiếu máu.', 5),
(15, 'Ít calo (74 kcal trong 100g): Phù hợp cho chế độ ăn kiêng, giúp kiểm soát cân nặng mà vẫn cung cấp dinh dưỡng.', 6);

-- Chèn vào bảng vegetable_select_points
INSERT INTO vegetable_select_points (vegetable_id, point_text, display_order)
VALUES 
(15, 'Vỏ nâu nhạt, không thâm: Chọn củ sen có vỏ mịn, màu nâu nhạt, không có đốm đen hoặc vết thâm.', 1),
(15, 'Cứng, nặng tay: Củ sen tươi có độ cứng khi ấn, không mềm, nặng so với kích thước.', 2),
(15, 'Đoạn củ đều, không nứt: Củ sen tươi có các đốt đều, không nứt hoặc có dấu hiệu hư hỏng.', 3),
(15, 'Thịt trắng, giòn: Cắt thử, thịt củ sen phải trắng, mọng nước, không bị thâm hoặc xơ.', 4),
(15, 'Tránh củ có mùi lạ: Củ sen tươi có mùi đất nhẹ, tránh loại có mùi chua hoặc mốc.', 5);

-- Chèn vào bảng vegetable_preserve_points
INSERT INTO vegetable_preserve_points (vegetable_id, point_text, display_order)
VALUES 
(15, 'Bọc kín trong ngăn mát: Đặt củ sen trong túi nhựa, bảo quản ở 4-7°C, giữ tươi 2-3 tuần.', 1),
(15, 'Giữ khô trước khi bảo quản: Không rửa củ sen trước khi cất, tránh ẩm mốc, chỉ rửa trước khi chế biến.', 2),
(15, 'Đông lạnh để bảo quản lâu: Gọt vỏ, cắt lát, chần sơ 2 phút, để ráo, cho vào túi zip, đông lạnh ở -18°C, dùng trong 6 tháng.', 3),
(15, 'Kiểm tra định kỳ: Loại bỏ phần củ bị thâm hoặc mềm để tránh lây lan hư hỏng.', 4),
(15, 'Tránh để gần trái cây tiết ethylene: Táo, chuối làm củ sen nhanh thâm và hỏng.', 5);

-- Chèn vào bảng recipes
INSERT INTO recipes (name, description, prep_time, cook_time, servings)
VALUES 
('Canh củ sen hầm sườn', 'Món canh bổ dưỡng, phổ biến trong bữa cơm gia đình Việt Nam, với củ sen giòn ngọt và sườn heo mềm, tạo vị ngọt thanh.', '15 phút', '40 phút', '4 người'),
('Củ sen xào tôm', 'Món xào thơm ngon, quen thuộc trong ẩm thực Việt Nam, với củ sen giòn kết hợp tôm tươi, là món phụ hoặc món chính.', '10 phút', '15 phút', '4 người'),
('Gỏi củ sen tôm thịt', 'Món gỏi tươi mát, truyền thống trong ẩm thực Việt Nam, với củ sen giòn trộn tôm và thịt, là món khai vị hoặc ăn kèm.', '15 phút', '10 phút', '4 người'),
('Củ sen kho thịt', 'Món kho đậm đà, phổ biến trong ẩm thực Việt Nam, với củ sen thấm vị nước mắm và thịt heo, là món chính trong bữa cơm.', '15 phút', '30 phút', '4 người');

-- Chèn vào bảng recipe_vegetables
INSERT INTO recipe_vegetables (recipe_id, vegetable_id)
VALUES 
(57, 15),
(58, 15),
(59, 15),
(60, 15);

-- Chèn vào bảng recipe_items
INSERT INTO recipe_items (recipe_id, item_name, quantity, notes, order_index)
VALUES 
-- Canh củ sen hầm sườn
(57, 'Củ sen', '300g', 'Gọt vỏ, rửa sạch, cắt lát mỏng 0.5cm', 1),
(57, 'Sườn heo', '300g', 'Rửa sạch, chặt miếng vừa ăn, chần sơ', 2),
(57, 'Hành lá', '2 nhánh (10g)', 'Rửa sạch, thái nhỏ', 3),
(57, 'Nước mắm', '1 muỗng canh', 'Chọn loại ngon', 4),
(57, 'Muối', '1/2 muỗng cà phê', 'Điều chỉnh theo khẩu vị', 5),
(57, 'Hạt tiêu', '1/4 muỗng cà phê', 'Rắc khi hoàn thiện', 6),
(57, 'Dầu ăn', '1 muỗng canh', 'Dùng để phi hành', 7),
(57, 'Nước', '1.5 lít', 'Nước lọc', 8),
-- Củ sen xào tôm
(58, 'Củ sen', '300g', 'Gọt vỏ, rửa sạch, cắt lát mỏng, ngâm nước muối loãng', 1),
(58, 'Tôm tươi', '200g', 'Bóc vỏ, bỏ đầu, rút chỉ đen', 2),
(58, 'Tỏi', '3 tép (12g)', 'Bóc vỏ, băm nhỏ', 3),
(58, 'Dầu ăn', '2 muỗng canh', 'Dùng để xào', 4),
(58, 'Nước mắm', '1 muỗng canh', 'Tăng hương vị', 5),
(58, 'Đường', '1/2 muỗng cà phê', 'Tạo vị cân bằng', 6),
(58, 'Hạt tiêu', '1/4 muỗng cà phê', 'Rắc khi hoàn thiện', 7),
(58, 'Hành lá', '1 nhánh (5g)', 'Thái nhỏ, trang trí', 8),
-- Gỏi củ sen tôm thịt
(59, 'Củ sen', '300g', 'Gọt vỏ, rửa sạch, thái sợi, ngâm nước muối loãng', 1),
(59, 'Tôm tươi', '100g', 'Luộc chín, bóc vỏ', 2),
(59, 'Thịt heo nạc', '100g', 'Luộc chín, thái sợi', 3),
(59, 'Nước mắm', '2 muỗng canh', 'Chọn loại ngon', 4),
(59, 'Đường', '1 muỗng canh', 'Tạo vị ngọt', 5),
(59, 'Nước cốt chanh', '1 muỗng canh', 'Tạo vị chua', 6),
(59, 'Rau răm', '10g', 'Rửa sạch, thái nhỏ, trang trí', 7),
(59, 'Ớt', '1 quả (5g)', 'Thái lát', 8),
-- Củ sen kho thịt
(60, 'Củ sen', '300g', 'Gọt vỏ, rửa sạch, cắt khúc 3cm', 1),
(60, 'Thịt ba chỉ', '200g', 'Rửa sạch, cắt miếng 3cm', 2),
(60, 'Nước mắm', '2 muỗng canh', 'Chọn loại ngon', 3),
(60, 'Đường', '1 muỗng canh', 'Tạo vị ngọt và màu caramel', 4),
(60, 'Hành tím', '2 củ (20g)', 'Bóc vỏ, băm nhỏ', 5),
(60, 'Hạt tiêu', '1/4 muỗng cà phê', 'Rắc khi hoàn thiện', 6),
(60, 'Dầu ăn', '1 muỗng canh', 'Dùng để phi hành', 7),
(60, 'Nước', '200ml', 'Nước lọc, dùng để kho', 8);

-- Chèn vào bảng recipe_steps
INSERT INTO recipe_steps (recipe_id, step_number, instruction_text)
VALUES 
-- Canh củ sen hầm sườn
(57, 1, 'Chuẩn bị nguyên liệu: Gọt vỏ củ sen, rửa sạch, cắt lát mỏng 0.5cm, ngâm nước muối loãng 5 phút, để ráo. Sườn heo chần sơ với nước sôi, rửa sạch. Hành lá thái nhỏ.'),
(57, 2, 'Hầm sườn: Đun 1.5 lít nước lọc, cho sườn heo vào, hầm trên lửa nhỏ 20 phút để nước ngọt. Vớt bọt thường xuyên để nước canh trong.'),
(57, 3, 'Nấu canh: Thêm củ sen vào nồi, nấu thêm 15 phút đến khi củ sen mềm nhưng vẫn giòn. Nêm 1 muỗng canh nước mắm và 1/2 muỗng cà phê muối, khuấy đều.'),
(57, 4, 'Hoàn thiện canh: Rắc hành lá và 1/4 muỗng cà phê hạt tiêu, đun thêm 1 phút. Tắt bếp, múc ra bát, dùng nóng với cơm trắng để thưởng thức vị ngọt thanh và giòn.'),
-- Củ sen xào tôm
(58, 1, 'Chuẩn bị nguyên liệu: Gọt vỏ củ sen, rửa sạch, cắt lát mỏng, ngâm nước muối loãng 5 phút, để ráo. Tôm bóc vỏ, rút chỉ đen, rửa sạch. Tỏi băm nhỏ, hành lá thái nhỏ.'),
(58, 2, 'Xào tôm: Đun nóng 1 muỗng canh dầu ăn trong chảo, phi thơm tỏi. Cho tôm vào, xào 1-2 phút đến khi tôm hồng và săn lại, vớt ra để riêng.'),
(58, 3, 'Xào củ sen: Thêm 1 muỗng canh dầu ăn, cho củ sen vào, xào trên lửa vừa 3-4 phút đến khi củ sen chín nhưng vẫn giòn. Nêm 1 muỗng canh nước mắm và 1/2 muỗng cà phê đường.'),
(58, 4, 'Hoàn thiện món xào: Cho tôm vào chảo, đảo đều 1 phút để thấm gia vị. Rắc hành lá và 1/4 muỗng cà phê hạt tiêu, tắt bếp, chuyển ra đĩa. Dùng nóng với cơm trắng.'),
-- Gỏi củ sen tôm thịt
(59, 1, 'Chuẩn bị nguyên liệu: Gọt vỏ củ sen, rửa sạch, thái sợi, ngâm nước muối loãng 5 phút để giòn, để ráo. Tôm và thịt heo luộc chín, tôm bóc vỏ, thịt thái sợi. Rau răm và ớt thái nhỏ.'),
(59, 2, 'Pha nước mắm: Trộn 2 muỗng canh nước mắm, 1 muỗng canh đường, 1 muỗng canh nước cốt chanh, và ớt trong bát. Khuấy đều để đường tan, tạo vị chua ngọt cay.'),
(59, 3, 'Trộn gỏi: Cho củ sen, tôm, và thịt vào bát lớn, đổ nước mắm pha vào, trộn đều để thấm gia vị. Để 5 phút cho ngấm, thỉnh thoảng trộn lại.'),
(59, 4, 'Hoàn thiện gỏi: Rắc rau răm lên trên, trộn nhẹ. Dọn ra đĩa, dùng làm món khai vị hoặc ăn kèm cơm để thưởng thức vị giòn ngọt và chua cay.'),
-- Củ sen kho thịt
(60, 1, 'Chuẩn bị nguyên liệu: Gọt vỏ củ sen, rửa sạch, cắt khúc 3cm. Thịt ba chỉ cắt miếng 3cm, rửa sạch. Hành tím bóc vỏ, băm nhỏ.'),
(60, 2, 'Xào thịt và củ sen: Đun nóng 1 muỗng canh dầu ăn trong nồi đất, phi thơm hành tím. Cho thịt ba chỉ vào, xào 3 phút đến khi vàng nhẹ. Thêm củ sen, đảo đều 2 phút.'),
(60, 3, 'Kho củ sen: Thêm 2 muỗng canh nước mắm, 1 muỗng canh đường, và 200ml nước vào nồi. Đun sôi, giảm lửa nhỏ, kho 20-25 phút đến khi củ sen mềm và nước sệt, thịt thấm gia vị.'),
(60, 4, 'Hoàn thiện món kho: Rắc 1/4 muỗng cà phê hạt tiêu, đảo nhẹ. Tắt bếp, múc ra bát, dùng nóng với cơm trắng để thưởng thức vị đậm đà và giòn ngọt.');

-- --------------------------------------
-- 16. Đậu Bắp (class_index: 15)
-- --------------------------------------

-- Chèn vào bảng vegetables
INSERT INTO vegetables (class_index, vietnamese_name, scientific_name, description, nutritional_info)
VALUES (
    15, 
    'Đậu bắp', 
    'Abelmoschus esculentus', 
    'Đậu bắp là một loại rau quả thuộc họ Bông (Malvaceae), được trồng phổ biến ở Việt Nam, đặc biệt ở các vùng nhiệt đới và cận nhiệt đới. Quả đậu bắp dài, màu xanh, có lớp lông mịn, bên trong chứa chất nhầy đặc trưng. Đậu bắp được dùng trong các món canh, xào, luộc, hoặc nướng, là nguyên liệu quen thuộc trong ẩm thực Việt Nam nhờ vị giòn và dinh dưỡng cao.',
    'Đậu bắp giàu vitamin C, vitamin K, folate, và chất xơ. Rau này hỗ trợ tiêu hóa, tăng cường miễn dịch, và cải thiện sức khỏe xương nhờ vitamin K. Chất nhầy trong đậu bắp giúp giảm cholesterol và ổn định đường huyết. Với lượng calo thấp, đậu bắp là lựa chọn lý tưởng cho chế độ ăn lành mạnh.'
);

-- Chèn vào bảng vegetable_nutritional_points
INSERT INTO vegetable_nutritional_points (vegetable_id, point_text, display_order)
VALUES 
(16, 'Vitamin C (38% DV trong 100g): Tăng cường miễn dịch, hỗ trợ sản xuất collagen, và bảo vệ tế bào khỏi tổn thương oxy hóa.', 1),
(16, 'Chất xơ (3.2g trong 100g): Cải thiện tiêu hóa, ngăn ngừa táo bón, và hỗ trợ kiểm soát đường huyết.', 2),
(16, 'Vitamin K (26% DV trong 100g): Hỗ trợ đông máu và sức khỏe xương, giảm nguy cơ loãng xương.', 3),
(16, 'Folate (15% DV trong 100g): Hỗ trợ phát triển tế bào, đặc biệt quan trọng cho phụ nữ mang thai.', 4),
(16, 'Chất nhầy (mucin): Giúp giảm cholesterol, hỗ trợ tiêu hóa, và ổn định đường huyết.', 5),
(16, 'Ít calo (33 kcal trong 100g): Phù hợp cho chế độ ăn kiêng, giúp kiểm soát cân nặng mà vẫn cung cấp dinh dưỡng.', 6);

-- Chèn vào bảng vegetable_select_points
INSERT INTO vegetable_select_points (vegetable_id, point_text, display_order)
VALUES 
(16, 'Quả xanh tươi, bóng: Chọn đậu bắp có màu xanh sáng, vỏ bóng, không vàng hoặc thâm.', 1),
(16, 'Cứng, giòn khi bẻ: Đậu bắp tươi có độ cứng, bẻ nhẹ nghe tiếng gãy giòn, không mềm nhũn.', 2),
(16, 'Kích thước vừa: Đậu bắp dài 7-10cm thường non, giòn, ít xơ, và ít chất nhầy hơn quả lớn.', 3),
(16, 'Lông mịn, không rụng: Lớp lông trên vỏ phải mịn, không rụng hết, cho thấy quả tươi.', 4),
(16, 'Tránh quả có vết thâm: Kiểm tra quả không có đốm đen hoặc dấu hiệu hư hỏng.', 5);

-- Chèn vào bảng vegetable_preserve_points
INSERT INTO vegetable_preserve_points (vegetable_id, point_text, display_order)
VALUES 
(16, 'Bọc kín trong ngăn mát: Đặt đậu bắp trong túi nhựa đục lỗ, bảo quản ở 4-7°C, giữ tươi 5-7 ngày.', 1),
(16, 'Giữ khô trước khi bảo quản: Không rửa đậu bắp trước khi cất, tránh ẩm mốc, chỉ rửa trước khi chế biến.', 2),
(16, 'Đông lạnh để bảo quản lâu: Rửa sạch, chần sơ 2-3 phút, để ráo, cho vào túi zip, đông lạnh ở -18°C, dùng trong 6 tháng.', 3),
(16, 'Kiểm tra định kỳ: Loại bỏ quả bị mềm hoặc thâm để tránh lây lan hư hỏng.', 4),
(16, 'Tránh để gần trái cây tiết ethylene: Táo, chuối làm đậu bắp nhanh vàng và hỏng.', 5);

-- Chèn vào bảng recipes
INSERT INTO recipes (name, description, prep_time, cook_time, servings)
VALUES 
('Canh chua đậu bắp', 'Món canh chua thanh mát, phổ biến trong ẩm thực Việt Nam, với đậu bắp giòn và vị chua nhẹ, là món phụ trong bữa cơm gia đình.', '10 phút', '15 phút', '4 người'),
('Đậu bắp xào tỏi', 'Món xào đơn giản, quen thuộc trong ẩm thực Việt Nam, với đậu bắp giòn thấm vị tỏi thơm, là món phụ dễ làm.', '10 phút', '10 phút', '4 người'),
('Đậu bắp luộc chấm mắm', 'Món luộc dân dã, phổ biến trong ẩm thực Việt Nam, với đậu bắp giòn ăn kèm nước mắm pha, là món phụ nhẹ nhàng.', '10 phút', '5 phút', '4 người'),
('Đậu bắp nướng mỡ hành', 'Món nướng thơm ngon, phổ biến trong ẩm thực Việt Nam, với đậu bắp giòn phủ mỡ hành, là món phụ hoặc món chính.', '10 phút', '15 phút', '4 người');

-- Chèn vào bảng recipe_vegetables
INSERT INTO recipe_vegetables (recipe_id, vegetable_id)
VALUES 
(61, 16),
(62, 16),
(63, 16),
(64, 16);

-- Chèn vào bảng recipe_items
INSERT INTO recipe_items (recipe_id, item_name, quantity, notes, order_index)
VALUES 
-- Canh chua đậu bắp
(61, 'Đậu bắp', '200g', 'Rửa sạch, cắt bỏ đầu, thái lát xéo', 1),
(61, 'Cá (tuỳ thích)', '300g', 'Làm sạch, cắt khúc, ướp với 1/2 muỗng cà phê muối', 2),
(61, 'Me chua', '20g', 'Ngâm nước ấm, lấy nước cốt', 3),
(61, 'Nước mắm', '1 muỗng canh', 'Chọn loại ngon', 4),
(61, 'Muối', '1/2 muỗng cà phê', 'Điều chỉnh theo khẩu vị', 5),
(61, 'Hành lá', '2 nhánh (10g)', 'Rửa sạch, thái nhỏ', 6),
(61, 'Nước', '1 lít', 'Nước lọc', 7),
(61, 'Dầu ăn', '1 muỗng canh', 'Dùng để phi hành', 8),
-- Đậu bắp xào tỏi
(62, 'Đậu bắp', '300g', 'Rửa sạch, cắt lát xéo hoặc để nguyên quả', 1),
(62, 'Tỏi', '4 tép (15g)', 'Bóc vỏ, băm nhỏ', 2),
(62, 'Dầu ăn', '2 muỗng canh', 'Dùng để xào', 3),
(62, 'Nước mắm', '1 muỗng canh', 'Tăng hương vị', 4),
(62, 'Muối', '1/4 muỗng cà phê', 'Điều chỉnh theo khẩu vị', 5),
(62, 'Hạt tiêu', '1/4 muỗng cà phê', 'Rắc khi hoàn thiện', 6),
(62, 'Hành lá', '1 nhánh (5g)', 'Thái nhỏ, trang trí', 7),
-- Đậu bắp luộc chấm mắm
(63, 'Đậu bắp', '400g', 'Rửa sạch, để nguyên quả', 1),
(63, 'Nước mắm', '2 muỗng canh', 'Chọn loại ngon, dùng pha nước chấm', 2),
(63, 'Đường', '1 muỗng cà phê', 'Pha nước chấm', 3),
(63, 'Tỏi', '2 tép (10g)', 'Băm nhỏ, dùng pha nước chấm', 4),
(63, 'Ớt', '1 quả (5g)', 'Thái lát, dùng pha nước chấm', 5),
(63, 'Nước', '2 muỗng canh', 'Nước ấm, dùng pha nước chấm', 6),
-- Đậu bắp nướng mỡ hành
(64, 'Đậu bắp', '300g', 'Rửa sạch, để nguyên quả, khứa nhẹ dọc thân', 1),
(64, 'Hành lá', '3 nhánh (15g)', 'Rửa sạch, thái nhỏ', 2),
(64, 'Dầu ăn', '3 muỗng canh', 'Dùng để làm mỡ hành', 3),
(64, 'Nước mắm', '1 muỗng canh', 'Chọn loại ngon, dùng chấm', 4),
(64, 'Muối', '1/4 muỗng cà phê', 'Ướp đậu bắp', 5),
(64, 'Hạt tiêu', '1/4 muỗng cà phê', 'Rắc khi hoàn thiện', 6);

-- Chèn vào bảng recipe_steps
INSERT INTO recipe_steps (recipe_id, step_number, instruction_text)
VALUES 
-- Canh chua đậu bắp
(61, 1, 'Chuẩn bị nguyên liệu: Rửa sạch đậu bắp, cắt bỏ đầu, thái lát xéo. Cá làm sạch, cắt khúc, ướp với 1/2 muỗng cà phê muối trong 10 phút. Ngâm me chua trong nước ấm, lấy nước cốt. Hành lá thái nhỏ.'),
(61, 2, 'Nấu nước canh: Đun sôi 1 lít nước lọc, cho cá vào, nấu trên lửa vừa 5-7 phút đến khi cá chín. Vớt bọt để nước canh trong.'),
(61, 3, 'Nêm gia vị: Thêm nước cốt me và đậu bắp vào nồi, nấu thêm 5 phút đến khi đậu bắp mềm nhưng vẫn giòn. Nêm 1 muỗng canh nước mắm và 1/2 muỗng cà phê muối, khuấy đều.'),
(61, 4, 'Hoàn thiện canh: Rắc hành lá, đun thêm 1 phút. Tắt bếp, múc ra bát, dùng nóng với cơm trắng để thưởng thức vị chua thanh và đậu bắp giòn.'),
-- Đậu bắp xào tỏi
(62, 1, 'Chuẩn bị nguyên liệu: Rửa sạch đậu bắp, cắt lát xéo hoặc để nguyên quả, ngâm nước muối loãng 5 phút, để ráo. Tỏi băm nhỏ, hành lá thái nhỏ.'),
(62, 2, 'Phi tỏi: Đun nóng 2 muỗng canh dầu ăn trong chảo, phi tỏi 30 giây đến khi vàng nhẹ và dậy mùi thơm. Tránh để tỏi cháy vì sẽ tạo vị đắng.'),
(62, 3, 'Xào đậu bắp: Cho đậu bắp vào chảo, xào trên lửa vừa 4-5 phút đến khi đậu bắp chín nhưng vẫn giòn. Nêm 1 muỗng canh nước mắm và 1/4 muỗng cà phê muối.'),
(62, 4, 'Hoàn thiện món xào: Rắc hành lá và 1/4 muỗng cà phê hạt tiêu, đảo lần cuối trong 10 giây. Tắt bếp, chuyển ra đĩa, dùng nóng như món phụ với cơm trắng.'),
-- Đậu bắp luộc chấm mắm
(63, 1, 'Chuẩn bị đậu bắp: Rửa sạch đậu bắp, để nguyên quả, ngâm nước muối loãng 5 phút. Đun sôi nồi nước để luộc.'),
(63, 2, 'Pha nước mắm: Trộn 2 muỗng canh nước mắm, 1 muỗng cà phê đường, 2 muỗng canh nước ấm, 2 tép tỏi băm, và 1 quả ớt thái lát. Khuấy đều để đường tan, tạo nước chấm chua ngọt.'),
(63, 3, 'Luộc đậu bắp: Cho đậu bắp vào nồi nước sôi, luộc 3-4 phút đến khi đậu bắp mềm nhưng vẫn giòn. Vớt ra, ngâm ngay vào nước lạnh 1 phút để giữ độ giòn, để ráo.'),
(63, 4, 'Hoàn thiện món luộc: Xếp đậu bắp lên đĩa, dọn kèm bát nước mắm pha. Chấm đậu bắp vào nước mắm, dùng nóng như món phụ để thưởng thức vị giòn ngọt.'),
-- Đậu bắp nướng mỡ hành
(64, 1, 'Chuẩn bị nguyên liệu: Rửa sạch đậu bắp, để nguyên quả, khứa nhẹ dọc thân để thấm gia vị. Ướp đậu bắp với 1/4 muỗng cà phê muối trong 5 phút. Hành lá thái nhỏ.'),
(64, 2, 'Làm mỡ hành: Đun nóng 3 muỗng canh dầu ăn, đổ vào bát hành lá, khuấy đều để hành chín và thơm. Để nguội nhẹ.'),
(64, 3, 'Nướng đậu bắp: Làm nóng lò nướng ở 200°C hoặc dùng vỉ nướng than. Nướng đậu bắp 10-12 phút, lật đều để chín vàng. Nếu dùng than, nướng 5-7 phút đến khi hơi cháy xém.'),
(64, 4, 'Hoàn thiện món nướng: Xếp đậu bắp lên đĩa, rưới mỡ hành lên trên, rắc 1/4 muỗng cà phê hạt tiêu. Dọn kèm nước mắm nguyên chất, dùng nóng để thưởng thức vị giòn thơm.');

-- --------------------------------------
-- 17. Đậu Hà Lan (class_index: 16)
-- --------------------------------------

-- Chèn vào bảng vegetables
INSERT INTO vegetables (class_index, vietnamese_name, scientific_name, description, nutritional_info)
VALUES (
    16, 
    'Đậu Hà Lan', 
    'Pisum sativum', 
    'Đậu Hà Lan là một loại cây họ Đậu (Fabaceae), được trồng phổ biến ở Việt Nam, đặc biệt ở các vùng khí hậu mát như Đà Lạt, Lâm Đồng. Hạt đậu tròn, màu xanh, ngọt, nằm trong vỏ quả dài. Đậu Hà Lan được dùng trong các món xào, canh, salad, hoặc luộc, là nguyên liệu quen thuộc trong ẩm thực Việt Nam nhờ vị ngọt tự nhiên và kết cấu giòn.',
    'Đậu Hà Lan giàu vitamin C, vitamin K, chất xơ, và protein thực vật. Rau này hỗ trợ sức khỏe tim mạch, tăng cường miễn dịch, và cải thiện tiêu hóa. Đậu Hà Lan cũng chứa folate và sắt, giúp sản xuất hồng cầu và ngăn ngừa thiếu máu. Với lượng calo thấp, đậu Hà Lan là lựa chọn lý tưởng cho chế độ ăn lành mạnh.'
);

-- Chèn vào bảng vegetable_nutritional_points
INSERT INTO vegetable_nutritional_points (vegetable_id, point_text, display_order)
VALUES 
(17, 'Vitamin C (60% DV trong 100g): Tăng cường miễn dịch, hỗ trợ sản xuất collagen, và bảo vệ tế bào khỏi tổn thương oxy hóa.', 1),
(17, 'Chất xơ (5.1g trong 100g): Cải thiện tiêu hóa, ngăn ngừa táo bón, và hỗ trợ kiểm soát đường huyết.', 2),
(17, 'Vitamin K (24% DV trong 100g): Hỗ trợ đông máu và sức khỏe xương, giảm nguy cơ loãng xương.', 3),
(17, 'Folate (16% DV trong 100g): Hỗ trợ phát triển tế bào, đặc biệt quan trọng cho phụ nữ mang thai.', 4),
(17, 'Protein (5.4g trong 100g): Cung cấp protein thực vật, hỗ trợ xây dựng cơ bắp và sửa chữa mô.', 5),
(17, 'Ít calo (81 kcal trong 100g): Phù hợp cho chế độ ăn kiêng, giúp kiểm soát cân nặng mà vẫn cung cấp dinh dưỡng.', 6);

-- Chèn vào bảng vegetable_select_points
INSERT INTO vegetable_select_points (vegetable_id, point_text, display_order)
VALUES 
(17, 'Hạt xanh sáng, bóng: Chọn đậu Hà Lan có hạt màu xanh tươi, không vàng hoặc xỉn màu.', 1),
(17, 'Vỏ căng, không héo: Nếu mua nguyên vỏ, vỏ đậu phải căng, xanh, không nhăn hoặc khô.', 2),
(17, 'Hạt chắc, không mềm: Hạt đậu tươi khi ấn có độ cứng, không mềm nhũn hoặc có dấu hiệu hư hỏng.', 3),
(17, 'Kích thước vừa: Hạt đậu đường kính 0.5-1cm thường ngọt, giòn, và ít xơ hơn hạt lớn.', 4),
(17, 'Tránh đậu có mùi lạ: Đậu Hà Lan tươi có mùi nhẹ, ngọt, tránh loại có mùi chua hoặc mốc.', 5);

-- Chèn vào bảng vegetable_preserve_points
INSERT INTO vegetable_preserve_points (vegetable_id, point_text, display_order)
VALUES 
(17, 'Bọc kín trong ngăn mát: Đặt đậu Hà Lan trong túi nhựa đục lỗ, bảo quản ở 0-4°C, giữ tươi 5-7 ngày.', 1),
(17, 'Giữ khô trước khi bảo quản: Không rửa đậu trước khi cất, tránh ẩm mốc, chỉ rửa trước khi chế biến.', 2),
(17, 'Đông lạnh để bảo quản lâu: Tách hạt, chần sơ 1-2 phút, để ráo, cho vào túi zip, đông lạnh ở -18°C, dùng trong 6-8 tháng.', 3),
(17, 'Kiểm tra định kỳ: Loại bỏ hạt bị thâm hoặc mềm để tránh lây lan hư hỏng.', 4),
(17, 'Tránh để gần trái cây tiết ethylene: Táo, chuối làm đậu Hà Lan nhanh vàng và mất độ giòn.', 5);

-- Chèn vào bảng recipes
INSERT INTO recipes (name, description, prep_time, cook_time, servings)
VALUES 
('Đậu Hà Lan xào thịt bò', 'Món xào thơm ngon, phổ biến trong ẩm thực Việt Nam, với đậu Hà Lan giòn ngọt kết hợp thịt bò mềm, là món chính trong bữa cơm.', '10 phút', '10 phút', '4 người'),
('Canh đậu Hà Lan nấu tôm', 'Món canh thanh nhẹ, quen thuộc trong ẩm thực Việt Nam, với đậu Hà Lan ngọt và tôm tươi, là món phụ bổ dưỡng.', '10 phút', '15 phút', '4 người'),
('Salad đậu Hà Lan trộn mắm', 'Món salad tươi mát, phổ biến trong ẩm thực Việt Nam, với đậu Hà Lan giòn trộn nước mắm chua ngọt, là món khai vị hoặc ăn kèm.', '10 phút', '5 phút', '4 người'),
('Đậu Hà Lan luộc chấm mắm', 'Món luộc dân dã, phổ biến trong ẩm thực Việt Nam, với đậu Hà Lan giòn ngọt ăn kèm nước mắm pha, là món phụ đơn giản.', '5 phút', '5 phút', '4 người');

-- Chèn vào bảng recipe_vegetables
INSERT INTO recipe_vegetables (recipe_id, vegetable_id)
VALUES 
(65, 17),
(66, 17),
(67, 17),
(68, 17);

-- Chèn vào bảng recipe_items
INSERT INTO recipe_items (recipe_id, item_name, quantity, notes, order_index)
VALUES 
-- Đậu Hà Lan xào thịt bò
(65, 'Đậu Hà Lan', '200g', 'Tách hạt, rửa sạch', 1),
(65, 'Thịt bò', '200g', 'Thái lát mỏng, ướp với 1/2 muỗng cà phê muối, 1/4 muỗng cà phê tiêu', 2),
(65, 'Tỏi', '3 tép (12g)', 'Bóc vỏ, băm nhỏ', 3),
(65, 'Dầu ăn', '2 muỗng canh', 'Dùng để xào', 4),
(65, 'Nước mắm', '1 muỗng canh', 'Tăng hương vị', 5),
(65, 'Đường', '1/2 muỗng cà phê', 'Tạo vị cân bằng', 6),
(65, 'Hạt tiêu', '1/4 muỗng cà phê', 'Rắc khi hoàn thiện', 7),
(65, 'Hành lá', '1 nhánh (5g)', 'Thái nhỏ, trang trí', 8),
-- Canh đậu Hà Lan nấu tôm
(66, 'Đậu Hà Lan', '150g', 'Tách hạt, rửa sạch', 1),
(66, 'Tôm tươi', '200g', 'Bóc vỏ, bỏ đầu, rút chỉ đen', 2),
(66, 'Hành lá', '2 nhánh (10g)', 'Rửa sạch, thái nhỏ', 3),
(66, 'Nước mắm', '1 muỗng canh', 'Chọn loại ngon', 4),
(66, 'Muối', '1/2 muỗng cà phê', 'Điều chỉnh theo khẩu vị', 5),
(66, 'Hạt tiêu', '1/4 muỗng cà phê', 'Rắc khi hoàn thiện', 6),
(66, 'Dầu ăn', '1 muỗng canh', 'Dùng để xào', 7),
(66, 'Nước', '1 lít', 'Nước lọc', 8),
-- Salad đậu Hà Lan trộn mắm
(67, 'Đậu Hà Lan', '200g', 'Tách hạt, luộc chín, để nguội', 1),
(67, 'Nước mắm', '2 muỗng canh', 'Chọn loại ngon', 2),
(67, 'Đường', '1 muỗng canh', 'Tạo vị ngọt', 3),
(67, 'Tỏi', '2 tép (10g)', 'Băm nhỏ', 4),
(67, 'Nước cốt chanh', '1 muỗng canh', 'Tạo vị chua', 5),
(67, 'Ớt', '1 quả (5g)', 'Thái lát', 6),
(67, 'Rau mùi', '10g', 'Rửa sạch, thái nhỏ, trang trí', 7),
-- Đậu Hà Lan luộc chấm mắm
(68, 'Đậu Hà Lan', '300g', 'Tách hạt, rửa sạch', 1),
(68, 'Nước mắm', '2 muỗng canh', 'Chọn loại ngon, dùng pha nước chấm', 2),
(68, 'Đường', '1 muỗng cà phê', 'Pha nước chấm', 3),
(68, 'Tỏi', '2 tép (10g)', 'Băm nhỏ, dùng pha nước chấm', 4),
(68, 'Ớt', '1 quả (5g)', 'Thái lát, dùng pha nước chấm', 5),
(68, 'Nước', '2 muỗng canh', 'Nước ấm, dùng pha nước chấm', 6);

-- Chèn vào bảng recipe_steps
INSERT INTO recipe_steps (recipe_id, step_number, instruction_text)
VALUES 
-- Đậu Hà Lan xào thịt bò
(65, 1, 'Chuẩn bị nguyên liệu: Tách hạt đậu Hà Lan, rửa sạch, để ráo. Thịt bò thái lát mỏng, ướp với 1/2 muỗng cà phê muối, 1/4 muỗng cà phê tiêu trong 10 phút. Tỏi băm nhỏ, hành lá thái nhỏ.'),
(65, 2, 'Xào thịt bò: Đun nóng 1 muỗng canh dầu ăn trong chảo, phi thơm nửa lượng tỏi. Cho thịt bò vào, xào trên lửa lớn 1-2 phút đến khi tái, vớt ra để riêng.'),
(65, 3, 'Xào đậu Hà Lan: Thêm 1 muỗng canh dầu ăn, phi thơm tỏi còn lại. Cho đậu Hà Lan vào, xào 2-3 phút đến khi đậu chín nhưng vẫn giòn. Nêm 1 muỗng canh nước mắm và 1/2 muỗng cà phê đường.'),
(65, 4, 'Hoàn thiện món xào: Cho thịt bò vào chảo, đảo đều 1 phút để thấm gia vị. Rắc hành lá và 1/4 muỗng cà phê hạt tiêu, tắt bếp, chuyển ra đĩa. Dùng nóng với cơm trắng.'),
-- Canh đậu Hà Lan nấu tôm
(66, 1, 'Chuẩn bị nguyên liệu: Tách hạt đậu Hà Lan, rửa sạch, để ráo. Tôm bóc vỏ, rút chỉ đen, rửa sạch với nước muối loãng. Hành lá thái nhỏ.'),
(66, 2, 'Xào tôm: Đun nóng 1 muỗng canh dầu ăn trong nồi, cho tôm vào xào 1-2 phút đến khi tôm hồng và săn lại. Vớt tôm ra, để riêng.'),
(66, 3, 'Nấu canh: Đổ 1 lít nước lọc vào nồi, đun sôi. Thêm đậu Hà Lan, nấu 5-7 phút đến khi đậu mềm. Cho tôm vào, nêm 1 muỗng canh nước mắm và 1/2 muỗng cà phê muối.'),
(66, 4, 'Hoàn thiện canh: Đun thêm 2 phút để gia vị thấm, rắc hành lá và 1/4 muỗng cà phê hạt tiêu. Tắt bếp, múc ra bát, dùng nóng với cơm trắng để thưởng thức vị ngọt thanh.'),
-- Salad đậu Hà Lan trộn mắm
(67, 1, 'Chuẩn bị nguyên liệu: Tách hạt đậu Hà Lan, luộc trong nước sôi 2-3 phút đến khi chín, ngâm nước lạnh để giữ độ giòn, để ráo. Tỏi băm nhỏ, ớt thái lát, rau mùi thái nhỏ.'),
(67, 2, 'Pha nước mắm: Trộn 2 muỗng canh nước mắm, 1 muỗng canh đường, 1 muỗng canh nước cốt chanh, tỏi băm, và ớt trong bát. Khuấy đều để đường tan, tạo vị chua ngọt cay.'),
(67, 3, 'Trộn salad: Cho đậu Hà Lan vào bát lớn, đổ nước mắm pha vào, trộn đều để thấm gia vị. Để 5 phút cho ngấm, thỉnh thoảng trộn lại.'),
(67, 4, 'Hoàn thiện salad: Rắc rau mùi lên trên, trộn nhẹ. Dọn ra đĩa, dùng làm món khai vị hoặc ăn kèm thịt nướng, cá chiên để thưởng thức vị giòn ngọt và chua cay.'),
-- Đậu Hà Lan luộc chấm mắm
(68, 1, 'Chuẩn bị đậu Hà Lan: Tách hạt đậu Hà Lan, rửa sạch, để ráo. Đun sôi nồi nước để luộc.'),
(68, 2, 'Pha nước mắm: Trộn 2 muỗng canh nước mắm, 1 muỗng cà phê đường, 2 muỗng canh nước ấm, 2 tép tỏi băm, và 1 quả ớt thái lát. Khuấy đều để đường tan, tạo nước chấm chua ngọt.'),
(68, 3, 'Luộc đậu Hà Lan: Cho đậu Hà Lan vào nồi nước sôi, luộc 2-3 phút đến khi đậu chín nhưng vẫn giòn. Vớt ra, ngâm ngay vào nước lạnh 1 phút để giữ độ giòn, để ráo.'),
(68, 4, 'Hoàn thiện món luộc: Xếp đậu Hà Lan lên đĩa, dọn kèm bát nước mắm pha. Chấm đậu vào nước mắm, dùng nóng như món phụ để thưởng thức vị ngọt tự nhiên.');

-- --------------------------------------
-- 18. Đậu que (class_index: 17)
-- --------------------------------------

-- Chèn vào bảng vegetables
INSERT INTO vegetables (class_index, vietnamese_name, scientific_name, description, nutritional_info)
VALUES (
    17, 
    'Đậu que', 
    'Phaseolus vulgaris', 
    'Đậu que là một loại rau quả thuộc họ Đậu (Fabaceae), được trồng phổ biến ở Việt Nam, đặc biệt ở các vùng đồng bằng và cao nguyên. Quả dài, màu xanh, chứa hạt nhỏ, có vị ngọt nhẹ và giòn. Đậu que được dùng trong các món xào, luộc, canh, hoặc salad, là nguyên liệu quen thuộc trong ẩm thực Việt Nam nhờ kết cấu giòn và dinh dưỡng cao.',
    'Đậu que giàu vitamin C, vitamin A, chất xơ, và folate. Rau này hỗ trợ tiêu hóa, tăng cường miễn dịch, và cải thiện thị lực nhờ vitamin A. Đậu que cũng chứa kali và magiê, giúp duy trì sức khỏe tim mạch và huyết áp. Với lượng calo thấp, đậu que là lựa chọn lý tưởng cho chế độ ăn lành mạnh.'
);

-- Chèn vào bảng vegetable_nutritional_points
INSERT INTO vegetable_nutritional_points (vegetable_id, point_text, display_order)
VALUES 
(18, 'Vitamin C (20% DV trong 100g): Tăng cường miễn dịch, hỗ trợ sản xuất collagen, và bảo vệ tế bào khỏi tổn thương oxy hóa.', 1),
(18, 'Chất xơ (2.7g trong 100g): Cải thiện tiêu hóa, ngăn ngừa táo bón, và hỗ trợ kiểm soát đường huyết.', 2),
(18, 'Vitamin A (14% DV trong 100g): Hỗ trợ thị lực, sức khỏe da, và tăng cường miễn dịch.', 3),
(18, 'Folate (9% DV trong 100g): Hỗ trợ phát triển tế bào, đặc biệt quan trọng cho phụ nữ mang thai.', 4),
(18, 'Kali (211mg trong 100g): Giúp cân bằng huyết áp, hỗ trợ chức năng cơ bắp, và giảm nguy cơ đột quỵ.', 5),
(18, 'Ít calo (31 kcal trong 100g): Phù hợp cho chế độ ăn kiêng, giúp kiểm soát cân nặng mà vẫn cung cấp dinh dưỡng.', 6);

-- Chèn vào bảng vegetable_select_points
INSERT INTO vegetable_select_points (vegetable_id, point_text, display_order)
VALUES 
(18, 'Quả xanh tươi, bóng: Chọn đậu que có màu xanh sáng, vỏ bóng, không vàng hoặc thâm.', 1),
(18, 'Giòn, cứng khi bẻ: Đậu que tươi bẻ nghe tiếng gãy giòn, không mềm hoặc héo.', 2),
(18, 'Kích thước vừa: Đậu que dài 10-15cm thường non, giòn, và ít xơ hơn quả quá dài.', 3),
(18, 'Không có vết thâm: Kiểm tra quả không có đốm đen hoặc dấu hiệu hư hỏng.', 4),
(18, 'Tránh quả có mùi lạ: Đậu que tươi có mùi nhẹ, ngọt, tránh loại có mùi chua hoặc mốc.', 5);

-- Chèn vào bảng vegetable_preserve_points
INSERT INTO vegetable_preserve_points (vegetable_id, point_text, display_order)
VALUES 
(18, 'Bọc kín trong ngăn mát: Đặt đậu que trong túi nhựa đục lỗ, bảo quản ở 4-7°C, giữ tươi 7-10 ngày.', 1),
(18, 'Giữ khô trước khi bảo quản: Không rửa đậu que trước khi cất, tránh ẩm mốc, chỉ rửa trước khi chế biến.', 2),
(18, 'Đông lạnh để bảo quản lâu: Rửa sạch, chần sơ 2-3 phút, để ráo, cho vào túi zip, đông lạnh ở -18°C, dùng trong 6-8 tháng.', 3),
(18, 'Kiểm tra định kỳ: Loại bỏ quả bị mềm hoặc thâm để tránh lây lan hư hỏng.', 4),
(18, 'Tránh để gần trái cây tiết ethylene: Táo, chuối làm đậu que nhanh vàng và mất độ giòn.', 5);

-- Chèn vào bảng recipes
INSERT INTO recipes (name, description, prep_time, cook_time, servings)
VALUES 
('Đậu que xào thịt heo', 'Món xào thơm ngon, phổ biến trong ẩm thực Việt Nam, với đậu que giòn kết hợp thịt heo mềm, là món chính trong bữa cơm.', '10 phút', '10 phút', '4 người'),
('Canh đậu que nấu tôm', 'Món canh thanh nhẹ, quen thuộc trong ẩm thực Việt Nam, với đậu que ngọt và tôm tươi, là món phụ bổ dưỡng.', '10 phút', '15 phút', '4 người'),
('Đậu que luộc chấm mắm', 'Món luộc dân dã, phổ biến trong ẩm thực Việt Nam, với đậu que giòn ngọt ăn kèm nước mắm pha, là món phụ đơn giản.', '5 phút', '5 phút', '4 người'),
('Salad đậu que trộn mắm', 'Món salad tươi mát, phổ biến trong ẩm thực Việt Nam, với đậu que giòn trộn nước mắm chua ngọt, là món khai vị hoặc ăn kèm.', '10 phút', '5 phút', '4 người');

-- Chèn vào bảng recipe_vegetables
INSERT INTO recipe_vegetables (recipe_id, vegetable_id)
VALUES 
(69, 18),
(70, 18),
(71, 18),
(72, 18);

-- Chèn vào bảng recipe_items
INSERT INTO recipe_items (recipe_id, item_name, quantity, notes, order_index)
VALUES 
-- Đậu que xào thịt heo
(69, 'Đậu que', '300g', 'Rửa sạch, tước xơ, cắt khúc 5cm', 1),
(69, 'Thịt heo nạc', '200g', 'Thái lát mỏng, ướp với 1/2 muỗng cà phê muối, 1/4 muỗng cà phê tiêu', 2),
(69, 'Tỏi', '3 tép (12g)', 'Bóc vỏ, băm nhỏ', 3),
(69, 'Dầu ăn', '2 muỗng canh', 'Dùng để xào', 4),
(69, 'Nước mắm', '1 muỗng canh', 'Tăng hương vị', 5),
(69, 'Đường', '1/2 muỗng cà phê', 'Tạo vị cân bằng', 6),
(69, 'Hạt tiêu', '1/4 muỗng cà phê', 'Rắc khi hoàn thiện', 7),
(69, 'Hành lá', '1 nhánh (5g)', 'Thái nhỏ, trang trí', 8),
-- Canh đậu que nấu tôm
(70, 'Đậu que', '200g', 'Rửa sạch, tước xơ, cắt khúc 5cm', 1),
(70, 'Tôm tươi', '200g', 'Bóc vỏ, bỏ đầu, rút chỉ đen', 2),
(70, 'Hành lá', '2 nhánh (10g)', 'Rửa sạch, thái nhỏ', 3),
(70, 'Nước mắm', '1 muỗng canh', 'Chọn loại ngon', 4),
(70, 'Muối', '1/2 muỗng cà phê', 'Điều chỉnh theo khẩu vị', 5),
(70, 'Hạt tiêu', '1/4 muỗng cà phê', 'Rắc khi hoàn thiện', 6),
(70, 'Dầu ăn', '1 muỗng canh', 'Dùng để xào', 7),
(70, 'Nước', '1 lít', 'Nước lọc', 8),
-- Đậu que luộc chấm mắm
(71, 'Đậu que', '400g', 'Rửa sạch, tước xơ, để nguyên quả', 1),
(71, 'Nước mắm', '2 muỗng canh', 'Chọn loại ngon, dùng pha nước chấm', 2),
(71, 'Đường', '1 muỗng cà phê', 'Pha nước chấm', 3),
(71, 'Tỏi', '2 tép (10g)', 'Băm nhỏ, dùng pha nước chấm', 4),
(71, 'Ớt', '1 quả (5g)', 'Thái lát, dùng pha nước chấm', 5),
(71, 'Nước', '2 muỗng canh', 'Nước ấm, dùng pha nước chấm', 6),
-- Salad đậu que trộn mắm
(72, 'Đậu que', '300g', 'Rửa sạch, tước xơ, luộc chín, cắt khúc 5cm', 1),
(72, 'Nước mắm', '2 muỗng canh', 'Chọn loại ngon', 2),
(72, 'Đường', '1 muỗng canh', 'Tạo vị ngọt', 3),
(72, 'Tỏi', '2 tép (10g)', 'Băm nhỏ', 4),
(72, 'Nước cốt chanh', '1 muỗng canh', 'Tạo vị chua', 5),
(72, 'Ớt', '1 quả (5g)', 'Thái lát', 6),
(72, 'Rau mùi', '10g', 'Rửa sạch, thái nhỏ, trang trí', 7);

-- Chèn vào bảng recipe_steps
INSERT INTO recipe_steps (recipe_id, step_number, instruction_text)
VALUES 
-- Đậu que xào thịt heo
(69, 1, 'Chuẩn bị nguyên liệu: Rửa sạch đậu que, tước xơ, cắt khúc 5cm, ngâm nước muối loãng 5 phút, để ráo. Thịt heo thái lát mỏng, ướp với 1/2 muỗng cà phê muối, 1/4 muỗng cà phê tiêu trong 10 phút. Tỏi băm nhỏ, hành lá thái nhỏ.'),
(69, 2, 'Xào thịt heo: Đun nóng 1 muỗng canh dầu ăn trong chảo, phi thơm nửa lượng tỏi. Cho thịt heo vào, xào trên lửa vừa 2-3 phút đến khi chín tái, vớt ra để riêng.'),
(69, 3, 'Xào đậu que: Thêm 1 muỗng canh dầu ăn, phi thơm tỏi còn lại. Cho đậu que vào, xào 3-4 phút đến khi đậu chín nhưng vẫn giòn. Nêm 1 muỗng canh nước mắm và 1/2 muỗng cà phê đường.'),
(69, 4, 'Hoàn thiện món xào: Cho thịt heo vào chảo, đảo đều 1 phút để thấm gia vị. Rắc hành lá và 1/4 muỗng cà phê hạt tiêu, tắt bếp, chuyển ra đĩa. Dùng nóng với cơm trắng.'),
-- Canh đậu que nấu tôm
(70, 1, 'Chuẩn bị nguyên liệu: Rửa sạch đậu que, tước xơ, cắt khúc 5cm, ngâm nước muối loãng 5 phút, để ráo. Tôm bóc vỏ, rút chỉ đen, rửa sạch. Hành lá thái nhỏ.'),
(70, 2, 'Xào tôm: Đun nóng 1 muỗng canh dầu ăn trong nồi, cho tôm vào xào 1-2 phút đến khi tôm hồng và săn lại. Vớt tôm ra, để riêng.'),
(70, 3, 'Nấu canh: Đổ 1 lít nước lọc vào nồi, đun sôi. Thêm đậu que, nấu 5-7 phút đến khi đậu mềm. Cho tôm vào, nêm 1 muỗng canh nước mắm và 1/2 muỗng cà phê muối.'),
(70, 4, 'Hoàn thiện canh: Đun thêm 2 phút để gia vị thấm, rắc hành lá và 1/4 muỗng cà phê hạt tiêu. Tắt bếp, múc ra bát, dùng nóng với cơm trắng để thưởng thức vị ngọt thanh.'),
-- Đậu que luộc chấm mắm
(71, 1, 'Chuẩn bị đậu que: Rửa sạch đậu que, tước xơ, để nguyên quả, ngâm nước muối loãng 5 phút. Đun sôi nồi nước để luộc.'),
(71, 2, 'Pha nước mắm: Trộn 2 muỗng canh nước mắm, 1 muỗng cà phê đường, 2 muỗng canh nước ấm, 2 tép tỏi băm, và 1 quả ớt thái lát. Khuấy đều để đường tan, tạo nước chấm chua ngọt.'),
(71, 3, 'Luộc đậu que: Cho đậu que vào nồi nước sôi, luộc 3-4 phút đến khi đậu chín nhưng vẫn giòn. Vớt ra, ngâm ngay vào nước lạnh 1 phút để giữ độ giòn, để ráo.'),
(71, 4, 'Hoàn thiện món luộc: Xếp đậu que lên đĩa, dọn kèm bát nước mắm pha. Chấm đậu vào nước mắm, dùng nóng như món phụ để thưởng thức vị ngọt tự nhiên.'),
-- Salad đậu que trộn mắm
(72, 1, 'Chuẩn bị nguyên liệu: Rửa sạch đậu que, tước xơ, luộc trong nước sôi 3-4 phút đến khi chín, ngâm nước lạnh để giữ độ giòn, cắt khúc 5cm, để ráo. Tỏi băm nhỏ, ớt thái lát, rau mùi thái nhỏ.'),
(72, 2, 'Pha nước mắm: Trộn 2 muỗng canh nước mắm, 1 muỗng canh đường, 1 muỗng canh nước cốt chanh, tỏi băm, và ớt trong bát. Khuấy đều để đường tan, tạo vị chua ngọt cay.'),
(72, 3, 'Trộn salad: Cho đậu que vào bát lớn, đổ nước mắm pha vào, trộn đều để thấm gia vị. Để 5 phút cho ngấm, thỉnh thoảng trộn lại.'),
(72, 4, 'Hoàn thiện salad: Rắc rau mùi lên trên, trộn nhẹ. Dọn ra đĩa, dùng làm món khai vị hoặc ăn kèm thịt nướng, cá chiên để thưởng thức vị giòn ngọt và chua cay.');

-- --------------------------------------
-- 19. Đậu rồng (class_index: 18)
-- --------------------------------------

-- Chèn vào bảng vegetables
INSERT INTO vegetables (class_index, vietnamese_name, scientific_name, description, nutritional_info)
VALUES (
    18, 
    'Đậu rồng', 
    'Psophocarpus tetragonolobus', 
    'Đậu rồng, hay còn gọi là đậu khế, là một loại rau quả thuộc họ Đậu (Fabaceae), được trồng phổ biến ở Việt Nam, đặc biệt ở các vùng nhiệt đới như miền Tây Nam Bộ. Quả có hình dạng dài, bốn cạnh, màu xanh, giòn, vị ngọt nhẹ. Đậu rồng được dùng trong các món xào, luộc, salad, hoặc ăn sống, là nguyên liệu quen thuộc trong ẩm thực Việt Nam nhờ kết cấu giòn và dinh dưỡng cao.',
    'Đậu rồng giàu vitamin C, vitamin A, chất xơ, và protein thực vật. Rau này hỗ trợ tiêu hóa, tăng cường miễn dịch, và cải thiện thị lực nhờ vitamin A. Đậu rồng cũng chứa kali và canxi, giúp duy trì sức khỏe xương và tim mạch. Với lượng calo thấp, đậu rồng là lựa chọn lý tưởng cho chế độ ăn lành mạnh.'
);

-- Chèn vào bảng vegetable_nutritional_points
INSERT INTO vegetable_nutritional_points (vegetable_id, point_text, display_order)
VALUES 
(19, 'Vitamin C (35% DV trong 100g): Tăng cường miễn dịch, hỗ trợ sản xuất collagen, và bảo vệ tế bào khỏi tổn thương oxy hóa.', 1),
(19, 'Chất xơ (3.5g trong 100g): Cải thiện tiêu hóa, ngăn ngừa táo bón, và hỗ trợ kiểm soát đường huyết.', 2),
(19, 'Vitamin A (18% DV trong 100g): Hỗ trợ thị lực, sức khỏe da, và tăng cường miễn dịch.', 3),
(19, 'Protein (2.8g trong 100g): Cung cấp protein thực vật, hỗ trợ xây dựng cơ bắp và sửa chữa mô.', 4),
(19, 'Kali (240mg trong 100g): Giúp cân bằng huyết áp, hỗ trợ chức năng cơ bắp, và giảm nguy cơ đột quỵ.', 5),
(19, 'Ít calo (35 kcal trong 100g): Phù hợp cho chế độ ăn kiêng, giúp kiểm soát cân nặng mà vẫn cung cấp dinh dưỡng.', 6);

-- Chèn vào bảng vegetable_select_points
INSERT INTO vegetable_select_points (vegetable_id, point_text, display_order)
VALUES 
(19, 'Quả xanh tươi, bóng: Chọn đậu rồng có màu xanh sáng, vỏ bóng, không vàng hoặc thâm.', 1),
(19, 'Giòn, cứng khi bẻ: Đậu rồng tươi bẻ nghe tiếng gãy giòn, không mềm hoặc héo.', 2),
(19, 'Kích thước vừa: Đậu rồng dài 10-15cm, bốn cạnh rõ, thường non, giòn, và ít xơ hơn quả lớn.', 3),
(19, 'Không có vết thâm: Kiểm tra quả không có đốm đen hoặc dấu hiệu hư hỏng.', 4),
(19, 'Tránh quả có mùi lạ: Đậu rồng tươi có mùi nhẹ, ngọt, tránh loại có mùi chua hoặc mốc.', 5);

-- Chèn vào bảng vegetable_preserve_points
INSERT INTO vegetable_preserve_points (vegetable_id, point_text, display_order)
VALUES 
(19, 'Bọc kín trong ngăn mát: Đặt đậu rồng trong túi nhựa đục lỗ, bảo quản ở 4-7°C, giữ tươi 5-7 ngày.', 1),
(19, 'Giữ khô trước khi bảo quản: Không rửa đậu rồng trước khi cất, tránh ẩm mốc, chỉ rửa trước khi chế biến.', 2),
(19, 'Đông lạnh để bảo quản lâu: Rửa sạch, chần sơ 2-3 phút, để ráo, cho vào túi zip, đông lạnh ở -18°C, dùng trong 6-8 tháng.', 3),
(19, 'Kiểm tra định kỳ: Loại bỏ quả bị mềm hoặc thâm để tránh lây lan hư hỏng.', 4),
(19, 'Tránh để gần trái cây tiết ethylene: Táo, chuối làm đậu rồng nhanh vàng và mất độ giòn.', 5);

-- Chèn vào bảng recipes
INSERT INTO recipes (name, description, prep_time, cook_time, servings)
VALUES 
('Đậu rồng xào tỏi', 'Món xào đơn giản, phổ biến trong ẩm thực Việt Nam, với đậu rồng giòn thấm vị tỏi thơm, là món phụ dễ làm.', '10 phút', '10 phút', '4 người'),
('Đậu rồng luộc chấm mắm', 'Món luộc dân dã, phổ biến trong ẩm thực Việt Nam, với đậu rồng giòn ngọt ăn kèm nước mắm pha, là món phụ nhẹ nhàng.', '5 phút', '5 phút', '4 người'),
('Salad đậu rồng trộn mắm', 'Món salad tươi mát, phổ biến trong ẩm thực Việt Nam, với đậu rồng giòn trộn nước mắm chua ngọt, là món khai vị hoặc ăn kèm.', '10 phút', '5 phút', '4 người'),
('Canh đậu rồng nấu tôm', 'Món canh thanh nhẹ, quen thuộc trong ẩm thực Việt Nam, với đậu rồng ngọt và tôm tươi, là món phụ bổ dưỡng.', '10 phút', '15 phút', '4 người');

-- Chèn vào bảng recipe_vegetables
INSERT INTO recipe_vegetables (recipe_id, vegetable_id)
VALUES 
(73, 19),
(74, 19),
(75, 19),
(76, 19);

-- Chèn vào bảng recipe_items
INSERT INTO recipe_items (recipe_id, item_name, quantity, notes, order_index)
VALUES 
-- Đậu rồng xào tỏi
(73, 'Đậu rồng', '300g', 'Rửa sạch, cắt khúc 5cm', 1),
(73, 'Tỏi', '4 tép (15g)', 'Bóc vỏ, băm nhỏ', 2),
(73, 'Dầu ăn', '2 muỗng canh', 'Dùng để xào', 3),
(73, 'Nước mắm', '1 muỗng canh', 'Tăng hương vị', 4),
(73, 'Muối', '1/4 muỗng cà phê', 'Điều chỉnh theo khẩu vị', 5),
(73, 'Hạt tiêu', '1/4 muỗng cà phê', 'Rắc khi hoàn thiện', 6),
(73, 'Hành lá', '1 nhánh (5g)', 'Thái nhỏ, trang trí', 7),
-- Đậu rồng luộc chấm mắm
(74, 'Đậu rồng', '400g', 'Rửa sạch, để nguyên quả', 1),
(74, 'Nước mắm', '2 muỗng canh', 'Chọn loại ngon, dùng pha nước chấm', 2),
(74, 'Đường', '1 muỗng cà phê', 'Pha nước chấm', 3),
(74, 'Tỏi', '2 tép (10g)', 'Băm nhỏ, dùng pha nước chấm', 4),
(74, 'Ớt', '1 quả (5g)', 'Thái lát, dùng pha nước chấm', 5),
(74, 'Nước', '2 muỗng canh', 'Nước ấm, dùng pha nước chấm', 6),
-- Salad đậu rồng trộn mắm
(75, 'Đậu rồng', '300g', 'Rửa sạch, cắt lát mỏng, luộc sơ', 1),
(75, 'Nước mắm', '2 muỗng canh', 'Chọn loại ngon', 2),
(75, 'Đường', '1 muỗng canh', 'Tạo vị ngọt', 3),
(75, 'Tỏi', '2 tép (10g)', 'Băm nhỏ', 4),
(75, 'Nước cốt chanh', '1 muỗng canh', 'Tạo vị chua', 5),
(75, 'Ớt', '1 quả (5g)', 'Thái lát', 6),
(75, 'Rau mùi', '10g', 'Rửa sạch, thái nhỏ, trang trí', 7),
-- Canh đậu rồng nấu tôm
(76, 'Đậu rồng', '200g', 'Rửa sạch, cắt khúc 5cm', 1),
(76, 'Tôm tươi', '200g', 'Bóc vỏ, bỏ đầu, rút chỉ đen', 2),
(76, 'Hành lá', '2 nhánh (10g)', 'Rửa sạch, thái nhỏ', 3),
(76, 'Nước mắm', '1 muỗng canh', 'Chọn loại ngon', 4),
(76, 'Muối', '1/2 muỗng cà phê', 'Điều chỉnh theo khẩu vị', 5),
(76, 'Hạt tiêu', '1/4 muỗng cà phê', 'Rắc khi hoàn thiện', 6),
(76, 'Dầu ăn', '1 muỗng canh', 'Dùng để xào', 7),
(76, 'Nước', '1 lít', 'Nước lọc', 8);

-- Chèn vào bảng recipe_steps
INSERT INTO recipe_steps (recipe_id, step_number, instruction_text)
VALUES 
-- Đậu rồng xào tỏi
(73, 1, 'Chuẩn bị nguyên liệu: Rửa sạch đậu rồng, cắt khúc 5cm, ngâm nước muối loãng 5 phút, để ráo. Tỏi băm nhỏ, hành lá thái nhỏ.'),
(73, 2, 'Phi tỏi: Đun nóng 2 muỗng canh dầu ăn trong chảo, phi tỏi 30 giây đến khi vàng nhẹ và dậy mùi thơm. Tránh để tỏi cháy vì sẽ tạo vị đắng.'),
(73, 3, 'Xào đậu rồng: Cho đậu rồng vào chảo, xào trên lửa vừa 4-5 phút đến khi đậu chín nhưng vẫn giòn. Nêm 1 muỗng canh nước mắm và 1/4 muỗng cà phê muối.'),
(73, 4, 'Hoàn thiện món xào: Rắc hành lá và 1/4 muỗng cà phê hạt tiêu, đảo lần cuối trong 10 giây. Tắt bếp, chuyển ra đĩa, dùng nóng như món phụ với cơm trắng.'),
-- Đậu rồng luộc chấm mắm
(74, 1, 'Chuẩn bị đậu rồng: Rửa sạch đậu rồng, để nguyên quả, ngâm nước muối loãng 5 phút. Đun sôi nồi nước để luộc.'),
(74, 2, 'Pha nước mắm: Trộn 2 muỗng canh nước mắm, 1 muỗng cà phê đường, 2 muỗng canh nước ấm, 2 tép tỏi băm, và 1 quả ớt thái lát. Khuấy đều để đường tan, tạo nước chấm chua ngọt.'),
(74, 3, 'Luộc đậu rồng: Cho đậu rồng vào nồi nước sôi, luộc 3-4 phút đến khi đậu chín nhưng vẫn giòn. Vớt ra, ngâm ngay vào nước lạnh 1 phút để giữ độ giòn, để ráo.'),
(74, 4, 'Hoàn thiện món luộc: Xếp đậu rồng lên đĩa, dọn kèm bát nước mắm pha. Chấm đậu vào nước mắm, dùng nóng như món phụ để thưởng thức vị giòn ngọt.'),
-- Salad đậu rồng trộn mắm
(75, 1, 'Chuẩn bị nguyên liệu: Rửa sạch đậu rồng, cắt lát mỏng, luộc sơ trong nước sôi 2-3 phút, ngâm nước lạnh để giữ độ giòn, để ráo. Tỏi băm nhỏ, ớt thái lát, rau mùi thái nhỏ.'),
(75, 2, 'Pha nước mắm: Trộn 2 muỗng canh nước mắm, 1 muỗng canh đường, 1 muỗng canh nước cốt chanh, tỏi băm, và ớt trong bát. Khuấy đều để đường tan, tạo vị chua ngọt cay.'),
(75, 3, 'Trộn salad: Cho đậu rồng vào bát lớn, đổ nước mắm pha vào, trộn đều để thấm gia vị. Để 5 phút cho ngấm, thỉnh thoảng trộn lại.'),
(75, 4, 'Hoàn thiện salad: Rắc rau mùi lên trên, trộn nhẹ. Dọn ra đĩa, dùng làm món khai vị hoặc ăn kèm thịt nướng, cá chiên để thưởng thức vị giòn ngọt và chua cay.'),
-- Canh đậu rồng nấu tôm
(76, 1, 'Chuẩn bị nguyên liệu: Rửa sạch đậu rồng, cắt khúc 5cm, ngâm nước muối loãng 5 phút, để ráo. Tôm bóc vỏ, rút chỉ đen, rửa sạch. Hành lá thái nhỏ.'),
(76, 2, 'Xào tôm: Đun nóng 1 muỗng canh dầu ăn trong nồi, cho tôm vào xào 1-2 phút đến khi tôm hồng và săn lại. Vớt tôm ra, để riêng.'),
(76, 3, 'Nấu canh: Đổ 1 lít nước lọc vào nồi, đun sôi. Thêm đậu rồng, nấu 5-7 phút đến khi đậu mềm. Cho tôm vào, nêm 1 muỗng canh nước mắm và 1/2 muỗng cà phê muối.'),
(76, 4, 'Hoàn thiện canh: Đun thêm 2 phút để gia vị thấm, rắc hành lá và 1/4 muỗng cà phê hạt tiêu. Tắt bếp, múc ra bát, dùng nóng với cơm trắng để thưởng thức vị ngọt thanh.');

-- --------------------------------------
-- 20. Đu đủ (class_index: 19)
-- --------------------------------------

-- Chèn vào bảng vegetables
INSERT INTO vegetables (class_index, vietnamese_name, scientific_name, description, nutritional_info)
VALUES (
    19, 
    'Đu đủ', 
    'Carica papaya', 
    'Đu đủ là một loại quả thuộc họ Đu đủ (Caricaceae), được trồng phổ biến ở Việt Nam, đặc biệt ở các vùng nhiệt đới như miền Tây Nam Bộ và Đông Nam Bộ. Đu đủ xanh có vỏ xanh, thịt trắng giòn, được dùng trong các món gỏi, canh, hoặc xào, trong khi đu đủ chín có màu cam, ngọt, dùng làm sinh tố hoặc ăn trực tiếp. Trong ẩm thực Việt Nam, đu đủ xanh là nguyên liệu quen thuộc nhờ độ giòn và tính linh hoạt.',
    'Đu đủ (xanh) giàu vitamin C, chất xơ, và enzyme papain, hỗ trợ tiêu hóa và tăng cường miễn dịch. Đu đủ cũng chứa vitamin A, folate, và kali, giúp cải thiện thị lực, sức khỏe tim mạch, và duy trì huyết áp. Với lượng calo thấp, đu đủ là lựa chọn lý tưởng cho chế độ ăn lành mạnh.'
);

-- Chèn vào bảng vegetable_nutritional_points
INSERT INTO vegetable_nutritional_points (vegetable_id, point_text, display_order)
VALUES 
(20, 'Vitamin C (62% DV trong 100g): Tăng cường miễn dịch, hỗ trợ sản xuất collagen, và bảo vệ tế bào khỏi tổn thương oxy hóa.', 1),
(20, 'Chất xơ (1.7g trong 100g): Cải thiện tiêu hóa, ngăn ngừa táo bón, và hỗ trợ kiểm soát đường huyết.', 2),
(20, 'Vitamin A (10% DV trong 100g): Hỗ trợ thị lực, sức khỏe da, và tăng cường miễn dịch.', 3),
(20, 'Folate (10% DV trong 100g): Hỗ trợ phát triển tế bào, đặc biệt quan trọng cho phụ nữ mang thai.', 4),
(20, 'Enzyme papain: Thúc đẩy tiêu hóa protein, giảm viêm, và hỗ trợ sức khỏe đường ruột.', 5),
(20, 'Ít calo (43 kcal trong 100g): Phù hợp cho chế độ ăn kiêng, giúp kiểm soát cân nặng mà vẫn cung cấp dinh dưỡng.', 6);

-- Chèn vào bảng vegetable_select_points
INSERT INTO vegetable_select_points (vegetable_id, point_text, display_order)
VALUES 
(20, 'Vỏ xanh đậm, bóng: Chọn đu đủ xanh có vỏ xanh, mịn, không vàng hoặc thâm nếu dùng cho món mặn.', 1),
(20, 'Cứng, chắc tay: Đu đủ tươi có độ cứng khi ấn, không mềm hoặc có dấu hiệu hư hỏng.', 2),
(20, 'Kích thước vừa: Đu đủ dài 20-30cm, trọng lượng 0.5-1kg thường giòn, ít hạt, dễ chế biến.', 3),
(20, 'Thịt trắng, giòn: Cắt thử, thịt đu đủ xanh phải trắng, mọng nước, không thâm hoặc xơ.', 4),
(20, 'Tránh quả có mùi lạ: Đu đủ xanh có mùi nhẹ, tránh loại có mùi chua hoặc lên men.', 5);

-- Chèn vào bảng vegetable_preserve_points
INSERT INTO vegetable_preserve_points (vegetable_id, point_text, display_order)
VALUES 
(20, 'Bọc kín trong ngăn mát: Đặt đu đủ xanh trong túi nhựa, bảo quản ở 7-10°C, giữ tươi 2-3 tuần.', 1),
(20, 'Giữ khô trước khi bảo quản: Không rửa đu đủ trước khi cất, tránh ẩm mốc, chỉ rửa trước khi chế biến.', 2),
(20, 'Đông lạnh để bảo quản lâu: Gọt vỏ, bỏ hạt, cắt sợi hoặc khối, chần sơ 1-2 phút, để ráo, cho vào túi zip, đông lạnh ở -18°C, dùng trong 6 tháng.', 3),
(20, 'Kiểm tra định kỳ: Loại bỏ phần quả bị thâm hoặc mềm để tránh lây lan hư hỏng.', 4),
(20, 'Tránh để gần trái cây tiết ethylene: Táo, chuối làm đu đủ nhanh chín và mất độ giòn.', 5);

-- Chèn vào bảng recipes
INSERT INTO recipes (name, description, prep_time, cook_time, servings)
VALUES 
('Gỏi đu đủ bò khô', 'Món gỏi truyền thống Việt Nam, với đu đủ xanh giòn trộn bò khô, nước mắm chua ngọt, là món khai vị hoặc ăn kèm phổ biến.', '15 phút', '0 phút', '4 người'),
('Đu đủ xào tỏi', 'Món xào đơn giản, phổ biến trong ẩm thực Việt Nam, với đu đủ xanh giòn thấm vị tỏi thơm, là món phụ dễ làm.', '10 phút', '10 phút', '4 người'),
('Canh đu đủ hầm xương', 'Món canh bổ dưỡng, quen thuộc trong ẩm thực Việt Nam, với đu đủ xanh ngọt và xương heo, là món phụ thơm ngon.', '15 phút', '40 phút', '4 người'),
('Đu đủ muối chua', 'Món muối chua truyền thống Việt Nam, với đu đủ xanh giòn, chua ngọt, thường dùng làm món ăn kèm hoặc khai vị.', '10 phút', '0 phút', '4 người');

-- Chèn vào bảng recipe_vegetables
INSERT INTO recipe_vegetables (recipe_id, vegetable_id)
VALUES 
(77, 20),
(78, 20),
(79, 20),
(80, 20);

-- Chèn vào bảng recipe_items
INSERT INTO recipe_items (recipe_id, item_name, quantity, notes, order_index)
VALUES 
-- Gỏi đu đủ bò khô
(77, 'Đu đủ xanh', '300g', 'Gọt vỏ, bỏ hạt, bào sợi, ngâm nước muối loãng', 1),
(77, 'Bò khô', '100g', 'Cắt sợi nhỏ hoặc xé sợi', 2),
(77, 'Nước mắm', '2 muỗng canh', 'Chọn loại ngon', 3),
(77, 'Đường', '1 muỗng canh', 'Tạo vị ngọt', 4),
(77, 'Nước cốt chanh', '1 muỗng canh', 'Tạo vị chua', 5),
(77, 'Rau răm', '10g', 'Rửa sạch, thái nhỏ, trang trí', 6),
(77, 'Tỏi', '2 tép (10g)', 'Băm nhỏ', 7),
(77, 'Ớt', '1 quả (5g)', 'Thái lát', 8),
-- Đu đủ xào tỏi
(78, 'Đu đủ xanh', '300g', 'Gọt vỏ, bỏ hạt, cắt sợi hoặc cắt khúc', 1),
(78, 'Tỏi', '4 tép (15g)', 'Bóc vỏ, băm nhỏ', 2),
(78, 'Dầu ăn', '2 muỗng canh', 'Dùng để xào', 3),
(78, 'Nước mắm', '1 muỗng canh', 'Tăng hương vị', 4),
(78, 'Muối', '1/4 muỗng cà phê', 'Điều chỉnh theo khẩu vị', 5),
(78, 'Hạt tiêu', '1/4 muỗng cà phê', 'Rắc khi hoàn thiện', 6),
(78, 'Hành lá', '1 nhánh (5g)', 'Thái nhỏ, trang trí', 7),
-- Canh đu đủ hầm xương
(79, 'Đu đủ xanh', '300g', 'Gọt vỏ, bỏ hạt, cắt miếng vừa ăn', 1),
(79, 'Xương heo', '300g', 'Rửa sạch, chần sơ', 2),
(79, 'Hành lá', '2 nhánh (10g)', 'Rửa sạch, thái nhỏ', 3),
(79, 'Nước mắm', '1 muỗng canh', 'Chọn loại ngon', 4),
(79, 'Muối', '1/2 muỗng cà phê', 'Điều chỉnh theo khẩu vị', 5),
(79, 'Hạt tiêu', '1/4 muỗng cà phê', 'Rắc khi hoàn thiện', 6),
(79, 'Nước', '1.5 lít', 'Nước lọc', 7),
(79, 'Dầu ăn', '1 muỗng canh', 'Dùng để phi hành', 8),
-- Đu đủ muối chua
(80, 'Đu đủ xanh', '400g', 'Gọt vỏ, bỏ hạt, bào sợi hoặc cắt khúc', 1),
(80, 'Đường', '2 muỗng canh', 'Tạo vị ngọt', 2),
(80, 'Giấm', '3 muỗng canh', 'Giấm gạo, tạo vị chua', 3),
(80, 'Muối', '1 muỗng cà phê', 'Tăng hương vị', 4),
(80, 'Nước', '200ml', 'Nước ấm, dùng để pha hỗn hợp muối', 5),
(80, 'Tỏi', '2 tép (10g)', 'Thái lát mỏng', 6),
(80, 'Ớt', '1 quả (5g)', 'Thái lát, tùy khẩu vị', 7);

-- Chèn vào bảng recipe_steps
INSERT INTO recipe_steps (recipe_id, step_number, instruction_text)
VALUES 
-- Gỏi đu đủ bò khô
(77, 1, 'Chuẩn bị nguyên liệu: Gọt vỏ đu đủ xanh, bỏ hạt, bào sợi, ngâm nước muối loãng 10 phút để giòn, để ráo. Bò khô cắt sợi nhỏ hoặc xé sợi. Tỏi băm nhỏ, ớt và rau răm thái nhỏ.'),
(77, 2, 'Pha nước mắm: Trộn 2 muỗng canh nước mắm, 1 muỗng canh đường, 1 muỗng canh nước cốt chanh, tỏi băm, và ớt trong bát. Khuấy đều để đường tan, tạo vị chua ngọt cay.'),
(77, 3, 'Trộn gỏi: Cho đu đủ và bò khô vào bát lớn, đổ nước mắm pha vào, trộn đều để thấm gia vị. Để 5-10 phút cho ngấm, thỉnh thoảng trộn lại.'),
(77, 4, 'Hoàn thiện gỏi: Rắc rau răm lên trên, trộn nhẹ. Dọn ra đĩa, dùng làm món khai vị hoặc ăn kèm cơm để thưởng thức vị giòn cay và thơm của bò khô.'),
-- Đu đủ xào tỏi
(78, 1, 'Chuẩn bị nguyên liệu: Gọt vỏ đu đủ xanh, bỏ hạt, cắt sợi hoặc cắt khúc 5cm, ngâm nước muối loãng 10 phút, để ráo. Tỏi băm nhỏ, hành lá thái nhỏ.'),
(78, 2, 'Phi tỏi: Đun nóng 2 muỗng canh dầu ăn trong chảo, phi tỏi 30 giây đến khi vàng nhẹ và dậy mùi thơm. Tránh để tỏi cháy vì sẽ tạo vị đắng.'),
(78, 3, 'Xào đu đủ: Cho đu đủ vào chảo, xào trên lửa vừa 3-4 phút đến khi đu đủ chín nhưng vẫn giòn. Nêm 1 muỗng canh nước mắm và 1/4 muỗng cà phê muối.'),
(78, 4, 'Hoàn thiện món xào: Rắc hành lá và 1/4 muỗng cà phê hạt tiêu, đảo lần cuối trong 10 giây. Tắt bếp, chuyển ra đĩa, dùng nóng như món phụ với cơm trắng.'),
-- Canh đu đủ hầm xương
(79, 1, 'Chuẩn bị nguyên liệu: Gọt vỏ đu đủ xanh, bỏ hạt, cắt miếng vừa ăn, ngâm nước muối loãng 10 phút, để ráo. Xương heo chần sơ với nước sôi, rửa sạch. Hành lá thái nhỏ.'),
(79, 2, 'Hầm xương: Đun 1.5 lít nước lọc, cho xương heo vào, hầm trên lửa nhỏ 30 phút để nước ngọt. Vớt bọt thường xuyên để nước canh trong.'),
(79, 3, 'Nấu canh: Thêm đu đủ vào nồi, nấu thêm 10-12 phút đến khi đu đủ mềm nhưng vẫn giòn. Nêm 1 muỗng canh nước mắm và 1/2 muỗng cà phê muối, khuấy đều.'),
(79, 4, 'Hoàn thiện canh: Rắc hành lá và 1/4 muỗng cà phê hạt tiêu, đun thêm 1 phút. Tắt bếp, múc ra bát, dùng nóng với cơm trắng để thưởng thức vị ngọt thanh.'),
-- Đu đủ muối chua
(80, 1, 'Chuẩn bị nguyên liệu: Gọt vỏ đu đủ xanh, bỏ hạt, bào sợi hoặc cắt khúc, ngâm nước muối loãng 10 phút, để ráo. Tỏi và ớt thái lát.'),
(80, 2, 'Pha nước muối: Hòa 2 muỗng canh đường, 1 muỗng cà phê muối, 3 muỗng canh giấm, và 200ml nước ấm trong bát. Khuấy đều để đường và muối tan hoàn toàn.'),
(80, 3, 'Ngâm đu đủ: Xếp đu đủ, tỏi, và ớt vào lọ thủy tinh sạch. Đổ nước muối vào, đảm bảo ngập đu đủ. Đậy kín, để ở nhiệt độ phòng 1-2 ngày cho lên men nhẹ.'),
(80, 4, 'Hoàn thiện món muối: Sau khi muối chua, bảo quản lọ trong tủ lạnh, dùng trong 1-2 tuần. Dọn ra đĩa, ăn kèm thịt kho hoặc cá chiên để thưởng thức vị giòn chua ngọt.');

-- --------------------------------------
-- 21. Dưa leo (class_index: 20)
-- --------------------------------------

-- Chèn vào bảng vegetables
INSERT INTO vegetables (class_index, vietnamese_name, scientific_name, description, nutritional_info)
VALUES (
    20, 
    'Dưa leo', 
    'Cucumis sativus', 
    'Dưa leo, hay còn gọi là dưa chuột, là một loại rau quả thuộc họ Bầu bí (Cucurbitaceae), được trồng phổ biến ở Việt Nam, đặc biệt ở các vùng đồng bằng và miền núi. Quả dài, màu xanh, thịt trắng giòn, chứa nhiều nước, vị mát. Dưa leo được dùng trong các món salad, gỏi, muối chua, hoặc ăn sống, là nguyên liệu quen thuộc trong ẩm thực Việt Nam nhờ độ giòn và tính giải nhiệt.',
    'Dưa leo giàu nước (95%), vitamin C, vitamin K, và chất xơ. Rau này hỗ trợ tiêu hóa, giữ ẩm cơ thể, và tăng cường sức khỏe da nhờ silica. Dưa leo cũng chứa kali và magiê, giúp duy trì huyết áp và sức khỏe tim mạch. Với lượng calo thấp, dưa leo là lựa chọn lý tưởng cho chế độ ăn lành mạnh.'
);

-- Chèn vào bảng vegetable_nutritional_points
INSERT INTO vegetable_nutritional_points (vegetable_id, point_text, display_order)
VALUES 
(21, 'Nước (95% trọng lượng): Giữ ẩm cơ thể, hỗ trợ tiêu hóa, và duy trì nhiệt độ cơ thể.', 1),
(21, 'Vitamin C (14% DV trong 100g): Tăng cường miễn dịch, hỗ trợ sản xuất collagen, và bảo vệ tế bào khỏi tổn thương oxy hóa.', 2),
(21, 'Vitamin K (16% DV trong 100g): Hỗ trợ đông máu và sức khỏe xương, giảm nguy cơ loãng xương.', 3),
(21, 'Silica: Thúc đẩy sức khỏe da, tóc, móng, và hỗ trợ mô liên kết.', 4),
(21, 'Kali (147mg trong 100g): Giúp cân bằng huyết áp, hỗ trợ chức năng cơ bắp, và giảm nguy cơ đột quỵ.', 5),
(21, 'Ít calo (15 kcal trong 100g): Phù hợp cho chế độ ăn kiêng, giúp kiểm soát cân nặng mà vẫn cung cấp dinh dưỡng.', 6);

-- Chèn vào bảng vegetable_select_points
INSERT INTO vegetable_select_points (vegetable_id, point_text, display_order)
VALUES 
(21, 'Vỏ xanh tươi, bóng: Chọn dưa leo có vỏ xanh đậm, bóng, không vàng hoặc nhăn.', 1),
(21, 'Cứng, chắc tay: Dưa leo tươi có độ cứng khi ấn, không mềm hoặc nhũn.', 2),
(21, 'Kích thước vừa: Dưa leo dài 15-20cm thường giòn, ít hạt, và ngọt hơn quả lớn.', 3),
(21, 'Không có vết thâm: Kiểm tra quả không có đốm đen hoặc dấu hiệu hư hỏng.', 4),
(21, 'Tránh dưa có vị đắng: Dưa leo tươi có vị mát, tránh loại có vị đắng ở phần cuống.', 5);

-- Chèn vào bảng vegetable_preserve_points
INSERT INTO vegetable_preserve_points (vegetable_id, point_text, display_order)
VALUES 
(21, 'Bọc kín trong ngăn mát: Đặt dưa leo trong túi nhựa, bảo quản ở 7-10°C, giữ tươi 10-14 ngày.', 1),
(21, 'Giữ khô trước khi bảo quản: Không rửa dưa leo trước khi cất, tránh ẩm mốc, chỉ rửa trước khi chế biến.', 2),
(21, 'Đông lạnh để bảo quản lâu: Cắt lát, chần sơ 1-2 phút, để ráo, cho vào túi zip, đông lạnh ở -18°C, dùng trong 6 tháng (thích hợp cho sinh tố hoặc nấu canh).', 3),
(21, 'Kiểm tra định kỳ: Loại bỏ quả bị mềm hoặc thâm để tránh lây lan hư hỏng.', 4),
(21, 'Tránh để gần trái cây tiết ethylene: Táo, chuối làm dưa leo nhanh vàng và hỏng.', 5);

-- Chèn vào bảng recipes
INSERT INTO recipes (name, description, prep_time, cook_time, servings)
VALUES 
('Gỏi dưa leo tôm thịt', 'Món gỏi tươi mát, phổ biến trong ẩm thực Việt Nam, với dưa leo giòn trộn tôm và thịt, là món khai vị hoặc ăn kèm.', '15 phút', '10 phút', '4 người'),
('Dưa leo muối chua', 'Món muối chua truyền thống Việt Nam, với dưa leo giòn, chua ngọt, thường dùng làm món ăn kèm hoặc khai vị.', '10 phút', '0 phút', '4 người'),
('Dưa leo xào tỏi', 'Món xào đơn giản, phổ biến trong ẩm thực Việt Nam, với dưa leo giòn thấm vị tỏi thơm, là món phụ dễ làm.', '10 phút', '10 phút', '4 người'),
('Canh dưa leo nhồi thịt', 'Món canh bổ dưỡng, quen thuộc trong ẩm thực Việt Nam, với dưa leo nhồi thịt heo, là món phụ thơm ngon.', '15 phút', '20 phút', '4 người');

-- Chèn vào bảng recipe_vegetables
INSERT INTO recipe_vegetables (recipe_id, vegetable_id)
VALUES 
(81, 20),
(82, 20),
(83, 20),
(84, 20);

-- Chèn vào bảng recipe_items
INSERT INTO recipe_items (recipe_id, item_name, quantity, notes, order_index)
VALUES 
-- Gỏi dưa leo tôm thịt
(81, 'Dưa leo', '300g', 'Rửa sạch, thái lát mỏng hoặc sợi', 1),
(81, 'Tôm tươi', '100g', 'Luộc chín, bóc vỏ', 2),
(81, 'Thịt heo nạc', '100g', 'Luộc chín, thái sợi', 3),
(81, 'Nước mắm', '2 muỗng canh', 'Chọn loại ngon', 4),
(81, 'Đường', '1 muỗng canh', 'Tạo vị ngọt', 5),
(81, 'Nước cốt chanh', '1 muỗng canh', 'Tạo vị chua', 6),
(81, 'Rau răm', '10g', 'Rửa sạch, thái nhỏ, trang trí', 7),
(81, 'Ớt', '1 quả (5g)', 'Thái lát', 8),
-- Dưa leo muối chua
(82, 'Dưa leo', '400g', 'Rửa sạch, thái lát mỏng hoặc cắt khúc', 1),
(82, 'Đường', '2 muỗng canh', 'Tạo vị ngọt', 2),
(82, 'Giấm', '3 muỗng canh', 'Giấm gạo, tạo vị chua', 3),
(82, 'Muối', '1 muỗng cà phê', 'Tăng hương vị', 4),
(82, 'Nước', '200ml', 'Nước ấm, dùng để pha hỗn hợp muối', 5),
(82, 'Tỏi', '2 tép (10g)', 'Thái lát mỏng', 6),
(82, 'Ớt', '1 quả (5g)', 'Thái lát, tùy khẩu vị', 7),
-- Dưa leo xào tỏi
(83, 'Dưa leo', '300g', 'Rửa sạch, cắt lát xéo hoặc cắt khúc 5cm', 1),
(83, 'Tỏi', '4 tép (15g)', 'Bóc vỏ, băm nhỏ', 2),
(83, 'Dầu ăn', '2 muỗng canh', 'Dùng để xào', 3),
(83, 'Nước mắm', '1 muỗng canh', 'Tăng hương vị', 4),
(83, 'Muối', '1/4 muỗng cà phê', 'Điều chỉnh theo khẩu vị', 5),
(83, 'Hạt tiêu', '1/4 muỗng cà phê', 'Rắc khi hoàn thiện', 6),
(83, 'Hành lá', '1 nhánh (5g)', 'Thái nhỏ, trang trí', 7),
-- Canh dưa leo nhồi thịt
(84, 'Dưa leo', '300g', 'Rửa sạch, bỏ ruột, cắt khúc 5cm', 1),
(84, 'Thịt heo băm', '150g', 'Ướp với 1/2 muỗng cà phê muối, 1/4 muỗng cà phê tiêu', 2),
(84, 'Hành lá', '2 nhánh (10g)', 'Rửa sạch, thái nhỏ', 3),
(84, 'Nước mắm', '1 muỗng canh', 'Chọn loại ngon', 4),
(84, 'Muối', '1/2 muỗng cà phê', 'Điều chỉnh theo khẩu vị', 5),
(84, 'Hạt tiêu', '1/4 muỗng cà phê', 'Rắc khi hoàn thiện', 6),
(84, 'Nước', '1 lít', 'Nước lọc', 7),
(84, 'Dầu ăn', '1 muỗng canh', 'Dùng để phi hành', 8);

-- Chèn vào bảng recipe_steps
INSERT INTO recipe_steps (recipe_id, step_number, instruction_text)
VALUES 
-- Gỏi dưa leo tôm thịt
(81, 1, 'Chuẩn bị nguyên liệu: Rửa sạch dưa leo, thái lát mỏng hoặc sợi, ngâm nước muối loãng 5 phút để giòn, để ráo. Tôm và thịt heo luộc chín, tôm bóc vỏ, thịt thái sợi. Rau răm và ớt thái nhỏ.'),
(81, 2, 'Pha nước mắm: Trộn 2 muỗng canh nước mắm, 1 muỗng canh đường, 1 muỗng canh nước cốt chanh, và ớt trong bát. Khuấy đều để đường tan, tạo vị chua ngọt cay.'),
(81, 3, 'Trộn gỏi: Cho dưa leo, tôm, và thịt vào bát lớn, đổ nước mắm pha vào, trộn đều để thấm gia vị. Để 5 phút cho ngấm, thỉnh thoảng trộn lại.'),
(81, 4, 'Hoàn thiện gỏi: Rắc rau răm lên trên, trộn nhẹ. Dọn ra đĩa, dùng làm món khai vị hoặc ăn kèm cơm để thưởng thức vị giòn mát và chua cay.'),
-- Dưa leo muối chua
(82, 1, 'Chuẩn bị nguyên liệu: Rửa sạch dưa leo, thái lát mỏng hoặc cắt khúc, ngâm nước muối loãng 5 phút, để ráo. Tỏi và ớt thái lát.'),
(82, 2, 'Pha nước muối: Hòa 2 muỗng canh đường, 1 muỗng cà phê muối, 3 muỗng canh giấm, và 200ml nước ấm trong bát. Khuấy đều để đường và muối tan hoàn toàn.'),
(82, 3, 'Ngâm dưa leo: Xếp dưa leo, tỏi, và ớt vào lọ thủy tinh sạch. Đổ nước muối vào, đảm bảo ngập dưa leo. Đậy kín, để ở nhiệt độ phòng 1-2 ngày cho lên men nhẹ.'),
(82, 4, 'Hoàn thiện món muối: Sau khi muối chua, bảo quản lọ trong tủ lạnh, dùng trong 1-2 tuần. Dọn ra đĩa, ăn kèm thịt kho hoặc cá chiên để thưởng thức vị giòn chua ngọt.'),
-- Dưa leo xào tỏi
(83, 1, 'Chuẩn bị nguyên liệu: Rửa sạch dưa leo, cắt lát xéo hoặc cắt khúc 5cm, ngâm nước muối loãng 5 phút, để ráo. Tỏi băm nhỏ, hành lá thái nhỏ.'),
(83, 2, 'Phi tỏi: Đun nóng 2 muỗng canh dầu ăn trong chảo, phi tỏi 30 giây đến khi vàng nhẹ và dậy mùi thơm. Tránh để tỏi cháy vì sẽ tạo vị đắng.'),
(83, 3, 'Xào dưa leo: Cho dưa leo vào chảo, xào trên lửa vừa 3-4 phút đến khi dưa chín nhưng vẫn giòn. Nêm 1 muỗng canh nước mắm và 1/4 muỗng cà phê muối.'),
(83, 4, 'Hoàn thiện món xào: Rắc hành lá và 1/4 muỗng cà phê hạt tiêu, đảo lần cuối trong 10 giây. Tắt bếp, chuyển ra đĩa, dùng nóng như món phụ với cơm trắng.'),
-- Canh dưa leo nhồi thịt
(84, 1, 'Chuẩn bị nguyên liệu: Rửa sạch dưa leo, cắt khúc 5cm, khoét bỏ ruột. Thịt heo băm ướp với 1/2 muỗng cà phê muối, 1/4 muỗng cà phê tiêu trong 10 phút. Hành lá thái nhỏ.'),
(84, 2, 'Nhồi thịt: Nhồi thịt băm vào từng khúc dưa leo, ấn nhẹ để thịt chặt. Đảm bảo thịt không nhồi quá đầy để tránh bung khi nấu.'),
(84, 3, 'Nấu canh: Đun sôi 1 lít nước lọc, cho dưa leo nhồi thịt vào, nấu trên lửa vừa 10-12 phút đến khi dưa leo mềm và thịt chín. Nêm 1 muỗng canh nước mắm và 1/2 muỗng cà phê muối.'),
(84, 4, 'Hoàn thiện canh: Rắc hành lá và 1/4 muỗng cà phê hạt tiêu, đun thêm 1 phút. Tắt bếp, múc ra bát, dùng nóng với cơm trắng để thưởng thức vị ngọt thanh và giòn.');

-- --------------------------------------
-- 22. Giá đỗ (class_index: 21)
-- --------------------------------------

-- Chèn vào bảng vegetables
INSERT INTO vegetables (class_index, vietnamese_name, scientific_name, description, nutritional_info)
VALUES (
    21, 
    'Giá đỗ', 
    'Vigna radiata (mầm)', 
    'Giá đỗ là mầm của đậu xanh (Vigna radiata), được trồng phổ biến ở Việt Nam, đặc biệt trong các hộ gia đình và trang trại. Giá đỗ có thân trắng, mỏng, giòn, đầu mầm màu vàng hoặc xanh nhạt, vị ngọt nhẹ. Giá đỗ được dùng trong các món xào, canh, gỏi, hoặc ăn sống kèm bún, phở, là nguyên liệu quen thuộc trong ẩm thực Việt Nam nhờ độ giòn và dinh dưỡng cao.',
    'Giá đỗ giàu vitamin C, vitamin K, folate, và chất xơ. Rau này hỗ trợ tiêu hóa, tăng cường miễn dịch, và cải thiện sức khỏe xương nhờ vitamin K. Giá đỗ cũng chứa chất chống oxy hóa và enzyme, giúp giải độc cơ thể và hỗ trợ trao đổi chất. Với lượng calo thấp, giá đỗ là lựa chọn lý tưởng cho chế độ ăn lành mạnh.'
);

-- Chèn vào bảng vegetable_nutritional_points
INSERT INTO vegetable_nutritional_points (vegetable_id, point_text, display_order)
VALUES 
(22, 'Vitamin C (23% DV trong 100g): Tăng cường miễn dịch, hỗ trợ sản xuất collagen, và bảo vệ tế bào khỏi tổn thương oxy hóa.', 1),
(22, 'Chất xơ (1.8g trong 100g): Cải thiện tiêu hóa, ngăn ngừa táo bón, và hỗ trợ kiểm soát đường huyết.', 2),
(22, 'Vitamin K (33% DV trong 100g): Hỗ trợ đông máu và sức khỏe xương, giảm nguy cơ loãng xương.', 3),
(22, 'Folate (15% DV trong 100g): Hỗ trợ phát triển tế bào, đặc biệt quan trọng cho phụ nữ mang thai.', 4),
(22, 'Chất chống oxy hóa: Giúp giải độc cơ thể, giảm viêm, và bảo vệ tế bào khỏi tổn thương.', 5),
(22, 'Ít calo (30 kcal trong 100g): Phù hợp cho chế độ ăn kiêng, giúp kiểm soát cân nặng mà vẫn cung cấp dinh dưỡng.', 6);

-- Chèn vào bảng vegetable_select_points
INSERT INTO vegetable_select_points (vegetable_id, point_text, display_order)
VALUES 
(22, 'Thân trắng, giòn: Chọn giá đỗ có thân trắng mọng, không vàng hoặc nhũn.', 1),
(22, 'Mầm ngắn, chắc: Giá đỗ tươi có mầm ngắn (3-5cm), đầu mầm vàng hoặc xanh nhạt, không héo.', 2),
(22, 'Không nhớt, không mùi chua: Giá đỗ tươi có bề mặt khô ráo, không nhớt, mùi nhẹ, tránh loại có mùi chua hoặc lên men.', 3),
(22, 'Rễ ngắn, sạch: Giá đỗ chất lượng có rễ ngắn, không quá dài hoặc bám bẩn.', 4),
(22, 'Tránh giá đỗ úa: Kiểm tra giá đỗ không có dấu hiệu úa, thâm, hoặc hư hỏng.', 5);

-- Chèn vào bảng vegetable_preserve_points
INSERT INTO vegetable_preserve_points (vegetable_id, point_text, display_order)
VALUES 
(22, 'Bọc kín trong ngăn mát: Đặt giá đỗ trong túi nhựa đục lỗ, bảo quản ở 0-4°C, giữ tươi 2-3 ngày.', 1),
(22, 'Rửa sạch trước khi bảo quản: Rửa giá đỗ nhẹ nhàng, để ráo, bọc trong khăn giấy ẩm trước khi cho vào túi để tránh ẩm mốc.', 2),
(22, 'Đông lạnh để bảo quản lâu: Chần sơ giá đỗ trong nước sôi 30 giây, ngâm nước lạnh, để ráo, cho vào túi zip, đông lạnh ở -18°C, dùng trong 3-4 tháng.', 3),
(22, 'Kiểm tra định kỳ: Loại bỏ giá đỗ bị nhớt, úa, hoặc có mùi để tránh lây lan hư hỏng.', 4),
(22, 'Tránh để lâu ngoài không khí: Giá đỗ dễ héo và mất độ giòn, cần chế biến sớm sau khi mua.', 5);

-- Chèn vào bảng recipes
INSERT INTO recipes (name, description, prep_time, cook_time, servings)
VALUES 
('Giá đỗ xào thịt bò', 'Món xào thơm ngon, phổ biến trong ẩm thực Việt Nam, với giá đỗ giòn kết hợp thịt bò mềm, là món chính trong bữa cơm.', '10 phút', '10 phút', '4 người'),
('Canh giá đỗ nấu tôm', 'Món canh thanh nhẹ, quen thuộc trong ẩm thực Việt Nam, với giá đỗ giòn và tôm tươi, là món phụ bổ dưỡng.', '10 phút', '10 phút', '4 người'),
('Gỏi giá đỗ tôm thịt', 'Món gỏi tươi mát, phổ biến trong ẩm thực Việt Nam, với giá đỗ giòn trộn tôm và thịt, là món khai vị hoặc ăn kèm.', '15 phút', '10 phút', '4 người'),
('Giá đỗ trộn mắm', 'Món trộn đơn giản, phổ biến trong ẩm thực Việt Nam, với giá đỗ giòn thấm nước mắm chua ngọt, là món phụ hoặc khai vị.', '10 phút', '5 phút', '4 người');

-- Chèn vào bảng recipe_vegetables
INSERT INTO recipe_vegetables (recipe_id, vegetable_id)
VALUES 
(85, 22),
(86, 22),
(87, 22),
(88, 22);

-- Chèn vào bảng recipe_items
INSERT INTO recipe_items (recipe_id, item_name, quantity, notes, order_index)
VALUES 
-- Giá đỗ xào thịt bò
(85, 'Giá đỗ', '300g', 'Rửa sạch, để ráo', 1),
(85, 'Thịt bò', '200g', 'Thái lát mỏng, ướp với 1/2 muỗng cà phê muối, 1/4 muỗng cà phê tiêu', 2),
(85, 'Tỏi', '3 tép (12g)', 'Bóc vỏ, băm nhỏ', 3),
(85, 'Dầu ăn', '2 muỗng canh', 'Dùng để xào', 4),
(85, 'Nước mắm', '1 muỗng canh', 'Tăng hương vị', 5),
(85, 'Đường', '1/2 muỗng cà phê', 'Tạo vị cân bằng', 6),
(85, 'Hạt tiêu', '1/4 muỗng cà phê', 'Rắc khi hoàn thiện', 7),
(85, 'Hành lá', '1 nhánh (5g)', 'Thái nhỏ, trang trí', 8),
-- Canh giá đỗ nấu tôm
(86, 'Giá đỗ', '200g', 'Rửa sạch, để ráo', 1),
(86, 'Tôm tươi', '200g', 'Bóc vỏ, bỏ đầu, rút chỉ đen', 2),
(86, 'Hành lá', '2 nhánh (10g)', 'Rửa sạch, thái nhỏ', 3),
(86, 'Nước mắm', '1 muỗng canh', 'Chọn loại ngon', 4),
(86, 'Muối', '1/2 muỗng cà phê', 'Điều chỉnh theo khẩu vị', 5),
(86, 'Hạt tiêu', '1/4 muỗng cà phê', 'Rắc khi hoàn thiện', 6),
(86, 'Dầu ăn', '1 muỗng canh', 'Dùng để xào', 7),
(86, 'Nước', '1 lít', 'Nước lọc', 8),
-- Gỏi giá đỗ tôm thịt
(87, 'Giá đỗ', '300g', 'Rửa sạch, chần sơ 30 giây, để ráo', 1),
(87, 'Tôm tươi', '100g', 'Luộc chín, bóc vỏ', 2),
(87, 'Thịt heo nạc', '100g', 'Luộc chín, thái sợi', 3),
(87, 'Nước mắm', '2 muỗng canh', 'Chọn loại ngon', 4),
(87, 'Đường', '1 muỗng canh', 'Tạo vị ngọt', 5),
(87, 'Nước cốt chanh', '1 muỗng canh', 'Tạo vị chua', 6),
(87, 'Rau răm', '10g', 'Rửa sạch, thái nhỏ, trang trí', 7),
(87, 'Ớt', '1 quả (5g)', 'Thái lát', 8),
-- Giá đỗ trộn mắm
(88, 'Giá đỗ', '300g', 'Rửa sạch, chần sơ 30 giây, để ráo', 1),
(88, 'Nước mắm', '2 muỗng canh', 'Chọn loại ngon', 2),
(88, 'Đường', '1 muỗng canh', 'Tạo vị ngọt', 3),
(88, 'Tỏi', '2 tép (10g)', 'Băm nhỏ', 4),
(88, 'Nước cốt chanh', '1 muỗng canh', 'Tạo vị chua', 5),
(88, 'Ớt', '1 quả (5g)', 'Thái lát', 6),
(88, 'Rau mùi', '10g', 'Rửa sạch, thái nhỏ, trang trí', 7);

-- Chèn vào bảng recipe_steps
INSERT INTO recipe_steps (recipe_id, step_number, instruction_text)
VALUES 
-- Giá đỗ xào thịt bò
(85, 1, 'Chuẩn bị nguyên liệu: Rửa sạch giá đỗ, để ráo. Thịt bò thái lát mỏng, ướp với 1/2 muỗng cà phê muối, 1/4 muỗng cà phê tiêu trong 10 phút. Tỏi băm nhỏ, hành lá thái nhỏ.'),
(85, 2, 'Xào thịt bò: Đun nóng 1 muỗng canh dầu ăn trong chảo, phi thơm nửa lượng tỏi. Cho thịt bò vào, xào trên lửa lớn 1-2 phút đến khi tái, vớt ra để riêng.'),
(85, 3, 'Xào giá đỗ: Thêm 1 muỗng canh dầu ăn, phi thơm tỏi còn lại. Cho giá đỗ vào, xào trên lửa vừa 1-2 phút đến khi giá chín nhưng vẫn giòn. Nêm 1 muỗng canh nước mắm và 1/2 muỗng cà phê đường.'),
(85, 4, 'Hoàn thiện món xào: Cho thịt bò vào chảo, đảo đều 30 giây để thấm gia vị. Rắc hành lá và 1/4 muỗng cà phê hạt tiêu, tắt bếp, chuyển ra đĩa. Dùng nóng với cơm trắng.'),
-- Canh giá đỗ nấu tôm
(86, 1, 'Chuẩn bị nguyên liệu: Rửa sạch giá đỗ, để ráo. Tôm bóc vỏ, rút chỉ đen, rửa sạch với nước muối loãng. Hành lá thái nhỏ.'),
(86, 2, 'Xào tôm: Đun nóng 1 muỗng canh dầu ăn trong nồi, cho tôm vào xào 1-2 phút đến khi tôm hồng và săn lại. Vớt tôm ra, để riêng.'),
(86, 3, 'Nấu canh: Đổ 1 lít nước lọc vào nồi, đun sôi. Thêm giá đỗ, nấu 2-3 phút đến khi giá mềm. Cho tôm vào, nêm 1 muỗng canh nước mắm và 1/2 muỗng cà phê muối.'),
(86, 4, 'Hoàn thiện canh: Đun thêm 1 phút để gia vị thấm, rắc hành lá và 1/4 muỗng cà phê hạt tiêu. Tắt bếp, múc ra bát, dùng nóng với cơm trắng để thưởng thức vị ngọt thanh.'),
-- Gỏi giá đỗ tôm thịt
(87, 1, 'Chuẩn bị nguyên liệu: Rửa sạch giá đỗ, chần sơ trong nước sôi 30 giây, ngâm nước lạnh để giữ độ giòn, để ráo. Tôm và thịt heo luộc chín, tôm bóc vỏ, thịt thái sợi. Rau răm và ớt thái nhỏ.'),
(87, 2, 'Pha nước mắm: Trộn 2 muỗng canh nước mắm, 1 muỗng canh đường, 1 muỗng canh nước cốt chanh, và ớt trong bát. Khuấy đều để đường tan, tạo vị chua ngọt cay.'),
(87, 3, 'Trộn gỏi: Cho giá đỗ, tôm, và thịt vào bát lớn, đổ nước mắm pha vào, trộn đều để thấm gia vị. Để 5 phút cho ngấm, thỉnh thoảng trộn lại.'),
(87, 4, 'Hoàn thiện gỏi: Rắc rau răm lên trên, trộn nhẹ. Dọn ra đĩa, dùng làm món khai vị hoặc ăn kèm cơm để thưởng thức vị giòn mát và chua cay.'),
-- Giá đỗ trộn mắm
(88, 1, 'Chuẩn bị nguyên liệu: Rửa sạch giá đỗ, chần sơ trong nước sôi 30 giây, ngâm nước lạnh để giữ độ giòn, để ráo. Tỏi băm nhỏ, ớt và rau mùi thái nhỏ.'),
(88, 2, 'Pha nước mắm: Trộn 2 muỗng canh nước mắm, 1 muỗng canh đường, 1 muỗng canh nước cốt chanh, tỏi băm, và ớt trong bát. Khuấy đều để đường tan, tạo vị chua ngọt cay.'),
(88, 3, 'Trộn giá đỗ: Cho giá đỗ vào bát lớn, đổ nước mắm pha vào, trộn đều để thấm gia vị. Để 5 phút cho ngấm, thỉnh thoảng trộn lại.'),
(88, 4, 'Hoàn thiện món trộn: Rắc rau mùi lên trên, trộn nhẹ. Dọn ra đĩa, dùng làm món khai vị hoặc ăn kèm thịt nướng, cá chiên để thưởng thức vị giòn ngọt và chua cay.');

-- --------------------------------------
-- 23. Hành lá (class_index: 22)
-- --------------------------------------

-- Chèn vào bảng vegetables
INSERT INTO vegetables (class_index, vietnamese_name, scientific_name, description, nutritional_info)
VALUES (
    22, 
    'Hành lá', 
    'Allium fistulosum', 
    'Hành lá, hay còn gọi là hành xanh, là một loại rau thuộc họ Hành (Amaryllidaceae), được trồng phổ biến ở Việt Nam, đặc biệt ở các vùng nông thôn. Hành lá có thân dài, mảnh, màu xanh, phần gốc trắng, vị thơm nhẹ, cay nhẹ. Hành lá được dùng để trang trí, tăng hương vị trong các món canh, xào, gỏi, hoặc làm mỡ hành, là nguyên liệu quen thuộc trong ẩm thực Việt Nam nhờ hương thơm đặc trưng.',
    'Hành lá giàu vitamin C, vitamin K, và chất xơ. Rau này hỗ trợ tiêu hóa, tăng cường miễn dịch, và cải thiện sức khỏe xương nhờ vitamin K. Hành lá cũng chứa chất chống oxy hóa như flavonoid, giúp giảm viêm và bảo vệ tim mạch. Với lượng calo thấp, hành lá là lựa chọn lý tưởng để tăng hương vị món ăn mà không tăng calo.'
);

-- Chèn vào bảng vegetable_nutritional_points
INSERT INTO vegetable_nutritional_points (vegetable_id, point_text, display_order)
VALUES 
(23, 'Vitamin C (31% DV trong 100g): Tăng cường miễn dịch, hỗ trợ sản xuất collagen, và bảo vệ tế bào khỏi tổn thương oxy hóa.', 1),
(23, 'Vitamin K (173% DV trong 100g): Hỗ trợ đông máu và sức khỏe xương, giảm nguy cơ loãng xương.', 2),
(23, 'Chất xơ (2.6g trong 100g): Cải thiện tiêu hóa, ngăn ngừa táo bón, và hỗ trợ kiểm soát đường huyết.', 3),
(23, 'Flavonoid: Chất chống oxy hóa giúp giảm viêm, bảo vệ tim mạch, và ngăn ngừa tổn thương tế bào.', 4),
(23, 'Kali (276mg trong 100g): Giúp cân bằng huyết áp, hỗ trợ chức năng cơ bắp, và giảm nguy cơ đột quỵ.', 5),
(23, 'Ít calo (32 kcal trong 100g): Phù hợp cho chế độ ăn kiêng, tăng hương vị món ăn mà không tăng calo.', 6);

-- Chèn vào bảng vegetable_select_points
INSERT INTO vegetable_select_points (vegetable_id, point_text, display_order)
VALUES 
(23, 'Lá xanh tươi, không úa: Chọn hành lá có lá xanh đậm, bóng, không vàng hoặc héo.', 1),
(23, 'Thân giòn, chắc: Hành lá tươi có thân trắng mọng, giòn, không mềm hoặc nhũn.', 2),
(23, 'Rễ sạch, ngắn: Hành lá chất lượng có rễ trắng, ngắn, không quá dài hoặc bám bẩn.', 3),
(23, 'Mùi thơm nhẹ: Hành lá tươi có mùi thơm đặc trưng, tránh loại có mùi hắc hoặc chua.', 4),
(23, 'Tránh hành bị dập: Kiểm tra hành lá không bị dập nát hoặc có dấu hiệu hư hỏng.', 5);

-- Chèn vào bảng vegetable_preserve_points
INSERT INTO vegetable_preserve_points (vegetable_id, point_text, display_order)
VALUES 
(23, 'Bọc kín trong ngăn mát: Bọc hành lá trong khăn giấy ẩm, cho vào túi nhựa, bảo quản ở 0-4°C, giữ tươi 1-2 tuần.', 1),
(23, 'Giữ khô trước khi bảo quản: Không rửa hành lá trước khi cất, tránh ẩm mốc, chỉ rửa trước khi chế biến.', 2),
(23, 'Đông lạnh để bảo quản lâu: Rửa sạch, thái nhỏ, để ráo, cho vào túi zip, đông lạnh ở -18°C, dùng trong 3-6 tháng.', 3),
(23, 'Kiểm tra định kỳ: Loại bỏ phần hành bị úa hoặc nhớt để tránh lây lan hư hỏng.', 4),
(23, 'Tránh để gần trái cây tiết ethylene: Táo, chuối làm hành lá nhanh héo và mất mùi thơm.', 5);

-- Chèn vào bảng recipes
INSERT INTO recipes (name, description, prep_time, cook_time, servings)
VALUES 
('Mỡ hành', 'Món gia vị truyền thống Việt Nam, với hành lá thái nhỏ phủ dầu nóng, dùng để trang trí hoặc tăng hương vị cho bánh, cháo, cơm.', '5 phút', '5 phút', '4 người'),
('Hành lá xào nấm', 'Món xào đơn giản, phổ biến trong ẩm thực Việt Nam, với hành lá giòn kết hợp nấm thơm, là món phụ nhẹ nhàng.', '10 phút', '10 phút', '4 người'),
('Canh trứng hành lá', 'Món canh thanh nhẹ, quen thuộc trong ẩm thực Việt Nam, với hành lá thơm và trứng mềm, là món phụ bổ dưỡng.', '5 phút', '10 phút', '4 người'),
('Gỏi gà hành lá', 'Món gỏi tươi mát, phổ biến trong ẩm thực Việt Nam, với hành lá trộn thịt gà, là món khai vị hoặc ăn kèm.', '15 phút', '10 phút', '4 người');

-- Chèn vào bảng recipe_vegetables
INSERT INTO recipe_vegetables (recipe_id, vegetable_id)
VALUES 
(89, 23),
(90, 23),
(91, 23),
(92, 23);

-- Chèn vào bảng recipe_items
INSERT INTO recipe_items (recipe_id, item_name, quantity, notes, order_index)
VALUES 
-- Mỡ hành
(89, 'Hành lá', '100g', 'Rửa sạch, thái nhỏ', 1),
(89, 'Dầu ăn', '4 muỗng canh', 'Dùng để làm mỡ hành', 2),
(89, 'Muối', '1/4 muỗng cà phê', 'Tăng hương vị', 3),
-- Hành lá xào nấm
(90, 'Hành lá', '200g', 'Rửa sạch, cắt khúc 5cm', 1),
(90, 'Nấm (tùy chọn)', '200g', 'Nấm hương hoặc nấm rơm, rửa sạch, cắt đôi', 2),
(90, 'Tỏi', '3 tép (12g)', 'Bóc vỏ, băm nhỏ', 3),
(90, 'Dầu ăn', '2 muỗng canh', 'Dùng để xào', 4),
(90, 'Nước mắm', '1 muỗng canh', 'Tăng hương vị', 5),
(90, 'Đường', '1/2 muỗng cà phê', 'Tạo vị cân bằng', 6),
(90, 'Hạt tiêu', '1/4 muỗng cà phê', 'Rắc khi hoàn thiện', 7),
-- Canh trứng hành lá
(91, 'Hành lá', '100g', 'Rửa sạch, thái nhỏ', 1),
(91, 'Trứng gà', '2 quả', 'Đánh tan', 2),
(91, 'Nước mắm', '1 muỗng canh', 'Chọn loại ngon', 3),
(91, 'Muối', '1/2 muỗng cà phê', 'Điều chỉnh theo khẩu vị', 4),
(91, 'Hạt tiêu', '1/4 muỗng cà phê', 'Rắc khi hoàn thiện', 5),
(91, 'Nước', '1 lít', 'Nước lọc', 6),
-- Gỏi gà hành lá
(92, 'Hành lá', '150g', 'Rửa sạch, cắt khúc 5cm, chần sơ', 1),
(92, 'Thịt gà', '200g', 'Luộc chín, xé sợi', 2),
(92, 'Nước mắm', '2 muỗng canh', 'Chọn loại ngon', 3),
(92, 'Đường', '1 muỗng canh', 'Tạo vị ngọt', 4),
(92, 'Nước cốt chanh', '1 muỗng canh', 'Tạo vị chua', 5),
(92, 'Tỏi', '2 tép (10g)', 'Băm nhỏ', 6),
(92, 'Ớt', '1 quả (5g)', 'Thái lát', 7),
(92, 'Rau răm', '10g', 'Rửa sạch, thái nhỏ, trang trí', 8);

-- Chèn vào bảng recipe_steps
INSERT INTO recipe_steps (recipe_id, step_number, instruction_text)
VALUES 
-- Mỡ hành
(89, 1, 'Chuẩn bị nguyên liệu: Rửa sạch hành lá, thái nhỏ, cho vào bát chịu nhiệt. Thêm 1/4 muỗng cà phê muối, trộn đều.'),
(89, 2, 'Làm mỡ hành: Đun nóng 4 muỗng canh dầu ăn trong chảo đến khi bốc khói nhẹ (khoảng 180°C). Tắt bếp, đổ dầu nóng vào bát hành lá.'),
(89, 3, 'Trộn đều: Khuấy nhẹ để hành lá chín đều trong dầu nóng, tạo mùi thơm. Để nguội nhẹ trước khi sử dụng.'),
(89, 4, 'Hoàn thiện món: Dùng mỡ hành rưới lên bánh bột lọc, cháo, hoặc cơm trắng để tăng hương vị. Bảo quản trong lọ kín, dùng trong 2-3 ngày.'),
-- Hành lá xào nấm
(90, 1, 'Chuẩn bị nguyên liệu: Rửa sạch hành lá, cắt khúc 5cm. Nấm rửa sạch, cắt đôi nếu lớn. Tỏi băm nhỏ.'),
(90, 2, 'Phi tỏi: Đun nóng 2 muỗng canh dầu ăn trong chảo, phi tỏi 30 giây đến khi vàng nhẹ và dậy mùi thơm. Tránh để tỏi cháy vì sẽ tạo vị đắng.'),
(90, 3, 'Xào nấm và hành: Cho nấm vào chảo, xào 2-3 phút đến khi nấm mềm. Thêm hành lá, xào thêm 1-2 phút để hành chín nhưng vẫn giòn. Nêm 1 muỗng canh nước mắm và 1/2 muỗng cà phê đường.'),
(90, 4, 'Hoàn thiện món xào: Rắc 1/4 muỗng cà phê hạt tiêu, đảo lần cuối trong 10 giây. Tắt bếp, chuyển ra đĩa, dùng nóng như món phụ với cơm trắng.'),
-- Canh trứng hành lá
(91, 1, 'Chuẩn bị nguyên liệu: Rửa sạch hành lá, thái nhỏ. Đánh tan 2 quả trứng trong bát. Đun sôi 1 lít nước lọc trong nồi.'),
(91, 2, 'Nấu canh: Khi nước sôi, từ từ đổ trứng vào, khuấy nhẹ theo vòng tròn để tạo vân trứng. Nấu 1-2 phút đến khi trứng chín.'),
(91, 3, 'Nêm gia vị: Thêm hành lá vào nồi, nêm 1 muỗng canh nước mắm và 1/2 muỗng cà phê muối. Đun thêm 1 phút để hành lá chín và thơm.'),
(91, 4, 'Hoàn thiện canh: Rắc 1/4 muỗng cà phê hạt tiêu, khuấy nhẹ. Tắt bếp, múc ra bát, dùng nóng với cơm trắng để thưởng thức vị thanh nhẹ.'),
-- Gỏi gà hành lá
(92, 1, 'Chuẩn bị nguyên liệu: Rửa sạch hành lá, cắt khúc 5cm, chần sơ trong nước sôi 30 giây, ngâm nước lạnh để giữ độ giòn, để ráo. Thịt gà luộc chín, xé sợi. Tỏi băm nhỏ, ớt và rau răm thái nhỏ.'),
(92, 2, 'Pha nước mắm: Trộn 2 muỗng canh nước mắm, 1 muỗng canh đường, 1 muỗng canh nước cốt chanh, tỏi băm, và ớt trong bát. Khuấy đều để đường tan, tạo vị chua ngọt cay.'),
(92, 3, 'Trộn gỏi: Cho hành lá và thịt gà vào bát lớn, đổ nước mắm pha vào, trộn đều để thấm gia vị. Để 5 phút cho ngấm, thỉnh thoảng trộn lại.'),
(92, 4, 'Hoàn thiện gỏi: Rắc rau răm lên trên, trộn nhẹ. Dọn ra đĩa, dùng làm món khai vị hoặc ăn kèm cơm để thưởng thức vị thơm giòn và chua cay.');

-- --------------------------------------
-- 24. Hành tây (class_index: 23)
-- --------------------------------------

-- Chèn vào bảng vegetables
INSERT INTO vegetables (class_index, vietnamese_name, scientific_name, description, nutritional_info)
VALUES (
    23, 
    'Hành tây', 
    'Allium cepa', 
    'Hành tây là một loại củ thuộc họ Hành (Amaryllidaceae), được trồng phổ biến ở Việt Nam, đặc biệt ở các vùng khí hậu mát như Đà Lạt. Hành tây có hình cầu, vỏ ngoài màu vàng, tím hoặc trắng, thịt bên trong giòn, vị ngọt nhẹ, hơi cay. Hành tây được dùng trong các món xào, salad, canh, hoặc nướng, là nguyên liệu quen thuộc trong ẩm thực Việt Nam nhờ hương vị độc đáo và tính linh hoạt.',
    'Hành tây giàu vitamin C, chất xơ, và chất chống oxy hóa như quercetin. Rau này hỗ trợ tiêu hóa, tăng cường miễn dịch, và giảm viêm. Hành tây cũng chứa folate và kali, giúp duy trì sức khỏe tim mạch và huyết áp. Với lượng calo thấp, hành tây là lựa chọn lý tưởng để tăng hương vị món ăn mà không tăng calo.'
);

-- Chèn vào bảng vegetable_nutritional_points
INSERT INTO vegetable_nutritional_points (vegetable_id, point_text, display_order)
VALUES 
(24, 'Vitamin C (12% DV trong 100g): Tăng cường miễn dịch, hỗ trợ sản xuất collagen, và bảo vệ tế bào khỏi tổn thương oxy hóa.', 1),
(24, 'Chất xơ (1.7g trong 100g): Cải thiện tiêu hóa, ngăn ngừa táo bón, và hỗ trợ kiểm soát đường huyết.', 2),
(24, 'Quercetin: Chất chống oxy hóa giúp giảm viêm, bảo vệ tim mạch, và ngăn ngừa tổn thương tế bào.', 3),
(24, 'Folate (5% DV trong 100g): Hỗ trợ phát triển tế bào, đặc biệt quan trọng cho phụ nữ mang thai.', 4),
(24, 'Kali (146mg trong 100g): Giúp cân bằng huyết áp, hỗ trợ chức năng cơ bắp, và giảm nguy cơ đột quỵ.', 5),
(24, 'Ít calo (40 kcal trong 100g): Phù hợp cho chế độ ăn kiêng, tăng hương vị món ăn mà không tăng calo.', 6);

-- Chèn vào bảng vegetable_select_points
INSERT INTO vegetable_select_points (vegetable_id, point_text, display_order)
VALUES 
(24, 'Vỏ khô, bóng: Chọn hành tây có vỏ ngoài khô, mịn, không nứt hoặc bong tróc.', 1),
(24, 'Củ cứng, chắc: Hành tây tươi có độ cứng khi ấn, không mềm hoặc có dấu hiệu hư hỏng.', 2),
(24, 'Không mọc mầm: Tránh hành tây có mầm xanh hoặc phần cổ mềm, dấu hiệu củ đã cũ.', 3),
(24, 'Không có mùi hắc: Hành tây tươi có mùi nhẹ, tránh loại có mùi chua hoặc lên men.', 4),
(24, 'Tránh củ bị dập: Kiểm tra hành tây không có vết thâm hoặc dấu hiệu hư hỏng.', 5);

-- Chèn vào bảng vegetable_preserve_points
INSERT INTO vegetable_preserve_points (vegetable_id, point_text, display_order)
VALUES 
(24, 'Bảo quản nơi khô ráo: Để hành tây ở nơi thoáng mát, khô, tránh ánh sáng trực tiếp, giữ tươi 1-2 tháng.', 1),
(24, 'Không để trong tủ lạnh lâu: Hành tây dễ hút ẩm và mọc mầm trong tủ lạnh, chỉ bảo quản ngắn hạn ở 7-10°C nếu cần.', 2),
(24, 'Đông lạnh để bảo quản lâu: Gọt vỏ, cắt nhỏ, để vào túi zip, đông lạnh ở -18°C, dùng trong 6 tháng cho món nấu.', 3),
(24, 'Kiểm tra định kỳ: Loại bỏ củ bị mềm, mọc mầm, hoặc có mùi để tránh lây lan hư hỏng.', 4),
(24, 'Tránh để gần khoai tây: Khoai tây tiết ethylene làm hành tây nhanh hỏng.', 5);

-- Chèn vào bảng recipes
INSERT INTO recipes (name, description, prep_time, cook_time, servings)
VALUES 
('Hành tây xào thịt bò', 'Món xào thơm ngon, phổ biến trong ẩm thực Việt Nam, với hành tây ngọt giòn kết hợp thịt bò mềm, là món chính trong bữa cơm.', '10 phút', '10 phút', '4 người'),
('Salad hành tây trộn mắm', 'Món salad tươi mát, phổ biến trong ẩm thực Việt Nam, với hành tây giòn trộn nước mắm chua ngọt, là món khai vị hoặc ăn kèm.', '10 phút', '0 phút', '4 người'),
('Canh hành tây nấu tôm', 'Món canh thanh nhẹ, quen thuộc trong ẩm thực Việt Nam, với hành tây ngọt và tôm tươi, là món phụ bổ dưỡng.', '10 phút', '15 phút', '4 người'),
('Hành tây nhồi thịt nướng', 'Món nướng sáng tạo, phổ biến trong ẩm thực Việt Nam, với hành tây nhồi thịt heo thơm ngon, là món chính hoặc món phụ.', '15 phút', '20 phút', '4 người');

-- Chèn vào bảng recipe_vegetables
INSERT INTO recipe_vegetables (recipe_id, vegetable_id)
VALUES 
(93, 24),
(94, 24),
(95, 24),
(96, 24);

-- Chèn vào bảng recipe_items
INSERT INTO recipe_items (recipe_id, item_name, quantity, notes, order_index)
VALUES 
-- Hành tây xào thịt bò
(93, 'Hành tây', '200g', 'Gọt vỏ, cắt múi cau', 1),
(93, 'Thịt bò', '200g', 'Thái lát mỏng, ướp với 1/2 muỗng cà phê muối, 1/4 muỗng cà phê tiêu', 2),
(93, 'Tỏi', '3 tép (12g)', 'Bóc vỏ, băm nhỏ', 3),
(93, 'Dầu ăn', '2 muỗng canh', 'Dùng để xào', 4),
(93, 'Nước mắm', '1 muỗng canh', 'Tăng hương vị', 5),
(93, 'Đường', '1/2 muỗng cà phê', 'Tạo vị cân bằng', 6),
(93, 'Hạt tiêu', '1/4 muỗng cà phê', 'Rắc khi hoàn thiện', 7),
(93, 'Hành lá', '1 nhánh (5g)', 'Thái nhỏ, trang trí', 8),
-- Salad hành tây trộn mắm
(94, 'Hành tây', '200g', 'Gọt vỏ, thái lát mỏng, ngâm nước lạnh', 1),
(94, 'Nước mắm', '2 muỗng canh', 'Chọn loại ngon', 2),
(94, 'Đường', '1 muỗng canh', 'Tạo vị ngọt', 3),
(94, 'Nước cốt chanh', '1 muỗng canh', 'Tạo vị chua', 4),
(94, 'Tỏi', '2 tép (10g)', 'Băm nhỏ', 5),
(94, 'Ớt', '1 quả (5g)', 'Thái lát', 6),
(94, 'Rau mùi', '10g', 'Rửa sạch, thái nhỏ, trang trí', 7),
-- Canh hành tây nấu tôm
(95, 'Hành tây', '150g', 'Gọt vỏ, cắt múi cau', 1),
(95, 'Tôm tươi', '200g', 'Bóc vỏ, bỏ đầu, rút chỉ đen', 2),
(95, 'Hành lá', '2 nhánh (10g)', 'Rửa sạch, thái nhỏ', 3),
(95, 'Nước mắm', '1 muỗng canh', 'Chọn loại ngon', 4),
(95, 'Muối', '1/2 muỗng cà phê', 'Điều chỉnh theo khẩu vị', 5),
(95, 'Hạt tiêu', '1/4 muỗng cà phê', 'Rắc khi hoàn thiện', 6),
(95, 'Dầu ăn', '1 muỗng canh', 'Dùng để xào', 7),
(95, 'Nước', '1 lít', 'Nước lọc', 8),
-- Hành tây nhồi thịt nướng
(96, 'Hành tây', '4 củ (400g)', 'Củ lớn, gọt vỏ, khoét ruột', 1),
(96, 'Thịt heo băm', '200g', 'Ướp với 1/2 muỗng cà phê muối, 1/4 muỗng cà phê tiêu', 2),
(96, 'Nước mắm', '1 muỗng canh', 'Tăng hương vị', 3),
(96, 'Dầu ăn', '1 muỗng canh', 'Dùng để phết khi nướng', 4),
(96, 'Hành lá', '1 nhánh (5g)', 'Thái nhỏ, trộn với thịt', 5),
(96, 'Hạt tiêu', '1/4 muỗng cà phê', 'Rắc khi hoàn thiện', 6);

-- Chèn vào bảng recipe_steps
INSERT INTO recipe_steps (recipe_id, step_number, instruction_text)
VALUES 
-- Hành tây xào thịt bò
(93, 1, 'Chuẩn bị nguyên liệu: Gọt vỏ hành tây, cắt múi cau. Thịt bò thái lát mỏng, ướp với 1/2 muỗng cà phê muối, 1/4 muỗng cà phê tiêu trong 10 phút. Tỏi băm nhỏ, hành lá thái nhỏ.'),
(93, 2, 'Xào thịt bò: Đun nóng 1 muỗng canh dầu ăn trong chảo, phi thơm nửa lượng tỏi. Cho thịt bò vào, xào trên lửa lớn 1-2 phút đến khi tái, vớt ra để riêng.'),
(93, 3, 'Xào hành tây: Thêm 1 muỗng canh dầu ăn, phi thơm tỏi còn lại. Cho hành tây vào, xào 2-3 phút đến khi hành mềm nhưng vẫn giòn. Nêm 1 muỗng canh nước mắm và 1/2 muỗng cà phê đường.'),
(93, 4, 'Hoàn thiện món xào: Cho thịt bò vào chảo, đảo đều 1 phút để thấm gia vị. Rắc hành lá và 1/4 muỗng cà phê hạt tiêu, tắt bếp, chuyển ra đĩa. Dùng nóng với cơm trắng.'),
-- Salad hành tây trộn mắm
(94, 1, 'Chuẩn bị nguyên liệu: Gọt vỏ hành tây, thái lát mỏng, ngâm nước lạnh 10 phút để giảm cay, để ráo. Tỏi băm nhỏ, ớt và rau mùi thái nhỏ.'),
(94, 2, 'Pha nước mắm: Trộn 2 muỗng canh nước mắm, 1 muỗng canh đường, 1 muỗng canh nước cốt chanh, tỏi băm, và ớt trong bát. Khuấy đều để đường tan, tạo vị chua ngọt cay.'),
(94, 3, 'Trộn salad: Cho hành tây vào bát lớn, đổ nước mắm pha vào, trộn đều để thấm gia vị. Để 5 phút cho ngấm, thỉnh thoảng trộn lại.'),
(94, 4, 'Hoàn thiện salad: Rắc rau mùi lên trên, trộn nhẹ. Dọn ra đĩa, dùng làm món khai vị hoặc ăn kèm thịt nướng, cá chiên để thưởng thức vị giòn ngọt và chua cay.'),
-- Canh hành tây nấu tôm
(95, 1, 'Chuẩn bị nguyên liệu: Gọt vỏ hành tây, cắt múi cau. Tôm bóc vỏ, rút chỉ đen, rửa sạch với nước muối loãng. Hành lá thái nhỏ.'),
(95, 2, 'Xào tôm: Đun nóng 1 muỗng canh dầu ăn trong nồi, cho tôm vào xào 1-2 phút đến khi tôm hồng và săn lại. Vớt tôm ra, để riêng.'),
(95, 3, 'Nấu canh: Đổ 1 lít nước lọc vào nồi, đun sôi. Thêm hành tây, nấu 5-7 phút đến khi hành mềm. Cho tôm vào, nêm 1 muỗng canh nước mắm và 1/2 muỗng cà phê muối.'),
(95, 4, 'Hoàn thiện canh: Đun thêm 2 phút để gia vị thấm, rắc hành lá và 1/4 muỗng cà phê hạt tiêu. Tắt bếp, múc ra bát, dùng nóng với cơm trắng để thưởng thức vị ngọt thanh.'),
-- Hành tây nhồi thịt nướng
(96, 1, 'Chuẩn bị nguyên liệu: Gọt vỏ hành tây, cắt ngang làm đôi, khoét ruột để tạo hốc. Thịt heo băm ướp với 1/2 muỗng cà phê muối, 1/4 muỗng cà phê tiêu, và hành lá thái nhỏ trong 10 phút.'),
(96, 2, 'Nhồi thịt: Nhồi hỗn hợp thịt vào hốc hành tây, ấn nhẹ để thịt chặt. Phết một lớp mỏng dầu ăn lên bề mặt hành tây.'),
(96, 3, 'Nướng hành tây: Làm nóng lò nướng ở 200°C. Đặt hành tây nhồi thịt lên khay, nướng 15-20 phút đến khi hành mềm và thịt chín vàng. Nếu dùng vỉ than, nướng 10-12 phút, lật đều.'),
(96, 4, 'Hoàn thiện món nướng: Rắc 1/4 muỗng cà phê hạt tiêu và 1 muỗng canh nước mắm lên hành tây. Dọn ra đĩa, dùng nóng như món chính hoặc món phụ với cơm trắng.');

-- --------------------------------------
-- 25. Khổ qua (class_index: 24)
-- --------------------------------------

-- Chèn vào bảng vegetables
INSERT INTO vegetables (class_index, vietnamese_name, scientific_name, description, nutritional_info)
VALUES (
    24, 
    'Khổ qua', 
    'Momordica charantia', 
    'Khổ qua, hay còn gọi là mướp đắng, là một loại quả thuộc họ Bầu bí (Cucurbitaceae), được trồng phổ biến ở Việt Nam, đặc biệt ở các vùng nhiệt đới. Quả dài, vỏ xanh, bề mặt sần sùi, vị đắng đặc trưng. Khổ qua được dùng trong các món xào, nhồi thịt, canh, hoặc làm trà, là nguyên liệu quen thuộc trong ẩm thực Việt Nam nhờ công dụng giải nhiệt và dinh dưỡng cao.',
    'Khổ qua giàu vitamin C, vitamin A, chất xơ, và charantin, giúp kiểm soát đường huyết và tăng cường miễn dịch. Rau này hỗ trợ tiêu hóa, cải thiện thị lực, và chứa chất chống oxy hóa, giúp giảm viêm và bảo vệ tế bào. Với lượng calo thấp, khổ qua là lựa chọn lý tưởng cho chế độ ăn lành mạnh, đặc biệt cho người tiểu đường.'
);

-- Chèn vào bảng vegetable_nutritional_points
INSERT INTO vegetable_nutritional_points (vegetable_id, point_text, display_order)
VALUES 
(25, 'Vitamin C (84% DV trong 100g): Tăng cường miễn dịch, hỗ trợ sản xuất collagen, và bảo vệ tế bào khỏi tổn thương oxy hóa.', 1),
(25, 'Vitamin A (9% DV trong 100g): Hỗ trợ thị lực, sức khỏe da, và tăng cường miễn dịch.', 2),
(25, 'Chất xơ (2.8g trong 100g): Cải thiện tiêu hóa, ngăn ngừa táo bón, và hỗ trợ kiểm soát đường huyết.', 3),
(25, 'Charantin: Hợp chất giúp kiểm soát lượng đường trong máu, có lợi cho người tiểu đường.', 4),
(25, 'Kali (296mg trong 100g): Giúp cân bằng huyết áp, hỗ trợ chức năng cơ bắp, và giảm nguy cơ đột quỵ.', 5),
(25, 'Ít calo (17 kcal trong 100g): Phù hợp cho chế độ ăn kiêng, giúp kiểm soát cân nặng mà vẫn cung cấp dinh dưỡng.', 6);

-- Chèn vào bảng vegetable_select_points
INSERT INTO vegetable_select_points (vegetable_id, point_text, display_order)
VALUES 
(25, 'Vỏ xanh tươi, sần sùi: Chọn khổ qua có vỏ xanh đậm, gồ ghề, không vàng hoặc nhăn.', 1),
(25, 'Quả cứng, chắc: Khổ qua tươi có độ cứng khi ấn, không mềm hoặc có dấu hiệu hư hỏng.', 2),
(25, 'Kích thước vừa: Khổ qua dài 15-20cm thường non, ít đắng hơn quả lớn.', 3),
(25, 'Không có vết thâm: Kiểm tra quả không có đốm đen hoặc dấu hiệu hư hỏng.', 4),
(25, 'Tránh quả quá chín: Khổ qua vàng hoặc đỏ thường quá chín, đắng mạnh, không phù hợp cho món mặn.', 5);

-- Chèn vào bảng vegetable_preserve_points
INSERT INTO vegetable_preserve_points (vegetable_id, point_text, display_order)
VALUES 
(25, 'Bọc kín trong ngăn mát: Đặt khổ qua trong túi nhựa, bảo quản ở 4-7°C, giữ tươi 1-2 tuần.', 1),
(25, 'Giữ khô trước khi bảo quản: Không rửa khổ qua trước khi cất, tránh ẩm mốc, chỉ rửa trước khi chế biến.', 2),
(25, 'Đông lạnh để bảo quản lâu: Cắt lát, chần sơ 1-2 phút, để ráo, cho vào túi zip, đông lạnh ở -18°C, dùng trong 6 tháng.', 3),
(25, 'Kiểm tra định kỳ: Loại bỏ quả bị mềm hoặc thâm để tránh lây lan hư hỏng.', 4),
(25, 'Tránh để gần trái cây tiết ethylene: Táo, chuối làm khổ qua nhanh vàng và mất độ giòn.', 5);

-- Chèn vào bảng recipes
INSERT INTO recipes (name, description, prep_time, cook_time, servings)
VALUES 
('Khổ qua xào trứng', 'Món xào đơn giản, phổ biến trong ẩm thực Việt Nam, với khổ qua giòn đắng nhẹ kết hợp trứng mềm, là món phụ dễ làm.', '10 phút', '10 phút', '4 người'),
('Khổ qua nhồi thịt', 'Món hấp hoặc nấu canh truyền thống Việt Nam, với khổ qua nhồi thịt heo thơm ngon, là món chính hoặc phụ bổ dưỡng.', '15 phút', '20 phút', '4 người'),
('Canh khổ qua dồn thịt', 'Món canh thanh mát, quen thuộc trong ẩm thực Việt Nam, với khổ qua nhồi thịt heo, là món phụ giải nhiệt.', '15 phút', '20 phút', '4 người'),
('Gỏi khổ qua chay', 'Món gỏi tươi mát, phổ biến trong ẩm thực Việt Nam, với khổ qua giòn trộn nước mắm chay, là món khai vị hoặc ăn kèm.', '10 phút', '5 phút', '4 người');

-- Chèn vào bảng recipe_vegetables
INSERT INTO recipe_vegetables (recipe_id, vegetable_id)
VALUES 
(97, 25),
(98, 25),
(99, 25),
(100, 25);

-- Chèn vào bảng recipe_items
INSERT INTO recipe_items (recipe_id, item_name, quantity, notes, order_index)
VALUES 
-- Khổ qua xào trứng
(97, 'Khổ qua', '300g', 'Rửa sạch, bỏ ruột, thái lát mỏng', 1),
(97, 'Trứng gà', '3 quả', 'Đánh tan', 2),
(97, 'Tỏi', '3 tép (12g)', 'Bóc vỏ, băm nhỏ', 3),
(97, 'Dầu ăn', '2 muỗng canh', 'Dùng để xào', 4),
(97, 'Nước mắm', '1 muỗng canh', 'Tăng hương vị', 5),
(97, 'Muối', '1/4 muỗng cà phê', 'Điều chỉnh theo khẩu vị', 6),
(97, 'Hạt tiêu', '1/4 muỗng cà phê', 'Rắc khi hoàn thiện', 7),
-- Khổ qua nhồi thịt
(98, 'Khổ qua', '400g', 'Rửa sạch, bỏ ruột, cắt khúc 5cm', 1),
(98, 'Thịt heo băm', '200g', 'Ướp với 1/2 muỗng cà phê muối, 1/4 muỗng cà phê tiêu', 2),
(98, 'Nấm mèo', '10g', 'Ngâm mềm, thái nhỏ, trộn với thịt', 3),
(98, 'Hành lá', '1 nhánh (5g)', 'Thái nhỏ, trộn với thịt', 4),
(98, 'Nước mắm', '1 muỗng canh', 'Tăng hương vị', 5),
(98, 'Hạt tiêu', '1/4 muỗng cà phê', 'Rắc khi hoàn thiện', 6),
-- Canh khổ qua dồn thịt
(99, 'Khổ qua', '400g', 'Rửa sạch, bỏ ruột, cắt khúc 5cm', 1),
(99, 'Thịt heo băm', '200g', 'Ướp với 1/2 muỗng cà phê muối, 1/4 muỗng cà phê tiêu', 2),
(99, 'Nấm mèo', '10g', 'Ngâm mềm, thái nhỏ, trộn với thịt', 3),
(99, 'Hành lá', '2 nhánh (10g)', 'Rửa sạch, thái nhỏ', 4),
(99, 'Nước mắm', '1 muỗng canh', 'Chọn loại ngon', 5),
(99, 'Muối', '1/2 muỗng cà phê', 'Điều chỉnh theo khẩu vị', 6),
(99, 'Nước', '1 lít', 'Nước lọc', 7),
-- Gỏi khổ qua chay
(100, 'Khổ qua', '300g', 'Rửa sạch, bỏ ruột, thái lát mỏng, chần sơ', 1),
(100, 'Nước mắm chay', '2 muỗng canh', 'Chọn loại ngon', 2),
(100, 'Đường', '1 muỗng canh', 'Tạo vị ngọt', 3),
(100, 'Nước cốt chanh', '1 muỗng canh', 'Tạo vị chua', 4),
(100, 'Tỏi', '2 tép (10g)', 'Băm nhỏ', 5),
(100, 'Ớt', '1 quả (5g)', 'Thái lát', 6),
(100, 'Rau mùi', '10g', 'Rửa sạch, thái nhỏ, trang trí', 7);

-- Chèn vào bảng recipe_steps
INSERT INTO recipe_steps (recipe_id, step_number, instruction_text)
VALUES 
-- Khổ qua xào trứng
(97, 1, 'Chuẩn bị nguyên liệu: Rửa sạch khổ qua, bổ đôi, bỏ ruột, thái lát mỏng, ngâm nước muối loãng 10 phút để giảm đắng, để ráo. Đánh tan 3 quả trứng. Tỏi băm nhỏ.'),
(97, 2, 'Phi tỏi: Đun nóng 2 muỗng canh dầu ăn trong chảo, phi tỏi 30 giây đến khi vàng nhẹ và dậy mùi thơm. Tránh để tỏi cháy vì sẽ tạo vị đắng.'),
(97, 3, 'Xào khổ qua: Cho khổ qua vào chảo, xào 3-4 phút đến khi khổ qua mềm. Đổ trứng vào, khuấy nhẹ để trứng phủ đều, nêm 1 muỗng canh nước mắm và 1/4 muỗng cà phê muối.'),
(97, 4, 'Hoàn thiện món xào: Xào thêm 1-2 phút đến khi trứng chín. Rắc 1/4 muỗng cà phê hạt tiêu, tắt bếp, chuyển ra đĩa. Dùng nóng với cơm trắng để thưởng thức vị đắng nhẹ và thơm.'),
-- Khổ qua nhồi thịt
(98, 1, 'Chuẩn bị nguyên liệu: Rửa sạch khổ qua, bổ đôi, bỏ ruột, cắt khúc 5cm. Thịt heo băm trộn với nấm mèo thái nhỏ, hành lá thái nhỏ, 1/2 muỗng cà phê muối, và 1/4 muỗng cà phê tiêu.'),
(98, 2, 'Nhồi thịt: Nhồi hỗn hợp thịt vào từng khúc khổ qua, ấn nhẹ để thịt chặt. Đảm bảo không nhồi quá đầy để tránh bung khi hấp.'),
(98, 3, 'Hấp khổ qua: Đặt khổ qua nhồi thịt vào xửng hấp, hấp trên nước sôi 15-20 phút đến khi khổ qua mềm và thịt chín. Nêm 1 muỗng canh nước mắm lên bề mặt.'),
(98, 4, 'Hoàn thiện món hấp: Rắc 1/4 muỗng cà phê hạt tiêu. Dọn ra đĩa, dùng nóng như món chính với cơm trắng để thưởng thức vị đắng nhẹ và thịt thơm.'),
-- Canh khổ qua dồn thịt
(99, 1, 'Chuẩn bị nguyên liệu: Rửa sạch khổ qua, bổ đôi, bỏ ruột, cắt khúc 5cm. Thịt heo băm trộn với nấm mèo thái nhỏ, hành lá thái nhỏ, 1/2 muỗng cà phê muối, và 1/4 muỗng cà phê tiêu.'),
(99, 2, 'Nhồi thịt: Nhồi hỗn hợp thịt vào từng khúc khổ qua, ấn nhẹ để thịt chặt. Đảm bảo không nhồi quá đầy để tránh bung khi nấu.'),
(99, 3, 'Nấu canh: Đun sôi 1 lít nước lọc, cho khổ qua nhồi thịt vào, nấu trên lửa vừa 15-20 phút đến khi khổ qua mềm và thịt chín. Nêm 1 muỗng canh nước mắm và 1/2 muỗng cà phê muối.'),
(99, 4, 'Hoàn thiện canh: Rắc hành lá còn lại, đun thêm 1 phút. Tắt bếp, múc ra bát, dùng nóng với cơm trắng để thưởng thức vị thanh mát và đắng nhẹ.'),
-- Gỏi khổ qua chay
(100, 1, 'Chuẩn bị nguyên liệu: Rửa sạch khổ qua, bổ đôi, bỏ ruột, thái lát mỏng, chần sơ trong nước sôi 30 giây, ngâm nước lạnh để giữ độ giòn, để ráo. Tỏi băm nhỏ, ớt và rau mùi thái nhỏ.'),
(100, 2, 'Pha nước mắm chay: Trộn 2 muỗng canh nước mắm chay, 1 muỗng canh đường, 1 muỗng canh nước cốt chanh, tỏi băm, và ớt trong bát. Khuấy đều để đường tan, tạo vị chua ngọt cay.'),
(100, 3, 'Trộn gỏi: Cho khổ qua vào bát lớn, đổ nước mắm chay vào, trộn đều để thấm gia vị. Để 5 phút cho ngấm, thỉnh thoảng trộn lại.'),
(100, 4, 'Hoàn thiện gỏi: Rắc rau mùi lên trên, trộn nhẹ. Dọn ra đĩa, dùng làm món khai vị hoặc ăn kèm cơm để thưởng thức vị giòn đắng và chua cay.');

-- --------------------------------------
-- 26. Khoai lang (class_index: 25)
-- --------------------------------------

-- Chèn vào bảng vegetables
INSERT INTO vegetables (class_index, vietnamese_name, scientific_name, description, nutritional_info)
VALUES (
    25, 
    'Khoai lang', 
    'Ipomoea batatas', 
    'Khoai lang là một loại củ thuộc họ Bìm bìm (Convolvulaceae), được trồng phổ biến ở Việt Nam, đặc biệt ở các vùng đồng bằng và miền núi. Củ có màu vàng, tím, hoặc cam, thịt ngọt, bùi, kết cấu mềm khi nấu chín. Khoai lang được dùng trong các món luộc, nướng, chiên, hoặc làm bánh, là nguyên liệu quen thuộc trong ẩm thực Việt Nam nhờ vị ngọt tự nhiên và dinh dưỡng cao.',
    'Khoai lang giàu vitamin A, vitamin C, chất xơ, và carbohydrate phức. Củ này hỗ trợ tiêu hóa, tăng cường thị lực nhờ beta-carotene, và cung cấp năng lượng bền vững. Khoai lang cũng chứa chất chống oxy hóa và kali, giúp duy trì sức khỏe tim mạch và huyết áp. Với chỉ số đường huyết trung bình, khoai lang là lựa chọn tốt cho chế độ ăn lành mạnh.'
);

-- Chèn vào bảng vegetable_nutritional_points
INSERT INTO vegetable_nutritional_points (vegetable_id, point_text, display_order)
VALUES 
(26, 'Vitamin A (400% DV trong 100g): Hỗ trợ thị lực, sức khỏe da, và tăng cường miễn dịch nhờ beta-carotene.', 1),
(26, 'Chất xơ (3g trong 100g): Cải thiện tiêu hóa, ngăn ngừa táo bón, và hỗ trợ kiểm soát đường huyết.', 2),
(26, 'Vitamin C (20% DV trong 100g): Tăng cường miễn dịch, hỗ trợ sản xuất collagen, và bảo vệ tế bào khỏi tổn thương oxy hóa.', 3),
(26, 'Kali (337mg trong 100g): Giúp cân bằng huyết áp, hỗ trợ chức năng cơ bắp, và giảm nguy cơ đột quỵ.', 4),
(26, 'Carbohydrate phức (20g trong 100g): Cung cấp năng lượng bền vững, phù hợp cho người vận động nhiều.', 5),
(26, 'Ít calo (86 kcal trong 100g): Phù hợp cho chế độ ăn kiêng, giúp kiểm soát cân nặng mà vẫn cung cấp dinh dưỡng.', 6);

-- Chèn vào bảng vegetable_select_points
INSERT INTO vegetable_select_points (vegetable_id, point_text, display_order)
VALUES 
(26, 'Vỏ mịn, không nứt: Chọn khoai lang có vỏ mịn, không nứt hoặc có vết thâm.', 1),
(26, 'Củ cứng, nặng: Khoai lang tươi có độ cứng, nặng tay, không mềm hoặc mọc mầm.', 2),
(26, 'Kích thước vừa: Khoai lang dài 10-15cm, nặng 200-300g thường ngọt và dễ chế biến.', 3),
(26, 'Không có mùi lạ: Khoai lang tươi có mùi đất nhẹ, tránh loại có mùi chua hoặc lên men.', 4),
(26, 'Tránh củ bị dập: Kiểm tra khoai lang không có vết thâm hoặc dấu hiệu hư hỏng.', 5);

-- Chèn vào bảng vegetable_preserve_points
INSERT INTO vegetable_preserve_points (vegetable_id, point_text, display_order)
VALUES 
(26, 'Bảo quản nơi khô ráo: Để khoai lang ở nơi thoáng mát, khô, tránh ánh sáng trực tiếp, giữ tươi 1-2 tháng.', 1),
(26, 'Không để trong tủ lạnh: Nhiệt độ lạnh làm khoai lang mất vị ngọt và dễ hỏng.', 2),
(26, 'Đông lạnh để bảo quản lâu: Gọt vỏ, cắt khối, luộc sơ, để ráo, cho vào túi zip, đông lạnh ở -18°C, dùng trong 6-8 tháng.', 3),
(26, 'Kiểm tra định kỳ: Loại bỏ củ bị mọc mầm, mềm, hoặc có mùi để tránh lây lan hư hỏng.', 4),
(26, 'Tránh để gần trái cây tiết ethylene: Táo, chuối làm khoai lang nhanh mọc mầm.', 5);

-- Chèn vào bảng recipes
INSERT INTO recipes (name, description, prep_time, cook_time, servings)
VALUES 
('Khoai lang luộc', 'Món luộc đơn giản, phổ biến trong ẩm thực Việt Nam, với khoai lang ngọt bùi, là món ăn nhẹ hoặc ăn kèm.', '5 phút', '20 phút', '4 người'),
('Khoai lang chiên', 'Món chiên giòn, phổ biến trong ẩm thực Việt Nam, với khoai lang ngọt bên trong, vỏ ngoài giòn, là món ăn vặt hoặc ăn kèm.', '10 phút', '15 phút', '4 người'),
('Chè khoai lang', 'Món chè ngọt truyền thống Việt Nam, với khoai lang bùi hòa quyện nước cốt dừa, là món tráng miệng hoặc ăn vặt.', '15 phút', '20 phút', '4 người'),
('Bánh khoai lang nướng', 'Món bánh dân dã, phổ biến trong ẩm thực Việt Nam, với khoai lang ngọt bùi, là món ăn nhẹ hoặc ăn sáng.', '15 phút', '30 phút', '4 người');

-- Chèn vào bảng recipe_vegetables
INSERT INTO recipe_vegetables (recipe_id, vegetable_id)
VALUES 
(101, 26),
(102, 26),
(103, 26),
(104, 26);

-- Chèn vào bảng recipe_items
INSERT INTO recipe_items (recipe_id, item_name, quantity, notes, order_index)
VALUES 
-- Khoai lang luộc
(101, 'Khoai lang', '500g', 'Rửa sạch, giữ nguyên vỏ', 1),
(101, 'Nước', '2 lít', 'Nước lọc để luộc', 2),
(101, 'Muối', '1/2 muỗng cà phê', 'Cho vào nước luộc để tăng vị', 3),
-- Khoai lang chiên
(102, 'Khoai lang', '500g', 'Gọt vỏ, cắt thanh dài hoặc lát mỏng', 1),
(102, 'Dầu ăn', '500ml', 'Dùng để chiên ngập dầu', 2),
(102, 'Muối', '1/4 muỗng cà phê', 'Rắc khi hoàn thiện', 3),
(102, 'Đường', '1 muỗng cà phê', 'Tùy chọn, rắc để tăng vị ngọt', 4),
-- Chè khoai lang
(103, 'Khoai lang', '400g', 'Gọt vỏ, cắt khối 2cm', 1),
(103, 'Nước cốt dừa', '200ml', 'Chọn loại đặc', 2),
(103, 'Đường', '100g', 'Điều chỉnh theo khẩu vị', 3),
(103, 'Nước', '1 lít', 'Nước lọc', 4),
(103, 'Lá dứa', '2 lá', 'Rửa sạch, buộc gọn', 5),
-- Bánh khoai lang nướng
(104, 'Khoai lang', '500g', 'Gọt vỏ, hấp chín, nghiền nhuyễn', 1),
(104, 'Bột gạo nếp', '150g', 'Chọn bột mịn', 2),
(104, 'Đường', '50g', 'Điều chỉnh theo khẩu vị', 3),
(104, 'Nước cốt dừa', '100ml', 'Tăng độ béo', 4),
(104, 'Dầu ăn', '1 muỗng canh', 'Phết khay nướng', 5);

-- Chèn vào bảng recipe_steps
INSERT INTO recipe_steps (recipe_id, step_number, instruction_text)
VALUES 
-- Khoai lang luộc
(101, 1, 'Chuẩn bị nguyên liệu: Rửa sạch khoai lang, giữ nguyên vỏ để giữ vị ngọt. Cắt bỏ phần đầu đuôi nếu cần.'),
(101, 2, 'Luộc khoai: Đun sôi 2 lít nước, thêm 1/2 muỗng cà phê muối. Cho khoai lang vào, luộc trên lửa vừa 15-20 phút đến khi khoai mềm (dùng đũa xuyên qua dễ dàng).'),
(101, 3, 'Kiểm tra độ chín: Vớt khoai ra, để nguội nhẹ. Lột vỏ nếu muốn hoặc để nguyên vỏ tùy sở thích.'),
(101, 4, 'Hoàn thiện món luộc: Dọn khoai ra đĩa, dùng nóng hoặc nguội như món ăn nhẹ, ăn sáng, hoặc ăn kèm cơm để thưởng thức vị ngọt bùi tự nhiên.'),
-- Khoai lang chiên
(102, 1, 'Chuẩn bị nguyên liệu: Gọt vỏ khoai lang, cắt thanh dài hoặc lát mỏng, ngâm nước muối loãng 10 phút để giảm nhựa, để ráo.'),
(102, 2, 'Chiên khoai: Đun nóng 500ml dầu ăn trong chảo sâu lòng đến 170°C. Cho khoai lang vào chiên từng mẻ, chiên 5-7 phút đến khi vàng giòn.'),
(102, 3, 'Vớt khoai: Vớt khoai ra, để trên giấy thấm dầu cho ráo. Rắc 1/4 muỗng cà phê muối và 1 muỗng cà phê đường (tùy chọn) lên khoai.'),
(102, 4, 'Hoàn thiện món chiên: Dọn khoai ra đĩa, dùng nóng như món ăn vặt hoặc ăn kèm để thưởng thức vị giòn ngọt.'),
-- Chè khoai lang
(103, 1, 'Chuẩn bị nguyên liệu: Gọt vỏ khoai lang, cắt khối 2cm, ngâm nước để tránh thâm. Lá dứa rửa sạch, buộc gọn.'),
(103, 2, 'Nấu khoai: Đun sôi 1 lít nước, cho lá dứa và khoai lang vào, nấu 10-12 phút đến khi khoai mềm. Thêm 100g đường, khuấy đều để đường tan.'),
(103, 3, 'Thêm nước cốt dừa: Đổ 200ml nước cốt dừa vào nồi, đun nhỏ lửa 2-3 phút, khuấy nhẹ để nước cốt dừa hòa quyện. Nếm lại vị ngọt, điều chỉnh nếu cần.'),
(103, 4, 'Hoàn thiện chè: Tắt bếp, múc chè ra bát, dùng nóng hoặc nguội để thưởng thức vị ngọt bùi của khoai lang và béo thơm của nước cốt dừa.'),
-- Bánh khoai lang nướng
(104, 1, 'Chuẩn bị nguyên liệu: Gọt vỏ khoai lang, hấp chín, nghiền nhuyễn khi còn nóng. Trộn khoai với 150g bột gạo nếp, 50g đường, và 100ml nước cốt dừa để tạo hỗn hợp dẻo.'),
(104, 2, 'Nhào bột: Nhào hỗn hợp đến khi mịn, không dính tay. Chia thành các viên nhỏ, tạo hình tròn hoặc dẹt tùy ý.'),
(104, 3, 'Nướng bánh: Làm nóng lò nướng ở 180°C. Phết dầu ăn lên khay, xếp bánh lên, nướng 20-25 phút đến khi bánh vàng nhẹ, lật mặt giữa chừng để chín đều.'),
(104, 4, 'Hoàn thiện bánh: Lấy bánh ra, để nguội nhẹ. Dọn ra đĩa, dùng như món ăn nhẹ hoặc ăn sáng để thưởng thức vị ngọt bùi và dẻo thơm.');

-- --------------------------------------
-- 27. Khoai tây (class_index: 26)
-- --------------------------------------

-- Chèn vào bảng vegetables
INSERT INTO vegetables (class_index, vietnamese_name, scientific_name, description, nutritional_info)
VALUES (
    26, 
    'Khoai tây', 
    'Solanum tuberosum', 
    'Khoai tây là một loại củ thuộc họ Cà (Solanaceae), được trồng phổ biến ở Việt Nam, đặc biệt ở các vùng khí hậu mát như Đà Lạt và miền Bắc. Củ có vỏ mỏng màu vàng hoặc nâu, thịt trắng hoặc vàng, vị bùi, kết cấu mềm khi nấu chín. Khoai tây được dùng trong các món chiên, luộc, canh, hoặc làm bánh, là nguyên liệu quen thuộc trong ẩm thực Việt Nam nhờ tính linh hoạt và hương vị trung tính.',
    'Khoai tây giàu carbohydrate, vitamin C, và kali. Củ này cung cấp năng lượng bền vững, hỗ trợ tiêu hóa nhờ chất xơ, và tăng cường miễn dịch. Khoai tây cũng chứa vitamin B6 và chất chống oxy hóa, giúp duy trì sức khỏe tim mạch và giảm viêm. Với lượng calo vừa phải, khoai tây là lựa chọn tốt cho các bữa ăn dinh dưỡng.'
);

-- Chèn vào bảng vegetable_nutritional_points
INSERT INTO vegetable_nutritional_points (vegetable_id, point_text, display_order)
VALUES 
(27, 'Carbohydrate (17g trong 100g): Cung cấp năng lượng bền vững, phù hợp cho người vận động nhiều.', 1),
(27, 'Vitamin C (24% DV trong 100g): Tăng cường miễn dịch, hỗ trợ sản xuất collagen, và bảo vệ tế bào khỏi tổn thương oxy hóa.', 2),
(27, 'Kali (425mg trong 100g): Giúp cân bằng huyết áp, hỗ trợ chức năng cơ bắp, và giảm nguy cơ đột quỵ.', 3),
(27, 'Chất xơ (2.1g trong 100g): Cải thiện tiêu hóa, ngăn ngừa táo bón, và hỗ trợ kiểm soát đường huyết.', 4),
(27, 'Vitamin B6 (10% DV trong 100g): Hỗ trợ chức năng thần kinh và chuyển hóa năng lượng.', 5),
(27, 'Calo vừa phải (77 kcal trong 100g): Phù hợp cho chế độ ăn cân bằng, dễ kết hợp trong nhiều món ăn.', 6);

-- Chèn vào bảng vegetable_select_points
INSERT INTO vegetable_select_points (vegetable_id, point_text, display_order)
VALUES 
(27, 'Vỏ mịn, không mọc mầm: Chọn khoai tây có vỏ mịn, không có mầm xanh hoặc mắt đen.', 1),
(27, 'Củ cứng, chắc: Khoai tây tươi có độ cứng khi ấn, không mềm hoặc có dấu hiệu hư hỏng.', 2),
(27, 'Kích thước vừa: Khoai tây nặng 150-200g, dài 8-10cm thường dễ chế biến và ít lỗi.', 3),
(27, 'Không có mùi lạ: Khoai tây tươi có mùi đất nhẹ, tránh loại có mùi chua hoặc hắc.', 4),
(27, 'Tránh củ bị dập: Kiểm tra khoai tây không có vết thâm hoặc dấu hiệu hư hỏng.', 5);

-- Chèn vào bảng vegetable_preserve_points
INSERT INTO vegetable_preserve_points (vegetable_id, point_text, display_order)
VALUES 
(27, 'Bảo quản nơi khô ráo: Để khoai tây ở nơi thoáng mát, khô, tránh ánh sáng trực tiếp, giữ tươi 1-2 tháng.', 1),
(27, 'Không để trong tủ lạnh: Nhiệt độ lạnh làm khoai tây chuyển hóa tinh bột thành đường, ảnh hưởng vị.', 2),
(27, 'Đông lạnh để bảo quản lâu: Gọt vỏ, cắt khối, chần sơ 2-3 phút, để ráo, cho vào túi zip, đông lạnh ở -18°C, dùng trong 6-8 tháng.', 3),
(27, 'Kiểm tra định kỳ: Loại bỏ củ mọc mầm, mềm, hoặc có mùi để tránh lây lan hư hỏng.', 4),
(27, 'Tránh để gần hành tây: Hành tây tiết khí làm khoai tây nhanh mọc mầm.', 5);

-- Chèn vào bảng recipes
INSERT INTO recipes (name, description, prep_time, cook_time, servings)
VALUES 
('Khoai tây chiên', 'Món chiên giòn, phổ biến trong ẩm thực Việt Nam, với khoai tây vàng giòn bên ngoài, mềm bên trong, là món ăn vặt hoặc ăn kèm.', '10 phút', '15 phút', '4 người'),
('Canh khoai tây nấu xương', 'Món canh bổ dưỡng, quen thuộc trong ẩm thực Việt Nam, với khoai tây bùi và nước dùng ngọt từ xương, là món phụ thơm ngon.', '15 phút', '40 phút', '4 người'),
('Khoai tây nghiền', 'Món ăn kèm mịn màng, phổ biến trong ẩm thực Việt Nam, với khoai tây mềm hòa quyện bơ và sữa, là món phụ tinh tế.', '10 phút', '20 phút', '4 người'),
('Bánh khoai tây chiên', 'Món bánh giòn, phổ biến trong ẩm thực Việt Nam, với khoai tây nghiền kết hợp gia vị, là món ăn vặt hoặc ăn sáng.', '15 phút', '15 phút', '4 người');

-- Chèn vào bảng recipe_vegetables
INSERT INTO recipe_vegetables (recipe_id, vegetable_id)
VALUES 
(105, 27),
(106, 27),
(107, 27),
(108, 27);

-- Chèn vào bảng recipe_items
INSERT INTO recipe_items (recipe_id, item_name, quantity, notes, order_index)
VALUES 
-- Khoai tây chiên
(105, 'Khoai tây', '500g', 'Gọt vỏ, cắt thanh dài hoặc lát mỏng', 1),
(105, 'Dầu ăn', '500ml', 'Dùng để chiên ngập dầu', 2),
(105, 'Muối', '1/2 muỗng cà phê', 'Rắc khi hoàn thiện', 3),
(105, 'Hạt tiêu', '1/4 muỗng cà phê', 'Tùy chọn, rắc để tăng vị', 4),
-- Canh khoai tây nấu xương
(106, 'Khoai tây', '300g', 'Gọt vỏ, cắt khối 2cm', 1),
(106, 'Xương heo', '300g', 'Rửa sạch, chần sơ', 2),
(106, 'Hành lá', '2 nhánh (10g)', 'Rửa sạch, thái nhỏ', 3),
(106, 'Nước mắm', '1 muỗng canh', 'Chọn loại ngon', 4),
(106, 'Muối', '1/2 muỗng cà phê', 'Điều chỉnh theo khẩu vị', 5),
(106, 'Hạt tiêu', '1/4 muỗng cà phê', 'Rắc khi hoàn thiện', 6),
(106, 'Nước', '1.5 lít', 'Nước lọc', 7),
-- Khoai tây nghiền
(107, 'Khoai tây', '500g', 'Gọt vỏ, cắt khối', 1),
(107, 'Bơ', '30g', 'Bơ lạt, để mềm', 2),
(107, 'Sữa tươi', '100ml', 'Không đường, đun ấm', 3),
(107, 'Muối', '1/2 muỗng cà phê', 'Điều chỉnh theo khẩu vị', 4),
(107, 'Hạt tiêu', '1/4 muỗng cà phê', 'Rắc khi hoàn thiện', 5),
-- Bánh khoai tây chiên
(108, 'Khoai tây', '500g', 'Gọt vỏ, hấp chín, nghiền nhuyễn', 1),
(108, 'Bột mì', '50g', 'Dùng để tạo độ kết dính', 2),
(108, 'Hành lá', '1 nhánh (5g)', 'Thái nhỏ, trộn với khoai', 3),
(108, 'Muối', '1/2 muỗng cà phê', 'Tăng hương vị', 4),
(108, 'Hạt tiêu', '1/4 muỗng cà phê', 'Tăng hương vị', 5),
(108, 'Dầu ăn', '200ml', 'Dùng để chiên', 6);

-- Chèn vào bảng recipe_steps
INSERT INTO recipe_steps (recipe_id, step_number, instruction_text)
VALUES 
-- Khoai tây chiên
(105, 1, 'Chuẩn bị nguyên liệu: Gọt vỏ khoai tây, cắt thanh dài hoặc lát mỏng, ngâm nước muối loãng 10 phút để giảm tinh bột, để ráo.'),
(105, 2, 'Chiên khoai: Đun nóng 500ml dầu ăn trong chảo sâu lòng đến 170°C. Chiên khoai từng mẻ 5-7 phút đến khi vàng giòn, vớt ra để ráo dầu trên giấy thấm.'),
(105, 3, 'Nêm gia vị: Rắc 1/2 muỗng cà phê muối và 1/4 muỗng cà phê hạt tiêu lên khoai tây chiên, trộn đều.'),
(105, 4, 'Hoàn thiện món chiên: Dọn khoai ra đĩa, dùng nóng như món ăn vặt hoặc ăn kèm thịt nướng để thưởng thức vị giòn mềm.'),
-- Canh khoai tây nấu xương
(106, 1, 'Chuẩn bị nguyên liệu: Gọt vỏ khoai tây, cắt khối 2cm, ngâm nước để tránh thâm. Xương heo chần sơ với nước sôi, rửa sạch. Hành lá thái nhỏ.'),
(106, 2, 'Hầm xương: Đun 1.5 lít nước lọc, cho xương heo vào, hầm trên lửa nhỏ 30 phút để nước ngọt. Vớt bọt thường xuyên để nước canh trong.'),
(106, 3, 'Nấu canh: Thêm khoai tây vào nồi, nấu 10-12 phút đến khi khoai mềm. Nêm 1 muỗng canh nước mắm và 1/2 muỗng cà phê muối, khuấy đều.'),
(106, 4, 'Hoàn thiện canh: Rắc hành lá và 1/4 muỗng cà phê hạt tiêu, đun thêm 1 phút. Tắt bếp, múc ra bát, dùng nóng với cơm trắng để thưởng thức vị ngọt thanh.'),
-- Khoai tây nghiền
(107, 1, 'Chuẩn bị nguyên liệu: Gọt vỏ khoai tây, cắt khối, luộc trong nước sôi 15-20 phút đến khi mềm. Vớt ra, để ráo, nghiền nhuyễn khi còn nóng.'),
(107, 2, 'Trộn khoai: Thêm 30g bơ lạt và 100ml sữa tươi ấm vào khoai nghiền, trộn đều đến khi mịn. Nêm 1/2 muỗng cà phê muối, khuấy đều.'),
(107, 3, 'Điều chỉnh kết cấu: Nếu khoai đặc, thêm sữa tươi từng chút, trộn đến khi đạt độ mịn mong muốn. Nếm lại vị, điều chỉnh muối nếu cần.'),
(107, 4, 'Hoàn thiện món nghiền: Rắc 1/4 muỗng cà phê hạt tiêu lên bề mặt. Dọn ra đĩa, dùng nóng như món phụ với thịt nướng hoặc gà chiên để thưởng thức vị mịn béo.'),
-- Bánh khoai tây chiên
(108, 1, 'Chuẩn bị nguyên liệu: Gọt vỏ khoai tây, hấp chín, nghiền nhuyễn. Trộn khoai với 50g bột mì, hành lá thái nhỏ, 1/2 muỗng cà phê muối, và 1/4 muỗng cà phê hạt tiêu.'),
(108, 2, 'Tạo hình bánh: Nhào hỗn hợp đến khi mịn, chia thành các phần nhỏ, nặn thành hình tròn dẹt, dày khoảng 1cm.'),
(108, 3, 'Chiên bánh: Đun nóng 200ml dầu ăn trong chảo, chiên bánh trên lửa vừa 3-4 phút mỗi mặt đến khi vàng giòn, vớt ra để ráo dầu trên giấy thấm.'),
(108, 4, 'Hoàn thiện bánh: Dọn bánh ra đĩa, dùng nóng như món ăn vặt hoặc ăn sáng với nước chấm mắm ớt để thưởng thức vị giòn bùi.');

-- --------------------------------------
-- 28. Nấm rơm (class_index: 27)
-- --------------------------------------

-- Chèn vào bảng vegetables
INSERT INTO vegetables (class_index, vietnamese_name, scientific_name, description, nutritional_info)
VALUES (
    27, 
    'Nấm rơm', 
    'Volvariella volvacea', 
    'Nấm rơm là một loại nấm ăn thuộc họ Pluteaceae, được trồng phổ biến ở Việt Nam, đặc biệt ở các vùng nông thôn miền Tây Nam Bộ. Nấm có hình tròn hoặc bầu dục, mũ nấm màu nâu xám đến đen khi non, chuyển trắng khi trưởng thành, thịt nấm giòn, vị ngọt nhẹ. Nấm rơm được dùng trong các món xào, canh, lẩu, hoặc hấp, là nguyên liệu quen thuộc trong ẩm thực Việt Nam nhờ hương vị thơm ngon và kết cấu đặc trưng.',
    'Nấm rơm giàu protein, chất xơ, vitamin B, và khoáng chất như kali, selen. Nấm hỗ trợ tiêu hóa, tăng cường miễn dịch, và có đặc tính chống oxy hóa nhờ selen. Nấm rơm cũng chứa ít calo, phù hợp cho chế độ ăn lành mạnh, và có lợi cho sức khỏe tim mạch nhờ hàm lượng kali cao.'
);

-- Chèn vào bảng vegetable_nutritional_points
INSERT INTO vegetable_nutritional_points (vegetable_id, point_text, display_order)
VALUES 
(28, 'Protein (3.8g trong 100g): Hỗ trợ xây dựng cơ bắp và phục hồi mô, đặc biệt tốt cho người ăn chay.', 1),
(28, 'Chất xơ (2.5g trong 100g): Cải thiện tiêu hóa, ngăn ngừa táo bón, và hỗ trợ kiểm soát đường huyết.', 2),
(28, 'Selen (9% DV trong 100g): Chất chống oxy hóa mạnh, bảo vệ tế bào và tăng cường miễn dịch.', 3),
(28, 'Vitamin B2 (20% DV trong 100g): Hỗ trợ chuyển hóa năng lượng và duy trì sức khỏe da, tóc.', 4),
(28, 'Kali (318mg trong 100g): Giúp cân bằng huyết áp, hỗ trợ chức năng cơ bắp, và giảm nguy cơ đột quỵ.', 5),
(28, 'Ít calo (31 kcal trong 100g): Phù hợp cho chế độ ăn kiêng, tăng hương vị món ăn mà không tăng calo.', 6);

-- Chèn vào bảng vegetable_select_points
INSERT INTO vegetable_select_points (vegetable_id, point_text, display_order)
VALUES 
(28, 'Mũ nấm chắc, không nứt: Chọn nấm rơm có mũ nấm tròn, màu nâu xám hoặc đen, không nứt hoặc héo.', 1),
(28, 'Thân nấm giòn, không nhớt: Nấm tươi có thân trắng, giòn, không mềm hoặc có chất nhầy.', 2),
(28, 'Kích thước vừa: Nấm rơm đường kính 2-4cm thường ngọt, giòn, dễ chế biến.', 3),
(28, 'Mùi thơm nhẹ: Nấm rơm tươi có mùi thơm đặc trưng, tránh loại có mùi chua hoặc hắc.', 4),
(28, 'Tránh nấm bị dập: Kiểm tra nấm không có vết thâm hoặc dấu hiệu hư hỏng.', 5);

-- Chèn vào bảng vegetable_preserve_points
INSERT INTO vegetable_preserve_points (vegetable_id, point_text, display_order)
VALUES 
(28, 'Bọc kín trong ngăn mát: Đặt nấm rơm trong túi giấy hoặc túi nhựa đục lỗ, bảo quản ở 4-7°C, giữ tươi 3-5 ngày.', 1),
(28, 'Không rửa trước khi bảo quản: Tránh rửa nấm để không hút nước, chỉ làm sạch trước khi chế biến.', 2),
(28, 'Đông lạnh để bảo quản lâu: Chần sơ nấm trong nước sôi 1-2 phút, ngâm nước lạnh, để ráo, cho vào túi zip, đông lạnh ở -18°C, dùng trong 3-4 tháng.', 3),
(28, 'Kiểm tra định kỳ: Loại bỏ nấm bị nhớt, thâm, hoặc có mùi để tránh lây lan hư hỏng.', 4),
(28, 'Tránh để lâu ngoài không khí: Nấm rơm dễ héo và mất độ giòn, cần chế biến sớm sau khi mua.', 5);

-- Chèn vào bảng recipes
INSERT INTO recipes (name, description, prep_time, cook_time, servings)
VALUES 
('Nấm rơm xào tỏi', 'Món xào đơn giản, phổ biến trong ẩm thực Việt Nam, với nấm rơm giòn thấm vị tỏi thơm, là món phụ dễ làm.', '10 phút', '10 phút', '4 người'),
('Canh nấm rơm tôm', 'Món canh thanh nhẹ, quen thuộc trong ẩm thực Việt Nam, với nấm rơm ngọt và tôm tươi, là món phụ bổ dưỡng.', '10 phút', '15 phút', '4 người'),
('Nấm rơm kho tiêu', 'Món kho đậm đà, phổ biến trong ẩm thực Việt Nam, với nấm rơm thấm gia vị và tiêu thơm, là món chính hoặc phụ.', '10 phút', '20 phút', '4 người'),
('Nấm rơm hấp nước mắm', 'Món hấp thơm ngon, phổ biến trong ẩm thực Việt Nam, với nấm rơm ngấm nước mắm, là món phụ nhẹ nhàng.', '10 phút', '15 phút', '4 người');

-- Chèn vào bảng recipe_vegetables
INSERT INTO recipe_vegetables (recipe_id, vegetable_id)
VALUES 
(109, 28),
(110, 28),
(111, 28),
(112, 28);

-- Chèn vào bảng recipe_items
INSERT INTO recipe_items (recipe_id, item_name, quantity, notes, order_index)
VALUES 
-- Nấm rơm xào tỏi
(109, 'Nấm rơm', '300g', 'Rửa sạch, ngâm nước muối loãng, để ráo', 1),
(109, 'Tỏi', '4 tép (15g)', 'Bóc vỏ, băm nhỏ', 2),
(109, 'Dầu ăn', '2 muỗng canh', 'Dùng để xào', 3),
(109, 'Nước mắm', '1 muỗng canh', 'Tăng hương vị', 4),
(109, 'Muối', '1/4 muỗng cà phê', 'Điều chỉnh theo khẩu vị', 5),
(109, 'Hạt tiêu', '1/4 muỗng cà phê', 'Rắc khi hoàn thiện', 6),
(109, 'Hành lá', '1 nhánh (5g)', 'Thái nhỏ, trang trí', 7),
-- Canh nấm rơm tôm
(110, 'Nấm rơm', '200g', 'Rửa sạch, ngâm nước muối loãng, để ráo', 1),
(110, 'Tôm tươi', '200g', 'Bóc vỏ, bỏ đầu, rút chỉ đen', 2),
(110, 'Hành lá', '2 nhánh (10g)', 'Rửa sạch, thái nhỏ', 3),
(110, 'Nước mắm', '1 muỗng canh', 'Chọn loại ngon', 4),
(110, 'Muối', '1/2 muỗng cà phê', 'Điều chỉnh theo khẩu vị', 5),
(110, 'Hạt tiêu', '1/4 muỗng cà phê', 'Rắc khi hoàn thiện', 6),
(110, 'Nước', '1 lít', 'Nước lọc', 7),
-- Nấm rơm kho tiêu
(111, 'Nấm rơm', '300g', 'Rửa sạch, ngâm nước muối loãng, để ráo', 1),
(111, 'Nước mắm', '2 muỗng canh', 'Chọn loại ngon', 2),
(111, 'Đường', '1 muỗng canh', 'Tạo vị ngọt', 3),
(111, 'Hạt tiêu', '1/2 muỗng cà phê', 'Tăng hương vị', 4),
(111, 'Tỏi', '2 tép (10g)', 'Băm nhỏ', 5),
(111, 'Dầu ăn', '1 muỗng canh', 'Dùng để phi tỏi', 6),
(111, 'Nước', '100ml', 'Nước lọc', 7),
-- Nấm rơm hấp nước mắm
(112, 'Nấm rơm', '300g', 'Rửa sạch, ngâm nước muối loãng, để ráo', 1),
(112, 'Nước mắm', '2 muỗng canh', 'Chọn loại ngon', 2),
(112, 'Đường', '1 muỗng cà phê', 'Tạo vị ngọt', 3),
(112, 'Tỏi', '2 tép (10g)', 'Băm nhỏ', 4),
(112, 'Ớt', '1 quả (5g)', 'Thái lát', 5),
(112, 'Hành lá', '1 nhánh (5g)', 'Thái nhỏ, trang trí', 6);

-- Chèn vào bảng recipe_steps
INSERT INTO recipe_steps (recipe_id, step_number, instruction_text)
VALUES 
-- Nấm rơm xào tỏi
(109, 1, 'Chuẩn bị nguyên liệu: Rửa sạch nấm rơm, ngâm nước muối loãng 5 phút, để ráo. Tỏi băm nhỏ, hành lá thái nhỏ.'),
(109, 2, 'Phi tỏi: Đun nóng 2 muỗng canh dầu ăn trong chảo, phi tỏi 30 giây đến khi vàng nhẹ và dậy mùi thơm. Tránh để tỏi cháy vì sẽ tạo vị đắng.'),
(109, 3, 'Xào nấm: Cho nấm rơm vào chảo, xào trên lửa vừa 3-4 phút đến khi nấm chín và thấm dầu. Nêm 1 muỗng canh nước mắm và 1/4 muỗng cà phê muối.'),
(109, 4, 'Hoàn thiện món xào: Rắc hành lá và 1/4 muỗng cà phê hạt tiêu, đảo lần cuối trong 10 giây. Tắt bếp, chuyển ra đĩa, dùng nóng như món phụ với cơm trắng.'),
-- Canh nấm rơm tôm
(110, 1, 'Chuẩn bị nguyên liệu: Rửa sạch nấm rơm, ngâm nước muối loãng 5 phút, để ráo. Tôm bóc vỏ, rút chỉ đen, rửa sạch. Hành lá thái nhỏ.'),
(110, 2, 'Xào tôm: Đun nóng 1 muỗng canh dầu ăn trong nồi, cho tôm vào xào 1-2 phút đến khi tôm hồng và săn lại. Vớt tôm ra, để riêng.'),
(110, 3, 'Nấu canh: Đổ 1 lít nước lọc vào nồi, đun sôi. Thêm nấm rơm, nấu 5 phút đến khi nấm mềm. Cho tôm vào, nêm 1 muỗng canh nước mắm và 1/2 muỗng cà phê muối.'),
(110, 4, 'Hoàn thiện canh: Đun thêm 2 phút để gia vị thấm, rắc hành lá và 1/4 muỗng cà phê hạt tiêu. Tắt bếp, múc ra bát, dùng nóng với cơm trắng để thưởng thức vị ngọt thanh.'),
-- Nấm rơm kho tiêu
(111, 1, 'Chuẩn bị nguyên liệu: Rửa sạch nấm rơm, ngâm nước muối loãng 5 phút, để ráo. Tỏi băm nhỏ.'),
(111, 2, 'Phi tỏi: Đun nóng 1 muỗng canh dầu ăn trong nồi nhỏ, phi tỏi 30 giây đến khi vàng nhẹ và thơm.'),
(111, 3, 'Kho nấm: Cho nấm rơm vào nồi, thêm 2 muỗng canh nước mắm, 1 muỗng canh đường, 1/2 muỗng cà phê hạt tiêu, và 100ml nước. Đun sôi, sau đó hạ lửa nhỏ, kho 15 phút đến khi nấm thấm gia vị và nước hơi cạn.'),
(111, 4, 'Hoàn thiện món kho: Kiểm tra vị, điều chỉnh nếu cần. Tắt bếp, dọn ra đĩa, dùng nóng với cơm trắng để thưởng thức vị đậm đà và thơm tiêu.'),
-- Nấm rơm hấp nước mắm
(112, 1, 'Chuẩn bị nguyên liệu: Rửa sạch nấm rơm, ngâm nước muối loãng 5 phút, để ráo. Tỏi băm nhỏ, ớt và hành lá thái nhỏ.'),
(112, 2, 'Pha nước mắm: Trộn 2 muỗng canh nước mắm, 1 muỗng cà phê đường, tỏi băm, và ớt trong bát nhỏ. Khuấy đều để đường tan.'),
(112, 3, 'Hấp nấm: Xếp nấm rơm vào đĩa sâu lòng, rưới hỗn hợp nước mắm lên trên. Đặt đĩa vào xửng hấp, hấp trên nước sôi 10-12 phút đến khi nấm chín mềm.'),
(112, 4, 'Hoàn thiện món hấp: Rắc hành lá lên trên, hấp thêm 1 phút. Tắt bếp, dọn ra đĩa, dùng nóng như món phụ với cơm trắng để thưởng thức vị thơm ngon và ngấm mắm.');

-- --------------------------------------
-- 29. Ngò gai (class_index: 28)
-- --------------------------------------

-- Chèn vào bảng vegetables
INSERT INTO vegetables (class_index, vietnamese_name, scientific_name, description, nutritional_info)
VALUES (
    28, 
    'Ngò gai', 
    'Eryngium foetidum', 
    'Ngò gai, hay còn gọi là rau mùi tàu, là một loại rau gia vị thuộc họ Hoa tán (Apiaceae), phổ biến ở Việt Nam, đặc biệt trong các món ăn miền Nam. Lá có hình răng cưa, mùi thơm nồng, vị cay nhẹ. Ngò gai được dùng để trang trí, tăng hương vị trong các món canh, lẩu, bún nước lèo, hoặc phở, là nguyên liệu quen thuộc trong ẩm thực Việt Nam nhờ hương thơm đặc trưng.',
    'Ngò gai giàu vitamin A, vitamin C, và chất chống oxy hóa. Rau này hỗ trợ tiêu hóa, tăng cường miễn dịch, và có đặc tính kháng viêm. Ngò gai cũng chứa sắt và canxi, giúp duy trì sức khỏe máu và xương. Với lượng calo thấp, ngò gai là lựa chọn tuyệt vời để tăng hương vị món ăn.'
);

-- Chèn vào bảng vegetable_nutritional_points
INSERT INTO vegetable_nutritional_points (vegetable_id, point_text, display_order)
VALUES 
(29, 'Vitamin A (50% DV trong 100g): Hỗ trợ thị lực, sức khỏe da, và tăng cường miễn dịch.', 1),
(29, 'Vitamin C (45% DV trong 100g): Tăng cường miễn dịch, hỗ trợ sản xuất collagen, và bảo vệ tế bào.', 2),
(29, 'Sắt (2mg trong 100g): Hỗ trợ tạo hồng cầu, ngăn ngừa thiếu máu.', 3),
(29, 'Canxi (60mg trong 100g): Giúp duy trì sức khỏe xương và răng.', 4),
(29, 'Chất chống oxy hóa: Giảm viêm, bảo vệ tế bào khỏi tổn thương oxy hóa.', 5),
(29, 'Ít calo (23 kcal trong 100g): Phù hợp để tăng hương vị món ăn mà không tăng calo.', 6);

-- Chèn vào bảng vegetable_select_points
INSERT INTO vegetable_select_points (vegetable_id, point_text, display_order)
VALUES 
(29, 'Lá xanh tươi, không úa: Chọn ngò gai có lá xanh đậm, bóng, không vàng hoặc héo.', 1),
(29, 'Mùi thơm nồng: Ngò gai tươi có mùi thơm đặc trưng, tránh loại mùi yếu hoặc hắc.', 2),
(29, 'Thân mềm, không cứng: Rau tươi có thân mềm, dễ bẻ, không xơ hoặc cứng.', 3),
(29, 'Không có đốm nâu: Kiểm tra lá không có vết thâm hoặc dấu hiệu hư hỏng.', 4),
(29, 'Tránh rau dập: Chọn bó rau nguyên vẹn, không bị dập nát.', 5);

-- Chèn vào bảng vegetable_preserve_points
INSERT INTO vegetable_preserve_points (vegetable_id, point_text, display_order)
VALUES 
(29, 'Bọc kín trong ngăn mát: Bọc ngò gai trong khăn giấy ẩm, cho vào túi nhựa, bảo quản ở 0-4°C, giữ tươi 5-7 ngày.', 1),
(29, 'Giữ khô trước khi bảo quản: Không rửa rau trước khi cất, tránh ẩm mốc, chỉ rửa trước khi chế biến.', 2),
(29, 'Đông lạnh để bảo quản lâu: Rửa sạch, thái nhỏ, để ráo, cho vào túi zip, đông lạnh ở -18°C, dùng trong 3-4 tháng.', 3),
(29, 'Kiểm tra định kỳ: Loại bỏ lá úa hoặc hỏng để tránh lây lan.', 4),
(29, 'Tránh để gần trái cây tiết ethylene: Táo, chuối làm ngò gai nhanh héo.', 5);

-- Chèn vào bảng recipes
INSERT INTO recipes (name, description, prep_time, cook_time, servings)
VALUES 
('Ngò gai trộn gỏi gà', 'Món gỏi tươi mát, phổ biến trong ẩm thực Việt Nam, với ngò gai thơm nồng trộn thịt gà, là món khai vị hoặc ăn kèm.', '15 phút', '10 phút', '4 người'),
('Canh ngò gai nấu tôm', 'Món canh thanh nhẹ, quen thuộc trong ẩm thực Việt Nam, với ngò gai thơm và tôm ngọt, là món phụ bổ dưỡng.', '10 phút', '10 phút', '4 người'),
('Bún nước lèo ngò gai', 'Món bún đặc trưng miền Tây Việt Nam, với ngò gai làm điểm nhấn thơm, là món chính hấp dẫn.', '20 phút', '30 phút', '4 người'),
('Ngò gai xào thịt bò', 'Món xào thơm ngon, phổ biến trong ẩm thực Việt Nam, với ngò gai kết hợp thịt bò mềm, là món chính trong bữa cơm.', '10 phút', '10 phút', '4 người');

-- Chèn vào bảng recipe_vegetables
INSERT INTO recipe_vegetables (recipe_id, vegetable_id)
VALUES 
(113, 29),
(114, 29),
(115, 29),
(116, 29);

-- Chèn vào bảng recipe_items
INSERT INTO recipe_items (recipe_id, item_name, quantity, notes, order_index)
VALUES 
-- Ngò gai trộn gỏi gà
(113, 'Ngò gai', '100g', 'Rửa sạch, thái nhỏ', 1),
(113, 'Thịt gà', '200g', 'Luộc chín, xé sợi', 2),
(113, 'Nước mắm', '2 muỗng canh', 'Chọn loại ngon', 3),
(113, 'Đường', '1 muỗng canh', 'Tạo vị ngọt', 4),
(113, 'Nước cốt chanh', '1 muỗng canh', 'Tạo vị chua', 5),
(113, 'Tỏi', '2 tép (10g)', 'Băm nhỏ', 6),
(113, 'Ớt', '1 quả (5g)', 'Thái lát', 7),
-- Canh ngò gai nấu tôm
(114, 'Ngò gai', '50g', 'Rửa sạch, thái nhỏ', 1),
(114, 'Tôm tươi', '200g', 'Bóc vỏ, bỏ đầu, rút chỉ đen', 2),
(114, 'Hành lá', '2 nhánh (10g)', 'Rửa sạch, thái nhỏ', 3),
(114, 'Nước mắm', '1 muỗng canh', 'Chọn loại ngon', 4),
(114, 'Muối', '1/2 muỗng cà phê', 'Điều chỉnh theo khẩu vị', 5),
(114, 'Nước', '1 lít', 'Nước lọc', 6),
-- Bún nước lèo ngò gai
(115, 'Ngò gai', '50g', 'Rửa sạch, thái nhỏ, trang trí', 1),
(115, 'Bún tươi', '400g', 'Chần sơ, để ráo', 2),
(115, 'Cá lóc', '300g', 'Làm sạch, luộc lấy nước', 3),
(115, 'Nước mắm', '2 muỗng canh', 'Chọn loại ngon', 4),
(115, 'Sả', '2 cây (20g)', 'Băm nhỏ', 5),
(115, 'Nước', '1.5 lít', 'Nước lọc', 6),
(115, 'Hành lá', '2 nhánh (10g)', 'Thái nhỏ', 7),
-- Ngò gai xào thịt bò
(116, 'Ngò gai', '150g', 'Rửa sạch, cắt khúc 5cm', 1),
(116, 'Thịt bò', '200g', 'Thái lát mỏng, ướp muối, tiêu', 2),
(116, 'Tỏi', '3 tép (12g)', 'Băm nhỏ', 3),
(116, 'Dầu ăn', '2 muỗng canh', 'Dùng để xào', 4),
(116, 'Nước mắm', '1 muỗng canh', 'Tăng hương vị', 5),
(116, 'Hạt tiêu', '1/4 muỗng cà phê', 'Rắc khi hoàn thiện', 6);

-- Chèn vào bảng recipe_steps
INSERT INTO recipe_steps (recipe_id, step_number, instruction_text)
VALUES 
-- Ngò gai trộn gỏi gà
(113, 1, 'Chuẩn bị nguyên liệu: Rửa sạch ngò gai dưới vòi nước, ngâm nước muối loãng 5 phút để khử khuẩn, để ráo, thái nhỏ. Luộc thịt gà trong nước sôi có chút muối khoảng 10 phút, vớt ra, để nguội, xé sợi nhỏ. Tỏi băm nhuyễn, ớt thái lát mỏng để tăng vị cay.'),
(113, 2, 'Pha nước mắm trộn gỏi: Trong bát nhỏ, trộn 2 muỗng canh nước mắm ngon, 1 muỗng canh đường, 1 muỗng canh nước cốt chanh, tỏi băm, và ớt thái lát. Khuấy đều cho đường tan hoàn toàn, nếm thử để đảm bảo vị chua ngọt cân bằng. Có thể thêm chút nước lọc nếu nước mắm quá mặn.'),
(113, 3, 'Trộn gỏi: Cho ngò gai và thịt gà xé sợi vào tô lớn, rưới hỗn hợp nước mắm lên trên. Dùng tay hoặc đũa trộn đều để ngò gai và gà thấm gia vị. Để gỏi nghỉ 5-7 phút trong tủ lạnh để vị ngấm sâu và giữ độ giòn của ngò gai.'),
(113, 4, 'Hoàn thiện món gỏi: Lấy gỏi ra, kiểm tra lại vị, điều chỉnh nếu cần. Dọn gỏi ra đĩa, trang trí thêm vài lá ngò gai nguyên hoặc ớt thái lát. Dùng làm món khai vị hoặc ăn kèm cơm trắng, bánh tráng để thưởng thức vị thơm cay đặc trưng của ngò gai.'),
-- Canh ngò gai nấu tôm
(114, 1, 'Chuẩn bị nguyên liệu: Rửa sạch ngò gai, ngâm nước muối loãng 5 phút, để ráo, thái nhỏ vừa ăn. Tôm tươi bóc vỏ, bỏ đầu, rút chỉ đen ở lưng, rửa sạch với nước muối loãng để khử tanh. Hành lá rửa sạch, thái nhỏ, giữ riêng phần đầu hành để phi thơm.'),
(114, 2, 'Xào tôm: Đun nóng 1 muỗng canh dầu ăn trong nồi, cho đầu hành lá vào phi thơm 10 giây, sau đó thêm tôm vào xào trên lửa vừa 1-2 phút đến khi tôm chuyển màu hồng và săn lại. Vớt tôm ra bát, để riêng, tránh xào quá lâu khiến tôm dai.'),
(114, 3, 'Nấu canh: Đổ 1 lít nước lọc vào nồi, đun sôi. Cho tôm đã xào và ngò gai vào, nấu trên lửa vừa 3-4 phút để ngò gai mềm và tiết hương thơm. Nêm 1 muỗng canh nước mắm và 1/2 muỗng cà phê muối, khuấy nhẹ, nếm thử để điều chỉnh vị thanh nhẹ.'),
(114, 4, 'Hoàn thiện món canh: Rắc hành lá thái nhỏ vào nồi, đun thêm 30 giây để hành chín sơ. Tắt bếp, múc canh ra bát, dùng nóng với cơm trắng hoặc bún tươi để thưởng thức vị ngọt tự nhiên của tôm và thơm nồng của ngò gai.'),
-- Bún nước lèo ngò gai
(115, 1, 'Chuẩn bị nguyên liệu: Làm sạch cá lóc, luộc trong 1.5 lít nước sôi có chút muối khoảng 10 phút, vớt ra, gỡ lấy thịt, giữ lại nước luộc làm nước dùng. Ngò gai và hành lá rửa sạch, thái nhỏ để trang trí. Sả băm nhuyễn để tăng hương vị nước dùng.'),
(115, 2, 'Nấu nước dùng: Lọc nước luộc cá qua rây để loại bỏ cặn, đun sôi lại. Thêm sả băm và 2 muỗng canh nước mắm, nấu trên lửa nhỏ 10 phút để nước dùng dậy mùi thơm. Nếm thử, có thể thêm chút muối nếu nhạt. Vớt bọt thường xuyên để nước trong.'),
(115, 3, 'Chuẩn bị bún: Chần bún tươi trong nước sôi 30 giây, để ráo, chia đều vào 4 bát. Xếp thịt cá lóc gỡ nhỏ lên trên bún. Chuẩn bị thêm giá đỗ, rau muống bào, và chanh, mắm ớt để ăn kèm, tùy sở thích.'),
(115, 4, 'Hoàn thiện món bún: Chan nước dùng nóng vào bát bún, rắc ngò gai và hành lá thái nhỏ lên trên để tăng hương vị. Dọn bún ra bàn, dùng nóng kèm rau sống và mắm ớt để thưởng thức vị ngọt thanh của nước dùng và thơm nồng của ngò gai.'),
-- Ngò gai xào thịt bò
(116, 1, 'Chuẩn bị nguyên liệu: Rửa sạch ngò gai, ngâm nước muối loãng 5 phút, để ráo, cắt khúc 5cm để dễ xào. Thịt bò thái lát mỏng, ướp với 1/4 muỗng cà phê muối, 1/4 muỗng cà phê tiêu, và 1 muỗng cà phê dầu ăn trong 10 phút. Tỏi băm nhuyễn.'),
(116, 2, 'Xào thịt bò: Đun nóng 1 muỗng canh dầu ăn trong chảo, phi tỏi 20 giây đến khi thơm, cho thịt bò vào xào nhanh trên lửa lớn 1-2 phút đến khi thịt tái, vớt ra để tránh thịt bị dai.'),
(116, 3, 'Xào ngò gai: Thêm 1 muỗng canh dầu ăn vào chảo, cho ngò gai vào xào trên lửa vừa 2 phút đến khi rau mềm nhưng vẫn giữ độ giòn. Nêm 1 muỗng canh nước mắm, đảo đều để ngò gai thấm vị.'),
(116, 4, 'Hoàn thiện món xào: Cho thịt bò trở lại chảo, đảo nhanh 30 giây để thịt chín đều và hòa quyện với ngò gai. Rắc 1/4 muỗng cà phê hạt tiêu, tắt bếp, dọn ra đĩa. Dùng nóng với cơm trắng để thưởng thức vị thơm cay của ngò gai và thịt bò mềm.');

-- --------------------------------------
-- 30. Ngò rí (class_index: 29)
-- --------------------------------------

-- Chèn vào bảng vegetables
INSERT INTO vegetables (class_index, vietnamese_name, scientific_name, description, nutritional_info)
VALUES (
    29, 
    'Ngò rí', 
    'Coriandrum sativum', 
    'Ngò rí, hay còn gọi là rau mùi, là một loại rau gia vị thuộc họ Hoa tán (Apiaceae), phổ biến trong ẩm thực Việt Nam. Lá nhỏ, màu xanh đậm, mùi thơm nhẹ, vị tươi mát. Ngò rí được dùng để trang trí, tăng hương vị trong các món phở, bún, canh, hoặc gỏi, là nguyên liệu không thể thiếu nhờ mùi thơm đặc trưng.',
    'Ngò rí giàu vitamin K, vitamin A, và chất chống oxy hóa. Rau này hỗ trợ đông máu, cải thiện thị lực, và có đặc tính kháng viêm. Ngò rí cũng chứa sắt và vitamin C, giúp tăng cường miễn dịch và sức khỏe máu. Với lượng calo thấp, ngò rí là lựa chọn tuyệt vời để tăng hương vị món ăn.'
);

-- Chèn vào bảng vegetable_nutritional_points
INSERT INTO vegetable_nutritional_points (vegetable_id, point_text, display_order)
VALUES 
(30, 'Vitamin K (310% DV trong 100g): Hỗ trợ đông máu và sức khỏe xương.', 1),
(30, 'Vitamin A (135% DV trong 100g): Hỗ trợ thị lực và miễn dịch.', 2),
(30, 'Vitamin C (27% DV trong 100g): Tăng cường miễn dịch, bảo vệ tế bào.', 3),
(30, 'Sắt (1.8mg trong 100g): Ngăn ngừa thiếu máu, hỗ trợ tạo hồng cầu.', 4),
(30, 'Chất chống oxy hóa: Giảm viêm, bảo vệ tế bào khỏi tổn thương.', 5),
(30, 'Ít calo (23 kcal trong 100g): Tăng hương vị món ăn mà không tăng calo.', 6);

-- Chèn vào bảng vegetable_select_points
INSERT INTO vegetable_select_points (vegetable_id, point_text, display_order)
VALUES 
(30, 'Lá xanh tươi, không úa: Chọn ngò rí có lá xanh đậm, không vàng hoặc héo.', 1),
(30, 'Mùi thơm nhẹ: Ngò rí tươi có mùi thơm đặc trưng, tránh loại mùi yếu.', 2),
(30, 'Thân mềm, không xơ: Rau tươi có thân mềm, dễ bẻ, không cứng.', 3),
(30, 'Không có đốm nâu: Kiểm tra lá không có vết thâm hoặc hư hỏng.', 4),
(30, 'Tránh rau dập: Chọn bó rau nguyên vẹn, không bị dập nát.', 5);

-- Chèn vào bảng vegetable_preserve_points
INSERT INTO vegetable_preserve_points (vegetable_id, point_text, display_order)
VALUES 
(30, 'Bọc kín trong ngăn mát: Bọc ngò rí trong khăn giấy ẩm, cho vào túi nhựa, bảo quản ở 0-4°C, giữ tươi 5-7 ngày.', 1),
(30, 'Giữ khô trước khi bảo quản: Không rửa rau trước khi cất, tránh ẩm mốc.', 2),
(30, 'Đông lạnh để bảo quản lâu: Rửa sạch, thái nhỏ, để ráo, đông lạnh ở -18°C, dùng trong 3-4 tháng.', 3),
(30, 'Kiểm tra định kỳ: Loại bỏ lá úa hoặc hỏng để tránh lây lan.', 4),
(30, 'Tránh để gần trái cây tiết ethylene: Táo, chuối làm ngò rí nhanh héo.', 5);

-- Chèn vào bảng recipes
INSERT INTO recipes (name, description, prep_time, cook_time, servings)
VALUES 
('Phở bò ngò rí', 'Món phở truyền thống Việt Nam, với ngò rí làm điểm nhấn thơm, là món chính hấp dẫn.', '20 phút', '60 phút', '4 người'),
('Gỏi tôm ngò rí', 'Món gỏi tươi mát, với ngò rí thơm trộn tôm, là món khai vị hoặc ăn kèm.', '15 phút', '10 phút', '4 người'),
('Canh chua cá lóc ngò rí', 'Món canh chua đặc trưng, với ngò rí tăng hương vị, là món phụ bổ dưỡng.', '15 phút', '20 phút', '4 người'),
('Ngò rí trộn trứng chiên', 'Món chiên đơn giản, với ngò rí thơm kết hợp trứng, là món phụ dễ làm.', '10 phút', '10 phút', '4 người');

-- Chèn vào bảng recipe_vegetables
INSERT INTO recipe_vegetables (recipe_id, vegetable_id)
VALUES 
(117, 30),
(118, 30),
(119, 30),
(120, 30);

-- Chèn vào bảng recipe_items
INSERT INTO recipe_items (recipe_id, item_name, quantity, notes, order_index)
VALUES 
-- Phở bò ngò rí
(117, 'Ngò rí', '50g', 'Rửa sạch, thái nhỏ, trang trí', 1),
(117, 'Bún phở', '400g', 'Chần sơ, để ráo', 2),
(117, 'Thịt bò', '300g', 'Thái lát mỏng', 3),
(117, 'Xương bò', '500g', 'Hầm lấy nước dùng', 4),
(117, 'Nước mắm', '2 muỗng canh', 'Chọn loại ngon', 5),
(117, 'Hành tây', '1 củ (100g)', 'Thái lát mỏng', 6),
(117, 'Nước', '2 lít', 'Nước lọc', 7),
-- Gỏi tôm ngò rí
(118, 'Ngò rí', '100g', 'Rửa sạch, thái nhỏ', 1),
(118, 'Tôm tươi', '200g', 'Luộc chín, bóc vỏ', 2),
(118, 'Nước mắm', '2 muỗng canh', 'Chọn loại ngon', 3),
(118, 'Đường', '1 muỗng canh', 'Tạo vị ngọt', 4),
(118, 'Nước cốt chanh', '1 muỗng canh', 'Tạo vị chua', 5),
(118, 'Tỏi', '2 tép (10g)', 'Băm nhỏ', 6),
-- Canh chua cá lóc ngò rí
(119, 'Ngò rí', '50g', 'Rửa sạch, thái nhỏ', 1),
(119, 'Cá lóc', '300g', 'Làm sạch, cắt khúc', 2),
(119, 'Me chua', '20g', 'Ngâm nước, lấy nước cốt', 3),
(119, 'Nước mắm', '1 muỗng canh', 'Chọn loại ngon', 4),
(119, 'Nước', '1 lít', 'Nước lọc', 5),
(119, 'Hành lá', '2 nhánh (10g)', 'Thái nhỏ', 6),
-- Ngò rí trộn trứng chiên
(120, 'Ngò rí', '100g', 'Rửa sạch, thái nhỏ', 1),
(120, 'Trứng gà', '3 quả', 'Đánh tan', 2),
(120, 'Nước mắm', '1 muỗng canh', 'Tăng hương vị', 3),
(120, 'Dầu ăn', '2 muỗng canh', 'Dùng để chiên', 4),
(120, 'Hạt tiêu', '1/4 muỗng cà phê', 'Rắc khi hoàn thiện', 5);

-- Chèn vào bảng recipe_steps
INSERT INTO recipe_steps (recipe_id, step_number, instruction_text)
VALUES 
-- Phở bò ngò rí
(117, 1, 'Chuẩn bị nguyên liệu: Rửa sạch ngò rí, ngâm nước muối loãng 5 phút, để ráo, thái nhỏ để trang trí. Hầm xương bò với 2 lít nước trong nồi áp suất 30 phút hoặc nồi thường 1 giờ, thêm chút muối, vớt bọt để nước trong. Hành tây thái lát mỏng, ngâm nước đá để giòn.'),
(117, 2, 'Nấu nước dùng: Lọc nước hầm xương qua rây, đun sôi lại, thêm 2 muỗng canh nước mắm và hành tây thái lát, nấu trên lửa nhỏ 10 phút để nước dùng ngọt và thơm. Nêm nếm lại, có thể thêm muối hoặc nước mắm nếu nhạt. Chuẩn bị túi gia vị phở (quế, hồi, thảo quả) để tăng hương vị nếu muốn.'),
(117, 3, 'Chuẩn bị bún và thịt: Chần bún phở trong nước sôi 30 giây, để ráo, chia đều vào 4 bát. Thịt bò thái lát mỏng, xếp lên bún. Chuẩn bị thêm giá đỗ, chanh, ớt, và rau thơm khác (húng quế, ngò gai) để ăn kèm, tùy sở thích.'),
(117, 4, 'Hoàn thiện món phở: Chan nước dùng nóng vào bát, đảm bảo ngập bún và thịt bò để thịt chín tái. Rắc ngò rí và hành tây thái lát lên trên để tăng hương vị. Dọn phở ra bàn, dùng nóng kèm rau sống, tương ớt, và mắm nêm để thưởng thức vị ngọt thanh của nước dùng và thơm nhẹ của ngò rí.'),
-- Gỏi tôm ngò rí
(118, 1, 'Chuẩn bị nguyên liệu: Rửa sạch ngò rí, ngâm nước muối loãng 5 phút, để ráo, thái nhỏ. Tôm tươi luộc trong nước sôi có chút muối khoảng 2-3 phút đến khi chín, vớt ra, ngâm nước đá 1 phút để tôm giòn, bóc vỏ. Tỏi băm nhuyễn để pha nước mắm.'),
(118, 2, 'Pha nước mắm trộn gỏi: Trong bát nhỏ, trộn 2 muỗng canh nước mắm ngon, 1 muỗng canh đường, 1 muỗng canh nước cốt chanh, và tỏi băm. Khuấy đều cho đường tan, nếm thử để đảm bảo vị chua ngọt hài hòa. Có thể thêm ớt băm nếu thích cay.'),
(118, 3, 'Trộn gỏi: Cho ngò rí và tôm vào tô lớn, rưới nước mắm lên trên. Dùng tay hoặc đũa trộn đều để ngò rí và tôm thấm gia vị. Để gỏi nghỉ 5 phút trong tủ lạnh để vị ngấm và giữ độ giòn của ngò rí. Trộn nhẹ tay để tránh làm nát ngò rí.'),
(118, 4, 'Hoàn thiện món gỏi: Lấy gỏi ra, kiểm tra lại vị, điều chỉnh nếu cần. Dọn gỏi ra đĩa, trang trí thêm vài lá ngò rí nguyên hoặc ớt thái lát. Dùng làm món khai vị hoặc ăn kèm cơm trắng, bánh tráng để thưởng thức vị tươi mát và thơm của ngò rí.'),
-- Canh chua cá lóc ngò rí
(119, 1, 'Chuẩn bị nguyên liệu: Rửa sạch ngò rí, ngâm nước muối loãng 5 phút, để ráo, thái nhỏ. Cá lóc làm sạch, cắt khúc 3cm, ướp với 1/4 muỗng cà phê muối trong 10 phút. Ngâm me chua trong 100ml nước ấm, dầm lấy nước cốt. Hành lá thái nhỏ.'),
(119, 2, 'Nấu canh: Đun sôi 1 lít nước lọc, cho cá lóc vào, nấu trên lửa vừa 5 phút đến khi cá chín sơ. Thêm nước cốt me vào nồi, khuấy nhẹ để tạo vị chua. Vớt bọt để nước canh trong.'),
(119, 3, 'Nêm gia vị: Thêm 1 muỗng canh nước mắm và ngò rí vào nồi, nấu thêm 2 phút để ngò rí tiết hương thơm. Nếm thử, có thể thêm chút đường nếu muốn vị chua dịu hơn. Điều chỉnh vị chua ngọt thanh theo khẩu vị.'),
(119, 4, 'Hoàn thiện món canh: Rắc hành lá thái nhỏ vào nồi, đun thêm 30 giây để hành chín sơ. Tắt bếp, múc canh ra bát, dùng nóng với cơm trắng hoặc bún tươi để thưởng thức vị chua thanh của me và thơm nhẹ của ngò rí.'),
-- Ngò rí trộn trứng chiên
(120, 1, 'Chuẩn bị nguyên liệu: Rửa sạch ngò rí, ngâm nước muối loãng 5 phút, để ráo, thái nhỏ. Đập 3 quả trứng gà vào bát, đánh tan, thêm ngò rí thái nhỏ vào, trộn đều để ngò rí phân bố đều trong trứng.'),
(120, 2, 'Nêm gia vị: Thêm 1 muỗng canh nước mắm vào hỗn hợp trứng và ngò rí, khuấy đều. Có thể thêm chút tiêu để tăng hương vị. Đảm bảo hỗn hợp có vị mặn nhẹ, tránh nêm quá nhiều vì trứng sẽ bị mặn khi chiên.'),
(120, 3, 'Chiên trứng: Đun nóng 2 muỗng canh dầu ăn trong chảo chống dính, đổ hỗn hợp trứng vào, dàn đều. Chiên trên lửa vừa 2-3 phút mỗi mặt đến khi trứng chín vàng, lật nhẹ để tránh làm vỡ. Có thể dùng nắp đậy để trứng chín đều mà không cần lật.'),
(120, 4, 'Hoàn thiện món chiên: Rắc 1/4 muỗng cà phê hạt tiêu lên trứng, cắt trứng thành miếng vừa ăn. Dọn ra đĩa, dùng nóng với cơm trắng hoặc làm món ăn kèm để thưởng thức vị béo của trứng và thơm nhẹ của ngò rí.');

-- --------------------------------------
-- 31. Ớt chuông (class_index: 30)
-- --------------------------------------

-- Chèn vào bảng vegetables
INSERT INTO vegetables (class_index, vietnamese_name, scientific_name, description, nutritional_info)
VALUES (
    30, 
    'Ớt chuông', 
    'Capsicum annuum', 
    'Ớt chuông là một loại quả thuộc họ Cà (Solanaceae), phổ biến trong ẩm thực Việt Nam. Quả có màu xanh, đỏ, vàng, hoặc cam, hình dạng vuông hoặc tròn, vị ngọt nhẹ, giòn. Ớt chuông được dùng trong các món xào, salad, nướng, hoặc nhồi thịt, là nguyên liệu quen thuộc nhờ màu sắc bắt mắt và độ giòn.',
    'Ớt chuông giàu vitamin C, vitamin A, và chất xơ. Quả này hỗ trợ tiêu hóa, tăng cường miễn dịch, và cải thiện thị lực nhờ beta-carotene. Ớt chuông cũng chứa chất chống oxy hóa như capsanthin, giúp giảm viêm và bảo vệ tim mạch. Với lượng calo thấp, ớt chuông là lựa chọn tốt cho chế độ ăn lành mạnh.'
);

-- Chèn vào bảng vegetable_nutritional_points
INSERT INTO vegetable_nutritional_points (vegetable_id, point_text, display_order)
VALUES 
(31, 'Vitamin C (190% DV trong 100g): Tăng cường miễn dịch, hỗ trợ sản xuất collagen.', 1),
(31, 'Vitamin A (23% DV trong 100g): Hỗ trợ thị lực và sức khỏe da.', 2),
(31, 'Chất xơ (2g trong 100g): Cải thiện tiêu hóa, ngăn ngừa táo bón.', 3),
(31, 'Capsanthin: Chất chống oxy hóa giúp giảm viêm, bảo vệ tim mạch.', 4),
(31, 'Kali (211mg trong 100g): Cân bằng huyết áp, hỗ trợ chức năng cơ bắp.', 5),
(31, 'Ít calo (31 kcal trong 100g): Phù hợp cho chế độ ăn kiêng.', 6);

-- Chèn vào bảng vegetable_select_points
INSERT INTO vegetable_select_points (vegetable_id, point_text, display_order)
VALUES 
(31, 'Vỏ bóng, không nhăn: Chọn ớt chuông có vỏ mịn, bóng, không nhăn hoặc mềm.', 1),
(31, 'Màu sắc tươi sáng: Ớt đỏ, vàng, xanh có màu đậm, không xỉn.', 2),
(31, 'Quả cứng, chắc: Ớt tươi có độ cứng khi ấn, không mềm.', 3),
(31, 'Cuống xanh, tươi: Chọn ớt có cuống xanh, không khô héo.', 4),
(31, 'Tránh quả dập: Kiểm tra không có vết thâm hoặc hư hỏng.', 5);

-- Chèn vào bảng vegetable_preserve_points
INSERT INTO vegetable_preserve_points (vegetable_id, point_text, display_order)
VALUES 
(31, 'Bọc kín trong ngăn mát: Đặt ớt chuông trong túi nhựa, bảo quản ở 4-7°C, giữ tươi 2-3 tuần.', 1),
(31, 'Giữ khô trước khi bảo quản: Không rửa ớt trước khi cất, tránh ẩm mốc.', 2),
(31, 'Đông lạnh để bảo quản lâu: Cắt lát, để vào túi zip, đông lạnh ở -18°C, dùng trong 6 tháng.', 3),
(31, 'Kiểm tra định kỳ: Loại bỏ quả mềm hoặc thâm để tránh lây lan hư hỏng.', 4),
(31, 'Tránh để gần trái cây tiết ethylene: Táo, chuối làm ớt chuông nhanh hỏng.', 5);

-- Chèn vào bảng recipes
INSERT INTO recipes (name, description, prep_time, cook_time, servings)
VALUES 
('Ớt chuông xào thịt bò', 'Món xào thơm ngon, với ớt chuông giòn ngọt và thịt bò mềm, là món chính trong bữa cơm.', '10 phút', '10 phút', '4 người'),
('Salad ớt chuông', 'Món salad tươi mát, với ớt chuông nhiều màu trộn mắm, là món khai vị hoặc ăn kèm.', '10 phút', '0 phút', '4 người'),
('Ớt chuông nhồi thịt', 'Món nhồi hấp hoặc nướng, với ớt chuông chứa thịt heo thơm, là món chính bổ dưỡng.', '15 phút', '20 phút', '4 người'),
('Canh ớt chuông nấu tôm', 'Món canh thanh nhẹ, với ớt chuông ngọt và tôm tươi, là món phụ hấp dẫn.', '10 phút', '15 phút', '4 người');

-- Chèn vào bảng recipe_vegetables
INSERT INTO recipe_vegetables (recipe_id, vegetable_id)
VALUES 
(121, 31),
(122, 31),
(123, 31),
(124, 31);

-- Chèn vào bảng recipe_items
INSERT INTO recipe_items (recipe_id, item_name, quantity, notes, order_index)
VALUES 
-- Ớt chuông xào thịt bò
(121, 'Ớt chuông', '200g', 'Cắt miếng vuông', 1),
(121, 'Thịt bò', '200g', 'Thái lát mỏng, ướp muối, tiêu', 2),
(121, 'Tỏi', '3 tép (12g)', 'Băm nhỏ', 3),
(121, 'Dầu ăn', '2 muỗng canh', 'Dùng để xào', 4),
(121, 'Nước mắm', '1 muỗng canh', 'Tăng hương vị', 5),
(121, 'Hạt tiêu', '1/4 muỗng cà phê', 'Rắc khi hoàn thiện', 6),
-- Salad ớt chuông
(122, 'Ớt chuông', '200g', 'Cắt sợi mỏng, ngâm nước lạnh', 1),
(122, 'Nước mắm', '2 muỗng canh', 'Chọn loại ngon', 2),
(122, 'Đường', '1 muỗng canh', 'Tạo vị ngọt', 3),
(122, 'Nước cốt chanh', '1 muỗng canh', 'Tạo vị chua', 4),
(122, 'Tỏi', '2 tép (10g)', 'Băm nhỏ', 5),
(122, 'Rau mùi', '10g', 'Thái nhỏ', 6),
-- Ớt chuông nhồi thịt
(123, 'Ớt chuông', '4 quả (400g)', 'Bỏ hạt, giữ nguyên hình', 1),
(123, 'Thịt heo băm', '200g', 'Ướp muối, tiêu', 2),
(123, 'Nấm mèo', '10g', 'Ngâm mềm, thái nhỏ', 3),
(123, 'Nước mắm', '1 muỗng canh', 'Tăng hương vị', 4),
(123, 'Hành lá', '1 nhánh (5g)', 'Thái nhỏ', 5),
-- Canh ớt chuông nấu tôm
(124, 'Ớt chuông', '150g', 'Cắt miếng vuông', 1),
(124, 'Tôm tươi', '200g', 'Bóc vỏ, rút chỉ đen', 2),
(124, 'Nước mắm', '1 muỗng canh', 'Chọn loại ngon', 3),
(124, 'Hành lá', '2 nhánh (10g)', 'Thái nhỏ', 4),
(124, 'Nước', '1 lít', 'Nước lọc', 5);

-- Chèn vào bảng recipe_steps
INSERT INTO recipe_steps (recipe_id, step_number, instruction_text)
VALUES 
-- Ớt chuông xào thịt bò
(121, 1, 'Chuẩn bị nguyên liệu: Rửa sạch ớt chuông, bỏ hạt, cắt miếng vuông 2cm để dễ xào và giữ độ giòn. Thịt bò thái lát mỏng, ướp với 1/4 muỗng cà phê muối, 1/4 muỗng cà phê tiêu, và 1 muỗng cà phê dầu ăn trong 10 phút để thịt thấm gia vị và mềm. Tỏi băm nhuyễn để phi thơm.'),
(121, 2, 'Xào thịt bò: Đun nóng 1 muỗng canh dầu ăn trong chảo, phi tỏi 20 giây đến khi vàng nhẹ và dậy mùi. Cho thịt bò vào xào nhanh trên lửa lớn 1-2 phút đến khi thịt tái, đảo đều để thịt chín đều mà không bị dai. Vớt thịt ra bát, để riêng.'),
(121, 3, 'Xào ớt chuông: Thêm 1 muỗng canh dầu ăn vào chảo, cho ớt chuông vào xào trên lửa vừa 2-3 phút đến khi ớt mềm nhưng vẫn giòn. Nêm 1 muỗng canh nước mắm, đảo đều để ớt thấm vị. Có thể thêm chút nước nếu chảo quá khô, nhưng không quá nhiều để giữ độ giòn.'),
(121, 4, 'Hoàn thiện món xào: Cho thịt bò trở lại chảo, đảo nhanh 1 phút để thịt chín hoàn toàn và hòa quyện với ớt chuông. Rắc 1/4 muỗng cà phê hạt tiêu, tắt bếp, dọn ra đĩa. Dùng nóng với cơm trắng để thưởng thức vị ngọt giòn của ớt chuông và thịt bò mềm thơm.'),
-- Salad ớt chuông
(122, 1, 'Chuẩn bị nguyên liệu: Rửa sạch ớt chuông, bỏ hạt, cắt sợi mỏng, ngâm trong nước đá 10 phút để ớt giòn hơn, sau đó để ráo. Tỏi băm nhuyễn, rau mùi rửa sạch, thái nhỏ để trang trí. Chọn ớt chuông nhiều màu (đỏ, vàng, xanh) để món salad thêm bắt mắt.'),
(122, 2, 'Pha nước mắm trộn: Trong bát nhỏ, trộn 2 muỗng canh nước mắm ngon, 1 muỗng canh đường, 1 muỗng canh nước cốt chanh, và tỏi băm. Khuấy đều cho đường tan, nếm thử để đảm bảo vị chua ngọt cân bằng. Có thể thêm ớt băm nếu thích cay.'),
(122, 3, 'Trộn salad: Cho ớt chuông sợi vào tô lớn, rưới nước mắm lên trên, trộn đều bằng tay hoặc đũa để ớt thấm gia vị. Để salad nghỉ 5 phút trong tủ lạnh để vị ngấm và ớt giữ độ giòn. Trộn nhẹ tay để tránh làm ớt nát.'),
(122, 4, 'Hoàn thiện món salad: Lấy salad ra, rắc rau mùi thái nhỏ lên trên để tăng hương vị. Dọn salad ra đĩa, dùng làm món khai vị hoặc ăn kèm thịt nướng, cá chiên để thưởng thức vị giòn ngọt của ớt chuông và nước mắm thơm.'),
-- Ớt chuông nhồi thịt
(123, 1, 'Chuẩn bị nguyên liệu: Rửa sạch ớt chuông, cắt phần đầu, bỏ hạt, giữ nguyên hình quả để nhồi. Trộn thịt heo băm với nấm mèo ngâm mềm thái nhỏ, hành lá thái nhỏ, 1/4 muỗng cà phê muối, và 1/4 muỗng cà phê tiêu. Ướp hỗn hợp thịt 10 phút để thấm gia vị.'),
(123, 2, 'Nhồi thịt: Dùng muỗng nhồi hỗn hợp thịt vào bên trong ớt chuông, ấn chặt để thịt đầy và không bị rời ra khi hấp. Có thể dùng tăm ghim phần đầu ớt lại nếu muốn giữ nguyên hình dáng.'),
(123, 3, 'Hấp ớt: Xếp ớt nhồi thịt vào xửng, hấp trên nước sôi 15-20 phút đến khi thịt chín và ớt mềm. Rưới 1 muỗng canh nước mắm lên ớt trong 2 phút cuối để tăng hương vị. Có thể nướng ở 180°C trong 20 phút nếu thích ớt có vỏ hơi cháy xém.'),
(123, 4, 'Hoàn thiện món nhồi: Lấy ớt ra, kiểm tra thịt đã chín bằng cách dùng tăm xiên nhẹ. Dọn ớt ra đĩa, cắt đôi hoặc để nguyên quả, dùng nóng với cơm trắng để thưởng thức vị ngọt của ớt chuông và thơm béo của thịt.'),
-- Canh ớt chuông nấu tôm
(124, 1, 'Chuẩn bị nguyên liệu: Rửa sạch ớt chuông, bỏ hạt, cắt miếng vuông 2cm. Tôm tươi bóc vỏ, rút chỉ đen, rửa sạch với nước muối loãng để khử tanh. Hành lá rửa sạch, thái nhỏ, giữ riêng phần đầu hành để phi thơm.'),
(124, 2, 'Xào tôm: Đun nóng 1 muỗng canh dầu ăn trong nồi, cho đầu hành lá vào phi thơm 10 giây, thêm tôm vào xào trên lửa vừa 1-2 phút đến khi tôm chuyển màu hồng. Vớt tôm ra bát, để riêng, tránh xào quá lâu khiến tôm dai.'),
(124, 3, 'Nấu canh: Đổ 1 lít nước lọc vào nồi, đun sôi. Cho ớt chuông và tôm vào, nấu trên lửa vừa 5 phút để ớt mềm và tôm tiết vị ngọt. Nêm 1 muỗng canh nước mắm, khuấy nhẹ, nếm thử để điều chỉnh vị thanh nhẹ.'),
(124, 4, 'Hoàn thiện món canh: Rắc hành lá thái nhỏ vào nồi, đun thêm 30 giây để hành chín sơ. Tắt bếp, múc canh ra bát, dùng nóng với cơm trắng để thưởng thức vị ngọt giòn của ớt chuông và tươi ngon của tôm.');

-- --------------------------------------
-- 32. Ớt hiểm (class_index: 31)
-- --------------------------------------

-- Chèn vào bảng vegetables
INSERT INTO vegetables (class_index, vietnamese_name, scientific_name, description, nutritional_info)
VALUES (
    31, 
    'Ớt hiểm', 
    'Capsicum frutescens', 
    'Ớt hiểm là một loại ớt cay nhỏ thuộc họ Cà (Solanaceae), phổ biến trong ẩm thực Việt Nam. Quả nhỏ, màu xanh hoặc đỏ, vị cay nồng. Ớt hiểm được dùng làm gia vị, nước chấm, hoặc trang trí trong các món xào, canh, gỏi, là nguyên liệu quan trọng nhờ vị cay đặc trưng và khả năng kích thích vị giác.',
    'Ớt hiểm giàu vitamin C, vitamin A, và capsaicin. Ớt hỗ trợ tiêu hóa, tăng cường miễn dịch, và có đặc tính kháng viêm nhờ capsaicin. Ớt cũng chứa chất chống oxy hóa, giúp giảm viêm và bảo vệ tế bào. Với lượng calo thấp, ớt hiểm là lựa chọn tuyệt vời để tăng hương vị món ăn.'
);

-- Chèn vào bảng vegetable_nutritional_points
INSERT INTO vegetable_nutritional_points (vegetable_id, point_text, display_order)
VALUES 
(32, 'Vitamin C (144% DV trong 100g): Tăng cường miễn dịch, hỗ trợ sản xuất collagen.', 1),
(32, 'Vitamin A (20% DV trong 100g): Hỗ trợ thị lực và sức khỏe da.', 2),
(32, 'Capsaicin: Tăng cường trao đổi chất, hỗ trợ giảm cân, và giảm đau.', 3),
(32, 'Chất chống oxy hóa: Giảm viêm, bảo vệ tế bào khỏi tổn thương.', 4),
(32, 'Kali (322mg trong 100g): Cân bằng huyết áp, hỗ trợ chức năng cơ bắp.', 5),
(32, 'Ít calo (40 kcal trong 100g): Tăng hương vị món ăn mà không tăng calo.', 6);

-- Chèn vào bảng vegetable_select_points
INSERT INTO vegetable_select_points (vegetable_id, point_text, display_order)
VALUES 
(32, 'Quả bóng, không nhăn: Chọn ớt hiểm có vỏ mịn, bóng, không nhăn hoặc mềm.', 1),
(32, 'Màu sắc tươi: Ớt xanh hoặc đỏ có màu đậm, không xỉn.', 2),
(32, 'Quả cứng, chắc: Ớt tươi có độ cứng, không mềm.', 3),
(32, 'Cuống xanh, tươi: Chọn ớt có cuống xanh, không khô héo.', 4),
(32, 'Tránh quả dập: Kiểm tra không có vết thâm hoặc hư hỏng.', 5);

-- Chèn vào bảng vegetable_preserve_points
INSERT INTO vegetable_preserve_points (vegetable_id, point_text, display_order)
VALUES 
(32, 'Bọc kín trong ngăn mát: Đặt ớt hiểm trong túi nhựa, bảo quản ở 4-7°C, giữ tươi 2-3 tuần.', 1),
(32, 'Giữ khô trước khi bảo quản: Không rửa ớt trước khi cất, tránh ẩm mốc.', 2),
(32, 'Đông lạnh để bảo quản lâu: Để nguyên quả hoặc băm nhỏ, đông lạnh ở -18°C, dùng trong 6 tháng.', 3),
(32, 'Kiểm tra định kỳ: Loại bỏ quả mềm hoặc thâm để tránh lây lan hư hỏng.', 4),
(32, 'Tránh để gần trái cây tiết ethylene: Táo, chuối làm ớt hiểm nhanh hỏng.', 5);

-- Chèn vào bảng recipes
INSERT INTO recipes (name, description, prep_time, cook_time, servings)
VALUES 
('Nước mắm ớt hiểm', 'Nước chấm cay nồng, phổ biến trong ẩm thực Việt Nam, với ớt hiểm làm điểm nhấn, dùng kèm nhiều món.', '5 phút', '0 phút', '4 người'),
('Gỏi gà ớt hiểm', 'Món gỏi tươi mát, với ớt hiểm cay nồng trộn thịt gà, là món khai vị hoặc ăn kèm.', '15 phút', '10 phút', '4 người'),
('Thịt heo xào ớt hiểm', 'Món xào đậm đà, với ớt hiểm cay kết hợp thịt heo, là món chính trong bữa cơm.', '10 phút', '10 phút', '4 người'),
('Canh cá nấu ớt hiểm', 'Món canh cay nhẹ, với ớt hiểm tăng hương vị, là món phụ hấp dẫn.', '10 phút', '15 phút', '4 người');

-- Chèn vào bảng recipe_vegetables
INSERT INTO recipe_vegetables (recipe_id, vegetable_id)
VALUES 
(125, 32),
(126, 32),
(127, 32),
(128, 32);

-- Chèn vào bảng recipe_items
INSERT INTO recipe_items (recipe_id, item_name, quantity, notes, order_index)
VALUES 
-- Nước mắm ớt hiểm
(125, 'Ớt hiểm', '20g', 'Băm nhỏ hoặc giã nhuyễn', 1),
(125, 'Nước mắm', '3 muỗng canh', 'Chọn loại ngon', 2),
(125, 'Đường', '1 muỗng canh', 'Tạo vị ngọt', 3),
(125, 'Nước cốt chanh', '1 muỗng canh', 'Tạo vị chua', 4),
(125, 'Tỏi', '2 tép (10g)', 'Băm nhỏ', 5),
-- Gỏi gà ớt hiểm
(126, 'Ớt hiểm', '10g', 'Thái lát mỏng', 1),
(126, 'Thịt gà', '200g', 'Luộc chín, xé sợi', 2),
(126, 'Nước mắm', '2 muỗng canh', 'Chọn loại ngon', 3),
(126, 'Đường', '1 muỗng canh', 'Tạo vị ngọt', 4),
(126, 'Nước cốt chanh', '1 muỗng canh', 'Tạo vị chua', 5),
(126, 'Tỏi', '2 tép (10g)', 'Băm nhỏ', 6),
-- Thịt heo xào ớt hiểm
(127, 'Ớt hiểm', '15g', 'Thái lát', 1),
(127, 'Thịt heo', '200g', 'Thái lát mỏng, ướp muối, tiêu', 2),
(127, 'Tỏi', '3 tép (12g)', 'Băm nhỏ', 3),
(127, 'Dầu ăn', '2 muỗng canh', 'Dùng để xào', 4),
(127, 'Nước mắm', '1 muỗng canh', 'Tăng hương vị', 5),
(127, 'Hành lá', '1 nhánh (5g)', 'Thái nhỏ', 6),
-- Canh cá nấu ớt hiểm
(128, 'Ớt hiểm', '10g', 'Thái lát', 1),
(128, 'Cá lóc', '300g', 'Làm sạch, cắt khúc', 2),
(128, 'Nước mắm', '1 muỗng canh', 'Chọn loại ngon', 3),
(128, 'Hành lá', '2 nhánh (10g)', 'Thái nhỏ', 4),
(128, 'Nước', '1 lít', 'Nước lọc', 5);

-- Chèn vào bảng recipe_steps
INSERT INTO recipe_steps (recipe_id, step_number, instruction_text)
VALUES 
-- Nước mắm ớt hiểm
(125, 1, 'Chuẩn bị nguyên liệu: Rửa sạch ớt hiểm, bỏ cuống, băm nhỏ hoặc giã nhuyễn tùy sở thích. Tỏi bóc vỏ, băm nhuyễn. Chọn ớt hiểm đỏ để nước chấm có màu sắc đẹp, hoặc xanh nếu thích vị cay tươi.'),
(125, 2, 'Pha nước mắm: Trong bát nhỏ, trộn 3 muỗng canh nước mắm ngon, 1 muỗng canh đường, 1 muỗng canh nước cốt chanh, tỏi băm, và ớt hiểm. Khuấy đều cho đường tan hoàn toàn. Có thể thêm 1-2 muỗng canh nước lọc nếu muốn vị dịu hơn.'),
(125, 3, 'Kiểm tra vị: Nếm thử nước chấm, điều chỉnh vị chua, ngọt, cay theo khẩu vị. Nếu quá cay, thêm đường hoặc nước lọc. Nếu thiếu vị, thêm chút nước mắm hoặc ớt. Đảm bảo nước chấm có vị hài hòa, cay nồng vừa miệng.'),
(125, 4, 'Hoàn thiện nước chấm: Đổ nước mắm vào chén nhỏ, trang trí thêm vài lát ớt tươi nếu muốn. Dùng kèm các món luộc (thịt heo, rau củ), chiên, hoặc nướng để thưởng thức vị cay nồng đặc trưng của ớt hiểm.'),
-- Gỏi gà ớt hiểm
(126, 1, 'Chuẩn bị nguyên liệu: Luộc thịt gà trong nước sôi có chút muối khoảng 10 phút, vớt ra, ngâm nước đá 1 phút để gà giòn, xé sợi nhỏ. Rửa sạch ớt hiểm, thái lát mỏng, giữ vài quả nguyên để trang trí. Tỏi băm nhuyễn để pha nước mắm.'),
(126, 2, 'Pha nước mắm trộn gỏi: Trộn 2 muỗng canh nước mắm, 1 muỗng canh đường, 1 muỗng canh nước cốt chanh, tỏi băm, và ớt hiểm thái lát trong bát nhỏ. Khuấy đều cho đường tan, nếm thử để đảm bảo vị chua ngọt cay cân bằng.'),
(126, 3, 'Trộn gỏi: Cho thịt gà xé sợi vào tô lớn, rưới nước mắm lên trên, trộn đều bằng tay hoặc đũa để gà thấm gia vị. Để gỏi nghỉ 5 phút trong tủ lạnh để vị ngấm sâu và giữ độ giòn của gà. Trộn nhẹ để tránh làm nát gà.'),
(126, 4, 'Hoàn thiện món gỏi: Lấy gỏi ra, kiểm tra lại vị, điều chỉnh nếu cần. Dọn gỏi ra đĩa, trang trí thêm vài lát ớt hiểm hoặc rau mùi. Dùng làm món khai vị hoặc ăn kèm cơm trắng, bánh tráng để thưởng thức vị cay nồng và tươi ngon.'),
-- Thịt heo xào ớt hiểm
(127, 1, 'Chuẩn bị nguyên liệu: Thịt heo thái lát mỏng, ướp với 1/4 muỗng cà phê muối, 1/4 muỗng cà phê tiêu, và 1 muỗng cà phê dầu ăn trong 10 phút. Rửa sạch ớt hiểm, thái lát, giữ vài quả nguyên để tăng màu sắc. Tỏi băm nhuyễn, hành lá thái nhỏ.'),
(127, 2, 'Xào thịt heo: Đun nóng 1 muỗng canh dầu ăn trong chảo, phi tỏi 20 giây đến khi thơm, cho thịt heo vào xào trên lửa lớn 2-3 phút đến khi thịt chín sơ, đảo đều để thịt không bị dai. Vớt thịt ra bát, để riêng.'),
(127, 3, 'Xào ớt hiểm: Thêm 1 muỗng canh dầu ăn vào chảo, cho ớt hiểm vào xào 30 giây để tiết vị cay, sau đó cho thịt heo trở lại. Nêm 1 muỗng canh nước mắm, đảo đều 1 phút để thịt thấm vị cay và mặn.'),
(127, 4, 'Hoàn thiện món xào: Rắc hành lá thái nhỏ, đảo nhanh 10 giây để hành chín sơ. Tắt bếp, dọn ra đĩa, dùng nóng với cơm trắng để thưởng thức vị cay nồng của ớt hiểm và thịt heo mềm thơm.'),
-- Canh cá nấu ớt hiểm
(128, 1, 'Chuẩn bị nguyên liệu: Cá lóc làm sạch, cắt khúc 3cm, ướp với 1/4 muỗng cà phê muối trong 10 phút. Rửa sạch ớt hiểm, thái lát, giữ vài quả nguyên để trang trí. Hành lá rửa sạch, thái nhỏ, giữ riêng phần đầu hành để phi thơm.'),
(128, 2, 'Nấu canh: Đun sôi 1 lít nước lọc, cho cá lóc vào, nấu trên lửa vừa 5 phút đến khi cá chín sơ. Vớt bọt thường xuyên để nước canh trong. Có thể thêm 1 lát gừng để khử mùi tanh của cá nếu muốn.'),
(128, 3, 'Nêm gia vị: Thêm ớt hiểm và 1 muỗng canh nước mắm vào nồi, nấu thêm 3 phút để ớt tiết vị cay và cá thấm gia vị. Nếm thử, điều chỉnh vị bằng muối hoặc nước mắm nếu cần, giữ vị canh thanh nhẹ và cay vừa.'),
(128, 4, 'Hoàn thiện món canh: Rắc hành lá thái nhỏ vào nồi, đun thêm 30 giây để hành chín sơ. Tắt bếp, múc canh ra bát, trang trí thêm vài lát ớt hiểm. Dùng nóng với cơm trắng để thưởng thức vị ngọt của cá và cay nhẹ của ớt hiểm.');

-- --------------------------------------
-- 33. Rau cải xanh (class_index: 32)
-- --------------------------------------

-- Chèn vào bảng vegetables
INSERT INTO vegetables (class_index, vietnamese_name, scientific_name, description, nutritional_info)
VALUES (
    32, 
    'Rau cải xanh', 
    'Brassica juncea', 
    'Rau cải xanh là một loại rau lá thuộc họ Cải (Brassicaceae), phổ biến trong ẩm thực Việt Nam. Lá màu xanh đậm, vị hơi cay, giòn. Rau cải xanh được dùng trong xào, canh, hoặc luộc, là nguyên liệu bổ dưỡng, giàu vitamin và khoáng chất.',
    'Rau cải xanh giàu vitamin A, C, K và chất xơ. Rau hỗ trợ thị lực, tăng cường miễn dịch, và cải thiện tiêu hóa. Rau cải xanh cũng chứa glucosinolate, có đặc tính chống ung thư. Với lượng calo thấp, rau cải xanh là lựa chọn lý tưởng cho chế độ ăn lành mạnh.'
);

-- Chèn vào bảng vegetable_nutritional_points
INSERT INTO vegetable_nutritional_points (vegetable_id, point_text, display_order)
VALUES 
(33, 'Vitamin A (93% DV trong 100g): Hỗ trợ thị lực và miễn dịch.', 1),
(33, 'Vitamin C (70% DV trong 100g): Tăng cường miễn dịch, bảo vệ tế bào.', 2),
(33, 'Vitamin K (257% DV trong 100g): Tăng cường sức khỏe xương, đông máu.', 3),
(33, 'Chất xơ (2.7g trong 100g): Cải thiện tiêu hóa, ngăn ngừa táo bón.', 4),
(33, 'Glucosinolate: Hỗ trợ chống ung thư, bảo vệ tế bào.', 5),
(33, 'Ít calo (27 kcal trong 100g): Phù hợp cho chế độ ăn kiêng.', 6);

-- Chèn vào bảng vegetable_select_points
INSERT INTO vegetable_select_points (vegetable_id, point_text, display_order)
VALUES 
(33, 'Lá xanh đậm, tươi: Chọn rau cải xanh có lá không vàng, không héo.', 1),
(33, 'Thân giòn, không xơ: Rau tươi có thân chắc, dễ bẻ.', 2),
(33, 'Không có đốm nâu: Kiểm tra lá không có vết thâm hoặc hư hỏng.', 3),
(33, 'Mùi thơm nhẹ: Rau cải xanh tươi có mùi dịu, tránh mùi chua.', 4),
(33, 'Tránh rau dập: Chọn bó rau nguyên vẹn, không bị dập nát.', 5);

-- Chèn vào bảng vegetable_preserve_points
INSERT INTO vegetable_preserve_points (vegetable_id, point_text, display_order)
VALUES 
(33, 'Bọc kín trong ngăn mát: Bọc rau cải xanh trong khăn giấy ẩm, bảo quản ở 0-4°C, giữ tươi 5-7 ngày.', 1),
(33, 'Giữ khô trước khi bảo quản: Không rửa rau trước khi cất, tránh ẩm mốc.', 2),
(33, 'Đông lạnh để bảo quản lâu: Chần qua nước sôi 1 phút, đông lạnh ở -18°C, dùng trong 3 tháng.', 3),
(33, 'Kiểm tra định kỳ: Loại bỏ lá úa hoặc hỏng để tránh lây lan.', 4),
(33, 'Tránh để gần trái cây tiết ethylene: Táo, chuối làm rau cải xanh nhanh héo.', 5);

-- Chèn vào bảng recipes
INSERT INTO recipes (name, description, prep_time, cook_time, servings)
VALUES 
('Rau cải xanh xào tỏi', 'Món xào đơn giản, với rau cải xanh giòn và tỏi thơm, là món phụ dễ làm.', '10 phút', '5 phút', '4 người'),
('Canh rau cải xanh nấu tôm', 'Món canh thanh nhẹ, với rau cải xanh và tôm tươi, là món phụ bổ dưỡng.', '10 phút', '10 phút', '4 người'),
('Rau cải xanh luộc', 'Món luộc đơn giản, với rau cải xanh giòn, dùng kèm nước chấm, là món phụ lành mạnh.', '5 phút', '5 phút', '4 người'),
('Rau cải xanh xào nấm', 'Món xào thơm ngon, với rau cải xanh và nấm, là món phụ hấp dẫn.', '10 phút', '10 phút', '4 người');

-- Chèn vào bảng recipe_vegetables
INSERT INTO recipe_vegetables (recipe_id, vegetable_id)
VALUES 
(129, 33),
(130, 33),
(131, 33),
(132, 33);

-- Chèn vào bảng recipe_items
INSERT INTO recipe_items (recipe_id, item_name, quantity, notes, order_index)
VALUES 
-- Rau cải xanh xào tỏi
(129, 'Rau cải xanh', '300g', 'Rửa sạch, cắt khúc 5cm', 1),
(129, 'Tỏi', '3 tép (12g)', 'Băm nhỏ', 2),
(129, 'Dầu ăn', '2 muỗng canh', 'Dùng để xào', 3),
(129, 'Nước mắm', '1 muỗng canh', 'Tăng hương vị', 4),
(129, 'Muối', '1/4 muỗng cà phê', 'Điều chỉnh theo khẩu vị', 5),
-- Canh rau cải xanh nấu tôm
(130, 'Rau cải xanh', '200g', 'Rửa sạch, cắt khúc 5cm', 1),
(130, 'Tôm tươi', '200g', 'Bóc vỏ, rút chỉ đen', 2),
(130, 'Nước mắm', '1 muỗng canh', 'Chọn loại ngon', 3),
(130, 'Hành lá', '2 nhánh (10g)', 'Thái nhỏ', 4),
(130, 'Nước', '1 lít', 'Nước lọc', 5),
-- Rau cải xanh luộc
(131, 'Rau cải xanh', '300g', 'Rửa sạch, để nguyên cây hoặc cắt đôi', 1),
(131, 'Nước', '2 lít', 'Nước lọc để luộc', 2),
(131, 'Muối', '1/2 muỗng cà phê', 'Cho vào nước luộc', 3),
(131, 'Nước mắm', '2 muỗng canh', 'Dùng làm nước chấm', 4),
-- Rau cải xanh xào nấm
(132, 'Rau cải xanh', '300g', 'Rửa sạch, cắt khúc 5cm', 1),
(132, 'Nấm (nấm rơm hoặc nấm mỡ)', '150g', 'Rửa sạch, thái lát', 2),
(132, 'Tỏi', '2 tép (10g)', 'Băm nhỏ', 3),
(132, 'Dầu ăn', '2 muỗng canh', 'Dùng để xào', 4),
(132, 'Nước mắm', '1 muỗng canh', 'Tăng hương vị', 5),
(132, 'Muối', '1/4 muỗng cà phê', 'Điều chỉnh theo khẩu vị', 6);

-- Chèn vào bảng recipe_steps
INSERT INTO recipe_steps (recipe_id, step_number, instruction_text)
VALUES 
-- Rau cải xanh xào tỏi
(129, 1, 'Chuẩn bị nguyên liệu: Rửa sạch rau cải xanh, ngâm nước muối loãng 5 phút, để ráo, cắt khúc 5cm. Tỏi bóc vỏ, băm nhuyễn để phi thơm. Chọn rau cải xanh non để món xào giòn.'),
(129, 2, 'Phi tỏi: Đun nóng 2 muỗng canh dầu ăn trong chảo, cho tỏi băm vào phi trên lửa vừa 20-30 giây đến khi tỏi vàng nhẹ và dậy mùi thơm. Tránh để tỏi cháy vì sẽ tạo vị đắng.'),
(129, 3, 'Xào rau: Cho rau cải xanh vào chảo, tăng lửa lớn, xào nhanh 2-3 phút để rau mềm nhưng vẫn giữ độ giòn. Nêm 1 muỗng canh nước mắm và 1/4 muỗng cà phê muối, đảo đều.'),
(129, 4, 'Hoàn thiện món xào: Kiểm tra độ chín của rau, đảm bảo vẫn giòn và không quá mềm. Tắt bếp, dọn ra đĩa, dùng nóng với cơm trắng để thưởng thức vị giòn cay của rau cải xanh và thơm nồng của tỏi.'),
-- Canh rau cải xanh nấu tôm
(130, 1, 'Chuẩn bị nguyên liệu: Rửa sạch rau cải xanh, ngâm nước muối loãng 5 phút, để ráo, cắt khúc 5cm. Tôm tươi bóc vỏ, rút chỉ đen, rửa sạch với nước muối loãng để khử tanh. Hành lá rửa sạch, thái nhỏ.'),
(130, 2, 'Xào tôm: Đun nóng 1 muỗng canh dầu ăn trong nồi, cho tôm vào xào trên lửa vừa 1-2 phút đến khi tôm chuyển màu hồng. Vớt tôm ra bát để giữ độ giòn.'),
(130, 3, 'Nấu canh: Đổ 1 lít nước lọc vào nồi, đun sôi. Cho rau cải xanh và tôm vào, nấu trên lửa vừa 3-5 phút để rau mềm và tôm tiết vị ngọt. Nêm 1 muỗng canh nước mắm, khuấy nhẹ, nếm thử để điều chỉnh vị.'),
(130, 4, 'Hoàn thiện món canh: Rắc hành lá thái nhỏ vào nồi, đun thêm 30 giây để hành chín sơ. Tắt bếp, múc canh ra bát, dùng nóng với cơm trắng để thưởng thức vị ngọt thanh của rau cải xanh và tôm.'),
-- Rau cải xanh luộc
(131, 1, 'Chuẩn bị nguyên liệu: Rửa sạch rau cải xanh, ngâm nước muối loãng 5 phút, để ráo, giữ nguyên cây hoặc cắt đôi. Chuẩn bị nồi nước luộc và bát nước mắm nguyên chất để chấm.'),
(131, 2, 'Luộc rau: Đun sôi 2 lít nước, thêm 1/2 muỗng cà phê muối để rau giữ màu xanh. Cho rau cải xanh vào luộc trên lửa vừa 2-3 phút đến khi rau mềm nhưng vẫn giòn. Dùng đũa kiểm tra độ chín.'),
(131, 3, 'Vớt rau: Vớt rau ra, ngâm ngay vào nước đá 1 phút để giữ độ giòn và màu xanh đẹp. Để ráo nước, xếp rau ra đĩa, trình bày đẹp mắt.'),
(131, 4, 'Hoàn thiện món luộc: Pha nước chấm với 2 muỗng canh nước mắm, thêm tỏi băm, ớt, hoặc chanh tùy sở thích. Dọn rau luộc ra bàn, dùng nóng với nước chấm để thưởng thức vị giòn ngọt tự nhiên.'),
-- Rau cải xanh xào nấm
(132, 1, 'Chuẩn bị nguyên liệu: Rửa sạch rau cải xanh, ngâm nước muối loãng 5 phút, để ráo, cắt khúc 5cm. Nấm rửa sạch, thái lát mỏng. Tỏi bóc vỏ, băm nhuyễn để phi thơm.'),
(132, 2, 'Xào nấm: Đun nóng 1 muỗng canh dầu ăn trong chảo, phi thơm tỏi băm 20 giây, cho nấm vào xào trên lửa vừa 2-3 phút đến khi nấm mềm và tiết nước. Vớt nấm ra bát.'),
(132, 3, 'Xào rau: Thêm 1 muỗng canh dầu ăn vào chảo, cho rau cải xanh vào xào trên lửa lớn 2-3 phút để rau mềm nhưng vẫn giòn. Cho nấm trở lại chảo, nêm 1 muỗng canh nước mắm và 1/4 muỗng cà phê muối, đảo đều.'),
(132, 4, 'Hoàn thiện món xào: Kiểm tra độ chín của rau và nấm, đảm bảo rau vẫn giòn và nấm mềm. Tắt bếp, dọn ra đĩa, dùng nóng với cơm trắng để thưởng thức vị giòn cay của rau cải xanh và thơm ngọt của nấm.');

-- --------------------------------------
-- 34. Rau dền (class_index: 33)
-- --------------------------------------

-- Chèn vào bảng vegetables
INSERT INTO vegetables (class_index, vietnamese_name, scientific_name, description, nutritional_info)
VALUES (
    33, 
    'Rau dền', 
    'Amaranthus spp.', 
    'Rau dền là một loại rau lá phổ biến trong ẩm thực Việt Nam, thuộc họ Dền (Amaranthaceae). Rau có lá màu xanh hoặc đỏ, thân mềm, vị ngọt nhẹ, dễ ăn. Rau dền được dùng trong các món canh, xào, hoặc luộc, là nguyên liệu bổ dưỡng, đặc biệt trong bữa ăn gia đình.',
    'Rau dền giàu vitamin A, vitamin C, và sắt. Rau hỗ trợ thị lực, tăng cường miễn dịch, và ngăn ngừa thiếu máu. Rau dền cũng chứa chất xơ và canxi, giúp cải thiện tiêu hóa và duy trì sức khỏe xương. Với lượng calo thấp, rau dền là lựa chọn tuyệt vời cho chế độ ăn lành mạnh.'
);

-- Chèn vào bảng vegetable_nutritional_points
INSERT INTO vegetable_nutritional_points (vegetable_id, point_text, display_order)
VALUES 
(34, 'Vitamin A (60% DV trong 100g): Hỗ trợ thị lực và miễn dịch.', 1),
(34, 'Vitamin C (50% DV trong 100g): Tăng cường miễn dịch, bảo vệ tế bào.', 2),
(34, 'Sắt (2.7mg trong 100g): Ngăn ngừa thiếu máu, hỗ trợ tạo hồng cầu.', 3),
(34, 'Canxi (159mg trong 100g): Duy trì sức khỏe xương và răng.', 4),
(34, 'Chất xơ (2g trong 100g): Cải thiện tiêu hóa, ngăn ngừa táo bón.', 5),
(34, 'Ít calo (23 kcal trong 100g): Phù hợp cho chế độ ăn kiêng.', 6);

-- Chèn vào bảng vegetable_select_points
INSERT INTO vegetable_select_points (vegetable_id, point_text, display_order)
VALUES 
(34, 'Lá xanh tươi, không úa: Chọn rau dền có lá xanh đậm hoặc đỏ tươi, không vàng.', 1),
(34, 'Thân mềm, giòn: Rau tươi có thân mềm, không xơ hoặc cứng.', 2),
(34, 'Không có đốm nâu: Kiểm tra lá không có vết thâm hoặc hư hỏng.', 3),
(34, 'Mùi thơm nhẹ: Rau dền tươi có mùi đặc trưng, tránh mùi chua.', 4),
(34, 'Tránh rau dập: Chọn bó rau nguyên vẹn, không bị dập nát.', 5);

-- Chèn vào bảng vegetable_preserve_points
INSERT INTO vegetable_preserve_points (vegetable_id, point_text, display_order)
VALUES 
(34, 'Bọc kín trong ngăn mát: Bọc rau dền trong khăn giấy ẩm, bảo quản ở 0-4°C, giữ tươi 5-7 ngày.', 1),
(34, 'Giữ khô trước khi bảo quản: Không rửa rau trước khi cất, tránh ẩm mốc.', 2),
(34, 'Đông lạnh để bảo quản lâu: Chần sơ 1 phút, để ráo, đông lạnh ở -18°C, dùng trong 3 tháng.', 3),
(34, 'Kiểm tra định kỳ: Loại bỏ lá úa hoặc hỏng để tránh lây lan.', 4),
(34, 'Tránh để gần trái cây tiết ethylene: Táo, chuối làm rau dền nhanh héo.', 5);

-- Chèn vào bảng recipes
INSERT INTO recipes (name, description, prep_time, cook_time, servings)
VALUES 
('Canh rau dền nấu tôm', 'Món canh thanh nhẹ, với rau dền ngọt và tôm tươi, là món phụ bổ dưỡng.', '10 phút', '10 phút', '4 người'),
('Rau dền xào tỏi', 'Món xào đơn giản, với rau dền giòn và tỏi thơm, là món phụ dễ làm.', '10 phút', '10 phút', '4 người'),
('Rau dền luộc', 'Món luộc đơn giản, với rau dền giòn ngọt, dùng kèm nước chấm, là món phụ lành mạnh.', '5 phút', '5 phút', '4 người'),
('Nộm rau dền', 'Món nộm tươi mát, với rau dền trộn nước mắm, là món khai vị hoặc ăn kèm.', '15 phút', '5 phút', '4 người');

-- Chèn vào bảng recipe_vegetables
INSERT INTO recipe_vegetables (recipe_id, vegetable_id)
VALUES 
(133, 34),
(134, 34),
(135, 34),
(136, 34);

-- Chèn vào bảng recipe_items
INSERT INTO recipe_items (recipe_id, item_name, quantity, notes, order_index)
VALUES 
-- Canh rau dền nấu tôm
(133, 'Rau dền', '200g', 'Rửa sạch, cắt khúc 5cm', 1),
(133, 'Tôm tươi', '200g', 'Bóc vỏ, rút chỉ đen', 2),
(133, 'Nước mắm', '1 muỗng canh', 'Chọn loại ngon', 3),
(133, 'Hành lá', '2 nhánh (10g)', 'Thái nhỏ', 4),
(133, 'Nước', '1 lít', 'Nước lọc', 5),
-- Rau dền xào tỏi
(134, 'Rau dền', '300g', 'Rửa sạch, cắt khúc 5cm', 1),
(134, 'Tỏi', '3 tép (12g)', 'Băm nhỏ', 2),
(134, 'Dầu ăn', '2 muỗng canh', 'Dùng để xào', 3),
(134, 'Nước mắm', '1 muỗng canh', 'Tăng hương vị', 4),
(134, 'Muối', '1/4 muỗng cà phê', 'Điều chỉnh theo khẩu vị', 5),
-- Rau dền luộc
(135, 'Rau dền', '300g', 'Rửa sạch, giữ nguyên lá', 1),
(135, 'Nước', '2 lít', 'Nước lọc để luộc', 2),
(135, 'Muối', '1/2 muỗng cà phê', 'Cho vào nước luộc', 3),
(135, 'Nước mắm', '2 muỗng canh', 'Dùng làm nước chấm', 4),
-- Nộm rau dền
(136, 'Rau dền', '200g', 'Rửa sạch, chần sơ', 1),
(136, 'Nước mắm', '2 muỗng canh', 'Chọn loại ngon', 2),
(136, 'Đường', '1 muỗng canh', 'Tạo vị ngọt', 3),
(136, 'Nước cốt chanh', '1 muỗng canh', 'Tạo vị chua', 4),
(136, 'Tỏi', '2 tép (10g)', 'Băm nhỏ', 5),
(136, 'Ớt', '1 quả (5g)', 'Thái lát', 6);

-- Chèn vào bảng recipe_steps
INSERT INTO recipe_steps (recipe_id, step_number, instruction_text)
VALUES 
-- Canh rau dền nấu tôm
(133, 1, 'Chuẩn bị nguyên liệu: Rửa sạch rau dền, ngâm nước muối loãng 5 phút để khử khuẩn, để ráo, cắt khúc 5cm. Tôm tươi bóc vỏ, rút chỉ đen, rửa sạch với nước muối loãng để khử tanh. Hành lá rửa sạch, thái nhỏ, giữ riêng phần đầu hành để phi thơm.'),
(133, 2, 'Xào tôm: Đun nóng 1 muỗng canh dầu ăn trong nồi, cho đầu hành lá vào phi thơm 10 giây, thêm tôm vào xào trên lửa vừa 1-2 phút đến khi tôm chuyển màu hồng và săn lại. Vớt tôm ra bát để giữ độ giòn, tránh xào quá lâu khiến tôm dai.'),
(133, 3, 'Nấu canh: Đổ 1 lít nước lọc vào nồi, đun sôi. Cho rau dền và tôm vào, nấu trên lửa vừa 4-5 phút để rau dền mềm và tôm tiết vị ngọt. Nêm 1 muỗng canh nước mắm, khuấy nhẹ, nếm thử để điều chỉnh vị thanh nhẹ, không quá mặn.'),
(133, 4, 'Hoàn thiện món canh: Rắc hành lá thái nhỏ vào nồi, đun thêm 30 giây để hành chín sơ. Tắt bếp, múc canh ra bát, dùng nóng với cơm trắng để thưởng thức vị ngọt thanh của rau dền và tôm tươi.'),
-- Rau dền xào tỏi
(134, 1, 'Chuẩn bị nguyên liệu: Rửa sạch rau dền, ngâm nước muối loãng 5 phút, để ráo, cắt khúc 5cm để dễ xào. Tỏi bóc vỏ, băm nhuyễn để phi thơm. Chọn rau dền tươi, thân mềm để món xào giòn và ngọt.'),
(134, 2, 'Phi tỏi: Đun nóng 2 muỗng canh dầu ăn trong chảo, cho tỏi băm vào phi trên lửa vừa 20-30 giây đến khi tỏi vàng nhẹ và dậy mùi thơm. Tránh để tỏi cháy vì sẽ tạo vị đắng, làm mất hương vị món xào.'),
(134, 3, 'Xào rau dền: Cho rau dền vào chảo, tăng lửa lớn, xào nhanh 3-4 phút để rau mềm nhưng vẫn giữ độ giòn. Nêm 1 muỗng canh nước mắm và 1/4 muỗng cà phê muối, đảo đều. Có thể thêm 1 muỗng canh nước nếu chảo khô, nhưng không quá nhiều để rau không nhũn.'),
(134, 4, 'Hoàn thiện món xào: Kiểm tra độ chín của rau, đảm bảo rau dền vẫn giòn và không quá mềm. Tắt bếp, dọn ra đĩa, dùng nóng với cơm trắng để thưởng thức vị giòn ngọt của rau dền và thơm nồng của tỏi.'),
-- Rau dền luộc
(135, 1, 'Chuẩn bị nguyên liệu: Rửa sạch rau dền, ngâm nước muối loãng 5 phút, để ráo, giữ nguyên lá để giữ độ giòn. Chuẩn bị nồi nước luộc và bát nước mắm nguyên chất để chấm. Chọn rau dền non để luộc sẽ ngọt và ít đắng.'),
(135, 2, 'Luộc rau: Đun sôi 2 lít nước, thêm 1/2 muỗng cà phê muối để rau giữ màu xanh đẹp. Cho rau dền vào luộc trên lửa vừa 2-3 phút đến khi rau mềm nhưng vẫn giòn. Dùng đũa kiểm tra, nếu xuyên qua thân dễ dàng là rau chín.'),
(135, 3, 'Vớt rau: Vớt rau dền ra, ngâm ngay vào nước đá 1 phút để rau giòn và giữ màu xanh hoặc đỏ đẹp. Để ráo nước, xếp rau ra đĩa, giữ nguyên lá để trình bày đẹp mắt.'),
(135, 4, 'Hoàn thiện món luộc: Pha nước chấm với 2 muỗng canh nước mắm, thêm tỏi băm, ớt, hoặc chanh tùy sở thích. Dọn rau luộc ra bàn, dùng nóng với nước chấm để thưởng thức vị giòn ngọt tự nhiên của rau dền.'),
-- Nộm rau dền
(136, 1, 'Chuẩn bị nguyên liệu: Rửa sạch rau dền, ngâm nước muối loãng 5 phút, để ráo. Chần rau dền trong nước sôi 1 phút, vớt ra ngâm nước đá để giữ độ giòn, để ráo, cắt khúc 3cm. Tỏi băm nhuyễn, ớt thái lát mỏng.'),
(136, 2, 'Pha nước mắm trộn: Trộn 2 muỗng canh nước mắm, 1 muỗng canh đường, 1 muỗng canh nước cốt chanh, tỏi băm, và ớt thái lát trong bát nhỏ. Khuấy đều cho đường tan, nếm thử để đảm bảo vị chua ngọt cay cân bằng.'),
(136, 3, 'Trộn nộm: Cho rau dền vào tô lớn, rưới nước mắm lên trên, trộn đều bằng tay hoặc đũa để rau thấm gia vị. Để nộm nghỉ 5 phút trong tủ lạnh để vị ngấm và giữ độ giòn của rau. Trộn nhẹ để tránh làm nát rau.'),
(136, 4, 'Hoàn thiện món nộm: Lấy nộm ra, kiểm tra lại vị, điều chỉnh nếu cần. Dọn nộm ra đĩa, trang trí thêm vài lát ớt hoặc rau mùi. Dùng làm món khai vị hoặc ăn kèm cơm trắng để thưởng thức vị giòn ngọt và chua cay của rau dền.');

-- --------------------------------------
-- 35. Rau nhiếp cá (class_index: 34)
-- --------------------------------------

-- Chèn vào bảng vegetables
INSERT INTO vegetables (class_index, vietnamese_name, scientific_name, description, nutritional_info)
VALUES (
    34, 
    'Rau diếp cá', 
    'Houttuynia cordata', 
    'Rau diếp cá là một loại rau gia vị thuộc họ Diếp cá (Saururaceae), phổ biến trong ẩm thực Việt Nam. Lá hình tim, mùi tanh đặc trưng, vị chua nhẹ. Rau diếp cá được dùng trong gỏi, salad, hoặc ăn kèm lẩu, bún, có tác dụng thanh nhiệt và giải độc.',
    'Rau diếp cá giàu vitamin C, chất chống oxy hóa, và hợp chất kháng khuẩn. Rau hỗ trợ miễn dịch, cải thiện sức khỏe da, và có tác dụng thanh nhiệt. Rau cũng chứa chất xơ, giúp tiêu hóa tốt hơn. Với lượng calo thấp, rau diếp cá là lựa chọn lành mạnh.'
);

-- Chèn vào bảng vegetable_nutritional_points
INSERT INTO vegetable_nutritional_points (vegetable_id, point_text, display_order)
VALUES 
(35, 'Vitamin C (44% DV trong 100g): Tăng cường miễn dịch, bảo vệ tế bào.', 1),
(35, 'Chất chống oxy hóa: Giảm viêm, bảo vệ tế bào khỏi tổn thương.', 2),
(35, 'Chất xơ (2g trong 100g): Cải thiện tiêu hóa, ngăn ngừa táo bón.', 3),
(35, 'Hợp chất kháng khuẩn: Hỗ trợ chống nhiễm khuẩn, thanh nhiệt cơ thể.', 4),
(35, 'Kali (300mg trong 100g): Cân bằng huyết áp, hỗ trợ cơ bắp.', 5),
(35, 'Ít calo (20 kcal trong 100g): Phù hợp cho chế độ ăn kiêng.', 6);

-- Chèn vào bảng vegetable_select_points
INSERT INTO vegetable_select_points (vegetable_id, point_text, display_order)
VALUES 
(35, 'Lá xanh tươi, không úa: Chọn rau diếp cá có lá xanh đậm, không vàng.', 1),
(35, 'Mùi tanh đặc trưng: Rau tươi có mùi mạnh, tránh loại mùi yếu.', 2),
(35, 'Thân mềm, không xơ: Rau tươi có thân mềm, dễ bẻ.', 3),
(35, 'Không có đốm nâu: Kiểm tra lá không có vết thâm hoặc hư hỏng.', 4),
(35, 'Tránh rau dập: Chọn bó rau nguyên vẹn, không bị dập nát.', 5);

-- Chèn vào bảng vegetable_preserve_points
INSERT INTO vegetable_preserve_points (vegetable_id, point_text, display_order)
VALUES 
(35, 'Bọc kín trong ngăn mát: Bọc rau diếp cá trong khăn giấy ẩm, bảo quản ở 0-4°C, giữ tươi 5-7 ngày.', 1),
(35, 'Giữ khô trước khi bảo quản: Không rửa rau trước khi cất, tránh ẩm mốc.', 2),
(35, 'Đông lạnh để bảo quản lâu: Chần sơ 30 giây, để ráo, đông lạnh ở -18°C, dùng trong 2 tháng.', 3),
(35, 'Kiểm tra định kỳ: Loại bỏ lá úa hoặc hỏng để tránh lây lan.', 4),
(35, 'Tránh để gần trái cây tiết ethylene: Táo, chuối làm rau diếp cá nhanh héo.', 5);

-- Chèn vào bảng recipes
INSERT INTO recipes (name, description, prep_time, cook_time, servings)
VALUES 
('Nộm rau diếp cá', 'Món nộm tươi mát, với rau diếp cá trộn nước mắm, là món khai vị hoặc ăn kèm.', '15 phút', '0 phút', '4 người'),
('Rau diếp cá ăn kèm lẩu', 'Rau diếp cá dùng kèm lẩu, tăng hương vị và thanh nhiệt.', '5 phút', '0 phút', '4 người'),
('Sinh tố rau diếp cá', 'Đồ uống thanh mát, với rau diếp cá xay nhuyễn, tốt cho sức khỏe.', '10 phút', '0 phút', '4 người'),
('Rau diếp cá trộn tôm', 'Món trộn thơm ngon, với rau diếp cá và tôm, là món khai vị hấp dẫn.', '15 phút', '10 phút', '4 người');

-- Chèn vào bảng recipe_vegetables
INSERT INTO recipe_vegetables (recipe_id, vegetable_id)
VALUES 
(137, 35),
(138, 35),
(139, 35),
(140, 35);

-- Chèn vào bảng recipe_items
INSERT INTO recipe_items (recipe_id, item_name, quantity, notes, order_index)
VALUES 
-- Nộm rau diếp cá
(137, 'Rau diếp cá', '200g', 'Rửa sạch, để ráo', 1),
(137, 'Nước mắm', '2 muỗng canh', 'Chọn loại ngon', 2),
(137, 'Đường', '1 muỗng canh', 'Tạo vị ngọt', 3),
(137, 'Nước cốt chanh', '1 muỗng canh', 'Tạo vị chua', 4),
(137, 'Tỏi', '2 tép (10g)', 'Băm nhỏ', 5),
(137, 'Ớt', '1 quả (5g)', 'Thái lát', 6),
-- Rau diếp cá ăn kèm lẩu
(138, 'Rau diếp cá', '200g', 'Rửa sạch, để ráo', 1),
(138, 'Nước mắm', '2 muỗng canh', 'Dùng làm nước chấm', 2),
(138, 'Tỏi', '2 tép (10g)', 'Băm nhỏ, cho vào nước chấm', 3),
-- Sinh tố rau diếp cá
(139, 'Rau diếp cá', '100g', 'Rửa sạch, để ráo', 1),
(139, 'Sữa đặc', '2 muỗng canh', 'Tạo vị ngọt', 2),
(139, 'Đường', '1 muỗng canh', 'Điều chỉnh theo khẩu vị', 3),
(139, 'Đá viên', '200g', 'Dùng để xay', 4),
(139, 'Nước lọc', '200ml', 'Dùng để xay', 5),
-- Rau diếp cá trộn tôm
(140, 'Rau diếp cá', '150g', 'Rửa sạch, để ráo', 1),
(140, 'Tôm tươi', '200g', 'Luộc chín, bóc vỏ', 2),
(140, 'Nước mắm', '2 muỗng canh', 'Chọn loại ngon', 3),
(140, 'Đường', '1 muỗng canh', 'Tạo vị ngọt', 4),
(140, 'Nước cốt chanh', '1 muỗng canh', 'Tạo vị chua', 5),
(140, 'Tỏi', '2 tép (10g)', 'Băm nhỏ', 6);

-- Chèn vào bảng recipe_steps
INSERT INTO recipe_steps (recipe_id, step_number, instruction_text)
VALUES 
-- Nộm rau diếp cá
(137, 1, 'Chuẩn bị nguyên liệu: Rửa sạch rau diếp cá dưới vòi nước, ngâm nước muối loãng 5 phút để khử khuẩn và giảm mùi tanh, để ráo hoàn toàn. Tỏi băm nhuyễn, ớt thái lát mỏng để pha nước mắm. Chọn rau diếp cá tươi, lá không quá già để nộm giòn.'),
(137, 2, 'Pha nước mắm trộn: Trộn 2 muỗng canh nước mắm, 1 muỗng canh đường, 1 muỗng canh nước cốt chanh, tỏi băm, và ớt thái lát trong bát nhỏ. Khuấy đều cho đường tan, nếm thử để đảm bảo vị chua ngọt cay cân bằng. Có thể thêm 1 muỗng canh nước lọc nếu mặn.'),
(137, 3, 'Trộn nộm: Cho rau diếp cá vào tô lớn, rưới nước mắm lên trên, trộn đều bằng tay hoặc đũa để rau thấm gia vị. Để nộm nghỉ 5 phút trong tủ lạnh để vị ngấm và giữ độ giòn. Trộn nhẹ tay để tránh làm nát lá rau.'),
(137, 4, 'Hoàn thiện món nộm: Lấy nộm ra, kiểm tra lại vị, điều chỉnh nếu cần. Dọn nộm ra đĩa, trang trí thêm vài lát ớt hoặc rau mùi. Dùng làm món khai vị hoặc ăn kèm cơm trắng để thưởng thức vị chua cay và mùi tanh đặc trưng của rau diếp cá.'),
-- Rau diếp cá ăn kèm lẩu
(138, 1, 'Chuẩn bị nguyên liệu: Rửa sạch rau diếp cá, ngâm nước muối loãng 5 phút để khử khuẩn, để ráo. Tỏi bóc vỏ, băm nhuyễn để pha nước chấm. Chuẩn bị nồi lẩu (lẩu chua, lẩu hải sản, hoặc lẩu bò) để ăn kèm rau.'),
(138, 2, 'Pha nước chấm: Trộn 2 muỗng canh nước mắm với tỏi băm, có thể thêm ớt, chanh, hoặc đường tùy khẩu vị. Khuấy đều, nếm thử để đảm bảo vị mặn thơm, phù hợp với lẩu. Chuẩn bị thêm các loại rau khác (rau muống, cải thảo) để ăn kèm nếu muốn.'),
(138, 3, 'Sắp xếp rau: Xếp rau diếp cá ra đĩa, trình bày đẹp mắt, đặt cạnh nồi lẩu. Đảm bảo rau khô ráo để tránh làm đục nước lẩu khi nhúng. Có thể thêm giá đỗ hoặc rau thơm để tăng hương vị.'),
(138, 4, 'Hoàn thiện món: Khi ăn lẩu, nhúng rau diếp cá vào nước lẩu sôi 10-15 giây để rau chín sơ, giữ độ giòn và mùi thơm. Chấm rau với nước mắm tỏi, dùng kèm thịt, hải sản để thưởng thức vị thanh mát và tanh nhẹ của rau diếp cá.'),
-- Sinh tố rau diếp cá
(139, 1, 'Chuẩn bị nguyên liệu: Rửa sạch rau diếp cá, ngâm nước muối loãng 5 phút, để ráo. Chuẩn bị máy xay sinh tố, đá viên, và nước lọc. Chọn rau diếp cá tươi, lá non để sinh tố có vị dịu và ít tanh.'),
(139, 2, 'Xay sinh tố: Cho rau diếp cá, 200ml nước lọc, 2 muỗng canh sữa đặc, 1 muỗng canh đường, và 200g đá viên vào máy xay. Xay nhuyễn 30-40 giây đến khi hỗn hợp mịn, không còn lợn cợn. Nếm thử, điều chỉnh độ ngọt bằng sữa đặc hoặc đường nếu cần.'),
(139, 3, 'Lọc sinh tố: Đổ hỗn hợp qua rây để loại bỏ bã, giữ lại phần nước mịn. Lọc kỹ để sinh tố có kết cấu mượt, dễ uống. Có thể bỏ qua bước này nếu thích giữ chất xơ của rau.'),
(139, 4, 'Hoàn thiện món: Đổ sinh tố vào ly, trang trí thêm lá rau diếp cá hoặc lát chanh. Dùng lạnh để thưởng thức vị thanh mát, ngọt dịu, và mùi thơm đặc trưng của rau diếp cá, rất tốt cho sức khỏe.'),
-- Rau diếp cá trộn tôm
(140, 1, 'Chuẩn bị nguyên liệu: Rửa sạch rau diếp cá, ngâm nước muối loãng 5 phút, để ráo. Tôm tươi luộc trong nước sôi có chút muối 2-3 phút, vớt ra, ngâm nước đá 1 phút để tôm giòn, bóc vỏ. Tỏi băm nhuyễn, chuẩn bị bát nhỏ để pha nước mắm.'),
(140, 2, 'Pha nước mắm trộn: Trộn 2 muỗng canh nước mắm, 1 muỗng canh đường, 1 muỗng canh nước cốt chanh, và tỏi băm trong bát nhỏ. Khuấy đều cho đường tan, nếm thử để đảm bảo vị chua ngọt hài hòa. Có thể thêm ớt băm nếu thích cay.'),
(140, 3, 'Trộn món: Cho rau diếp cá và tôm vào tô lớn, rưới nước mắm lên trên. Trộn đều bằng tay hoặc đũa để rau và tôm thấm gia vị. Để món nghỉ 5 phút trong tủ lạnh để vị ngấm và giữ độ giòn của rau và tôm.'),
(140, 4, 'Hoàn thiện món trộn: Lấy món ra, kiểm tra lại vị, điều chỉnh nếu cần. Dọn ra đĩa, trang trí thêm vài lá rau diếp cá hoặc ớt thái lát. Dùng làm món khai vị hoặc ăn kèm cơm trắng để thưởng thức vị tanh nhẹ của rau và ngọt tươi của tôm.');

-- --------------------------------------
-- 36. Rau má (class_index: 35)
-- --------------------------------------

-- Chèn vào bảng vegetables
INSERT INTO vegetables (class_index, vietnamese_name, scientific_name, description, nutritional_info)
VALUES (
    35, 
    'Rau má', 
    'Centella asiatica', 
    'Rau má là một loại rau lá thuộc họ Hoa tán (Apiaceae), phổ biến trong ẩm thực và y học cổ truyền Việt Nam. Lá tròn, nhỏ, vị hơi đắng, mát. Rau má được dùng trong sinh tố, salad, hoặc canh, có tác dụng thanh nhiệt, giải độc, và làm đẹp da.',
    'Rau má giàu vitamin A, vitamin C, và chất chống oxy hóa. Rau hỗ trợ sức khỏe da, tăng cường miễn dịch, và có đặc tính kháng viêm. Rau má cũng chứa sắt và chất xơ, giúp ngăn ngừa thiếu máu và cải thiện tiêu hóa. Với lượng calo thấp, rau má là lựa chọn lành mạnh.'
);

-- Chèn vào bảng vegetable_nutritional_points
INSERT INTO vegetable_nutritional_points (vegetable_id, point_text, display_order)
VALUES 
(36, 'Vitamin A (40% DV trong 100g): Hỗ trợ thị lực và sức khỏe da.', 1),
(36, 'Vitamin C (30% DV trong 100g): Tăng cường miễn dịch, bảo vệ tế bào.', 2),
(36, 'Sắt (1.5mg trong 100g): Ngăn ngừa thiếu máu, hỗ trợ tạo hồng cầu.', 3),
(36, 'Chất chống oxy hóa: Giảm viêm, cải thiện sức khỏe da và tóc.', 4),
(36, 'Chất xơ (2g trong 100g): Cải thiện tiêu hóa, ngăn ngừa táo bón.', 5),
(36, 'Ít calo (20 kcal trong 100g): Phù hợp cho chế độ ăn kiêng.', 6);

-- Chèn vào bảng vegetable_select_points
INSERT INTO vegetable_select_points (vegetable_id, point_text, display_order)
VALUES 
(36, 'Lá xanh tươi, không úa: Chọn rau má có lá xanh đậm, không vàng.', 1),
(36, 'Thân mềm, không xơ: Rau tươi có thân mềm, dễ bẻ.', 2),
(36, 'Mùi thơm nhẹ: Rau má tươi có mùi đặc trưng, tránh mùi chua.', 3),
(36, 'Không có đốm nâu: Kiểm tra lá không có vết thâm hoặc hư hỏng.', 4),
(36, 'Tránh rau dập: Chọn bó rau nguyên vẹn, không bị dập nát.', 5);

-- Chèn vào bảng vegetable_preserve_points
INSERT INTO vegetable_preserve_points (vegetable_id, point_text, display_order)
VALUES 
(36, 'Bọc kín trong ngăn mát: Bọc rau má trong khăn giấy ẩm, bảo quản ở 0-4°C, giữ tươi 5-7 ngày.', 1),
(36, 'Giữ khô trước khi bảo quản: Không rửa rau trước khi cất, tránh ẩm mốc.', 2),
(36, 'Đông lạnh để bảo quản lâu: Chần sơ 30 giây, để ráo, đông lạnh ở -18°C, dùng trong 2 tháng.', 3),
(36, 'Kiểm tra định kỳ: Loại bỏ lá úa hoặc hỏng để tránh lây lan.', 4),
(36, 'Tránh để gần trái cây tiết ethylene: Táo, chuối làm rau má nhanh héo.', 5);

-- Chèn vào bảng recipes
INSERT INTO recipes (name, description, prep_time, cook_time, servings)
VALUES 
('Sinh tố rau má', 'Đồ uống thanh mát, với rau má xay nhuyễn, tốt cho sức khỏe và làm đẹp da.', '10 phút', '0 phút', '4 người'),
('Canh rau má nấu tôm', 'Món canh thanh nhẹ, với rau má mát và tôm ngọt, là món phụ bổ dưỡng.', '10 phút', '10 phút', '4 người'),
('Nộm rau má', 'Món nộm tươi mát, với rau má trộn nước mắm, là món khai vị hoặc ăn kèm.', '15 phút', '0 phút', '4 người'),
('Rau má xào tỏi', 'Món xào đơn giản, với rau má giòn và tỏi thơm, là món phụ dễ làm.', '10 phút', '10 phút', '4 người');

-- Chèn vào bảng recipe_vegetables
INSERT INTO recipe_vegetables (recipe_id, vegetable_id)
VALUES 
(141, 36),
(142, 36),
(143, 36),
(144, 36);

-- Chèn vào bảng recipe_items
INSERT INTO recipe_items (recipe_id, item_name, quantity, notes, order_index)
VALUES 
-- Sinh tố rau má
(141, 'Rau má', '200g', 'Rửa sạch, để ráo', 1),
(141, 'Sữa đặc', '2 muỗng canh', 'Tạo vị ngọt', 2),
(141, 'Đường', '1 muỗng canh', 'Điều chỉnh theo khẩu vị', 3),
(141, 'Đá viên', '200g', 'Dùng để xay', 4),
(141, 'Nước lọc', '200ml', 'Dùng để xay', 5),
-- Canh rau má nấu tôm
(142, 'Rau má', '200g', 'Rửa sạch, để ráo', 1),
(142, 'Tôm tươi', '200g', 'Bóc vỏ, rút chỉ đen', 2),
(142, 'Nước mắm', '1 muỗng canh', 'Chọn loại ngon', 3),
(142, 'Hành lá', '2 nhánh (10g)', 'Thái nhỏ', 4),
(142, 'Nước', '1 lít', 'Nước lọc', 5),
-- Nộm rau má
(143, 'Rau má', '200g', 'Rửa sạch, để ráo', 1),
(143, 'Nước mắm', '2 muỗng canh', 'Chọn loại ngon', 2),
(143, 'Đường', '1 muỗng canh', 'Tạo vị ngọt', 3),
(143, 'Nước cốt chanh', '1 muỗng canh', 'Tạo vị chua', 4),
(143, 'Tỏi', '2 tép (10g)', 'Băm nhỏ', 5),
(143, 'Ớt', '1 quả (5g)', 'Thái lát', 6),
-- Rau má xào tỏi
(144, 'Rau má', '300g', 'Rửa sạch, để ráo', 1),
(144, 'Tỏi', '3 tép (12g)', 'Băm nhỏ', 2),
(144, 'Dầu ăn', '2 muỗng canh', 'Dùng để xào', 3),
(144, 'Nước mắm', '1 muỗng canh', 'Tăng hương vị', 4),
(144, 'Muối', '1/4 muỗng cà phê', 'Điều chỉnh theo khẩu vị', 5);

-- Chèn vào bảng recipe_steps
INSERT INTO recipe_steps (recipe_id, step_number, instruction_text)
VALUES 
-- Sinh tố rau má
(141, 1, 'Chuẩn bị nguyên liệu: Rửa sạch rau má, ngâm nước muối loãng 5 phút để khử khuẩn, để ráo. Chuẩn bị máy xay sinh tố, đá viên, và nước lọc. Chọn rau má tươi, lá non để sinh tố có vị dịu và ít đắng.'),
(141, 2, 'Xay sinh tố: Cho rau má, 200ml nước lọc, 2 muỗng canh sữa đặc, 1 muỗng canh đường, và 200g đá viên vào máy xay. Xay nhuyễn 30-40 giây đến khi hỗn hợp mịn, không còn lợn cợn. Nếm thử, điều chỉnh độ ngọt bằng sữa đặc hoặc đường nếu cần.'),
(141, 3, 'Lọc sinh tố: Đổ hỗn hợp qua rây để loại bỏ bã, giữ lại phần nước mịn. Lọc kỹ để sinh tố có kết cấu mượt, dễ uống. Có thể bỏ qua bước này nếu thích giữ chất xơ của rau.'),
(141, 4, 'Hoàn thiện món: Đổ sinh tố vào ly, trang trí thêm lá rau má hoặc lát chanh. Dùng lạnh để thưởng thức vị thanh mát, ngọt dịu, và mùi thơm đặc trưng của rau má, rất tốt cho da và sức khỏe.'),
-- Canh rau má nấu tôm
(142, 1, 'Chuẩn bị nguyên liệu: Rửa sạch rau má, ngâm nước muối loãng 5 phút, để ráo. Tôm tươi bóc vỏ, rút chỉ đen, rửa sạch với nước muối loãng để khử tanh. Hành lá rửa sạch, thái nhỏ, giữ riêng phần đầu hành để phi thơm.'),
(142, 2, 'Xào tôm: Đun nóng 1 muỗng canh dầu ăn trong nồi, cho đầu hành lá vào phi thơm 10 giây, thêm tôm vào xào trên lửa vừa 1-2 phút đến khi tôm chuyển màu hồng. Vớt tôm ra bát để giữ độ giòn.'),
(142, 3, 'Nấu canh: Đổ 1 lít nước lọc vào nồi, đun sôi. Cho rau má và tôm vào, nấu trên lửa vừa 4-5 phút để rau mềm và tôm tiết vị ngọt. Nêm 1 muỗng canh nước mắm, khuấy nhẹ, nếm thử để điều chỉnh vị thanh nhẹ.'),
(142, 4, 'Hoàn thiện món canh: Rắc hành lá thái nhỏ vào nồi, đun thêm 30 giây để hành chín sơ. Tắt bếp, múc canh ra bát, dùng nóng với cơm trắng để thưởng thức vị mát của rau má và ngọt tươi của tôm.'),
-- Nộm rau má
(143, 1, 'Chuẩn bị nguyên liệu: Rửa sạch rau má, ngâm nước muối loãng 5 phút, để ráo. Tỏi băm nhuyễn, ớt thái lát mỏng để pha nước mắm. Chọn rau má tươi, lá non để nộm giòn và ít đắng.'),
(143, 2, 'Pha nước mắm trộn: Trộn 2 muỗng canh nước mắm, 1 muỗng canh đường, 1 muỗng canh nước cốt chanh, tỏi băm, và ớt thái lát trong bát nhỏ. Khuấy đều cho đường tan, nếm thử để đảm bảo vị chua ngọt cay cân bằng.'),
(143, 3, 'Trộn nộm: Cho rau má vào tô lớn, rưới nước mắm lên trên, trộn đều bằng tay hoặc đũa để rau thấm gia vị. Để nộm nghỉ 5 phút trong tủ lạnh để vị ngấm và giữ độ giòn. Trộn nhẹ tay để tránh làm nát rau.'),
(143, 4, 'Hoàn thiện món nộm: Lấy nộm ra, kiểm tra lại vị, điều chỉnh nếu cần. Dọn nộm ra đĩa, trang trí thêm vài lát ớt hoặc rau mùi. Dùng làm món khai vị hoặc ăn kèm cơm trắng để thưởng thức vị giòn mát và chua cay của rau má.'),
-- Rau má xào tỏi
(144, 1, 'Chuẩn bị nguyên liệu: Rửa sạch rau má, ngâm nước muối loãng 5 phút, để ráo. Tỏi bóc vỏ, băm nhuyễn để phi thơm. Chọn rau má tươi, thân mềm để món xào giòn và không đắng.'),
(144, 2, 'Phi tỏi: Đun nóng 2 muỗng canh dầu ăn trong chảo, cho tỏi băm vào phi trên lửa vừa 20-30 giây đến khi tỏi vàng nhẹ và dậy mùi thơm. Tránh để tỏi cháy vì sẽ tạo vị đắng.'),
(144, 3, 'Xào rau má: Cho rau má vào chảo, tăng lửa lớn, xào nhanh 2-3 phút để rau mềm nhưng vẫn giữ độ giòn. Nêm 1 muỗng canh nước mắm và 1/4 muỗng cà phê muối, đảo đều. Có thể thêm 1 muỗng canh nước nếu chảo khô.'),
(144, 4, 'Hoàn thiện món xào: Kiểm tra độ chín của rau, đảm bảo rau má vẫn giòn và không quá mềm. Tắt bếp, dọn ra đĩa, dùng nóng với cơm trắng để thưởng thức vị giòn mát của rau má và thơm nồng của tỏi.');

-- --------------------------------------
-- 37. Rau mồng tơi (class_index: 36)
-- --------------------------------------

-- Chèn vào bảng vegetables
INSERT INTO vegetables (class_index, vietnamese_name, scientific_name, description, nutritional_info)
VALUES (
    36, 
    'Mồng tơi', 
    'Basella alba', 
    'Mồng tơi là một loại rau lá thuộc họ Mồng tơi (Basellaceae), phổ biến trong ẩm thực Việt Nam. Lá dày, màu xanh đậm, thân mọng nước, vị ngọt mát. Mồng tơi được dùng trong canh, xào, hoặc luộc, là nguyên liệu bổ dưỡng, giúp thanh nhiệt và dễ tiêu hóa.',
    'Mồng tơi giàu vitamin A, vitamin C, và chất xơ. Rau hỗ trợ thị lực, tăng cường miễn dịch, và cải thiện tiêu hóa nhờ chất nhầy tự nhiên. Mồng tơi cũng chứa sắt và canxi, giúp ngăn ngừa thiếu máu và duy trì sức khỏe xương. Với lượng calo thấp, mồng tơi là lựa chọn lành mạnh.'
);

-- Chèn vào bảng vegetable_nutritional_points
INSERT INTO vegetable_nutritional_points (vegetable_id, point_text, display_order)
VALUES 
(37, 'Vitamin A (50% DV trong 100g): Hỗ trợ thị lực và miễn dịch.', 1),
(37, 'Vitamin C (30% DV trong 100g): Tăng cường miễn dịch, bảo vệ tế bào.', 2),
(37, 'Chất xơ (2g trong 100g): Cải thiện tiêu hóa, ngăn ngừa táo bón.', 3),
(37, 'Sắt (1.2mg trong 100g): Ngăn ngừa thiếu máu, hỗ trợ tạo hồng cầu.', 4),
(37, 'Canxi (109mg trong 100g): Duy trì sức khỏe xương và răng.', 5),
(37, 'Ít calo (19 kcal trong 100g): Phù hợp cho chế độ ăn kiêng.', 6);

-- Chèn vào bảng vegetable_select_points
INSERT INTO vegetable_select_points (vegetable_id, point_text, display_order)
VALUES 
(37, 'Lá xanh tươi, không úa: Chọn mồng tơi có lá xanh đậm, không vàng.', 1),
(37, 'Thân mọng nước: Rau tươi có thân mềm, mọng, không xơ.', 2),
(37, 'Không có đốm nâu: Kiểm tra lá không có vết thâm hoặc hư hỏng.', 3),
(37, 'Mùi thơm nhẹ: Mồng tơi tươi có mùi đặc trưng, tránh mùi chua.', 4),
(37, 'Tránh rau dập: Chọn bó rau nguyên vẹn, không bị dập nát.', 5);

-- Chèn vào bảng vegetable_preserve_points
INSERT INTO vegetable_preserve_points (vegetable_id, point_text, display_order)
VALUES 
(37, 'Bọc kín trong ngăn mát: Bọc mồng tơi trong khăn giấy ẩm, bảo quản ở 0-4°C, giữ tươi 5-7 ngày.', 1),
(37, 'Giữ khô trước khi bảo quản: Không rửa rau trước khi cất, tránh ẩm mốc.', 2),
(37, 'Đông lạnh để bảo quản lâu: Chần sơ 1 phút, để ráo, đông lạnh ở -18°C, dùng trong 3 tháng.', 3),
(37, 'Kiểm tra định kỳ: Loại bỏ lá úa hoặc hỏng để tránh lây lan.', 4),
(37, 'Tránh để gần trái cây tiết ethylene: Táo, chuối làm mồng tơi nhanh héo.', 5);

-- Chèn vào bảng recipes
INSERT INTO recipes (name, description, prep_time, cook_time, servings)
VALUES 
('Canh mồng tơi nấu tôm', 'Món canh thanh nhẹ, với mồng tơi mát và tôm ngọt, là món phụ bổ dưỡng.', '10 phút', '10 phút', '4 người'),
('Mồng tơi xào tỏi', 'Món xào đơn giản, với mồng tơi giòn và tỏi thơm, là món phụ dễ làm.', '10 phút', '10 phút', '4 người'),
('Mồng tơi luộc', 'Món luộc đơn giản, với mồng tơi mát, dùng kèm nước chấm, là món phụ lành mạnh.', '5 phút', '5 phút', '4 người'),
('Canh mồng tơi cua', 'Món canh ngọt thanh, với mồng tơi và cua đồng, là món phụ bổ dưỡng.', '15 phút', '15 phút', '4 người');

-- Chèn vào bảng recipe_vegetables
INSERT INTO recipe_vegetables (recipe_id, vegetable_id)
VALUES 
(145, 37),
(146, 37),
(147, 37),
(148, 37);

-- Chèn vào bảng recipe_items
INSERT INTO recipe_items (recipe_id, item_name, quantity, notes, order_index)
VALUES 
-- Canh mồng tơi nấu tôm
(145, 'Mồng tơi', '200g', 'Rửa sạch, cắt khúc 5cm', 1),
(145, 'Tôm tươi', '200g', 'Bóc vỏ, rút chỉ đen', 2),
(145, 'Nước mắm', '1 muỗng canh', 'Chọn loại ngon', 3),
(145, 'Hành lá', '2 nhánh (10g)', 'Thái nhỏ', 4),
(145, 'Nước', '1 lít', 'Nước lọc', 5),
-- Mồng tơi xào tỏi
(146, 'Mồng tơi', '300g', 'Rửa sạch, cắt khúc 5cm', 1),
(146, 'Tỏi', '3 tép (12g)', 'Băm nhỏ', 2),
(146, 'Dầu ăn', '2 muỗng canh', 'Dùng để xào', 3),
(146, 'Nước mắm', '1 muỗng canh', 'Tăng hương vị', 4),
(146, 'Muối', '1/4 muỗng cà phê', 'Điều chỉnh theo khẩu vị', 5),
-- Mồng tơi luộc
(147, 'Mồng tơi', '300g', 'Rửa sạch, giữ nguyên lá', 1),
(147, 'Nước', '2 lít', 'Nước lọc để luộc', 2),
(147, 'Muối', '1/2 muỗng cà phê', 'Cho vào nước luộc', 3),
(147, 'Nước mắm', '2 muỗng canh', 'Dùng làm nước chấm', 4),
-- Canh mồng tơi cua
(148, 'Mồng tơi', '200g', 'Rửa sạch, cắt khúc 5cm', 1),
(148, 'Cua đồng', '200g', 'Làm sạch, giã nhuyễn', 2),
(148, 'Nước mắm', '1 muỗng canh', 'Chọn loại ngon', 3),
(148, 'Hành lá', '2 nhánh (10g)', 'Thái nhỏ', 4),
(148, 'Nước', '1 lít', 'Nước lọc', 5);

-- Chèn vào bảng recipe_steps
INSERT INTO recipe_steps (recipe_id, step_number, instruction_text)
VALUES 
-- Canh mồng tơi nấu tôm
(145, 1, 'Chuẩn bị nguyên liệu: Rửa sạch mồng tơi, ngâm nước muối loãng 5 phút, để ráo, cắt khúc 5cm. Tôm tươi bóc vỏ, rút chỉ đen, rửa sạch với nước muối loãng để khử tanh. Hành lá rửa sạch, thái nhỏ, giữ riêng phần đầu hành để phi thơm.'),
(145, 2, 'Xào tôm: Đun nóng 1 muỗng canh dầu ăn trong nồi, cho đầu hành lá vào phi thơm 10 giây, thêm tôm vào xào trên lửa vừa 1-2 phút đến khi tôm chuyển màu hồng. Vớt tôm ra bát để giữ độ giòn.'),
(145, 3, 'Nấu canh: Đổ 1 lít nước lọc vào nồi, đun sôi. Cho mồng tơi và tôm vào, nấu trên lửa vừa 4-5 phút để rau mềm và tôm tiết vị ngọt. Nêm 1 muỗng canh nước mắm, khuấy nhẹ, nếm thử để điều chỉnh vị thanh nhẹ.'),
(145, 4, 'Hoàn thiện món canh: Rắc hành lá thái nhỏ vào nồi, đun thêm 30 giây để hành chín sơ. Tắt bếp, múc canh ra bát, dùng nóng với cơm trắng để thưởng thức vị mát của mồng tơi và ngọt tươi của tôm.'),
-- Mồng tơi xào tỏi
(146, 1, 'Chuẩn bị nguyên liệu: Rửa sạch mồng tơi, ngâm nước muối loãng 5 phút, để ráo, cắt khúc 5cm. Tỏi bóc vỏ, băm nhuyễn để phi thơm. Chọn mồng tơi tươi, thân mọng nước để món xào giòn và ngọt.'),
(146, 2, 'Phi tỏi: Đun nóng 2 muỗng canh dầu ăn trong chảo, cho tỏi băm vào phi trên lửa vừa 20-30 giây đến khi tỏi vàng nhẹ và dậy mùi thơm. Tránh để tỏi cháy vì sẽ tạo vị đắng.'),
(146, 3, 'Xào mồng tơi: Cho mồng tơi vào chảo, tăng lửa lớn, xào nhanh 2-3 phút để rau mềm nhưng vẫn giữ độ giòn. Nêm 1 muỗng canh nước mắm và 1/4 muỗng cà phê muối, đảo đều. Có thể thêm 1 muỗng canh nước nếu chảo khô.'),
(146, 4, 'Hoàn thiện món xào: Kiểm tra độ chín của rau, đảm bảo mồng tơi vẫn giòn và không quá mềm. Tắt bếp, dọn ra đĩa, dùng nóng với cơm trắng để thưởng thức vị giòn mát của mồng tơi và thơm nồng của tỏi.'),
-- Mồng tơi luộc
(147, 1, 'Chuẩn bị nguyên liệu: Rửa sạch mồng tơi, ngâm nước muối loãng 5 phút, để ráo, giữ nguyên lá để giữ độ giòn. Chuẩn bị nồi nước luộc và bát nước mắm nguyên chất để chấm. Chọn mồng tơi non để luộc sẽ ngọt và mát.'),
(147, 2, 'Luộc rau: Đun sôi 2 lít nước, thêm 1/2 muỗng cà phê muối để rau giữ màu xanh đẹp. Cho mồng tơi vào luộc trên lửa vừa 2-3 phút đến khi rau mềm nhưng vẫn giòn. Dùng đũa kiểm tra, nếu xuyên qua thân dễ dàng là rau chín.'),
(147, 3, 'Vớt rau: Vớt mồng tơi ra, ngâm ngay vào nước đá 1 phút để rau giòn và giữ màu xanh đẹp. Để ráo nước, xếp rau ra đĩa, giữ nguyên lá để trình bày đẹp mắt.'),
(147, 4, 'Hoàn thiện món luộc: Pha nước chấm với 2 muỗng canh nước mắm, thêm tỏi băm, ớt, hoặc chanh tùy sở thích. Dọn rau luộc ra bàn, dùng nóng với nước chấm để thưởng thức vị giòn ngọt tự nhiên của mồng tơi.'),
-- Canh mồng tơi cua
(148, 1, 'Chuẩn bị nguyên liệu: Rửa sạch mồng tơi, ngâm nước muối loãng 5 phút, để ráo, cắt khúc 5cm. Cua đồng làm sạch, giã nhuyễn, lọc lấy nước cốt, bỏ bã. Hành lá rửa sạch, thái nhỏ, giữ riêng phần đầu hành để phi thơm.'),
(148, 2, 'Nấu nước cốt cua: Đổ 1 lít nước lọc vào nồi, thêm nước cốt cua, đun trên lửa vừa, khuấy nhẹ để gạch cua nổi lên. Vớt gạch cua ra bát, để riêng. Lọc nước cốt qua rây để loại bỏ cặn, giữ nước trong.'),
(148, 3, 'Nấu canh: Đun sôi nước cốt cua, cho mồng tơi vào, nấu 4-5 phút để rau mềm. Thêm gạch cua trở lại, nêm 1 muỗng canh nước mắm, khuấy nhẹ, nếm thử để điều chỉnh vị ngọt thanh.'),
(148, 4, 'Hoàn thiện món canh: Rắc hành lá thái nhỏ vào nồi, đun thêm 30 giây để hành chín sơ. Tắt bếp, múc canh ra bát, dùng nóng với cơm trắng để thưởng thức vị ngọt thanh của cua và mát của mồng tơi.');

-- --------------------------------------
-- 38. Rau muống (class_index: 37)
-- --------------------------------------

-- Chèn vào bảng vegetables
INSERT INTO vegetables (class_index, vietnamese_name, scientific_name, description, nutritional_info)
VALUES (
    37, 
    'Rau muống', 
    'Ipomoea aquatica', 
    'Rau muống là một loại rau lá phổ biến trong ẩm thực Việt Nam, thuộc họ Bìm bìm (Convolvulaceae). Lá thon dài, thân rỗng, vị ngọt nhẹ, giòn. Rau muống được dùng trong xào, luộc, canh, hoặc salad, là nguyên liệu quen thuộc nhờ dễ chế biến và bổ dưỡng.',
    'Rau muống giàu vitamin A, vitamin C, và sắt. Rau hỗ trợ thị lực, tăng cường miễn dịch, và ngăn ngừa thiếu máu. Rau muống cũng chứa chất xơ và canxi, giúp cải thiện tiêu hóa và duy trì sức khỏe xương. Với lượng calo thấp, rau muống là lựa chọn lành mạnh.'
);

-- Chèn vào bảng vegetable_nutritional_points
INSERT INTO vegetable_nutritional_points (vegetable_id, point_text, display_order)
VALUES 
(38, 'Vitamin A (66% DV trong 100g): Hỗ trợ thị lực và miễn dịch.', 1),
(38, 'Vitamin C (55% DV trong 100g): Tăng cường miễn dịch, bảo vệ tế bào.', 2),
(38, 'Sắt (2.7mg trong 100g): Ngăn ngừa thiếu máu, hỗ trợ tạo hồng cầu.', 3),
(38, 'Canxi (77mg trong 100g): Duy trì sức khỏe xương và răng.', 4),
(38, 'Chất xơ (2g trong 100g): Cải thiện tiêu hóa, ngăn ngừa táo bón.', 5),
(38, 'Ít calo (19 kcal trong 100g): Phù hợp cho chế độ ăn kiêng.', 6);

-- Chèn vào bảng vegetable_select_points
INSERT INTO vegetable_select_points (vegetable_id, point_text, display_order)
VALUES 
(38, 'Lá xanh tươi, không úa: Chọn rau muống có lá xanh đậm, không vàng.', 1),
(38, 'Thân giòn, rỗng: Rau tươi có thân giòn, không xơ hoặc mềm.', 2),
(38, 'Không có đốm nâu: Kiểm tra lá không có vết thâm hoặc hư hỏng.', 3),
(38, 'Mùi thơm nhẹ: Rau muống tươi có mùi đặc trưng, tránh mùi chua.', 4),
(38, 'Tránh rau dập: Chọn bó rau nguyên vẹn, không bị dập nát.', 5);

-- Chèn vào bảng vegetable_preserve_points
INSERT INTO vegetable_preserve_points (vegetable_id, point_text, display_order)
VALUES 
(38, 'Bọc kín trong ngăn mát: Bọc rau muống trong khăn giấy ẩm, bảo quản ở 0-4°C, giữ tươi 5-7 ngày.', 1),
(38, 'Giữ khô trước khi bảo quản: Không rửa rau trước khi cất, tránh ẩm mốc.', 2),
(38, 'Đông lạnh để bảo quản lâu: Chần sơ 1 phút, để ráo, đông lạnh ở -18°C, dùng trong 3 tháng.', 3),
(38, 'Kiểm tra định kỳ: Loại bỏ lá úa hoặc hỏng để tránh lây lan.', 4),
(38, 'Tránh để gần trái cây tiết ethylene: Táo, chuối làm rau muống nhanh héo.', 5);

-- Chèn vào bảng recipes
INSERT INTO recipes (name, description, prep_time, cook_time, servings)
VALUES 
('Rau muống xào tỏi', 'Món xào đơn giản, với rau muống giòn và tỏi thơm, là món phụ dễ làm.', '10 phút', '10 phút', '4 người'),
('Rau muống luộc', 'Món luộc đơn giản, với rau muống giòn, dùng kèm nước chấm, là món phụ lành mạnh.', '5 phút', '5 phút', '4 người'),
('Canh rau muống nấu tôm', 'Món canh thanh nhẹ, với rau muống ngọt và tôm tươi, là món phụ bổ dưỡng.', '10 phút', '10 phút', '4 người'),
('Nộm rau muống', 'Món nộm tươi mát, với rau muống trộn nước mắm, là món khai vị hoặc ăn kèm.', '15 phút', '5 phút', '4 người');

-- Chèn vào bảng recipe_vegetables
INSERT INTO recipe_vegetables (recipe_id, vegetable_id)
VALUES 
(149, 38),
(150, 38),
(151, 38),
(152, 38);

-- Chèn vào bảng recipe_items
INSERT INTO recipe_items (recipe_id, item_name, quantity, notes, order_index)
VALUES 
-- Rau muống xào tỏi
(149, 'Rau muống', '300g', 'Rửa sạch, cắt khúc 5cm', 1),
(149, 'Tỏi', '3 tép (12g)', 'Băm nhỏ', 2),
(149, 'Dầu ăn', '2 muỗng canh', 'Dùng để xào', 3),
(149, 'Nước mắm', '1 muỗng canh', 'Tăng hương vị', 4),
(149, 'Muối', '1/4 muỗng cà phê', 'Điều chỉnh theo khẩu vị', 5),
-- Rau muống luộc
(150, 'Rau muống', '300g', 'Rửa sạch, giữ nguyên lá', 1),
(150, 'Nước', '2 lít', 'Nước lọc để luộc', 2),
(150, 'Muối', '1/2 muỗng cà phê', 'Cho vào nước luộc', 3),
(150, 'Nước mắm', '2 muỗng canh', 'Dùng làm nước chấm', 4),
-- Canh rau muống nấu tôm
(151, 'Rau muống', '200g', 'Rửa sạch, cắt khúc 5cm', 1),
(151, 'Tôm tươi', '200g', 'Bóc vỏ, rút chỉ đen', 2),
(151, 'Nước mắm', '1 muỗng canh', 'Chọn loại ngon', 3),
(151, 'Hành lá', '2 nhánh (10g)', 'Thái nhỏ', 4),
(151, 'Nước', '1 lít', 'Nước lọc', 5),
-- Nộm rau muống
(152, 'Rau muống', '200g', 'Rửa sạch, chần sơ', 1),
(152, 'Nước mắm', '2 muỗng canh', 'Chọn loại ngon', 2),
(152, 'Đường', '1 muỗng canh', 'Tạo vị ngọt', 3),
(152, 'Nước cốt chanh', '1 muỗng canh', 'Tạo vị chua', 4),
(152, 'Tỏi', '2 tép (10g)', 'Băm nhỏ', 5),
(152, 'Ớt', '1 quả (5g)', 'Thái lát', 6);

-- Chèn vào bảng recipe_steps
INSERT INTO recipe_steps (recipe_id, step_number, instruction_text)
VALUES 
-- Rau muống xào tỏi
(149, 1, 'Chuẩn bị nguyên liệu: Rửa sạch rau muống, ngâm nước muối loãng 5 phút, để ráo, cắt khúc 5cm. Tỏi bóc vỏ, băm nhuyễn để phi thơm. Chọn rau muống non, thân rỗng để món xào giòn và ngọt.'),
(149, 2, 'Phi tỏi: Đun nóng 2 muỗng canh dầu ăn trong chảo, cho tỏi băm vào phi trên lửa vừa 20-30 giây đến khi tỏi vàng nhẹ và dậy mùi thơm. Tránh để tỏi cháy vì sẽ tạo vị đắng.'),
(149, 3, 'Xào rau muống: Cho rau muống vào chảo, tăng lửa lớn, xào nhanh 3-4 phút để rau mềm nhưng vẫn giữ độ giòn. Nêm 1 muỗng canh nước mắm và 1/4 muỗng cà phê muối, đảo đều. Có thể thêm 1 muỗng canh nước nếu chảo khô.'),
(149, 4, 'Hoàn thiện món xào: Kiểm tra độ chín của rau, đảm bảo rau muống vẫn giòn và không quá mềm. Tắt bếp, dọn ra đĩa, dùng nóng với cơm trắng để thưởng thức vị giòn ngọt của rau muống và thơm nồng của tỏi.'),
-- Rau muống luộc
(150, 1, 'Chuẩn bị nguyên liệu: Rửa sạch rau muống, ngâm nước muối loãng 5 phút, để ráo, giữ nguyên lá để giữ độ giòn. Chuẩn bị nồi nước luộc và bát nước mắm nguyên chất để chấm. Chọn rau muống non để luộc sẽ ngọt và giòn.'),
(150, 2, 'Luộc rau: Đun sôi 2 lít nước, thêm 1/2 muỗng cà phê muối để rau giữ màu xanh đẹp. Cho rau muống vào luộc trên lửa vừa 2-3 phút đến khi rau mềm nhưng vẫn giòn. Dùng đũa kiểm tra, nếu xuyên qua thân dễ dàng là rau chín.'),
(150, 3, 'Vớt rau: Vớt rau muống ra, ngâm ngay vào nước đá 1 phút để rau giòn và giữ màu xanh đẹp. Để ráo nước, xếp rau ra đĩa, giữ nguyên lá để trình bày đẹp mắt.'),
(150, 4, 'Hoàn thiện món luộc: Pha nước chấm với 2 muỗng canh nước mắm, thêm tỏi băm, ớt, hoặc chanh tùy sở thích. Dọn rau luộc ra bàn, dùng nóng với nước chấm để thưởng thức vị giòn ngọt tự nhiên của rau muống.'),
-- Canh rau muống nấu tôm
(151, 1, 'Chuẩn bị nguyên liệu: Rửa sạch rau muống, ngâm nước muối loãng 5 phút, để ráo, cắt khúc 5cm. Tôm tươi bóc vỏ, rút chỉ đen, rửa sạch với nước muối loãng để khử tanh. Hành lá rửa sạch, thái nhỏ, giữ riêng phần đầu hành để phi thơm.'),
(151, 2, 'Xào tôm: Đun nóng 1 muỗng canh dầu ăn trong nồi, cho đầu hành lá vào phi thơm 10 giây, thêm tôm vào xào trên lửa vừa 1-2 phút đến khi tôm chuyển màu hồng. Vớt tôm ra bát để giữ độ giòn.'),
(151, 3, 'Nấu canh: Đổ 1 lít nước lọc vào nồi, đun sôi. Cho rau muống và tôm vào, nấu trên lửa vừa 4-5 phút để rau mềm và tôm tiết vị ngọt. Nêm 1 muỗng canh nước mắm, khuấy nhẹ, nếm thử để điều chỉnh vị thanh nhẹ.'),
(151, 4, 'Hoàn thiện món canh: Rắc hành lá thái nhỏ vào nồi, đun thêm 30 giây để hành chín sơ. Tắt bếp, múc canh ra bát, dùng nóng với cơm trắng để thưởng thức vị ngọt thanh của rau muống và tôm tươi.'),
-- Nộm rau muống
(152, 1, 'Chuẩn bị nguyên liệu: Rửa sạch rau muống, ngâm nước muối loãng 5 phút, để ráo. Chần rau muống trong nước sôi 1 phút, vớt ra ngâm nước đá để giữ độ giòn, để ráo, cắt khúc 3cm. Tỏi băm nhuyễn, ớt thái lát mỏng.'),
(152, 2, 'Pha nước mắm trộn: Trộn 2 muỗng canh nước mắm, 1 muỗng canh đường, 1 muỗng canh nước cốt chanh, tỏi băm, và ớt thái lát trong bát nhỏ. Khuấy đều cho đường tan, nếm thử để đảm bảo vị chua ngọt cay cân bằng.'),
(152, 3, 'Trộn nộm: Cho rau muống vào tô lớn, rưới nước mắm lên trên, trộn đều bằng tay hoặc đũa để rau thấm gia vị. Để nộm nghỉ 5 phút trong tủ lạnh để vị ngấm và giữ độ giòn. Trộn nhẹ để tránh làm nát rau.'),
(152, 4, 'Hoàn thiện món nộm: Lấy nộm ra, kiểm tra lại vị, điều chỉnh nếu cần. Dọn nộm ra đĩa, trang trí thêm vài lát ớt hoặc rau mùi. Dùng làm món khai vị hoặc ăn kèm cơm trắng để thưởng thức vị giòn ngọt và chua cay của rau muống.');

-- --------------------------------------
-- 39. Rau răm (class_index: 39)
-- --------------------------------------

-- Chèn vào bảng vegetables
INSERT INTO vegetables (class_index, vietnamese_name, scientific_name, description, nutritional_info)
VALUES (
    38, 
    'Rau răm', 
    'Persicaria odorata', 
    'Rau răm là một loại rau gia vị thuộc họ Rau răm (Polygonaceae), phổ biến trong ẩm thực Việt Nam. Lá nhỏ, màu xanh, mùi thơm cay nồng, vị hơi chát. Rau răm được dùng trong gỏi, cháo, hoặc ăn kèm vịt luộc, trứng vịt lộn, là nguyên liệu tăng hương vị đặc trưng.',
    'Rau răm giàu vitamin C, chất chống oxy hóa, và hợp chất kháng khuẩn. Rau hỗ trợ tiêu hóa, tăng cường miễn dịch, và có tác dụng kháng viêm. Rau răm cũng chứa sắt, giúp ngăn ngừa thiếu máu. Với lượng calo thấp, rau răm là lựa chọn tuyệt vời để tăng hương vị.'
);

-- Chèn vào bảng vegetable_nutritional_points
INSERT INTO vegetable_nutritional_points (vegetable_id, point_text, display_order)
VALUES 
(39, 'Vitamin C (50% DV trong 100g): Tăng cường miễn dịch, bảo vệ tế bào.', 1),
(39, 'Chất chống oxy hóa: Giảm viêm, bảo vệ tế bào khỏi tổn thương.', 2),
(39, 'Sắt (2mg trong 100g): Ngăn ngừa thiếu máu, hỗ trợ tạo hồng cầu.', 3),
(39, 'Hợp chất kháng khuẩn: Hỗ trợ tiêu hóa, chống nhiễm khuẩn.', 4),
(39, 'Kali (300mg trong 100g): Cân bằng huyết áp, hỗ trợ cơ bắp.', 5),
(39, 'Ít calo (24 kcal trong 100g): Phù hợp để tăng hương vị món ăn.', 6);

-- Chèn vào bảng vegetable_select_points
INSERT INTO vegetable_select_points (vegetable_id, point_text, display_order)
VALUES 
(39, 'Lá xanh tươi, không úa: Chọn rau răm có lá xanh đậm, không vàng.', 1),
(39, 'Mùi thơm cay nồng: Rau tươi có mùi mạnh, tránh loại mùi yếu.', 2),
(39, 'Thân mềm, không xơ: Rau tươi có thân mềm, dễ bẻ.', 3),
(39, 'Không có đốm nâu: Kiểm tra lá không có vết thâm hoặc hư hỏng.', 4),
(39, 'Tránh rau dập: Chọn bó rau nguyên vẹn, không bị dập nát.', 5);

-- Chèn vào bảng vegetable_preserve_points
INSERT INTO vegetable_preserve_points (vegetable_id, point_text, display_order)
VALUES 
(39, 'Bọc kín trong ngăn mát: Bọc rau răm trong khăn giấy ẩm, bảo quản ở 0-4°C, giữ tươi 5-7 ngày.', 1),
(39, 'Giữ khô trước khi bảo quản: Không rửa rau trước khi cất, tránh ẩm mốc.', 2),
(39, 'Đông lạnh để bảo quản lâu: Rửa sạch, thái nhỏ, đông lạnh ở -18°C, dùng trong 2 tháng.', 3),
(39, 'Kiểm tra định kỳ: Loại bỏ lá úa hoặc hỏng để tránh lây lan.', 4),
(39, 'Tránh để gần trái cây tiết ethylene: Táo, chuối làm rau răm nhanh héo.', 5);

-- Chèn vào bảng recipes
INSERT INTO recipes (name, description, prep_time, cook_time, servings)
VALUES 
('Gỏi gà rau răm', 'Món gỏi tươi mát, với rau răm thơm cay trộn thịt gà, là món khai vị hoặc ăn kèm.', '15 phút', '10 phút', '4 người'),
('Cháo vịt rau răm', 'Món cháo thơm ngon, với rau răm làm điểm nhấn, là món chính bổ dưỡng.', '20 phút', '30 phút', '4 người'),
('Trứng vịt lộn rau răm', 'Món ăn vặt phổ biến, với rau răm ăn kèm trứng vịt lộn, là món ăn nhẹ hấp dẫn.', '10 phút', '20 phút', '4 người'),
('Nộm rau răm tôm', 'Món nộm tươi mát, với rau răm trộn tôm, là món khai vị hoặc ăn kèm.', '15 phút', '10 phút', '4 người');

-- Chèn vào bảng recipe_vegetables
INSERT INTO recipe_vegetables (recipe_id, vegetable_id)
VALUES 
(153, 39),
(154, 39),
(155, 39),
(156, 39);

-- Chèn vào bảng recipe_items
INSERT INTO recipe_items (recipe_id, item_name, quantity, notes, order_index)
VALUES 
-- Gỏi gà rau răm
(153, 'Rau răm', '100g', 'Rửa sạch, thái nhỏ', 1),
(153, 'Thịt gà', '300g', 'Luộc chín, xé sợi', 2),
(153, 'Nước mắm', '2 muỗng canh', 'Chọn loại ngon', 3),
(153, 'Đường', '1 muỗng canh', 'Tạo vị ngọt', 4),
(153, 'Nước cốt chanh', '1 muỗng canh', 'Tạo vị chua', 5),
(153, 'Tỏi', '2 tép (10g)', 'Băm nhỏ', 6),
(153, 'Ớt', '1 quả (5g)', 'Thái lát', 7),
-- Cháo vịt rau răm
(154, 'Rau răm', '50g', 'Rửa sạch, thái nhỏ', 1),
(154, 'Thịt vịt', '300g', 'Luộc chín, thái lát', 2),
(154, 'Gạo', '100g', 'Vo sạch', 3),
(154, 'Nước mắm', '1 muỗng canh', 'Tăng hương vị', 4),
(154, 'Hành lá', '2 nhánh (10g)', 'Thái nhỏ', 5),
(154, 'Nước', '1.5 lít', 'Nước lọc', 6),
-- Trứng vịt lộn rau răm
(155, 'Rau răm', '50g', 'Rửa sạch, để nguyên lá', 1),
(155, 'Trứng vịt lộn', '4 quả', 'Chọn trứng tươi', 2),
(155, 'Muối tiêu', '1 muỗng cà phê', 'Dùng để chấm', 3),
(155, 'Nước', '1 lít', 'Nước lọc để luộc', 4),
-- Nộm rau răm tôm
(156, 'Rau răm', '100g', 'Rửa sạch, thái nhỏ', 1),
(156, 'Tôm tươi', '200g', 'Luộc chín, bóc vỏ', 2),
(156, 'Nước mắm', '2 muỗng canh', 'Chọn loại ngon', 3),
(156, 'Đường', '1 muỗng canh', 'Tạo vị ngọt', 4),
(156, 'Nước cốt chanh', '1 muỗng canh', 'Tạo vị chua', 5),
(156, 'Tỏi', '2 tép (10g)', 'Băm nhỏ', 6),
(156, 'Ớt', '1 quả (5g)', 'Thái lát', 7);

-- Chèn vào bảng recipe_steps
INSERT INTO recipe_steps (recipe_id, step_number, instruction_text)
VALUES 
-- Gỏi gà rau răm
(153, 1, 'Chuẩn bị nguyên liệu: Rửa sạch rau răm, ngâm nước muối loãng 5 phút, để ráo, thái nhỏ. Luộc thịt gà trong nước có chút muối 10 phút, vớt ra, ngâm nước đá 1 phút để thịt săn, xé sợi. Tỏi băm nhuyễn, ớt thái lát mỏng.'),
(153, 2, 'Pha nước mắm trộn: Trộn 2 muỗng canh nước mắm, 1 muỗng canh đường, 1 muỗng canh nước cốt chanh, tỏi băm, và ớt thái lát trong bát nhỏ. Khuấy đều cho đường tan, nếm thử để đảm bảo vị chua ngọt cay cân bằng.'),
(153, 3, 'Trộn gỏi: Cho thịt gà, rau răm vào tô lớn, rưới nước mắm lên trên, trộn đều bằng tay hoặc đũa để thịt và rau thấm gia vị. Để gỏi nghỉ 5 phút trong tủ lạnh để vị ngấm và giữ độ tươi của rau.'),
(153, 4, 'Hoàn thiện món gỏi: Lấy gỏi ra, kiểm tra lại vị, điều chỉnh nếu cần. Dọn gỏi ra đĩa, trang trí thêm vài lá rau răm hoặc ớt thái lát. Dùng làm món khai vị hoặc ăn kèm cơm trắng để thưởng thức vị cay nồng của rau răm và mềm ngọt của gà.'),
-- Cháo vịt rau răm
(154, 1, 'Chuẩn bị nguyên liệu: Rửa sạch rau răm, ngâm nước muối loãng 5 phút, để ráo, thái nhỏ. Luộc thịt vịt trong nước có chút muối 15 phút, vớt ra, thái lát mỏng. Vo sạch gạo, ngâm 30 phút để cháo nhanh nhừ. Hành lá thái nhỏ.'),
(154, 2, 'Nấu cháo: Đun sôi 1.5 lít nước, cho gạo vào, nấu trên lửa nhỏ 20-25 phút, khuấy đều để cháo không dính đáy nồi. Khi gạo nhừ, thêm thịt vịt thái lát, nêm 1 muỗng canh nước mắm, khuấy nhẹ, nếm thử để điều chỉnh vị.'),
(154, 3, 'Hoàn thiện cháo: Rắc hành lá và rau răm thái nhỏ vào nồi, đun thêm 30 giây để rau chín sơ và dậy mùi thơm. Tắt bếp, múc cháo ra bát, rắc thêm tiêu nếu thích.'),
(154, 4, 'Dọn món: Dọn cháo nóng ra bàn, dùng kèm nước mắm nguyên chất hoặc muối tiêu để thưởng thức vị mềm nhừ của cháo, ngọt của thịt vịt, và thơm cay của rau răm.'),
-- Trứng vịt lộn rau răm
(155, 1, 'Chuẩn bị nguyên liệu: Rửa sạch rau răm, ngâm nước muối loãng 5 phút, để ráo, giữ nguyên lá để ăn kèm. Chuẩn bị trứng vịt lộn tươi, kiểm tra bằng cách lắc nhẹ, không có tiếng kêu là trứng tốt.'),
(155, 2, 'Luộc trứng: Đun sôi 1 lít nước, cho trứng vịt lộn vào, luộc trên lửa vừa 18-20 phút để trứng chín đều. Vớt trứng ra, ngâm nước lạnh 2 phút để dễ bóc vỏ.'),
(155, 3, 'Chuẩn bị gia vị: Trộn 1 muỗng cà phê muối với chút tiêu, để làm gia vị chấm. Xếp rau răm ra đĩa nhỏ, đặt cạnh trứng để ăn kèm. Có thể chuẩn bị thêm nước mắm ớt nếu thích.'),
(155, 4, 'Hoàn thiện món: Bóc nhẹ vỏ trứng, để nguyên trong chén nhỏ, rắc muối tiêu lên trên, ăn kèm rau răm. Dùng nóng để thưởng thức vị béo ngậy của trứng và cay nồng của rau răm.'),
-- Nộm rau răm tôm
(156, 1, 'Chuẩn bị nguyên liệu: Rửa sạch rau răm, ngâm nước muối loãng 5 phút, để ráo, thái nhỏ. Luộc tôm trong nước sôi có chút muối 2-3 phút, vớt ra, ngâm nước đá 1 phút để tôm giòn, bóc vỏ. Tỏi băm nhuyễn, ớt thái lát.'),
(156, 2, 'Pha nước mắm trộn: Trộn 2 muỗng canh nước mắm, 1 muỗng canh đường, 1 muỗng canh nước cốt chanh, tỏi băm, và ớt thái lát trong bát nhỏ. Khuấy đều cho đường tan, nếm thử để đảm bảo vị chua ngọt cay cân bằng.'),
(156, 3, 'Trộn nộm: Cho rau răm và tôm vào tô lớn, rưới nước mắm lên trên, trộn đều bằng tay hoặc đũa để rau và tôm thấm gia vị. Để nộm nghỉ 5 phút trong tủ lạnh để vị ngấm và giữ độ tươi.'),
(156, 4, 'Hoàn thiện món nộm: Lấy nộm ra, kiểm tra lại vị, điều chỉnh nếu cần. Dọn nộm ra đĩa, trang trí thêm vài lá rau răm hoặc ớt thái lát. Dùng làm món khai vị hoặc ăn kèm cơm trắng để thưởng thức vị cay nồng của rau răm và ngọt tươi của tôm.');

-- --------------------------------------
-- 40. Rau tía tô (class_index: 39)
-- --------------------------------------

-- Chèn vào bảng vegetables
INSERT INTO vegetables (class_index, vietnamese_name, scientific_name, description, nutritional_info)
VALUES (
    39, 
    'Rau tía tô', 
    'Perilla frutescens', 
    'Rau tía tô là một loại rau gia vị thuộc họ Bạc hà (Lamiaceae), phổ biến trong ẩm thực Việt Nam. Lá màu xanh hoặc tím, mùi thơm nồng, vị cay nhẹ. Rau tía tô được dùng trong gỏi, cháo, hoặc ăn kèm phở, có tác dụng giải cảm và hỗ trợ tiêu hóa.',
    'Rau tía tô giàu vitamin A, vitamin C, và chất chống oxy hóa. Rau hỗ trợ miễn dịch, giảm viêm, và có đặc tính kháng khuẩn. Rau tía tô cũng chứa sắt và canxi, giúp ngăn ngừa thiếu máu và duy trì sức khỏe xương. Với lượng calo thấp, rau tía tô là lựa chọn lành mạnh.'
);

-- Chèn vào bảng vegetable_nutritional_points
INSERT INTO vegetable_nutritional_points (vegetable_id, point_text, display_order)
VALUES 
(40, 'Vitamin A (47% DV trong 100g): Hỗ trợ thị lực và miễn dịch.', 1),
(40, 'Vitamin C (26% DV trong 100g): Tăng cường miễn dịch, bảo vệ tế bào.', 2),
(40, 'Chất chống oxy hóa: Giảm viêm, bảo vệ tế bào khỏi tổn thương.', 3),
(40, 'Sắt (1.3mg trong 100g): Ngăn ngừa thiếu máu, hỗ trợ tạo hồng cầu.', 4),
(40, 'Canxi (230mg trong 100g): Duy trì sức khỏe xương và răng.', 5),
(40, 'Ít calo (23 kcal trong 100g): Phù hợp để tăng hương vị món ăn.', 6);

-- Chèn vào bảng vegetable_select_points
INSERT INTO vegetable_select_points (vegetable_id, point_text, display_order)
VALUES 
(40, 'Lá xanh hoặc tím tươi: Chọn rau tía tô có lá không vàng, không héo.', 1),
(40, 'Mùi thơm nồng: Rau tươi có mùi cay đặc trưng, tránh loại mùi yếu.', 2),
(40, 'Thân mềm, không xơ: Rau tươi có thân dễ bẻ, không cứng.', 3),
(40, 'Không có đốm nâu: Kiểm tra lá không có vết thâm hoặc hư hỏng.', 4),
(40, 'Tránh rau dập: Chọn bó rau nguyên vẹn, không bị dập nát.', 5);

-- Chèn vào bảng vegetable_preserve_points
INSERT INTO vegetable_preserve_points (vegetable_id, point_text, display_order)
VALUES 
(40, 'Bọc kín trong ngăn mát: Bọc rau tía tô trong khăn giấy ẩm, bảo quản ở 0-4°C, giữ tươi 5-7 ngày.', 1),
(40, 'Giữ khô trước khi bảo quản: Không rửa rau trước khi cất, tránh ẩm mốc.', 2),
(40, 'Đông lạnh để bảo quản lâu: Rửa sạch, thái nhỏ, đông lạnh ở -18°C, dùng trong 2 tháng.', 3),
(40, 'Kiểm tra định kỳ: Loại bỏ lá úa hoặc hỏng để tránh lây lan.', 4),
(40, 'Tránh để gần trái cây tiết ethylene: Táo, chuối làm rau tía tô nhanh héo.', 5);

-- Chèn vào bảng recipes
INSERT INTO recipes (name, description, prep_time, cook_time, servings)
VALUES 
('Cháo tía tô', 'Món cháo thơm ngon, với rau tía tô làm điểm nhấn, là món chính giải cảm.', '15 phút', '20 phút', '4 người'),
('Gỏi bò rau tía tô', 'Món gỏi tươi mát, với rau tía tô trộn thịt bò, là món khai vị hấp dẫn.', '15 phút', '10 phút', '4 người'),
('Rau tía tô ăn kèm phở', 'Rau tía tô dùng kèm phở, tăng hương vị và thơm ngon.', '5 phút', '0 phút', '4 người'),
('Nộm rau tía tô', 'Món nộm tươi mát, với rau tía tô trộn nước mắm, là món khai vị hoặc ăn kèm.', '15 phút', '0 phút', '4 người');

-- Chèn vào bảng recipe_vegetables
INSERT INTO recipe_vegetables (recipe_id, vegetable_id)
VALUES 
(157, 40),
(158, 40),
(159, 40),
(160, 40);

-- Chèn vào bảng recipe_items
INSERT INTO recipe_items (recipe_id, item_name, quantity, notes, order_index)
VALUES 
-- Cháo tía tô
(157, 'Rau tía tô', '100g', 'Rửa sạch, thái nhỏ', 1),
(157, 'Gạo', '100g', 'Vo sạch', 2),
(157, 'Nước mắm', '1 muỗng canh', 'Tăng hương vị', 3),
(157, 'Hành lá', '2 nhánh (10g)', 'Thái nhỏ', 4),
(157, 'Nước', '1.5 lít', 'Nước lọc', 5),
-- Gỏi bò rau tía tô
(158, 'Rau tía tô', '100g', 'Rửa sạch, thái nhỏ', 1),
(158, 'Thịt bò', '200g', 'Thái mỏng, xào chín', 2),
(158, 'Nước mắm', '2 muỗng canh', 'Chọn loại ngon', 3),
(158, 'Đường', '1 muỗng canh', 'Tạo vị ngọt', 4),
(158, 'Nước cốt chanh', '1 muỗng canh', 'Tạo vị chua', 5),
(158, 'Tỏi', '2 tép (10g)', 'Băm nhỏ', 6),
(158, 'Ớt', '1 quả (5g)', 'Thái lát', 7),
-- Rau tía tô ăn kèm phở
(159, 'Rau tía tô', '100g', 'Rửa sạch, để nguyên lá', 1),
(159, 'Nước mắm', '2 muỗng canh', 'Dùng làm nước chấm', 2),
(159, 'Tỏi', '2 tép (10g)', 'Băm nhỏ, cho vào nước chấm', 3),
-- Nộm rau tía tô
(160, 'Rau tía tô', '100g', 'Rửa sạch, thái nhỏ', 1),
(160, 'Nước mắm', '2 muỗng canh', 'Chọn loại ngon', 2),
(160, 'Đường', '1 muỗng canh', 'Tạo vị ngọt', 3),
(160, 'Nước cốt chanh', '1 muỗng canh', 'Tạo vị chua', 4),
(160, 'Tỏi', '2 tép (10g)', 'Băm nhỏ', 5),
(160, 'Ớt', '1 quả (5g)', 'Thái lát', 6);

-- Chèn vào bảng recipe_steps
INSERT INTO recipe_steps (recipe_id, step_number, instruction_text)
VALUES 
-- Cháo tía tô
(157, 1, 'Chuẩn bị nguyên liệu: Rửa sạch rau tía tô, ngâm nước muối loãng 5 phút, để ráo, thái nhỏ. Vo sạch gạo, ngâm 30 phút để cháo nhanh nhừ. Hành lá rửa sạch, thái nhỏ để rắc lên cháo.'),
(157, 2, 'Nấu cháo: Đun sôi 1.5 lít nước, cho gạo vào, nấu trên lửa nhỏ 20-25 phút, khuấy đều để cháo không dính đáy nồi. Khi gạo nhừ, nêm 1 muỗng canh nước mắm, khuấy nhẹ, nếm thử để điều chỉnh vị.'),
(157, 3, 'Hoàn thiện cháo: Rắc hành lá và rau tía tô thái nhỏ vào nồi, đun thêm 30 giây để rau chín sơ và dậy mùi thơm. Tắt bếp, múc cháo ra bát, rắc thêm tiêu nếu thích.'),
(157, 4, 'Dọn món: Dọn cháo nóng ra bàn, dùng kèm nước mắm nguyên chất để thưởng thức vị mềm nhừ của cháo và thơm cay của rau tía tô, rất tốt cho người bị cảm.'),
-- Gỏi bò rau tía tô
(158, 1, 'Chuẩn bị nguyên liệu: Rửa sạch rau tía tô, ngâm nước muối loãng 5 phút, để ráo, thái nhỏ. Thịt bò thái mỏng, ướp với chút muối và tiêu 5 phút. Tỏi băm nhuyễn, ớt thái lát mỏng.'),
(158, 2, 'Xào bò: Đun nóng 1 muỗng canh dầu ăn trong chảo, cho thịt bò vào xào trên lửa lớn 1-2 phút đến khi bò chín tái, vớt ra để nguội. Tránh xào quá lâu để bò không dai.'),
(158, 3, 'Pha nước mắm trộn: Trộn 2 muỗng canh nước mắm, 1 muỗng canh đường, 1 muỗng canh nước cốt chanh, tỏi băm, và ớt thái lát trong bát nhỏ. Khuấy đều cho đường tan, nếm thử để đảm bảo vị chua ngọt cay cân bằng.'),
(158, 4, 'Hoàn thiện món gỏi: Cho thịt bò, rau tía tô vào tô lớn, rưới nước mắm lên trên, trộn đều. Dọn gỏi ra đĩa, trang trí thêm vài lá rau tía tô. Dùng làm món khai vị để thưởng thức vị cay nồng của rau và mềm ngọt của bò.'),
-- Rau tía tô ăn kèm phở
(159, 1, 'Chuẩn bị nguyên liệu: Rửa sạch rau tía tô, ngâm nước muối loãng 5 phút, để ráo, giữ nguyên lá để ăn kèm. Tỏi bóc vỏ, băm nhuyễn để pha nước chấm. Chuẩn bị bát phở (phở bò hoặc gà) để dùng kèm rau.'),
(159, 2, 'Pha nước chấm: Trộn 2 muỗng canh nước mắm với tỏi băm, có thể thêm ớt, chanh, hoặc đường tùy khẩu vị. Khuấy đều, nếm thử để đảm bảo vị mặn thơm, phù hợp với phở.'),
(159, 3, 'Sắp xếp rau: Xếp rau tía tô ra đĩa, trình bày đẹp mắt, đặt cạnh bát phở. Đảm bảo rau khô ráo để tránh làm loãng nước phở. Có thể thêm húng quế, ngò gai để tăng hương vị.'),
(159, 4, 'Hoàn thiện món: Khi ăn phở, thêm rau tía tô vào bát, trộn đều để rau thấm nước dùng. Dùng kèm nước mắm tỏi, thưởng thức vị thơm cay của rau tía tô hòa quyện với nước phở đậm đà.'),
-- Nộm rau tía tô
(160, 1, 'Chuẩn bị nguyên liệu: Rửa sạch rau tía tô, ngâm nước muối loãng 5 phút, để ráo, thái nhỏ. Tỏi băm nhuyễn, ớt thái lát mỏng để pha nước mắm. Chọn rau tía tô tươi, lá non để nộm thơm và giòn.'),
(160, 2, 'Pha nước mắm trộn: Trộn 2 muỗng canh nước mắm, 1 muỗng canh đường, 1 muỗng canh nước cốt chanh, tỏi băm, và ớt thái lát trong bát nhỏ. Khuấy đều cho đường tan, nếm thử để đảm bảo vị chua ngọt cay cân bằng.'),
(160, 3, 'Trộn nộm: Cho rau tía tô vào tô lớn, rưới nước mắm lên trên, trộn đều bằng tay hoặc đũa để rau thấm gia vị. Để nộm nghỉ 5 phút trong tủ lạnh để vị ngấm và giữ độ tươi.'),
(160, 4, 'Hoàn thiện món nộm: Lấy nộm ra, kiểm tra lại vị, điều chỉnh nếu cần. Dọn nộm ra đĩa, trang trí thêm vài lá rau tía tô hoặc ớt thái lát. Dùng làm món khai vị hoặc ăn kèm cơm trắng để thưởng thức vị cay nồng của rau tía tô.');

-- --------------------------------------
-- 41. Rau xà lách (class_index: 40)
-- --------------------------------------

-- Chèn vào bảng vegetables
INSERT INTO vegetables (class_index, vietnamese_name, scientific_name, description, nutritional_info)
VALUES (
    40, 
    'Rau xà lách', 
    'Lactuca sativa', 
    'Rau xà lách là một loại rau lá thuộc họ Cúc (Asteraceae), phổ biến trong ẩm thực Việt Nam. Lá giòn, màu xanh nhạt, vị ngọt nhẹ. Rau xà lách được dùng trong salad, cuốn, hoặc ăn kèm lẩu, là nguyên liệu bổ dưỡng, giàu chất xơ và vitamin.',
    'Rau xà lách giàu vitamin A, vitamin K, và folate. Rau hỗ trợ thị lực, tăng cường sức khỏe xương, và cải thiện tiêu hóa nhờ chất xơ. Rau xà lách cũng chứa nước và ít calo, là lựa chọn lý tưởng cho chế độ ăn lành mạnh.'
);

-- Chèn vào bảng vegetable_nutritional_points
INSERT INTO vegetable_nutritional_points (vegetable_id, point_text, display_order)
VALUES 
(41, 'Vitamin A (74% DV trong 100g): Hỗ trợ thị lực và miễn dịch.', 1),
(41, 'Vitamin K (126% DV trong 100g): Tăng cường sức khỏe xương, đông máu.', 2),
(41, 'Folate (38μg trong 100g): Hỗ trợ phát triển tế bào, tốt cho thai kỳ.', 3),
(41, 'Chất xơ (1.3g trong 100g): Cải thiện tiêu hóa, ngăn ngừa táo bón.', 4),
(41, 'Nước (95%): Giữ cơ thể đủ nước, hỗ trợ trao đổi chất.', 5),
(41, 'Ít calo (15 kcal trong 100g): Phù hợp cho chế độ ăn kiêng.', 6);

-- Chèn vào bảng vegetable_select_points
INSERT INTO vegetable_select_points (vegetable_id, point_text, display_order)
VALUES 
(41, 'Lá xanh tươi, giòn: Chọn rau xà lách có lá xanh nhạt, không héo.', 1),
(41, 'Không có đốm nâu: Kiểm tra lá không có vết thâm hoặc hư hỏng.', 2),
(41, 'Thân cứng, không mềm: Rau tươi có thân chắc, không nhũn.', 3),
(41, 'Mùi thơm nhẹ: Rau xà lách tươi có mùi dịu, tránh mùi chua.', 4),
(41, 'Tránh lá dập: Chọn bó rau nguyên vẹn, không bị dập nát.', 5);

-- Chèn vào bảng vegetable_preserve_points
INSERT INTO vegetable_preserve_points (vegetable_id, point_text, display_order)
VALUES 
(41, 'Bọc kín trong ngăn mát: Bọc rau xà lách trong khăn giấy khô, bảo quản ở 0-4°C, giữ tươi 7-10 ngày.', 1),
(41, 'Giữ khô trước khi bảo quản: Không rửa rau trước khi cất, tránh ẩm mốc.', 2),
(41, 'Không đông lạnh: Rau xà lách dễ hỏng khi đông lạnh, nên dùng tươi.', 3),
(41, 'Kiểm tra định kỳ: Loại bỏ lá úa hoặc hỏng để tránh lây lan.', 4),
(41, 'Tránh để gần trái cây tiết ethylene: Táo, chuối làm rau xà lách nhanh héo.', 5);

-- Chèn vào bảng recipes
INSERT INTO recipes (name, description, prep_time, cook_time, servings)
VALUES 
('Salad rau xà lách', 'Món salad tươi mát, với rau xà lách trộn sốt dầu giấm, là món khai vị lành mạnh.', '10 phút', '0 phút', '4 người'),
('Rau xà lách cuốn tôm', 'Món cuốn hấp dẫn, với rau xà lách và tôm, dùng kèm nước chấm.', '15 phút', '10 phút', '4 người'),
('Rau xà lách ăn kèm lẩu', 'Rau xà lách dùng kèm lẩu, tăng hương vị và thanh mát.', '5 phút', '0 phút', '4 người'),
('Sandwich rau xà lách', 'Món sandwich đơn giản, với rau xà lách tươi, là món ăn nhẹ bổ dưỡng.', '10 phút', '0 phút', '4 người');

-- Chèn vào bảng recipe_vegetables
INSERT INTO recipe_vegetables (recipe_id, vegetable_id)
VALUES 
(161, 41),
(162, 41),
(163, 41),
(164, 41);

-- Chèn vào bảng recipe_items
INSERT INTO recipe_items (recipe_id, item_name, quantity, notes, order_index)
VALUES 
-- Salad rau xà lách
(161, 'Rau xà lách', '200g', 'Rửa sạch, để ráo', 1),
(161, 'Dầu ô liu', '2 muỗng canh', 'Dùng làm sốt', 2),
(161, 'Giấm balsamic', '1 muỗng canh', 'Tạo vị chua', 3),
(161, 'Muối', '1/4 muỗng cà phê', 'Điều chỉnh theo khẩu vị', 4),
(161, 'Tiêu', '1/4 muỗng cà phê', 'Tăng hương vị', 5),
-- Rau xà lách cuốn tôm
(162, 'Rau xà lách', '200g', 'Rửa sạch, để nguyên lá', 1),
(162, 'Tôm tươi', '200g', 'Luộc chín, bóc vỏ', 2),
(162, 'Bánh tráng', '8 miếng', 'Dùng để cuốn', 3),
(162, 'Nước mắm', '2 muỗng canh', 'Dùng làm nước chấm', 4),
(162, 'Tỏi', '2 tép (10g)', 'Băm nhỏ', 5),
(162, 'Đường', '1 muỗng canh', 'Tạo vị ngọt', 6),
-- Rau xà lách ăn kèm lẩu
(163, 'Rau xà lách', '200g', 'Rửa sạch, để nguyên lá', 1),
(163, 'Nước mắm', '2 muỗng canh', 'Dùng làm nước chấm', 2),
(163, 'Tỏi', '2 tép (10g)', 'Băm nhỏ, cho vào nước chấm', 3),
-- Sandwich rau xà lách
(164, 'Rau xà lách', '100g', 'Rửa sạch, để nguyên lá', 1),
(164, 'Bánh mì', '4 lát', 'Chọn bánh mì sandwich', 2),
(164, 'Thịt nguội', '100g', 'Thái mỏng', 3),
(164, 'Mayonnaise', '2 muỗng canh', 'Tạo vị béo', 4),
(164, 'Muối', '1/4 muỗng cà phê', 'Điều chỉnh theo khẩu vị', 5);

-- Chèn vào bảng recipe_steps
INSERT INTO recipe_steps (recipe_id, step_number, instruction_text)
VALUES 
-- Salad rau xà lách
(161, 1, 'Chuẩn bị nguyên liệu: Rửa sạch rau xà lách dưới vòi nước, ngâm nước muối loãng 5 phút, để ráo, xé nhỏ vừa ăn. Chuẩn bị bát nhỏ để pha sốt. Chọn rau xà lách tươi, lá giòn để salad ngon.'),
(161, 2, 'Pha sốt: Trộn 2 muỗng canh dầu ô liu, 1 muỗng canh giấm balsamic, 1/4 muỗng cà phê muối, và 1/4 muỗng cà phê tiêu trong bát nhỏ. Khuấy đều để tạo sốt mịn, nếm thử để điều chỉnh vị.'),
(161, 3, 'Trộn salad: Cho rau xà lách vào tô lớn, rưới sốt lên trên, trộn đều bằng tay hoặc đũa để rau thấm sốt. Trộn nhẹ để tránh làm dập lá rau. Có thể thêm cà chua bi hoặc dưa leo nếu thích.'),
(161, 4, 'Hoàn thiện món salad: Dọn salad ra đĩa, rắc thêm chút tiêu nếu muốn. Dùng ngay để thưởng thức vị giòn tươi của rau xà lách và sốt dầu giấm thơm ngon, rất phù hợp làm món khai vị.'),
-- Rau xà lách cuốn tôm
(162, 1, 'Chuẩn bị nguyên liệu: Rửa sạch rau xà lách, ngâm nước muối loãng 5 phút, để ráo, giữ nguyên lá. Luộc tôm trong nước sôi có chút muối 2-3 phút, vớt ra, ngâm nước đá 1 phút, bóc vỏ. Tỏi băm nhuyễn.'),
(162, 2, 'Pha nước chấm: Trộn 2 muỗng canh nước mắm, 1 muỗng canh đường, 1 muỗng canh nước lọc, tỏi băm, và chút ớt nếu thích. Khuấy đều, nếm thử để đảm bảo vị chua ngọt mặn cân bằng.'),
(162, 3, 'Cuốn bánh tráng: Nhúng bánh tráng vào nước ấm 5 giây để mềm, đặt lên đĩa. Xếp 1 lá xà lách, 2-3 con tôm lên bánh tráng, cuộn chặt, gấp hai đầu để kín nhân. Lặp lại cho các cuốn còn lại.'),
(162, 4, 'Hoàn thiện món cuốn: Xếp các cuốn ra đĩa, trình bày đẹp mắt. Dọn kèm nước chấm, dùng ngay để thưởng thức vị giòn của rau xà lách, ngọt của tôm, và đậm đà của nước chấm.'),
-- Rau xà lách ăn kèm lẩu
(163, 1, 'Chuẩn bị nguyên liệu: Rửa sạch rau xà lách, ngâm nước muối loãng 5 phút, để ráo, giữ nguyên lá. Tỏi bóc vỏ, băm nhuyễn để pha nước chấm. Chuẩn bị nồi lẩu (lẩu chua, lẩu hải sản) để ăn kèm rau.'),
(163, 2, 'Pha nước chấm: Trộn 2 muỗng canh nước mắm với tỏi băm, có thể thêm ớt, chanh, hoặc đường tùy khẩu vị. Khuấy đều, nếm thử để đảm bảo vị mặn thơm, phù hợp với lẩu.'),
(163, 3, 'Sắp xếp rau: Xếp rau xà lách ra đĩa, trình bày đẹp mắt, đặt cạnh nồi lẩu. Đảm bảo rau khô ráo để tránh làm đục nước lẩu khi nhúng. Có thể thêm rau muống, cải thảo nếu muốn.'),
(163, 4, 'Hoàn thiện món: Khi ăn lẩu, nhúng rau xà lách vào nước lẩu sôi 5-10 giây để rau chín sơ, giữ độ giòn. Chấm rau với nước mắm tỏi, dùng kèm thịt, hải sản để thưởng thức vị thanh mát của rau xà lách.'),
-- Sandwich rau xà lách
(164, 1, 'Chuẩn bị nguyên liệu: Rửa sạch rau xà lách, ngâm nước muối loãng 5 phút, để ráo, giữ nguyên lá. Thịt nguội thái mỏng, chuẩn bị bánh mì sandwich và mayonnaise. Chọn rau xà lách tươi để sandwich giòn.'),
(164, 2, 'Phết sốt: Phết 1 muỗng canh mayonnaise lên mỗi lát bánh mì, rắc chút muối và tiêu để tăng hương vị. Có thể thêm mù tạt hoặc sốt cà chua nếu thích.'),
(164, 3, 'Xếp sandwich: Đặt 1-2 lá xà lách lên lát bánh mì, thêm thịt nguội thái mỏng, đậy lát bánh mì còn lại. Nhẹ nhàng ấn xuống để sandwich gọn gàng. Có thể thêm cà chua hoặc dưa leo nếu muốn.'),
(164, 4, 'Hoàn thiện món: Cắt sandwich theo đường chéo để dễ ăn, xếp ra đĩa. Dùng ngay để thưởng thức vị giòn của rau xà lách, béo của mayonnaise, và thơm ngon của thịt nguội.');

-- --------------------------------------
-- 42. Su hào (class_index: 41)
-- --------------------------------------

-- Chèn vào bảng vegetables
INSERT INTO vegetables (class_index, vietnamese_name, scientific_name, description, nutritional_info)
VALUES (
    41, 
    'Su hào', 
    'Brassica oleracea var. gongylodes', 
    'Su hào là một loại rau củ thuộc họ Cải (Brassicaceae), phổ biến trong ẩm thực Việt Nam. Củ tròn, giòn, vị ngọt nhẹ, lá cũng có thể ăn được. Su hào được dùng trong salad, xào, hoặc nấu canh, là nguyên liệu bổ dưỡng, giàu vitamin và chất xơ.',
    'Su hào giàu vitamin C, chất xơ, và kali. Củ hỗ trợ miễn dịch, cải thiện tiêu hóa, và cân bằng huyết áp. Su hào cũng chứa glucosinolate, có đặc tính chống ung thư. Với lượng calo thấp, su hào là lựa chọn lý tưởng cho chế độ ăn lành mạnh.'
);

-- Chèn vào bảng vegetable_nutritional_points
INSERT INTO vegetable_nutritional_points (vegetable_id, point_text, display_order)
VALUES 
(42, 'Vitamin C (62mg trong 100g): Tăng cường miễn dịch, bảo vệ tế bào.', 1),
(42, 'Chất xơ (3.6g trong 100g): Cải thiện tiêu hóa, ngăn ngừa táo bón.', 2),
(42, 'Kali (350mg trong 100g): Cân bằng huyết áp, hỗ trợ cơ bắp.', 3),
(42, 'Glucosinolate: Hỗ trợ chống ung thư, bảo vệ tế bào.', 4),
(42, 'Vitamin B6 (10% DV trong 100g): Hỗ trợ trao đổi chất, sức khỏe não.', 5),
(42, 'Ít calo (27 kcal trong 100g): Phù hợp cho chế độ ăn kiêng.', 6);

-- Chèn vào bảng vegetable_select_points
INSERT INTO vegetable_select_points (vegetable_id, point_text, display_order)
VALUES 
(42, 'Củ chắc, không nứt: Chọn su hào có vỏ nhẵn, không vết nứt.', 1),
(42, 'Lá xanh tươi: Lá không héo, không vàng, cho thấy củ tươi.', 2),
(42, 'Kích thước vừa: Su hào nhỏ đến trung bình thường giòn, ít xơ.', 3),
(42, 'Không có mùi lạ: Su hào tươi không có mùi hắc hoặc chua.', 4),
(42, 'Tránh củ mềm: Củ không nên mềm hoặc có đốm thâm.', 5);

-- Chèn vào bảng vegetable_preserve_points
INSERT INTO vegetable_preserve_points (vegetable_id, point_text, display_order)
VALUES 
(42, 'Bảo quản ngăn mát: Bọc su hào trong túi nhựa, giữ ở 0-4°C, tươi 2-4 tuần.', 1),
(42, 'Tách lá và củ: Lá bảo quản riêng trong khăn giấy ẩm, dùng trong 5-7 ngày.', 2),
(42, 'Đông lạnh để bảo quản lâu: Thái lát, chần 2 phút, đông lạnh ở -18°C, dùng trong 6 tháng.', 3),
(42, 'Kiểm tra định kỳ: Loại bỏ phần củ hỏng để tránh lây lan.', 4),
(42, 'Tránh để gần trái cây tiết ethylene: Táo, chuối làm su hào nhanh hỏng.', 5);

-- Chèn vào bảng recipes
INSERT INTO recipes (name, description, prep_time, cook_time, servings)
VALUES 
('Su hào xào thịt bò', 'Món xào thơm ngon, với su hào giòn và thịt bò mềm, là món chính hấp dẫn.', '15 phút', '10 phút', '4 người'),
('Salad su hào', 'Món salad tươi mát, với su hào trộn sốt chua ngọt, là món khai vị lành mạnh.', '10 phút', '0 phút', '4 người'),
('Canh su hào nấu xương', 'Món canh ngọt thanh, với su hào và xương heo, là món phụ bổ dưỡng.', '15 phút', '30 phút', '4 người'),
('Su hào muối chua', 'Món muối chua giòn, với su hào ngâm nước mắm, là món ăn kèm hấp dẫn.', '15 phút', '0 phút', '4 người');

-- Chèn vào bảng recipe_vegetables
INSERT INTO recipe_vegetables (recipe_id, vegetable_id)
VALUES 
(165, 42),
(166, 42),
(167, 42),
(168, 42);

-- Chèn vào bảng recipe_items
INSERT INTO recipe_items (recipe_id, item_name, quantity, notes, order_index)
VALUES 
-- Su hào xào thịt bò
(165, 'Su hào', '300g', 'Gọt vỏ, thái sợi', 1),
(165, 'Thịt bò', '200g', 'Thái mỏng', 2),
(165, 'Tỏi', '2 tép (10g)', 'Băm nhỏ', 3),
(165, 'Dầu ăn', '2 muỗng canh', 'Dùng để xào', 4),
(165, 'Nước mắm', '1 muỗng canh', 'Tăng hương vị', 5),
(165, 'Muối', '1/4 muỗng cà phê', 'Điều chỉnh theo khẩu vị', 6),
-- Salad su hào
(166, 'Su hào', '200g', 'Gọt vỏ, thái sợi', 1),
(166, 'Nước mắm', '2 muỗng canh', 'Chọn loại ngon', 2),
(166, 'Đường', '1 muỗng canh', 'Tạo vị ngọt', 3),
(166, 'Nước cốt chanh', '1 muỗng canh', 'Tạo vị chua', 4),
(166, 'Tỏi', '2 tép (10g)', 'Băm nhỏ', 5),
(166, 'Ớt', '1 quả (5g)', 'Thái lát', 6),
-- Canh su hào nấu xương
(167, 'Su hào', '200g', 'Gọt vỏ, thái miếng', 1),
(167, 'Xương heo', '300g', 'Rửa sạch, chần sơ', 2),
(167, 'Nước mắm', '1 muỗng canh', 'Chọn loại ngon', 3),
(167, 'Hành lá', '2 nhánh (10g)', 'Thái nhỏ', 4),
(167, 'Nước', '1.5 lít', 'Nước lọc', 5),
-- Su hào muối chua
(168, 'Su hào', '300g', 'Gọt vỏ, thái sợi', 1),
(168, 'Nước mắm', '2 muỗng canh', 'Chọn loại ngon', 2),
(168, 'Đường', '2 muỗng canh', 'Tạo vị ngọt', 3),
(168, 'Giấm', '2 muỗng canh', 'Tạo vị chua', 4),
(168, 'Tỏi', '2 tép (10g)', 'Thái lát', 5),
(168, 'Ớt', '1 quả (5g)', 'Thái lát', 6);

-- Chèn vào bảng recipe_steps
INSERT INTO recipe_steps (recipe_id, step_number, instruction_text)
VALUES 
-- Su hào xào thịt bò
(165, 1, 'Chuẩn bị nguyên liệu: Gọt vỏ su hào, rửa sạch, thái sợi mỏng. Thịt bò thái mỏng, ướp với chút muối và tiêu 5 phút. Tỏi bóc vỏ, băm nhuyễn để phi thơm. Chọn su hào tươi để món xào giòn.'),
(165, 2, 'Xào bò: Đun nóng 1 muỗng canh dầu ăn trong chảo, cho thịt bò vào xào trên lửa lớn 1-2 phút đến khi bò chín tái, vớt ra để nguội. Tránh xào quá lâu để bò không dai.'),
(165, 3, 'Xào su hào: Thêm 1 muỗng canh dầu ăn vào chảo, phi thơm tỏi băm 20 giây, cho su hào vào xào trên lửa lớn 3-4 phút đến khi su hào mềm nhưng vẫn giòn. Nêm 1 muỗng canh nước mắm và 1/4 muỗng cà phê muối, đảo đều.'),
(165, 4, 'Hoàn thiện món xào: Cho thịt bò trở lại chảo, xào nhanh 1 phút để bò thấm gia vị. Tắt bếp, dọn ra đĩa, dùng nóng với cơm trắng để thưởng thức vị giòn ngọt của su hào và mềm thơm của bò.'),
-- Salad su hào
(166, 1, 'Chuẩn bị nguyên liệu: Gọt vỏ su hào, rửa sạch, thái sợi mỏng. Tỏi băm nhuyễn, ớt thái lát mỏng để pha sốt. Chọn su hào non để salad giòn và ít xơ.'),
(166, 2, 'Pha sốt: Trộn 2 muỗng canh nước mắm, 1 muỗng canh đường, 1 muỗng canh nước cốt chanh, tỏi băm, và ớt thái lát trong bát nhỏ. Khuấy đều cho đường tan, nếm thử để đảm bảo vị chua ngọt cay cân bằng.'),
(166, 3, 'Trộn salad: Cho su hào vào tô lớn, rưới sốt lên trên, trộn đều bằng tay hoặc đũa để su hào thấm gia vị. Để salad nghỉ 5 phút trong tủ lạnh để vị ngấm và giữ độ giòn.'),
(166, 4, 'Hoàn thiện món salad: Lấy salad ra, kiểm tra lại vị, điều chỉnh nếu cần. Dọn salad ra đĩa, trang trí thêm vài lát ớt hoặc rau mùi. Dùng làm món khai vị để thưởng thức vị giòn ngọt và chua cay của su hào.'),
-- Canh su hào nấu xương
(167, 1, 'Chuẩn bị nguyên liệu: Gọt vỏ su hào, rửa sạch, thái miếng vừa ăn. Xương heo rửa sạch, chần qua nước sôi 2 phút để loại bỏ bọt bẩn, rửa lại. Hành lá rửa sạch, thái nhỏ.'),
(167, 2, 'Nấu nước dùng: Đun sôi 1.5 lít nước, cho xương heo vào, hầm trên lửa nhỏ 20-25 phút để nước ngọt. Vớt bọt thường xuyên để nước dùng trong. Nêm 1 muỗng canh nước mắm, khuấy nhẹ.'),
(167, 3, 'Nấu canh: Cho su hào vào nồi, nấu trên lửa vừa 5-7 phút đến khi su hào mềm nhưng vẫn giòn. Nếm thử, điều chỉnh gia vị nếu cần. Su hào non sẽ nấu nhanh hơn và ngọt hơn.'),
(167, 4, 'Hoàn thiện món canh: Rắc hành lá thái nhỏ vào nồi, đun thêm 30 giây để hành chín sơ. Tắt bếp, múc canh ra bát, dùng nóng với cơm trắng để thưởng thức vị ngọt thanh của su hào và nước dùng.'),
-- Su hào muối chua
(168, 1, 'Chuẩn bị nguyên liệu: Gọt vỏ su hào, rửa sạch, thái sợi mỏng. Tỏi và ớt thái lát mỏng. Chuẩn bị lọ thủy tinh sạch, khử trùng bằng nước sôi để muối chua.'),
(168, 2, 'Pha nước ngâm: Trộn 2 muỗng canh nước mắm, 2 muỗng canh đường, 2 muỗng canh giấm, và 100ml nước lọc trong bát nhỏ. Khuấy đều cho đường tan, nếm thử để đảm bảo vị chua ngọt mặn cân bằng.'),
(168, 3, 'Ngâm su hào: Xếp su hào, tỏi, và ớt vào lọ thủy tinh, đổ nước ngâm vào sao cho ngập su hào. Đậy kín nắp, để ở nhiệt độ phòng 1-2 ngày để su hào lên men nhẹ và giòn.'),
(168, 4, 'Hoàn thiện món: Sau khi ngâm, kiểm tra độ chua, bảo quản lọ trong tủ lạnh, dùng trong 1-2 tuần. Dọn su hào muối chua ra đĩa, dùng kèm cơm hoặc thịt luộc để thưởng thức vị giòn chua.');

-- --------------------------------------
-- 43. Su su (class_index: 42)
-- --------------------------------------

-- Chèn vào bảng vegetables
INSERT INTO vegetables (class_index, vietnamese_name, scientific_name, description, nutritional_info)
VALUES (
    42, 
    'Su su', 
    'Sechium edule', 
    'Su su là một loại rau củ thuộc họ Bầu bí (Cucurbitaceae), phổ biến trong ẩm thực Việt Nam. Quả màu xanh, giòn, vị nhạt, có thể ăn cả lá và ngọn. Su su được dùng trong xào, canh, hoặc luộc, là nguyên liệu bổ dưỡng, giàu chất xơ và vitamin.',
    'Su su giàu vitamin C, chất xơ, và folate. Củ hỗ trợ miễn dịch, cải thiện tiêu hóa, và tốt cho sức khỏe tim mạch. Su su cũng chứa nước và ít calo, là lựa chọn lý tưởng cho chế độ ăn lành mạnh.'
);

-- Chèn vào bảng vegetable_nutritional_points
INSERT INTO vegetable_nutritional_points (vegetable_id, point_text, display_order)
VALUES 
(43, 'Vitamin C (12mg trong 100g): Tăng cường miễn dịch, bảo vệ tế bào.', 1),
(43, 'Chất xơ (1.7g trong 100g): Cải thiện tiêu hóa, ngăn ngừa táo bón.', 2),
(43, 'Folate (93μg trong 100g): Hỗ trợ phát triển tế bào, tốt cho thai kỳ.', 3),
(43, 'Kali (125mg trong 100g): Cân bằng huyết áp, hỗ trợ cơ bắp.', 4),
(43, 'Nước (94%): Giữ cơ thể đủ nước, hỗ trợ trao đổi chất.', 5),
(43, 'Ít calo (19 kcal trong 100g): Phù hợp cho chế độ ăn kiêng.', 6);

-- Chèn vào bảng vegetable_select_points
INSERT INTO vegetable_select_points (vegetable_id, point_text, display_order)
VALUES 
(43, 'Quả xanh, chắc: Chọn su su có vỏ nhẵn, không vết thâm.', 1),
(43, 'Lá và ngọn tươi: Lá không héo, ngọn mềm, không xơ.', 2),
(43, 'Kích thước vừa: Su su nhỏ đến trung bình thường giòn, ít hạt.', 3),
(43, 'Không có mùi lạ: Su su tươi không có mùi chua hoặc hắc.', 4),
(43, 'Tránh quả mềm: Quả không nên mềm hoặc có đốm thâm.', 5);

-- Chèn vào bảng vegetable_preserve_points
INSERT INTO vegetable_preserve_points (vegetable_id, point_text, display_order)
VALUES 
(43, 'Bảo quản ngăn mát: Bọc su su trong túi nhựa, giữ ở 0-4°C, tươi 2-3 tuần.', 1),
(43, 'Tách lá và quả: Lá, ngọn bảo quản riêng trong khăn giấy ẩm, dùng trong 5 ngày.', 2),
(43, 'Đông lạnh để bảo quản lâu: Thái lát, chần 2 phút, đông lạnh ở -18°C, dùng trong 6 tháng.', 3),
(43, 'Kiểm tra định kỳ: Loại bỏ phần quả hỏng để tránh lây lan.', 4),
(43, 'Tránh để gần trái cây tiết ethylene: Táo, chuối làm su su nhanh hỏng.', 5);

-- Chèn vào bảng recipes
INSERT INTO recipes (name, description, prep_time, cook_time, servings)
VALUES 
('Su su xào tỏi', 'Món xào đơn giản, với su su giòn và tỏi thơm, là món phụ dễ làm.', '10 phút', '10 phút', '4 người'),
('Canh su su nấu tôm', 'Món canh thanh nhẹ, với su su ngọt và tôm tươi, là món phụ bổ dưỡng.', '10 phút', '10 phút', '4 người'),
('Su su luộc', 'Món luộc đơn giản, với su su giòn, dùng kèm nước chấm, là món phụ lành mạnh.', '5 phút', '5 phút', '4 người'),
('Ngọn su su xào thịt bò', 'Món xào thơm ngon, với ngọn su su giòn và thịt bò mềm, là món chính hấp dẫn.', '15 phút', '10 phút', '4 người');

-- Chèn vào bảng recipe_vegetables
INSERT INTO recipe_vegetables (recipe_id, vegetable_id)
VALUES 
(169, 43),
(170, 43),
(171, 43),
(172, 43);

-- Chèn vào bảng recipe_items
INSERT INTO recipe_items (recipe_id, item_name, quantity, notes, order_index)
VALUES 
-- Su su xào tỏi
(169, 'Su su', '300g', 'Gọt vỏ, thái lát', 1),
(169, 'Tỏi', '3 tép (12g)', 'Băm nhỏ', 2),
(169, 'Dầu ăn', '2 muỗng canh', 'Dùng để xào', 3),
(169, 'Nước mắm', '1 muỗng canh', 'Tăng hương vị', 4),
(169, 'Muối', '1/4 muỗng cà phê', 'Điều chỉnh theo khẩu vị', 5),
-- Canh su su nấu tôm
(170, 'Su su', '200g', 'Gọt vỏ, thái miếng', 1),
(170, 'Tôm tươi', '200g', 'Bóc vỏ, rút chỉ đen', 2),
(170, 'Nước mắm', '1 muỗng canh', 'Chọn loại ngon', 3),
(170, 'Hành lá', '2 nhánh (10g)', 'Thái nhỏ', 4),
(170, 'Nước', '1 lít', 'Nước lọc', 5),
-- Su su luộc
(171, 'Su su', '300g', 'Gọt vỏ, thái miếng', 1),
(171, 'Nước', '2 lít', 'Nước lọc để luộc', 2),
(171, 'Muối', '1/2 muỗng cà phê', 'Cho vào nước luộc', 3),
(171, 'Nước mắm', '2 muỗng canh', 'Dùng làm nước chấm', 4),
-- Ngọn su su xào thịt bò
(172, 'Ngọn su su', '300g', 'Rửa sạch, cắt khúc 5cm', 1),
(172, 'Thịt bò', '200g', 'Thái mỏng', 2),
(172, 'Tỏi', '2 tép (10g)', 'Băm nhỏ', 3),
(172, 'Dầu ăn', '2 muỗng canh', 'Dùng để xào', 4),
(172, 'Nước mắm', '1 muỗng canh', 'Tăng hương vị', 5),
(172, 'Muối', '1/4 muỗng cà phê', 'Điều chỉnh theo khẩu vị', 6);

-- Chèn vào bảng recipe_steps
INSERT INTO recipe_steps (recipe_id, step_number, instruction_text)
VALUES 
-- Su su xào tỏi
(169, 1, 'Chuẩn bị nguyên liệu: Gọt vỏ su su, rửa sạch, thái lát mỏng. Tỏi bóc vỏ, băm nhuyễn để phi thơm. Chọn su su non để món xào giòn và ngọt.'),
(169, 2, 'Phi tỏi: Đun nóng 2 muỗng canh dầu ăn trong chảo, cho tỏi băm vào phi trên lửa vừa 20-30 giây đến khi tỏi vàng nhẹ và dậy mùi thơm. Tránh để tỏi cháy vì sẽ tạo vị đắng.'),
(169, 3, 'Xào su su: Cho su su vào chảo, tăng lửa lớn, xào nhanh 3-4 phút để su su mềm nhưng vẫn giữ độ giòn. Nêm 1 muỗng canh nước mắm và 1/4 muỗng cà phê muối, đảo đều.'),
(169, 4, 'Hoàn thiện món xào: Kiểm tra độ chín của su su, đảm bảo vẫn giòn và không quá mềm. Tắt bếp, dọn ra đĩa, dùng nóng với cơm trắng để thưởng thức vị giòn ngọt của su su và thơm nồng của tỏi.'),
-- Canh su su nấu tôm
(170, 1, 'Chuẩn bị nguyên liệu: Gọt vỏ su su, rửa sạch, thái miếng vừa ăn. Tôm tươi bóc vỏ, rút chỉ đen, rửa sạch với nước muối loãng để khử tanh. Hành lá rửa sạch, thái nhỏ.'),
(170, 2, 'Xào tôm: Đun nóng 1 muỗng canh dầu ăn trong nồi, cho tôm vào xào trên lửa vừa 1-2 phút đến khi tôm chuyển màu hồng. Vớt tôm ra bát để giữ độ giòn.'),
(170, 3, 'Nấu canh: Đổ 1 lít nước lọc vào nồi, đun sôi. Cho su su và tôm vào, nấu trên lửa vừa 5-7 phút để su su mềm và tôm tiết vị ngọt. Nêm 1 muỗng canh nước mắm, khuấy nhẹ, nếm thử để điều chỉnh vị.'),
(170, 4, 'Hoàn thiện món canh: Rắc hành lá thái nhỏ vào nồi, đun thêm 30 giây để hành chín sơ. Tắt bếp, múc canh ra bát, dùng nóng với cơm trắng để thưởng thức vị ngọt thanh của su su và tôm.'),
-- Su su luộc
(171, 1, 'Chuẩn bị nguyên liệu: Gọt vỏ su su, rửa sạch, thái miếng vừa ăn. Chuẩn bị nồi nước luộc và bát nước mắm nguyên chất để chấm. Chọn su su non để luộc sẽ giòn và ngọt.'),
(171, 2, 'Luộc su su: Đun sôi 2 lít nước, thêm 1/2 muỗng cà phê muối để su su giữ màu xanh. Cho su su vào luộc trên lửa vừa 5-7 phút đến khi su su mềm nhưng vẫn giòn. Dùng đũa kiểm tra độ chín.'),
(171, 3, 'Vớt su su: Vớt su su ra, ngâm ngay vào nước đá 1 phút để giữ độ giòn và màu xanh đẹp. Để ráo nước, xếp su su ra đĩa, trình bày đẹp mắt.'),
(171, 4, 'Hoàn thiện món luộc: Pha nước chấm với 2 muỗng canh nước mắm, thêm tỏi băm, ớt, hoặc chanh tùy sở thích. Dọn su su luộc ra bàn, dùng nóng với nước chấm để thưởng thức vị giòn ngọt tự nhiên.'),
-- Ngọn su su xào thịt bò
(172, 1, 'Chuẩn bị nguyên liệu: Rửa sạch ngọn su su, ngâm nước muối loãng 5 phút, để ráo, cắt khúc 5cm. Thịt bò thái mỏng, ướp với chút muối và tiêu 5 phút. Tỏi bóc vỏ, băm nhuyễn.'),
(172, 2, 'Xào bò: Đun nóng 1 muỗng canh dầu ăn trong chảo, cho thịt bò vào xào trên lửa lớn 1-2 phút đến khi bò chín tái, vớt ra để nguội. Tránh xào quá lâu để bò không dai.'),
(172, 3, 'Xào ngọn su su: Thêm 1 muỗng canh dầu ăn vào chảo, phi thơm tỏi băm 20 giây, cho ngọn su su vào xào trên lửa lớn 3-4 phút đến khi ngọn mềm nhưng vẫn giòn. Nêm 1 muỗng canh nước mắm và 1/4 muỗng cà phê muối, đảo đều.'),
(172, 4, 'Hoàn thiện món xào: Cho thịt bò trở lại chảo, xào nhanh 1 phút để bò thấm gia vị. Tắt bếp, dọn ra đĩa, dùng nóng với cơm trắng để thưởng thức vị giòn ngọt của ngọn su su và mềm thơm của bò.');

-- --------------------------------------
-- 44. Thì là (class_index: 43)
-- --------------------------------------

-- Chèn vào bảng vegetables
INSERT INTO vegetables (class_index, vietnamese_name, scientific_name, description, nutritional_info)
VALUES (
    43, 
    'Thì là', 
    'Anethum graveolens', 
    'Thì là là một loại rau gia vị thuộc họ Hoa tán (Apiaceae), phổ biến trong ẩm thực Việt Nam. Lá mảnh, màu xanh, mùi thơm đặc trưng, vị cay nhẹ. Thì là được dùng trong canh, chả cá, hoặc trang trí món ăn, là nguyên liệu tăng hương vị và hỗ trợ tiêu hóa.',
    'Thì là giàu vitamin C, chất chống oxy hóa, và sắt. Rau hỗ trợ miễn dịch, giảm viêm, và ngăn ngừa thiếu máu. Thì là cũng chứa tinh dầu, giúp cải thiện tiêu hóa và thư giãn cơ thể. Với lượng calo thấp, thì là là lựa chọn tuyệt vời để tăng hương vị.'
);

-- Chèn vào bảng vegetable_nutritional_points
INSERT INTO vegetable_nutritional_points (vegetable_id, point_text, display_order)
VALUES 
(44, 'Vitamin C (85% DV trong 100g): Tăng cường miễn dịch, bảo vệ tế bào.', 1),
(44, 'Sắt (6.6mg trong 100g): Ngăn ngừa thiếu máu, hỗ trợ tạo hồng cầu.', 2),
(44, 'Chất chống oxy hóa: Giảm viêm, bảo vệ tế bào khỏi tổn thương.', 3),
(44, 'Tinh dầu (anethole): Hỗ trợ tiêu hóa, giảm đầy hơi.', 4),
(44, 'Canxi (208mg trong 100g): Duy trì sức khỏe xương và răng.', 5),
(44, 'Ít calo (43 kcal trong 100g): Phù hợp để tăng hương vị món ăn.', 6);

-- Chèn vào bảng vegetable_select_points
INSERT INTO vegetable_select_points (vegetable_id, point_text, display_order)
VALUES 
(44, 'Lá xanh tươi, không héo: Chọn thì là có lá xanh đậm, không vàng.', 1),
(44, 'Mùi thơm nồng: Rau tươi có mùi đặc trưng, tránh loại mùi yếu.', 2),
(44, 'Thân mềm, không xơ: Rau tươi có thân dễ bẻ, không cứng.', 3),
(44, 'Không có đốm nâu: Kiểm tra lá không có vết thâm hoặc hư hỏng.', 4),
(44, 'Tránh rau dập: Chọn bó rau nguyên vẹn, không bị dập nát.', 5);

-- Chèn vào bảng vegetable_preserve_points
INSERT INTO vegetable_preserve_points (vegetable_id, point_text, display_order)
VALUES 
(44, 'Bọc kín trong ngăn mát: Bọc thì là trong khăn giấy ẩm, bảo quản ở 0-4°C, giữ tươi 5-7 ngày.', 1),
(44, 'Giữ khô trước khi bảo quản: Không rửa rau trước khi cất, tránh ẩm mốc.', 2),
(44, 'Đông lạnh để bảo quản lâu: Rửa sạch, thái nhỏ, đông lạnh ở -18°C, dùng trong 2 tháng.', 3),
(44, 'Kiểm tra định kỳ: Loại bỏ lá úa hoặc hỏng để tránh lây lan.', 4),
(44, 'Tránh để gần trái cây tiết ethylene: Táo, chuối làm thì là nhanh héo.', 5);

-- Chèn vào bảng recipes
INSERT INTO recipes (name, description, prep_time, cook_time, servings)
VALUES 
('Canh cá thì là', 'Món canh thơm ngon, với thì là và cá, là món phụ bổ dưỡng.', '15 phút', '15 phút', '4 người'),
('Chả cá thì là', 'Món chả cá thơm lừng, với thì là làm điểm nhấn, là món chính hấp dẫn.', '20 phút', '15 phút', '4 người'),
('Trứng chiên thì là', 'Món trứng đơn giản, với thì là thơm, là món phụ dễ làm.', '10 phút', '5 phút', '4 người'),
('Canh tôm thì là', 'Món canh thanh nhẹ, với thì là và tôm, là món phụ bổ dưỡng.', '10 phút', '10 phút', '4 người');

-- Chèn vào bảng recipe_vegetables
INSERT INTO recipe_vegetables (recipe_id, vegetable_id)
VALUES 
(173, 44),
(174, 44),
(175, 44),
(176, 44);

-- Chèn vào bảng recipe_items
INSERT INTO recipe_items (recipe_id, item_name, quantity, notes, order_index)
VALUES 
-- Canh cá thì là
(173, 'Thì là', '50g', 'Rửa sạch, thái nhỏ', 1),
(173, 'Cá (cá lóc hoặc cá rô)', '300g', 'Làm sạch, thái lát', 2),
(173, 'Nước mắm', '1 muỗng canh', 'Chọn loại ngon', 3),
(173, 'Hành lá', '2 nhánh (10g)', 'Thái nhỏ', 4),
(173, 'Nước', '1 lít', 'Nước lọc', 5),
-- Chả cá thì là
(174, 'Thì là', '50g', 'Rửa sạch, thái nhỏ', 1),
(174, 'Cá (cá thu hoặc cá lóc)', '300g', 'Xay nhuyễn', 2),
(174, 'Nước mắm', '1 muỗng canh', 'Tăng hương vị', 3),
(174, 'Dầu ăn', '3 muỗng canh', 'Dùng để chiên', 4),
(174, 'Muối', '1/4 muỗng cà phê', 'Điều chỉnh theo khẩu vị', 5),
-- Trứng chiên thì là
(175, 'Thì là', '50g', 'Rửa sạch, thái nhỏ', 1),
(175, 'Trứng gà', '4 quả', 'Đánh tan', 2),
(175, 'Nước mắm', '1 muỗng cà phê', 'Tăng hương vị', 3),
(175, 'Dầu ăn', '2 muỗng canh', 'Dùng để chiên', 4),
(175, 'Muối', '1/4 muỗng cà phê', 'Điều chỉnh theo khẩu vị', 5),
-- Canh tôm thì là
(176, 'Thì là', '50g', 'Rửa sạch, thái nhỏ', 1),
(176, 'Tôm tươi', '200g', 'Bóc vỏ, rút chỉ đen', 2),
(176, 'Nước mắm', '1 muỗng canh', 'Chọn loại ngon', 3),
(176, 'Hành lá', '2 nhánh (10g)', 'Thái nhỏ', 4),
(176, 'Nước', '1 lít', 'Nước lọc', 5);

-- Chèn vào bảng recipe_steps
INSERT INTO recipe_steps (recipe_id, step_number, instruction_text)
VALUES 
-- Canh cá thì là
(173, 1, 'Chuẩn bị nguyên liệu: Rửa sạch thì là, ngâm nước muối loãng 5 phút, để ráo, thái nhỏ. Cá (cá lóc hoặc cá rô) làm sạch, rửa với muối để khử tanh, thái lát mỏng. Hành lá rửa sạch, thái nhỏ. Chọn cá tươi để canh ngọt.'),
(173, 2, 'Xào cá: Đun nóng 1 muỗng canh dầu ăn trong nồi, cho cá vào xào sơ trên lửa vừa 1-2 phút để cá săn lại và bớt tanh. Vớt cá ra bát, giữ lại dầu trong nồi để nấu canh.'),
(173, 3, 'Nấu canh: Đổ 1 lít nước lọc vào nồi, đun sôi. Cho cá vào, nấu trên lửa vừa 5-7 phút để cá chín và nước canh ngọt. Nêm 1 muỗng canh nước mắm, khuấy nhẹ, nếm thử để điều chỉnh vị.'),
(173, 4, 'Hoàn thiện món canh: Rắc thì là và hành lá thái nhỏ vào nồi, đun thêm 30 giây để rau chín sơ và dậy mùi thơm. Tắt bếp, múc canh ra bát, dùng nóng với cơm trắng để thưởng thức vị ngọt thanh của cá và thơm nồng của thì là.'),
-- Chả cá thì là
(174, 1, 'Chuẩn bị nguyên liệu: Rửa sạch thì là, ngâm nước muối loãng 5 phút, để ráo, thái nhỏ. Cá (cá thu hoặc cá lóc) xay nhuyễn, ướp với 1 muỗng canh nước mắm, 1/4 muỗng cà phê muối, và thì là trong 15 phút.'),
(174, 2, 'Tạo hình chả: Trộn đều hỗn hợp cá, dùng tay hoặc muỗng nặn thành từng miếng chả tròn hoặc dẹt, kích cỡ vừa ăn. Đặt chả lên đĩa, chuẩn bị chảo để chiên.'),
(174, 3, 'Chiên chả: Đun nóng 3 muỗng canh dầu ăn trong chảo, cho chả cá vào chiên trên lửa vừa 3-4 phút mỗi mặt đến khi vàng giòn. Lật nhẹ để chả không vỡ, vớt ra để trên giấy thấm dầu.'),
(174, 4, 'Hoàn thiện món chả: Dọn chả cá ra đĩa, trang trí thêm vài nhánh thì là. Dùng nóng với cơm trắng hoặc bún, chấm nước mắm ớt để thưởng thức vị giòn thơm của chả và cay nồng của thì là.'),
-- Trứng chiên thì là
(175, 1, 'Chuẩn bị nguyên liệu: Rửa sạch thì là, ngâm nước muối loãng 5 phút, để ráo, thái nhỏ. Đập 4 quả trứng gà vào bát, thêm 1 muỗng cà phê nước mắm, 1/4 muỗng cà phê muối, và thì là, đánh tan.'),
(175, 2, 'Chuẩn bị chảo: Đun nóng 2 muỗng canh dầu ăn trong chảo chống dính trên lửa vừa. Lắc chảo để dầu phủ đều mặt chảo, đảm bảo trứng không dính.'),
(175, 3, 'Chiên trứng: Đổ hỗn hợp trứng vào chảo, dàn đều, chiên trên lửa vừa 2-3 phút đến khi mặt dưới vàng. Lật trứng, chiên thêm 1-2 phút để trứng chín đều. Tránh chiên quá lâu để trứng không khô.'),
(175, 4, 'Hoàn thiện món trứng: Tắt bếp, chuyển trứng chiên ra đĩa, cắt thành miếng vừa ăn. Dùng nóng với cơm trắng để thưởng thức vị béo mềm của trứng và thơm cay của thì là.'),
-- Canh tôm thì là
(176, 1, 'Chuẩn bị nguyên liệu: Rửa sạch thì là, ngâm nước muối loãng 5 phút, để ráo, thái nhỏ. Tôm tươi bóc vỏ, rút chỉ đen, rửa sạch với nước muối loãng để khử tanh. Hành lá rửa sạch, thái nhỏ.'),
(176, 2, 'Xào tôm: Đun nóng 1 muỗng canh dầu ăn trong nồi, cho tôm vào xào trên lửa vừa 1-2 phút đến khi tôm chuyển màu hồng. Vớt tôm ra bát để giữ độ giòn.'),
(176, 3, 'Nấu canh: Đổ 1 lít nước lọc vào nồi, đun sôi. Cho tôm vào, nấu trên lửa vừa 3-5 phút để tôm tiết vị ngọt. Nêm 1 muỗng canh nước mắm, khuấy nhẹ, nếm thử để điều chỉnh vị.'),
(176, 4, 'Hoàn thiện món canh: Rắc thì là và hành lá thái nhỏ vào nồi, đun thêm 30 giây để rau chín sơ và dậy mùi thơm. Tắt bếp, múc canh ra bát, dùng nóng với cơm trắng để thưởng thức vị ngọt tươi của tôm và thơm nồng của thì là.');

-- --------------------------------------
-- 45. Tỏi (class_index: 44)
-- --------------------------------------

-- Chèn vào bảng vegetables
INSERT INTO vegetables (class_index, vietnamese_name, scientific_name, description, nutritional_info)
VALUES (
    44, 
    'Tỏi', 
    'Allium sativum', 
    'Tỏi là một loại gia vị thuộc họ Hành (Amaryllidaceae), phổ biến trong ẩm thực Việt Nam. Củ nhỏ, tép trắng, mùi thơm nồng, vị cay. Tỏi được dùng để phi thơm, làm nước chấm, hoặc ngâm, là nguyên liệu tăng hương vị và có lợi cho sức khỏe.',
    'Tỏi giàu allicin, chất chống oxy hóa, và vitamin C. Tỏi hỗ trợ miễn dịch, giảm cholesterol, và có đặc tính kháng khuẩn. Tỏi cũng chứa mangan và vitamin B6, giúp tăng cường sức khỏe xương và trao đổi chất. Với lượng calo thấp, tỏi là gia vị bổ dưỡng.'
);

-- Chèn vào bảng vegetable_nutritional_points
INSERT INTO vegetable_nutritional_points (vegetable_id, point_text, display_order)
VALUES 
(45, 'Allicin: Hỗ trợ miễn dịch, kháng khuẩn, giảm viêm.', 1),
(45, 'Vitamin C (31% DV trong 100g): Tăng cường miễn dịch, bảo vệ tế bào.', 2),
(45, 'Mangan (23% DV trong 100g): Hỗ trợ sức khỏe xương, trao đổi chất.', 3),
(45, 'Vitamin B6 (13% DV trong 100g): Hỗ trợ sức khỏe não, tạo hồng cầu.', 4),
(45, 'Chất chống oxy hóa: Giảm nguy cơ bệnh tim, bảo vệ tế bào.', 5),
(45, 'Ít calo (149 kcal trong 100g): Phù hợp làm gia vị.', 6);

-- Chèn vào bảng vegetable_select_points
INSERT INTO vegetable_select_points (vegetable_id, point_text, display_order)
VALUES 
(45, 'Củ chắc, tép trắng: Chọn tỏi có củ cứng, không mọc mầm.', 1),
(45, 'Vỏ khô, dễ bóc: Tỏi tươi có vỏ mỏng, không ẩm.', 2),
(45, 'Mùi thơm nồng: Tỏi tốt có mùi mạnh, tránh loại mùi yếu.', 3),
(45, 'Không có đốm nâu: Kiểm tra tép không có vết thâm hoặc hư hỏng.', 4),
(45, 'Tránh củ mềm: Tỏi không nên mềm hoặc có dấu hiệu mốc.', 5);

-- Chèn vào bảng vegetable_preserve_points
INSERT INTO vegetable_preserve_points (vegetable_id, point_text, display_order)
VALUES 
(45, 'Bảo quản nơi khô ráo: Để tỏi ở nơi thoáng mát, tránh ánh nắng, giữ được 2-3 tháng.', 1),
(45, 'Không để trong tủ lạnh: Độ ẩm làm tỏi dễ mọc mầm hoặc mốc.', 2),
(45, 'Bóc tép để đông lạnh: Bóc tép, bọc kín, đông lạnh ở -18°C, dùng trong 6 tháng.', 3),
(45, 'Kiểm tra định kỳ: Loại bỏ tép mọc mầm hoặc hỏng để tránh lây lan.', 4),
(45, 'Tránh để gần thực phẩm khác: Mùi tỏi có thể ám vào thực phẩm khác.', 5);

-- Chèn vào bảng recipes
INSERT INTO recipes (name, description, prep_time, cook_time, servings)
VALUES 
('Tỏi phi', 'Món tỏi phi thơm lừng, dùng để rắc lên canh, phở, hoặc xào, là gia vị tăng hương vị.', '10 phút', '5 phút', '4 người'),
('Nước mắm tỏi ớt', 'Nước chấm đậm đà, với tỏi băm, là món chấm phổ biến cho nhiều món ăn.', '5 phút', '0 phút', '4 người'),
('Tỏi ngâm giấm', 'Món tỏi ngâm chua, dùng kèm thịt luộc hoặc bánh chưng, là món ăn kèm hấp dẫn.', '10 phút', '0 phút', '4 người'),
('Gà chiên tỏi', 'Món gà chiên giòn, với tỏi phi thơm, là món chính thơm ngon.', '15 phút', '20 phút', '4 người');

-- Chèn vào bảng recipe_vegetables
INSERT INTO recipe_vegetables (recipe_id, vegetable_id)
VALUES 
(177, 45),
(178, 45),
(179, 45),
(180, 45);

-- Chèn vào bảng recipe_items
INSERT INTO recipe_items (recipe_id, item_name, quantity, notes, order_index)
VALUES 
-- Tỏi phi
(177, 'Tỏi', '100g', 'Bóc vỏ, thái lát mỏng', 1),
(177, 'Dầu ăn', '100ml', 'Dùng để chiên', 2),
(177, 'Muối', '1/4 muỗng cà phê', 'Tăng hương vị', 3),
-- Nước mắm tỏi ớt
(178, 'Tỏi', '20g', 'Băm nhuyễn', 1),
(178, 'Nước mắm', '3 muỗng canh', 'Chọn loại ngon', 2),
(178, 'Đường', '1 muỗng canh', 'Tạo vị ngọt', 3),
(178, 'Nước cốt chanh', '1 muỗng canh', 'Tạo vị chua', 4),
(178, 'Ớt', '1 quả (5g)', 'Thái lát', 5),
-- Tỏi ngâm giấm
(179, 'Tỏi', '200g', 'Bóc vỏ, để nguyên tép', 1),
(179, 'Giấm', '200ml', 'Giấm gạo hoặc giấm táo', 2),
(179, 'Đường', '2 muỗng canh', 'Tạo vị ngọt', 3),
(179, 'Muối', '1 muỗng cà phê', 'Tăng hương vị', 4),
(179, 'Nước', '100ml', 'Nước lọc', 5),
-- Gà chiên tỏi
(180, 'Tỏi', '50g', 'Băm nhuyễn', 1),
(180, 'Cánh gà', '500g', 'Rửa sạch, để ráo', 2),
(180, 'Dầu ăn', '200ml', 'Dùng để chiên', 3),
(180, 'Nước mắm', '1 muỗng canh', 'Ướp gà', 4),
(180, 'Muối', '1/2 muỗng cà phê', 'Ướp gà', 5),
(180, 'Tiêu', '1/4 muỗng cà phê', 'Ướp gà', 6);

-- Chèn vào bảng recipe_steps
INSERT INTO recipe_steps (recipe_id, step_number, instruction_text)
VALUES 
-- Tỏi phi
(177, 1, 'Chuẩn bị nguyên liệu: Bóc vỏ tỏi, thái lát mỏng đều để chiên giòn. Chuẩn bị chảo sâu lòng và dầu ăn sạch. Chọn tỏi tươi, tép chắc để tỏi phi thơm và không đắng.'),
(177, 2, 'Chiên tỏi: Đun nóng 100ml dầu ăn trong chảo trên lửa vừa, cho tỏi vào chiên 2-3 phút, đảo đều để tỏi vàng đều. Khi tỏi bắt đầu vàng nhẹ, giảm lửa nhỏ để tránh cháy.'),
(177, 3, 'Vớt tỏi: Khi tỏi vàng giòn, vớt ra để trên giấy thấm dầu, rắc 1/4 muỗng cà phê muối, trộn nhẹ để thấm vị. Để tỏi nguội hoàn toàn, tỏi sẽ giòn hơn.'),
(177, 4, 'Hoàn thiện món: Cho tỏi phi vào lọ kín, dùng để rắc lên canh, phở, hoặc món xào. Bảo quản nơi khô ráo, dùng trong 1-2 tuần để thưởng thức vị thơm giòn của tỏi phi.'),
-- Nước mắm tỏi ớt
(178, 1, 'Chuẩn bị nguyên liệu: Bóc vỏ tỏi, băm nhuyễn. Ớt tươi rửa sạch, thái lát mỏng. Chuẩn bị bát nhỏ để pha nước chấm. Chọn tỏi tươi để nước mắm thơm hơn.'),
(178, 2, 'Pha nước chấm: Trộn 3 muỗng canh nước mắm, 1 muỗng canh đường, 1 muỗng canh nước cốt chanh, tỏi băm, và ớt thái lát trong bát nhỏ. Khuấy đều cho đường tan hoàn toàn.'),
(178, 3, 'Điều chỉnh vị: Nếm thử nước chấm, điều chỉnh thêm chanh, đường, hoặc nước mắm nếu cần để đạt vị chua ngọt mặn cân bằng. Có thể thêm 1 muỗng canh nước lọc nếu muốn vị nhẹ hơn.'),
(178, 4, 'Hoàn thiện món: Đổ nước mắm tỏi ớt ra bát nhỏ, dùng kèm thịt luộc, cá chiên, hoặc các món cuốn. Bảo quản trong tủ lạnh, dùng trong 1-2 ngày để giữ vị tươi ngon.'),
-- Tỏi ngâm giấm
(179, 1, 'Chuẩn bị nguyên liệu: Bóc vỏ tỏi, rửa sạch, để ráo. Chuẩn bị lọ thủy tinh sạch, khử trùng bằng nước sôi. Chọn tép tỏi chắc, không mọc mầm để ngâm giấm.'),
(179, 2, 'Pha nước ngâm: Đun sôi 100ml nước với 200ml giấm, 2 muỗng canh đường, và 1 muỗng cà phê muối. Khuấy đều cho đường và muối tan, để nguội hoàn toàn.'),
(179, 3, 'Ngâm tỏi: Xếp tép tỏi vào lọ thủy tinh, đổ nước ngâm giấm vào sao cho ngập tỏi. Đậy kín nắp, để ở nhiệt độ phòng 5-7 ngày để tỏi ngấm chua và giòn.'),
(179, 4, 'Hoàn thiện món: Sau khi ngâm, kiểm tra độ chua, bảo quản lọ trong tủ lạnh, dùng trong 1-2 tháng. Dọn tỏi ngâm giấm ra đĩa, dùng kèm thịt luộc hoặc bánh chưng để thưởng thức vị chua giòn.'),
-- Gà chiên tỏi
(180, 1, 'Chuẩn bị nguyên liệu: Rửa sạch cánh gà, để ráo, ướp với 1 muỗng canh nước mắm, 1/2 muỗng cà phê muối, 1/4 muỗng cà phê tiêu, và 20g tỏi băm trong 30 phút. Tỏi còn lại băm nhuyễn để phi.'),
(180, 2, 'Chiên gà: Đun nóng 200ml dầu ăn trong chảo sâu lòng, cho cánh gà vào chiên trên lửa vừa 10-12 phút đến khi gà vàng giòn. Vớt gà ra, để trên giấy thấm dầu.'),
(180, 3, 'Phi tỏi: Đổ bớt dầu trong chảo, giữ lại 2 muỗng canh, phi thơm 30g tỏi băm còn lại trên lửa nhỏ 1-2 phút đến khi tỏi vàng nhẹ. Cho gà trở lại chảo, đảo đều để gà thấm mùi tỏi.'),
(180, 4, 'Hoàn thiện món: Dọn gà chiên tỏi ra đĩa, rắc thêm tiêu nếu thích. Dùng nóng với cơm trắng hoặc làm món nhậu để thưởng thức vị giòn thơm của gà và tỏi phi.');

-- --------------------------------------
-- 46. Bầu (class_index: 45)
-- --------------------------------------

-- Chèn vào bảng vegetables
INSERT INTO vegetables (class_index, vietnamese_name, scientific_name, description, nutritional_info)
VALUES (
    45, 
    'Trái bầu', 
    'Lagenaria siceraria', 
    'Trái bầu là một loại rau củ thuộc họ Bầu bí (Cucurbitaceae), phổ biến trong ẩm thực Việt Nam. Quả dài, màu xanh, vị ngọt thanh, mềm. Trái bầu được dùng trong canh, xào, hoặc nhồi thịt, là nguyên liệu bổ dưỡng, giàu chất xơ và nước.',
    'Trái bầu giàu chất xơ, vitamin C, và nước. Rau hỗ trợ tiêu hóa, giữ cơ thể đủ nước, và tăng cường miễn dịch. Trái bầu cũng chứa kali và ít calo, là lựa chọn lý tưởng cho chế độ ăn lành mạnh.'
);

-- Chèn vào bảng vegetable_nutritional_points
INSERT INTO vegetable_nutritional_points (vegetable_id, point_text, display_order)
VALUES 
(46, 'Chất xơ (0.5g trong 100g): Cải thiện tiêu hóa, ngăn ngừa táo bón.', 1),
(46, 'Vitamin C (10% DV trong 100g): Tăng cường miễn dịch, bảo vệ tế bào.', 2),
(46, 'Kali (150mg trong 100g): Cân bằng huyết áp, hỗ trợ cơ bắp.', 3),
(46, 'Nước (95%): Giữ cơ thể đủ nước, hỗ trợ trao đổi chất.', 4),
(46, 'Canxi (26mg trong 100g): Duy trì sức khỏe xương và răng.', 5),
(46, 'Ít calo (14 kcal trong 100g): Phù hợp cho chế độ ăn kiêng.', 6);

-- Chèn vào bảng vegetable_select_points
INSERT INTO vegetable_select_points (vegetable_id, point_text, display_order)
VALUES 
(46, 'Quả xanh, chắc: Chọn trái bầu có vỏ nhẵn, không vết thâm.', 1),
(46, 'Kích thước vừa: Bầu nhỏ đến trung bình thường ngọt, ít hạt.', 2),
(46, 'Không có mùi lạ: Bầu tươi không có mùi chua hoặc hắc.', 3),
(46, 'Vỏ mỏng, dễ bóc: Bầu tươi có vỏ mềm, dễ gọt.', 4),
(46, 'Tránh quả mềm: Bầu không nên mềm hoặc có đốm thâm.', 5);

-- Chèn vào bảng vegetable_preserve_points
INSERT INTO vegetable_preserve_points (vegetable_id, point_text, display_order)
VALUES 
(46, 'Bảo quản ngăn mát: Bọc trái bầu trong túi nhựa, giữ ở 0-4°C, tươi 2-3 tuần.', 1),
(46, 'Giữ nguyên vỏ: Không gọt vỏ trước khi cất, tránh mất nước.', 2),
(46, 'Đông lạnh để bảo quản lâu: Thái lát, chần 2 phút, đông lạnh ở -18°C, dùng trong 6 tháng.', 3),
(46, 'Kiểm tra định kỳ: Loại bỏ phần quả hỏng để tránh lây lan.', 4),
(46, 'Tránh để gần trái cây tiết ethylene: Táo, chuối làm bầu nhanh hỏng.', 5);

-- Chèn vào bảng recipes
INSERT INTO recipes (name, description, prep_time, cook_time, servings)
VALUES 
('Canh bầu nấu tôm', 'Món canh thanh nhẹ, với trái bầu ngọt và tôm tươi, là món phụ bổ dưỡng.', '10 phút', '10 phút', '4 người'),
('Bầu xào tỏi', 'Món xào đơn giản, với trái bầu giòn và tỏi thơm, là món phụ dễ làm.', '10 phút', '5 phút', '4 người'),
('Bầu nhồi thịt', 'Món bầu nhồi thịt hấp, thơm ngon, là món chính hấp dẫn.', '20 phút', '20 phút', '4 người'),
('Bầu luộc', 'Món luộc đơn giản, với trái bầu giòn, dùng kèm nước chấm, là món phụ lành mạnh.', '5 phút', '5 phút', '4 người');

-- Chèn vào bảng recipe_vegetables
INSERT INTO recipe_vegetables (recipe_id, vegetable_id)
VALUES 
(181, 46),
(182, 46),
(183, 46),
(184, 46);

-- Chèn vào bảng recipe_items
INSERT INTO recipe_items (recipe_id, item_name, quantity, notes, order_index)
VALUES 
-- Canh bầu nấu tôm
(181, 'Trái bầu', '300g', 'Gọt vỏ, thái miếng', 1),
(181, 'Tôm tươi', '200g', 'Bóc vỏ, rút chỉ đen', 2),
(181, 'Nước mắm', '1 muỗng canh', 'Chọn loại ngon', 3),
(181, 'Hành lá', '2 nhánh (10g)', 'Thái nhỏ', 4),
(181, 'Nước', '1 lít', 'Nước lọc', 5),
-- Bầu xào tỏi
(182, 'Trái bầu', '300g', 'Gọt vỏ, thái lát', 1),
(182, 'Tỏi', '3 tép (12g)', 'Băm nhỏ', 2),
(182, 'Dầu ăn', '2 muỗng canh', 'Dùng để xào', 3),
(182, 'Nước mắm', '1 muỗng canh', 'Tăng hương vị', 4),
(182, 'Muối', '1/4 muỗng cà phê', 'Điều chỉnh theo khẩu vị', 5),
-- Bầu nhồi thịt
(183, 'Trái bầu', '500g', 'Gọt vỏ, cắt khúc 5cm, khoét ruột', 1),
(183, 'Thịt heo xay', '200g', 'Chọn thịt nạc vai', 2),
(183, 'Nước mắm', '1 muỗng canh', 'Ướp thịt', 3),
(183, 'Hành tím', '2 củ (10g)', 'Băm nhỏ', 4),
(183, 'Muối', '1/4 muỗng cà phê', 'Ướp thịt', 5),
(183, 'Tiêu', '1/4 muỗng cà phê', 'Ướp thịt', 6),
-- Bầu luộc
(184, 'Trái bầu', '300g', 'Gọt vỏ, thái miếng', 1),
(184, 'Nước', '2 lít', 'Nước lọc để luộc', 2),
(184, 'Muối', '1/2 muỗng cà phê', 'Cho vào nước luộc', 3),
(184, 'Nước mắm', '2 muỗng canh', 'Dùng làm nước chấm', 4);

-- Chèn vào bảng recipe_steps
INSERT INTO recipe_steps (recipe_id, step_number, instruction_text)
VALUES 
-- Canh bầu nấu tôm
(181, 1, 'Chuẩn bị nguyên liệu: Gọt vỏ trái bầu, rửa sạch, thái miếng vừa ăn. Tôm tươi bóc vỏ, rút chỉ đen, rửa sạch với nước muối loãng để khử tanh. Hành lá rửa sạch, thái nhỏ.'),
(181, 2, 'Xào tôm: Đun nóng 1 muỗng canh dầu ăn trong nồi, cho tôm vào xào trên lửa vừa 1-2 phút đến khi tôm chuyển màu hồng. Vớt tôm ra bát để giữ độ giòn.'),
(181, 3, 'Nấu canh: Đổ 1 lít nước lọc vào nồi, đun sôi. Cho bầu và tôm vào, nấu trên lửa vừa 5-7 phút để bầu mềm và tôm tiết vị ngọt. Nêm 1 muỗng canh nước mắm, khuấy nhẹ, nếm thử để điều chỉnh vị.'),
(181, 4, 'Hoàn thiện món canh: Rắc hành lá thái nhỏ vào nồi, đun thêm 30 giây để hành chín sơ. Tắt bếp, múc canh ra bát, dùng nóng với cơm trắng để thưởng thức vị ngọt thanh của bầu và tôm.'),
-- Bầu xào tỏi
(182, 1, 'Chuẩn bị nguyên liệu: Gọt vỏ trái bầu, rửa sạch, thái lát mỏng. Tỏi bóc vỏ, băm nhuyễn để phi thơm. Chọn bầu non để món xào giòn và ngọt.'),
(182, 2, 'Phi tỏi: Đun nóng 2 muỗng canh dầu ăn trong chảo, cho tỏi băm vào phi trên lửa vừa 20-30 giây đến khi tỏi vàng nhẹ và dậy mùi thơm. Tránh để tỏi cháy vì sẽ tạo vị đắng.'),
(182, 3, 'Xào bầu: Cho bầu vào chảo, tăng lửa lớn, xào nhanh 3-4 phút để bầu mềm nhưng vẫn giữ độ giòn. Nêm 1 muỗng canh nước mắm và 1/4 muỗng cà phê muối, đảo đều.'),
(182, 4, 'Hoàn thiện món xào: Kiểm tra độ chín của bầu, đảm bảo vẫn giòn và không quá mềm. Tắt bếp, dọn ra đĩa, dùng nóng với cơm trắng để thưởng thức vị giòn ngọt của bầu và thơm nồng của tỏi.'),
-- Bầu nhồi thịt
(183, 1, 'Chuẩn bị nguyên liệu: Gọt vỏ trái bầu, rửa sạch, cắt khúc 5cm, dùng muỗng khoét ruột để nhồi thịt. Thịt heo xay ướp với 1 muỗng canh nước mắm, 1/4 muỗng cà phê muối, 1/4 muỗng cà phê tiêu, và hành tím băm trong 15 phút.'),
(183, 2, 'Nhồi thịt: Nhồi hỗn hợp thịt heo xay vào các khúc bầu, nén chặt để thịt không rơi ra. Xếp các khúc bầu nhồi thịt vào xửng hấp hoặc nồi hấp.'),
(183, 3, 'Hấp bầu: Đun sôi nước trong nồi hấp, đặt xửng bầu vào, hấp trên lửa vừa 15-20 phút đến khi bầu mềm và thịt chín. Dùng tăm kiểm tra thịt chín bằng cách đâm xuyên, không có nước đỏ chảy ra.'),
(183, 4, 'Hoàn thiện món: Dọn bầu nhồi thịt ra đĩa, trang trí thêm hành lá hoặc tiêu. Dùng nóng với cơm trắng và nước mắm ớt để thưởng thức vị ngọt mềm của bầu và đậm đà của thịt.'),
-- Bầu luộc
(184, 1, 'Chuẩn bị nguyên liệu: Gọt vỏ trái bầu, rửa sạch, thái miếng vừa ăn. Chuẩn bị nồi nước luộc và bát nước mắm nguyên chất để chấm. Chọn bầu non để luộc sẽ giòn và ngọt.'),
(184, 2, 'Luộc bầu: Đun sôi 2 lít nước, thêm 1/2 muỗng cà phê muối để bầu giữ màu xanh. Cho bầu vào luộc trên lửa vừa 5-7 phút đến khi bầu mềm nhưng vẫn giòn. Dùng đũa kiểm tra độ chín.'),
(184, 3, 'Vớt bầu: Vớt bầu ra, ngâm ngay vào nước đá 1 phút để giữ độ giòn và màu xanh đẹp. Để ráo nước, xếp bầu ra đĩa, trình bày đẹp mắt.'),
(184, 4, 'Hoàn thiện món luộc: Pha nước chấm với 2 muỗng canh nước mắm, thêm tỏi băm, ớt, hoặc chanh tùy sở thích. Dọn bầu luộc ra bàn, dùng nóng với nước chấm để thưởng thức vị giòn ngọt tự nhiên.');
