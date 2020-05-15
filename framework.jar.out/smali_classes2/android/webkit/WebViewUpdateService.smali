.class public final Landroid/webkit/WebViewUpdateService;
.super Ljava/lang/Object;
.source "WebViewUpdateService.java"


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getAllWebViewPackages()[Landroid/webkit/WebViewProviderInfo;
    .locals 3

    .line 34
    invoke-static {}, Landroid/webkit/WebViewUpdateService;->getUpdateService()Landroid/webkit/IWebViewUpdateService;

    move-result-object v0

    .line 35
    .local v0, "service":Landroid/webkit/IWebViewUpdateService;
    if-nez v0, :cond_0

    .line 36
    const/4 v1, 0x0

    new-array v1, v1, [Landroid/webkit/WebViewProviderInfo;

    return-object v1

    .line 39
    :cond_0
    :try_start_0
    invoke-interface {v0}, Landroid/webkit/IWebViewUpdateService;->getAllWebViewPackages()[Landroid/webkit/WebViewProviderInfo;

    move-result-object v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    .line 40
    :catch_0
    move-exception v1

    .line 41
    .local v1, "e":Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2
.end method

.method public static getCurrentWebViewPackageName()Ljava/lang/String;
    .locals 3

    .line 64
    invoke-static {}, Landroid/webkit/WebViewUpdateService;->getUpdateService()Landroid/webkit/IWebViewUpdateService;

    move-result-object v0

    .line 65
    .local v0, "service":Landroid/webkit/IWebViewUpdateService;
    if-nez v0, :cond_0

    .line 66
    const/4 v1, 0x0

    return-object v1

    .line 69
    :cond_0
    :try_start_0
    invoke-interface {v0}, Landroid/webkit/IWebViewUpdateService;->getCurrentWebViewPackageName()Ljava/lang/String;

    move-result-object v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    .line 70
    :catch_0
    move-exception v1

    .line 71
    .local v1, "e":Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2
.end method

.method private static getUpdateService()Landroid/webkit/IWebViewUpdateService;
    .locals 1

    .line 76
    invoke-static {}, Landroid/webkit/WebViewFactory;->getUpdateService()Landroid/webkit/IWebViewUpdateService;

    move-result-object v0

    return-object v0
.end method

.method public static getValidWebViewPackages()[Landroid/webkit/WebViewProviderInfo;
    .locals 3

    .line 49
    invoke-static {}, Landroid/webkit/WebViewUpdateService;->getUpdateService()Landroid/webkit/IWebViewUpdateService;

    move-result-object v0

    .line 50
    .local v0, "service":Landroid/webkit/IWebViewUpdateService;
    if-nez v0, :cond_0

    .line 51
    const/4 v1, 0x0

    new-array v1, v1, [Landroid/webkit/WebViewProviderInfo;

    return-object v1

    .line 54
    :cond_0
    :try_start_0
    invoke-interface {v0}, Landroid/webkit/IWebViewUpdateService;->getValidWebViewPackages()[Landroid/webkit/WebViewProviderInfo;

    move-result-object v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    .line 55
    :catch_0
    move-exception v1

    .line 56
    .local v1, "e":Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2
.end method
