.class Lcn/nubia/server/appmgmt/NetWorkDetectorController$NetWorkDetectionRunnable;
.super Ljava/lang/Object;
.source "NetWorkDetectorController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/server/appmgmt/NetWorkDetectorController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "NetWorkDetectionRunnable"
.end annotation


# instance fields
.field private mNetID:Ljava/lang/String;

.field private mNetType:I

.field final synthetic this$0:Lcn/nubia/server/appmgmt/NetWorkDetectorController;

.field trustAllCerts:[Ljavax/net/ssl/TrustManager;


# direct methods
.method public constructor <init>(Lcn/nubia/server/appmgmt/NetWorkDetectorController;ILjava/lang/String;)V
    .locals 2
    .param p2, "netType"    # I
    .param p3, "netID"    # Ljava/lang/String;

    .line 134
    iput-object p1, p0, Lcn/nubia/server/appmgmt/NetWorkDetectorController$NetWorkDetectionRunnable;->this$0:Lcn/nubia/server/appmgmt/NetWorkDetectorController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 139
    const/4 p1, 0x1

    new-array p1, p1, [Ljavax/net/ssl/TrustManager;

    new-instance v0, Lcn/nubia/server/appmgmt/NetWorkDetectorController$NetWorkDetectionRunnable$1;

    invoke-direct {v0, p0}, Lcn/nubia/server/appmgmt/NetWorkDetectorController$NetWorkDetectionRunnable$1;-><init>(Lcn/nubia/server/appmgmt/NetWorkDetectorController$NetWorkDetectionRunnable;)V

    const/4 v1, 0x0

    aput-object v0, p1, v1

    iput-object p1, p0, Lcn/nubia/server/appmgmt/NetWorkDetectorController$NetWorkDetectionRunnable;->trustAllCerts:[Ljavax/net/ssl/TrustManager;

    .line 135
    iput p2, p0, Lcn/nubia/server/appmgmt/NetWorkDetectorController$NetWorkDetectionRunnable;->mNetType:I

    .line 136
    iput-object p3, p0, Lcn/nubia/server/appmgmt/NetWorkDetectorController$NetWorkDetectionRunnable;->mNetID:Ljava/lang/String;

    .line 137
    return-void
.end method

.method private setVaule(Z)V
    .locals 4
    .param p1, "result"    # Z

    .line 191
    iget-object v0, p0, Lcn/nubia/server/appmgmt/NetWorkDetectorController$NetWorkDetectionRunnable;->this$0:Lcn/nubia/server/appmgmt/NetWorkDetectorController;

    invoke-static {v0, p1}, Lcn/nubia/server/appmgmt/NetWorkDetectorController;->access$200(Lcn/nubia/server/appmgmt/NetWorkDetectorController;Z)V

    .line 192
    iget v0, p0, Lcn/nubia/server/appmgmt/NetWorkDetectorController$NetWorkDetectionRunnable;->mNetType:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 195
    iget-object v0, p0, Lcn/nubia/server/appmgmt/NetWorkDetectorController$NetWorkDetectionRunnable;->this$0:Lcn/nubia/server/appmgmt/NetWorkDetectorController;

    invoke-static {v0}, Lcn/nubia/server/appmgmt/NetWorkDetectorController;->access$100(Lcn/nubia/server/appmgmt/NetWorkDetectorController;)Landroid/util/LruCache;

    move-result-object v0

    iget-object v2, p0, Lcn/nubia/server/appmgmt/NetWorkDetectorController$NetWorkDetectionRunnable;->mNetID:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/util/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/nubia/server/appmgmt/NetWorkDetectorController$CacheData;

    .line 196
    .local v0, "data":Lcn/nubia/server/appmgmt/NetWorkDetectorController$CacheData;
    if-nez v0, :cond_0

    .line 197
    new-instance v2, Lcn/nubia/server/appmgmt/NetWorkDetectorController$CacheData;

    iget-object v3, p0, Lcn/nubia/server/appmgmt/NetWorkDetectorController$NetWorkDetectionRunnable;->this$0:Lcn/nubia/server/appmgmt/NetWorkDetectorController;

    invoke-direct {v2, v3}, Lcn/nubia/server/appmgmt/NetWorkDetectorController$CacheData;-><init>(Lcn/nubia/server/appmgmt/NetWorkDetectorController;)V

    move-object v0, v2

    .line 199
    :cond_0
    iget v2, v0, Lcn/nubia/server/appmgmt/NetWorkDetectorController$CacheData;->count:I

    add-int/2addr v2, v1

    iput v2, v0, Lcn/nubia/server/appmgmt/NetWorkDetectorController$CacheData;->count:I

    .line 200
    iput-boolean p1, v0, Lcn/nubia/server/appmgmt/NetWorkDetectorController$CacheData;->isAccess:Z

    .line 203
    iget-object v1, p0, Lcn/nubia/server/appmgmt/NetWorkDetectorController$NetWorkDetectionRunnable;->this$0:Lcn/nubia/server/appmgmt/NetWorkDetectorController;

    invoke-static {v1}, Lcn/nubia/server/appmgmt/NetWorkDetectorController;->access$100(Lcn/nubia/server/appmgmt/NetWorkDetectorController;)Landroid/util/LruCache;

    move-result-object v1

    iget-object v2, p0, Lcn/nubia/server/appmgmt/NetWorkDetectorController$NetWorkDetectionRunnable;->mNetID:Ljava/lang/String;

    invoke-virtual {v1, v2, v0}, Landroid/util/LruCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 204
    .end local v0    # "data":Lcn/nubia/server/appmgmt/NetWorkDetectorController$CacheData;
    goto :goto_0

    :cond_1
    iget v0, p0, Lcn/nubia/server/appmgmt/NetWorkDetectorController$NetWorkDetectionRunnable;->mNetType:I

    if-nez v0, :cond_3

    .line 207
    iget-object v0, p0, Lcn/nubia/server/appmgmt/NetWorkDetectorController$NetWorkDetectionRunnable;->this$0:Lcn/nubia/server/appmgmt/NetWorkDetectorController;

    invoke-static {v0}, Lcn/nubia/server/appmgmt/NetWorkDetectorController;->access$500(Lcn/nubia/server/appmgmt/NetWorkDetectorController;)Landroid/util/LruCache;

    move-result-object v0

    iget-object v2, p0, Lcn/nubia/server/appmgmt/NetWorkDetectorController$NetWorkDetectionRunnable;->mNetID:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/util/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/nubia/server/appmgmt/NetWorkDetectorController$CacheData;

    .line 208
    .restart local v0    # "data":Lcn/nubia/server/appmgmt/NetWorkDetectorController$CacheData;
    if-nez v0, :cond_2

    .line 209
    new-instance v2, Lcn/nubia/server/appmgmt/NetWorkDetectorController$CacheData;

    iget-object v3, p0, Lcn/nubia/server/appmgmt/NetWorkDetectorController$NetWorkDetectionRunnable;->this$0:Lcn/nubia/server/appmgmt/NetWorkDetectorController;

    invoke-direct {v2, v3}, Lcn/nubia/server/appmgmt/NetWorkDetectorController$CacheData;-><init>(Lcn/nubia/server/appmgmt/NetWorkDetectorController;)V

    move-object v0, v2

    .line 211
    :cond_2
    iget v2, v0, Lcn/nubia/server/appmgmt/NetWorkDetectorController$CacheData;->count:I

    add-int/2addr v2, v1

    iput v2, v0, Lcn/nubia/server/appmgmt/NetWorkDetectorController$CacheData;->count:I

    .line 212
    iput-boolean p1, v0, Lcn/nubia/server/appmgmt/NetWorkDetectorController$CacheData;->isAccess:Z

    .line 215
    iget-object v1, p0, Lcn/nubia/server/appmgmt/NetWorkDetectorController$NetWorkDetectionRunnable;->this$0:Lcn/nubia/server/appmgmt/NetWorkDetectorController;

    invoke-static {v1}, Lcn/nubia/server/appmgmt/NetWorkDetectorController;->access$500(Lcn/nubia/server/appmgmt/NetWorkDetectorController;)Landroid/util/LruCache;

    move-result-object v1

    iget-object v2, p0, Lcn/nubia/server/appmgmt/NetWorkDetectorController$NetWorkDetectionRunnable;->mNetID:Ljava/lang/String;

    invoke-virtual {v1, v2, v0}, Landroid/util/LruCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 216
    .end local v0    # "data":Lcn/nubia/server/appmgmt/NetWorkDetectorController$CacheData;
    goto :goto_0

    :cond_3
    iget v0, p0, Lcn/nubia/server/appmgmt/NetWorkDetectorController$NetWorkDetectionRunnable;->mNetType:I

    .line 219
    :goto_0
    return-void
.end method


# virtual methods
.method public run()V
    .locals 9

    .line 160
    const/4 v0, 0x0

    :try_start_0
    const-string v1, "TLS"

    invoke-static {v1}, Ljavax/net/ssl/SSLContext;->getInstance(Ljava/lang/String;)Ljavax/net/ssl/SSLContext;

    move-result-object v1

    .line 161
    .local v1, "sc":Ljavax/net/ssl/SSLContext;
    const/4 v2, 0x0

    iget-object v3, p0, Lcn/nubia/server/appmgmt/NetWorkDetectorController$NetWorkDetectionRunnable;->trustAllCerts:[Ljavax/net/ssl/TrustManager;

    new-instance v4, Ljava/security/SecureRandom;

    invoke-direct {v4}, Ljava/security/SecureRandom;-><init>()V

    invoke-virtual {v1, v2, v3, v4}, Ljavax/net/ssl/SSLContext;->init([Ljavax/net/ssl/KeyManager;[Ljavax/net/ssl/TrustManager;Ljava/security/SecureRandom;)V

    .line 162
    invoke-virtual {v1}, Ljavax/net/ssl/SSLContext;->getSocketFactory()Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v2

    invoke-static {v2}, Ljavax/net/ssl/HttpsURLConnection;->setDefaultSSLSocketFactory(Ljavax/net/ssl/SSLSocketFactory;)V

    .line 164
    new-instance v2, Ljava/net/URL;

    const-string v3, "https://www.google.com"

    invoke-direct {v2, v3}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 165
    .local v2, "url":Ljava/net/URL;
    invoke-virtual {v2}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v3

    check-cast v3, Ljava/net/HttpURLConnection;

    .line 166
    .local v3, "urlConnection":Ljava/net/HttpURLConnection;
    const-string v4, "GET"

    invoke-virtual {v3, v4}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 167
    const/16 v4, 0x2710

    invoke-virtual {v3, v4}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 168
    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v5

    .line 169
    .local v5, "responseCode":I
    const-string v6, "ApplicationManagerService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "[NetWorkDetectorController] responseCode: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, " , netType: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v8, p0, Lcn/nubia/server/appmgmt/NetWorkDetectorController$NetWorkDetectionRunnable;->mNetType:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, " ,netID: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, p0, Lcn/nubia/server/appmgmt/NetWorkDetectorController$NetWorkDetectionRunnable;->mNetID:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 171
    div-int/lit8 v6, v5, 0x64

    const/4 v7, 0x3

    if-ne v6, v7, :cond_0

    .line 172
    new-instance v6, Ljava/net/URL;

    const-string v7, "Location"

    invoke-virtual {v3, v7}, Ljava/net/HttpURLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    move-object v2, v6

    .line 173
    invoke-virtual {v2}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v6

    check-cast v6, Ljava/net/HttpURLConnection;

    move-object v3, v6

    .line 174
    const-string v6, "GET"

    invoke-virtual {v3, v6}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 175
    invoke-virtual {v3, v4}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 176
    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v4

    move v5, v4

    .line 178
    :cond_0
    const/16 v4, 0xc8

    if-ne v5, v4, :cond_1

    .line 179
    const/4 v4, 0x1

    invoke-direct {p0, v4}, Lcn/nubia/server/appmgmt/NetWorkDetectorController$NetWorkDetectionRunnable;->setVaule(Z)V

    .line 180
    const-string v4, "ApplicationManagerService"

    const-string v6, "[NetWorkDetectorController]  google connected"

    invoke-static {v4, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 182
    :cond_1
    invoke-direct {p0, v0}, Lcn/nubia/server/appmgmt/NetWorkDetectorController$NetWorkDetectionRunnable;->setVaule(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 187
    .end local v1    # "sc":Ljavax/net/ssl/SSLContext;
    .end local v2    # "url":Ljava/net/URL;
    .end local v3    # "urlConnection":Ljava/net/HttpURLConnection;
    .end local v5    # "responseCode":I
    :goto_0
    goto :goto_1

    .line 184
    :catch_0
    move-exception v1

    .line 185
    .local v1, "e":Ljava/lang/Exception;
    invoke-direct {p0, v0}, Lcn/nubia/server/appmgmt/NetWorkDetectorController$NetWorkDetectionRunnable;->setVaule(Z)V

    .line 186
    const-string v0, "ApplicationManagerService"

    const-string v2, "[NetWorkDetectorController] google connection failed"

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 188
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_1
    return-void
.end method
