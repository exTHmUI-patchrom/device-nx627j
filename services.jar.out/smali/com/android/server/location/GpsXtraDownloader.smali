.class public Lcom/android/server/location/GpsXtraDownloader;
.super Ljava/lang/Object;
.source "GpsXtraDownloader.java"


# static fields
.field private static final CONNECTION_TIMEOUT_MS:I

.field private static final DEBUG:Z

.field private static final DEFAULT_USER_AGENT:Ljava/lang/String; = "Android"

.field private static final MAXIMUM_CONTENT_LENGTH_BYTES:J = 0xf4240L

.field private static final READ_TIMEOUT_MS:I

.field private static final TAG:Ljava/lang/String; = "GpsXtraDownloader"


# instance fields
.field private mNextServerIndex:I

.field private final mUserAgent:Ljava/lang/String;

.field private final mXtraServers:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 40
    const-string v0, "GpsXtraDownloader"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/location/GpsXtraDownloader;->DEBUG:Z

    .line 43
    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0x1e

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    long-to-int v0, v0

    sput v0, Lcom/android/server/location/GpsXtraDownloader;->CONNECTION_TIMEOUT_MS:I

    .line 44
    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0x3c

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    long-to-int v0, v0

    sput v0, Lcom/android/server/location/GpsXtraDownloader;->READ_TIMEOUT_MS:I

    return-void
.end method

.method constructor <init>(Ljava/util/Properties;)V
    .locals 7
    .param p1, "properties"    # Ljava/util/Properties;

    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    const/4 v0, 0x0

    .line 54
    .local v0, "count":I
    const-string v1, "XTRA_SERVER_1"

    invoke-virtual {p1, v1}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 55
    .local v1, "server1":Ljava/lang/String;
    const-string v2, "XTRA_SERVER_2"

    invoke-virtual {p1, v2}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 56
    .local v2, "server2":Ljava/lang/String;
    const-string v3, "XTRA_SERVER_3"

    invoke-virtual {p1, v3}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 57
    .local v3, "server3":Ljava/lang/String;
    if-eqz v1, :cond_0

    add-int/lit8 v0, v0, 0x1

    .line 58
    :cond_0
    if-eqz v2, :cond_1

    add-int/lit8 v0, v0, 0x1

    .line 59
    :cond_1
    if-eqz v3, :cond_2

    add-int/lit8 v0, v0, 0x1

    .line 62
    :cond_2
    const-string v4, "XTRA_USER_AGENT"

    invoke-virtual {p1, v4}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 63
    .local v4, "agent":Ljava/lang/String;
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 64
    const-string v5, "Android"

    iput-object v5, p0, Lcom/android/server/location/GpsXtraDownloader;->mUserAgent:Ljava/lang/String;

    goto :goto_0

    .line 66
    :cond_3
    iput-object v4, p0, Lcom/android/server/location/GpsXtraDownloader;->mUserAgent:Ljava/lang/String;

    .line 69
    :goto_0
    if-nez v0, :cond_4

    .line 70
    const-string v5, "GpsXtraDownloader"

    const-string v6, "No XTRA servers were specified in the GPS configuration"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 71
    const/4 v5, 0x0

    iput-object v5, p0, Lcom/android/server/location/GpsXtraDownloader;->mXtraServers:[Ljava/lang/String;

    goto :goto_1

    .line 73
    :cond_4
    new-array v5, v0, [Ljava/lang/String;

    iput-object v5, p0, Lcom/android/server/location/GpsXtraDownloader;->mXtraServers:[Ljava/lang/String;

    .line 74
    const/4 v0, 0x0

    .line 75
    if-eqz v1, :cond_5

    iget-object v5, p0, Lcom/android/server/location/GpsXtraDownloader;->mXtraServers:[Ljava/lang/String;

    add-int/lit8 v6, v0, 0x1

    .local v6, "count":I
    aput-object v1, v5, v0

    .line 76
    .end local v0    # "count":I
    move v0, v6

    .end local v6    # "count":I
    .restart local v0    # "count":I
    :cond_5
    if-eqz v2, :cond_6

    iget-object v5, p0, Lcom/android/server/location/GpsXtraDownloader;->mXtraServers:[Ljava/lang/String;

    add-int/lit8 v6, v0, 0x1

    .restart local v6    # "count":I
    aput-object v2, v5, v0

    .line 77
    .end local v0    # "count":I
    move v0, v6

    .end local v6    # "count":I
    .restart local v0    # "count":I
    :cond_6
    if-eqz v3, :cond_7

    iget-object v5, p0, Lcom/android/server/location/GpsXtraDownloader;->mXtraServers:[Ljava/lang/String;

    add-int/lit8 v6, v0, 0x1

    .restart local v6    # "count":I
    aput-object v3, v5, v0

    .line 80
    .end local v0    # "count":I
    move v0, v6

    .end local v6    # "count":I
    .restart local v0    # "count":I
    :cond_7
    new-instance v5, Ljava/util/Random;

    invoke-direct {v5}, Ljava/util/Random;-><init>()V

    .line 81
    .local v5, "random":Ljava/util/Random;
    invoke-virtual {v5, v0}, Ljava/util/Random;->nextInt(I)I

    move-result v6

    iput v6, p0, Lcom/android/server/location/GpsXtraDownloader;->mNextServerIndex:I

    .line 83
    .end local v5    # "random":Ljava/util/Random;
    :goto_1
    return-void
.end method


# virtual methods
.method protected doDownload(Ljava/lang/String;)[B
    .locals 13
    .param p1, "url"    # Ljava/lang/String;

    .line 115
    sget-boolean v0, Lcom/android/server/location/GpsXtraDownloader;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "GpsXtraDownloader"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Downloading XTRA data from "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 117
    :cond_0
    const/4 v0, 0x0

    move-object v1, v0

    .line 119
    .local v1, "connection":Ljava/net/HttpURLConnection;
    :try_start_0
    new-instance v2, Ljava/net/URL;

    invoke-direct {v2, p1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v2

    check-cast v2, Ljava/net/HttpURLConnection;

    move-object v1, v2

    .line 120
    const-string v2, "Accept"

    const-string v3, "*/*, application/vnd.wap.mms-message, application/vnd.wap.sic"

    invoke-virtual {v1, v2, v3}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 123
    const-string/jumbo v2, "x-wap-profile"

    const-string v3, "http://www.openmobilealliance.org/tech/profiles/UAPROF/ccppschema-20021212#"

    invoke-virtual {v1, v2, v3}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 126
    sget v2, Lcom/android/server/location/GpsXtraDownloader;->CONNECTION_TIMEOUT_MS:I

    invoke-virtual {v1, v2}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 127
    sget v2, Lcom/android/server/location/GpsXtraDownloader;->READ_TIMEOUT_MS:I

    invoke-virtual {v1, v2}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    .line 129
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->connect()V

    .line 130
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v2

    .line 131
    .local v2, "statusCode":I
    const/16 v3, 0xc8

    if-eq v2, v3, :cond_3

    .line 132
    sget-boolean v3, Lcom/android/server/location/GpsXtraDownloader;->DEBUG:Z

    if-eqz v3, :cond_1

    const-string v3, "GpsXtraDownloader"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "HTTP error downloading gps XTRA: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 133
    :cond_1
    nop

    .line 152
    if-eqz v1, :cond_2

    .line 153
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 133
    :cond_2
    return-object v0

    .line 136
    :cond_3
    :try_start_1
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v3
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 137
    .local v3, "in":Ljava/io/InputStream;
    :try_start_2
    new-instance v4, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v4}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 138
    .local v4, "bytes":Ljava/io/ByteArrayOutputStream;
    const/16 v5, 0x400

    new-array v5, v5, [B

    .line 140
    .local v5, "buffer":[B
    :cond_4
    invoke-virtual {v3, v5}, Ljava/io/InputStream;->read([B)I

    move-result v6

    move v7, v6

    .line 140
    .local v7, "count":I
    const/4 v8, -0x1

    if-eq v6, v8, :cond_8

    .line 141
    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6, v7}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 142
    invoke-virtual {v4}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result v6

    int-to-long v8, v6

    const-wide/32 v10, 0xf4240

    cmp-long v6, v8, v10

    if-lez v6, :cond_4

    .line 143
    sget-boolean v6, Lcom/android/server/location/GpsXtraDownloader;->DEBUG:Z

    if-eqz v6, :cond_5

    const-string v6, "GpsXtraDownloader"

    const-string v8, "XTRA file too large"

    invoke-static {v6, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 144
    :cond_5
    nop

    .line 148
    if-eqz v3, :cond_6

    :try_start_3
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 152
    :cond_6
    if-eqz v1, :cond_7

    .line 153
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 144
    :cond_7
    return-object v0

    .line 147
    :cond_8
    :try_start_4
    invoke-virtual {v4}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v6
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 148
    if-eqz v3, :cond_9

    :try_start_5
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 152
    :cond_9
    if-eqz v1, :cond_a

    .line 153
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 147
    :cond_a
    return-object v6

    .line 148
    .end local v4    # "bytes":Ljava/io/ByteArrayOutputStream;
    .end local v5    # "buffer":[B
    .end local v7    # "count":I
    :catchall_0
    move-exception v4

    move-object v5, v0

    goto :goto_0

    .line 136
    :catch_0
    move-exception v4

    :try_start_6
    throw v4
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 148
    :catchall_1
    move-exception v5

    move-object v12, v5

    move-object v5, v4

    move-object v4, v12

    :goto_0
    if-eqz v3, :cond_c

    if-eqz v5, :cond_b

    :try_start_7
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_7
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_7} :catch_1
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_2
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    goto :goto_1

    :catch_1
    move-exception v6

    :try_start_8
    invoke-virtual {v5, v6}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_1

    :cond_b
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V

    :cond_c
    :goto_1
    throw v4
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_2
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    .line 152
    .end local v2    # "statusCode":I
    .end local v3    # "in":Ljava/io/InputStream;
    :catchall_2
    move-exception v0

    goto :goto_2

    .line 149
    :catch_2
    move-exception v2

    .line 150
    .local v2, "ioe":Ljava/io/IOException;
    :try_start_9
    sget-boolean v3, Lcom/android/server/location/GpsXtraDownloader;->DEBUG:Z

    if-eqz v3, :cond_d

    const-string v3, "GpsXtraDownloader"

    const-string v4, "Error downloading gps XTRA: "

    invoke-static {v3, v4, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    .line 152
    .end local v2    # "ioe":Ljava/io/IOException;
    :cond_d
    if-eqz v1, :cond_e

    .line 153
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 156
    :cond_e
    return-object v0

    .line 152
    :goto_2
    if-eqz v1, :cond_f

    .line 153
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_f
    throw v0
.end method

.method downloadXtraData()[B
    .locals 5

    .line 86
    const/4 v0, 0x0

    .line 87
    .local v0, "result":[B
    iget v1, p0, Lcom/android/server/location/GpsXtraDownloader;->mNextServerIndex:I

    .line 89
    .local v1, "startIndex":I
    iget-object v2, p0, Lcom/android/server/location/GpsXtraDownloader;->mXtraServers:[Ljava/lang/String;

    if-nez v2, :cond_0

    .line 90
    const/4 v2, 0x0

    return-object v2

    .line 94
    :cond_0
    :goto_0
    if-nez v0, :cond_3

    .line 95
    const/16 v2, -0xbc

    invoke-static {v2}, Landroid/net/TrafficStats;->getAndSetThreadStatsTag(I)I

    move-result v2

    .line 97
    .local v2, "oldTag":I
    :try_start_0
    iget-object v3, p0, Lcom/android/server/location/GpsXtraDownloader;->mXtraServers:[Ljava/lang/String;

    iget v4, p0, Lcom/android/server/location/GpsXtraDownloader;->mNextServerIndex:I

    aget-object v3, v3, v4

    invoke-virtual {p0, v3}, Lcom/android/server/location/GpsXtraDownloader;->doDownload(Ljava/lang/String;)[B

    move-result-object v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v0, v3

    .line 99
    invoke-static {v2}, Landroid/net/TrafficStats;->setThreadStatsTag(I)V

    .line 100
    nop

    .line 103
    iget v3, p0, Lcom/android/server/location/GpsXtraDownloader;->mNextServerIndex:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcom/android/server/location/GpsXtraDownloader;->mNextServerIndex:I

    .line 104
    iget v3, p0, Lcom/android/server/location/GpsXtraDownloader;->mNextServerIndex:I

    iget-object v4, p0, Lcom/android/server/location/GpsXtraDownloader;->mXtraServers:[Ljava/lang/String;

    array-length v4, v4

    if-ne v3, v4, :cond_1

    .line 105
    const/4 v3, 0x0

    iput v3, p0, Lcom/android/server/location/GpsXtraDownloader;->mNextServerIndex:I

    .line 108
    :cond_1
    iget v3, p0, Lcom/android/server/location/GpsXtraDownloader;->mNextServerIndex:I

    if-ne v3, v1, :cond_2

    goto :goto_1

    .line 109
    .end local v2    # "oldTag":I
    :cond_2
    goto :goto_0

    .line 99
    .restart local v2    # "oldTag":I
    :catchall_0
    move-exception v3

    invoke-static {v2}, Landroid/net/TrafficStats;->setThreadStatsTag(I)V

    throw v3

    .line 111
    .end local v2    # "oldTag":I
    :cond_3
    :goto_1
    return-object v0
.end method
