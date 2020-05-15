.class public abstract Landroid/permissionpresenterservice/RuntimePermissionPresenterService;
.super Landroid/app/Service;
.source "RuntimePermissionPresenterService.java"


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/permissionpresenterservice/RuntimePermissionPresenterService$MyHandler;
    }
.end annotation


# static fields
.field public static final SERVICE_INTERFACE:Ljava/lang/String; = "android.permissionpresenterservice.RuntimePermissionPresenterService"


# instance fields
.field private mHandler:Landroid/os/Handler;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 49
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    return-void
.end method

.method static synthetic access$000(Landroid/permissionpresenterservice/RuntimePermissionPresenterService;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Landroid/permissionpresenterservice/RuntimePermissionPresenterService;

    .line 49
    iget-object v0, p0, Landroid/permissionpresenterservice/RuntimePermissionPresenterService;->mHandler:Landroid/os/Handler;

    return-object v0
.end method


# virtual methods
.method public final attachBaseContext(Landroid/content/Context;)V
    .locals 2
    .param p1, "base"    # Landroid/content/Context;

    .line 64
    invoke-super {p0, p1}, Landroid/app/Service;->attachBaseContext(Landroid/content/Context;)V

    .line 65
    new-instance v0, Landroid/permissionpresenterservice/RuntimePermissionPresenterService$MyHandler;

    invoke-virtual {p1}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Landroid/permissionpresenterservice/RuntimePermissionPresenterService$MyHandler;-><init>(Landroid/permissionpresenterservice/RuntimePermissionPresenterService;Landroid/os/Looper;)V

    iput-object v0, p0, Landroid/permissionpresenterservice/RuntimePermissionPresenterService;->mHandler:Landroid/os/Handler;

    .line 66
    return-void
.end method

.method public final onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;

    .line 87
    new-instance v0, Landroid/permissionpresenterservice/RuntimePermissionPresenterService$1;

    invoke-direct {v0, p0}, Landroid/permissionpresenterservice/RuntimePermissionPresenterService$1;-><init>(Landroid/permissionpresenterservice/RuntimePermissionPresenterService;)V

    return-object v0
.end method

.method public abstract onGetAppPermissions(Ljava/lang/String;)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Landroid/content/pm/permission/RuntimePermissionPresentationInfo;",
            ">;"
        }
    .end annotation
.end method

.method public abstract onRevokeRuntimePermission(Ljava/lang/String;Ljava/lang/String;)V
.end method
