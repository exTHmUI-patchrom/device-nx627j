.class public abstract Landroid/app/InstantAppResolverService;
.super Landroid/app/Service;
.source "InstantAppResolverService.java"


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/InstantAppResolverService$ServiceHandler;,
        Landroid/app/InstantAppResolverService$InstantAppResolutionCallback;
    }
.end annotation


# static fields
.field private static final DEBUG_INSTANT:Z

.field public static final EXTRA_RESOLVE_INFO:Ljava/lang/String; = "android.app.extra.RESOLVE_INFO"

.field public static final EXTRA_SEQUENCE:Ljava/lang/String; = "android.app.extra.SEQUENCE"

.field private static final TAG:Ljava/lang/String; = "PackageManager"


# instance fields
.field mHandler:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 46
    sget-boolean v0, Landroid/os/Build;->IS_DEBUGGABLE:Z

    sput-boolean v0, Landroid/app/InstantAppResolverService;->DEBUG_INSTANT:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 45
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    return-void
.end method

.method static synthetic access$000()Z
    .locals 1

    .line 45
    sget-boolean v0, Landroid/app/InstantAppResolverService;->DEBUG_INSTANT:Z

    return v0
.end method


# virtual methods
.method public final attachBaseContext(Landroid/content/Context;)V
    .locals 2
    .param p1, "base"    # Landroid/content/Context;

    .line 150
    invoke-super {p0, p1}, Landroid/app/Service;->attachBaseContext(Landroid/content/Context;)V

    .line 151
    new-instance v0, Landroid/app/InstantAppResolverService$ServiceHandler;

    invoke-virtual {p0}, Landroid/app/InstantAppResolverService;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Landroid/app/InstantAppResolverService$ServiceHandler;-><init>(Landroid/app/InstantAppResolverService;Landroid/os/Looper;)V

    iput-object v0, p0, Landroid/app/InstantAppResolverService;->mHandler:Landroid/os/Handler;

    .line 152
    return-void
.end method

.method getLooper()Landroid/os/Looper;
    .locals 1

    .line 145
    invoke-virtual {p0}, Landroid/app/InstantAppResolverService;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    return-object v0
.end method

.method public final onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;

    .line 156
    new-instance v0, Landroid/app/InstantAppResolverService$1;

    invoke-direct {v0, p0}, Landroid/app/InstantAppResolverService$1;-><init>(Landroid/app/InstantAppResolverService;)V

    return-object v0
.end method

.method public onGetInstantAppIntentFilter(Landroid/content/Intent;[ILjava/lang/String;Landroid/app/InstantAppResolverService$InstantAppResolutionCallback;)V
    .locals 2
    .param p1, "sanitizedIntent"    # Landroid/content/Intent;
    .param p2, "hostDigestPrefix"    # [I
    .param p3, "token"    # Ljava/lang/String;
    .param p4, "callback"    # Landroid/app/InstantAppResolverService$InstantAppResolutionCallback;

    .line 132
    const-string v0, "PackageManager"

    const-string v1, "New onGetInstantAppIntentFilter is not overridden"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 134
    invoke-virtual {p1}, Landroid/content/Intent;->isWebIntent()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 135
    invoke-virtual {p0, p2, p3, p4}, Landroid/app/InstantAppResolverService;->onGetInstantAppIntentFilter([ILjava/lang/String;Landroid/app/InstantAppResolverService$InstantAppResolutionCallback;)V

    goto :goto_0

    .line 137
    :cond_0
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p4, v0}, Landroid/app/InstantAppResolverService$InstantAppResolutionCallback;->onInstantAppResolveInfo(Ljava/util/List;)V

    .line 139
    :goto_0
    return-void
.end method

.method public onGetInstantAppIntentFilter([ILjava/lang/String;Landroid/app/InstantAppResolverService$InstantAppResolutionCallback;)V
    .locals 2
    .param p1, "digestPrefix"    # [I
    .param p2, "token"    # Ljava/lang/String;
    .param p3, "callback"    # Landroid/app/InstantAppResolverService$InstantAppResolutionCallback;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 79
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Must define onGetInstantAppIntentFilter"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public onGetInstantAppResolveInfo(Landroid/content/Intent;[ILjava/lang/String;Landroid/app/InstantAppResolverService$InstantAppResolutionCallback;)V
    .locals 1
    .param p1, "sanitizedIntent"    # Landroid/content/Intent;
    .param p2, "hostDigestPrefix"    # [I
    .param p3, "token"    # Ljava/lang/String;
    .param p4, "callback"    # Landroid/app/InstantAppResolverService$InstantAppResolutionCallback;

    .line 107
    invoke-virtual {p1}, Landroid/content/Intent;->isWebIntent()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 108
    invoke-virtual {p0, p2, p3, p4}, Landroid/app/InstantAppResolverService;->onGetInstantAppResolveInfo([ILjava/lang/String;Landroid/app/InstantAppResolverService$InstantAppResolutionCallback;)V

    goto :goto_0

    .line 110
    :cond_0
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p4, v0}, Landroid/app/InstantAppResolverService$InstantAppResolutionCallback;->onInstantAppResolveInfo(Ljava/util/List;)V

    .line 112
    :goto_0
    return-void
.end method

.method public onGetInstantAppResolveInfo([ILjava/lang/String;Landroid/app/InstantAppResolverService$InstantAppResolutionCallback;)V
    .locals 2
    .param p1, "digestPrefix"    # [I
    .param p2, "token"    # Ljava/lang/String;
    .param p3, "callback"    # Landroid/app/InstantAppResolverService$InstantAppResolutionCallback;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 65
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Must define onGetInstantAppResolveInfo"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
