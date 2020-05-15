.class public final Landroid/media/ResampleInputStream;
.super Ljava/io/InputStream;
.source "ResampleInputStream.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "ResampleInputStream"

.field private static final mFirLength:I = 0x1d


# instance fields
.field private mBuf:[B

.field private mBufCount:I

.field private mInputStream:Ljava/io/InputStream;

.field private final mOneByte:[B

.field private final mRateIn:I

.field private final mRateOut:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 30
    const-string/jumbo v0, "media_jni"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 31
    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;II)V
    .locals 2
    .param p1, "inputStream"    # Ljava/io/InputStream;
    .param p2, "rateIn"    # I
    .param p3, "rateOut"    # I

    .line 59
    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    .line 50
    const/4 v0, 0x1

    new-array v0, v0, [B

    iput-object v0, p0, Landroid/media/ResampleInputStream;->mOneByte:[B

    .line 61
    const/4 v0, 0x2

    mul-int/2addr v0, p3

    if-ne p2, v0, :cond_0

    .line 62
    const/4 p2, 0x2

    .line 63
    const/4 p3, 0x1

    .line 65
    iput-object p1, p0, Landroid/media/ResampleInputStream;->mInputStream:Ljava/io/InputStream;

    .line 66
    iput p2, p0, Landroid/media/ResampleInputStream;->mRateIn:I

    .line 67
    iput p3, p0, Landroid/media/ResampleInputStream;->mRateOut:I

    .line 68
    return-void

    .line 61
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "only support 2:1 at the moment"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static native fir21([BI[BII)V
.end method


# virtual methods
.method public close()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 130
    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Landroid/media/ResampleInputStream;->mInputStream:Ljava/io/InputStream;

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/media/ResampleInputStream;->mInputStream:Ljava/io/InputStream;

    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 132
    :cond_0
    iput-object v0, p0, Landroid/media/ResampleInputStream;->mInputStream:Ljava/io/InputStream;

    .line 133
    nop

    .line 134
    return-void

    .line 132
    :catchall_0
    move-exception v1

    iput-object v0, p0, Landroid/media/ResampleInputStream;->mInputStream:Ljava/io/InputStream;

    throw v1
.end method

.method protected finalize()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 138
    iget-object v0, p0, Landroid/media/ResampleInputStream;->mInputStream:Ljava/io/InputStream;

    if-nez v0, :cond_0

    .line 142
    return-void

    .line 139
    :cond_0
    invoke-virtual {p0}, Landroid/media/ResampleInputStream;->close()V

    .line 140
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "someone forgot to close ResampleInputStream"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public read()I
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 72
    iget-object v0, p0, Landroid/media/ResampleInputStream;->mOneByte:[B

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v2, v1}, Landroid/media/ResampleInputStream;->read([BII)I

    move-result v0

    .line 73
    .local v0, "rtn":I
    if-ne v0, v1, :cond_0

    const/16 v1, 0xff

    iget-object v3, p0, Landroid/media/ResampleInputStream;->mOneByte:[B

    aget-byte v2, v3, v2

    and-int/2addr v1, v2

    goto :goto_0

    :cond_0
    const/4 v1, -0x1

    :goto_0
    return v1
.end method

.method public read([B)I
    .locals 2
    .param p1, "b"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 78
    array-length v0, p1

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1, v0}, Landroid/media/ResampleInputStream;->read([BII)I

    move-result v0

    return v0
.end method

.method public read([BII)I
    .locals 8
    .param p1, "b"    # [B
    .param p2, "offset"    # I
    .param p3, "length"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 83
    iget-object v0, p0, Landroid/media/ResampleInputStream;->mInputStream:Ljava/io/InputStream;

    if-eqz v0, :cond_6

    .line 86
    div-int/lit8 v0, p3, 0x2

    iget v1, p0, Landroid/media/ResampleInputStream;->mRateIn:I

    mul-int/2addr v0, v1

    iget v1, p0, Landroid/media/ResampleInputStream;->mRateOut:I

    div-int/2addr v0, v1

    add-int/lit8 v0, v0, 0x1d

    mul-int/lit8 v0, v0, 0x2

    .line 87
    .local v0, "nIn":I
    iget-object v1, p0, Landroid/media/ResampleInputStream;->mBuf:[B

    const/4 v2, 0x0

    if-nez v1, :cond_0

    .line 88
    new-array v1, v0, [B

    iput-object v1, p0, Landroid/media/ResampleInputStream;->mBuf:[B

    goto :goto_0

    .line 89
    :cond_0
    iget-object v1, p0, Landroid/media/ResampleInputStream;->mBuf:[B

    array-length v1, v1

    if-le v0, v1, :cond_1

    .line 90
    new-array v1, v0, [B

    .line 91
    .local v1, "bf":[B
    iget-object v3, p0, Landroid/media/ResampleInputStream;->mBuf:[B

    iget v4, p0, Landroid/media/ResampleInputStream;->mBufCount:I

    invoke-static {v3, v2, v1, v2, v4}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 92
    iput-object v1, p0, Landroid/media/ResampleInputStream;->mBuf:[B

    .line 97
    .end local v1    # "bf":[B
    :cond_1
    :goto_0
    iget v1, p0, Landroid/media/ResampleInputStream;->mBufCount:I

    div-int/lit8 v1, v1, 0x2

    add-int/lit8 v1, v1, -0x1d

    iget v3, p0, Landroid/media/ResampleInputStream;->mRateOut:I

    mul-int/2addr v1, v3

    iget v3, p0, Landroid/media/ResampleInputStream;->mRateIn:I

    div-int/2addr v1, v3

    mul-int/lit8 v1, v1, 0x2

    .line 98
    .local v1, "len":I
    if-lez v1, :cond_4

    .line 99
    if-ge v1, p3, :cond_2

    move v3, v1

    goto :goto_1

    :cond_2
    div-int/lit8 v3, p3, 0x2

    mul-int/lit8 v3, v3, 0x2

    :goto_1
    move p3, v3

    .line 100
    nop

    .line 109
    .end local v1    # "len":I
    iget-object v1, p0, Landroid/media/ResampleInputStream;->mBuf:[B

    div-int/lit8 v3, p3, 0x2

    invoke-static {v1, v2, p1, p2, v3}, Landroid/media/ResampleInputStream;->fir21([BI[BII)V

    .line 112
    iget v1, p0, Landroid/media/ResampleInputStream;->mRateIn:I

    mul-int/2addr v1, p3

    iget v3, p0, Landroid/media/ResampleInputStream;->mRateOut:I

    div-int/2addr v1, v3

    .line 113
    .local v1, "nFwd":I
    iget v3, p0, Landroid/media/ResampleInputStream;->mBufCount:I

    sub-int/2addr v3, v1

    iput v3, p0, Landroid/media/ResampleInputStream;->mBufCount:I

    .line 114
    iget v3, p0, Landroid/media/ResampleInputStream;->mBufCount:I

    if-lez v3, :cond_3

    iget-object v3, p0, Landroid/media/ResampleInputStream;->mBuf:[B

    iget-object v4, p0, Landroid/media/ResampleInputStream;->mBuf:[B

    iget v5, p0, Landroid/media/ResampleInputStream;->mBufCount:I

    invoke-static {v3, v1, v4, v2, v5}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 116
    :cond_3
    return p3

    .line 103
    .local v1, "len":I
    :cond_4
    iget-object v3, p0, Landroid/media/ResampleInputStream;->mInputStream:Ljava/io/InputStream;

    iget-object v4, p0, Landroid/media/ResampleInputStream;->mBuf:[B

    iget v5, p0, Landroid/media/ResampleInputStream;->mBufCount:I

    iget-object v6, p0, Landroid/media/ResampleInputStream;->mBuf:[B

    array-length v6, v6

    iget v7, p0, Landroid/media/ResampleInputStream;->mBufCount:I

    sub-int/2addr v6, v7

    invoke-virtual {v3, v4, v5, v6}, Ljava/io/InputStream;->read([BII)I

    move-result v3

    .line 104
    .local v3, "n":I
    const/4 v4, -0x1

    if-ne v3, v4, :cond_5

    return v4

    .line 105
    :cond_5
    iget v4, p0, Landroid/media/ResampleInputStream;->mBufCount:I

    add-int/2addr v4, v3

    iput v4, p0, Landroid/media/ResampleInputStream;->mBufCount:I

    .line 106
    .end local v1    # "len":I
    .end local v3    # "n":I
    goto :goto_0

    .line 83
    .end local v0    # "nIn":I
    :cond_6
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "not open"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
