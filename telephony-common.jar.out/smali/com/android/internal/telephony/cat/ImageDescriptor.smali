.class public Lcom/android/internal/telephony/cat/ImageDescriptor;
.super Ljava/lang/Object;
.source "ImageDescriptor.java"


# static fields
.field static final CODING_SCHEME_BASIC:I = 0x11

.field static final CODING_SCHEME_COLOUR:I = 0x21


# instance fields
.field mCodingScheme:I

.field mHeight:I

.field mHighOffset:I

.field mImageId:I

.field mLength:I

.field mLowOffset:I

.field mWidth:I


# direct methods
.method constructor <init>()V
    .locals 1

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/internal/telephony/cat/ImageDescriptor;->mWidth:I

    .line 41
    iput v0, p0, Lcom/android/internal/telephony/cat/ImageDescriptor;->mHeight:I

    .line 42
    iput v0, p0, Lcom/android/internal/telephony/cat/ImageDescriptor;->mCodingScheme:I

    .line 43
    iput v0, p0, Lcom/android/internal/telephony/cat/ImageDescriptor;->mImageId:I

    .line 44
    iput v0, p0, Lcom/android/internal/telephony/cat/ImageDescriptor;->mHighOffset:I

    .line 45
    iput v0, p0, Lcom/android/internal/telephony/cat/ImageDescriptor;->mLowOffset:I

    .line 46
    iput v0, p0, Lcom/android/internal/telephony/cat/ImageDescriptor;->mLength:I

    .line 47
    return-void
.end method

.method static parse([BI)Lcom/android/internal/telephony/cat/ImageDescriptor;
    .locals 4
    .param p0, "rawData"    # [B
    .param p1, "valueIndex"    # I

    .line 57
    new-instance v0, Lcom/android/internal/telephony/cat/ImageDescriptor;

    invoke-direct {v0}, Lcom/android/internal/telephony/cat/ImageDescriptor;-><init>()V

    .line 59
    .local v0, "d":Lcom/android/internal/telephony/cat/ImageDescriptor;
    add-int/lit8 v1, p1, 0x1

    .local v1, "valueIndex":I
    :try_start_0
    aget-byte p1, p0, p1

    .end local p1    # "valueIndex":I
    and-int/lit16 p1, p1, 0xff

    iput p1, v0, Lcom/android/internal/telephony/cat/ImageDescriptor;->mWidth:I
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_2

    .line 60
    add-int/lit8 p1, v1, 0x1

    .restart local p1    # "valueIndex":I
    :try_start_1
    aget-byte v1, p0, v1

    .end local v1    # "valueIndex":I
    and-int/lit16 v1, v1, 0xff

    iput v1, v0, Lcom/android/internal/telephony/cat/ImageDescriptor;->mHeight:I
    :try_end_1
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_1 .. :try_end_1} :catch_1

    .line 61
    add-int/lit8 v1, p1, 0x1

    .restart local v1    # "valueIndex":I
    :try_start_2
    aget-byte p1, p0, p1

    .end local p1    # "valueIndex":I
    and-int/lit16 p1, p1, 0xff

    iput p1, v0, Lcom/android/internal/telephony/cat/ImageDescriptor;->mCodingScheme:I
    :try_end_2
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_2 .. :try_end_2} :catch_2

    .line 64
    add-int/lit8 p1, v1, 0x1

    .restart local p1    # "valueIndex":I
    :try_start_3
    aget-byte v1, p0, v1

    .end local v1    # "valueIndex":I
    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x8

    iput v1, v0, Lcom/android/internal/telephony/cat/ImageDescriptor;->mImageId:I

    .line 65
    iget v1, v0, Lcom/android/internal/telephony/cat/ImageDescriptor;->mImageId:I
    :try_end_3
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_3 .. :try_end_3} :catch_1

    add-int/lit8 v2, p1, 0x1

    .local v2, "valueIndex":I
    :try_start_4
    aget-byte p1, p0, p1

    .end local p1    # "valueIndex":I
    and-int/lit16 p1, p1, 0xff

    or-int/2addr p1, v1

    iput p1, v0, Lcom/android/internal/telephony/cat/ImageDescriptor;->mImageId:I
    :try_end_4
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_4 .. :try_end_4} :catch_0

    .line 67
    add-int/lit8 v1, v2, 0x1

    .restart local v1    # "valueIndex":I
    :try_start_5
    aget-byte p1, p0, v2

    .end local v2    # "valueIndex":I
    and-int/lit16 p1, p1, 0xff

    iput p1, v0, Lcom/android/internal/telephony/cat/ImageDescriptor;->mHighOffset:I
    :try_end_5
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_5 .. :try_end_5} :catch_2

    .line 68
    add-int/lit8 p1, v1, 0x1

    .restart local p1    # "valueIndex":I
    :try_start_6
    aget-byte v1, p0, v1

    .end local v1    # "valueIndex":I
    and-int/lit16 v1, v1, 0xff

    iput v1, v0, Lcom/android/internal/telephony/cat/ImageDescriptor;->mLowOffset:I
    :try_end_6
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_6 .. :try_end_6} :catch_1

    .line 70
    add-int/lit8 v1, p1, 0x1

    .restart local v1    # "valueIndex":I
    :try_start_7
    aget-byte p1, p0, p1
    :try_end_7
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_7 .. :try_end_7} :catch_2

    .end local p1    # "valueIndex":I
    and-int/lit16 p1, p1, 0xff

    shl-int/lit8 p1, p1, 0x8

    add-int/lit8 v2, v1, 0x1

    .restart local v2    # "valueIndex":I
    :try_start_8
    aget-byte v1, p0, v1

    .end local v1    # "valueIndex":I
    and-int/lit16 v1, v1, 0xff

    or-int/2addr p1, v1

    iput p1, v0, Lcom/android/internal/telephony/cat/ImageDescriptor;->mLength:I

    .line 71
    const-string p1, "ImageDescriptor"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "parse; Descriptor : "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v0, Lcom/android/internal/telephony/cat/ImageDescriptor;->mWidth:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v0, Lcom/android/internal/telephony/cat/ImageDescriptor;->mHeight:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v0, Lcom/android/internal/telephony/cat/ImageDescriptor;->mCodingScheme:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", 0x"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v0, Lcom/android/internal/telephony/cat/ImageDescriptor;->mImageId:I

    .line 72
    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v0, Lcom/android/internal/telephony/cat/ImageDescriptor;->mHighOffset:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v0, Lcom/android/internal/telephony/cat/ImageDescriptor;->mLowOffset:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v0, Lcom/android/internal/telephony/cat/ImageDescriptor;->mLength:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 71
    invoke-static {p1, v1}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_8
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_8 .. :try_end_8} :catch_0

    .line 77
    goto :goto_1

    .line 74
    :catch_0
    move-exception p1

    goto :goto_0

    .end local v2    # "valueIndex":I
    .restart local p1    # "valueIndex":I
    :catch_1
    move-exception v1

    move v2, p1

    move-object p1, v1

    goto :goto_0

    .end local p1    # "valueIndex":I
    .restart local v1    # "valueIndex":I
    :catch_2
    move-exception p1

    move v2, v1

    .line 75
    .end local v1    # "valueIndex":I
    .restart local v2    # "valueIndex":I
    .local p1, "e":Ljava/lang/IndexOutOfBoundsException;
    :goto_0
    const-string v1, "ImageDescriptor"

    const-string v3, "parse; failed parsing image descriptor"

    invoke-static {v1, v3}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 76
    const/4 v0, 0x0

    .line 78
    .end local p1    # "e":Ljava/lang/IndexOutOfBoundsException;
    :goto_1
    return-object v0
.end method
