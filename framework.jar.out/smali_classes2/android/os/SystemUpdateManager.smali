.class public Landroid/os/SystemUpdateManager;
.super Ljava/lang/Object;
.source "SystemUpdateManager.java"


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation


# static fields
.field public static final KEY_IS_SECURITY_UPDATE:Ljava/lang/String; = "is_security_update"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final KEY_STATUS:Ljava/lang/String; = "status"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final KEY_TARGET_BUILD_FINGERPRINT:Ljava/lang/String; = "target_build_fingerprint"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final KEY_TARGET_SECURITY_PATCH_LEVEL:Ljava/lang/String; = "target_security_patch_level"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final KEY_TITLE:Ljava/lang/String; = "title"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final STATUS_IDLE:I = 0x1
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final STATUS_IN_PROGRESS:I = 0x3
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final STATUS_UNKNOWN:I = 0x0
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final STATUS_WAITING_DOWNLOAD:I = 0x2
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final STATUS_WAITING_INSTALL:I = 0x4
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final STATUS_WAITING_REBOOT:I = 0x5
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field private static final TAG:Ljava/lang/String; = "SystemUpdateManager"


# instance fields
.field private final mService:Landroid/os/ISystemUpdateManager;


# direct methods
.method public constructor <init>(Landroid/os/ISystemUpdateManager;)V
    .locals 1
    .param p1, "service"    # Landroid/os/ISystemUpdateManager;

    .line 98
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 99
    const-string/jumbo v0, "missing ISystemUpdateManager"

    invoke-static {p1, v0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/ISystemUpdateManager;

    iput-object v0, p0, Landroid/os/SystemUpdateManager;->mService:Landroid/os/ISystemUpdateManager;

    .line 100
    return-void
.end method


# virtual methods
.method public retrieveSystemUpdateInfo()Landroid/os/Bundle;
    .locals 2
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 120
    :try_start_0
    iget-object v0, p0, Landroid/os/SystemUpdateManager;->mService:Landroid/os/ISystemUpdateManager;

    invoke-interface {v0}, Landroid/os/ISystemUpdateManager;->retrieveSystemUpdateInfo()Landroid/os/Bundle;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 121
    :catch_0
    move-exception v0

    .line 122
    .local v0, "re":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public updateSystemUpdateInfo(Landroid/os/PersistableBundle;)V
    .locals 2
    .param p1, "infoBundle"    # Landroid/os/PersistableBundle;
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 143
    if-eqz p1, :cond_0

    const-string/jumbo v0, "status"

    invoke-virtual {p1, v0}, Landroid/os/PersistableBundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 147
    :try_start_0
    iget-object v0, p0, Landroid/os/SystemUpdateManager;->mService:Landroid/os/ISystemUpdateManager;

    invoke-interface {v0, p1}, Landroid/os/ISystemUpdateManager;->updateSystemUpdateInfo(Landroid/os/PersistableBundle;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 150
    nop

    .line 151
    return-void

    .line 148
    :catch_0
    move-exception v0

    .line 149
    .local v0, "re":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    .line 144
    .end local v0    # "re":Landroid/os/RemoteException;
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Missing status in the bundle"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
