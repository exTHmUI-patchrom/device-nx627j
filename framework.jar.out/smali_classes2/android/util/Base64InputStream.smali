.class public Landroid/util/Base64InputStream;
.super Ljava/io/FilterInputStream;
.source "Base64InputStream.java"


# static fields
.field private static final BUFFER_SIZE:I = 0x800

.field private static EMPTY:[B


# instance fields
.field private final coder:Landroid/util/Base64$Coder;

.field private eof:Z

.field private inputBuffer:[B

.field private outputEnd:I

.field private outputStart:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 30
    const/4 v0, 0x0

    new-array v0, v0, [B

    sput-object v0, Landroid/util/Base64InputStream;->EMPTY:[B

    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;I)V
    .locals 1
    .param p1, "in"    # Ljava/io/InputStream;
    .param p2, "flags"    # I

    .line 47
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Landroid/util/Base64InputStream;-><init>(Ljava/io/InputStream;IZ)V

    .line 48
    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;IZ)V
    .locals 4
    .param p1, "in"    # Ljava/io/InputStream;
    .param p2, "flags"    # I
    .param p3, "encode"    # Z

    .line 62
    invoke-direct {p0, p1}, Ljava/io/FilterInputStream;-><init>(Ljava/io/InputStream;)V

    .line 63
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/util/Base64InputStream;->eof:Z

    .line 64
    const/16 v1, 0x800

    new-array v2, v1, [B

    iput-object v2, p0, Landroid/util/Base64InputStream;->inputBuffer:[B

    .line 65
    const/4 v2, 0x0

    if-eqz p3, :cond_0

    .line 66
    new-instance v3, Landroid/util/Base64$Encoder;

    invoke-direct {v3, p2, v2}, Landroid/util/Base64$Encoder;-><init>(I[B)V

    iput-object v3, p0, Landroid/util/Base64InputStream;->coder:Landroid/util/Base64$Coder;

    goto :goto_0

    .line 68
    :cond_0
    new-instance v3, Landroid/util/Base64$Decoder;

    invoke-direct {v3, p2, v2}, Landroid/util/Base64$Decoder;-><init>(I[B)V

    iput-object v3, p0, Landroid/util/Base64InputStream;->coder:Landroid/util/Base64$Coder;

    .line 70
    :goto_0
    iget-object v2, p0, Landroid/util/Base64InputStream;->coder:Landroid/util/Base64$Coder;

    iget-object v3, p0, Landroid/util/Base64InputStream;->coder:Landroid/util/Base64$Coder;

    invoke-virtual {v3, v1}, Landroid/util/Base64$Coder;->maxOutputSize(I)I

    move-result v1

    new-array v1, v1, [B

    iput-object v1, v2, Landroid/util/Base64$Coder;->output:[B

    .line 71
    iput v0, p0, Landroid/util/Base64InputStream;->outputStart:I

    .line 72
    iput v0, p0, Landroid/util/Base64InputStream;->outputEnd:I

    .line 73
    return-void
.end method

.method private refill()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 138
    iget-boolean v0, p0, Landroid/util/Base64InputStream;->eof:Z

    if-eqz v0, :cond_0

    return-void

    .line 139
    :cond_0
    iget-object v0, p0, Landroid/util/Base64InputStream;->in:Ljava/io/InputStream;

    iget-object v1, p0, Landroid/util/Base64InputStream;->inputBuffer:[B

    invoke-virtual {v0, v1}, Ljava/io/InputStream;->read([B)I

    move-result v0

    .line 141
    .local v0, "bytesRead":I
    const/4 v1, -0x1

    const/4 v2, 0x0

    if-ne v0, v1, :cond_1

    .line 142
    const/4 v1, 0x1

    iput-boolean v1, p0, Landroid/util/Base64InputStream;->eof:Z

    .line 143
    iget-object v3, p0, Landroid/util/Base64InputStream;->coder:Landroid/util/Base64$Coder;

    sget-object v4, Landroid/util/Base64InputStream;->EMPTY:[B

    invoke-virtual {v3, v4, v2, v2, v1}, Landroid/util/Base64$Coder;->process([BIIZ)Z

    move-result v1

    .local v1, "success":Z
    goto :goto_0

    .line 145
    .end local v1    # "success":Z
    :cond_1
    iget-object v1, p0, Landroid/util/Base64InputStream;->coder:Landroid/util/Base64$Coder;

    iget-object v3, p0, Landroid/util/Base64InputStream;->inputBuffer:[B

    invoke-virtual {v1, v3, v2, v0, v2}, Landroid/util/Base64$Coder;->process([BIIZ)Z

    move-result v1

    .line 147
    .restart local v1    # "success":Z
    :goto_0
    if-eqz v1, :cond_2

    .line 150
    iget-object v3, p0, Landroid/util/Base64InputStream;->coder:Landroid/util/Base64$Coder;

    iget v3, v3, Landroid/util/Base64$Coder;->op:I

    iput v3, p0, Landroid/util/Base64InputStream;->outputEnd:I

    .line 151
    iput v2, p0, Landroid/util/Base64InputStream;->outputStart:I

    .line 152
    return-void

    .line 148
    :cond_2
    new-instance v2, Landroid/util/Base64DataException;

    const-string v3, "bad base-64"

    invoke-direct {v2, v3}, Landroid/util/Base64DataException;-><init>(Ljava/lang/String;)V

    throw v2
.end method


# virtual methods
.method public available()I
    .locals 2

    .line 93
    iget v0, p0, Landroid/util/Base64InputStream;->outputEnd:I

    iget v1, p0, Landroid/util/Base64InputStream;->outputStart:I

    sub-int/2addr v0, v1

    return v0
.end method

.method public close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 88
    iget-object v0, p0, Landroid/util/Base64InputStream;->in:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    .line 89
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/util/Base64InputStream;->inputBuffer:[B

    .line 90
    return-void
.end method

.method public mark(I)V
    .locals 1
    .param p1, "readlimit"    # I

    .line 80
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public markSupported()Z
    .locals 1

    .line 76
    const/4 v0, 0x0

    return v0
.end method

.method public read()I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 109
    iget v0, p0, Landroid/util/Base64InputStream;->outputStart:I

    iget v1, p0, Landroid/util/Base64InputStream;->outputEnd:I

    if-lt v0, v1, :cond_0

    .line 110
    invoke-direct {p0}, Landroid/util/Base64InputStream;->refill()V

    .line 112
    :cond_0
    iget v0, p0, Landroid/util/Base64InputStream;->outputStart:I

    iget v1, p0, Landroid/util/Base64InputStream;->outputEnd:I

    if-lt v0, v1, :cond_1

    .line 113
    const/4 v0, -0x1

    return v0

    .line 115
    :cond_1
    iget-object v0, p0, Landroid/util/Base64InputStream;->coder:Landroid/util/Base64$Coder;

    iget-object v0, v0, Landroid/util/Base64$Coder;->output:[B

    iget v1, p0, Landroid/util/Base64InputStream;->outputStart:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Landroid/util/Base64InputStream;->outputStart:I

    aget-byte v0, v0, v1

    and-int/lit16 v0, v0, 0xff

    return v0
.end method

.method public read([BII)I
    .locals 3
    .param p1, "b"    # [B
    .param p2, "off"    # I
    .param p3, "len"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 120
    iget v0, p0, Landroid/util/Base64InputStream;->outputStart:I

    iget v1, p0, Landroid/util/Base64InputStream;->outputEnd:I

    if-lt v0, v1, :cond_0

    .line 121
    invoke-direct {p0}, Landroid/util/Base64InputStream;->refill()V

    .line 123
    :cond_0
    iget v0, p0, Landroid/util/Base64InputStream;->outputStart:I

    iget v1, p0, Landroid/util/Base64InputStream;->outputEnd:I

    if-lt v0, v1, :cond_1

    .line 124
    const/4 v0, -0x1

    return v0

    .line 126
    :cond_1
    iget v0, p0, Landroid/util/Base64InputStream;->outputEnd:I

    iget v1, p0, Landroid/util/Base64InputStream;->outputStart:I

    sub-int/2addr v0, v1

    invoke-static {p3, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 127
    .local v0, "bytes":I
    iget-object v1, p0, Landroid/util/Base64InputStream;->coder:Landroid/util/Base64$Coder;

    iget-object v1, v1, Landroid/util/Base64$Coder;->output:[B

    iget v2, p0, Landroid/util/Base64InputStream;->outputStart:I

    invoke-static {v1, v2, p1, p2, v0}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 128
    iget v1, p0, Landroid/util/Base64InputStream;->outputStart:I

    add-int/2addr v1, v0

    iput v1, p0, Landroid/util/Base64InputStream;->outputStart:I

    .line 129
    return v0
.end method

.method public reset()V
    .locals 1

    .line 84
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public skip(J)J
    .locals 4
    .param p1, "n"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 97
    iget v0, p0, Landroid/util/Base64InputStream;->outputStart:I

    iget v1, p0, Landroid/util/Base64InputStream;->outputEnd:I

    if-lt v0, v1, :cond_0

    .line 98
    invoke-direct {p0}, Landroid/util/Base64InputStream;->refill()V

    .line 100
    :cond_0
    iget v0, p0, Landroid/util/Base64InputStream;->outputStart:I

    iget v1, p0, Landroid/util/Base64InputStream;->outputEnd:I

    if-lt v0, v1, :cond_1

    .line 101
    const-wide/16 v0, 0x0

    return-wide v0

    .line 103
    :cond_1
    iget v0, p0, Landroid/util/Base64InputStream;->outputEnd:I

    iget v1, p0, Landroid/util/Base64InputStream;->outputStart:I

    sub-int/2addr v0, v1

    int-to-long v0, v0

    invoke-static {p1, p2, v0, v1}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    .line 104
    .local v0, "bytes":J
    iget v2, p0, Landroid/util/Base64InputStream;->outputStart:I

    int-to-long v2, v2

    add-long/2addr v2, v0

    long-to-int v2, v2

    iput v2, p0, Landroid/util/Base64InputStream;->outputStart:I

    .line 105
    return-wide v0
.end method
