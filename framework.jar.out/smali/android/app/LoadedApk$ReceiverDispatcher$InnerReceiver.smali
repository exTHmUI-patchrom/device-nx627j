.class final Landroid/app/LoadedApk$ReceiverDispatcher$InnerReceiver;
.super Landroid/content/IIntentReceiver$Stub;
.source "LoadedApk.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/LoadedApk$ReceiverDispatcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "InnerReceiver"
.end annotation


# instance fields
.field final mDispatcher:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/app/LoadedApk$ReceiverDispatcher;",
            ">;"
        }
    .end annotation
.end field

.field final mStrongRef:Landroid/app/LoadedApk$ReceiverDispatcher;


# direct methods
.method constructor <init>(Landroid/app/LoadedApk$ReceiverDispatcher;Z)V
    .locals 1
    .param p1, "rd"    # Landroid/app/LoadedApk$ReceiverDispatcher;
    .param p2, "strong"    # Z

    .line 1306
    invoke-direct {p0}, Landroid/content/IIntentReceiver$Stub;-><init>()V

    .line 1307
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Landroid/app/LoadedApk$ReceiverDispatcher$InnerReceiver;->mDispatcher:Ljava/lang/ref/WeakReference;

    .line 1308
    if-eqz p2, :cond_0

    move-object v0, p1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-object v0, p0, Landroid/app/LoadedApk$ReceiverDispatcher$InnerReceiver;->mStrongRef:Landroid/app/LoadedApk$ReceiverDispatcher;

    .line 1309
    return-void
.end method


# virtual methods
.method public performReceive(Landroid/content/Intent;ILjava/lang/String;Landroid/os/Bundle;ZZI)V
    .locals 12
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "resultCode"    # I
    .param p3, "data"    # Ljava/lang/String;
    .param p4, "extras"    # Landroid/os/Bundle;
    .param p5, "ordered"    # Z
    .param p6, "sticky"    # Z
    .param p7, "sendingUser"    # I

    move-object/from16 v9, p4

    .line 1315
    if-nez p1, :cond_0

    .line 1316
    const-string v0, "LoadedApk"

    const-string v1, "Null intent received"

    invoke-static {v0, v1}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 1317
    const/4 v0, 0x0

    .line 1319
    .local v0, "rd":Landroid/app/LoadedApk$ReceiverDispatcher;
    move-object v10, p0

    goto :goto_0

    .end local v0    # "rd":Landroid/app/LoadedApk$ReceiverDispatcher;
    :cond_0
    move-object v10, p0

    iget-object v0, v10, Landroid/app/LoadedApk$ReceiverDispatcher$InnerReceiver;->mDispatcher:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/LoadedApk$ReceiverDispatcher;

    .restart local v0    # "rd":Landroid/app/LoadedApk$ReceiverDispatcher;
    :goto_0
    move-object v11, v0

    .line 1326
    .end local v0    # "rd":Landroid/app/LoadedApk$ReceiverDispatcher;
    .local v11, "rd":Landroid/app/LoadedApk$ReceiverDispatcher;
    if-eqz v11, :cond_1

    .line 1327
    move-object v1, v11

    move-object v2, p1

    move v3, p2

    move-object v4, p3

    move-object v5, v9

    move/from16 v6, p5

    move/from16 v7, p6

    move/from16 v8, p7

    invoke-virtual/range {v1 .. v8}, Landroid/app/LoadedApk$ReceiverDispatcher;->performReceive(Landroid/content/Intent;ILjava/lang/String;Landroid/os/Bundle;ZZI)V

    goto :goto_2

    .line 1336
    :cond_1
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v1

    .line 1338
    .local v1, "mgr":Landroid/app/IActivityManager;
    if-eqz v9, :cond_2

    .line 1339
    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {v9, v0}, Landroid/os/Bundle;->setAllowFds(Z)Z

    goto :goto_1

    .line 1342
    :catch_0
    move-exception v0

    goto :goto_3

    .line 1341
    :cond_2
    :goto_1
    const/4 v6, 0x0

    invoke-virtual {p1}, Landroid/content/Intent;->getFlags()I

    move-result v7

    move-object v2, v10

    move v3, p2

    move-object v4, p3

    move-object v5, v9

    invoke-interface/range {v1 .. v7}, Landroid/app/IActivityManager;->finishReceiver(Landroid/os/IBinder;ILjava/lang/String;Landroid/os/Bundle;ZI)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1344
    nop

    .line 1346
    .end local v1    # "mgr":Landroid/app/IActivityManager;
    :goto_2
    return-void

    .line 1342
    .restart local v1    # "mgr":Landroid/app/IActivityManager;
    :goto_3
    nop

    .line 1343
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2
.end method
