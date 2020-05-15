.class public Lnubia/os/SystemAccessManager;
.super Ljava/lang/Object;
.source "SystemAccessManager.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "SystemAccessManager"


# instance fields
.field private final mService:Lnubia/os/ISystemAccess;


# direct methods
.method public constructor <init>(Lnubia/os/ISystemAccess;)V
    .locals 0
    .param p1, "service"    # Lnubia/os/ISystemAccess;

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    iput-object p1, p0, Lnubia/os/SystemAccessManager;->mService:Lnubia/os/ISystemAccess;

    .line 12
    return-void
.end method


# virtual methods
.method public enablePalmGesture(Z)Z
    .locals 3
    .param p1, "enable"    # Z

    .line 27
    :try_start_0
    iget-object v0, p0, Lnubia/os/SystemAccessManager;->mService:Lnubia/os/ISystemAccess;

    if-eqz v0, :cond_0

    .line 28
    iget-object v0, p0, Lnubia/os/SystemAccessManager;->mService:Lnubia/os/ISystemAccess;

    invoke-interface {v0, p1}, Lnubia/os/ISystemAccess;->enablePalmGesture(Z)Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 32
    :cond_0
    goto :goto_0

    .line 30
    :catch_0
    move-exception v0

    .line 31
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "SystemAccessManager"

    const-string v2, "RemoteException: enableWakeGestureFlag"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 33
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_0
    const/4 v0, 0x0

    return v0
.end method

.method public enableWakeGesture(Z)Z
    .locals 3
    .param p1, "enable"    # Z

    .line 16
    :try_start_0
    iget-object v0, p0, Lnubia/os/SystemAccessManager;->mService:Lnubia/os/ISystemAccess;

    if-eqz v0, :cond_0

    .line 17
    iget-object v0, p0, Lnubia/os/SystemAccessManager;->mService:Lnubia/os/ISystemAccess;

    invoke-interface {v0, p1}, Lnubia/os/ISystemAccess;->enableWakeGesture(Z)Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 21
    :cond_0
    goto :goto_0

    .line 19
    :catch_0
    move-exception v0

    .line 20
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "SystemAccessManager"

    const-string v2, "RemoteException: enableWakeGestureFlag"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 22
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_0
    const/4 v0, 0x0

    return v0
.end method
