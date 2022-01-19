﻿// <auto-generated />
using System;
using Microsoft.EntityFrameworkCore;
using Microsoft.EntityFrameworkCore.Infrastructure;
using Microsoft.EntityFrameworkCore.Metadata;
using Microsoft.EntityFrameworkCore.Storage.ValueConversion;
using NhatAnhStore.Data;

namespace NhatAnhStore.Migrations
{
    [DbContext(typeof(NhatAnhDbContext))]
    partial class NhatAnhDbContextModelSnapshot : ModelSnapshot
    {
        protected override void BuildModel(ModelBuilder modelBuilder)
        {
#pragma warning disable 612, 618
            modelBuilder
                .HasAnnotation("ProductVersion", "3.1.0")
                .HasAnnotation("Relational:MaxIdentifierLength", 128)
                .HasAnnotation("SqlServer:ValueGenerationStrategy", SqlServerValueGenerationStrategy.IdentityColumn);

            modelBuilder.Entity("NhatAnhStore.Models.ChiTietDonHang", b =>
                {
                    b.Property<int>("MaDH")
                        .HasColumnType("int");

                    b.Property<int>("MaDT")
                        .HasColumnType("int");

                    b.Property<int>("DonGia")
                        .HasColumnType("int");

                    b.Property<int>("GiamGia")
                        .HasColumnType("int");

                    b.Property<int>("SoLuong")
                        .HasColumnType("int");

                    b.Property<int>("TongGia")
                        .HasColumnType("int");

                    b.HasKey("MaDH", "MaDT");

                    b.HasIndex("MaDT");

                    b.ToTable("ChiTietDonHang");
                });

            modelBuilder.Entity("NhatAnhStore.Models.ChiTietHoaDon", b =>
                {
                    b.Property<int>("MaHD")
                        .HasColumnType("int");

                    b.Property<int>("MaDT")
                        .HasColumnType("int");

                    b.Property<int>("SoLuong")
                        .HasColumnType("int");

                    b.Property<int>("TongGia")
                        .HasColumnType("int");

                    b.HasKey("MaHD", "MaDT");

                    b.HasIndex("MaDT");

                    b.ToTable("ChiTietHoaDon");
                });

            modelBuilder.Entity("NhatAnhStore.Models.DienThoai", b =>
                {
                    b.Property<int>("MaDT")
                        .ValueGeneratedOnAdd()
                        .HasColumnType("int")
                        .HasAnnotation("SqlServer:ValueGenerationStrategy", SqlServerValueGenerationStrategy.IdentityColumn);

                    b.Property<int>("Gia")
                        .HasColumnType("int");

                    b.Property<int>("GiamGia")
                        .HasColumnType("int");

                    b.Property<string>("Hinh")
                        .HasColumnType("nvarchar(max)");

                    b.Property<int>("MaModel")
                        .HasColumnType("int");

                    b.Property<string>("Mau")
                        .HasColumnType("nvarchar(max)");

                    b.Property<int>("SoLuong")
                        .HasColumnType("int");

                    b.HasKey("MaDT");

                    b.HasIndex("MaModel");

                    b.ToTable("DienThoai");
                });

            modelBuilder.Entity("NhatAnhStore.Models.DonHang", b =>
                {
                    b.Property<int>("MaDH")
                        .ValueGeneratedOnAdd()
                        .HasColumnType("int")
                        .HasAnnotation("SqlServer:ValueGenerationStrategy", SqlServerValueGenerationStrategy.IdentityColumn);

                    b.Property<int>("MaKH")
                        .HasColumnType("int");

                    b.Property<DateTime>("NgayLapDH")
                        .HasColumnType("datetime2");

                    b.Property<int>("TongGia")
                        .HasColumnType("int");

                    b.Property<string>("TrangThai")
                        .HasColumnType("nvarchar(max)");

                    b.HasKey("MaDH");

                    b.HasIndex("MaKH");

                    b.ToTable("DonHang");
                });

            modelBuilder.Entity("NhatAnhStore.Models.GioHang", b =>
                {
                    b.Property<int>("MaKH")
                        .HasColumnType("int");

                    b.Property<int>("MaDT")
                        .HasColumnType("int");

                    b.Property<int>("SoLuong")
                        .HasColumnType("int");

                    b.HasKey("MaKH", "MaDT");

                    b.HasIndex("MaDT");

                    b.ToTable("GioHang");
                });

            modelBuilder.Entity("NhatAnhStore.Models.Hang", b =>
                {
                    b.Property<int>("MaHang")
                        .ValueGeneratedOnAdd()
                        .HasColumnType("int")
                        .HasAnnotation("SqlServer:ValueGenerationStrategy", SqlServerValueGenerationStrategy.IdentityColumn);

                    b.Property<string>("TenHang")
                        .HasColumnType("nvarchar(max)");

                    b.Property<bool>("TrangThai")
                        .HasColumnType("bit");

                    b.HasKey("MaHang");

                    b.ToTable("Hang");
                });

            modelBuilder.Entity("NhatAnhStore.Models.HoaDon", b =>
                {
                    b.Property<int>("MaHD")
                        .ValueGeneratedOnAdd()
                        .HasColumnType("int")
                        .HasAnnotation("SqlServer:ValueGenerationStrategy", SqlServerValueGenerationStrategy.IdentityColumn);

                    b.Property<string>("DiaChi")
                        .HasColumnType("nvarchar(max)");

                    b.Property<string>("GioiTinh")
                        .HasColumnType("nvarchar(max)");

                    b.Property<int>("MaDH")
                        .HasColumnType("int");

                    b.Property<int?>("MaKH")
                        .HasColumnType("int");

                    b.Property<DateTime>("NgayLapHD")
                        .HasColumnType("datetime2");

                    b.Property<string>("SoDT")
                        .HasColumnType("nvarchar(max)");

                    b.Property<string>("TenKH")
                        .HasColumnType("nvarchar(max)");

                    b.Property<int>("TongThanhToan")
                        .HasColumnType("int");

                    b.HasKey("MaHD");

                    b.HasIndex("MaDH")
                        .IsUnique();

                    b.HasIndex("MaKH");

                    b.ToTable("HoaDon");
                });

            modelBuilder.Entity("NhatAnhStore.Models.IMEI_DienThoai", b =>
                {
                    b.Property<string>("IMEI")
                        .HasColumnType("nvarchar(450)");

                    b.Property<int>("MaDT")
                        .HasColumnType("int");

                    b.Property<int>("MaHD")
                        .HasColumnType("int");

                    b.HasKey("IMEI");

                    b.HasIndex("MaHD", "MaDT");

                    b.ToTable("IMEI_DienThoai");
                });

            modelBuilder.Entity("NhatAnhStore.Models.KhachHang", b =>
                {
                    b.Property<int>("MaKH")
                        .ValueGeneratedOnAdd()
                        .HasColumnType("int")
                        .HasAnnotation("SqlServer:ValueGenerationStrategy", SqlServerValueGenerationStrategy.IdentityColumn);

                    b.Property<string>("DiaChi")
                        .HasColumnType("nvarchar(max)");

                    b.Property<string>("Email")
                        .HasColumnType("nvarchar(max)");

                    b.Property<string>("GioiTinh")
                        .HasColumnType("nvarchar(max)");

                    b.Property<string>("SoDienThoai")
                        .HasColumnType("nvarchar(max)");

                    b.Property<string>("TenKH")
                        .HasColumnType("nvarchar(max)");

                    b.HasKey("MaKH");

                    b.ToTable("KhachHang");
                });

            modelBuilder.Entity("NhatAnhStore.Models.ModelDienThoai", b =>
                {
                    b.Property<int>("MaModel")
                        .ValueGeneratedOnAdd()
                        .HasColumnType("int")
                        .HasAnnotation("SqlServer:ValueGenerationStrategy", SqlServerValueGenerationStrategy.IdentityColumn);

                    b.Property<string>("Camera")
                        .HasColumnType("nvarchar(max)");

                    b.Property<string>("Chip")
                        .HasColumnType("nvarchar(max)");

                    b.Property<string>("Hinh")
                        .HasColumnType("nvarchar(max)");

                    b.Property<int>("MaHang")
                        .HasColumnType("int");

                    b.Property<string>("ManHinh")
                        .HasColumnType("nvarchar(max)");

                    b.Property<DateTime>("NgayRaMat")
                        .HasColumnType("datetime2");

                    b.Property<string>("Pin")
                        .HasColumnType("nvarchar(max)");

                    b.Property<string>("Ram")
                        .HasColumnType("nvarchar(max)");

                    b.Property<string>("Rom")
                        .HasColumnType("nvarchar(max)");

                    b.Property<string>("TenModel")
                        .HasColumnType("nvarchar(max)");

                    b.Property<bool>("TrangThai")
                        .HasColumnType("bit");

                    b.HasKey("MaModel");

                    b.HasIndex("MaHang");

                    b.ToTable("ModelDienThoai");
                });

            modelBuilder.Entity("NhatAnhStore.Models.TaiKhoan", b =>
                {
                    b.Property<string>("TenTK")
                        .HasColumnType("nvarchar(450)");

                    b.Property<int>("MaKH")
                        .HasColumnType("int");

                    b.Property<string>("MatKhau")
                        .HasColumnType("nvarchar(max)");

                    b.Property<bool>("TrangThai")
                        .HasColumnType("bit");

                    b.HasKey("TenTK");

                    b.HasIndex("MaKH")
                        .IsUnique();

                    b.ToTable("TaiKhoan");
                });

            modelBuilder.Entity("NhatAnhStore.Models.TaiKhoanAdmin", b =>
                {
                    b.Property<string>("User")
                        .HasColumnType("nvarchar(450)");

                    b.Property<string>("Email")
                        .HasColumnType("nvarchar(max)");

                    b.Property<string>("Name")
                        .HasColumnType("nvarchar(max)");

                    b.Property<string>("Pass")
                        .HasColumnType("nvarchar(max)");

                    b.Property<string>("PhoneNumber")
                        .HasColumnType("nvarchar(max)");

                    b.Property<string>("Role")
                        .HasColumnType("nvarchar(max)");

                    b.Property<bool>("TrangThai")
                        .HasColumnType("bit");

                    b.HasKey("User");

                    b.ToTable("TaiKhoanAdmin");
                });

            modelBuilder.Entity("NhatAnhStore.Models.ChiTietDonHang", b =>
                {
                    b.HasOne("NhatAnhStore.Models.DonHang", "DonHang")
                        .WithMany("ChiTietDonHangs")
                        .HasForeignKey("MaDH")
                        .OnDelete(DeleteBehavior.Cascade)
                        .IsRequired();

                    b.HasOne("NhatAnhStore.Models.DienThoai", "DienThoai")
                        .WithMany("ChiTietDonHangs")
                        .HasForeignKey("MaDT")
                        .OnDelete(DeleteBehavior.Cascade)
                        .IsRequired();
                });

            modelBuilder.Entity("NhatAnhStore.Models.ChiTietHoaDon", b =>
                {
                    b.HasOne("NhatAnhStore.Models.DienThoai", "DienThoai")
                        .WithMany("ChiTietHoaDons")
                        .HasForeignKey("MaDT")
                        .OnDelete(DeleteBehavior.Cascade)
                        .IsRequired();

                    b.HasOne("NhatAnhStore.Models.HoaDon", "HoaDon")
                        .WithMany("ChiTietHoaDons")
                        .HasForeignKey("MaHD")
                        .OnDelete(DeleteBehavior.Cascade)
                        .IsRequired();
                });

            modelBuilder.Entity("NhatAnhStore.Models.DienThoai", b =>
                {
                    b.HasOne("NhatAnhStore.Models.ModelDienThoai", "ModelDienThoai")
                        .WithMany("DienThoais")
                        .HasForeignKey("MaModel")
                        .OnDelete(DeleteBehavior.Cascade)
                        .IsRequired();
                });

            modelBuilder.Entity("NhatAnhStore.Models.DonHang", b =>
                {
                    b.HasOne("NhatAnhStore.Models.KhachHang", "KhachHang")
                        .WithMany("DonHangs")
                        .HasForeignKey("MaKH")
                        .OnDelete(DeleteBehavior.Cascade)
                        .IsRequired();
                });

            modelBuilder.Entity("NhatAnhStore.Models.GioHang", b =>
                {
                    b.HasOne("NhatAnhStore.Models.DienThoai", "DienThoai")
                        .WithMany("GioHangs")
                        .HasForeignKey("MaDT")
                        .OnDelete(DeleteBehavior.Cascade)
                        .IsRequired();

                    b.HasOne("NhatAnhStore.Models.KhachHang", "KhachHang")
                        .WithMany("GioHangs")
                        .HasForeignKey("MaKH")
                        .OnDelete(DeleteBehavior.Cascade)
                        .IsRequired();
                });

            modelBuilder.Entity("NhatAnhStore.Models.HoaDon", b =>
                {
                    b.HasOne("NhatAnhStore.Models.DonHang", "DonHang")
                        .WithOne("HoaDon")
                        .HasForeignKey("NhatAnhStore.Models.HoaDon", "MaDH")
                        .OnDelete(DeleteBehavior.Cascade)
                        .IsRequired();

                    b.HasOne("NhatAnhStore.Models.KhachHang", "KhachHang")
                        .WithMany("HoaDons")
                        .HasForeignKey("MaKH");
                });

            modelBuilder.Entity("NhatAnhStore.Models.IMEI_DienThoai", b =>
                {
                    b.HasOne("NhatAnhStore.Models.ChiTietHoaDon", "ChiTietHoaDon")
                        .WithMany("IMEI_DienThoais")
                        .HasForeignKey("MaHD", "MaDT")
                        .OnDelete(DeleteBehavior.Cascade)
                        .IsRequired();
                });

            modelBuilder.Entity("NhatAnhStore.Models.ModelDienThoai", b =>
                {
                    b.HasOne("NhatAnhStore.Models.Hang", "Hang")
                        .WithMany("ModelDienThoais")
                        .HasForeignKey("MaHang")
                        .OnDelete(DeleteBehavior.Cascade)
                        .IsRequired();
                });

            modelBuilder.Entity("NhatAnhStore.Models.TaiKhoan", b =>
                {
                    b.HasOne("NhatAnhStore.Models.KhachHang", "KhachHang")
                        .WithOne("TaiKhoan")
                        .HasForeignKey("NhatAnhStore.Models.TaiKhoan", "MaKH")
                        .OnDelete(DeleteBehavior.Cascade)
                        .IsRequired();
                });
#pragma warning restore 612, 618
        }
    }
}
