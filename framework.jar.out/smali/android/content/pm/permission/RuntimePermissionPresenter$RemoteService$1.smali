.class Landroid/content/pm/permission/RuntimePermissionPresenter$RemoteService$1;
.super Ljava/lang/Object;
.source "RuntimePermissionPresenter.java"

# interfaces
.implements Landroid/os/RemoteCallback$OnResultListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/content/pm/permission/RuntimePermissionPresenter$RemoteService;->handleMessage(Landroid/os/Message;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/content/pm/permission/RuntimePermissionPresenter$RemoteService;

.field final synthetic val$callback:Landroid/content/pm/permission/RuntimePermissionPresenter$OnResultCallback;

.field final synthetic val$handler:Landroid/os/Handler;


# direct methods
.method constructor <init>(Landroid/content/pm/permission/RuntimePermissionPresenter$RemoteService;Landroid/os/Handler;Landroid/content/pm/permission/RuntimePermissionPresenter$OnResultCallback;)V
    .locals 0
    .param p1, "this$0"    # Landroid/content/pm/permission/RuntimePermissionPresenter$RemoteService;

    .line 212
    iput-object p1, p0, Landroid/content/pm/permission/RuntimePermissionPresenter$RemoteService$1;->this$0:Landroid/content/pm/permission/RuntimePermissionPresenter$RemoteService;

    iput-object p2, p0, Landroid/content/pm/permission/RuntimePermissionPresenter$RemoteService$1;->val$handler:Landroid/os/Handler;

    iput-object p3, p0, Landroid/content/pm/permission/RuntimePermissionPresenter$RemoteService$1;->val$callback:Landroid/content/pm/permission/RuntimePermissionPresenter$OnResultCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onResult(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "result"    # Landroid/os/Bundle;

    .line 216
    const/4 v0, 0x0

    .line 217
    .local v0, "permissions":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/permission/RuntimePermissionPresentationInfo;>;"
    if-eqz p1, :cond_0

    .line 218
    const-string v1, "android.content.pm.permission.RuntimePermissionPresenter.key.result"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    .line 220
    :cond_0
    if-nez v0, :cond_1

    .line 221
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    .line 223
    :cond_1
    move-object v1, v0

    .line 224
    .local v1, "reportedPermissions":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/permission/RuntimePermissionPresentationInfo;>;"
    iget-object v2, p0, Landroid/content/pm/permission/RuntimePermissionPresenter$RemoteService$1;->val$handler:Landroid/os/Handler;

    if-eqz v2, :cond_2

    .line 225
    iget-object v2, p0, Landroid/content/pm/permission/RuntimePermissionPresenter$RemoteService$1;->val$handler:Landroid/os/Handler;

    new-instance v3, Landroid/content/pm/permission/RuntimePermissionPresenter$RemoteService$1$1;

    invoke-direct {v3, p0, v1}, Landroid/content/pm/permission/RuntimePermissionPresenter$RemoteService$1$1;-><init>(Landroid/content/pm/permission/RuntimePermissionPresenter$RemoteService$1;Ljava/util/List;)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 232
    :cond_2
    iget-object v2, p0, Landroid/content/pm/permission/RuntimePermissionPresenter$RemoteService$1;->val$callback:Landroid/content/pm/permission/RuntimePermissionPresenter$OnResultCallback;

    invoke-virtual {v2, v1}, Landroid/content/pm/permission/RuntimePermissionPresenter$OnResultCallback;->onGetAppPermissions(Ljava/util/List;)V

    .line 234
    :goto_0
    return-void
.end method
