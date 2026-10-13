# IT-209 DevOps - Session 12: Bài 2

## Tự Động Hóa Đóng Gói và Phát Hành Docker Image Khi Gắn Git Tag (`v*.*.*`)

Dự án này triển khai luồng CD (Continuous Delivery) trên GitHub Actions để tự động hóa quy trình:
1. Nhận diện sự kiện tạo phiên bản mới thông qua **Git Tag** (theo mẫu `v*.*.*`).
2. Tự động trích xuất phiên bản Docker Tag tương ứng bằng `docker/metadata-action@v5`.
3. Đăng nhập và đẩy Docker Image lên **GitHub Container Registry (GHCR - ghcr.io)** bằng `docker/build-push-action@v5`.

---

## Cấu trúc thư mục

```text
├── .github/
│   └── workflows/
│       └── release.yml          # GitHub Actions workflow phát hành Docker Image
├── homework/
│   └── session_12/
│       └── ex2/
│           ├── release.yml      # Bản sao cấu hình nộp bài
│           └── report.md        # Báo cáo chi tiết và hướng dẫn kiểm thử
├── Dockerfile                   # Kịch bản đóng gói container image
├── index.html                   # Ứng dụng web mẫu
├── .gitignore                   # Cấu hình bỏ qua tệp tin
└── README.md                    # Tài liệu dự án
```

---

## Hướng dẫn kích hoạt CD Release

Thực hiện tạo tag và đẩy lên GitHub:

```bash
git tag v1.0.0
git push origin v1.0.0
```

Kiểm tra kết quả trong tab **Actions** và mục **Packages** trên GitHub repository.
