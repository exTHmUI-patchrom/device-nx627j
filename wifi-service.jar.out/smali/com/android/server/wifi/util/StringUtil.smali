.class public Lcom/android/server/wifi/util/StringUtil;
.super Ljava/lang/Object;
.source "StringUtil.java"


# static fields
.field static final ASCII_PRINTABLE_MAX:B = 0x7et

.field static final ASCII_PRINTABLE_MIN:B = 0x20t


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static isAsciiPrintable([B)Z
    .locals 6
    .param p0, "byteArray"    # [B

    .line 26
    const/4 v0, 0x1

    if-nez p0, :cond_0

    .line 27
    return v0

    .line 30
    :cond_0
    array-length v1, p0

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_4

    aget-byte v4, p0, v3

    .line 31
    .local v4, "b":B
    const/4 v5, 0x7

    if-eq v4, v5, :cond_2

    packed-switch v4, :pswitch_data_0

    .line 41
    const/16 v5, 0x20

    if-lt v4, v5, :cond_1

    const/16 v5, 0x7e

    if-le v4, v5, :cond_3

    .line 42
    :cond_1
    return v2

    .line 38
    :cond_2
    :pswitch_0
    nop

    .line 30
    .end local v4    # "b":B
    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 46
    :cond_4
    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x9
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method
