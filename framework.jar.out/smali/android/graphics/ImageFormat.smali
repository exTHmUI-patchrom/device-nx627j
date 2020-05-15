.class public Landroid/graphics/ImageFormat;
.super Ljava/lang/Object;
.source "ImageFormat.java"


# static fields
.field public static final DEPTH16:I = 0x44363159

.field public static final DEPTH_POINT_CLOUD:I = 0x101

.field public static final FLEX_RGBA_8888:I = 0x2a

.field public static final FLEX_RGB_888:I = 0x29

.field public static final JPEG:I = 0x100

.field public static final NV16:I = 0x10

.field public static final NV21:I = 0x11

.field public static final PRIVATE:I = 0x22

.field public static final RAW10:I = 0x25

.field public static final RAW12:I = 0x26

.field public static final RAW_DEPTH:I = 0x1002

.field public static final RAW_PRIVATE:I = 0x24

.field public static final RAW_SENSOR:I = 0x20

.field public static final RGB_565:I = 0x4

.field public static final UNKNOWN:I = 0x0

.field public static final Y16:I = 0x20363159

.field public static final Y8:I = 0x20203859

.field public static final YUV_420_888:I = 0x23

.field public static final YUV_422_888:I = 0x27

.field public static final YUV_444_888:I = 0x28

.field public static final YUY2:I = 0x14

.field public static final YV12:I = 0x32315659


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getBitsPerPixel(I)I
    .locals 3
    .param p0, "format"    # I

    .line 717
    const/16 v0, 0xc

    const/16 v1, 0x10

    packed-switch p0, :pswitch_data_0

    const/16 v2, 0x18

    packed-switch p0, :pswitch_data_1

    sparse-switch p0, :sswitch_data_0

    .line 751
    const/4 v0, -0x1

    return v0

    .line 725
    :sswitch_0
    return v0

    .line 730
    :sswitch_1
    return v1

    .line 727
    :sswitch_2
    const/16 v0, 0x8

    return v0

    .line 734
    :sswitch_3
    return v0

    .line 745
    :sswitch_4
    return v1

    .line 723
    :sswitch_5
    return v1

    .line 719
    :sswitch_6
    return v1

    .line 742
    :pswitch_0
    const/16 v0, 0x20

    return v0

    .line 740
    :pswitch_1
    return v2

    .line 738
    :pswitch_2
    return v2

    .line 736
    :pswitch_3
    return v1

    .line 749
    :pswitch_4
    return v0

    .line 747
    :pswitch_5
    const/16 v0, 0xa

    return v0

    .line 732
    :pswitch_6
    return v0

    .line 721
    :pswitch_7
    return v1

    :pswitch_data_0
    .packed-switch 0x10
        :pswitch_7
        :pswitch_6
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x25
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :sswitch_data_0
    .sparse-switch
        0x4 -> :sswitch_6
        0x14 -> :sswitch_5
        0x20 -> :sswitch_4
        0x23 -> :sswitch_3
        0x1002 -> :sswitch_4
        0x20203859 -> :sswitch_2
        0x20363159 -> :sswitch_1
        0x32315659 -> :sswitch_0
        0x44363159 -> :sswitch_1
    .end sparse-switch
.end method

.method public static isPublicFormat(I)Z
    .locals 1
    .param p0, "format"    # I

    .line 767
    const/4 v0, 0x4

    if-eq p0, v0, :cond_0

    const/16 v0, 0x14

    if-eq p0, v0, :cond_0

    const/16 v0, 0x20

    if-eq p0, v0, :cond_0

    const/16 v0, 0x1002

    if-eq p0, v0, :cond_0

    const v0, 0x32315659

    if-eq p0, v0, :cond_0

    const v0, 0x44363159

    if-eq p0, v0, :cond_0

    packed-switch p0, :pswitch_data_0

    packed-switch p0, :pswitch_data_1

    packed-switch p0, :pswitch_data_2

    .line 790
    const/4 v0, 0x0

    return v0

    .line 787
    :cond_0
    :pswitch_0
    const/4 v0, 0x1

    return v0

    :pswitch_data_0
    .packed-switch 0x10
        :pswitch_0
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x22
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x100
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method
