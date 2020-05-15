.class final Landroid/permissionpresenterservice/RuntimePermissionPresenterService$MyHandler;
.super Landroid/os/Handler;
.source "RuntimePermissionPresenterService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/permissionpresenterservice/RuntimePermissionPresenterService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "MyHandler"
.end annotation


# static fields
.field public static final MSG_GET_APPS_USING_PERMISSIONS:I = 0x2

.field public static final MSG_GET_APP_PERMISSIONS:I = 0x1

.field public static final MSG_REVOKE_APP_PERMISSION:I = 0x3


# instance fields
.field final synthetic this$0:Landroid/permissionpresenterservice/RuntimePermissionPresenterService;


# direct methods
.method public constructor <init>(Landroid/permissionpresenterservice/RuntimePermissionPresenterService;Landroid/os/Looper;)V
    .locals 1
    .param p2, "looper"    # Landroid/os/Looper;

    .line 113
    iput-object p1, p0, Landroid/permissionpresenterservice/RuntimePermissionPresenterService$MyHandler;->this$0:Landroid/permissionpresenterservice/RuntimePermissionPresenterService;

    .line 114
    const/4 p1, 0x0

    const/4 v0, 0x0

    invoke-direct {p0, p2, p1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;Z)V

    .line 115
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 6
    .param p1, "msg"    # Landroid/os/Message;

    .line 119
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    goto :goto_1

    .line 137
    :cond_0
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/internal/os/SomeArgs;

    .line 138
    .local v0, "args":Lcom/android/internal/os/SomeArgs;
    iget-object v1, v0, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    .line 139
    .local v1, "packageName":Ljava/lang/String;
    iget-object v2, v0, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    .line 140
    .local v2, "permissionName":Ljava/lang/String;
    invoke-virtual {v0}, Lcom/android/internal/os/SomeArgs;->recycle()V

    .line 142
    iget-object v3, p0, Landroid/permissionpresenterservice/RuntimePermissionPresenterService$MyHandler;->this$0:Landroid/permissionpresenterservice/RuntimePermissionPresenterService;

    invoke-virtual {v3, v1, v2}, Landroid/permissionpresenterservice/RuntimePermissionPresenterService;->onRevokeRuntimePermission(Ljava/lang/String;Ljava/lang/String;)V

    .end local v0    # "args":Lcom/android/internal/os/SomeArgs;
    .end local v1    # "packageName":Ljava/lang/String;
    .end local v2    # "permissionName":Ljava/lang/String;
    goto :goto_1

    .line 121
    :cond_1
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/internal/os/SomeArgs;

    .line 122
    .restart local v0    # "args":Lcom/android/internal/os/SomeArgs;
    iget-object v1, v0, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    .line 123
    .restart local v1    # "packageName":Ljava/lang/String;
    iget-object v2, v0, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    check-cast v2, Landroid/os/RemoteCallback;

    .line 124
    .local v2, "callback":Landroid/os/RemoteCallback;
    invoke-virtual {v0}, Lcom/android/internal/os/SomeArgs;->recycle()V

    .line 125
    iget-object v3, p0, Landroid/permissionpresenterservice/RuntimePermissionPresenterService$MyHandler;->this$0:Landroid/permissionpresenterservice/RuntimePermissionPresenterService;

    .line 126
    invoke-virtual {v3, v1}, Landroid/permissionpresenterservice/RuntimePermissionPresenterService;->onGetAppPermissions(Ljava/lang/String;)Ljava/util/List;

    move-result-object v3

    .line 127
    .local v3, "permissions":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/permission/RuntimePermissionPresentationInfo;>;"
    if-eqz v3, :cond_2

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_2

    .line 128
    new-instance v4, Landroid/os/Bundle;

    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    .line 129
    .local v4, "result":Landroid/os/Bundle;
    const-string v5, "android.content.pm.permission.RuntimePermissionPresenter.key.result"

    invoke-virtual {v4, v5, v3}, Landroid/os/Bundle;->putParcelableList(Ljava/lang/String;Ljava/util/List;)V

    .line 131
    invoke-virtual {v2, v4}, Landroid/os/RemoteCallback;->sendResult(Landroid/os/Bundle;)V

    .line 132
    .end local v4    # "result":Landroid/os/Bundle;
    goto :goto_0

    .line 133
    :cond_2
    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Landroid/os/RemoteCallback;->sendResult(Landroid/os/Bundle;)V

    .line 135
    .end local v0    # "args":Lcom/android/internal/os/SomeArgs;
    .end local v1    # "packageName":Ljava/lang/String;
    .end local v2    # "callback":Landroid/os/RemoteCallback;
    .end local v3    # "permissions":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/permission/RuntimePermissionPresentationInfo;>;"
    :goto_0
    nop

    .line 145
    :goto_1
    return-void
.end method
