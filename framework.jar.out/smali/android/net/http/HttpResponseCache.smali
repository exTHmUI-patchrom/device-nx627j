.class public final Landroid/net/http/HttpResponseCache;
.super Ljava/net/ResponseCache;
.source "HttpResponseCache.java"

# interfaces
.implements Ljava/io/Closeable;
.implements Lcom/android/okhttp/OkCacheContainer;


# instance fields
.field private final delegate:Lcom/android/okhttp/AndroidShimResponseCache;


# direct methods
.method private constructor <init>(Lcom/android/okhttp/AndroidShimResponseCache;)V
    .locals 0
    .param p1, "delegate"    # Lcom/android/okhttp/AndroidShimResponseCache;

    .line 156
    invoke-direct {p0}, Ljava/net/ResponseCache;-><init>()V

    .line 157
    iput-object p1, p0, Landroid/net/http/HttpResponseCache;->delegate:Lcom/android/okhttp/AndroidShimResponseCache;

    .line 158
    return-void
.end method

.method public static getInstalled()Landroid/net/http/HttpResponseCache;
    .locals 2

    .line 165
    invoke-static {}, Ljava/net/ResponseCache;->getDefault()Ljava/net/ResponseCache;

    move-result-object v0

    .line 166
    .local v0, "installed":Ljava/net/ResponseCache;
    instance-of v1, v0, Landroid/net/http/HttpResponseCache;

    if-eqz v1, :cond_0

    .line 167
    move-object v1, v0

    check-cast v1, Landroid/net/http/HttpResponseCache;

    return-object v1

    .line 169
    :cond_0
    const/4 v1, 0x0

    return-object v1
.end method

.method public static declared-synchronized install(Ljava/io/File;J)Landroid/net/http/HttpResponseCache;
    .locals 5
    .param p0, "directory"    # Ljava/io/File;
    .param p1, "maxSize"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-class v0, Landroid/net/http/HttpResponseCache;

    monitor-enter v0

    .line 184
    :try_start_0
    invoke-static {}, Ljava/net/ResponseCache;->getDefault()Ljava/net/ResponseCache;

    move-result-object v1

    .line 185
    .local v1, "installed":Ljava/net/ResponseCache;
    instance-of v2, v1, Landroid/net/http/HttpResponseCache;

    if-eqz v2, :cond_1

    .line 186
    move-object v2, v1

    check-cast v2, Landroid/net/http/HttpResponseCache;

    .line 188
    .local v2, "installedResponseCache":Landroid/net/http/HttpResponseCache;
    iget-object v3, v2, Landroid/net/http/HttpResponseCache;->delegate:Lcom/android/okhttp/AndroidShimResponseCache;

    .line 189
    .local v3, "trueResponseCache":Lcom/android/okhttp/AndroidShimResponseCache;
    invoke-virtual {v3, p0, p1, p2}, Lcom/android/okhttp/AndroidShimResponseCache;->isEquivalent(Ljava/io/File;J)Z

    move-result v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v4, :cond_0

    .line 190
    monitor-exit v0

    return-object v2

    .line 193
    :cond_0
    :try_start_1
    invoke-virtual {v3}, Lcom/android/okhttp/AndroidShimResponseCache;->close()V

    .line 197
    .end local v2    # "installedResponseCache":Landroid/net/http/HttpResponseCache;
    .end local v3    # "trueResponseCache":Lcom/android/okhttp/AndroidShimResponseCache;
    :cond_1
    nop

    .line 198
    invoke-static {p0, p1, p2}, Lcom/android/okhttp/AndroidShimResponseCache;->create(Ljava/io/File;J)Lcom/android/okhttp/AndroidShimResponseCache;

    move-result-object v2

    .line 199
    .local v2, "trueResponseCache":Lcom/android/okhttp/AndroidShimResponseCache;
    new-instance v3, Landroid/net/http/HttpResponseCache;

    invoke-direct {v3, v2}, Landroid/net/http/HttpResponseCache;-><init>(Lcom/android/okhttp/AndroidShimResponseCache;)V

    .line 200
    .local v3, "newResponseCache":Landroid/net/http/HttpResponseCache;
    invoke-static {v3}, Ljava/net/ResponseCache;->setDefault(Ljava/net/ResponseCache;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 201
    monitor-exit v0

    return-object v3

    .line 183
    .end local v1    # "installed":Ljava/net/ResponseCache;
    .end local v2    # "trueResponseCache":Lcom/android/okhttp/AndroidShimResponseCache;
    .end local v3    # "newResponseCache":Landroid/net/http/HttpResponseCache;
    .end local p0    # "directory":Ljava/io/File;
    .end local p1    # "maxSize":J
    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method


# virtual methods
.method public close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 278
    invoke-static {}, Ljava/net/ResponseCache;->getDefault()Ljava/net/ResponseCache;

    move-result-object v0

    if-ne v0, p0, :cond_0

    .line 279
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/net/ResponseCache;->setDefault(Ljava/net/ResponseCache;)V

    .line 281
    :cond_0
    iget-object v0, p0, Landroid/net/http/HttpResponseCache;->delegate:Lcom/android/okhttp/AndroidShimResponseCache;

    invoke-virtual {v0}, Lcom/android/okhttp/AndroidShimResponseCache;->close()V

    .line 282
    return-void
.end method

.method public delete()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 288
    invoke-static {}, Ljava/net/ResponseCache;->getDefault()Ljava/net/ResponseCache;

    move-result-object v0

    if-ne v0, p0, :cond_0

    .line 289
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/net/ResponseCache;->setDefault(Ljava/net/ResponseCache;)V

    .line 291
    :cond_0
    iget-object v0, p0, Landroid/net/http/HttpResponseCache;->delegate:Lcom/android/okhttp/AndroidShimResponseCache;

    invoke-virtual {v0}, Lcom/android/okhttp/AndroidShimResponseCache;->delete()V

    .line 292
    return-void
.end method

.method public flush()V
    .locals 1

    .line 242
    :try_start_0
    iget-object v0, p0, Landroid/net/http/HttpResponseCache;->delegate:Lcom/android/okhttp/AndroidShimResponseCache;

    invoke-virtual {v0}, Lcom/android/okhttp/AndroidShimResponseCache;->flush()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 244
    goto :goto_0

    .line 243
    :catch_0
    move-exception v0

    .line 245
    :goto_0
    return-void
.end method

.method public get(Ljava/net/URI;Ljava/lang/String;Ljava/util/Map;)Ljava/net/CacheResponse;
    .locals 1
    .param p1, "uri"    # Ljava/net/URI;
    .param p2, "requestMethod"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/net/URI;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;)",
            "Ljava/net/CacheResponse;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 206
    .local p3, "requestHeaders":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;"
    iget-object v0, p0, Landroid/net/http/HttpResponseCache;->delegate:Lcom/android/okhttp/AndroidShimResponseCache;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/okhttp/AndroidShimResponseCache;->get(Ljava/net/URI;Ljava/lang/String;Ljava/util/Map;)Ljava/net/CacheResponse;

    move-result-object v0

    return-object v0
.end method

.method public getCache()Lcom/android/okhttp/Cache;
    .locals 1

    .line 297
    iget-object v0, p0, Landroid/net/http/HttpResponseCache;->delegate:Lcom/android/okhttp/AndroidShimResponseCache;

    invoke-virtual {v0}, Lcom/android/okhttp/AndroidShimResponseCache;->getCache()Lcom/android/okhttp/Cache;

    move-result-object v0

    return-object v0
.end method

.method public getHitCount()I
    .locals 1

    .line 261
    iget-object v0, p0, Landroid/net/http/HttpResponseCache;->delegate:Lcom/android/okhttp/AndroidShimResponseCache;

    invoke-virtual {v0}, Lcom/android/okhttp/AndroidShimResponseCache;->getHitCount()I

    move-result v0

    return v0
.end method

.method public getNetworkCount()I
    .locals 1

    .line 252
    iget-object v0, p0, Landroid/net/http/HttpResponseCache;->delegate:Lcom/android/okhttp/AndroidShimResponseCache;

    invoke-virtual {v0}, Lcom/android/okhttp/AndroidShimResponseCache;->getNetworkCount()I

    move-result v0

    return v0
.end method

.method public getRequestCount()I
    .locals 1

    .line 270
    iget-object v0, p0, Landroid/net/http/HttpResponseCache;->delegate:Lcom/android/okhttp/AndroidShimResponseCache;

    invoke-virtual {v0}, Lcom/android/okhttp/AndroidShimResponseCache;->getRequestCount()I

    move-result v0

    return v0
.end method

.method public maxSize()J
    .locals 2

    .line 232
    iget-object v0, p0, Landroid/net/http/HttpResponseCache;->delegate:Lcom/android/okhttp/AndroidShimResponseCache;

    invoke-virtual {v0}, Lcom/android/okhttp/AndroidShimResponseCache;->maxSize()J

    move-result-wide v0

    return-wide v0
.end method

.method public put(Ljava/net/URI;Ljava/net/URLConnection;)Ljava/net/CacheRequest;
    .locals 1
    .param p1, "uri"    # Ljava/net/URI;
    .param p2, "urlConnection"    # Ljava/net/URLConnection;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 210
    iget-object v0, p0, Landroid/net/http/HttpResponseCache;->delegate:Lcom/android/okhttp/AndroidShimResponseCache;

    invoke-virtual {v0, p1, p2}, Lcom/android/okhttp/AndroidShimResponseCache;->put(Ljava/net/URI;Ljava/net/URLConnection;)Ljava/net/CacheRequest;

    move-result-object v0

    return-object v0
.end method

.method public size()J
    .locals 3

    .line 220
    :try_start_0
    iget-object v0, p0, Landroid/net/http/HttpResponseCache;->delegate:Lcom/android/okhttp/AndroidShimResponseCache;

    invoke-virtual {v0}, Lcom/android/okhttp/AndroidShimResponseCache;->size()J

    move-result-wide v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-wide v0

    .line 221
    :catch_0
    move-exception v0

    .line 223
    .local v0, "e":Ljava/io/IOException;
    const-wide/16 v1, -0x1

    return-wide v1
.end method
