.class Landroid/permissionpresenterservice/RuntimePermissionPresenterService$1;
.super Landroid/content/pm/permission/IRuntimePermissionPresenter$Stub;
.source "RuntimePermissionPresenterService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/permissionpresenterservice/RuntimePermissionPresenterService;->onBind(Landroid/content/Intent;)Landroid/os/IBinder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/permissionpresenterservice/RuntimePermissionPresenterService;


# direct methods
.method constructor <init>(Landroid/permissionpresenterservice/RuntimePermissionPresenterService;)V
    .locals 0
    .param p1, "this$0"    # Landroid/permissionpresenterservice/RuntimePermissionPresenterService;

    .line 87
    iput-object p1, p0, Landroid/permissionpresenterservice/RuntimePermissionPresenterService$1;->this$0:Landroid/permissionpresenterservice/RuntimePermissionPresenterService;

    invoke-direct {p0}, Landroid/content/pm/permission/IRuntimePermissionPresenter$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public getAppPermissions(Ljava/lang/String;Landroid/os/RemoteCallback;)V
    .locals 3
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "callback"    # Landroid/os/RemoteCallback;

    .line 90
    invoke-static {}, Lcom/android/internal/os/SomeArgs;->obtain()Lcom/android/internal/os/SomeArgs;

    move-result-object v0

    .line 91
    .local v0, "args":Lcom/android/internal/os/SomeArgs;
    iput-object p1, v0, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    .line 92
    iput-object p2, v0, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    .line 93
    iget-object v1, p0, Landroid/permissionpresenterservice/RuntimePermissionPresenterService$1;->this$0:Landroid/permissionpresenterservice/RuntimePermissionPresenterService;

    invoke-static {v1}, Landroid/permissionpresenterservice/RuntimePermissionPresenterService;->access$000(Landroid/permissionpresenterservice/RuntimePermissionPresenterService;)Landroid/os/Handler;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 94
    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 95
    return-void
.end method

.method public revokeRuntimePermission(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "permissionName"    # Ljava/lang/String;

    .line 99
    invoke-static {}, Lcom/android/internal/os/SomeArgs;->obtain()Lcom/android/internal/os/SomeArgs;

    move-result-object v0

    .line 100
    .local v0, "args":Lcom/android/internal/os/SomeArgs;
    iput-object p1, v0, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    .line 101
    iput-object p2, v0, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    .line 102
    iget-object v1, p0, Landroid/permissionpresenterservice/RuntimePermissionPresenterService$1;->this$0:Landroid/permissionpresenterservice/RuntimePermissionPresenterService;

    invoke-static {v1}, Landroid/permissionpresenterservice/RuntimePermissionPresenterService;->access$000(Landroid/permissionpresenterservice/RuntimePermissionPresenterService;)Landroid/os/Handler;

    move-result-object v1

    const/4 v2, 0x3

    invoke-virtual {v1, v2, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 103
    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 104
    return-void
.end method
