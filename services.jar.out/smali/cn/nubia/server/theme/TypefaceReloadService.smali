.class public Lcn/nubia/server/theme/TypefaceReloadService;
.super Lnubia/os/theme/ITypefaceReloadService$Stub;
.source "TypefaceReloadService.java"


# static fields
.field private static final MAGIC_NUMBER:I = 0x3346

.field private static final TAG:Ljava/lang/String; = "TypefaceReloadService"

.field private static final TIME_OUT:I = 0x7530

.field private static final ZYGOTE_NAME_32:Ljava/lang/String; = "zygote"

.field private static final ZYGOTE_NAME_64:Ljava/lang/String; = "zygote_secondary"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 17
    invoke-direct {p0}, Lnubia/os/theme/ITypefaceReloadService$Stub;-><init>()V

    return-void
.end method

.method private checkCallingPermission()Z
    .locals 2

    .line 31
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private sendMessage(Ljava/lang/String;)Z
    .locals 8
    .param p1, "name"    # Ljava/lang/String;

    .line 35
    const/4 v0, 0x0

    .line 36
    .local v0, "os":Ljava/io/PrintWriter;
    const/4 v1, 0x0

    .line 37
    .local v1, "is":Ljava/io/BufferedReader;
    const/4 v2, 0x0

    .line 39
    .local v2, "client":Landroid/net/LocalSocket;
    :try_start_0
    new-instance v3, Landroid/net/LocalSocket;

    invoke-direct {v3}, Landroid/net/LocalSocket;-><init>()V

    move-object v2, v3

    .line 40
    new-instance v3, Landroid/net/LocalSocketAddress;

    sget-object v4, Landroid/net/LocalSocketAddress$Namespace;->RESERVED:Landroid/net/LocalSocketAddress$Namespace;

    invoke-direct {v3, p1, v4}, Landroid/net/LocalSocketAddress;-><init>(Ljava/lang/String;Landroid/net/LocalSocketAddress$Namespace;)V

    invoke-virtual {v2, v3}, Landroid/net/LocalSocket;->connect(Landroid/net/LocalSocketAddress;)V

    .line 41
    const/16 v3, 0x7530

    invoke-virtual {v2, v3}, Landroid/net/LocalSocket;->setSoTimeout(I)V

    .line 42
    new-instance v3, Ljava/io/PrintWriter;

    invoke-virtual {v2}, Landroid/net/LocalSocket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/PrintWriter;-><init>(Ljava/io/OutputStream;)V

    move-object v0, v3

    .line 43
    new-instance v3, Ljava/io/BufferedReader;

    new-instance v4, Ljava/io/InputStreamReader;

    invoke-virtual {v2}, Landroid/net/LocalSocket;->getInputStream()Ljava/io/InputStream;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v3, v4}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    move-object v1, v3

    .line 44
    const/16 v3, 0x3346

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v0, v3}, Lcn/nubia/server/theme/TypefaceReloadService;->send(Ljava/io/PrintWriter;Ljava/lang/String;)V

    .line 46
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 47
    .local v3, "result":Ljava/lang/String;
    if-nez v3, :cond_0

    .line 55
    .end local v3    # "result":Ljava/lang/String;
    nop

    .line 56
    :try_start_1
    invoke-virtual {v2}, Landroid/net/LocalSocket;->close()V

    .line 58
    nop

    .line 59
    invoke-virtual {v0}, Ljava/io/PrintWriter;->close()V

    .line 61
    nop

    .line 62
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 66
    goto :goto_0

    .line 64
    :catch_0
    move-exception v3

    .line 65
    .local v3, "e":Ljava/lang/Exception;
    const-string v4, "TypefaceReloadService"

    const-string v5, "client.close Exception"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 67
    .end local v3    # "e":Ljava/lang/Exception;
    nop

    .line 68
    :goto_0
    const/4 v3, 0x1

    return v3

    .line 48
    .local v3, "result":Ljava/lang/String;
    :cond_0
    :try_start_2
    new-instance v4, Ljava/lang/RuntimeException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "TypefaceReloadService SendMessage Exception: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v4
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 54
    .end local v3    # "result":Ljava/lang/String;
    :catchall_0
    move-exception v3

    goto :goto_5

    .line 50
    :catch_1
    move-exception v3

    .line 51
    .local v3, "e":Ljava/lang/Exception;
    :try_start_3
    const-string v4, "TypefaceReloadService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Name["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "]"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/Exception;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 52
    const/4 v4, 0x0

    .line 55
    if-eqz v2, :cond_1

    .line 56
    :try_start_4
    invoke-virtual {v2}, Landroid/net/LocalSocket;->close()V

    goto :goto_1

    .line 64
    :catch_2
    move-exception v5

    goto :goto_2

    .line 58
    :cond_1
    :goto_1
    if-eqz v0, :cond_2

    .line 59
    invoke-virtual {v0}, Ljava/io/PrintWriter;->close()V

    .line 61
    :cond_2
    if-eqz v1, :cond_3

    .line 62
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_3

    .line 64
    :goto_2
    nop

    .line 65
    .local v5, "e":Ljava/lang/Exception;
    const-string v6, "TypefaceReloadService"

    const-string v7, "client.close Exception"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .end local v5    # "e":Ljava/lang/Exception;
    goto :goto_4

    .line 66
    :cond_3
    :goto_3
    nop

    .line 52
    :goto_4
    return v4

    .line 54
    .end local v3    # "e":Ljava/lang/Exception;
    :goto_5
    nop

    .line 55
    if-eqz v2, :cond_4

    .line 56
    :try_start_5
    invoke-virtual {v2}, Landroid/net/LocalSocket;->close()V

    goto :goto_6

    .line 64
    :catch_3
    move-exception v4

    goto :goto_7

    .line 58
    :cond_4
    :goto_6
    if-eqz v0, :cond_5

    .line 59
    invoke-virtual {v0}, Ljava/io/PrintWriter;->close()V

    .line 61
    :cond_5
    if-eqz v1, :cond_6

    .line 62
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_3

    goto :goto_8

    .line 64
    :goto_7
    nop

    .line 65
    .local v4, "e":Ljava/lang/Exception;
    const-string v5, "TypefaceReloadService"

    const-string v6, "client.close Exception"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .end local v4    # "e":Ljava/lang/Exception;
    nop

    .line 66
    :cond_6
    :goto_8
    throw v3
.end method


# virtual methods
.method public reloadZygoteTypeface()Z
    .locals 1

    .line 26
    invoke-direct {p0}, Lcn/nubia/server/theme/TypefaceReloadService;->checkCallingPermission()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "zygote"

    .line 27
    invoke-direct {p0, v0}, Lcn/nubia/server/theme/TypefaceReloadService;->sendMessage(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "zygote_secondary"

    invoke-direct {p0, v0}, Lcn/nubia/server/theme/TypefaceReloadService;->sendMessage(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 26
    :goto_0
    return v0
.end method

.method public send(Ljava/io/PrintWriter;Ljava/lang/String;)V
    .locals 0
    .param p1, "os"    # Ljava/io/PrintWriter;
    .param p2, "data"    # Ljava/lang/String;

    .line 72
    if-eqz p1, :cond_0

    .line 73
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 74
    invoke-virtual {p1}, Ljava/io/PrintWriter;->flush()V

    .line 76
    :cond_0
    return-void
.end method
