.class public Lcn/nubia/server/wm/NubiaSurfaceStateNotifier;
.super Ljava/lang/Object;
.source "NubiaSurfaceStateNotifier.java"


# static fields
.field private static final ALIPAY_PACKAGE_NAME:Ljava/lang/String; = "com.eg.android.AlipayGphone"

.field private static final APPLOCK_PACKAGE_NAME:Ljava/lang/String; = "cn.nubia.applockmanager"

.field private static final WEIXIN_PACKAGE_NAME:Ljava/lang/String; = "com.tencent.mm"


# instance fields
.field private mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    iput-object p1, p0, Lcn/nubia/server/wm/NubiaSurfaceStateNotifier;->mContext:Landroid/content/Context;

    .line 24
    return-void
.end method

.method private notifyForFingerprintExt(Ljava/lang/String;)V
    .locals 4
    .param p1, "msg"    # Ljava/lang/String;

    .line 58
    if-nez p1, :cond_0

    .line 59
    return-void

    .line 62
    :cond_0
    :try_start_0
    const-string v0, "com.tencent.mm"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "com.eg.android.AlipayGphone"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "cn.nubia.applockmanager"

    .line 63
    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 64
    :cond_1
    iget-object v0, p0, Lcn/nubia/server/wm/NubiaSurfaceStateNotifier;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "content://com.fingerprints.serviceext.FingerProvider"

    .line 66
    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const-string/jumbo v2, "onSurfaceFirstShown"

    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    .line 65
    invoke-virtual {v0, v1, v2, p1, v3}, Landroid/content/ContentResolver;->call(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 71
    :cond_2
    goto :goto_0

    .line 69
    :catch_0
    move-exception v0

    .line 70
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 72
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    return-void
.end method


# virtual methods
.method public notifyAppTransitionFinish(Ljava/lang/String;)V
    .locals 1
    .param p1, "msg"    # Ljava/lang/String;

    .line 42
    invoke-static {}, Lcn/nubia/server/policy/edge/effects/widowobserver/WindowAnimationObserverManager;->getInstance()Lcn/nubia/server/policy/edge/effects/widowobserver/WindowAnimationObserverManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcn/nubia/server/policy/edge/effects/widowobserver/WindowAnimationObserverManager;->notifyAppTransitionFinish(Ljava/lang/String;)V

    .line 44
    return-void
.end method

.method public notifyAppTransitionStart(Ljava/lang/String;)V
    .locals 1
    .param p1, "msg"    # Ljava/lang/String;

    .line 32
    invoke-static {}, Lcn/nubia/server/policy/edge/effects/widowobserver/WindowAnimationObserverManager;->getInstance()Lcn/nubia/server/policy/edge/effects/widowobserver/WindowAnimationObserverManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcn/nubia/server/policy/edge/effects/widowobserver/WindowAnimationObserverManager;->notifyAppTransitionStart(Ljava/lang/String;)V

    .line 34
    return-void
.end method

.method public notifySurfaceFirstShown(Ljava/lang/String;)V
    .locals 1
    .param p1, "msg"    # Ljava/lang/String;

    .line 52
    invoke-direct {p0, p1}, Lcn/nubia/server/wm/NubiaSurfaceStateNotifier;->notifyForFingerprintExt(Ljava/lang/String;)V

    .line 53
    invoke-static {}, Lcn/nubia/server/policy/edge/effects/widowobserver/WindowAnimationObserverManager;->getInstance()Lcn/nubia/server/policy/edge/effects/widowobserver/WindowAnimationObserverManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcn/nubia/server/policy/edge/effects/widowobserver/WindowAnimationObserverManager;->notifySurfaceFirstShown(Ljava/lang/String;)V

    .line 55
    return-void
.end method
