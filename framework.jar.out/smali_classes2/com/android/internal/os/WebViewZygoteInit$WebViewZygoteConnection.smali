.class Lcom/android/internal/os/WebViewZygoteInit$WebViewZygoteConnection;
.super Lcom/android/internal/os/ZygoteConnection;
.source "WebViewZygoteInit.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/os/WebViewZygoteInit;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "WebViewZygoteConnection"
.end annotation


# direct methods
.method constructor <init>(Landroid/net/LocalSocket;Ljava/lang/String;)V
    .locals 0
    .param p1, "socket"    # Landroid/net/LocalSocket;
    .param p2, "abiList"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 59
    invoke-direct {p0, p1, p2}, Lcom/android/internal/os/ZygoteConnection;-><init>(Landroid/net/LocalSocket;Ljava/lang/String;)V

    .line 60
    return-void
.end method


# virtual methods
.method protected handlePreloadPackage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 10
    .param p1, "packagePath"    # Ljava/lang/String;
    .param p2, "libsPath"    # Ljava/lang/String;
    .param p3, "libFileName"    # Ljava/lang/String;
    .param p4, "cacheKey"    # Ljava/lang/String;

    .line 77
    const-string v0, "WebViewZygoteInit"

    const-string v1, "Beginning package preload"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 82
    invoke-static {}, Landroid/app/ApplicationLoaders;->getDefault()Landroid/app/ApplicationLoaders;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p4}, Landroid/app/ApplicationLoaders;->createAndCacheWebViewClassLoader(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/ClassLoader;

    move-result-object v0

    .line 87
    .local v0, "loader":Ljava/lang/ClassLoader;
    invoke-static {v0, p3}, Landroid/webkit/WebViewLibraryLoader;->loadNativeLibrary(Ljava/lang/ClassLoader;Ljava/lang/String;)I

    .line 90
    sget-object v1, Ljava/io/File;->pathSeparator:Ljava/lang/String;

    invoke-static {p1, v1}, Landroid/text/TextUtils;->split(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 91
    .local v1, "packageList":[Ljava/lang/String;
    array-length v2, v1

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    if-ge v4, v2, :cond_0

    aget-object v5, v1, v4

    .line 92
    .local v5, "packageEntry":Ljava/lang/String;
    invoke-static {v5}, Lcom/android/internal/os/Zygote;->nativeAllowFileAcrossFork(Ljava/lang/String;)V

    .line 91
    .end local v5    # "packageEntry":Ljava/lang/String;
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 95
    :cond_0
    const-string v2, "/dev/cpuctl/tasks"

    invoke-static {v2}, Lcom/android/internal/os/Zygote;->nativeAllowFileAcrossFork(Ljava/lang/String;)V

    .line 96
    const-string v2, "/dev/cpuctl/background/tasks"

    invoke-static {v2}, Lcom/android/internal/os/Zygote;->nativeAllowFileAcrossFork(Ljava/lang/String;)V

    .line 101
    move v2, v3

    .line 103
    .local v2, "preloadSucceeded":Z
    nop

    .line 104
    const/4 v4, 0x1

    :try_start_0
    invoke-static {v0}, Landroid/webkit/WebViewFactory;->getWebViewProviderClass(Ljava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v5

    .line 105
    .local v5, "providerClass":Ljava/lang/Class;, "Ljava/lang/Class<Landroid/webkit/WebViewFactoryProvider;>;"
    const-string/jumbo v6, "preloadInZygote"

    new-array v7, v3, [Ljava/lang/Class;

    invoke-virtual {v5, v6, v7}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v6

    .line 106
    .local v6, "preloadInZygote":Ljava/lang/reflect/Method;
    invoke-virtual {v6, v4}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 107
    invoke-virtual {v6}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    move-result-object v7

    sget-object v8, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    if-eq v7, v8, :cond_1

    .line 108
    const-string v7, "WebViewZygoteInit"

    const-string v8, "Unexpected return type: preloadInZygote must return boolean"

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 110
    :cond_1
    const-string/jumbo v7, "preloadInZygote"

    new-array v8, v3, [Ljava/lang/Class;

    invoke-virtual {v5, v7, v8}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v7

    const/4 v8, 0x0

    new-array v9, v3, [Ljava/lang/Object;

    .line 111
    invoke-virtual {v7, v8, v9}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Boolean;

    .line 110
    invoke-virtual {v7}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v7

    move v2, v7

    .line 112
    if-nez v2, :cond_2

    .line 113
    const-string v7, "WebViewZygoteInit"

    const-string/jumbo v8, "preloadInZygote returned false"

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/ReflectiveOperationException; {:try_start_0 .. :try_end_0} :catch_0

    .line 118
    .end local v5    # "providerClass":Ljava/lang/Class;, "Ljava/lang/Class<Landroid/webkit/WebViewFactoryProvider;>;"
    .end local v6    # "preloadInZygote":Ljava/lang/reflect/Method;
    :cond_2
    :goto_1
    goto :goto_2

    .line 116
    :catch_0
    move-exception v5

    .line 117
    .local v5, "e":Ljava/lang/ReflectiveOperationException;
    const-string v6, "WebViewZygoteInit"

    const-string v7, "Exception while preloading package"

    invoke-static {v6, v7, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 121
    .end local v5    # "e":Ljava/lang/ReflectiveOperationException;
    :goto_2
    :try_start_1
    invoke-virtual {p0}, Lcom/android/internal/os/WebViewZygoteInit$WebViewZygoteConnection;->getSocketOutputStream()Ljava/io/DataOutputStream;

    move-result-object v5

    .line 122
    .local v5, "socketOut":Ljava/io/DataOutputStream;
    if-eqz v2, :cond_3

    move v3, v4

    nop

    :cond_3
    invoke-virtual {v5, v3}, Ljava/io/DataOutputStream;->writeInt(I)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 125
    .end local v5    # "socketOut":Ljava/io/DataOutputStream;
    nop

    .line 127
    const-string v3, "WebViewZygoteInit"

    const-string v4, "Package preload done"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 128
    return-void

    .line 123
    :catch_1
    move-exception v3

    .line 124
    .local v3, "ioe":Ljava/io/IOException;
    new-instance v4, Ljava/lang/IllegalStateException;

    const-string v5, "Error writing to command socket"

    invoke-direct {v4, v5, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v4
.end method

.method protected isPreloadComplete()Z
    .locals 1

    .line 71
    const/4 v0, 0x1

    return v0
.end method

.method protected preload()V
    .locals 0

    .line 65
    return-void
.end method
