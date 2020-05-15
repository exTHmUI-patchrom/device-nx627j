.class final Landroid/content/pm/permission/RuntimePermissionPresenter$RemoteService;
.super Landroid/os/Handler;
.source "RuntimePermissionPresenter.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/content/pm/permission/RuntimePermissionPresenter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "RemoteService"
.end annotation


# static fields
.field public static final MSG_GET_APPS_USING_PERMISSIONS:I = 0x2

.field public static final MSG_GET_APP_PERMISSIONS:I = 0x1

.field public static final MSG_REVOKE_APP_PERMISSIONS:I = 0x4

.field public static final MSG_UNBIND:I = 0x3

.field private static final UNBIND_TIMEOUT_MILLIS:J = 0x2710L


# instance fields
.field private mBound:Z
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mLock"
    .end annotation
.end field

.field private final mContext:Landroid/content/Context;

.field private final mLock:Ljava/lang/Object;

.field private final mPendingWork:Ljava/util/List;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mLock"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/os/Message;",
            ">;"
        }
    .end annotation
.end field

.field private mRemoteInstance:Landroid/content/pm/permission/IRuntimePermissionPresenter;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mLock"
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .line 160
    invoke-virtual {p1}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;Z)V

    .line 146
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/content/pm/permission/RuntimePermissionPresenter$RemoteService;->mLock:Ljava/lang/Object;

    .line 150
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/content/pm/permission/RuntimePermissionPresenter$RemoteService;->mPendingWork:Ljava/util/List;

    .line 161
    iput-object p1, p0, Landroid/content/pm/permission/RuntimePermissionPresenter$RemoteService;->mContext:Landroid/content/Context;

    .line 162
    return-void
.end method

.method private scheduleNextMessageIfNeededLocked()V
    .locals 2
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mLock"
    .end annotation

    .line 279
    iget-boolean v0, p0, Landroid/content/pm/permission/RuntimePermissionPresenter$RemoteService;->mBound:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/content/pm/permission/RuntimePermissionPresenter$RemoteService;->mRemoteInstance:Landroid/content/pm/permission/IRuntimePermissionPresenter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/content/pm/permission/RuntimePermissionPresenter$RemoteService;->mPendingWork:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 280
    iget-object v0, p0, Landroid/content/pm/permission/RuntimePermissionPresenter$RemoteService;->mPendingWork:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Message;

    .line 281
    .local v0, "nextMessage":Landroid/os/Message;
    invoke-virtual {p0, v0}, Landroid/content/pm/permission/RuntimePermissionPresenter$RemoteService;->sendMessage(Landroid/os/Message;)Z

    .line 283
    .end local v0    # "nextMessage":Landroid/os/Message;
    :cond_0
    return-void
.end method

.method private scheduleUnbind()V
    .locals 3

    .line 286
    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Landroid/content/pm/permission/RuntimePermissionPresenter$RemoteService;->removeMessages(I)V

    .line 287
    const-wide/16 v1, 0x2710

    invoke-virtual {p0, v0, v1, v2}, Landroid/content/pm/permission/RuntimePermissionPresenter$RemoteService;->sendEmptyMessageDelayed(IJ)Z

    .line 288
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 8
    .param p1, "msg"    # Landroid/os/Message;

    .line 196
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    packed-switch v0, :pswitch_data_0

    goto/16 :goto_1

    .line 253
    :pswitch_0
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/internal/os/SomeArgs;

    .line 254
    .local v0, "args":Lcom/android/internal/os/SomeArgs;
    iget-object v1, v0, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    .line 255
    .local v1, "packageName":Ljava/lang/String;
    iget-object v2, v0, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    .line 256
    .local v2, "permissionName":Ljava/lang/String;
    invoke-virtual {v0}, Lcom/android/internal/os/SomeArgs;->recycle()V

    .line 258
    iget-object v3, p0, Landroid/content/pm/permission/RuntimePermissionPresenter$RemoteService;->mLock:Ljava/lang/Object;

    monitor-enter v3

    .line 259
    :try_start_0
    iget-object v4, p0, Landroid/content/pm/permission/RuntimePermissionPresenter$RemoteService;->mRemoteInstance:Landroid/content/pm/permission/IRuntimePermissionPresenter;

    .line 260
    .local v4, "remoteInstance":Landroid/content/pm/permission/IRuntimePermissionPresenter;
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 261
    if-nez v4, :cond_0

    .line 262
    return-void

    .line 265
    :cond_0
    :try_start_1
    invoke-interface {v4, v1, v2}, Landroid/content/pm/permission/IRuntimePermissionPresenter;->revokeRuntimePermission(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 268
    goto :goto_1

    .line 266
    :catch_0
    move-exception v3

    .line 267
    .local v3, "re":Landroid/os/RemoteException;
    const-string v5, "RuntimePermPresenter"

    const-string v6, "Error getting app permissions"

    invoke-static {v5, v6, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .end local v0    # "args":Lcom/android/internal/os/SomeArgs;
    .end local v1    # "packageName":Ljava/lang/String;
    .end local v2    # "permissionName":Ljava/lang/String;
    .end local v3    # "re":Landroid/os/RemoteException;
    .end local v4    # "remoteInstance":Landroid/content/pm/permission/IRuntimePermissionPresenter;
    goto :goto_1

    .line 260
    .restart local v0    # "args":Lcom/android/internal/os/SomeArgs;
    .restart local v1    # "packageName":Ljava/lang/String;
    .restart local v2    # "permissionName":Ljava/lang/String;
    :catchall_0
    move-exception v4

    :try_start_2
    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v4

    .line 243
    .end local v0    # "args":Lcom/android/internal/os/SomeArgs;
    .end local v1    # "packageName":Ljava/lang/String;
    .end local v2    # "permissionName":Ljava/lang/String;
    :pswitch_1
    iget-object v0, p0, Landroid/content/pm/permission/RuntimePermissionPresenter$RemoteService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 244
    :try_start_3
    iget-boolean v1, p0, Landroid/content/pm/permission/RuntimePermissionPresenter$RemoteService;->mBound:Z

    if-eqz v1, :cond_1

    .line 245
    iget-object v1, p0, Landroid/content/pm/permission/RuntimePermissionPresenter$RemoteService;->mContext:Landroid/content/Context;

    invoke-virtual {v1, p0}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 246
    const/4 v1, 0x0

    iput-boolean v1, p0, Landroid/content/pm/permission/RuntimePermissionPresenter$RemoteService;->mBound:Z

    .line 248
    :cond_1
    const/4 v1, 0x0

    iput-object v1, p0, Landroid/content/pm/permission/RuntimePermissionPresenter$RemoteService;->mRemoteInstance:Landroid/content/pm/permission/IRuntimePermissionPresenter;

    .line 249
    monitor-exit v0

    .line 250
    goto :goto_1

    .line 249
    :catchall_1
    move-exception v1

    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v1

    .line 198
    :cond_2
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/internal/os/SomeArgs;

    .line 199
    .restart local v0    # "args":Lcom/android/internal/os/SomeArgs;
    iget-object v1, v0, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    .line 200
    .restart local v1    # "packageName":Ljava/lang/String;
    iget-object v2, v0, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    check-cast v2, Landroid/content/pm/permission/RuntimePermissionPresenter$OnResultCallback;

    .line 201
    .local v2, "callback":Landroid/content/pm/permission/RuntimePermissionPresenter$OnResultCallback;
    iget-object v3, v0, Lcom/android/internal/os/SomeArgs;->arg3:Ljava/lang/Object;

    check-cast v3, Landroid/os/Handler;

    .line 202
    .local v3, "handler":Landroid/os/Handler;
    invoke-virtual {v0}, Lcom/android/internal/os/SomeArgs;->recycle()V

    .line 204
    iget-object v4, p0, Landroid/content/pm/permission/RuntimePermissionPresenter$RemoteService;->mLock:Ljava/lang/Object;

    monitor-enter v4

    .line 205
    :try_start_4
    iget-object v5, p0, Landroid/content/pm/permission/RuntimePermissionPresenter$RemoteService;->mRemoteInstance:Landroid/content/pm/permission/IRuntimePermissionPresenter;

    .line 206
    .local v5, "remoteInstance":Landroid/content/pm/permission/IRuntimePermissionPresenter;
    monitor-exit v4
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    .line 207
    if-nez v5, :cond_3

    .line 208
    return-void

    .line 211
    :cond_3
    :try_start_5
    new-instance v4, Landroid/os/RemoteCallback;

    new-instance v6, Landroid/content/pm/permission/RuntimePermissionPresenter$RemoteService$1;

    invoke-direct {v6, p0, v3, v2}, Landroid/content/pm/permission/RuntimePermissionPresenter$RemoteService$1;-><init>(Landroid/content/pm/permission/RuntimePermissionPresenter$RemoteService;Landroid/os/Handler;Landroid/content/pm/permission/RuntimePermissionPresenter$OnResultCallback;)V

    invoke-direct {v4, v6, p0}, Landroid/os/RemoteCallback;-><init>(Landroid/os/RemoteCallback$OnResultListener;Landroid/os/Handler;)V

    invoke-interface {v5, v1, v4}, Landroid/content/pm/permission/IRuntimePermissionPresenter;->getAppPermissions(Ljava/lang/String;Landroid/os/RemoteCallback;)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_5} :catch_1

    .line 238
    goto :goto_0

    .line 236
    :catch_1
    move-exception v4

    .line 237
    .local v4, "re":Landroid/os/RemoteException;
    const-string v6, "RuntimePermPresenter"

    const-string v7, "Error getting app permissions"

    invoke-static {v6, v7, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 239
    .end local v4    # "re":Landroid/os/RemoteException;
    :goto_0
    invoke-direct {p0}, Landroid/content/pm/permission/RuntimePermissionPresenter$RemoteService;->scheduleUnbind()V

    .line 240
    .end local v0    # "args":Lcom/android/internal/os/SomeArgs;
    .end local v1    # "packageName":Ljava/lang/String;
    .end local v2    # "callback":Landroid/content/pm/permission/RuntimePermissionPresenter$OnResultCallback;
    .end local v3    # "handler":Landroid/os/Handler;
    .end local v5    # "remoteInstance":Landroid/content/pm/permission/IRuntimePermissionPresenter;
    nop

    .line 272
    :goto_1
    iget-object v5, p0, Landroid/content/pm/permission/RuntimePermissionPresenter$RemoteService;->mLock:Ljava/lang/Object;

    monitor-enter v5

    .line 273
    :try_start_6
    invoke-direct {p0}, Landroid/content/pm/permission/RuntimePermissionPresenter$RemoteService;->scheduleNextMessageIfNeededLocked()V

    .line 274
    monitor-exit v5

    .line 275
    return-void

    .line 274
    :catchall_2
    move-exception v0

    monitor-exit v5
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    throw v0

    .line 206
    .restart local v0    # "args":Lcom/android/internal/os/SomeArgs;
    .restart local v1    # "packageName":Ljava/lang/String;
    .restart local v2    # "callback":Landroid/content/pm/permission/RuntimePermissionPresenter$OnResultCallback;
    .restart local v3    # "handler":Landroid/os/Handler;
    :catchall_3
    move-exception v5

    :try_start_7
    monitor-exit v4
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    throw v5

    nop

    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 2
    .param p1, "name"    # Landroid/content/ComponentName;
    .param p2, "service"    # Landroid/os/IBinder;

    .line 181
    iget-object v0, p0, Landroid/content/pm/permission/RuntimePermissionPresenter$RemoteService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 182
    :try_start_0
    invoke-static {p2}, Landroid/content/pm/permission/IRuntimePermissionPresenter$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/pm/permission/IRuntimePermissionPresenter;

    move-result-object v1

    iput-object v1, p0, Landroid/content/pm/permission/RuntimePermissionPresenter$RemoteService;->mRemoteInstance:Landroid/content/pm/permission/IRuntimePermissionPresenter;

    .line 183
    invoke-direct {p0}, Landroid/content/pm/permission/RuntimePermissionPresenter$RemoteService;->scheduleNextMessageIfNeededLocked()V

    .line 184
    monitor-exit v0

    .line 185
    return-void

    .line 184
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 2
    .param p1, "name"    # Landroid/content/ComponentName;

    .line 189
    iget-object v0, p0, Landroid/content/pm/permission/RuntimePermissionPresenter$RemoteService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 190
    const/4 v1, 0x0

    :try_start_0
    iput-object v1, p0, Landroid/content/pm/permission/RuntimePermissionPresenter$RemoteService;->mRemoteInstance:Landroid/content/pm/permission/IRuntimePermissionPresenter;

    .line 191
    monitor-exit v0

    .line 192
    return-void

    .line 191
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public processMessage(Landroid/os/Message;)V
    .locals 4
    .param p1, "message"    # Landroid/os/Message;

    .line 165
    iget-object v0, p0, Landroid/content/pm/permission/RuntimePermissionPresenter$RemoteService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 166
    :try_start_0
    iget-boolean v1, p0, Landroid/content/pm/permission/RuntimePermissionPresenter$RemoteService;->mBound:Z

    if-nez v1, :cond_0

    .line 167
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.permissionpresenterservice.RuntimePermissionPresenterService"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 169
    .local v1, "intent":Landroid/content/Intent;
    iget-object v2, p0, Landroid/content/pm/permission/RuntimePermissionPresenter$RemoteService;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 170
    invoke-virtual {v2}, Landroid/content/pm/PackageManager;->getPermissionControllerPackageName()Ljava/lang/String;

    move-result-object v2

    .line 169
    invoke-virtual {v1, v2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 171
    iget-object v2, p0, Landroid/content/pm/permission/RuntimePermissionPresenter$RemoteService;->mContext:Landroid/content/Context;

    const/4 v3, 0x1

    invoke-virtual {v2, v1, p0, v3}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v2

    iput-boolean v2, p0, Landroid/content/pm/permission/RuntimePermissionPresenter$RemoteService;->mBound:Z

    .line 174
    .end local v1    # "intent":Landroid/content/Intent;
    :cond_0
    iget-object v1, p0, Landroid/content/pm/permission/RuntimePermissionPresenter$RemoteService;->mPendingWork:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 175
    invoke-direct {p0}, Landroid/content/pm/permission/RuntimePermissionPresenter$RemoteService;->scheduleNextMessageIfNeededLocked()V

    .line 176
    monitor-exit v0

    .line 177
    return-void

    .line 176
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
