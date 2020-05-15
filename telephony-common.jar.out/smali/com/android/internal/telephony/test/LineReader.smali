.class Lcom/android/internal/telephony/test/LineReader;
.super Ljava/lang/Object;
.source "ModelInterpreter.java"


# static fields
.field static final BUFFER_SIZE:I = 0x1000


# instance fields
.field mBuffer:[B

.field mInStream:Ljava/io/InputStream;


# direct methods
.method constructor <init>(Ljava/io/InputStream;)V
    .locals 1
    .param p1, "s"    # Ljava/io/InputStream;

    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    const/16 v0, 0x1000

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/android/internal/telephony/test/LineReader;->mBuffer:[B

    .line 55
    iput-object p1, p0, Lcom/android/internal/telephony/test/LineReader;->mInStream:Ljava/io/InputStream;

    .line 56
    return-void
.end method


# virtual methods
.method getNextLine()Ljava/lang/String;
    .locals 1

    .line 61
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/test/LineReader;->getNextLine(Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method getNextLine(Z)Ljava/lang/String;
    .locals 7
    .param p1, "ctrlZ"    # Z

    .line 80
    const/4 v0, 0x0

    move v1, v0

    .line 86
    .local v1, "i":I
    :goto_0
    const/4 v2, 0x0

    :try_start_0
    iget-object v3, p0, Lcom/android/internal/telephony/test/LineReader;->mInStream:Ljava/io/InputStream;

    invoke-virtual {v3}, Ljava/io/InputStream;->read()I

    move-result v3

    .line 88
    .local v3, "result":I
    if-gez v3, :cond_0

    .line 89
    return-object v2

    .line 92
    :cond_0
    if-eqz p1, :cond_1

    const/16 v4, 0x1a

    if-ne v3, v4, :cond_1

    .line 93
    goto :goto_2

    .line 94
    :cond_1
    const/16 v4, 0xd

    if-eq v3, v4, :cond_3

    const/16 v4, 0xa

    if-ne v3, v4, :cond_2

    goto :goto_1

    .line 103
    :cond_2
    iget-object v4, p0, Lcom/android/internal/telephony/test/LineReader;->mBuffer:[B
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_2

    add-int/lit8 v5, v1, 0x1

    .local v5, "i":I
    int-to-byte v6, v3

    :try_start_1
    aput-byte v6, v4, v1
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_1 .. :try_end_1} :catch_0

    .line 104
    .end local v1    # "i":I
    .end local v3    # "result":I
    nop

    .line 80
    move v1, v5

    goto :goto_0

    .line 107
    :catch_0
    move-exception v1

    move-object v3, v1

    move v1, v5

    goto :goto_3

    .line 105
    :catch_1
    move-exception v0

    move v1, v5

    goto :goto_5

    .line 95
    .end local v5    # "i":I
    .restart local v1    # "i":I
    .restart local v3    # "result":I
    :cond_3
    :goto_1
    if-nez v1, :cond_4

    .line 97
    goto :goto_0

    .line 109
    .end local v3    # "result":I
    :cond_4
    :goto_2
    goto :goto_4

    .line 107
    :catch_2
    move-exception v3

    .line 108
    .local v3, "ex":Ljava/lang/IndexOutOfBoundsException;
    :goto_3
    sget-object v4, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v5, "ATChannel: buffer overflow"

    invoke-virtual {v4, v5}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 112
    .end local v3    # "ex":Ljava/lang/IndexOutOfBoundsException;
    :goto_4
    :try_start_2
    new-instance v3, Ljava/lang/String;

    iget-object v4, p0, Lcom/android/internal/telephony/test/LineReader;->mBuffer:[B

    const-string v5, "US-ASCII"

    invoke-direct {v3, v4, v0, v1, v5}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V
    :try_end_2
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_2 .. :try_end_2} :catch_3

    return-object v3

    .line 113
    :catch_3
    move-exception v0

    .line 114
    .local v0, "ex":Ljava/io/UnsupportedEncodingException;
    sget-object v3, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v4, "ATChannel: implausable UnsupportedEncodingException"

    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 115
    return-object v2

    .line 105
    .end local v0    # "ex":Ljava/io/UnsupportedEncodingException;
    :catch_4
    move-exception v0

    .line 106
    .local v0, "ex":Ljava/io/IOException;
    :goto_5
    return-object v2
.end method

.method getNextLineCtrlZ()Ljava/lang/String;
    .locals 1

    .line 67
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/test/LineReader;->getNextLine(Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
