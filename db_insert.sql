-- Bắp cải --
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

-- Bí đỏ --
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

-- Bông cải trắng
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

-- Bông cải xanh
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

-- Cà chua
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

-- Cà rốt
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

-- Cà tím
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

-- Cải thìa
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

-- Cần Tây
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

-- Củ cải đỏ
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

-- Củ cải trắng
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

-- Củ dền
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

-- Gừng 
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

-- Hành tím
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

-- Củ sen 
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

-- Đậu Bắp
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

-- Đậu Hà lan
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

-- Đậu que
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

-- Đậu rồng
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

-- Đu đủ
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

-- Dưa leo 
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

-- Giá đỗ
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

-- Hành lá
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

-- Hành tây
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

-- Khổ qua
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

-- Khoai lang
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

-- Khoai tây
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

-- Nấm rơm
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