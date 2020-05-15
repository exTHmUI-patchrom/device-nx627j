.class public Landroid/net/SntpClient;
.super Ljava/lang/Object;
.source "SntpClient.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/SntpClient$InvalidServerReplyException;
    }
.end annotation


# static fields
.field private static final DBG:Z = true

.field private static final NTP_LEAP_NOSYNC:I = 0x3

.field private static final NTP_MODE_BROADCAST:I = 0x5

.field private static final NTP_MODE_CLIENT:I = 0x3

.field private static final NTP_MODE_SERVER:I = 0x4

.field private static final NTP_PACKET_SIZE:I = 0x30

.field private static final NTP_PORT:I = 0x7b

.field private static final NTP_STRATUM_DEATH:I = 0x0

.field private static final NTP_STRATUM_MAX:I = 0xf

.field private static final NTP_VERSION:I = 0x3

.field private static final OFFSET_1900_TO_1970:J = 0x83aa7e80L

.field private static final ORIGINATE_TIME_OFFSET:I = 0x18

.field private static final RECEIVE_TIME_OFFSET:I = 0x20

.field private static final REFERENCE_TIME_OFFSET:I = 0x10

.field private static final TAG:Ljava/lang/String; = "SntpClient"

.field private static final TRANSMIT_TIME_OFFSET:I = 0x28


# instance fields
.field private mNtpTime:J

.field private mNtpTimeReference:J

.field private mRoundTripTime:J


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static checkValidServerReply(BBIJ)V
    .locals 3
    .param p0, "leap"    # B
    .param p1, "mode"    # B
    .param p2, "stratum"    # I
    .param p3, "transmitTime"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/net/SntpClient$InvalidServerReplyException;
        }
    .end annotation

    .line 225
    const/4 v0, 0x3

    if-eq p0, v0, :cond_4

    .line 228
    const/4 v0, 0x4

    if-eq p1, v0, :cond_1

    const/4 v0, 0x5

    if-ne p1, v0, :cond_0

    goto :goto_0

    .line 229
    :cond_0
    new-instance v0, Landroid/net/SntpClient$InvalidServerReplyException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "untrusted mode: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/net/SntpClient$InvalidServerReplyException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 231
    :cond_1
    :goto_0
    if-eqz p2, :cond_3

    const/16 v0, 0xf

    if-gt p2, v0, :cond_3

    .line 234
    const-wide/16 v0, 0x0

    cmp-long v0, p3, v0

    if-eqz v0, :cond_2

    .line 237
    return-void

    .line 235
    :cond_2
    new-instance v0, Landroid/net/SntpClient$InvalidServerReplyException;

    const-string/jumbo v1, "zero transmitTime"

    invoke-direct {v0, v1}, Landroid/net/SntpClient$InvalidServerReplyException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 232
    :cond_3
    new-instance v0, Landroid/net/SntpClient$InvalidServerReplyException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "untrusted stratum: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/net/SntpClient$InvalidServerReplyException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 226
    :cond_4
    new-instance v0, Landroid/net/SntpClient$InvalidServerReplyException;

    const-string/jumbo v1, "unsynchronized server"

    invoke-direct {v0, v1}, Landroid/net/SntpClient$InvalidServerReplyException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private read32([BI)J
    .locals 13
    .param p1, "buffer"    # [B
    .param p2, "offset"    # I

    .line 243
    aget-byte v0, p1, p2

    .line 244
    .local v0, "b0":B
    add-int/lit8 v1, p2, 0x1

    aget-byte v1, p1, v1

    .line 245
    .local v1, "b1":B
    add-int/lit8 v2, p2, 0x2

    aget-byte v2, p1, v2

    .line 246
    .local v2, "b2":B
    add-int/lit8 v3, p2, 0x3

    aget-byte v3, p1, v3

    .line 249
    .local v3, "b3":B
    and-int/lit16 v4, v0, 0x80

    const/16 v5, 0x80

    if-ne v4, v5, :cond_0

    and-int/lit8 v4, v0, 0x7f

    add-int/2addr v4, v5

    goto :goto_0

    :cond_0
    move v4, v0

    .line 250
    .local v4, "i0":I
    :goto_0
    and-int/lit16 v6, v1, 0x80

    if-ne v6, v5, :cond_1

    and-int/lit8 v6, v1, 0x7f

    add-int/2addr v6, v5

    goto :goto_1

    :cond_1
    move v6, v1

    .line 251
    .local v6, "i1":I
    :goto_1
    and-int/lit16 v7, v2, 0x80

    if-ne v7, v5, :cond_2

    and-int/lit8 v7, v2, 0x7f

    add-int/2addr v7, v5

    goto :goto_2

    :cond_2
    move v7, v2

    .line 252
    .local v7, "i2":I
    :goto_2
    and-int/lit16 v8, v3, 0x80

    if-ne v8, v5, :cond_3

    and-int/lit8 v8, v3, 0x7f

    add-int/2addr v5, v8

    goto :goto_3

    :cond_3
    move v5, v3

    .line 254
    .local v5, "i3":I
    :goto_3
    int-to-long v8, v4

    const/16 v10, 0x18

    shl-long/2addr v8, v10

    int-to-long v10, v6

    const/16 v12, 0x10

    shl-long/2addr v10, v12

    add-long/2addr v8, v10

    int-to-long v10, v7

    const/16 v12, 0x8

    shl-long/2addr v10, v12

    add-long/2addr v8, v10

    int-to-long v10, v5

    add-long/2addr v8, v10

    return-wide v8
.end method

.method private readTimeStamp([BI)J
    .locals 10
    .param p1, "buffer"    # [B
    .param p2, "offset"    # I

    .line 262
    invoke-direct {p0, p1, p2}, Landroid/net/SntpClient;->read32([BI)J

    move-result-wide v0

    .line 263
    .local v0, "seconds":J
    add-int/lit8 v2, p2, 0x4

    invoke-direct {p0, p1, v2}, Landroid/net/SntpClient;->read32([BI)J

    move-result-wide v2

    .line 265
    .local v2, "fraction":J
    const-wide/16 v4, 0x0

    cmp-long v6, v0, v4

    if-nez v6, :cond_0

    cmp-long v6, v2, v4

    if-nez v6, :cond_0

    .line 266
    return-wide v4

    .line 268
    :cond_0
    const-wide v4, 0x83aa7e80L

    sub-long v4, v0, v4

    const-wide/16 v6, 0x3e8

    mul-long/2addr v4, v6

    mul-long/2addr v6, v2

    const-wide v8, 0x100000000L

    div-long/2addr v6, v8

    add-long/2addr v4, v6

    return-wide v4
.end method

.method private requestAddress(Ljava/lang/String;Landroid/net/Network;)[Ljava/net/InetAddress;
    .locals 7
    .param p1, "host"    # Ljava/lang/String;
    .param p2, "network"    # Landroid/net/Network;

    .line 304
    :try_start_0
    invoke-static {p1}, Ljava/net/InetAddress;->getAllByName(Ljava/lang/String;)[Ljava/net/InetAddress;

    move-result-object v0

    .line 305
    .local v0, "addressDnsBack":[Ljava/net/InetAddress;
    const/4 v1, 0x0

    .line 306
    .local v1, "addressBackup":[Ljava/net/InetAddress;
    const-string v2, "0.pool.ntp.org"
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 308
    .local v2, "backup":Ljava/lang/String;
    :try_start_1
    invoke-static {v2}, Ljava/net/InetAddress;->getAllByName(Ljava/lang/String;)[Ljava/net/InetAddress;

    move-result-object v3
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-object v1, v3

    .line 311
    goto :goto_0

    .line 309
    :catch_0
    move-exception v3

    .line 310
    .local v3, "e":Ljava/lang/Exception;
    :try_start_2
    const-string v4, "SntpClient"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getAllByName: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 314
    .end local v3    # "e":Ljava/lang/Exception;
    :goto_0
    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    if-eqz v1, :cond_0

    .line 315
    array-length v3, v0

    array-length v4, v1

    add-int/2addr v3, v4

    new-array v3, v3, [Ljava/net/InetAddress;

    .line 316
    .local v3, "address":[Ljava/net/InetAddress;
    array-length v4, v0

    const/4 v5, 0x0

    invoke-static {v0, v5, v3, v5, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 317
    array-length v4, v0

    array-length v6, v1

    invoke-static {v1, v5, v3, v4, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_1

    .line 319
    .end local v3    # "address":[Ljava/net/InetAddress;
    :cond_0
    move-object v3, v0

    .line 321
    .restart local v3    # "address":[Ljava/net/InetAddress;
    :goto_1
    return-object v3

    .line 322
    .end local v0    # "addressDnsBack":[Ljava/net/InetAddress;
    .end local v1    # "addressBackup":[Ljava/net/InetAddress;
    .end local v2    # "backup":Ljava/lang/String;
    .end local v3    # "address":[Ljava/net/InetAddress;
    :catch_1
    move-exception v0

    .line 323
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "SntpClient"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "request address failed: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 326
    .end local v0    # "e":Ljava/lang/Exception;
    const/4 v0, 0x0

    return-object v0
.end method

.method private writeTimeStamp([BIJ)V
    .locals 15
    .param p1, "buffer"    # [B
    .param p2, "offset"    # I
    .param p3, "time"    # J

    move-object/from16 v0, p1

    move/from16 v1, p2

    .line 277
    const-wide/16 v2, 0x0

    cmp-long v2, p3, v2

    const/4 v3, 0x0

    if-nez v2, :cond_0

    .line 278
    add-int/lit8 v2, v1, 0x8

    invoke-static {v0, v1, v2, v3}, Ljava/util/Arrays;->fill([BIIB)V

    .line 279
    return-void

    .line 282
    :cond_0
    const-wide/16 v4, 0x3e8

    div-long v6, p3, v4

    .line 283
    .local v6, "seconds":J
    mul-long v8, v6, v4

    sub-long v8, p3, v8

    .line 284
    .local v8, "milliseconds":J
    const-wide v10, 0x83aa7e80L

    add-long/2addr v6, v10

    .line 287
    add-int/lit8 v2, v1, 0x1

    .local v2, "offset":I
    const/16 v10, 0x18

    shr-long v11, v6, v10

    long-to-int v11, v11

    int-to-byte v11, v11

    aput-byte v11, v0, v1

    .line 288
    .end local p2    # "offset":I
    add-int/lit8 v1, v2, 0x1

    .local v1, "offset":I
    const/16 v11, 0x10

    shr-long v12, v6, v11

    long-to-int v12, v12

    int-to-byte v12, v12

    aput-byte v12, v0, v2

    .line 289
    .end local v2    # "offset":I
    add-int/lit8 v2, v1, 0x1

    .restart local v2    # "offset":I
    const/16 v12, 0x8

    shr-long v10, v6, v12

    long-to-int v10, v10

    int-to-byte v10, v10

    aput-byte v10, v0, v1

    .line 290
    .end local v1    # "offset":I
    add-int/lit8 v1, v2, 0x1

    .restart local v1    # "offset":I
    shr-long v10, v6, v3

    long-to-int v3, v10

    int-to-byte v3, v3

    aput-byte v3, v0, v2

    .line 292
    .end local v2    # "offset":I
    const-wide v2, 0x100000000L

    mul-long/2addr v2, v8

    div-long/2addr v2, v4

    .line 294
    .local v2, "fraction":J
    add-int/lit8 v4, v1, 0x1

    .local v4, "offset":I
    const/16 v5, 0x18

    shr-long v10, v2, v5

    long-to-int v5, v10

    int-to-byte v5, v5

    aput-byte v5, v0, v1

    .line 295
    .end local v1    # "offset":I
    add-int/lit8 v1, v4, 0x1

    .restart local v1    # "offset":I
    const/16 v5, 0x10

    shr-long v10, v2, v5

    long-to-int v5, v10

    int-to-byte v5, v5

    aput-byte v5, v0, v4

    .line 296
    .end local v4    # "offset":I
    add-int/lit8 v4, v1, 0x1

    .restart local v4    # "offset":I
    shr-long v10, v2, v12

    long-to-int v5, v10

    int-to-byte v5, v5

    aput-byte v5, v0, v1

    .line 298
    .end local v1    # "offset":I
    add-int/lit8 v1, v4, 0x1

    .restart local v1    # "offset":I
    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v10

    const-wide v12, 0x406fe00000000000L    # 255.0

    mul-double/2addr v10, v12

    double-to-int v5, v10

    int-to-byte v5, v5

    aput-byte v5, v0, v4

    .line 299
    .end local v4    # "offset":I
    return-void
.end method


# virtual methods
.method public getNtpTime()J
    .locals 2

    .line 200
    iget-wide v0, p0, Landroid/net/SntpClient;->mNtpTime:J

    return-wide v0
.end method

.method public getNtpTimeReference()J
    .locals 2

    .line 210
    iget-wide v0, p0, Landroid/net/SntpClient;->mNtpTimeReference:J

    return-wide v0
.end method

.method public getRoundTripTime()J
    .locals 2

    .line 219
    iget-wide v0, p0, Landroid/net/SntpClient;->mRoundTripTime:J

    return-wide v0
.end method

.method public requestTime(Ljava/lang/String;I)Z
    .locals 2
    .param p1, "host"    # Ljava/lang/String;
    .param p2, "timeout"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 190
    const-string v0, "SntpClient"

    const-string v1, "Shame on you for calling the hidden API requestTime()!"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 191
    const/4 v0, 0x0

    return v0
.end method

.method public requestTime(Ljava/lang/String;ILandroid/net/Network;)Z
    .locals 4
    .param p1, "host"    # Ljava/lang/String;
    .param p2, "timeout"    # I
    .param p3, "network"    # Landroid/net/Network;

    .line 90
    const/4 v0, 0x1

    invoke-virtual {p3, v0}, Landroid/net/Network;->setPrivateDnsBypass(Z)V

    .line 103
    invoke-direct {p0, p1, p3}, Landroid/net/SntpClient;->requestAddress(Ljava/lang/String;Landroid/net/Network;)[Ljava/net/InetAddress;

    move-result-object v1

    .line 105
    .local v1, "addressArray":[Ljava/net/InetAddress;
    if-nez v1, :cond_0

    .line 106
    const/4 v0, 0x0

    return v0

    .line 108
    :cond_0
    div-int/lit16 v2, p2, 0x3e8

    array-length v3, v1

    add-int/2addr v2, v3

    sub-int/2addr v2, v0

    array-length v0, v1

    div-int/2addr v2, v0

    mul-int/lit16 v2, v2, 0x3e8

    .line 109
    .local v2, "timeoutEach":I
    const/16 v0, 0x7b

    invoke-virtual {p0, v1, v0, v2, p3}, Landroid/net/SntpClient;->requestTime([Ljava/net/InetAddress;IILandroid/net/Network;)Z

    move-result v0

    return v0
.end method

.method public requestTime(Ljava/net/InetAddress;IILandroid/net/Network;)Z
    .locals 41
    .param p1, "address"    # Ljava/net/InetAddress;
    .param p2, "port"    # I
    .param p3, "timeout"    # I
    .param p4, "network"    # Landroid/net/Network;

    move-object/from16 v1, p0

    .line 114
    const/4 v2, 0x0

    .line 115
    .local v2, "socket":Ljava/net/DatagramSocket;
    const/16 v0, -0xbf

    invoke-static {v0}, Landroid/net/TrafficStats;->getAndSetThreadStatsTag(I)I

    move-result v0

    move v3, v0

    .line 117
    .local v3, "oldTag":I
    const/4 v4, 0x0

    :try_start_0
    new-instance v0, Ljava/net/DatagramSocket;

    invoke-direct {v0}, Ljava/net/DatagramSocket;-><init>()V

    move-object v2, v0

    .line 118
    move-object/from16 v5, p4

    invoke-virtual {v5, v2}, Landroid/net/Network;->bindSocket(Ljava/net/DatagramSocket;)V

    .line 119
    move/from16 v6, p3

    invoke-virtual {v2, v6}, Ljava/net/DatagramSocket;->setSoTimeout(I)V

    .line 120
    const/16 v0, 0x30

    new-array v0, v0, [B

    .line 121
    .local v0, "buffer":[B
    new-instance v7, Ljava/net/DatagramPacket;

    array-length v8, v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object/from16 v9, p1

    move/from16 v10, p2

    :try_start_1
    invoke-direct {v7, v0, v8, v9, v10}, Ljava/net/DatagramPacket;-><init>([BILjava/net/InetAddress;I)V

    .line 126
    .local v7, "request":Ljava/net/DatagramPacket;
    const/16 v8, 0x1b

    aput-byte v8, v0, v4

    .line 129
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v11

    .line 130
    .local v11, "requestTime":J
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v13

    .line 131
    .local v13, "requestTicks":J
    const/16 v8, 0x28

    invoke-direct {v1, v0, v8, v11, v12}, Landroid/net/SntpClient;->writeTimeStamp([BIJ)V

    .line 133
    invoke-virtual {v2, v7}, Ljava/net/DatagramSocket;->send(Ljava/net/DatagramPacket;)V

    .line 136
    new-instance v15, Ljava/net/DatagramPacket;

    array-length v8, v0

    invoke-direct {v15, v0, v8}, Ljava/net/DatagramPacket;-><init>([BI)V

    move-object v8, v15

    .line 137
    .local v8, "response":Ljava/net/DatagramPacket;
    invoke-virtual {v2, v8}, Ljava/net/DatagramSocket;->receive(Ljava/net/DatagramPacket;)V

    .line 138
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v16

    move-wide/from16 v18, v16

    .line 139
    .local v18, "responseTicks":J
    move-wide/from16 v4, v18

    sub-long v18, v4, v13

    .line 139
    .end local v18    # "responseTicks":J
    .local v4, "responseTicks":J
    add-long v18, v11, v18

    .line 142
    .local v18, "responseTime":J
    const/4 v15, 0x0

    aget-byte v16, v0, v15

    shr-int/lit8 v16, v16, 0x6

    and-int/lit8 v15, v16, 0x3

    int-to-byte v15, v15

    .line 143
    .local v15, "leap":B
    const/16 v16, 0x0

    aget-byte v17, v0, v16

    and-int/lit8 v6, v17, 0x7

    int-to-byte v6, v6

    .line 144
    .local v6, "mode":B
    const/16 v16, 0x1

    move-object/from16 v20, v7

    aget-byte v7, v0, v16

    .line 144
    .end local v7    # "request":Ljava/net/DatagramPacket;
    .local v20, "request":Ljava/net/DatagramPacket;
    and-int/lit16 v7, v7, 0xff

    .line 145
    .local v7, "stratum":I
    move-object/from16 v21, v8

    const/16 v8, 0x18

    .line 145
    .end local v8    # "response":Ljava/net/DatagramPacket;
    .local v21, "response":Ljava/net/DatagramPacket;
    invoke-direct {v1, v0, v8}, Landroid/net/SntpClient;->readTimeStamp([BI)J

    move-result-wide v22

    .line 146
    .local v22, "originateTime":J
    const/16 v8, 0x20

    invoke-direct {v1, v0, v8}, Landroid/net/SntpClient;->readTimeStamp([BI)J

    move-result-wide v24

    .line 147
    .local v24, "receiveTime":J
    const/16 v8, 0x28

    invoke-direct {v1, v0, v8}, Landroid/net/SntpClient;->readTimeStamp([BI)J

    move-result-wide v26

    move-wide/from16 v28, v26

    .line 151
    .local v28, "transmitTime":J
    move-wide/from16 v30, v11

    move-wide/from16 v10, v28

    invoke-static {v15, v6, v7, v10, v11}, Landroid/net/SntpClient;->checkValidServerReply(BBIJ)V

    .line 153
    .end local v11    # "requestTime":J
    .end local v28    # "transmitTime":J
    .local v10, "transmitTime":J
    .local v30, "requestTime":J
    sub-long v26, v4, v13

    sub-long v28, v10, v24

    move/from16 v32, v6

    move/from16 v33, v7

    sub-long v6, v26, v28

    .line 162
    .end local v7    # "stratum":I
    .local v6, "roundTripTime":J
    .local v32, "mode":B
    .local v33, "stratum":I
    sub-long v26, v24, v22

    sub-long v28, v10, v18

    add-long v26, v26, v28

    const-wide/16 v28, 0x2

    div-long v26, v26, v28

    move-wide/from16 v34, v26

    .line 163
    .local v34, "clockOffset":J
    invoke-virtual/range {p1 .. p1}, Ljava/net/InetAddress;->toString()Ljava/lang/String;

    move-result-object v8

    move-wide/from16 v36, v10

    move-wide/from16 v10, v34

    invoke-static {v8, v6, v7, v10, v11}, Landroid/net/EventLogTags;->writeNtpSuccess(Ljava/lang/String;JJ)V

    .line 165
    .end local v34    # "clockOffset":J
    .local v10, "clockOffset":J
    .local v36, "transmitTime":J
    const-string v8, "SntpClient"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v38, v0

    const-string/jumbo v0, "round trip: "

    .line 165
    .end local v0    # "buffer":[B
    .local v38, "buffer":[B
    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string/jumbo v0, "ms, clock offset: "

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string/jumbo v0, "ms"

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v8, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 171
    move-wide/from16 v39, v13

    add-long v12, v18, v10

    .line 171
    .end local v13    # "requestTicks":J
    .local v39, "requestTicks":J
    iput-wide v12, v1, Landroid/net/SntpClient;->mNtpTime:J

    .line 172
    iput-wide v4, v1, Landroid/net/SntpClient;->mNtpTimeReference:J

    .line 173
    iput-wide v6, v1, Landroid/net/SntpClient;->mRoundTripTime:J
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 179
    .end local v4    # "responseTicks":J
    .end local v6    # "roundTripTime":J
    .end local v10    # "clockOffset":J
    .end local v15    # "leap":B
    .end local v18    # "responseTime":J
    .end local v20    # "request":Ljava/net/DatagramPacket;
    .end local v21    # "response":Ljava/net/DatagramPacket;
    .end local v22    # "originateTime":J
    .end local v24    # "receiveTime":J
    .end local v30    # "requestTime":J
    .end local v32    # "mode":B
    .end local v33    # "stratum":I
    .end local v36    # "transmitTime":J
    .end local v38    # "buffer":[B
    .end local v39    # "requestTicks":J
    nop

    .line 180
    invoke-virtual {v2}, Ljava/net/DatagramSocket;->close()V

    .line 182
    invoke-static {v3}, Landroid/net/TrafficStats;->setThreadStatsTag(I)V

    .line 183
    nop

    .line 185
    return v16

    .line 174
    :catch_0
    move-exception v0

    goto :goto_0

    .line 179
    :catchall_0
    move-exception v0

    move-object/from16 v9, p1

    goto :goto_1

    .line 174
    :catch_1
    move-exception v0

    move-object/from16 v9, p1

    .line 175
    .local v0, "e":Ljava/lang/Exception;
    :goto_0
    :try_start_2
    invoke-virtual/range {p1 .. p1}, Ljava/net/InetAddress;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/net/EventLogTags;->writeNtpFailure(Ljava/lang/String;Ljava/lang/String;)V

    .line 176
    const-string v4, "SntpClient"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "request time failed: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 177
    nop

    .line 179
    if-eqz v2, :cond_0

    .line 180
    invoke-virtual {v2}, Ljava/net/DatagramSocket;->close()V

    .line 182
    :cond_0
    invoke-static {v3}, Landroid/net/TrafficStats;->setThreadStatsTag(I)V

    .line 177
    const/4 v4, 0x0

    return v4

    .line 179
    .end local v0    # "e":Ljava/lang/Exception;
    :catchall_1
    move-exception v0

    :goto_1
    if-eqz v2, :cond_1

    .line 180
    invoke-virtual {v2}, Ljava/net/DatagramSocket;->close()V

    .line 182
    :cond_1
    invoke-static {v3}, Landroid/net/TrafficStats;->setThreadStatsTag(I)V

    throw v0
.end method

.method public requestTime([Ljava/net/InetAddress;IILandroid/net/Network;)Z
    .locals 43
    .param p1, "addressArray"    # [Ljava/net/InetAddress;
    .param p2, "port"    # I
    .param p3, "timeoutEach"    # I
    .param p4, "network"    # Landroid/net/Network;

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    .line 330
    array-length v3, v2

    const/4 v4, 0x0

    move v5, v4

    :goto_0
    if-ge v5, v3, :cond_3

    aget-object v6, v2, v5

    .line 331
    .local v6, "address":Ljava/net/InetAddress;
    const/4 v7, 0x1

    .line 332
    .local v7, "isTimeSuccess":Z
    const/4 v0, 0x0

    move-object v8, v0

    .line 334
    .local v8, "socket":Ljava/net/DatagramSocket;
    :try_start_0
    new-instance v0, Ljava/net/DatagramSocket;

    invoke-direct {v0}, Ljava/net/DatagramSocket;-><init>()V

    move-object v8, v0

    .line 335
    move-object/from16 v10, p4

    invoke-virtual {v10, v8}, Landroid/net/Network;->bindSocket(Ljava/net/DatagramSocket;)V

    .line 336
    move/from16 v11, p3

    invoke-virtual {v8, v11}, Ljava/net/DatagramSocket;->setSoTimeout(I)V

    .line 337
    const/16 v0, 0x30

    new-array v0, v0, [B

    .line 338
    .local v0, "buffer":[B
    new-instance v12, Ljava/net/DatagramPacket;

    array-length v13, v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_4
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    move/from16 v14, p2

    :try_start_1
    invoke-direct {v12, v0, v13, v6, v14}, Ljava/net/DatagramPacket;-><init>([BILjava/net/InetAddress;I)V

    .line 344
    .local v12, "request":Ljava/net/DatagramPacket;
    const/16 v13, 0x1b

    aput-byte v13, v0, v4

    .line 347
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v15

    move-wide/from16 v17, v15

    .line 348
    .local v17, "requestTime":J
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v15

    .line 349
    .local v15, "requestTicks":J
    const/16 v13, 0x28

    move-wide/from16 v9, v17

    invoke-direct {v1, v0, v13, v9, v10}, Landroid/net/SntpClient;->writeTimeStamp([BIJ)V

    .line 351
    .end local v17    # "requestTime":J
    .local v9, "requestTime":J
    invoke-virtual {v8, v12}, Ljava/net/DatagramSocket;->send(Ljava/net/DatagramPacket;)V

    .line 354
    new-instance v13, Ljava/net/DatagramPacket;

    array-length v4, v0

    invoke-direct {v13, v0, v4}, Ljava/net/DatagramPacket;-><init>([BI)V

    move-object v4, v13

    .line 356
    .local v4, "response":Ljava/net/DatagramPacket;
    invoke-virtual {v8, v4}, Ljava/net/DatagramSocket;->receive(Ljava/net/DatagramPacket;)V

    .line 357
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v17
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_3
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-wide/from16 v21, v17

    .line 358
    .local v21, "responseTicks":J
    move/from16 v23, v3

    move-wide/from16 v2, v21

    sub-long v21, v2, v15

    .line 358
    .end local v21    # "responseTicks":J
    .local v2, "responseTicks":J
    add-long v17, v9, v21

    .line 361
    .local v17, "responseTime":J
    const/4 v13, 0x0

    :try_start_2
    aget-byte v20, v0, v13

    shr-int/lit8 v20, v20, 0x6

    and-int/lit8 v13, v20, 0x3

    int-to-byte v13, v13

    .line 362
    .local v13, "leap":B
    const/16 v20, 0x0

    aget-byte v21, v0, v20
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    move-object/from16 v24, v4

    and-int/lit8 v4, v21, 0x7

    .line 362
    .end local v4    # "response":Ljava/net/DatagramPacket;
    .local v24, "response":Ljava/net/DatagramPacket;
    int-to-byte v4, v4

    .line 363
    .local v4, "mode":B
    move-object/from16 v25, v6

    const/16 v19, 0x1

    :try_start_3
    aget-byte v6, v0, v19
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 363
    .end local v6    # "address":Ljava/net/InetAddress;
    .local v25, "address":Ljava/net/InetAddress;
    and-int/lit16 v6, v6, 0xff

    .line 364
    .local v6, "stratum":I
    move/from16 v26, v7

    const/16 v7, 0x18

    .line 364
    .end local v7    # "isTimeSuccess":Z
    .local v26, "isTimeSuccess":Z
    :try_start_4
    invoke-direct {v1, v0, v7}, Landroid/net/SntpClient;->readTimeStamp([BI)J

    move-result-wide v21

    .line 366
    .local v21, "originateTime":J
    const/16 v7, 0x20

    invoke-direct {v1, v0, v7}, Landroid/net/SntpClient;->readTimeStamp([BI)J

    move-result-wide v27

    .line 368
    .local v27, "receiveTime":J
    const/16 v7, 0x28

    invoke-direct {v1, v0, v7}, Landroid/net/SntpClient;->readTimeStamp([BI)J

    move-result-wide v29

    move-wide/from16 v31, v29

    .line 373
    .local v31, "transmitTime":J
    move-wide/from16 v33, v9

    move-wide/from16 v9, v31

    invoke-static {v13, v4, v6, v9, v10}, Landroid/net/SntpClient;->checkValidServerReply(BBIJ)V

    .line 375
    .end local v31    # "transmitTime":J
    .local v9, "transmitTime":J
    .local v33, "requestTime":J
    sub-long v29, v2, v15

    sub-long v31, v9, v27

    move/from16 v35, v6

    sub-long v6, v29, v31

    .line 387
    .local v6, "roundTripTime":J
    .local v35, "stratum":I
    sub-long v29, v27, v21

    sub-long v31, v9, v17

    add-long v29, v29, v31

    const-wide/16 v31, 0x2

    div-long v29, v29, v31

    move-wide/from16 v36, v29

    .line 389
    .local v36, "clockOffset":J
    move-object/from16 v38, v0

    const-string v0, "SntpClient"

    .line 389
    .end local v0    # "buffer":[B
    .local v38, "buffer":[B
    move/from16 v39, v4

    new-instance v4, Ljava/lang/StringBuilder;

    .line 389
    .end local v4    # "mode":B
    .local v39, "mode":B
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    move-wide/from16 v40, v9

    const-string/jumbo v9, "round trip: "

    .line 389
    .end local v9    # "transmitTime":J
    .local v40, "transmitTime":J
    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string/jumbo v9, "ms, clock offset: "

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-wide/from16 v9, v36

    invoke-virtual {v4, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .end local v36    # "clockOffset":J
    .local v9, "clockOffset":J
    const-string/jumbo v11, "ms"

    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 396
    move-object/from16 v42, v12

    add-long v11, v17, v9

    .line 396
    .end local v12    # "request":Ljava/net/DatagramPacket;
    .local v42, "request":Ljava/net/DatagramPacket;
    iput-wide v11, v1, Landroid/net/SntpClient;->mNtpTime:J

    .line 397
    iput-wide v2, v1, Landroid/net/SntpClient;->mNtpTimeReference:J

    .line 398
    iput-wide v6, v1, Landroid/net/SntpClient;->mRoundTripTime:J
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    .line 404
    .end local v2    # "responseTicks":J
    .end local v6    # "roundTripTime":J
    .end local v9    # "clockOffset":J
    .end local v13    # "leap":B
    .end local v15    # "requestTicks":J
    .end local v17    # "responseTime":J
    .end local v21    # "originateTime":J
    .end local v24    # "response":Ljava/net/DatagramPacket;
    .end local v27    # "receiveTime":J
    .end local v33    # "requestTime":J
    .end local v35    # "stratum":I
    .end local v38    # "buffer":[B
    .end local v39    # "mode":B
    .end local v40    # "transmitTime":J
    .end local v42    # "request":Ljava/net/DatagramPacket;
    nop

    .line 405
    invoke-virtual {v8}, Ljava/net/DatagramSocket;->close()V

    goto :goto_5

    .line 399
    :catch_0
    move-exception v0

    goto :goto_4

    .line 404
    .end local v26    # "isTimeSuccess":Z
    .restart local v7    # "isTimeSuccess":Z
    :catchall_0
    move-exception v0

    move/from16 v26, v7

    .line 404
    .end local v7    # "isTimeSuccess":Z
    .restart local v26    # "isTimeSuccess":Z
    goto :goto_6

    .line 399
    .end local v26    # "isTimeSuccess":Z
    .restart local v7    # "isTimeSuccess":Z
    :catch_1
    move-exception v0

    move/from16 v26, v7

    .line 399
    .end local v7    # "isTimeSuccess":Z
    .restart local v26    # "isTimeSuccess":Z
    goto :goto_4

    .line 399
    .end local v25    # "address":Ljava/net/InetAddress;
    .end local v26    # "isTimeSuccess":Z
    .local v6, "address":Ljava/net/InetAddress;
    .restart local v7    # "isTimeSuccess":Z
    :catch_2
    move-exception v0

    goto :goto_3

    .line 404
    :catchall_1
    move-exception v0

    goto :goto_1

    .line 399
    :catch_3
    move-exception v0

    goto :goto_2

    .line 404
    :catchall_2
    move-exception v0

    move/from16 v14, p2

    :goto_1
    move-object/from16 v25, v6

    move/from16 v26, v7

    .line 404
    .end local v6    # "address":Ljava/net/InetAddress;
    .end local v7    # "isTimeSuccess":Z
    .restart local v25    # "address":Ljava/net/InetAddress;
    .restart local v26    # "isTimeSuccess":Z
    goto :goto_6

    .line 399
    .end local v25    # "address":Ljava/net/InetAddress;
    .end local v26    # "isTimeSuccess":Z
    .restart local v6    # "address":Ljava/net/InetAddress;
    .restart local v7    # "isTimeSuccess":Z
    :catch_4
    move-exception v0

    move/from16 v14, p2

    :goto_2
    move/from16 v23, v3

    :goto_3
    move-object/from16 v25, v6

    move/from16 v26, v7

    .line 401
    .end local v6    # "address":Ljava/net/InetAddress;
    .end local v7    # "isTimeSuccess":Z
    .local v0, "e":Ljava/lang/Exception;
    .restart local v25    # "address":Ljava/net/InetAddress;
    .restart local v26    # "isTimeSuccess":Z
    :goto_4
    :try_start_5
    const-string v2, "SntpClient"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "request time failed: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    .line 402
    const/4 v7, 0x0

    .line 404
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v26    # "isTimeSuccess":Z
    .restart local v7    # "isTimeSuccess":Z
    if-eqz v8, :cond_0

    .line 405
    invoke-virtual {v8}, Ljava/net/DatagramSocket;->close()V

    .line 409
    :cond_0
    move/from16 v26, v7

    .line 409
    .end local v7    # "isTimeSuccess":Z
    .restart local v26    # "isTimeSuccess":Z
    :goto_5
    if-nez v26, :cond_1

    .line 410
    nop

    .line 330
    .end local v8    # "socket":Ljava/net/DatagramSocket;
    .end local v25    # "address":Ljava/net/InetAddress;
    .end local v26    # "isTimeSuccess":Z
    add-int/lit8 v5, v5, 0x1

    move/from16 v3, v23

    move-object/from16 v2, p1

    const/4 v4, 0x0

    goto/16 :goto_0

    .line 411
    .restart local v8    # "socket":Ljava/net/DatagramSocket;
    .restart local v25    # "address":Ljava/net/InetAddress;
    .restart local v26    # "isTimeSuccess":Z
    :cond_1
    const/4 v2, 0x1

    return v2

    .line 404
    :catchall_3
    move-exception v0

    :goto_6
    if-eqz v8, :cond_2

    .line 405
    invoke-virtual {v8}, Ljava/net/DatagramSocket;->close()V

    :cond_2
    throw v0

    .line 413
    .end local v8    # "socket":Ljava/net/DatagramSocket;
    .end local v25    # "address":Ljava/net/InetAddress;
    .end local v26    # "isTimeSuccess":Z
    :cond_3
    move/from16 v14, p2

    const/4 v2, 0x0

    return v2
.end method
