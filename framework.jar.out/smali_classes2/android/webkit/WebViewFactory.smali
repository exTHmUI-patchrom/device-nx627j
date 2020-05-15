.class public final Landroid/webkit/WebViewFactory;
.super Ljava/lang/Object;
.source "WebViewFactory.java"


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/webkit/WebViewFactory$MissingWebViewPackageException;
    }
.end annotation


# static fields
.field private static final CHROMIUM_WEBVIEW_FACTORY:Ljava/lang/String; = "com.android.webview.chromium.WebViewChromiumFactoryProviderForP"

.field private static final CHROMIUM_WEBVIEW_FACTORY_METHOD:Ljava/lang/String; = "create"

.field public static final CHROMIUM_WEBVIEW_VMSIZE_SIZE_PROPERTY:Ljava/lang/String; = "persist.sys.webview.vmsize"

.field private static final DEBUG:Z = false

.field public static final LIBLOAD_ADDRESS_SPACE_NOT_RESERVED:I = 0x2

.field public static final LIBLOAD_FAILED_JNI_CALL:I = 0x7

.field public static final LIBLOAD_FAILED_LISTING_WEBVIEW_PACKAGES:I = 0x4

.field public static final LIBLOAD_FAILED_TO_FIND_NAMESPACE:I = 0xa

.field public static final LIBLOAD_FAILED_TO_LOAD_LIBRARY:I = 0x6

.field public static final LIBLOAD_FAILED_TO_OPEN_RELRO_FILE:I = 0x5

.field public static final LIBLOAD_FAILED_WAITING_FOR_RELRO:I = 0x3

.field public static final LIBLOAD_FAILED_WAITING_FOR_WEBVIEW_REASON_UNKNOWN:I = 0x8

.field public static final LIBLOAD_SUCCESS:I = 0x0

.field public static final LIBLOAD_WRONG_PACKAGE_NAME:I = 0x1

.field private static final LOGTAG:Ljava/lang/String; = "WebViewFactory"

.field private static WEBVIEW_UPDATE_SERVICE_NAME:Ljava/lang/String;

.field private static sApplicationProviderInitial:Z

.field private static sDataDirectorySuffix:Ljava/lang/String;

.field private static sPackageInfo:Landroid/content/pm/PackageInfo;

.field private static sPreLoadingProviderInitial:Z

.field private static sProviderInstance:Landroid/webkit/WebViewFactoryProvider;

.field private static final sProviderLock:Ljava/lang/Object;

.field private static sWebViewContextSourceDir:Ljava/lang/String;

.field private static sWebViewDisabled:Z

.field private static sWebViewSupported:Ljava/lang/Boolean;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 84
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Landroid/webkit/WebViewFactory;->sProviderLock:Ljava/lang/Object;

    .line 111
    const/4 v0, 0x0

    sput-object v0, Landroid/webkit/WebViewFactory;->sWebViewContextSourceDir:Ljava/lang/String;

    .line 112
    const/4 v0, 0x0

    sput-boolean v0, Landroid/webkit/WebViewFactory;->sApplicationProviderInitial:Z

    .line 113
    const/4 v0, 0x1

    sput-boolean v0, Landroid/webkit/WebViewFactory;->sPreLoadingProviderInitial:Z

    .line 917
    const-string/jumbo v0, "webviewupdate"

    sput-object v0, Landroid/webkit/WebViewFactory;->WEBVIEW_UPDATE_SERVICE_NAME:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static disableWebView()V
    .locals 3

    .line 147
    sget-object v0, Landroid/webkit/WebViewFactory;->sProviderLock:Ljava/lang/Object;

    monitor-enter v0

    .line 148
    :try_start_0
    sget-object v1, Landroid/webkit/WebViewFactory;->sProviderInstance:Landroid/webkit/WebViewFactoryProvider;

    if-nez v1, :cond_0

    .line 152
    const/4 v1, 0x1

    sput-boolean v1, Landroid/webkit/WebViewFactory;->sWebViewDisabled:Z

    .line 153
    monitor-exit v0

    .line 154
    return-void

    .line 149
    :cond_0
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Can\'t disable WebView: WebView already initialized"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 153
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private static fixupStubApplicationInfo(Landroid/content/pm/ApplicationInfo;Landroid/content/pm/PackageManager;)V
    .locals 5
    .param p0, "ai"    # Landroid/content/pm/ApplicationInfo;
    .param p1, "pm"    # Landroid/content/pm/PackageManager;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/webkit/WebViewFactory$MissingWebViewPackageException;
        }
    .end annotation

    .line 733
    const/4 v0, 0x0

    .line 734
    .local v0, "donorPackageName":Ljava/lang/String;
    iget-object v1, p0, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    if-eqz v1, :cond_0

    .line 735
    iget-object v1, p0, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    const-string v2, "com.android.webview.WebViewDonorPackage"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 737
    :cond_0
    if-eqz v0, :cond_1

    .line 740
    const v1, 0x10202400

    :try_start_0
    invoke-virtual {p1, v0, v1}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 749
    .local v1, "donorPackage":Landroid/content/pm/PackageInfo;
    nop

    .line 747
    nop

    .line 750
    iget-object v2, v1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 753
    .local v2, "donorInfo":Landroid/content/pm/ApplicationInfo;
    iget-object v3, v2, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    iput-object v3, p0, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    .line 754
    iget-object v3, v2, Landroid/content/pm/ApplicationInfo;->splitSourceDirs:[Ljava/lang/String;

    iput-object v3, p0, Landroid/content/pm/ApplicationInfo;->splitSourceDirs:[Ljava/lang/String;

    .line 755
    iget-object v3, v2, Landroid/content/pm/ApplicationInfo;->nativeLibraryDir:Ljava/lang/String;

    iput-object v3, p0, Landroid/content/pm/ApplicationInfo;->nativeLibraryDir:Ljava/lang/String;

    .line 756
    iget-object v3, v2, Landroid/content/pm/ApplicationInfo;->secondaryNativeLibraryDir:Ljava/lang/String;

    iput-object v3, p0, Landroid/content/pm/ApplicationInfo;->secondaryNativeLibraryDir:Ljava/lang/String;

    .line 760
    iget-object v3, v2, Landroid/content/pm/ApplicationInfo;->primaryCpuAbi:Ljava/lang/String;

    iput-object v3, p0, Landroid/content/pm/ApplicationInfo;->primaryCpuAbi:Ljava/lang/String;

    .line 761
    iget-object v3, v2, Landroid/content/pm/ApplicationInfo;->secondaryCpuAbi:Ljava/lang/String;

    iput-object v3, p0, Landroid/content/pm/ApplicationInfo;->secondaryCpuAbi:Ljava/lang/String;

    .end local v1    # "donorPackage":Landroid/content/pm/PackageInfo;
    .end local v2    # "donorInfo":Landroid/content/pm/ApplicationInfo;
    goto :goto_0

    .line 746
    :catch_0
    move-exception v1

    .line 747
    .local v1, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    new-instance v2, Landroid/webkit/WebViewFactory$MissingWebViewPackageException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to find donor package: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/webkit/WebViewFactory$MissingWebViewPackageException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 763
    .end local v1    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :cond_1
    :goto_0
    return-void
.end method

.method static getDataDirectorySuffix()Ljava/lang/String;
    .locals 2

    .line 203
    sget-object v0, Landroid/webkit/WebViewFactory;->sProviderLock:Ljava/lang/Object;

    monitor-enter v0

    .line 204
    :try_start_0
    sget-object v1, Landroid/webkit/WebViewFactory;->sDataDirectorySuffix:Ljava/lang/String;

    monitor-exit v0

    return-object v1

    .line 205
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public static getLoadedPackageInfo()Landroid/content/pm/PackageInfo;
    .locals 2

    .line 218
    sget-object v0, Landroid/webkit/WebViewFactory;->sProviderLock:Ljava/lang/Object;

    monitor-enter v0

    .line 219
    :try_start_0
    sget-object v1, Landroid/webkit/WebViewFactory;->sPackageInfo:Landroid/content/pm/PackageInfo;

    monitor-exit v0

    return-object v1

    .line 220
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method static getProvider()Landroid/webkit/WebViewFactoryProvider;
    .locals 12

    .line 278
    sget-object v0, Landroid/webkit/WebViewFactory;->sProviderLock:Ljava/lang/Object;

    monitor-enter v0

    .line 280
    :try_start_0
    sget-boolean v1, Landroid/webkit/WebViewFactory;->sApplicationProviderInitial:Z

    const/4 v2, 0x1

    if-nez v1, :cond_0

    .line 281
    sput-boolean v2, Landroid/webkit/WebViewFactory;->sApplicationProviderInitial:Z

    .line 284
    :cond_0
    sget-object v1, Landroid/webkit/WebViewFactory;->sWebViewContextSourceDir:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 285
    invoke-static {}, Landroid/app/AppGlobals;->getInitialApplication()Landroid/app/Application;

    move-result-object v1

    .line 286
    .local v1, "app":Landroid/app/Application;
    invoke-virtual {v1}, Landroid/app/Application;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v3

    sget-object v4, Landroid/webkit/WebViewFactory;->sWebViewContextSourceDir:Ljava/lang/String;

    invoke-virtual {v3, v4}, Landroid/content/res/AssetManager;->addAssetPathAsSharedLibrary(Ljava/lang/String;)I

    .line 292
    .end local v1    # "app":Landroid/app/Application;
    :cond_1
    sget-object v1, Landroid/webkit/WebViewFactory;->sProviderInstance:Landroid/webkit/WebViewFactoryProvider;

    if-eqz v1, :cond_2

    sget-object v1, Landroid/webkit/WebViewFactory;->sProviderInstance:Landroid/webkit/WebViewFactoryProvider;

    monitor-exit v0

    return-object v1

    .line 294
    :cond_2
    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v1

    .line 295
    .local v1, "uid":I
    if-eqz v1, :cond_6

    const/16 v3, 0x3e8

    if-eq v1, v3, :cond_6

    const/16 v3, 0x3e9

    if-eq v1, v3, :cond_6

    const/16 v3, 0x403

    if-eq v1, v3, :cond_6

    const/16 v3, 0x3ea

    if-eq v1, v3, :cond_6

    .line 303
    invoke-static {}, Landroid/app/ActivityThread;->isPreLoadingWebView()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 304
    invoke-static {}, Landroid/webkit/WebViewFactory;->isMainThread()Z

    move-result v3

    invoke-static {v3}, Landroid/webkit/WebViewFactory;->setPreloadFlag(Z)V

    .line 307
    :cond_3
    invoke-static {}, Landroid/webkit/WebViewFactory;->isWebViewSupported()Z

    move-result v3

    if-eqz v3, :cond_5

    .line 312
    sget-boolean v3, Landroid/webkit/WebViewFactory;->sWebViewDisabled:Z

    if-nez v3, :cond_4

    .line 317
    const-string v3, "WebViewFactory.getProvider()"

    const-wide/16 v4, 0x10

    invoke-static {v4, v5, v3}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 319
    :try_start_1
    invoke-static {}, Landroid/webkit/WebViewFactory;->getProviderClass()Ljava/lang/Class;

    move-result-object v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 320
    .local v3, "providerClass":Ljava/lang/Class;, "Ljava/lang/Class<Landroid/webkit/WebViewFactoryProvider;>;"
    const/4 v6, 0x0

    move-object v7, v6

    .line 322
    .local v7, "staticFactory":Ljava/lang/reflect/Method;
    const/4 v8, 0x0

    :try_start_2
    const-string v9, "create"

    new-array v10, v2, [Ljava/lang/Class;

    const-class v11, Landroid/webkit/WebViewDelegate;

    aput-object v11, v10, v8

    invoke-virtual {v3, v9, v10}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v9
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    move-object v7, v9

    .line 328
    goto :goto_0

    .line 324
    :catch_0
    move-exception v9

    .line 330
    :goto_0
    :try_start_3
    const-string v9, "WebViewFactoryProvider invocation"

    invoke-static {v4, v5, v9}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 332
    :try_start_4
    new-array v2, v2, [Ljava/lang/Object;

    new-instance v9, Landroid/webkit/WebViewDelegate;

    invoke-direct {v9}, Landroid/webkit/WebViewDelegate;-><init>()V

    aput-object v9, v2, v8

    .line 333
    invoke-virtual {v7, v6, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/webkit/WebViewFactoryProvider;

    sput-object v2, Landroid/webkit/WebViewFactory;->sProviderInstance:Landroid/webkit/WebViewFactoryProvider;

    .line 335
    sget-object v2, Landroid/webkit/WebViewFactory;->sProviderInstance:Landroid/webkit/WebViewFactoryProvider;
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 340
    :try_start_5
    invoke-static {v4, v5}, Landroid/os/Trace;->traceEnd(J)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 343
    :try_start_6
    invoke-static {v4, v5}, Landroid/os/Trace;->traceEnd(J)V

    monitor-exit v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    .line 335
    return-object v2

    .line 340
    :catchall_0
    move-exception v2

    goto :goto_1

    .line 336
    :catch_1
    move-exception v2

    .line 337
    .local v2, "e":Ljava/lang/Exception;
    :try_start_7
    const-string v6, "WebViewFactory"

    const-string v8, "error instantiating provider"

    invoke-static {v6, v8, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 338
    new-instance v6, Landroid/util/AndroidRuntimeException;

    invoke-direct {v6, v2}, Landroid/util/AndroidRuntimeException;-><init>(Ljava/lang/Exception;)V

    throw v6
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 340
    .end local v2    # "e":Ljava/lang/Exception;
    :goto_1
    :try_start_8
    invoke-static {v4, v5}, Landroid/os/Trace;->traceEnd(J)V

    throw v2
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    .line 343
    .end local v3    # "providerClass":Ljava/lang/Class;, "Ljava/lang/Class<Landroid/webkit/WebViewFactoryProvider;>;"
    .end local v7    # "staticFactory":Ljava/lang/reflect/Method;
    :catchall_1
    move-exception v2

    :try_start_9
    invoke-static {v4, v5}, Landroid/os/Trace;->traceEnd(J)V

    throw v2

    .line 313
    :cond_4
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v3, "WebView.disableWebView() was called: WebView is disabled"

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 309
    :cond_5
    new-instance v2, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v2}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v2

    .line 298
    :cond_6
    new-instance v2, Ljava/lang/UnsupportedOperationException;

    const-string v3, "For security reasons, WebView is not allowed in privileged processes"

    invoke-direct {v2, v3}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 345
    .end local v1    # "uid":I
    :catchall_2
    move-exception v1

    monitor-exit v0
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    throw v1
.end method

.method private static getProviderClass()Ljava/lang/Class;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "Landroid/webkit/WebViewFactoryProvider;",
            ">;"
        }
    .end annotation

    .line 835
    const/4 v0, 0x0

    .line 836
    .local v0, "webViewContext":Landroid/content/Context;
    invoke-static {}, Landroid/app/AppGlobals;->getInitialApplication()Landroid/app/Application;

    move-result-object v1

    .line 839
    .local v1, "initialApplication":Landroid/app/Application;
    :try_start_0
    const-string v2, "WebViewFactory.getWebViewContextAndSetProvider()"

    const-wide/16 v3, 0x10

    invoke-static {v3, v4, v2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V
    :try_end_0
    .catch Landroid/webkit/WebViewFactory$MissingWebViewPackageException; {:try_start_0 .. :try_end_0} :catch_1

    .line 842
    :try_start_1
    invoke-static {}, Landroid/webkit/WebViewFactory;->getWebViewContextAndSetProvider()Landroid/content/Context;

    move-result-object v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    move-object v0, v2

    .line 844
    :try_start_2
    invoke-static {v3, v4}, Landroid/os/Trace;->traceEnd(J)V

    .line 845
    nop

    .line 846
    const-string v2, "WebViewFactory"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Loading "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v6, Landroid/webkit/WebViewFactory;->sPackageInfo:Landroid/content/pm/PackageInfo;

    iget-object v6, v6, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " version "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v6, Landroid/webkit/WebViewFactory;->sPackageInfo:Landroid/content/pm/PackageInfo;

    iget-object v6, v6, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " (code "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v6, Landroid/webkit/WebViewFactory;->sPackageInfo:Landroid/content/pm/PackageInfo;

    .line 847
    invoke-virtual {v6}, Landroid/content/pm/PackageInfo;->getLongVersionCode()J

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v6, ")"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 846
    invoke-static {v2, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 849
    const-string v2, "WebViewFactory.getChromiumProviderClass()"

    invoke-static {v3, v4, v2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V
    :try_end_2
    .catch Landroid/webkit/WebViewFactory$MissingWebViewPackageException; {:try_start_2 .. :try_end_2} :catch_1

    .line 851
    :try_start_3
    invoke-virtual {v1}, Landroid/app/Application;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v2

    .line 852
    invoke-virtual {v0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v5

    iget-object v5, v5, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    .line 851
    invoke-virtual {v2, v5}, Landroid/content/res/AssetManager;->addAssetPathAsSharedLibrary(Ljava/lang/String;)I

    .line 855
    invoke-virtual {v0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v2

    iget-object v2, v2, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    sput-object v2, Landroid/webkit/WebViewFactory;->sWebViewContextSourceDir:Ljava/lang/String;

    .line 858
    invoke-virtual {v0}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    .line 860
    .local v2, "clazzLoader":Ljava/lang/ClassLoader;
    const-string v5, "WebViewFactory.loadNativeLibrary()"

    invoke-static {v3, v4, v5}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 861
    sget-object v5, Landroid/webkit/WebViewFactory;->sPackageInfo:Landroid/content/pm/PackageInfo;

    iget-object v5, v5, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 862
    invoke-static {v5}, Landroid/webkit/WebViewFactory;->getWebViewLibrary(Landroid/content/pm/ApplicationInfo;)Ljava/lang/String;

    move-result-object v5

    .line 861
    invoke-static {v2, v5}, Landroid/webkit/WebViewLibraryLoader;->loadNativeLibrary(Ljava/lang/ClassLoader;Ljava/lang/String;)I

    .line 863
    invoke-static {v3, v4}, Landroid/os/Trace;->traceEnd(J)V

    .line 865
    const-string v5, "Class.forName()"

    invoke-static {v3, v4, v5}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/ClassNotFoundException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 867
    :try_start_4
    invoke-static {v2}, Landroid/webkit/WebViewFactory;->getWebViewProviderClass(Ljava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v5
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 869
    :try_start_5
    invoke-static {v3, v4}, Landroid/os/Trace;->traceEnd(J)V
    :try_end_5
    .catch Ljava/lang/ClassNotFoundException; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 875
    :try_start_6
    invoke-static {v3, v4}, Landroid/os/Trace;->traceEnd(J)V
    :try_end_6
    .catch Landroid/webkit/WebViewFactory$MissingWebViewPackageException; {:try_start_6 .. :try_end_6} :catch_1

    .line 867
    return-object v5

    .line 869
    :catchall_0
    move-exception v5

    :try_start_7
    invoke-static {v3, v4}, Landroid/os/Trace;->traceEnd(J)V

    throw v5
    :try_end_7
    .catch Ljava/lang/ClassNotFoundException; {:try_start_7 .. :try_end_7} :catch_0
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .line 875
    .end local v2    # "clazzLoader":Ljava/lang/ClassLoader;
    :catchall_1
    move-exception v2

    goto :goto_0

    .line 871
    :catch_0
    move-exception v2

    .line 872
    .local v2, "e":Ljava/lang/ClassNotFoundException;
    :try_start_8
    const-string v5, "WebViewFactory"

    const-string v6, "error loading provider"

    invoke-static {v5, v6, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 873
    new-instance v5, Landroid/util/AndroidRuntimeException;

    invoke-direct {v5, v2}, Landroid/util/AndroidRuntimeException;-><init>(Ljava/lang/Exception;)V

    throw v5
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    .line 875
    .end local v2    # "e":Ljava/lang/ClassNotFoundException;
    :goto_0
    :try_start_9
    invoke-static {v3, v4}, Landroid/os/Trace;->traceEnd(J)V

    throw v2

    .line 844
    :catchall_2
    move-exception v2

    invoke-static {v3, v4}, Landroid/os/Trace;->traceEnd(J)V

    throw v2
    :try_end_9
    .catch Landroid/webkit/WebViewFactory$MissingWebViewPackageException; {:try_start_9 .. :try_end_9} :catch_1

    .line 877
    :catch_1
    move-exception v2

    .line 878
    .local v2, "e":Landroid/webkit/WebViewFactory$MissingWebViewPackageException;
    const-string v3, "WebViewFactory"

    const-string v4, "Chromium WebView package does not exist"

    invoke-static {v3, v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 879
    new-instance v3, Landroid/util/AndroidRuntimeException;

    invoke-direct {v3, v2}, Landroid/util/AndroidRuntimeException;-><init>(Ljava/lang/Exception;)V

    throw v3
.end method

.method private static getProviderClass_nubia(Landroid/app/Application;)Ljava/lang/Class;
    .locals 7
    .param p0, "app"    # Landroid/app/Application;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Application;",
            ")",
            "Ljava/lang/Class<",
            "Landroid/webkit/WebViewFactoryProvider;",
            ">;"
        }
    .end annotation

    .line 360
    const/4 v0, 0x0

    .line 361
    .local v0, "webViewContext":Landroid/content/Context;
    move-object v1, p0

    .line 364
    .local v1, "initialApplication":Landroid/app/Application;
    :try_start_0
    sget-boolean v2, Landroid/os/NubiaDebug;->DEBUG_SYSTRACE_TAG:Z

    const-wide/16 v3, 0x10

    if-eqz v2, :cond_0

    invoke-static {v3, v4}, Landroid/os/Trace;->isTagEnabled(J)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 365
    const-string v2, "WebViewFactory.getProviderClass_nubia()"

    invoke-static {v3, v4, v2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V
    :try_end_0
    .catch Landroid/webkit/WebViewFactory$MissingWebViewPackageException; {:try_start_0 .. :try_end_0} :catch_1

    .line 368
    :cond_0
    :try_start_1
    invoke-static {p0}, Landroid/webkit/WebViewFactory;->getWebViewContextAndSetProvider_nubia(Landroid/app/Application;)Landroid/content/Context;

    move-result-object v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    move-object v0, v2

    .line 370
    :try_start_2
    sget-boolean v2, Landroid/os/NubiaDebug;->DEBUG_SYSTRACE_TAG:Z

    if-eqz v2, :cond_1

    invoke-static {v3, v4}, Landroid/os/Trace;->isTagEnabled(J)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 371
    invoke-static {v3, v4}, Landroid/os/Trace;->traceEnd(J)V

    .line 374
    :cond_1
    const-string v2, "WebViewFactory"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Loading "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v6, Landroid/webkit/WebViewFactory;->sPackageInfo:Landroid/content/pm/PackageInfo;

    iget-object v6, v6, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " version "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v6, Landroid/webkit/WebViewFactory;->sPackageInfo:Landroid/content/pm/PackageInfo;

    iget-object v6, v6, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " (code "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v6, Landroid/webkit/WebViewFactory;->sPackageInfo:Landroid/content/pm/PackageInfo;

    iget v6, v6, Landroid/content/pm/PackageInfo;->versionCode:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, ")"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 377
    sget-boolean v2, Landroid/os/NubiaDebug;->DEBUG_SYSTRACE_TAG:Z

    if-eqz v2, :cond_2

    invoke-static {v3, v4}, Landroid/os/Trace;->isTagEnabled(J)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 378
    const-string v2, "WebViewFactory.getProviderClass_nubia()"

    invoke-static {v3, v4, v2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V
    :try_end_2
    .catch Landroid/webkit/WebViewFactory$MissingWebViewPackageException; {:try_start_2 .. :try_end_2} :catch_1

    .line 381
    :cond_2
    :try_start_3
    invoke-virtual {v1}, Landroid/app/Application;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v2

    .line 382
    invoke-virtual {v0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v5

    iget-object v5, v5, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    .line 381
    invoke-virtual {v2, v5}, Landroid/content/res/AssetManager;->addAssetPathAsSharedLibrary(Ljava/lang/String;)I

    .line 383
    invoke-virtual {v0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v2

    iget-object v2, v2, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    sput-object v2, Landroid/webkit/WebViewFactory;->sWebViewContextSourceDir:Ljava/lang/String;

    .line 384
    invoke-virtual {v0}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    .line 386
    .local v2, "clazzLoader":Ljava/lang/ClassLoader;
    sget-boolean v5, Landroid/os/NubiaDebug;->DEBUG_SYSTRACE_TAG:Z

    if-eqz v5, :cond_3

    invoke-static {v3, v4}, Landroid/os/Trace;->isTagEnabled(J)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 387
    const-string v5, "WebViewFactory.loadNativeLibrary()"

    invoke-static {v3, v4, v5}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 389
    :cond_3
    sget-object v5, Landroid/webkit/WebViewFactory;->sPackageInfo:Landroid/content/pm/PackageInfo;

    iget-object v5, v5, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 390
    invoke-static {v5}, Landroid/webkit/WebViewFactory;->getWebViewLibrary(Landroid/content/pm/ApplicationInfo;)Ljava/lang/String;

    move-result-object v5

    .line 389
    invoke-static {v2, v5}, Landroid/webkit/WebViewLibraryLoader;->loadNativeLibrary(Ljava/lang/ClassLoader;Ljava/lang/String;)I

    .line 391
    sget-boolean v5, Landroid/os/NubiaDebug;->DEBUG_SYSTRACE_TAG:Z

    if-eqz v5, :cond_4

    invoke-static {v3, v4}, Landroid/os/Trace;->isTagEnabled(J)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 392
    invoke-static {v3, v4}, Landroid/os/Trace;->traceEnd(J)V

    .line 395
    :cond_4
    sget-boolean v5, Landroid/os/NubiaDebug;->DEBUG_SYSTRACE_TAG:Z

    if-eqz v5, :cond_5

    invoke-static {v3, v4}, Landroid/os/Trace;->isTagEnabled(J)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 396
    const-string v5, "Class.forName()"

    invoke-static {v3, v4, v5}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/ClassNotFoundException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 399
    :cond_5
    :try_start_4
    invoke-static {v2}, Landroid/webkit/WebViewFactory;->getWebViewProviderClass(Ljava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v5
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 401
    :try_start_5
    sget-boolean v6, Landroid/os/NubiaDebug;->DEBUG_SYSTRACE_TAG:Z

    if-eqz v6, :cond_6

    invoke-static {v3, v4}, Landroid/os/Trace;->isTagEnabled(J)Z

    move-result v6

    if-eqz v6, :cond_6

    .line 402
    invoke-static {v3, v4}, Landroid/os/Trace;->traceEnd(J)V
    :try_end_5
    .catch Ljava/lang/ClassNotFoundException; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 409
    :cond_6
    :try_start_6
    sget-boolean v6, Landroid/os/NubiaDebug;->DEBUG_SYSTRACE_TAG:Z

    if-eqz v6, :cond_7

    invoke-static {v3, v4}, Landroid/os/Trace;->isTagEnabled(J)Z

    move-result v6

    if-eqz v6, :cond_7

    .line 410
    invoke-static {v3, v4}, Landroid/os/Trace;->traceEnd(J)V
    :try_end_6
    .catch Landroid/webkit/WebViewFactory$MissingWebViewPackageException; {:try_start_6 .. :try_end_6} :catch_1

    .line 399
    :cond_7
    return-object v5

    .line 401
    :catchall_0
    move-exception v5

    :try_start_7
    sget-boolean v6, Landroid/os/NubiaDebug;->DEBUG_SYSTRACE_TAG:Z

    if-eqz v6, :cond_8

    invoke-static {v3, v4}, Landroid/os/Trace;->isTagEnabled(J)Z

    move-result v6

    if-eqz v6, :cond_8

    .line 402
    invoke-static {v3, v4}, Landroid/os/Trace;->traceEnd(J)V

    :cond_8
    throw v5
    :try_end_7
    .catch Ljava/lang/ClassNotFoundException; {:try_start_7 .. :try_end_7} :catch_0
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .line 409
    .end local v2    # "clazzLoader":Ljava/lang/ClassLoader;
    :catchall_1
    move-exception v2

    goto :goto_0

    .line 405
    :catch_0
    move-exception v2

    .line 406
    .local v2, "e":Ljava/lang/ClassNotFoundException;
    :try_start_8
    const-string v5, "WebViewFactory"

    const-string v6, "error loading provider"

    invoke-static {v5, v6, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 407
    new-instance v5, Landroid/util/AndroidRuntimeException;

    invoke-direct {v5, v2}, Landroid/util/AndroidRuntimeException;-><init>(Ljava/lang/Exception;)V

    throw v5
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    .line 409
    .end local v2    # "e":Ljava/lang/ClassNotFoundException;
    :goto_0
    :try_start_9
    sget-boolean v5, Landroid/os/NubiaDebug;->DEBUG_SYSTRACE_TAG:Z

    if-eqz v5, :cond_9

    invoke-static {v3, v4}, Landroid/os/Trace;->isTagEnabled(J)Z

    move-result v5

    if-eqz v5, :cond_9

    .line 410
    invoke-static {v3, v4}, Landroid/os/Trace;->traceEnd(J)V

    :cond_9
    throw v2

    .line 370
    :catchall_2
    move-exception v2

    sget-boolean v5, Landroid/os/NubiaDebug;->DEBUG_SYSTRACE_TAG:Z

    if-eqz v5, :cond_a

    invoke-static {v3, v4}, Landroid/os/Trace;->isTagEnabled(J)Z

    move-result v5

    if-eqz v5, :cond_a

    .line 371
    invoke-static {v3, v4}, Landroid/os/Trace;->traceEnd(J)V

    :cond_a
    throw v2
    :try_end_9
    .catch Landroid/webkit/WebViewFactory$MissingWebViewPackageException; {:try_start_9 .. :try_end_9} :catch_1

    .line 413
    :catch_1
    move-exception v2

    .line 414
    .local v2, "e":Landroid/webkit/WebViewFactory$MissingWebViewPackageException;
    const-string v3, "WebViewFactory"

    const-string v4, "Chromium WebView package does not exist"

    invoke-static {v3, v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 415
    new-instance v3, Landroid/util/AndroidRuntimeException;

    invoke-direct {v3, v2}, Landroid/util/AndroidRuntimeException;-><init>(Ljava/lang/Exception;)V

    throw v3
.end method

.method public static getProvider_nubia(Landroid/app/Application;)Landroid/webkit/WebViewFactoryProvider;
    .locals 12
    .param p0, "app"    # Landroid/app/Application;

    .line 511
    sget-object v0, Landroid/webkit/WebViewFactory;->sProviderLock:Ljava/lang/Object;

    monitor-enter v0

    .line 514
    :try_start_0
    sget-object v1, Landroid/webkit/WebViewFactory;->sProviderInstance:Landroid/webkit/WebViewFactoryProvider;

    if-eqz v1, :cond_0

    sget-object v1, Landroid/webkit/WebViewFactory;->sWebViewContextSourceDir:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 515
    invoke-virtual {p0}, Landroid/app/Application;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v1

    sget-object v2, Landroid/webkit/WebViewFactory;->sWebViewContextSourceDir:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/content/res/AssetManager;->addAssetPathAsSharedLibrary(Ljava/lang/String;)I

    .line 516
    sget-object v1, Landroid/webkit/WebViewFactory;->sProviderInstance:Landroid/webkit/WebViewFactoryProvider;

    monitor-exit v0

    return-object v1

    .line 519
    :cond_0
    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v1

    .line 520
    .local v1, "uid":I
    if-eqz v1, :cond_a

    const/16 v2, 0x3e8

    if-eq v1, v2, :cond_a

    const/16 v2, 0x3e9

    if-eq v1, v2, :cond_a

    const/16 v2, 0x403

    if-eq v1, v2, :cond_a

    const/16 v2, 0x3ea

    if-eq v1, v2, :cond_a

    .line 527
    sget-boolean v2, Landroid/os/NubiaDebug;->IS_USER_BUILD:Z

    if-nez v2, :cond_1

    .line 528
    const-string v2, "WebViewFactory"

    const-string v3, "WebViewFactory getProvider_nubia"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 531
    :cond_1
    invoke-static {}, Landroid/webkit/WebViewFactory;->isWebViewSupported()Z

    move-result v2

    if-eqz v2, :cond_9

    .line 536
    sget-boolean v2, Landroid/webkit/WebViewFactory;->sWebViewDisabled:Z

    if-nez v2, :cond_8

    .line 540
    sget-boolean v2, Landroid/os/NubiaDebug;->DEBUG_SYSTRACE_TAG:Z

    const-wide/16 v3, 0x10

    if-eqz v2, :cond_2

    invoke-static {v3, v4}, Landroid/os/Trace;->isTagEnabled(J)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 541
    const-string v2, "WebViewFactory.getProvider_nubia()"

    invoke-static {v3, v4, v2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 544
    :cond_2
    :try_start_1
    invoke-static {p0}, Landroid/webkit/WebViewFactory;->getProviderClass_nubia(Landroid/app/Application;)Ljava/lang/Class;

    move-result-object v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 545
    .local v2, "providerClass":Ljava/lang/Class;, "Ljava/lang/Class<Landroid/webkit/WebViewFactoryProvider;>;"
    const/4 v5, 0x0

    move-object v6, v5

    .line 547
    .local v6, "staticFactory":Ljava/lang/reflect/Method;
    const/4 v7, 0x0

    const/4 v8, 0x1

    :try_start_2
    const-string v9, "create"

    new-array v10, v8, [Ljava/lang/Class;

    const-class v11, Landroid/webkit/WebViewDelegate;

    aput-object v11, v10, v7

    invoke-virtual {v2, v9, v10}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v9
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    move-object v6, v9

    .line 553
    goto :goto_0

    .line 549
    :catch_0
    move-exception v9

    .line 554
    :goto_0
    :try_start_3
    sget-boolean v9, Landroid/os/NubiaDebug;->DEBUG_SYSTRACE_TAG:Z

    if-eqz v9, :cond_3

    invoke-static {v3, v4}, Landroid/os/Trace;->isTagEnabled(J)Z

    move-result v9

    if-eqz v9, :cond_3

    .line 555
    const-string v9, "WebViewFactoryProvider invocation"

    invoke-static {v3, v4, v9}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 558
    :cond_3
    :try_start_4
    new-array v8, v8, [Ljava/lang/Object;

    new-instance v9, Landroid/webkit/WebViewDelegate;

    invoke-direct {v9}, Landroid/webkit/WebViewDelegate;-><init>()V

    aput-object v9, v8, v7

    .line 559
    invoke-virtual {v6, v5, v8}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/webkit/WebViewFactoryProvider;

    sput-object v5, Landroid/webkit/WebViewFactory;->sProviderInstance:Landroid/webkit/WebViewFactoryProvider;

    .line 561
    sget-object v5, Landroid/webkit/WebViewFactory;->sProviderInstance:Landroid/webkit/WebViewFactoryProvider;
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 566
    :try_start_5
    sget-boolean v7, Landroid/os/NubiaDebug;->DEBUG_SYSTRACE_TAG:Z

    if-eqz v7, :cond_4

    invoke-static {v3, v4}, Landroid/os/Trace;->isTagEnabled(J)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 567
    invoke-static {v3, v4}, Landroid/os/Trace;->traceEnd(J)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 571
    :cond_4
    :try_start_6
    sget-boolean v7, Landroid/os/NubiaDebug;->DEBUG_SYSTRACE_TAG:Z

    if-eqz v7, :cond_5

    invoke-static {v3, v4}, Landroid/os/Trace;->isTagEnabled(J)Z

    move-result v7

    if-eqz v7, :cond_5

    .line 572
    invoke-static {v3, v4}, Landroid/os/Trace;->traceEnd(J)V

    :cond_5
    monitor-exit v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    .line 561
    return-object v5

    .line 566
    :catchall_0
    move-exception v5

    goto :goto_1

    .line 562
    :catch_1
    move-exception v5

    .line 563
    .local v5, "e":Ljava/lang/Exception;
    :try_start_7
    const-string v7, "WebViewFactory"

    const-string v8, "error instantiating provider"

    invoke-static {v7, v8, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 564
    new-instance v7, Landroid/util/AndroidRuntimeException;

    invoke-direct {v7, v5}, Landroid/util/AndroidRuntimeException;-><init>(Ljava/lang/Exception;)V

    throw v7
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 566
    .end local v5    # "e":Ljava/lang/Exception;
    :goto_1
    :try_start_8
    sget-boolean v7, Landroid/os/NubiaDebug;->DEBUG_SYSTRACE_TAG:Z

    if-eqz v7, :cond_6

    invoke-static {v3, v4}, Landroid/os/Trace;->isTagEnabled(J)Z

    move-result v7

    if-eqz v7, :cond_6

    .line 567
    invoke-static {v3, v4}, Landroid/os/Trace;->traceEnd(J)V

    :cond_6
    throw v5
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    .line 571
    .end local v2    # "providerClass":Ljava/lang/Class;, "Ljava/lang/Class<Landroid/webkit/WebViewFactoryProvider;>;"
    .end local v6    # "staticFactory":Ljava/lang/reflect/Method;
    :catchall_1
    move-exception v2

    :try_start_9
    sget-boolean v5, Landroid/os/NubiaDebug;->DEBUG_SYSTRACE_TAG:Z

    if-eqz v5, :cond_7

    invoke-static {v3, v4}, Landroid/os/Trace;->isTagEnabled(J)Z

    move-result v5

    if-eqz v5, :cond_7

    .line 572
    invoke-static {v3, v4}, Landroid/os/Trace;->traceEnd(J)V

    :cond_7
    throw v2

    .line 537
    :cond_8
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v3, "WebView.disableWebView() was called: WebView is disabled"

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 533
    :cond_9
    new-instance v2, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v2}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v2

    .line 523
    :cond_a
    new-instance v2, Ljava/lang/UnsupportedOperationException;

    const-string v3, "For security reasons, WebView is not allowed in privileged processes"

    invoke-direct {v2, v3}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 575
    .end local v1    # "uid":I
    :catchall_2
    move-exception v1

    monitor-exit v0
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    throw v1
.end method

.method public static getUpdateService()Landroid/webkit/IWebViewUpdateService;
    .locals 1

    .line 921
    invoke-static {}, Landroid/webkit/WebViewFactory;->isWebViewSupported()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 922
    invoke-static {}, Landroid/webkit/WebViewFactory;->getUpdateServiceUnchecked()Landroid/webkit/IWebViewUpdateService;

    move-result-object v0

    return-object v0

    .line 924
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method static getUpdateServiceUnchecked()Landroid/webkit/IWebViewUpdateService;
    .locals 1

    .line 930
    sget-object v0, Landroid/webkit/WebViewFactory;->WEBVIEW_UPDATE_SERVICE_NAME:Ljava/lang/String;

    .line 931
    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 930
    invoke-static {v0}, Landroid/webkit/IWebViewUpdateService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/webkit/IWebViewUpdateService;

    move-result-object v0

    return-object v0
.end method

.method private static getWebViewContextAndSetProvider()Landroid/content/Context;
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/webkit/WebViewFactory$MissingWebViewPackageException;
        }
    .end annotation

    .line 766
    invoke-static {}, Landroid/app/AppGlobals;->getInitialApplication()Landroid/app/Application;

    move-result-object v0

    .line 768
    .local v0, "initialApplication":Landroid/app/Application;
    const/4 v1, 0x0

    .line 769
    .local v1, "response":Landroid/webkit/WebViewProviderResponse;
    :try_start_0
    const-string v2, "WebViewUpdateService.waitForAndGetProvider()"

    const-wide/16 v3, 0x10

    invoke-static {v3, v4, v2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 772
    :try_start_1
    invoke-static {}, Landroid/webkit/WebViewFactory;->getUpdateService()Landroid/webkit/IWebViewUpdateService;

    move-result-object v2

    invoke-interface {v2}, Landroid/webkit/IWebViewUpdateService;->waitForAndGetProvider()Landroid/webkit/WebViewProviderResponse;

    move-result-object v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_3

    move-object v1, v2

    .line 774
    :try_start_2
    invoke-static {v3, v4}, Landroid/os/Trace;->traceEnd(J)V

    .line 775
    nop

    .line 776
    iget v2, v1, Landroid/webkit/WebViewProviderResponse;->status:I

    const/4 v5, 0x3

    if-eqz v2, :cond_1

    iget v2, v1, Landroid/webkit/WebViewProviderResponse;->status:I

    if-ne v2, v5, :cond_0

    goto :goto_0

    .line 778
    :cond_0
    new-instance v2, Landroid/webkit/WebViewFactory$MissingWebViewPackageException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to load WebView provider: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, v1, Landroid/webkit/WebViewProviderResponse;->status:I

    .line 779
    invoke-static {v4}, Landroid/webkit/WebViewFactory;->getWebViewPreparationErrorReason(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/webkit/WebViewFactory$MissingWebViewPackageException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 783
    :cond_1
    :goto_0
    const-string v2, "ActivityManager.addPackageDependency()"

    invoke-static {v3, v4, v2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_2 .. :try_end_2} :catch_0

    .line 785
    :try_start_3
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v2

    iget-object v6, v1, Landroid/webkit/WebViewProviderResponse;->packageInfo:Landroid/content/pm/PackageInfo;

    iget-object v6, v6, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-interface {v2, v6}, Landroid/app/IActivityManager;->addPackageDependency(Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 788
    :try_start_4
    invoke-static {v3, v4}, Landroid/os/Trace;->traceEnd(J)V

    .line 789
    nop

    .line 791
    const/4 v2, 0x0

    .line 792
    .local v2, "newPackageInfo":Landroid/content/pm/PackageInfo;
    invoke-virtual {v0}, Landroid/app/Application;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v6

    .line 793
    .local v6, "pm":Landroid/content/pm/PackageManager;
    const-string v7, "PackageManager.getPackageInfo()"

    invoke-static {v3, v4, v7}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_4 .. :try_end_4} :catch_0

    .line 795
    :try_start_5
    iget-object v7, v1, Landroid/webkit/WebViewProviderResponse;->packageInfo:Landroid/content/pm/PackageInfo;

    iget-object v7, v7, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    const v8, 0x100024c0

    invoke-virtual {v6, v7, v8}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v7
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    move-object v2, v7

    .line 807
    :try_start_6
    invoke-static {v3, v4}, Landroid/os/Trace;->traceEnd(J)V

    .line 808
    nop

    .line 812
    iget-object v7, v1, Landroid/webkit/WebViewProviderResponse;->packageInfo:Landroid/content/pm/PackageInfo;

    invoke-static {v7, v2}, Landroid/webkit/WebViewFactory;->verifyPackageInfo(Landroid/content/pm/PackageInfo;Landroid/content/pm/PackageInfo;)V

    .line 814
    iget-object v7, v2, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 815
    .local v7, "ai":Landroid/content/pm/ApplicationInfo;
    invoke-static {v7, v6}, Landroid/webkit/WebViewFactory;->fixupStubApplicationInfo(Landroid/content/pm/ApplicationInfo;Landroid/content/pm/PackageManager;)V

    .line 817
    const-string v8, "initialApplication.createApplicationContext"

    invoke-static {v3, v4, v8}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_6} :catch_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_6 .. :try_end_6} :catch_0

    .line 821
    :try_start_7
    invoke-virtual {v0, v7, v5}, Landroid/app/Application;->createApplicationContext(Landroid/content/pm/ApplicationInfo;I)Landroid/content/Context;

    move-result-object v5

    .line 824
    .local v5, "webViewContext":Landroid/content/Context;
    sput-object v2, Landroid/webkit/WebViewFactory;->sPackageInfo:Landroid/content/pm/PackageInfo;
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 825
    nop

    .line 827
    :try_start_8
    invoke-static {v3, v4}, Landroid/os/Trace;->traceEnd(J)V

    .line 825
    return-object v5

    .line 827
    .end local v5    # "webViewContext":Landroid/content/Context;
    :catchall_0
    move-exception v5

    invoke-static {v3, v4}, Landroid/os/Trace;->traceEnd(J)V

    throw v5

    .line 807
    .end local v7    # "ai":Landroid/content/pm/ApplicationInfo;
    :catchall_1
    move-exception v5

    invoke-static {v3, v4}, Landroid/os/Trace;->traceEnd(J)V

    throw v5

    .line 788
    .end local v2    # "newPackageInfo":Landroid/content/pm/PackageInfo;
    .end local v6    # "pm":Landroid/content/pm/PackageManager;
    :catchall_2
    move-exception v2

    invoke-static {v3, v4}, Landroid/os/Trace;->traceEnd(J)V

    throw v2

    .line 774
    :catchall_3
    move-exception v2

    invoke-static {v3, v4}, Landroid/os/Trace;->traceEnd(J)V

    throw v2
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_8 .. :try_end_8} :catch_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_8 .. :try_end_8} :catch_0

    .line 829
    .end local v1    # "response":Landroid/webkit/WebViewProviderResponse;
    :catch_0
    move-exception v1

    .line 830
    .local v1, "e":Landroid/util/AndroidException;
    new-instance v2, Landroid/webkit/WebViewFactory$MissingWebViewPackageException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to load WebView provider: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/webkit/WebViewFactory$MissingWebViewPackageException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method private static getWebViewContextAndSetProvider_nubia(Landroid/app/Application;)Landroid/content/Context;
    .locals 9
    .param p0, "app"    # Landroid/app/Application;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/webkit/WebViewFactory$MissingWebViewPackageException;
        }
    .end annotation

    .line 423
    move-object v0, p0

    .line 425
    .local v0, "initialApplication":Landroid/app/Application;
    const/4 v1, 0x0

    .line 426
    .local v1, "response":Landroid/webkit/WebViewProviderResponse;
    :try_start_0
    sget-boolean v2, Landroid/os/NubiaDebug;->DEBUG_SYSTRACE_TAG:Z

    const-wide/16 v3, 0x10

    if-eqz v2, :cond_0

    invoke-static {v3, v4}, Landroid/os/Trace;->isTagEnabled(J)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 427
    const-string v2, "WebViewUpdateService.getWebViewContextAndSetProvider_nubia()"

    invoke-static {v3, v4, v2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 431
    :cond_0
    :try_start_1
    invoke-static {}, Landroid/webkit/WebViewFactory;->getUpdateService()Landroid/webkit/IWebViewUpdateService;

    move-result-object v2

    invoke-interface {v2}, Landroid/webkit/IWebViewUpdateService;->waitForAndGetProvider()Landroid/webkit/WebViewProviderResponse;

    move-result-object v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_3

    move-object v1, v2

    .line 433
    :try_start_2
    sget-boolean v2, Landroid/os/NubiaDebug;->DEBUG_SYSTRACE_TAG:Z

    if-eqz v2, :cond_1

    invoke-static {v3, v4}, Landroid/os/Trace;->isTagEnabled(J)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 434
    invoke-static {v3, v4}, Landroid/os/Trace;->traceEnd(J)V

    .line 437
    :cond_1
    iget v2, v1, Landroid/webkit/WebViewProviderResponse;->status:I

    const/4 v5, 0x3

    if-eqz v2, :cond_3

    iget v2, v1, Landroid/webkit/WebViewProviderResponse;->status:I

    if-ne v2, v5, :cond_2

    goto :goto_0

    .line 439
    :cond_2
    new-instance v2, Landroid/webkit/WebViewFactory$MissingWebViewPackageException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to load WebView provider: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, v1, Landroid/webkit/WebViewProviderResponse;->status:I

    .line 440
    invoke-static {v4}, Landroid/webkit/WebViewFactory;->getWebViewPreparationErrorReason(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/webkit/WebViewFactory$MissingWebViewPackageException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 444
    :cond_3
    :goto_0
    sget-boolean v2, Landroid/os/NubiaDebug;->DEBUG_SYSTRACE_TAG:Z

    if-eqz v2, :cond_4

    invoke-static {v3, v4}, Landroid/os/Trace;->isTagEnabled(J)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 445
    const-string v2, "ActivityManager.addPackageDependency()"

    invoke-static {v3, v4, v2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_2 .. :try_end_2} :catch_0

    .line 448
    :cond_4
    :try_start_3
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v2

    iget-object v6, v1, Landroid/webkit/WebViewProviderResponse;->packageInfo:Landroid/content/pm/PackageInfo;

    iget-object v6, v6, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-interface {v2, v6}, Landroid/app/IActivityManager;->addPackageDependency(Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 451
    :try_start_4
    sget-boolean v2, Landroid/os/NubiaDebug;->DEBUG_SYSTRACE_TAG:Z

    if-eqz v2, :cond_5

    invoke-static {v3, v4}, Landroid/os/Trace;->isTagEnabled(J)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 452
    invoke-static {v3, v4}, Landroid/os/Trace;->traceEnd(J)V

    .line 456
    :cond_5
    const/4 v2, 0x0

    .line 457
    .local v2, "newPackageInfo":Landroid/content/pm/PackageInfo;
    invoke-virtual {v0}, Landroid/app/Application;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v6

    .line 458
    .local v6, "pm":Landroid/content/pm/PackageManager;
    sget-boolean v7, Landroid/os/NubiaDebug;->DEBUG_SYSTRACE_TAG:Z

    if-eqz v7, :cond_6

    invoke-static {v3, v4}, Landroid/os/Trace;->isTagEnabled(J)Z

    move-result v7

    if-eqz v7, :cond_6

    .line 459
    const-string v7, "PackageManager.getPackageInfo()"

    invoke-static {v3, v4, v7}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_4 .. :try_end_4} :catch_0

    .line 462
    :cond_6
    :try_start_5
    iget-object v7, v1, Landroid/webkit/WebViewProviderResponse;->packageInfo:Landroid/content/pm/PackageInfo;

    iget-object v7, v7, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    const v8, 0x100024c0

    invoke-virtual {v6, v7, v8}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v7
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    move-object v2, v7

    .line 474
    :try_start_6
    sget-boolean v7, Landroid/os/NubiaDebug;->DEBUG_SYSTRACE_TAG:Z

    if-eqz v7, :cond_7

    invoke-static {v3, v4}, Landroid/os/Trace;->isTagEnabled(J)Z

    move-result v7

    if-eqz v7, :cond_7

    .line 475
    invoke-static {v3, v4}, Landroid/os/Trace;->traceEnd(J)V

    .line 481
    :cond_7
    iget-object v7, v1, Landroid/webkit/WebViewProviderResponse;->packageInfo:Landroid/content/pm/PackageInfo;

    invoke-static {v7, v2}, Landroid/webkit/WebViewFactory;->verifyPackageInfo(Landroid/content/pm/PackageInfo;Landroid/content/pm/PackageInfo;)V

    .line 483
    iget-object v7, v2, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 484
    .local v7, "ai":Landroid/content/pm/ApplicationInfo;
    invoke-static {v7, v6}, Landroid/webkit/WebViewFactory;->fixupStubApplicationInfo(Landroid/content/pm/ApplicationInfo;Landroid/content/pm/PackageManager;)V

    .line 486
    sget-boolean v8, Landroid/os/NubiaDebug;->DEBUG_SYSTRACE_TAG:Z

    if-eqz v8, :cond_8

    invoke-static {v3, v4}, Landroid/os/Trace;->isTagEnabled(J)Z

    move-result v8

    if-eqz v8, :cond_8

    .line 487
    const-string v8, "initialApplication.createApplicationContext"

    invoke-static {v3, v4, v8}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_6} :catch_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_6 .. :try_end_6} :catch_0

    .line 492
    :cond_8
    :try_start_7
    invoke-virtual {v0, v7, v5}, Landroid/app/Application;->createApplicationContext(Landroid/content/pm/ApplicationInfo;I)Landroid/content/Context;

    move-result-object v5

    .line 495
    .local v5, "webViewContext":Landroid/content/Context;
    sput-object v2, Landroid/webkit/WebViewFactory;->sPackageInfo:Landroid/content/pm/PackageInfo;
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 496
    nop

    .line 498
    :try_start_8
    sget-boolean v8, Landroid/os/NubiaDebug;->DEBUG_SYSTRACE_TAG:Z

    if-eqz v8, :cond_9

    invoke-static {v3, v4}, Landroid/os/Trace;->isTagEnabled(J)Z

    move-result v8

    if-eqz v8, :cond_9

    .line 499
    invoke-static {v3, v4}, Landroid/os/Trace;->traceEnd(J)V

    .line 496
    :cond_9
    return-object v5

    .line 498
    .end local v5    # "webViewContext":Landroid/content/Context;
    :catchall_0
    move-exception v5

    sget-boolean v8, Landroid/os/NubiaDebug;->DEBUG_SYSTRACE_TAG:Z

    if-eqz v8, :cond_a

    invoke-static {v3, v4}, Landroid/os/Trace;->isTagEnabled(J)Z

    move-result v8

    if-eqz v8, :cond_a

    .line 499
    invoke-static {v3, v4}, Landroid/os/Trace;->traceEnd(J)V

    :cond_a
    throw v5

    .line 474
    .end local v7    # "ai":Landroid/content/pm/ApplicationInfo;
    :catchall_1
    move-exception v5

    sget-boolean v7, Landroid/os/NubiaDebug;->DEBUG_SYSTRACE_TAG:Z

    if-eqz v7, :cond_b

    invoke-static {v3, v4}, Landroid/os/Trace;->isTagEnabled(J)Z

    move-result v7

    if-eqz v7, :cond_b

    .line 475
    invoke-static {v3, v4}, Landroid/os/Trace;->traceEnd(J)V

    :cond_b
    throw v5

    .line 451
    .end local v2    # "newPackageInfo":Landroid/content/pm/PackageInfo;
    .end local v6    # "pm":Landroid/content/pm/PackageManager;
    :catchall_2
    move-exception v2

    sget-boolean v5, Landroid/os/NubiaDebug;->DEBUG_SYSTRACE_TAG:Z

    if-eqz v5, :cond_c

    invoke-static {v3, v4}, Landroid/os/Trace;->isTagEnabled(J)Z

    move-result v5

    if-eqz v5, :cond_c

    .line 452
    invoke-static {v3, v4}, Landroid/os/Trace;->traceEnd(J)V

    :cond_c
    throw v2

    .line 433
    :catchall_3
    move-exception v2

    sget-boolean v5, Landroid/os/NubiaDebug;->DEBUG_SYSTRACE_TAG:Z

    if-eqz v5, :cond_d

    invoke-static {v3, v4}, Landroid/os/Trace;->isTagEnabled(J)Z

    move-result v5

    if-eqz v5, :cond_d

    .line 434
    invoke-static {v3, v4}, Landroid/os/Trace;->traceEnd(J)V

    :cond_d
    throw v2
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_8 .. :try_end_8} :catch_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_8 .. :try_end_8} :catch_0

    .line 502
    .end local v1    # "response":Landroid/webkit/WebViewProviderResponse;
    :catch_0
    move-exception v1

    .line 503
    .local v1, "e":Landroid/util/AndroidException;
    new-instance v2, Landroid/webkit/WebViewFactory$MissingWebViewPackageException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to load WebView provider: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/webkit/WebViewFactory$MissingWebViewPackageException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public static getWebViewLibrary(Landroid/content/pm/ApplicationInfo;)Ljava/lang/String;
    .locals 2
    .param p0, "ai"    # Landroid/content/pm/ApplicationInfo;

    .line 212
    iget-object v0, p0, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    if-eqz v0, :cond_0

    .line 213
    iget-object v0, p0, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    const-string v1, "com.android.webview.WebViewLibrary"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 214
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method private static getWebViewPreparationErrorReason(I)Ljava/lang/String;
    .locals 1
    .param p0, "error"    # I

    .line 117
    const/16 v0, 0x8

    if-eq p0, v0, :cond_0

    packed-switch p0, :pswitch_data_0

    .line 125
    const-string v0, "Unknown"

    return-object v0

    .line 121
    :pswitch_0
    const-string v0, "No WebView installed"

    return-object v0

    .line 119
    :pswitch_1
    const-string v0, "Time out waiting for Relro files being created"

    return-object v0

    .line 123
    :cond_0
    const-string v0, "Crashed for unknown reason"

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static getWebViewProviderClass(Ljava/lang/ClassLoader;)Ljava/lang/Class;
    .locals 2
    .param p0, "clazzLoader"    # Ljava/lang/ClassLoader;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/ClassLoader;",
            ")",
            "Ljava/lang/Class<",
            "Landroid/webkit/WebViewFactoryProvider;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .line 228
    const-string v0, "com.android.webview.chromium.WebViewChromiumFactoryProviderForP"

    const/4 v1, 0x1

    invoke-static {v0, v1, p0}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v0

    return-object v0
.end method

.method public static isMainThread()Z
    .locals 2

    .line 582
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private static isPreloadingWebViewBlackList(Landroid/content/Context;)Z
    .locals 8
    .param p0, "appContext"    # Landroid/content/Context;

    .line 939
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 940
    .local v0, "appInfo":Landroid/content/pm/ApplicationInfo;
    iget-object v1, v0, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    .line 941
    .local v1, "sourceDir":Ljava/lang/String;
    const/4 v2, 0x0

    .line 942
    .local v2, "ret":Z
    const/4 v3, 0x0

    .line 944
    .local v3, "zipFile":Ljava/util/zip/ZipFile;
    :try_start_0
    new-instance v4, Ljava/util/zip/ZipFile;

    invoke-direct {v4, v1}, Ljava/util/zip/ZipFile;-><init>(Ljava/lang/String;)V

    move-object v3, v4

    .line 945
    invoke-virtual {v3}, Ljava/util/zip/ZipFile;->entries()Ljava/util/Enumeration;

    move-result-object v4

    .line 946
    .local v4, "entries":Ljava/util/Enumeration;, "Ljava/util/Enumeration<+Ljava/util/zip/ZipEntry;>;"
    :goto_0
    invoke-interface {v4}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 947
    invoke-interface {v4}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/zip/ZipEntry;

    .line 948
    .local v5, "entry":Ljava/util/zip/ZipEntry;
    invoke-virtual {v5}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v6

    const-string/jumbo v7, "libxwalkcore.so"

    invoke-virtual {v6, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v6, :cond_0

    .line 949
    const/4 v2, 0x1

    .line 950
    goto :goto_1

    .line 952
    .end local v5    # "entry":Ljava/util/zip/ZipEntry;
    :cond_0
    goto :goto_0

    .line 957
    .end local v4    # "entries":Ljava/util/Enumeration;, "Ljava/util/Enumeration<+Ljava/util/zip/ZipEntry;>;"
    :cond_1
    :goto_1
    nop

    .line 959
    :try_start_1
    invoke-virtual {v3}, Ljava/util/zip/ZipFile;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 962
    :goto_2
    goto :goto_3

    .line 960
    :catch_0
    move-exception v4

    goto :goto_2

    .line 965
    :goto_3
    return v2

    .line 957
    :catchall_0
    move-exception v4

    goto :goto_5

    .line 953
    :catch_1
    move-exception v4

    .line 954
    .local v4, "e":Ljava/io/IOException;
    :try_start_2
    const-string v5, "WebViewFactory"

    const-string v6, "Don\'t preloading WebWiew due to failed to get entry "

    invoke-static {v5, v6, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 955
    const/4 v5, 0x1

    .line 957
    if-eqz v3, :cond_2

    .line 959
    :try_start_3
    invoke-virtual {v3}, Ljava/util/zip/ZipFile;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    .line 962
    goto :goto_4

    .line 960
    :catch_2
    move-exception v6

    .line 955
    :cond_2
    :goto_4
    return v5

    .line 957
    .end local v4    # "e":Ljava/io/IOException;
    :goto_5
    if-eqz v3, :cond_3

    .line 959
    :try_start_4
    invoke-virtual {v3}, Ljava/util/zip/ZipFile;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    .line 962
    goto :goto_6

    .line 960
    :catch_3
    move-exception v5

    .line 962
    :cond_3
    :goto_6
    throw v4
.end method

.method private static isWebViewSupported()Z
    .locals 2

    .line 136
    sget-object v0, Landroid/webkit/WebViewFactory;->sWebViewSupported:Ljava/lang/Boolean;

    if-nez v0, :cond_0

    .line 137
    invoke-static {}, Landroid/app/AppGlobals;->getInitialApplication()Landroid/app/Application;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Application;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v1, "android.software.webview"

    .line 138
    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    .line 137
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Landroid/webkit/WebViewFactory;->sWebViewSupported:Ljava/lang/Boolean;

    .line 140
    :cond_0
    sget-object v0, Landroid/webkit/WebViewFactory;->sWebViewSupported:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method static synthetic lambda$setPreloadFlagImp$0(Z)V
    .locals 8
    .param p0, "enable"    # Z

    .line 650
    invoke-static {}, Landroid/app/AppGlobals;->getInitialApplication()Landroid/app/Application;

    move-result-object v0

    .line 651
    .local v0, "initialApplication":Landroid/app/Application;
    invoke-virtual {v0}, Landroid/app/Application;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    .line 652
    .local v1, "appContext":Landroid/content/Context;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v3, Landroid/app/ActivityThread;->appProcessName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 654
    .local v2, "preloadFlagFilePath":Ljava/lang/String;
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 655
    .local v3, "flagFile":Ljava/io/File;
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_0

    if-eqz p0, :cond_0

    .line 656
    return-void

    .line 659
    :cond_0
    invoke-static {v1}, Landroid/webkit/WebViewFactory;->isPreloadingWebViewBlackList(Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 660
    return-void

    .line 663
    :cond_1
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v4

    if-nez v4, :cond_2

    .line 665
    :try_start_0
    invoke-virtual {v3}, Ljava/io/File;->createNewFile()Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 669
    goto :goto_0

    .line 666
    :catch_0
    move-exception v4

    .line 667
    .local v4, "e":Ljava/io/IOException;
    const-string v5, "WebViewFactory"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Failed to creat list file:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 668
    return-void

    .line 671
    .end local v4    # "e":Ljava/io/IOException;
    :cond_2
    invoke-static {p0}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3}, Landroid/webkit/WebViewFactory;->readStringFromFile(Ljava/io/File;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 672
    return-void

    .line 675
    :cond_3
    :goto_0
    invoke-static {p0}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, v3}, Landroid/webkit/WebViewFactory;->writeStringToFile(Ljava/lang/String;Ljava/io/File;)V

    .line 676
    if-eqz p0, :cond_4

    .line 677
    const-string v4, "WebViewFactory"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "setPreloadFlag to file:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 679
    :cond_4
    return-void
.end method

.method public static loadWebViewNativeLibraryFromPackage(Ljava/lang/String;Ljava/lang/ClassLoader;)I
    .locals 7
    .param p0, "packageName"    # Ljava/lang/String;
    .param p1, "clazzLoader"    # Ljava/lang/ClassLoader;

    .line 238
    invoke-static {}, Landroid/webkit/WebViewFactory;->isWebViewSupported()Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    .line 239
    return v1

    .line 242
    :cond_0
    const/4 v0, 0x0

    .line 244
    .local v0, "response":Landroid/webkit/WebViewProviderResponse;
    :try_start_0
    invoke-static {}, Landroid/webkit/WebViewFactory;->getUpdateService()Landroid/webkit/IWebViewUpdateService;

    move-result-object v2

    invoke-interface {v2}, Landroid/webkit/IWebViewUpdateService;->waitForAndGetProvider()Landroid/webkit/WebViewProviderResponse;

    move-result-object v2
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1

    move-object v0, v2

    .line 248
    nop

    .line 251
    iget v2, v0, Landroid/webkit/WebViewProviderResponse;->status:I

    if-eqz v2, :cond_1

    iget v2, v0, Landroid/webkit/WebViewProviderResponse;->status:I

    const/4 v3, 0x3

    if-eq v2, v3, :cond_1

    .line 253
    iget v1, v0, Landroid/webkit/WebViewProviderResponse;->status:I

    return v1

    .line 255
    :cond_1
    iget-object v2, v0, Landroid/webkit/WebViewProviderResponse;->packageInfo:Landroid/content/pm/PackageInfo;

    iget-object v2, v2, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 256
    return v1

    .line 259
    :cond_2
    invoke-static {}, Landroid/app/AppGlobals;->getInitialApplication()Landroid/app/Application;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Application;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 262
    .local v2, "packageManager":Landroid/content/pm/PackageManager;
    const v3, 0x10000080

    :try_start_1
    invoke-virtual {v2, p0, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v3

    .line 264
    .local v3, "packageInfo":Landroid/content/pm/PackageInfo;
    iget-object v4, v3, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-static {v4}, Landroid/webkit/WebViewFactory;->getWebViewLibrary(Landroid/content/pm/ApplicationInfo;)Ljava/lang/String;

    move-result-object v4
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_0

    .end local v3    # "packageInfo":Landroid/content/pm/PackageInfo;
    move-object v1, v4

    .line 268
    .local v1, "libraryFileName":Ljava/lang/String;
    nop

    .line 267
    nop

    .line 270
    invoke-static {p1, v1}, Landroid/webkit/WebViewLibraryLoader;->loadNativeLibrary(Ljava/lang/ClassLoader;Ljava/lang/String;)I

    move-result v3

    .line 273
    .local v3, "loadNativeRet":I
    if-nez v3, :cond_3

    iget v4, v0, Landroid/webkit/WebViewProviderResponse;->status:I

    return v4

    .line 274
    :cond_3
    return v3

    .line 265
    .end local v1    # "libraryFileName":Ljava/lang/String;
    .end local v3    # "loadNativeRet":I
    :catch_0
    move-exception v3

    .line 266
    .local v3, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v4, "WebViewFactory"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Couldn\'t find package "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 267
    return v1

    .line 245
    .end local v2    # "packageManager":Landroid/content/pm/PackageManager;
    .end local v3    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :catch_1
    move-exception v1

    .line 246
    .local v1, "e":Landroid/os/RemoteException;
    const-string v2, "WebViewFactory"

    const-string v3, "error waiting for relro creation"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 247
    const/16 v2, 0x8

    return v2
.end method

.method public static onWebViewProviderChanged(Landroid/content/pm/PackageInfo;)I
    .locals 5
    .param p0, "packageInfo"    # Landroid/content/pm/PackageInfo;

    .line 900
    const/4 v0, 0x0

    .line 901
    .local v0, "startedRelroProcesses":I
    new-instance v1, Landroid/content/pm/ApplicationInfo;

    iget-object v2, p0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-direct {v1, v2}, Landroid/content/pm/ApplicationInfo;-><init>(Landroid/content/pm/ApplicationInfo;)V

    .line 903
    .local v1, "originalAppInfo":Landroid/content/pm/ApplicationInfo;
    :try_start_0
    iget-object v2, p0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 904
    invoke-static {}, Landroid/app/AppGlobals;->getInitialApplication()Landroid/app/Application;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Application;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    .line 903
    invoke-static {v2, v3}, Landroid/webkit/WebViewFactory;->fixupStubApplicationInfo(Landroid/content/pm/ApplicationInfo;Landroid/content/pm/PackageManager;)V

    .line 906
    invoke-static {p0}, Landroid/webkit/WebViewLibraryLoader;->prepareNativeLibraries(Landroid/content/pm/PackageInfo;)I

    move-result v2
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v2

    .line 910
    goto :goto_0

    .line 907
    :catch_0
    move-exception v2

    .line 909
    .local v2, "t":Ljava/lang/Throwable;
    const-string v3, "WebViewFactory"

    const-string v4, "error preparing webview native library"

    invoke-static {v3, v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 912
    .end local v2    # "t":Ljava/lang/Throwable;
    :goto_0
    invoke-static {p0, v1}, Landroid/webkit/WebViewZygote;->onWebViewProviderChanged(Landroid/content/pm/PackageInfo;Landroid/content/pm/ApplicationInfo;)V

    .line 914
    return v0
.end method

.method public static prepareWebViewInZygote()V
    .locals 3

    .line 889
    :try_start_0
    invoke-static {}, Landroid/webkit/WebViewLibraryLoader;->reserveAddressSpaceInZygote()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 893
    goto :goto_0

    .line 890
    :catch_0
    move-exception v0

    .line 892
    .local v0, "t":Ljava/lang/Throwable;
    const-string v1, "WebViewFactory"

    const-string v2, "error preparing native loader"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 894
    .end local v0    # "t":Ljava/lang/Throwable;
    :goto_0
    return-void
.end method

.method public static readStringFromFile(Ljava/io/File;)Ljava/lang/String;
    .locals 4
    .param p0, "readFile"    # Ljava/io/File;

    .line 616
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 617
    return-object v1

    .line 619
    :cond_0
    const/4 v0, 0x0

    .line 620
    .local v0, "readString":Ljava/lang/String;
    nop

    .line 622
    .local v1, "br":Ljava/io/BufferedReader;
    :try_start_0
    new-instance v2, Ljava/io/BufferedReader;

    new-instance v3, Ljava/io/FileReader;

    invoke-direct {v3, p0}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V

    invoke-direct {v2, v3}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    move-object v1, v2

    .line 623
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v2

    move-object v0, v2

    if-eqz v2, :cond_1

    .line 624
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v0, v2

    .line 630
    :cond_1
    :try_start_1
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 631
    :catch_0
    move-exception v2

    .line 632
    goto :goto_1

    .line 631
    :cond_2
    :goto_0
    goto :goto_1

    .line 629
    :catchall_0
    move-exception v2

    goto :goto_2

    .line 626
    :catch_1
    move-exception v2

    .line 627
    .local v2, "e":Ljava/lang/Exception;
    :try_start_2
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 630
    .end local v2    # "e":Ljava/lang/Exception;
    if-eqz v1, :cond_2

    :try_start_3
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_0

    .line 633
    :goto_1
    return-object v0

    .line 629
    :goto_2
    nop

    .line 630
    if-eqz v1, :cond_3

    :try_start_4
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_3

    .line 631
    :catch_2
    move-exception v3

    nop

    :cond_3
    :goto_3
    throw v2
.end method

.method static setDataDirectorySuffix(Ljava/lang/String;)V
    .locals 7
    .param p0, "suffix"    # Ljava/lang/String;

    .line 160
    sget-object v0, Landroid/webkit/WebViewFactory;->sProviderLock:Ljava/lang/Object;

    monitor-enter v0

    .line 168
    :try_start_0
    sget-object v1, Landroid/webkit/WebViewFactory;->sProviderInstance:Landroid/webkit/WebViewFactoryProvider;

    if-eqz v1, :cond_1

    sget-boolean v1, Landroid/webkit/WebViewFactory;->sPreLoadingProviderInitial:Z

    if-eqz v1, :cond_1

    sget-boolean v1, Landroid/webkit/WebViewFactory;->sApplicationProviderInitial:Z

    if-nez v1, :cond_0

    goto :goto_0

    .line 169
    :cond_0
    const/4 v1, 0x0

    invoke-static {v1}, Landroid/webkit/WebViewFactory;->setPreloadFlag(Z)V

    .line 170
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Can\'t set data directory suffix: WebView already initialized"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 174
    :cond_1
    :goto_0
    sget-char v1, Ljava/io/File;->separatorChar:C

    invoke-virtual {p0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    if-gez v1, :cond_5

    .line 178
    sput-object p0, Landroid/webkit/WebViewFactory;->sDataDirectorySuffix:Ljava/lang/String;

    .line 180
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_4

    sget-object v1, Landroid/app/ActivityThread;->sDataDirectorySuffix:Ljava/lang/String;

    .line 181
    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_4

    .line 183
    :try_start_1
    const-string v1, "WebViewFactory"

    const-string/jumbo v2, "the webview directory suffix had changed."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 184
    invoke-static {}, Landroid/app/AppGlobals;->getInitialApplication()Landroid/app/Application;

    move-result-object v1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 185
    .local v1, "initialApplication":Landroid/app/Application;
    if-nez v1, :cond_2

    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    return-void

    .line 186
    :cond_2
    :try_start_3
    invoke-virtual {v1}, Landroid/app/Application;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    .line 187
    .local v2, "appContext":Landroid/content/Context;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v4

    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v4, Landroid/app/ActivityThread;->appProcessName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 189
    .local v3, "preloadFlagFilePath":Ljava/lang/String;
    new-instance v4, Ljava/io/File;

    invoke-direct {v4, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 190
    .local v4, "flagFile":Ljava/io/File;
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-virtual {v4}, Ljava/io/File;->delete()Z

    move-result v5

    if-nez v5, :cond_3

    .line 191
    const-string v5, "WebViewFactory"

    const-string v6, "failed to delete the flag file of webview."

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 193
    .end local v1    # "initialApplication":Landroid/app/Application;
    .end local v2    # "appContext":Landroid/content/Context;
    .end local v3    # "preloadFlagFilePath":Ljava/lang/String;
    .end local v4    # "flagFile":Ljava/io/File;
    :cond_3
    goto :goto_1

    :catch_0
    move-exception v1

    .line 196
    :cond_4
    :goto_1
    :try_start_4
    monitor-exit v0

    .line 197
    return-void

    .line 175
    :cond_5
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Suffix "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " contains a path separator"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 196
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v1
.end method

.method public static setPreLoadingProviderInitialState(Z)V
    .locals 0
    .param p0, "state"    # Z

    .line 353
    sput-boolean p0, Landroid/webkit/WebViewFactory;->sPreLoadingProviderInitial:Z

    .line 354
    return-void
.end method

.method public static setPreloadFlag(Z)V
    .locals 2
    .param p0, "enable"    # Z

    .line 640
    sget-object v0, Landroid/app/ActivityThread;->appProcessName:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-gtz v0, :cond_0

    .line 641
    const-string v0, "WebViewFactory"

    const-string/jumbo v1, "setPreloadFlag ActivityThread.appProcessName is empty"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 642
    return-void

    .line 645
    :cond_0
    invoke-static {p0}, Landroid/webkit/WebViewFactory;->setPreloadFlagImp(Z)V

    .line 646
    return-void
.end method

.method private static setPreloadFlagImp(Z)V
    .locals 1
    .param p0, "enable"    # Z

    .line 649
    new-instance v0, Landroid/webkit/-$$Lambda$WebViewFactory$n8-s_BnZn-XP4bD6JNFm4bkJDtQ;

    invoke-direct {v0, p0}, Landroid/webkit/-$$Lambda$WebViewFactory$n8-s_BnZn-XP4bD6JNFm4bkJDtQ;-><init>(Z)V

    invoke-static {v0}, Landroid/os/AsyncTask;->execute(Ljava/lang/Runnable;)V

    .line 680
    return-void
.end method

.method private static signaturesEquals([Landroid/content/pm/Signature;[Landroid/content/pm/Signature;)Z
    .locals 5
    .param p0, "s1"    # [Landroid/content/pm/Signature;
    .param p1, "s2"    # [Landroid/content/pm/Signature;

    .line 687
    const/4 v0, 0x0

    if-nez p0, :cond_1

    .line 688
    if-nez p1, :cond_0

    const/4 v0, 0x1

    nop

    :cond_0
    return v0

    .line 690
    :cond_1
    if-nez p1, :cond_2

    return v0

    .line 692
    :cond_2
    new-instance v1, Landroid/util/ArraySet;

    invoke-direct {v1}, Landroid/util/ArraySet;-><init>()V

    .line 693
    .local v1, "set1":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Landroid/content/pm/Signature;>;"
    array-length v2, p0

    move v3, v0

    :goto_0
    if-ge v3, v2, :cond_3

    aget-object v4, p0, v3

    .line 694
    .local v4, "signature":Landroid/content/pm/Signature;
    invoke-virtual {v1, v4}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 693
    .end local v4    # "signature":Landroid/content/pm/Signature;
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 696
    :cond_3
    new-instance v2, Landroid/util/ArraySet;

    invoke-direct {v2}, Landroid/util/ArraySet;-><init>()V

    .line 697
    .local v2, "set2":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Landroid/content/pm/Signature;>;"
    array-length v3, p1

    :goto_1
    if-ge v0, v3, :cond_4

    aget-object v4, p1, v0

    .line 698
    .restart local v4    # "signature":Landroid/content/pm/Signature;
    invoke-virtual {v2, v4}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 697
    .end local v4    # "signature":Landroid/content/pm/Signature;
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 700
    :cond_4
    invoke-virtual {v1, v2}, Landroid/util/ArraySet;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method private static verifyPackageInfo(Landroid/content/pm/PackageInfo;Landroid/content/pm/PackageInfo;)V
    .locals 4
    .param p0, "chosen"    # Landroid/content/pm/PackageInfo;
    .param p1, "toUse"    # Landroid/content/pm/PackageInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/webkit/WebViewFactory$MissingWebViewPackageException;
        }
    .end annotation

    .line 706
    iget-object v0, p0, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    iget-object v1, p1, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 711
    invoke-virtual {p0}, Landroid/content/pm/PackageInfo;->getLongVersionCode()J

    move-result-wide v0

    invoke-virtual {p1}, Landroid/content/pm/PackageInfo;->getLongVersionCode()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-gtz v0, :cond_2

    .line 716
    iget-object v0, p1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-static {v0}, Landroid/webkit/WebViewFactory;->getWebViewLibrary(Landroid/content/pm/ApplicationInfo;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 720
    iget-object v0, p0, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    iget-object v1, p1, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    invoke-static {v0, v1}, Landroid/webkit/WebViewFactory;->signaturesEquals([Landroid/content/pm/Signature;[Landroid/content/pm/Signature;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 724
    return-void

    .line 721
    :cond_0
    new-instance v0, Landroid/webkit/WebViewFactory$MissingWebViewPackageException;

    const-string v1, "Failed to verify WebView provider, signature mismatch"

    invoke-direct {v0, v1}, Landroid/webkit/WebViewFactory$MissingWebViewPackageException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 717
    :cond_1
    new-instance v0, Landroid/webkit/WebViewFactory$MissingWebViewPackageException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Tried to load an invalid WebView provider: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p1, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/webkit/WebViewFactory$MissingWebViewPackageException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 712
    :cond_2
    new-instance v0, Landroid/webkit/WebViewFactory$MissingWebViewPackageException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to verify WebView provider, version code is lower than expected: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 713
    invoke-virtual {p0}, Landroid/content/pm/PackageInfo;->getLongVersionCode()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, " actual: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 714
    invoke-virtual {p1}, Landroid/content/pm/PackageInfo;->getLongVersionCode()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/webkit/WebViewFactory$MissingWebViewPackageException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 707
    :cond_3
    new-instance v0, Landroid/webkit/WebViewFactory$MissingWebViewPackageException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to verify WebView provider, packageName mismatch, expected: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " actual: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p1, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/webkit/WebViewFactory$MissingWebViewPackageException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static writeStringToFile(Ljava/lang/String;Ljava/io/File;)V
    .locals 4
    .param p0, "writeString"    # Ljava/lang/String;
    .param p1, "writeFile"    # Ljava/io/File;

    .line 589
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_4

    if-nez p0, :cond_0

    goto :goto_4

    .line 592
    :cond_0
    const/4 v0, 0x0

    .line 594
    .local v0, "writer":Ljava/io/PrintWriter;
    :try_start_0
    new-instance v1, Ljava/io/PrintWriter;

    const-string v2, "UTF-8"

    invoke-direct {v1, p1, v2}, Ljava/io/PrintWriter;-><init>(Ljava/io/File;Ljava/lang/String;)V

    move-object v0, v1

    .line 595
    invoke-virtual {v0, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 596
    sget-object v1, Landroid/webkit/WebViewFactory;->sDataDirectorySuffix:Ljava/lang/String;

    if-eqz v1, :cond_1

    .line 597
    invoke-static {}, Landroid/webkit/WebViewFactory;->getDataDirectorySuffix()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 599
    :cond_1
    invoke-virtual {p1}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x1b4

    const/4 v3, -0x1

    invoke-static {v1, v2, v3, v3}, Landroid/os/FileUtils;->setPermissions(Ljava/lang/String;III)I

    .line 602
    invoke-virtual {p1}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/os/SELinux;->restorecon(Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 607
    :try_start_1
    invoke-virtual {v0}, Ljava/io/PrintWriter;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 608
    :catch_0
    move-exception v1

    .line 609
    goto :goto_1

    .line 608
    :cond_2
    :goto_0
    goto :goto_1

    .line 606
    :catchall_0
    move-exception v1

    goto :goto_2

    .line 603
    :catch_1
    move-exception v1

    .line 604
    .local v1, "e":Ljava/lang/Exception;
    :try_start_2
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 607
    .end local v1    # "e":Ljava/lang/Exception;
    if-eqz v0, :cond_2

    :try_start_3
    invoke-virtual {v0}, Ljava/io/PrintWriter;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_0

    .line 610
    :goto_1
    return-void

    .line 606
    :goto_2
    nop

    .line 607
    if-eqz v0, :cond_3

    :try_start_4
    invoke-virtual {v0}, Ljava/io/PrintWriter;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_3

    .line 608
    :catch_2
    move-exception v2

    nop

    :cond_3
    :goto_3
    throw v1

    .line 590
    .end local v0    # "writer":Ljava/io/PrintWriter;
    :cond_4
    :goto_4
    return-void
.end method
