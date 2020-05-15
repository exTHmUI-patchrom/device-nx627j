.class public Landroid/media/Media2HTTPConnection;
.super Ljava/lang/Object;
.source "Media2HTTPConnection.java"


# static fields
.field private static final CONNECT_TIMEOUT_MS:I = 0x7530

.field private static final HTTP_TEMP_REDIRECT:I = 0x133

.field private static final MAX_REDIRECTS:I = 0x14

.field private static final TAG:Ljava/lang/String; = "Media2HTTPConnection"

.field private static final VERBOSE:Z = false


# instance fields
.field private mAllowCrossDomainRedirect:Z

.field private mAllowCrossProtocolRedirect:Z

.field private mConnection:Ljava/net/HttpURLConnection;

.field private mCurrentOffset:J

.field private mHeaders:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mInputStream:Ljava/io/InputStream;

.field private mTotalSize:J

.field private mURL:Ljava/net/URL;


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Landroid/media/Media2HTTPConnection;->mCurrentOffset:J

    .line 49
    const/4 v2, 0x0

    iput-object v2, p0, Landroid/media/Media2HTTPConnection;->mURL:Ljava/net/URL;

    .line 50
    iput-object v2, p0, Landroid/media/Media2HTTPConnection;->mHeaders:Ljava/util/Map;

    .line 51
    iput-object v2, p0, Landroid/media/Media2HTTPConnection;->mConnection:Ljava/net/HttpURLConnection;

    .line 52
    iput-wide v0, p0, Landroid/media/Media2HTTPConnection;->mTotalSize:J

    .line 53
    iput-object v2, p0, Landroid/media/Media2HTTPConnection;->mInputStream:Ljava/io/InputStream;

    .line 55
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/media/Media2HTTPConnection;->mAllowCrossDomainRedirect:Z

    .line 56
    iput-boolean v0, p0, Landroid/media/Media2HTTPConnection;->mAllowCrossProtocolRedirect:Z

    .line 63
    invoke-static {}, Ljava/net/CookieHandler;->getDefault()Ljava/net/CookieHandler;

    move-result-object v0

    .line 64
    .local v0, "cookieHandler":Ljava/net/CookieHandler;
    if-nez v0, :cond_0

    .line 65
    const-string v1, "Media2HTTPConnection"

    const-string v2, "Media2HTTPConnection: Unexpected. No CookieHandler found."

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 67
    :cond_0
    return-void
.end method

.method private convertHeaderStringToMap(Ljava/lang/String;)Ljava/util/Map;
    .locals 10
    .param p1, "headers"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 108
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 110
    .local v0, "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v1, "\r\n"

    invoke-virtual {p1, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 111
    .local v1, "pairs":[Ljava/lang/String;
    array-length v2, v1

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    if-ge v4, v2, :cond_1

    aget-object v5, v1, v4

    .line 112
    .local v5, "pair":Ljava/lang/String;
    const-string v6, ":"

    invoke-virtual {v5, v6}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v6

    .line 113
    .local v6, "colonPos":I
    if-ltz v6, :cond_0

    .line 114
    invoke-virtual {v5, v3, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    .line 115
    .local v7, "key":Ljava/lang/String;
    add-int/lit8 v8, v6, 0x1

    invoke-virtual {v5, v8}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v8

    .line 117
    .local v8, "val":Ljava/lang/String;
    invoke-direct {p0, v7, v8}, Landroid/media/Media2HTTPConnection;->filterOutInternalHeaders(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_0

    .line 118
    invoke-virtual {v0, v7, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 111
    .end local v5    # "pair":Ljava/lang/String;
    .end local v6    # "colonPos":I
    .end local v7    # "key":Ljava/lang/String;
    .end local v8    # "val":Ljava/lang/String;
    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 123
    :cond_1
    return-object v0
.end method

.method private filterOutInternalHeaders(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "val"    # Ljava/lang/String;

    .line 97
    const-string v0, "android-allow-cross-domain-redirect"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 98
    invoke-direct {p0, p2}, Landroid/media/Media2HTTPConnection;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Landroid/media/Media2HTTPConnection;->mAllowCrossDomainRedirect:Z

    .line 100
    iget-boolean v0, p0, Landroid/media/Media2HTTPConnection;->mAllowCrossDomainRedirect:Z

    iput-boolean v0, p0, Landroid/media/Media2HTTPConnection;->mAllowCrossProtocolRedirect:Z

    .line 104
    const/4 v0, 0x1

    return v0

    .line 102
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private static final isLocalHost(Ljava/net/URL;)Z
    .locals 4
    .param p0, "url"    # Ljava/net/URL;

    .line 150
    const/4 v0, 0x0

    if-nez p0, :cond_0

    .line 151
    return v0

    .line 154
    :cond_0
    invoke-virtual {p0}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object v1

    .line 156
    .local v1, "host":Ljava/lang/String;
    if-nez v1, :cond_1

    .line 157
    return v0

    .line 161
    :cond_1
    :try_start_0
    const-string/jumbo v2, "localhost"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    .line 162
    return v3

    .line 164
    :cond_2
    invoke-static {v1}, Landroid/net/NetworkUtils;->numericToInetAddress(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v2

    invoke-virtual {v2}, Ljava/net/InetAddress;->isLoopbackAddress()Z

    move-result v2
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v2, :cond_3

    .line 165
    return v3

    .line 168
    :cond_3
    goto :goto_0

    .line 167
    :catch_0
    move-exception v2

    .line 169
    :goto_0
    return v0
.end method

.method private parseBoolean(Ljava/lang/String;)Z
    .locals 6
    .param p1, "val"    # Ljava/lang/String;

    .line 88
    const/4 v0, 0x0

    const/4 v1, 0x1

    :try_start_0
    invoke-static {p1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-eqz v2, :cond_0

    move v0, v1

    nop

    :cond_0
    return v0

    .line 89
    :catch_0
    move-exception v2

    .line 90
    .local v2, "e":Ljava/lang/NumberFormatException;
    const-string/jumbo v3, "true"

    invoke-virtual {v3, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_2

    const-string/jumbo v3, "yes"

    .line 91
    invoke-virtual {v3, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    goto :goto_0

    :cond_1
    goto :goto_1

    .line 90
    :cond_2
    :goto_0
    move v0, v1

    :goto_1
    return v0
.end method

.method private seekTo(J)V
    .locals 17
    .param p1, "offset"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v1, p0

    .line 173
    move-wide/from16 v2, p1

    invoke-direct/range {p0 .. p0}, Landroid/media/Media2HTTPConnection;->teardownConnection()V

    .line 177
    const/4 v0, 0x0

    .line 179
    .local v0, "redirectCount":I
    const-wide/16 v4, -0x1

    :try_start_0
    iget-object v6, v1, Landroid/media/Media2HTTPConnection;->mURL:Ljava/net/URL;

    .line 182
    .local v6, "url":Ljava/net/URL;
    invoke-static {v6}, Landroid/media/Media2HTTPConnection;->isLocalHost(Ljava/net/URL;)Z

    move-result v7

    move v8, v0

    .line 185
    .end local v0    # "redirectCount":I
    .local v7, "noProxy":Z
    .local v8, "redirectCount":I
    :goto_0
    if-eqz v7, :cond_0

    .line 186
    sget-object v0, Ljava/net/Proxy;->NO_PROXY:Ljava/net/Proxy;

    invoke-virtual {v6, v0}, Ljava/net/URL;->openConnection(Ljava/net/Proxy;)Ljava/net/URLConnection;

    move-result-object v0

    check-cast v0, Ljava/net/HttpURLConnection;

    iput-object v0, v1, Landroid/media/Media2HTTPConnection;->mConnection:Ljava/net/HttpURLConnection;

    goto :goto_1

    .line 188
    :cond_0
    invoke-virtual {v6}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    check-cast v0, Ljava/net/HttpURLConnection;

    iput-object v0, v1, Landroid/media/Media2HTTPConnection;->mConnection:Ljava/net/HttpURLConnection;

    .line 190
    :goto_1
    iget-object v0, v1, Landroid/media/Media2HTTPConnection;->mConnection:Ljava/net/HttpURLConnection;

    const/16 v9, 0x7530

    invoke-virtual {v0, v9}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 193
    iget-object v0, v1, Landroid/media/Media2HTTPConnection;->mConnection:Ljava/net/HttpURLConnection;

    iget-boolean v9, v1, Landroid/media/Media2HTTPConnection;->mAllowCrossDomainRedirect:Z

    invoke-virtual {v0, v9}, Ljava/net/HttpURLConnection;->setInstanceFollowRedirects(Z)V

    .line 195
    iget-object v0, v1, Landroid/media/Media2HTTPConnection;->mHeaders:Ljava/util/Map;

    if-eqz v0, :cond_1

    .line 196
    iget-object v0, v1, Landroid/media/Media2HTTPConnection;->mHeaders:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/Map$Entry;

    .line 197
    .local v9, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    iget-object v10, v1, Landroid/media/Media2HTTPConnection;->mConnection:Ljava/net/HttpURLConnection;

    .line 198
    invoke-interface {v9}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    invoke-interface {v9}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/String;

    .line 197
    invoke-virtual {v10, v11, v12}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 199
    .end local v9    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    goto :goto_2

    .line 202
    :cond_1
    const-wide/16 v9, 0x0

    cmp-long v0, v2, v9

    if-lez v0, :cond_2

    .line 203
    iget-object v0, v1, Landroid/media/Media2HTTPConnection;->mConnection:Ljava/net/HttpURLConnection;

    const-string v11, "Range"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "bytes="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v13, "-"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v0, v11, v12}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 207
    :cond_2
    iget-object v0, v1, Landroid/media/Media2HTTPConnection;->mConnection:Ljava/net/HttpURLConnection;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v0

    move v11, v0

    .line 208
    .local v11, "response":I
    const/16 v0, 0x12c

    const/16 v12, 0x133

    if-eq v11, v0, :cond_9

    const/16 v0, 0x12d

    if-eq v11, v0, :cond_9

    const/16 v0, 0x12e

    if-eq v11, v0, :cond_9

    const/16 v0, 0x12f

    if-eq v11, v0, :cond_9

    if-eq v11, v12, :cond_9

    .line 214
    nop

    .line 253
    iget-boolean v0, v1, Landroid/media/Media2HTTPConnection;->mAllowCrossDomainRedirect:Z

    if-eqz v0, :cond_3

    .line 256
    iget-object v0, v1, Landroid/media/Media2HTTPConnection;->mConnection:Ljava/net/HttpURLConnection;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getURL()Ljava/net/URL;

    move-result-object v0

    iput-object v0, v1, Landroid/media/Media2HTTPConnection;->mURL:Ljava/net/URL;

    .line 259
    :cond_3
    const/16 v12, 0xce

    if-ne v11, v12, :cond_5

    .line 264
    iget-object v0, v1, Landroid/media/Media2HTTPConnection;->mConnection:Ljava/net/HttpURLConnection;

    const-string v13, "Content-Range"

    .line 265
    invoke-virtual {v0, v13}, Ljava/net/HttpURLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    move-object v13, v0

    .line 267
    .local v13, "contentRange":Ljava/lang/String;
    iput-wide v4, v1, Landroid/media/Media2HTTPConnection;->mTotalSize:J

    .line 268
    if-eqz v13, :cond_4

    .line 273
    const/16 v0, 0x2f

    invoke-virtual {v13, v0}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    move v14, v0

    .line 274
    .local v14, "lastSlashPos":I
    if-ltz v14, :cond_4

    .line 275
    add-int/lit8 v0, v14, 0x1

    .line 276
    invoke-virtual {v13, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    move-object v15, v0

    .line 279
    .local v15, "total":Ljava/lang/String;
    :try_start_1
    invoke-static {v15}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4

    iput-wide v4, v1, Landroid/media/Media2HTTPConnection;->mTotalSize:J
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 281
    goto :goto_3

    .line 280
    :catch_0
    move-exception v0

    .line 284
    .end local v13    # "contentRange":Ljava/lang/String;
    .end local v14    # "lastSlashPos":I
    .end local v15    # "total":Ljava/lang/String;
    :cond_4
    :goto_3
    goto :goto_4

    :cond_5
    const/16 v0, 0xc8

    if-ne v11, v0, :cond_8

    .line 287
    :try_start_2
    iget-object v0, v1, Landroid/media/Media2HTTPConnection;->mConnection:Ljava/net/HttpURLConnection;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getContentLength()I

    move-result v0

    int-to-long v4, v0

    iput-wide v4, v1, Landroid/media/Media2HTTPConnection;->mTotalSize:J

    .line 290
    :goto_4
    cmp-long v0, v2, v9

    if-lez v0, :cond_7

    if-ne v11, v12, :cond_6

    goto :goto_5

    .line 293
    :cond_6
    new-instance v0, Ljava/net/ProtocolException;

    invoke-direct {v0}, Ljava/net/ProtocolException;-><init>()V

    throw v0

    .line 296
    :cond_7
    :goto_5
    new-instance v0, Ljava/io/BufferedInputStream;

    iget-object v4, v1, Landroid/media/Media2HTTPConnection;->mConnection:Ljava/net/HttpURLConnection;

    .line 297
    invoke-virtual {v4}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v4

    invoke-direct {v0, v4}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    iput-object v0, v1, Landroid/media/Media2HTTPConnection;->mInputStream:Ljava/io/InputStream;

    .line 299
    iput-wide v2, v1, Landroid/media/Media2HTTPConnection;->mCurrentOffset:J

    .line 306
    .end local v6    # "url":Ljava/net/URL;
    .end local v7    # "noProxy":Z
    .end local v8    # "redirectCount":I
    .end local v11    # "response":I
    nop

    .line 307
    return-void

    .line 285
    .restart local v6    # "url":Ljava/net/URL;
    .restart local v7    # "noProxy":Z
    .restart local v8    # "redirectCount":I
    .restart local v11    # "response":I
    :cond_8
    new-instance v0, Ljava/io/IOException;

    invoke-direct {v0}, Ljava/io/IOException;-><init>()V

    throw v0

    .line 217
    :cond_9
    add-int/lit8 v8, v8, 0x1

    const/16 v0, 0x14

    if-gt v8, v0, :cond_14

    .line 221
    iget-object v0, v1, Landroid/media/Media2HTTPConnection;->mConnection:Ljava/net/HttpURLConnection;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getRequestMethod()Ljava/lang/String;

    move-result-object v0

    .line 222
    .local v0, "method":Ljava/lang/String;
    if-ne v11, v12, :cond_b

    const-string v4, "GET"

    .line 223
    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_b

    const-string v4, "HEAD"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_a

    goto :goto_6

    .line 227
    :cond_a
    new-instance v4, Ljava/net/NoRouteToHostException;

    const-string v5, "Invalid redirect"

    invoke-direct {v4, v5}, Ljava/net/NoRouteToHostException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 229
    :cond_b
    :goto_6
    iget-object v4, v1, Landroid/media/Media2HTTPConnection;->mConnection:Ljava/net/HttpURLConnection;

    const-string v5, "Location"

    invoke-virtual {v4, v5}, Ljava/net/HttpURLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 230
    .local v4, "location":Ljava/lang/String;
    if-eqz v4, :cond_13

    .line 233
    new-instance v5, Ljava/net/URL;

    iget-object v9, v1, Landroid/media/Media2HTTPConnection;->mURL:Ljava/net/URL;

    invoke-direct {v5, v9, v4}, Ljava/net/URL;-><init>(Ljava/net/URL;Ljava/lang/String;)V

    move-object v6, v5

    .line 234
    invoke-virtual {v6}, Ljava/net/URL;->getProtocol()Ljava/lang/String;

    move-result-object v5

    const-string v9, "https"

    invoke-virtual {v5, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_d

    .line 235
    invoke-virtual {v6}, Ljava/net/URL;->getProtocol()Ljava/lang/String;

    move-result-object v5

    const-string v9, "http"

    invoke-virtual {v5, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_c

    goto :goto_7

    .line 236
    :cond_c
    new-instance v5, Ljava/net/NoRouteToHostException;

    const-string v9, "Unsupported protocol redirect"

    invoke-direct {v5, v9}, Ljava/net/NoRouteToHostException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 238
    :cond_d
    :goto_7
    iget-object v5, v1, Landroid/media/Media2HTTPConnection;->mURL:Ljava/net/URL;

    invoke-virtual {v5}, Ljava/net/URL;->getProtocol()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v6}, Ljava/net/URL;->getProtocol()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v5, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    .line 239
    .local v5, "sameProtocol":Z
    iget-boolean v9, v1, Landroid/media/Media2HTTPConnection;->mAllowCrossProtocolRedirect:Z

    if-nez v9, :cond_f

    if-eqz v5, :cond_e

    goto :goto_8

    .line 240
    :cond_e
    new-instance v9, Ljava/net/NoRouteToHostException;

    const-string v10, "Cross-protocol redirects are disallowed"

    invoke-direct {v9, v10}, Ljava/net/NoRouteToHostException;-><init>(Ljava/lang/String;)V

    throw v9

    .line 242
    :cond_f
    :goto_8
    iget-object v9, v1, Landroid/media/Media2HTTPConnection;->mURL:Ljava/net/URL;

    invoke-virtual {v9}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v6}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    .line 243
    .local v9, "sameHost":Z
    iget-boolean v10, v1, Landroid/media/Media2HTTPConnection;->mAllowCrossDomainRedirect:Z

    if-nez v10, :cond_11

    if-eqz v9, :cond_10

    goto :goto_9

    .line 244
    :cond_10
    new-instance v10, Ljava/net/NoRouteToHostException;

    const-string v12, "Cross-domain redirects are disallowed"

    invoke-direct {v10, v12}, Ljava/net/NoRouteToHostException;-><init>(Ljava/lang/String;)V

    throw v10

    .line 247
    :cond_11
    :goto_9
    if-eq v11, v12, :cond_12

    .line 249
    iput-object v6, v1, Landroid/media/Media2HTTPConnection;->mURL:Ljava/net/URL;

    .line 251
    .end local v0    # "method":Ljava/lang/String;
    .end local v4    # "location":Ljava/lang/String;
    .end local v5    # "sameProtocol":Z
    .end local v9    # "sameHost":Z
    :cond_12
    nop

    .line 182
    const-wide/16 v4, -0x1

    goto/16 :goto_0

    .line 231
    .restart local v0    # "method":Ljava/lang/String;
    .restart local v4    # "location":Ljava/lang/String;
    :cond_13
    new-instance v5, Ljava/net/NoRouteToHostException;

    const-string v9, "Invalid redirect"

    invoke-direct {v5, v9}, Ljava/net/NoRouteToHostException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 218
    .end local v0    # "method":Ljava/lang/String;
    .end local v4    # "location":Ljava/lang/String;
    :cond_14
    new-instance v0, Ljava/net/NoRouteToHostException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Too many redirects: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v0, v4}, Ljava/net/NoRouteToHostException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    .line 300
    .end local v6    # "url":Ljava/net/URL;
    .end local v7    # "noProxy":Z
    .end local v8    # "redirectCount":I
    .end local v11    # "response":I
    :catch_1
    move-exception v0

    .line 301
    .local v0, "e":Ljava/io/IOException;
    const-wide/16 v4, -0x1

    iput-wide v4, v1, Landroid/media/Media2HTTPConnection;->mTotalSize:J

    .line 302
    invoke-direct/range {p0 .. p0}, Landroid/media/Media2HTTPConnection;->teardownConnection()V

    .line 303
    iput-wide v4, v1, Landroid/media/Media2HTTPConnection;->mCurrentOffset:J

    .line 305
    throw v0
.end method

.method private teardownConnection()V
    .locals 2

    .line 133
    iget-object v0, p0, Landroid/media/Media2HTTPConnection;->mConnection:Ljava/net/HttpURLConnection;

    if-eqz v0, :cond_1

    .line 134
    iget-object v0, p0, Landroid/media/Media2HTTPConnection;->mInputStream:Ljava/io/InputStream;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 136
    :try_start_0
    iget-object v0, p0, Landroid/media/Media2HTTPConnection;->mInputStream:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 138
    goto :goto_0

    .line 137
    :catch_0
    move-exception v0

    .line 139
    :goto_0
    iput-object v1, p0, Landroid/media/Media2HTTPConnection;->mInputStream:Ljava/io/InputStream;

    .line 142
    :cond_0
    iget-object v0, p0, Landroid/media/Media2HTTPConnection;->mConnection:Ljava/net/HttpURLConnection;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 143
    iput-object v1, p0, Landroid/media/Media2HTTPConnection;->mConnection:Ljava/net/HttpURLConnection;

    .line 145
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Landroid/media/Media2HTTPConnection;->mCurrentOffset:J

    .line 147
    :cond_1
    return-void
.end method


# virtual methods
.method public connect(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 2
    .param p1, "uri"    # Ljava/lang/String;
    .param p2, "headers"    # Ljava/lang/String;

    .line 75
    :try_start_0
    invoke-virtual {p0}, Landroid/media/Media2HTTPConnection;->disconnect()V

    .line 76
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/media/Media2HTTPConnection;->mAllowCrossDomainRedirect:Z

    .line 77
    new-instance v1, Ljava/net/URL;

    invoke-direct {v1, p1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Landroid/media/Media2HTTPConnection;->mURL:Ljava/net/URL;

    .line 78
    invoke-direct {p0, p2}, Landroid/media/Media2HTTPConnection;->convertHeaderStringToMap(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v1

    iput-object v1, p0, Landroid/media/Media2HTTPConnection;->mHeaders:Ljava/util/Map;
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 81
    nop

    .line 83
    return v0

    .line 79
    :catch_0
    move-exception v0

    .line 80
    .local v0, "e":Ljava/net/MalformedURLException;
    const/4 v1, 0x0

    return v1
.end method

.method public disconnect()V
    .locals 1

    .line 127
    invoke-direct {p0}, Landroid/media/Media2HTTPConnection;->teardownConnection()V

    .line 128
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/media/Media2HTTPConnection;->mHeaders:Ljava/util/Map;

    .line 129
    iput-object v0, p0, Landroid/media/Media2HTTPConnection;->mURL:Ljava/net/URL;

    .line 130
    return-void
.end method

.method public getMIMEType()Ljava/lang/String;
    .locals 2

    .line 371
    iget-object v0, p0, Landroid/media/Media2HTTPConnection;->mConnection:Ljava/net/HttpURLConnection;

    if-nez v0, :cond_0

    .line 373
    const-wide/16 v0, 0x0

    :try_start_0
    invoke-direct {p0, v0, v1}, Landroid/media/Media2HTTPConnection;->seekTo(J)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 376
    goto :goto_0

    .line 374
    :catch_0
    move-exception v0

    .line 375
    .local v0, "e":Ljava/io/IOException;
    const-string v1, "application/octet-stream"

    return-object v1

    .line 379
    .end local v0    # "e":Ljava/io/IOException;
    :cond_0
    :goto_0
    iget-object v0, p0, Landroid/media/Media2HTTPConnection;->mConnection:Ljava/net/HttpURLConnection;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getContentType()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSize()J
    .locals 3

    .line 359
    iget-object v0, p0, Landroid/media/Media2HTTPConnection;->mConnection:Ljava/net/HttpURLConnection;

    if-nez v0, :cond_0

    .line 361
    const-wide/16 v0, 0x0

    :try_start_0
    invoke-direct {p0, v0, v1}, Landroid/media/Media2HTTPConnection;->seekTo(J)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 364
    goto :goto_0

    .line 362
    :catch_0
    move-exception v0

    .line 363
    .local v0, "e":Ljava/io/IOException;
    const-wide/16 v1, -0x1

    return-wide v1

    .line 367
    .end local v0    # "e":Ljava/io/IOException;
    :cond_0
    :goto_0
    iget-wide v0, p0, Landroid/media/Media2HTTPConnection;->mTotalSize:J

    return-wide v0
.end method

.method public getUri()Ljava/lang/String;
    .locals 1

    .line 383
    iget-object v0, p0, Landroid/media/Media2HTTPConnection;->mURL:Ljava/net/URL;

    invoke-virtual {v0}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public readAt(J[BI)I
    .locals 8
    .param p1, "offset"    # J
    .param p3, "data"    # [B
    .param p4, "size"    # I

    .line 310
    new-instance v0, Landroid/os/StrictMode$ThreadPolicy$Builder;

    invoke-direct {v0}, Landroid/os/StrictMode$ThreadPolicy$Builder;-><init>()V

    .line 311
    invoke-virtual {v0}, Landroid/os/StrictMode$ThreadPolicy$Builder;->permitAll()Landroid/os/StrictMode$ThreadPolicy$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/StrictMode$ThreadPolicy$Builder;->build()Landroid/os/StrictMode$ThreadPolicy;

    move-result-object v0

    .line 313
    .local v0, "policy":Landroid/os/StrictMode$ThreadPolicy;
    invoke-static {v0}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    .line 316
    const/16 v1, -0x3f2

    const/4 v2, -0x1

    :try_start_0
    iget-wide v3, p0, Landroid/media/Media2HTTPConnection;->mCurrentOffset:J

    cmp-long v3, p1, v3

    if-eqz v3, :cond_0

    .line 317
    invoke-direct {p0, p1, p2}, Landroid/media/Media2HTTPConnection;->seekTo(J)V

    .line 320
    :cond_0
    iget-object v3, p0, Landroid/media/Media2HTTPConnection;->mInputStream:Ljava/io/InputStream;

    const/4 v4, 0x0

    invoke-virtual {v3, p3, v4, p4}, Ljava/io/InputStream;->read([BII)I

    move-result v3

    .line 322
    .local v3, "n":I
    if-ne v3, v2, :cond_1

    .line 325
    const/4 v3, 0x0

    .line 328
    :cond_1
    iget-wide v4, p0, Landroid/media/Media2HTTPConnection;->mCurrentOffset:J

    int-to-long v6, v3

    add-long/2addr v4, v6

    iput-wide v4, p0, Landroid/media/Media2HTTPConnection;->mCurrentOffset:J
    :try_end_0
    .catch Ljava/net/ProtocolException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/net/NoRouteToHostException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/net/UnknownServiceException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 334
    return v3

    .line 349
    .end local v3    # "n":I
    :catch_0
    move-exception v1

    .line 354
    .local v1, "e":Ljava/lang/Exception;
    return v2

    .line 344
    .end local v1    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v1

    .line 348
    .local v1, "e":Ljava/io/IOException;
    return v2

    .line 341
    .end local v1    # "e":Ljava/io/IOException;
    :catch_2
    move-exception v2

    .line 342
    .local v2, "e":Ljava/net/UnknownServiceException;
    const-string v3, "Media2HTTPConnection"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "readAt "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v5, " / "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " => "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 343
    return v1

    .line 338
    .end local v2    # "e":Ljava/net/UnknownServiceException;
    :catch_3
    move-exception v2

    .line 339
    .local v2, "e":Ljava/net/NoRouteToHostException;
    const-string v3, "Media2HTTPConnection"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "readAt "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v5, " / "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " => "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 340
    return v1

    .line 335
    .end local v2    # "e":Ljava/net/NoRouteToHostException;
    :catch_4
    move-exception v2

    .line 336
    .local v2, "e":Ljava/net/ProtocolException;
    const-string v3, "Media2HTTPConnection"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "readAt "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v5, " / "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " => "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 337
    return v1
.end method
