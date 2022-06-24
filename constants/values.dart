import 'package:flutter_application_2/KhoaCNTT/category.dart';
import 'package:flutter_application_2/models/category.dart';

import 'package:flutter_application_2/models/news.dart';

class StaticValues {
  List<News> news = [
    News(
        title:
            "[THÔNG BÁO] THỰC HIỆN ĐỒ ÁN TỐT NGHIỆP VÀ NỘP PHIẾU ĐĂNG KÝ ĐỀ TÀI KHOÁ 2019",
        descrption:
            "[THÔNG BÁO] Căn cứ vào kế hoạch đào tạo năm học 2021 – 2022, sau đợt thực tập tốt nghiệp, các bạn sinh viên ngành Công nghệ thông tin khoá 2019 sẽ bước vào thực hiện đồ án tốt nghiệp cuối khoá từ tuần 42 (13.06.2022) – tuần 45 (09.07.2022), do đó, các nhóm vui lòng liên hệ giảng viên hướng dẫn và bước vào việc thực hiện đồ án tốt nghiệp.",
        image:
            "https://scontent.fsgn2-6.fna.fbcdn.net/v/t39.30808-6/290258550_1572382849822591_7427295150659006922_n.jpg?_nc_cat=111&ccb=1-7&_nc_sid=730e14&_nc_ohc=U5CbOi8OayQAX-h9Ft3&_nc_oc=AQmEfQmAK86FURz6QFQ3Ca2Pv5RXPBXDd8w9LyN7R0oY3ienj2EHK-fSkEh8u760VpiscHsN_ZrWpWmrgy3-oDvQ&_nc_ht=scontent.fsgn2-6.fna&oh=00_AT8aFzQBARCxD7zsDqsEqgB-mkLyxqGaME1vmXQFOmV8YQ&oe=62BAECE8",
        source: "Information Technology Cao Thắng",
        sourceImage:
            "https://scontent.fsgn2-5.fna.fbcdn.net/v/t39.30808-6/272953810_1982053121952497_4726392203961856339_n.jpg?_nc_cat=104&ccb=1-7&_nc_sid=09cbfe&_nc_ohc=-rCTiU6POegAX-ERaEl&tn=STjO8td0yqNNWWqH&_nc_ht=scontent.fsgn2-5.fna&oh=00_AT8V2uWUHKiNP_aR0PaDo9pO2xd3arFqnOlThaWkOAdd6A&oe=62BA6128",
        time: "Hôm nay, 5 giờ 01"),
    News(
        title:
            "[THÔNG BÁO] CÁC MỐC THỜI GIAN THỰC TẬP & ĐỒ ÁN TỐT NGHIỆP KHOÁ 2019",
        descrption:
            "Khoa Công nghệ thông tin trường Cao đẳng kỹ thuật Cao Thắng xin thông báo các cột mốc thời gian cho kỳ thực tập tốt nghiệp cuối khoá và thực hiện đồ án tốt nghiệp dành cho các bạn sinh viên khoá 2019.",
        image:
            "https://scontent.fsgn2-6.fna.fbcdn.net/v/t39.30808-6/289366173_452255673566343_3392336735813172184_n.jpg?_nc_cat=100&ccb=1-7&_nc_sid=730e14&_nc_ohc=JRdjG5P6RAwAX8BpVyu&_nc_ht=scontent.fsgn2-6.fna&oh=00_AT945gKRKhZkjwytkx9EBgX68WsTs1QQ8Nl64Q87a5I36g&oe=62B9EA20",
        source: "Information Technology Cao Thắng",
        sourceImage:
            "https://scontent.fsgn2-5.fna.fbcdn.net/v/t39.30808-6/272953810_1982053121952497_4726392203961856339_n.jpg?_nc_cat=104&ccb=1-7&_nc_sid=09cbfe&_nc_ohc=-rCTiU6POegAX-ERaEl&tn=STjO8td0yqNNWWqH&_nc_ht=scontent.fsgn2-5.fna&oh=00_AT8V2uWUHKiNP_aR0PaDo9pO2xd3arFqnOlThaWkOAdd6A&oe=62BA6128",
        time: "Hôm nay, 5 giờ 01"),
    News(
        title:
            "[THÔNG BÁO] PHÂN CÔNG THỰC TẬP TỐT NGHIỆP 2022 & DANH SÁCH ĐỀ TÀI HƯỚNG DẪN ĐỒ ÁN TỐT NGHIỆP",
        descrption:
            "Khoa Công nghệ thông tin xin thông báo đến các bạn sinh viên năm cuối khối ngành Công nghệ thông tin về phân công giảng viên hướng dẫn thực tập tốt nghiệp năm 2022 & danh sách đề tài đồ án tốt nghiệp cuối khoá. Các bạn sinh viên vui lòng đọc kỹ thông tin chủ động liên hệ giảng viên hướng dẫn để thực hiện thực tập tốt nghiệp.",
        image:
            "https://scontent.fsgn2-6.fna.fbcdn.net/v/t39.30808-6/289216664_452254220233155_4623105857380303350_n.jpg?_nc_cat=111&ccb=1-7&_nc_sid=730e14&_nc_ohc=cik5cRnqA-YAX8CEZ3O&_nc_ht=scontent.fsgn2-6.fna&oh=00_AT8TKKLKmLoB4_sAE5ZRN9jiqVf0AYFpvpfCcIlsFCDxkA&oe=62B9452C",
        source: "Information Technology Cao Thắng",
        sourceImage:
            "https://scontent.fsgn2-5.fna.fbcdn.net/v/t39.30808-6/272953810_1982053121952497_4726392203961856339_n.jpg?_nc_cat=104&ccb=1-7&_nc_sid=09cbfe&_nc_ohc=-rCTiU6POegAX-ERaEl&tn=STjO8td0yqNNWWqH&_nc_ht=scontent.fsgn2-5.fna&oh=00_AT8V2uWUHKiNP_aR0PaDo9pO2xd3arFqnOlThaWkOAdd6A&oe=62BA6128",
        time: "Hôm nay, 5 giờ 01"),
    News(
        title: "[THÔNG BÁO] LỊCH BÁN KẾT GIẢI IT-CKC CHAMPIONSHIP 2022",
        descrption:
            "[THÔNG BÁO] LỊCH BÁN KẾT GIẢI IT-CKC CHAMPIONSHIP 2022 Gây cấn và đầy kịch tính, những trận đấu tứ kết mang lại cho không khí giải những màn trình diễn cực kỳ ấn tượng đã khẳng định sự quyết tâm cùng chất lượng của giải đấu năm nay. Và top 4 đội mạnh nhất lọt vào bán kết đã được xác định.Hãy cùng chờ đợi bán kết IT-CKC Championship sẽ diễn ra vào 25/06/2022",
        image:
            "https://scontent.fsgn2-1.fna.fbcdn.net/v/t39.30808-6/289126100_2083535138470961_8093737268763109141_n.png?_nc_cat=105&ccb=1-7&_nc_sid=730e14&_nc_ohc=kCfYY99kESIAX9lr5Tq&_nc_ht=scontent.fsgn2-1.fna&oh=00_AT9rrJnBWPxwwGg92R6weLhPyzVsfHxYFjb3c9pTD-KbWw&oe=62B86B9C",
        source: "Information Technology Cao Thắng",
        sourceImage:
            "https://scontent.fsgn2-5.fna.fbcdn.net/v/t39.30808-6/272953810_1982053121952497_4726392203961856339_n.jpg?_nc_cat=104&ccb=1-7&_nc_sid=09cbfe&_nc_ohc=fypP8bcGrlsAX_3LazK&tn=STjO8td0yqNNWWqH&_nc_ht=scontent.fsgn2-5.fna&oh=00_AT_DdGYcaXza69JkeE5t-MTJqfw2bYHoNEpcofLD_0xouQ&oe=62B866E8",
        time: "Hôm nay, 8 giờ 23"),
    News(
        title:
            "[THÔNG BÁO] LỊCH ĐÀO TẠO NĂM HỌC 2021-2022 (CẬP NHẬT NGÀY 05/5/2022)",
        descrption:
            "[THÔNG BÁO] Nhà trường thông báo lịch đào tạo năm 2021-2022. Sinh viên vui lòng xem lịch đào tạo để nắm bắt tình hình học tập",
        image:
            "https://scontent.fsgn2-5.fna.fbcdn.net/v/t39.30808-6/289349509_452256236899620_3238975660940344353_n.jpg?_nc_cat=106&ccb=1-7&_nc_sid=730e14&_nc_ohc=ieU6IhSenq0AX8PVJj3&_nc_ht=scontent.fsgn2-5.fna&oh=00_AT9RJ10APkNkFWQbNQKXqW9b0pfJ6Iw8Xd6G5qjenZ6zeA&oe=62BB2676",
        source: "Information Technology Cao Thắng",
        sourceImage:
            "https://scontent.fsgn2-5.fna.fbcdn.net/v/t1.18169-9/18118509_1855268601400040_1557862388781110452_n.png?_nc_cat=104&ccb=1-7&_nc_sid=09cbfe&_nc_ohc=YmkzD2CXC7MAX-a1Frf&_nc_ht=scontent.fsgn2-5.fna&oh=00_AT_SppwBVz1c9z4omjp-OQMQbkOS60g0xwS9TQiKFZT_2w&oe=62DC4E91",
        time: "Hôm nay, 8 giờ 23"),
    News(
        title: "[THÔNG BÁO] MỞ LỚP HỌC KỲ PHỤ HỌC KỲ CUỐI CHO KHÓA 2019",
        descrption:
            "SV thực hiện đúng thứ tự 3 bước sau đây: Xem thời khóa biểu các môn trên tại Khoa/Bộ môn phụ trách môn học. Đóng kinh phí: SV đăng ký trên máy tính phòng Đào tạo, sau đó đóng kinh phí tại phòng Tài chính-Kế toán hoặc ví Momo/VNPay. SV ở xa không đến Trường được vui lòng gửi Email cho phòng Đào tạo để được hỗ trợ đăng ký. Đi học theo thời khóa biểu. Nếu lớp học bị hủy do không đủ số lượng, sinh viên liên hệ bàn số 4 - phòng Đào tạo để được hoàn trả kinh phí. Sinh viên không được hoàn trả kinh phí vì lý do trùng giờ học. Thời hạn đóng kinh phí: Từ ngày Khoa/Bộ môn công bố thời khóa biểu đến trước khi lớp học bắt đầu.",
        image:
            "https://scontent.fsgn2-6.fna.fbcdn.net/v/t39.30808-6/289335864_452256350232942_1345204163888435680_n.jpg?_nc_cat=100&ccb=1-7&_nc_sid=730e14&_nc_ohc=b3kaR9VFOGcAX-7s-od&_nc_ht=scontent.fsgn2-6.fna&oh=00_AT_1QSQs_kdxGoZtfRv8SYIm1STTs7rD8dCSOh5MZSzEyg&oe=62BA78F4",
        source: "Information Technology Cao Thắng",
        sourceImage:
            "https://scontent.fsgn2-5.fna.fbcdn.net/v/t1.18169-9/18118509_1855268601400040_1557862388781110452_n.png?_nc_cat=104&ccb=1-7&_nc_sid=09cbfe&_nc_ohc=YmkzD2CXC7MAX-a1Frf&_nc_ht=scontent.fsgn2-5.fna&oh=00_AT_SppwBVz1c9z4omjp-OQMQbkOS60g0xwS9TQiKFZT_2w&oe=62DC4E91",
        time: "Hôm nay, 7 giờ 10"),
    News(
        title: "[THÔNG BÁO] LỊCH THI HỌC KỲ 2 NĂM HỌC 2021-2022 ",
        descrption:
            "Sinh viên xem lịch thi để biết được thời gian thi. Sinh viên không đi thi sẽ bị xem là rớt môn. Đề nghị sinh viên xem chính xác lịch thi, học bài để thi được kết quả tốt nhất.",
        image:
            "https://scontent.fsgn2-3.fna.fbcdn.net/v/t39.30808-6/289856321_3137763089817245_218924400635834395_n.jpg?_nc_cat=108&ccb=1-7&_nc_sid=730e14&_nc_ohc=AYjKX3awMzUAX98DjU5&_nc_ht=scontent.fsgn2-3.fna&oh=00_AT-FGFZkb4M3vwwkGnrtpk56G6zgC8cMTOrV0AFJfOx4rw&oe=62B9F288",
        source: "Information Technology Cao Thắng",
        sourceImage:
            "https://scontent.fsgn2-5.fna.fbcdn.net/v/t1.18169-9/18118509_1855268601400040_1557862388781110452_n.png?_nc_cat=104&ccb=1-7&_nc_sid=09cbfe&_nc_ohc=YmkzD2CXC7MAX-a1Frf&_nc_ht=scontent.fsgn2-5.fna&oh=00_AT_SppwBVz1c9z4omjp-OQMQbkOS60g0xwS9TQiKFZT_2w&oe=62DC4E91",
        time: "Hôm nay, 8 giờ 23"),
    News(
        title: "[THÔNG BÁO]HỘI NGHỊ HSSV HỌC TẬP - RÈN LUYỆN TỐT",
        descrption:
            "Sáng ngày 10/3/2018 tại hội trường A, Phòng CTCT-HSSV và Đoàn TN tổ chức hội nghị HSSV học tập tốt, rèn luyện tốt HK1, NH 2017-2018. Qua hội nghị, các em HSSV đã có những ý kiến đóng góp rất tích cực trong việc xây dựng môi trường học tập, rèn luyện tốt.",
        image:
            "https://scontent.fsgn2-1.fna.fbcdn.net/v/t39.30808-6/289322628_452255160233061_2699200235541743096_n.jpg?_nc_cat=107&ccb=1-7&_nc_sid=730e14&_nc_ohc=wGsoPodiWPgAX-VmXPw&_nc_ht=scontent.fsgn2-1.fna&oh=00_AT-0uhDKm22UyXWPQyJ32lvxBOu5sKmQWvG6e_U2Q339aA&oe=62B991EF",
        source: "Phòng CTCT - HSSV",
        sourceImage:
            "https://scontent.fsgn2-5.fna.fbcdn.net/v/t39.30808-6/272953810_1982053121952497_4726392203961856339_n.jpg?_nc_cat=104&ccb=1-7&_nc_sid=09cbfe&_nc_ohc=-rCTiU6POegAX-ERaEl&tn=STjO8td0yqNNWWqH&_nc_ht=scontent.fsgn2-5.fna&oh=00_AT8V2uWUHKiNP_aR0PaDo9pO2xd3arFqnOlThaWkOAdd6A&oe=62BA6128",
        time: "6 giờ 56"),
    News(
        title:
            "KẾ HOẠCH NGÀY KẾT NỐI DOANH NGHIỆP VÀ GIỚI THIỆU VIỆC LÀM SINH VIÊN ",
        descrption:
            "Nhiều năm qua, Trường CĐ Kỹ thuật Cao Thắng đã tổ chức Ngày hội kết nối doanh nghiệp và giới thiệu việc làm rất thành công, đáp ứng tốt nhu cầu về tuyển dụng nhân sự của các doanh nghiệp và nhu cầu tìm việc của sinh viên. Tiếp nối thành công của các năm trước, ngày 21/10/2016 (thứ sáu) tới đây, nhà trường sẽ tổ chức Lễ tốt nghiệp và Ngày hội kết nối doanh nghiệp & giới thiệc việc làm cho hơn 5.000 HSSV ra trường cùng hơn 10.000 HSSV năm cuối đang học tại trường và các trường lân cận.",
        image:
            "https://scontent.fsgn2-4.fna.fbcdn.net/v/t39.30808-6/289342448_452255226899721_8394070754690945073_n.jpg?_nc_cat=101&ccb=1-7&_nc_sid=730e14&_nc_ohc=KjFno_-bZyIAX-VrvT0&_nc_ht=scontent.fsgn2-4.fna&oh=00_AT_BvAaz_7ORTdiUWPDGUMxv-qgg5922Ok36NRCF6fYezA&oe=62BA8316",
        source: "Phòng CTCT - HSSV",
        sourceImage:
            "https://scontent.fsgn2-5.fna.fbcdn.net/v/t39.30808-6/272953810_1982053121952497_4726392203961856339_n.jpg?_nc_cat=104&ccb=1-7&_nc_sid=09cbfe&_nc_ohc=-rCTiU6POegAX-ERaEl&tn=STjO8td0yqNNWWqH&_nc_ht=scontent.fsgn2-5.fna&oh=00_AT8V2uWUHKiNP_aR0PaDo9pO2xd3arFqnOlThaWkOAdd6A&oe=62BA6128",
        time: "6 giờ 56"),
    News(
        title: "[THÔNG BÁO] MIỄN GIẢM KPDT CHO NỮ KỸ THUẬT  NĂM 2020 ",
        descrption:
            " Mỗi học kỳ, sau khi hết thời hạn nộp kinh phí đào tạo, Phòng Tài chính-Kế toán lập danh sách nữ HSSV được miễn giảm và phối hợp với Phòng Công tác Chính trị-HSSV thông báo đến nữ HSSV. Nữ HSSV được miễn giảm mang biên lai nộp tiền kinh phí đào tạo và thẻ sinh viên đến Phòng Tài chính-Kế toán nhận tiền. Trường hợp sau khi đã nhận tiền miễn giảm, nữ HSSV nghỉ học rút kinh phí đào tạo phải hoàn lại tiền đã được miễn giảm",
        image:
            "https://scontent.fsgn2-4.fna.fbcdn.net/v/t39.30808-6/289342448_452255226899721_8394070754690945073_n.jpg?_nc_cat=101&ccb=1-7&_nc_sid=730e14&_nc_ohc=KjFno_-bZyIAX-VrvT0&_nc_ht=scontent.fsgn2-4.fna&oh=00_AT_BvAaz_7ORTdiUWPDGUMxv-qgg5922Ok36NRCF6fYezA&oe=62BA8316",
        source: "Phòng CTCT - HSSV",
        sourceImage:
            "https://scontent.fsgn2-5.fna.fbcdn.net/v/t39.30808-6/272953810_1982053121952497_4726392203961856339_n.jpg?_nc_cat=104&ccb=1-7&_nc_sid=09cbfe&_nc_ohc=-rCTiU6POegAX-ERaEl&tn=STjO8td0yqNNWWqH&_nc_ht=scontent.fsgn2-5.fna&oh=00_AT8V2uWUHKiNP_aR0PaDo9pO2xd3arFqnOlThaWkOAdd6A&oe=62BA6128",
        time: "6 giờ 56"),
  ];
  List<Category> categories = [
    Category(
      name: "BẢNG TIN",
    ),
  ];
}
