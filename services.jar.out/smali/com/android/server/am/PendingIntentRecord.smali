.class final Lcom/android/server/am/PendingIntentRecord;
.super Landroid/content/IIntentSender$Stub;
.source "PendingIntentRecord.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/am/PendingIntentRecord$Key;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "ActivityManager"


# instance fields
.field canceled:Z

.field private isDataCollection:Z

.field final key:Lcom/android/server/am/PendingIntentRecord$Key;

.field lastTag:Ljava/lang/String;

.field lastTagPrefix:Ljava/lang/String;

.field private mCancelCallbacks:Landroid/os/RemoteCallbackList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/RemoteCallbackList<",
            "Lcom/android/internal/os/IResultReceiver;",
            ">;"
        }
    .end annotation
.end field

.field final owner:Lcom/android/server/am/ActivityManagerService;

.field final ref:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/android/server/am/PendingIntentRecord;",
            ">;"
        }
    .end annotation
.end field

.field sent:Z

.field stringName:Ljava/lang/String;

.field final uid:I

.field private whitelistDuration:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Landroid/os/IBinder;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/android/server/am/ActivityManagerService;Lcom/android/server/am/PendingIntentRecord$Key;I)V
    .locals 1
    .param p1, "_owner"    # Lcom/android/server/am/ActivityManagerService;
    .param p2, "_k"    # Lcom/android/server/am/PendingIntentRecord$Key;
    .param p3, "_u"    # I

    .line 194
    invoke-direct {p0}, Landroid/content/IIntentSender$Stub;-><init>()V

    .line 53
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/am/PendingIntentRecord;->sent:Z

    .line 54
    iput-boolean v0, p0, Lcom/android/server/am/PendingIntentRecord;->canceled:Z

    .line 58
    iput-boolean v0, p0, Lcom/android/server/am/PendingIntentRecord;->isDataCollection:Z

    .line 195
    iput-object p1, p0, Lcom/android/server/am/PendingIntentRecord;->owner:Lcom/android/server/am/ActivityManagerService;

    .line 196
    iput-object p2, p0, Lcom/android/server/am/PendingIntentRecord;->key:Lcom/android/server/am/PendingIntentRecord$Key;

    .line 197
    iput p3, p0, Lcom/android/server/am/PendingIntentRecord;->uid:I

    .line 198
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/android/server/am/PendingIntentRecord;->ref:Ljava/lang/ref/WeakReference;

    .line 199
    return-void
.end method


# virtual methods
.method public completeFinalize()V
    .locals 4

    .line 440
    iget-object v0, p0, Lcom/android/server/am/PendingIntentRecord;->owner:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v0

    :try_start_0
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    .line 441
    iget-object v1, p0, Lcom/android/server/am/PendingIntentRecord;->owner:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mIntentSenderRecords:Ljava/util/HashMap;

    iget-object v2, p0, Lcom/android/server/am/PendingIntentRecord;->key:Lcom/android/server/am/PendingIntentRecord$Key;

    .line 442
    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/ref/WeakReference;

    .line 443
    .local v1, "current":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Lcom/android/server/am/PendingIntentRecord;>;"
    iget-object v2, p0, Lcom/android/server/am/PendingIntentRecord;->ref:Ljava/lang/ref/WeakReference;

    if-ne v1, v2, :cond_0

    .line 444
    iget-object v2, p0, Lcom/android/server/am/PendingIntentRecord;->owner:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mIntentSenderRecords:Ljava/util/HashMap;

    iget-object v3, p0, Lcom/android/server/am/PendingIntentRecord;->key:Lcom/android/server/am/PendingIntentRecord$Key;

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 446
    .end local v1    # "current":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Lcom/android/server/am/PendingIntentRecord;>;"
    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    .line 447
    return-void

    .line 446
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method

.method public detachCancelListenersLocked()Landroid/os/RemoteCallbackList;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/os/RemoteCallbackList<",
            "Lcom/android/internal/os/IResultReceiver;",
            ">;"
        }
    .end annotation

    .line 235
    iget-object v0, p0, Lcom/android/server/am/PendingIntentRecord;->mCancelCallbacks:Landroid/os/RemoteCallbackList;

    .line 236
    .local v0, "listeners":Landroid/os/RemoteCallbackList;, "Landroid/os/RemoteCallbackList<Lcom/android/internal/os/IResultReceiver;>;"
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/server/am/PendingIntentRecord;->mCancelCallbacks:Landroid/os/RemoteCallbackList;

    .line 237
    return-object v0
.end method

.method dump(Ljava/io/PrintWriter;Ljava/lang/String;)V
    .locals 4
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "prefix"    # Ljava/lang/String;

    .line 450
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "uid="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/am/PendingIntentRecord;->uid:I

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 451
    const-string v0, " packageName="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/am/PendingIntentRecord;->key:Lcom/android/server/am/PendingIntentRecord$Key;

    iget-object v0, v0, Lcom/android/server/am/PendingIntentRecord$Key;->packageName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 452
    const-string v0, " type="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/am/PendingIntentRecord;->key:Lcom/android/server/am/PendingIntentRecord$Key;

    invoke-virtual {v0}, Lcom/android/server/am/PendingIntentRecord$Key;->typeName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 453
    const-string v0, " flags=0x"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/am/PendingIntentRecord;->key:Lcom/android/server/am/PendingIntentRecord$Key;

    iget v0, v0, Lcom/android/server/am/PendingIntentRecord$Key;->flags:I

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 454
    iget-object v0, p0, Lcom/android/server/am/PendingIntentRecord;->key:Lcom/android/server/am/PendingIntentRecord$Key;

    iget-object v0, v0, Lcom/android/server/am/PendingIntentRecord$Key;->activity:Lcom/android/server/am/ActivityRecord;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/server/am/PendingIntentRecord;->key:Lcom/android/server/am/PendingIntentRecord$Key;

    iget-object v0, v0, Lcom/android/server/am/PendingIntentRecord$Key;->who:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 455
    :cond_0
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "activity="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/am/PendingIntentRecord;->key:Lcom/android/server/am/PendingIntentRecord$Key;

    iget-object v0, v0, Lcom/android/server/am/PendingIntentRecord$Key;->activity:Lcom/android/server/am/ActivityRecord;

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    .line 456
    const-string v0, " who="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/am/PendingIntentRecord;->key:Lcom/android/server/am/PendingIntentRecord$Key;

    iget-object v0, v0, Lcom/android/server/am/PendingIntentRecord$Key;->who:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 458
    :cond_1
    iget-object v0, p0, Lcom/android/server/am/PendingIntentRecord;->key:Lcom/android/server/am/PendingIntentRecord$Key;

    iget v0, v0, Lcom/android/server/am/PendingIntentRecord$Key;->requestCode:I

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/android/server/am/PendingIntentRecord;->key:Lcom/android/server/am/PendingIntentRecord$Key;

    iget-object v0, v0, Lcom/android/server/am/PendingIntentRecord$Key;->requestResolvedType:Ljava/lang/String;

    if-eqz v0, :cond_3

    .line 459
    :cond_2
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "requestCode="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/am/PendingIntentRecord;->key:Lcom/android/server/am/PendingIntentRecord$Key;

    iget v0, v0, Lcom/android/server/am/PendingIntentRecord$Key;->requestCode:I

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 460
    const-string v0, " requestResolvedType="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/am/PendingIntentRecord;->key:Lcom/android/server/am/PendingIntentRecord$Key;

    iget-object v0, v0, Lcom/android/server/am/PendingIntentRecord$Key;->requestResolvedType:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 462
    :cond_3
    iget-object v0, p0, Lcom/android/server/am/PendingIntentRecord;->key:Lcom/android/server/am/PendingIntentRecord$Key;

    iget-object v0, v0, Lcom/android/server/am/PendingIntentRecord$Key;->requestIntent:Landroid/content/Intent;

    const/4 v1, 0x0

    if-eqz v0, :cond_4

    .line 463
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "requestIntent="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 464
    iget-object v0, p0, Lcom/android/server/am/PendingIntentRecord;->key:Lcom/android/server/am/PendingIntentRecord$Key;

    iget-object v0, v0, Lcom/android/server/am/PendingIntentRecord$Key;->requestIntent:Landroid/content/Intent;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2, v2, v2}, Landroid/content/Intent;->toShortString(ZZZZ)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 466
    :cond_4
    iget-boolean v0, p0, Lcom/android/server/am/PendingIntentRecord;->sent:Z

    if-nez v0, :cond_5

    iget-boolean v0, p0, Lcom/android/server/am/PendingIntentRecord;->canceled:Z

    if-eqz v0, :cond_6

    .line 467
    :cond_5
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "sent="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/am/PendingIntentRecord;->sent:Z

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Z)V

    .line 468
    const-string v0, " canceled="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/am/PendingIntentRecord;->canceled:Z

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 470
    :cond_6
    iget-object v0, p0, Lcom/android/server/am/PendingIntentRecord;->whitelistDuration:Landroid/util/ArrayMap;

    if-eqz v0, :cond_9

    .line 471
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 472
    const-string/jumbo v0, "whitelistDuration="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 473
    move v0, v1

    .line 473
    .local v0, "i":I
    :goto_0
    iget-object v2, p0, Lcom/android/server/am/PendingIntentRecord;->whitelistDuration:Landroid/util/ArrayMap;

    invoke-virtual {v2}, Landroid/util/ArrayMap;->size()I

    move-result v2

    if-ge v0, v2, :cond_8

    .line 474
    if-eqz v0, :cond_7

    .line 475
    const-string v2, ", "

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 477
    :cond_7
    iget-object v2, p0, Lcom/android/server/am/PendingIntentRecord;->whitelistDuration:Landroid/util/ArrayMap;

    invoke-virtual {v2, v0}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 478
    const-string v2, ":"

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 479
    iget-object v2, p0, Lcom/android/server/am/PendingIntentRecord;->whitelistDuration:Landroid/util/ArrayMap;

    invoke-virtual {v2, v0}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-static {v2, v3, p1}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    .line 473
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 481
    .end local v0    # "i":I
    :cond_8
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 483
    :cond_9
    iget-object v0, p0, Lcom/android/server/am/PendingIntentRecord;->mCancelCallbacks:Landroid/os/RemoteCallbackList;

    if-eqz v0, :cond_a

    .line 484
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "mCancelCallbacks:"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 485
    nop

    .line 485
    .local v1, "i":I
    :goto_1
    move v0, v1

    .line 485
    .end local v1    # "i":I
    .restart local v0    # "i":I
    iget-object v1, p0, Lcom/android/server/am/PendingIntentRecord;->mCancelCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v1}, Landroid/os/RemoteCallbackList;->getRegisteredCallbackCount()I

    move-result v1

    if-ge v0, v1, :cond_a

    .line 486
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v1, "  #"

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(I)V

    const-string v1, ": "

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 487
    iget-object v1, p0, Lcom/android/server/am/PendingIntentRecord;->mCancelCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v1, v0}, Landroid/os/RemoteCallbackList;->getRegisteredCallbackItem(I)Landroid/os/IInterface;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 485
    add-int/lit8 v1, v0, 0x1

    .line 485
    .end local v0    # "i":I
    .restart local v1    # "i":I
    goto :goto_1

    .line 490
    .end local v1    # "i":I
    :cond_a
    return-void
.end method

.method protected finalize()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 430
    :try_start_0
    iget-boolean v0, p0, Lcom/android/server/am/PendingIntentRecord;->canceled:Z

    if-nez v0, :cond_0

    .line 431
    iget-object v0, p0, Lcom/android/server/am/PendingIntentRecord;->owner:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mHandler:Lcom/android/server/am/ActivityManagerService$MainHandler;

    iget-object v1, p0, Lcom/android/server/am/PendingIntentRecord;->owner:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mHandler:Lcom/android/server/am/ActivityManagerService$MainHandler;

    const/16 v2, 0x17

    invoke-virtual {v1, v2, p0}, Lcom/android/server/am/ActivityManagerService$MainHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/am/ActivityManagerService$MainHandler;->sendMessage(Landroid/os/Message;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 435
    :cond_0
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 436
    nop

    .line 437
    return-void

    .line 435
    :catchall_0
    move-exception v0

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    throw v0
.end method

.method public registerCancelListenerLocked(Lcom/android/internal/os/IResultReceiver;)V
    .locals 1
    .param p1, "receiver"    # Lcom/android/internal/os/IResultReceiver;

    .line 218
    iget-object v0, p0, Lcom/android/server/am/PendingIntentRecord;->mCancelCallbacks:Landroid/os/RemoteCallbackList;

    if-nez v0, :cond_0

    .line 219
    new-instance v0, Landroid/os/RemoteCallbackList;

    invoke-direct {v0}, Landroid/os/RemoteCallbackList;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/PendingIntentRecord;->mCancelCallbacks:Landroid/os/RemoteCallbackList;

    .line 221
    :cond_0
    iget-object v0, p0, Lcom/android/server/am/PendingIntentRecord;->mCancelCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0, p1}, Landroid/os/RemoteCallbackList;->register(Landroid/os/IInterface;)Z

    .line 222
    return-void
.end method

.method public send(ILandroid/content/Intent;Ljava/lang/String;Landroid/os/IBinder;Landroid/content/IIntentReceiver;Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 13
    .param p1, "code"    # I
    .param p2, "intent"    # Landroid/content/Intent;
    .param p3, "resolvedType"    # Ljava/lang/String;
    .param p4, "whitelistToken"    # Landroid/os/IBinder;
    .param p5, "finishedReceiver"    # Landroid/content/IIntentReceiver;
    .param p6, "requiredPermission"    # Ljava/lang/String;
    .param p7, "options"    # Landroid/os/Bundle;

    .line 242
    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    move-object/from16 v6, p6

    move-object/from16 v12, p7

    invoke-virtual/range {v0 .. v12}, Lcom/android/server/am/PendingIntentRecord;->sendInner(ILandroid/content/Intent;Ljava/lang/String;Landroid/os/IBinder;Landroid/content/IIntentReceiver;Ljava/lang/String;Landroid/os/IBinder;Ljava/lang/String;IIILandroid/os/Bundle;)I

    .line 244
    return-void
.end method

.method sendInner(ILandroid/content/Intent;Ljava/lang/String;Landroid/os/IBinder;Landroid/content/IIntentReceiver;Ljava/lang/String;Landroid/os/IBinder;Ljava/lang/String;IIILandroid/os/Bundle;)I
    .locals 34
    .param p1, "code"    # I
    .param p2, "intent"    # Landroid/content/Intent;
    .param p3, "resolvedType"    # Ljava/lang/String;
    .param p4, "whitelistToken"    # Landroid/os/IBinder;
    .param p5, "finishedReceiver"    # Landroid/content/IIntentReceiver;
    .param p6, "requiredPermission"    # Ljava/lang/String;
    .param p7, "resultTo"    # Landroid/os/IBinder;
    .param p8, "resultWho"    # Ljava/lang/String;
    .param p9, "requestCode"    # I
    .param p10, "flagsMask"    # I
    .param p11, "flagsValues"    # I
    .param p12, "options"    # Landroid/os/Bundle;

    move-object/from16 v15, p0

    move-object/from16 v14, p2

    .line 258
    move-object/from16 v13, p12

    iget-object v0, v15, Lcom/android/server/am/PendingIntentRecord;->key:Lcom/android/server/am/PendingIntentRecord$Key;

    iget-object v0, v0, Lcom/android/server/am/PendingIntentRecord$Key;->requestIntent:Landroid/content/Intent;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-boolean v0, v15, Lcom/android/server/am/PendingIntentRecord;->isDataCollection:Z

    if-eqz v0, :cond_0

    .line 259
    new-instance v0, Landroid/content/Intent;

    iget-object v2, v15, Lcom/android/server/am/PendingIntentRecord;->key:Lcom/android/server/am/PendingIntentRecord$Key;

    iget-object v2, v2, Lcom/android/server/am/PendingIntentRecord$Key;->requestIntent:Landroid/content/Intent;

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    .line 260
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 259
    invoke-static {v0, v2, v3}, Lnubia/os/ApplicationManager$Trigger;->noteNotificationClick(Landroid/content/Intent;J)V

    .line 261
    iput-boolean v1, v15, Lcom/android/server/am/PendingIntentRecord;->isDataCollection:Z

    .line 265
    :cond_0
    const/4 v0, 0x1

    if-eqz v14, :cond_1

    invoke-virtual {v14, v0}, Landroid/content/Intent;->setDefusable(Z)V

    .line 266
    :cond_1
    if-eqz v13, :cond_2

    invoke-virtual {v13, v0}, Landroid/os/Bundle;->setDefusable(Z)V

    .line 268
    :cond_2
    iget-object v12, v15, Lcom/android/server/am/PendingIntentRecord;->owner:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v12

    :try_start_0
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    .line 269
    iget-boolean v2, v15, Lcom/android/server/am/PendingIntentRecord;->canceled:Z

    if-nez v2, :cond_19

    .line 270
    iput-boolean v0, v15, Lcom/android/server/am/PendingIntentRecord;->sent:Z

    .line 271
    iget-object v2, v15, Lcom/android/server/am/PendingIntentRecord;->key:Lcom/android/server/am/PendingIntentRecord$Key;

    iget v2, v2, Lcom/android/server/am/PendingIntentRecord$Key;->flags:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_9

    const/high16 v3, 0x40000000    # 2.0f

    and-int/2addr v2, v3

    if-eqz v2, :cond_3

    .line 272
    :try_start_1
    iget-object v2, v15, Lcom/android/server/am/PendingIntentRecord;->owner:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v2, v15, v0}, Lcom/android/server/am/ActivityManagerService;->cancelIntentSenderLocked(Lcom/android/server/am/PendingIntentRecord;Z)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 423
    :catchall_0
    move-exception v0

    move-object/from16 v19, p3

    move/from16 v20, p10

    move/from16 v21, p11

    .line 423
    .end local p3    # "resolvedType":Ljava/lang/String;
    .end local p10    # "flagsMask":I
    .end local p11    # "flagsValues":I
    .local v19, "resolvedType":Ljava/lang/String;
    .local v20, "flagsMask":I
    .local v21, "flagsValues":I
    :goto_0
    move-object/from16 v27, v12

    goto/16 :goto_1b

    .line 275
    .end local v19    # "resolvedType":Ljava/lang/String;
    .end local v20    # "flagsMask":I
    .end local v21    # "flagsValues":I
    .restart local p3    # "resolvedType":Ljava/lang/String;
    .restart local p10    # "flagsMask":I
    .restart local p11    # "flagsValues":I
    :cond_3
    :goto_1
    :try_start_2
    iget-object v2, v15, Lcom/android/server/am/PendingIntentRecord;->key:Lcom/android/server/am/PendingIntentRecord$Key;

    iget-object v2, v2, Lcom/android/server/am/PendingIntentRecord$Key;->requestIntent:Landroid/content/Intent;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_9

    if-eqz v2, :cond_4

    .line 276
    :try_start_3
    new-instance v2, Landroid/content/Intent;

    iget-object v3, v15, Lcom/android/server/am/PendingIntentRecord;->key:Lcom/android/server/am/PendingIntentRecord$Key;

    iget-object v3, v3, Lcom/android/server/am/PendingIntentRecord$Key;->requestIntent:Landroid/content/Intent;

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_2

    :cond_4
    :try_start_4
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    :goto_2
    move-object v10, v2

    .line 278
    .local v10, "finalIntent":Landroid/content/Intent;
    iget-object v2, v15, Lcom/android/server/am/PendingIntentRecord;->key:Lcom/android/server/am/PendingIntentRecord$Key;

    iget v2, v2, Lcom/android/server/am/PendingIntentRecord$Key;->flags:I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_9

    const/high16 v3, 0x4000000

    and-int/2addr v2, v3

    if-eqz v2, :cond_5

    move v2, v0

    goto :goto_3

    :cond_5
    move v2, v1

    :goto_3
    move/from16 v18, v2

    .line 279
    .local v18, "immutable":Z
    if-nez v18, :cond_8

    .line 280
    if-eqz v14, :cond_7

    .line 281
    :try_start_5
    iget-object v2, v15, Lcom/android/server/am/PendingIntentRecord;->key:Lcom/android/server/am/PendingIntentRecord$Key;

    iget v2, v2, Lcom/android/server/am/PendingIntentRecord$Key;->flags:I

    invoke-virtual {v10, v14, v2}, Landroid/content/Intent;->fillIn(Landroid/content/Intent;I)I

    move-result v2

    .line 282
    .local v2, "changes":I
    and-int/lit8 v3, v2, 0x2

    if-nez v3, :cond_6

    .line 283
    iget-object v3, v15, Lcom/android/server/am/PendingIntentRecord;->key:Lcom/android/server/am/PendingIntentRecord$Key;

    iget-object v3, v3, Lcom/android/server/am/PendingIntentRecord$Key;->requestResolvedType:Ljava/lang/String;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    move-object v2, v3

    .line 283
    .end local p3    # "resolvedType":Ljava/lang/String;
    .local v2, "resolvedType":Ljava/lang/String;
    goto :goto_4

    .line 285
    .end local v2    # "resolvedType":Ljava/lang/String;
    .restart local p3    # "resolvedType":Ljava/lang/String;
    :cond_6
    move-object/from16 v2, p3

    .line 285
    .end local p3    # "resolvedType":Ljava/lang/String;
    .restart local v2    # "resolvedType":Ljava/lang/String;
    :goto_4
    goto :goto_5

    .line 286
    .end local v2    # "resolvedType":Ljava/lang/String;
    .restart local p3    # "resolvedType":Ljava/lang/String;
    :cond_7
    :try_start_6
    iget-object v2, v15, Lcom/android/server/am/PendingIntentRecord;->key:Lcom/android/server/am/PendingIntentRecord$Key;

    iget-object v2, v2, Lcom/android/server/am/PendingIntentRecord$Key;->requestResolvedType:Ljava/lang/String;
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    .line 288
    .end local p3    # "resolvedType":Ljava/lang/String;
    .restart local v2    # "resolvedType":Ljava/lang/String;
    :goto_5
    move/from16 v3, p10

    and-int/lit16 v3, v3, -0xc4

    .line 289
    .end local p10    # "flagsMask":I
    .local v3, "flagsMask":I
    and-int v4, p11, v3

    .line 290
    .end local p11    # "flagsValues":I
    .local v4, "flagsValues":I
    :try_start_7
    invoke-virtual {v10}, Landroid/content/Intent;->getFlags()I

    move-result v5

    not-int v6, v3

    and-int/2addr v5, v6

    or-int/2addr v5, v4

    invoke-virtual {v10, v5}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .line 295
    move-object/from16 v19, v2

    move/from16 v20, v3

    move/from16 v21, v4

    goto :goto_6

    .line 423
    .end local v10    # "finalIntent":Landroid/content/Intent;
    .end local v18    # "immutable":Z
    :catchall_1
    move-exception v0

    move-object/from16 v19, v2

    move/from16 v20, v3

    move/from16 v21, v4

    goto :goto_0

    .line 423
    .end local v2    # "resolvedType":Ljava/lang/String;
    .end local v3    # "flagsMask":I
    .end local v4    # "flagsValues":I
    .restart local p3    # "resolvedType":Ljava/lang/String;
    .restart local p10    # "flagsMask":I
    .restart local p11    # "flagsValues":I
    :catchall_2
    move-exception v0

    move/from16 v3, p10

    move-object/from16 v19, p3

    move/from16 v21, p11

    move/from16 v20, v3

    goto :goto_0

    .line 292
    .restart local v10    # "finalIntent":Landroid/content/Intent;
    .restart local v18    # "immutable":Z
    :cond_8
    move/from16 v3, p10

    :try_start_8
    iget-object v2, v15, Lcom/android/server/am/PendingIntentRecord;->key:Lcom/android/server/am/PendingIntentRecord$Key;

    iget-object v2, v2, Lcom/android/server/am/PendingIntentRecord$Key;->requestResolvedType:Ljava/lang/String;
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_7

    .line 295
    .end local p3    # "resolvedType":Ljava/lang/String;
    .restart local v2    # "resolvedType":Ljava/lang/String;
    move/from16 v21, p11

    move-object/from16 v19, v2

    move/from16 v20, v3

    .line 295
    .end local v2    # "resolvedType":Ljava/lang/String;
    .end local p10    # "flagsMask":I
    .end local p11    # "flagsValues":I
    .restart local v19    # "resolvedType":Ljava/lang/String;
    .restart local v20    # "flagsMask":I
    .restart local v21    # "flagsValues":I
    :goto_6
    :try_start_9
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    .line 296
    .local v2, "callingUid":I
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v23

    .line 299
    .local v23, "callingPid":I
    iget-object v3, v15, Lcom/android/server/am/PendingIntentRecord;->key:Lcom/android/server/am/PendingIntentRecord$Key;

    iget-object v3, v3, Lcom/android/server/am/PendingIntentRecord$Key;->options:Lcom/android/server/am/SafeActivityOptions;

    .line 300
    .local v3, "mergedOptions":Lcom/android/server/am/SafeActivityOptions;
    if-nez v3, :cond_9

    .line 301
    invoke-static/range {p12 .. p12}, Lcom/android/server/am/SafeActivityOptions;->fromBundle(Landroid/os/Bundle;)Lcom/android/server/am/SafeActivityOptions;

    move-result-object v4

    move-object v3, v4

    .line 306
    .end local v3    # "mergedOptions":Lcom/android/server/am/SafeActivityOptions;
    .local v29, "mergedOptions":Lcom/android/server/am/SafeActivityOptions;
    :goto_7
    move-object/from16 v29, v3

    goto :goto_8

    .line 303
    .end local v29    # "mergedOptions":Lcom/android/server/am/SafeActivityOptions;
    .restart local v3    # "mergedOptions":Lcom/android/server/am/SafeActivityOptions;
    :cond_9
    invoke-static/range {p12 .. p12}, Landroid/app/ActivityOptions;->fromBundle(Landroid/os/Bundle;)Landroid/app/ActivityOptions;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/server/am/SafeActivityOptions;->setCallerOptions(Landroid/app/ActivityOptions;)V

    goto :goto_7

    .line 306
    .end local v3    # "mergedOptions":Lcom/android/server/am/SafeActivityOptions;
    .restart local v29    # "mergedOptions":Lcom/android/server/am/SafeActivityOptions;
    :goto_8
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v3

    move-wide v8, v3

    .line 308
    .local v8, "origId":J
    iget-object v3, v15, Lcom/android/server/am/PendingIntentRecord;->whitelistDuration:Landroid/util/ArrayMap;
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_6

    if-eqz v3, :cond_e

    .line 309
    :try_start_a
    iget-object v3, v15, Lcom/android/server/am/PendingIntentRecord;->whitelistDuration:Landroid/util/ArrayMap;
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_3

    move-object/from16 v7, p4

    :try_start_b
    invoke-virtual {v3, v7}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Long;

    .line 310
    .local v3, "duration":Ljava/lang/Long;
    if-eqz v3, :cond_f

    .line 311
    iget-object v4, v15, Lcom/android/server/am/PendingIntentRecord;->owner:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v4, v2}, Lcom/android/server/am/ActivityManagerService;->getUidState(I)I

    move-result v4

    .line 312
    .local v4, "procState":I
    invoke-static {v4}, Landroid/app/ActivityManager;->isProcStateBackground(I)Z

    move-result v5

    if-nez v5, :cond_d

    .line 313
    new-instance v5, Ljava/lang/StringBuilder;

    const/16 v6, 0x40

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 314
    .local v5, "tag":Ljava/lang/StringBuilder;
    const-string/jumbo v6, "pendingintent:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 315
    invoke-static {v5, v2}, Landroid/os/UserHandle;->formatUid(Ljava/lang/StringBuilder;I)V

    .line 316
    const-string v6, ":"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 317
    invoke-virtual {v10}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_a

    .line 318
    invoke-virtual {v10}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_9

    .line 319
    :cond_a
    invoke-virtual {v10}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v6

    if-eqz v6, :cond_b

    .line 320
    invoke-virtual {v10}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v6

    invoke-virtual {v6, v5}, Landroid/content/ComponentName;->appendShortString(Ljava/lang/StringBuilder;)V

    goto :goto_9

    .line 321
    :cond_b
    invoke-virtual {v10}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v6

    if-eqz v6, :cond_c

    .line 322
    invoke-virtual {v10}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v6

    invoke-virtual {v6}, Landroid/net/Uri;->toSafeString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 324
    :cond_c
    :goto_9
    iget-object v6, v15, Lcom/android/server/am/PendingIntentRecord;->owner:Lcom/android/server/am/ActivityManagerService;

    iget v11, v15, Lcom/android/server/am/PendingIntentRecord;->uid:I

    .line 325
    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v26

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    .line 324
    move-object/from16 v22, v6

    move/from16 v24, v2

    move/from16 v25, v11

    invoke-virtual/range {v22 .. v28}, Lcom/android/server/am/ActivityManagerService;->tempWhitelistForPendingIntentLocked(IIIJLjava/lang/String;)V

    .line 326
    .end local v5    # "tag":Ljava/lang/StringBuilder;
    goto :goto_a

    .line 327
    :cond_d
    const-string v5, "ActivityManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Not doing whitelist "

    invoke-virtual {v6, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v11, ": caller state="

    invoke-virtual {v6, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .end local v3    # "duration":Ljava/lang/Long;
    .end local v4    # "procState":I
    goto :goto_a

    .line 423
    .end local v2    # "callingUid":I
    .end local v8    # "origId":J
    .end local v10    # "finalIntent":Landroid/content/Intent;
    .end local v18    # "immutable":Z
    .end local v23    # "callingPid":I
    .end local v29    # "mergedOptions":Lcom/android/server/am/SafeActivityOptions;
    :catchall_3
    move-exception v0

    move-object/from16 v7, p4

    goto/16 :goto_0

    .line 333
    .restart local v2    # "callingUid":I
    .restart local v8    # "origId":J
    .restart local v10    # "finalIntent":Landroid/content/Intent;
    .restart local v18    # "immutable":Z
    .restart local v23    # "callingPid":I
    .restart local v29    # "mergedOptions":Lcom/android/server/am/SafeActivityOptions;
    :cond_e
    move-object/from16 v7, p4

    :cond_f
    :goto_a
    if-eqz p5, :cond_10

    move v3, v0

    goto :goto_b

    :cond_10
    move v3, v1

    :goto_b
    move/from16 v22, v3

    .line 334
    .local v22, "sendFinish":Z
    iget-object v3, v15, Lcom/android/server/am/PendingIntentRecord;->key:Lcom/android/server/am/PendingIntentRecord$Key;

    iget v3, v3, Lcom/android/server/am/PendingIntentRecord$Key;->userId:I

    .line 335
    .local v3, "userId":I
    const/4 v4, -0x2

    if-ne v3, v4, :cond_11

    .line 336
    iget-object v4, v15, Lcom/android/server/am/PendingIntentRecord;->owner:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mUserController:Lcom/android/server/am/UserController;

    invoke-virtual {v4}, Lcom/android/server/am/UserController;->getCurrentOrTargetUserId()I

    move-result v4

    move v3, v4

    .line 338
    .end local v3    # "userId":I
    .local v24, "userId":I
    :cond_11
    move/from16 v24, v3

    const/16 v25, 0x0

    .line 339
    .local v25, "res":I
    iget-object v3, v15, Lcom/android/server/am/PendingIntentRecord;->key:Lcom/android/server/am/PendingIntentRecord$Key;

    iget v3, v3, Lcom/android/server/am/PendingIntentRecord$Key;->type:I
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_6

    packed-switch v3, :pswitch_data_0

    .line 411
    move/from16 v26, v2

    move-wide/from16 v30, v8

    move-object/from16 v32, v10

    move-object/from16 v27, v12

    .line 411
    .end local v2    # "callingUid":I
    .end local v8    # "origId":J
    .end local v10    # "finalIntent":Landroid/content/Intent;
    .local v26, "callingUid":I
    .local v30, "origId":J
    .local v32, "finalIntent":Landroid/content/Intent;
    goto/16 :goto_16

    .line 400
    .end local v26    # "callingUid":I
    .end local v30    # "origId":J
    .end local v32    # "finalIntent":Landroid/content/Intent;
    .restart local v2    # "callingUid":I
    .restart local v8    # "origId":J
    .restart local v10    # "finalIntent":Landroid/content/Intent;
    :pswitch_0
    :try_start_c
    iget-object v3, v15, Lcom/android/server/am/PendingIntentRecord;->owner:Lcom/android/server/am/ActivityManagerService;

    iget v4, v15, Lcom/android/server/am/PendingIntentRecord;->uid:I

    iget-object v5, v15, Lcom/android/server/am/PendingIntentRecord;->key:Lcom/android/server/am/PendingIntentRecord$Key;

    iget v5, v5, Lcom/android/server/am/PendingIntentRecord$Key;->type:I

    const/4 v6, 0x5

    if-ne v5, v6, :cond_12

    move v1, v0

    nop

    :cond_12
    iget-object v0, v15, Lcom/android/server/am/PendingIntentRecord;->key:Lcom/android/server/am/PendingIntentRecord$Key;

    iget-object v0, v0, Lcom/android/server/am/PendingIntentRecord$Key;->packageName:Ljava/lang/String;
    :try_end_c
    .catch Ljava/lang/RuntimeException; {:try_start_c .. :try_end_c} :catch_3
    .catch Landroid/os/TransactionTooLargeException; {:try_start_c .. :try_end_c} :catch_2
    .catchall {:try_start_c .. :try_end_c} :catchall_6

    move-object v5, v10

    move-object/from16 v6, v19

    move v7, v1

    move-wide/from16 v30, v8

    move-object v8, v0

    .end local v8    # "origId":J
    .restart local v30    # "origId":J
    move/from16 v9, v24

    :try_start_d
    invoke-virtual/range {v3 .. v9}, Lcom/android/server/am/ActivityManagerService;->startServiceInPackage(ILandroid/content/Intent;Ljava/lang/String;ZLjava/lang/String;I)Landroid/content/ComponentName;
    :try_end_d
    .catch Ljava/lang/RuntimeException; {:try_start_d .. :try_end_d} :catch_1
    .catch Landroid/os/TransactionTooLargeException; {:try_start_d .. :try_end_d} :catch_0
    .catchall {:try_start_d .. :try_end_d} :catchall_6

    goto :goto_f

    .line 405
    :catch_0
    move-exception v0

    goto :goto_c

    .line 403
    :catch_1
    move-exception v0

    goto :goto_e

    .line 405
    .end local v30    # "origId":J
    .restart local v8    # "origId":J
    :catch_2
    move-exception v0

    move-wide/from16 v30, v8

    .line 406
    .end local v8    # "origId":J
    .local v0, "e":Landroid/os/TransactionTooLargeException;
    .restart local v30    # "origId":J
    :goto_c
    const/16 v25, -0x60

    .line 411
    .end local v0    # "e":Landroid/os/TransactionTooLargeException;
    .end local v2    # "callingUid":I
    .end local v10    # "finalIntent":Landroid/content/Intent;
    .end local v25    # "res":I
    .local v9, "res":I
    .restart local v26    # "callingUid":I
    .restart local v32    # "finalIntent":Landroid/content/Intent;
    :cond_13
    :goto_d
    move/from16 v26, v2

    move-object/from16 v32, v10

    move-object/from16 v27, v12

    goto/16 :goto_16

    .line 403
    .end local v9    # "res":I
    .end local v26    # "callingUid":I
    .end local v30    # "origId":J
    .end local v32    # "finalIntent":Landroid/content/Intent;
    .restart local v2    # "callingUid":I
    .restart local v8    # "origId":J
    .restart local v10    # "finalIntent":Landroid/content/Intent;
    .restart local v25    # "res":I
    :catch_3
    move-exception v0

    move-wide/from16 v30, v8

    .line 404
    .end local v8    # "origId":J
    .local v0, "e":Ljava/lang/RuntimeException;
    .restart local v30    # "origId":J
    :goto_e
    :try_start_e
    const-string v1, "ActivityManager"

    const-string v3, "Unable to send startService intent"

    invoke-static {v1, v3, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 407
    .end local v0    # "e":Ljava/lang/RuntimeException;
    .end local v2    # "callingUid":I
    .end local v10    # "finalIntent":Landroid/content/Intent;
    .restart local v26    # "callingUid":I
    .restart local v32    # "finalIntent":Landroid/content/Intent;
    :goto_f
    goto :goto_d

    .line 376
    .end local v26    # "callingUid":I
    .end local v30    # "origId":J
    .end local v32    # "finalIntent":Landroid/content/Intent;
    .restart local v2    # "callingUid":I
    .restart local v8    # "origId":J
    .restart local v10    # "finalIntent":Landroid/content/Intent;
    :pswitch_1
    move-wide/from16 v30, v8

    .line 376
    .end local v8    # "origId":J
    .restart local v30    # "origId":J
    iget-object v0, v15, Lcom/android/server/am/PendingIntentRecord;->key:Lcom/android/server/am/PendingIntentRecord$Key;

    iget-object v0, v0, Lcom/android/server/am/PendingIntentRecord$Key;->activity:Lcom/android/server/am/ActivityRecord;

    invoke-virtual {v0}, Lcom/android/server/am/ActivityRecord;->getStack()Lcom/android/server/am/ActivityStack;

    move-result-object v0

    .line 377
    .local v0, "stack":Lcom/android/server/am/ActivityStack;
    if-eqz v0, :cond_13

    .line 378
    const/4 v4, -0x1

    iget-object v1, v15, Lcom/android/server/am/PendingIntentRecord;->key:Lcom/android/server/am/PendingIntentRecord$Key;

    iget-object v5, v1, Lcom/android/server/am/PendingIntentRecord$Key;->activity:Lcom/android/server/am/ActivityRecord;

    iget-object v1, v15, Lcom/android/server/am/PendingIntentRecord;->key:Lcom/android/server/am/PendingIntentRecord$Key;

    iget-object v6, v1, Lcom/android/server/am/PendingIntentRecord$Key;->who:Ljava/lang/String;

    iget-object v1, v15, Lcom/android/server/am/PendingIntentRecord;->key:Lcom/android/server/am/PendingIntentRecord$Key;

    iget v7, v1, Lcom/android/server/am/PendingIntentRecord$Key;->requestCode:I

    move-object v3, v0

    move/from16 v8, p1

    move-object v9, v10

    invoke-virtual/range {v3 .. v9}, Lcom/android/server/am/ActivityStack;->sendActivityResultLocked(ILcom/android/server/am/ActivityRecord;Ljava/lang/String;IILandroid/content/Intent;)V
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_6

    goto :goto_d

    .line 346
    .end local v0    # "stack":Lcom/android/server/am/ActivityStack;
    .end local v30    # "origId":J
    .restart local v8    # "origId":J
    :pswitch_2
    move-wide/from16 v30, v8

    .line 346
    .end local v8    # "origId":J
    .restart local v30    # "origId":J
    :try_start_f
    iget-object v3, v15, Lcom/android/server/am/PendingIntentRecord;->key:Lcom/android/server/am/PendingIntentRecord$Key;

    iget-object v3, v3, Lcom/android/server/am/PendingIntentRecord$Key;->allIntents:[Landroid/content/Intent;
    :try_end_f
    .catch Ljava/lang/RuntimeException; {:try_start_f .. :try_end_f} :catch_7
    .catchall {:try_start_f .. :try_end_f} :catchall_4

    if-eqz v3, :cond_15

    :try_start_10
    iget-object v3, v15, Lcom/android/server/am/PendingIntentRecord;->key:Lcom/android/server/am/PendingIntentRecord$Key;

    iget-object v3, v3, Lcom/android/server/am/PendingIntentRecord$Key;->allIntents:[Landroid/content/Intent;

    array-length v3, v3

    if-le v3, v0, :cond_15

    .line 347
    iget-object v3, v15, Lcom/android/server/am/PendingIntentRecord;->key:Lcom/android/server/am/PendingIntentRecord$Key;

    iget-object v3, v3, Lcom/android/server/am/PendingIntentRecord$Key;->allIntents:[Landroid/content/Intent;

    array-length v3, v3

    new-array v3, v3, [Landroid/content/Intent;

    move-object v11, v3

    .line 348
    .local v11, "allIntents":[Landroid/content/Intent;
    iget-object v3, v15, Lcom/android/server/am/PendingIntentRecord;->key:Lcom/android/server/am/PendingIntentRecord$Key;

    iget-object v3, v3, Lcom/android/server/am/PendingIntentRecord$Key;->allIntents:[Landroid/content/Intent;

    array-length v3, v3

    new-array v3, v3, [Ljava/lang/String;

    move-object v9, v3

    .line 349
    .local v9, "allResolvedTypes":[Ljava/lang/String;
    iget-object v3, v15, Lcom/android/server/am/PendingIntentRecord;->key:Lcom/android/server/am/PendingIntentRecord$Key;

    iget-object v3, v3, Lcom/android/server/am/PendingIntentRecord$Key;->allIntents:[Landroid/content/Intent;

    iget-object v4, v15, Lcom/android/server/am/PendingIntentRecord;->key:Lcom/android/server/am/PendingIntentRecord$Key;

    iget-object v4, v4, Lcom/android/server/am/PendingIntentRecord$Key;->allIntents:[Landroid/content/Intent;

    array-length v4, v4

    invoke-static {v3, v1, v11, v1, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 351
    iget-object v3, v15, Lcom/android/server/am/PendingIntentRecord;->key:Lcom/android/server/am/PendingIntentRecord$Key;

    iget-object v3, v3, Lcom/android/server/am/PendingIntentRecord$Key;->allResolvedTypes:[Ljava/lang/String;
    :try_end_10
    .catch Ljava/lang/RuntimeException; {:try_start_10 .. :try_end_10} :catch_7
    .catchall {:try_start_10 .. :try_end_10} :catchall_6

    if-eqz v3, :cond_14

    .line 352
    :try_start_11
    iget-object v3, v15, Lcom/android/server/am/PendingIntentRecord;->key:Lcom/android/server/am/PendingIntentRecord$Key;

    iget-object v3, v3, Lcom/android/server/am/PendingIntentRecord$Key;->allResolvedTypes:[Ljava/lang/String;

    iget-object v4, v15, Lcom/android/server/am/PendingIntentRecord;->key:Lcom/android/server/am/PendingIntentRecord$Key;

    iget-object v4, v4, Lcom/android/server/am/PendingIntentRecord$Key;->allResolvedTypes:[Ljava/lang/String;

    array-length v4, v4

    invoke-static {v3, v1, v9, v1, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
    :try_end_11
    .catch Ljava/lang/RuntimeException; {:try_start_11 .. :try_end_11} :catch_4
    .catchall {:try_start_11 .. :try_end_11} :catchall_6

    goto :goto_10

    .line 371
    .end local v9    # "allResolvedTypes":[Ljava/lang/String;
    .end local v11    # "allIntents":[Landroid/content/Intent;
    :catch_4
    move-exception v0

    move/from16 v26, v2

    move-object/from16 v32, v10

    goto/16 :goto_12

    .line 355
    .restart local v9    # "allResolvedTypes":[Ljava/lang/String;
    .restart local v11    # "allIntents":[Landroid/content/Intent;
    :cond_14
    :goto_10
    :try_start_12
    array-length v1, v11

    sub-int/2addr v1, v0

    aput-object v10, v11, v1

    .line 356
    array-length v1, v9

    sub-int/2addr v1, v0

    aput-object v19, v9, v1

    .line 358
    iget-object v0, v15, Lcom/android/server/am/PendingIntentRecord;->owner:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v0}, Lcom/android/server/am/ActivityManagerService;->getActivityStartController()Lcom/android/server/am/ActivityStartController;

    move-result-object v1

    iget v0, v15, Lcom/android/server/am/PendingIntentRecord;->uid:I

    iget-object v3, v15, Lcom/android/server/am/PendingIntentRecord;->key:Lcom/android/server/am/PendingIntentRecord$Key;

    iget-object v3, v3, Lcom/android/server/am/PendingIntentRecord$Key;->packageName:Ljava/lang/String;
    :try_end_12
    .catch Ljava/lang/RuntimeException; {:try_start_12 .. :try_end_12} :catch_7
    .catchall {:try_start_12 .. :try_end_12} :catchall_6

    const/16 v16, 0x0

    move/from16 v26, v2

    move v2, v0

    .end local v2    # "callingUid":I
    .restart local v26    # "callingUid":I
    move-object v4, v11

    move-object v5, v9

    move-object/from16 v6, p7

    move-object/from16 v7, v29

    move/from16 v8, v24

    move-object v0, v9

    move/from16 v9, v16

    .line 358
    .end local v9    # "allResolvedTypes":[Ljava/lang/String;
    .local v0, "allResolvedTypes":[Ljava/lang/String;
    move-object/from16 v32, v10

    move-object v10, v15

    .line 358
    .end local v10    # "finalIntent":Landroid/content/Intent;
    .restart local v32    # "finalIntent":Landroid/content/Intent;
    :try_start_13
    invoke-virtual/range {v1 .. v10}, Lcom/android/server/am/ActivityStartController;->startActivitiesInPackage(ILjava/lang/String;[Landroid/content/Intent;[Ljava/lang/String;Landroid/os/IBinder;Lcom/android/server/am/SafeActivityOptions;IZLcom/android/server/am/PendingIntentRecord;)I

    move-result v1
    :try_end_13
    .catch Ljava/lang/RuntimeException; {:try_start_13 .. :try_end_13} :catch_6
    .catchall {:try_start_13 .. :try_end_13} :catchall_6

    move v0, v1

    .line 363
    .end local v11    # "allIntents":[Landroid/content/Intent;
    .end local v25    # "res":I
    .local v0, "res":I
    nop

    .line 373
    move/from16 v25, v0

    move-object/from16 v27, v12

    goto :goto_11

    .line 364
    .end local v0    # "res":I
    .end local v26    # "callingUid":I
    .end local v32    # "finalIntent":Landroid/content/Intent;
    .restart local v2    # "callingUid":I
    .restart local v10    # "finalIntent":Landroid/content/Intent;
    .restart local v25    # "res":I
    :cond_15
    move/from16 v26, v2

    move-object/from16 v32, v10

    .line 364
    .end local v2    # "callingUid":I
    .end local v10    # "finalIntent":Landroid/content/Intent;
    .restart local v26    # "callingUid":I
    .restart local v32    # "finalIntent":Landroid/content/Intent;
    :try_start_14
    iget-object v0, v15, Lcom/android/server/am/PendingIntentRecord;->owner:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v0}, Lcom/android/server/am/ActivityManagerService;->getActivityStartController()Lcom/android/server/am/ActivityStartController;

    move-result-object v1

    iget v2, v15, Lcom/android/server/am/PendingIntentRecord;->uid:I

    iget-object v0, v15, Lcom/android/server/am/PendingIntentRecord;->key:Lcom/android/server/am/PendingIntentRecord$Key;

    iget-object v5, v0, Lcom/android/server/am/PendingIntentRecord$Key;->packageName:Ljava/lang/String;

    const/4 v11, 0x0

    const/4 v0, 0x0

    const-string v16, "PendingIntentRecord"
    :try_end_14
    .catch Ljava/lang/RuntimeException; {:try_start_14 .. :try_end_14} :catch_6
    .catchall {:try_start_14 .. :try_end_14} :catchall_4

    const/16 v17, 0x0

    move/from16 v3, v23

    move/from16 v4, v26

    move-object/from16 v6, v32

    move-object/from16 v7, v19

    move-object/from16 v8, p7

    move-object/from16 v9, p8

    move/from16 v10, p9

    move-object/from16 v27, v12

    move-object/from16 v12, v29

    move/from16 v13, v24

    move-object v14, v0

    move-object/from16 v15, v16

    move/from16 v16, v17

    move-object/from16 v17, p0

    :try_start_15
    invoke-virtual/range {v1 .. v17}, Lcom/android/server/am/ActivityStartController;->startActivityInPackage(IIILjava/lang/String;Landroid/content/Intent;Ljava/lang/String;Landroid/os/IBinder;Ljava/lang/String;IILcom/android/server/am/SafeActivityOptions;ILcom/android/server/am/TaskRecord;Ljava/lang/String;ZLcom/android/server/am/PendingIntentRecord;)I

    move-result v0
    :try_end_15
    .catch Ljava/lang/RuntimeException; {:try_start_15 .. :try_end_15} :catch_5
    .catchall {:try_start_15 .. :try_end_15} :catchall_5

    .line 373
    .end local v25    # "res":I
    .restart local v0    # "res":I
    move/from16 v25, v0

    .line 411
    .end local v0    # "res":I
    .local v9, "res":I
    :goto_11
    move-object/from16 v15, p0

    goto/16 :goto_16

    .line 371
    .end local v9    # "res":I
    .restart local v25    # "res":I
    :catch_5
    move-exception v0

    goto :goto_14

    :catch_6
    move-exception v0

    :goto_12
    move-object/from16 v27, v12

    goto :goto_14

    .line 423
    .end local v18    # "immutable":Z
    .end local v22    # "sendFinish":Z
    .end local v23    # "callingPid":I
    .end local v24    # "userId":I
    .end local v25    # "res":I
    .end local v26    # "callingUid":I
    .end local v29    # "mergedOptions":Lcom/android/server/am/SafeActivityOptions;
    .end local v30    # "origId":J
    .end local v32    # "finalIntent":Landroid/content/Intent;
    :catchall_4
    move-exception v0

    move-object/from16 v27, v12

    :goto_13
    move-object/from16 v15, p0

    goto/16 :goto_1b

    .line 371
    .restart local v2    # "callingUid":I
    .restart local v10    # "finalIntent":Landroid/content/Intent;
    .restart local v18    # "immutable":Z
    .restart local v22    # "sendFinish":Z
    .restart local v23    # "callingPid":I
    .restart local v24    # "userId":I
    .restart local v25    # "res":I
    .restart local v29    # "mergedOptions":Lcom/android/server/am/SafeActivityOptions;
    .restart local v30    # "origId":J
    :catch_7
    move-exception v0

    move/from16 v26, v2

    move-object/from16 v32, v10

    move-object/from16 v27, v12

    .line 372
    .end local v2    # "callingUid":I
    .end local v10    # "finalIntent":Landroid/content/Intent;
    .local v0, "e":Ljava/lang/RuntimeException;
    .restart local v26    # "callingUid":I
    .restart local v32    # "finalIntent":Landroid/content/Intent;
    :goto_14
    :try_start_16
    const-string v1, "ActivityManager"

    const-string v2, "Unable to send startActivity intent"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_16
    .catchall {:try_start_16 .. :try_end_16} :catchall_5

    .line 374
    .end local v0    # "e":Ljava/lang/RuntimeException;
    goto :goto_11

    .line 423
    .end local v18    # "immutable":Z
    .end local v22    # "sendFinish":Z
    .end local v23    # "callingPid":I
    .end local v24    # "userId":I
    .end local v25    # "res":I
    .end local v26    # "callingUid":I
    .end local v29    # "mergedOptions":Lcom/android/server/am/SafeActivityOptions;
    .end local v30    # "origId":J
    .end local v32    # "finalIntent":Landroid/content/Intent;
    :catchall_5
    move-exception v0

    goto :goto_13

    .line 386
    .restart local v2    # "callingUid":I
    .restart local v8    # "origId":J
    .restart local v10    # "finalIntent":Landroid/content/Intent;
    .restart local v18    # "immutable":Z
    .restart local v22    # "sendFinish":Z
    .restart local v23    # "callingPid":I
    .restart local v24    # "userId":I
    .restart local v25    # "res":I
    .restart local v29    # "mergedOptions":Lcom/android/server/am/SafeActivityOptions;
    :pswitch_3
    move/from16 v26, v2

    move-wide/from16 v30, v8

    move-object/from16 v32, v10

    move-object/from16 v27, v12

    .line 386
    .end local v2    # "callingUid":I
    .end local v8    # "origId":J
    .end local v10    # "finalIntent":Landroid/content/Intent;
    .restart local v26    # "callingUid":I
    .restart local v30    # "origId":J
    .restart local v32    # "finalIntent":Landroid/content/Intent;
    move-object/from16 v15, p0

    :try_start_17
    iget-object v2, v15, Lcom/android/server/am/PendingIntentRecord;->owner:Lcom/android/server/am/ActivityManagerService;

    iget-object v3, v15, Lcom/android/server/am/PendingIntentRecord;->key:Lcom/android/server/am/PendingIntentRecord$Key;

    iget-object v3, v3, Lcom/android/server/am/PendingIntentRecord$Key;->packageName:Ljava/lang/String;

    iget v4, v15, Lcom/android/server/am/PendingIntentRecord;->uid:I

    const/4 v8, 0x0

    const/4 v9, 0x0

    if-eqz p5, :cond_16

    move v12, v0

    goto :goto_15

    :cond_16
    move v12, v1

    :goto_15
    const/4 v13, 0x0

    move-object v1, v2

    move-object v2, v3

    move v3, v4

    move-object/from16 v4, v32

    move-object/from16 v5, v19

    move-object/from16 v6, p5

    move/from16 v7, p1

    move-object/from16 v10, p6

    move-object/from16 v11, p12

    move/from16 v14, v24

    invoke-virtual/range {v1 .. v14}, Lcom/android/server/am/ActivityManagerService;->broadcastIntentInPackage(Ljava/lang/String;ILandroid/content/Intent;Ljava/lang/String;Landroid/content/IIntentReceiver;ILjava/lang/String;Landroid/os/Bundle;Ljava/lang/String;Landroid/os/Bundle;ZZI)I

    move-result v0
    :try_end_17
    .catch Ljava/lang/RuntimeException; {:try_start_17 .. :try_end_17} :catch_8
    .catchall {:try_start_17 .. :try_end_17} :catchall_a

    .line 390
    .local v0, "sent":I
    if-nez v0, :cond_17

    .line 391
    const/16 v22, 0x0

    .line 395
    .end local v0    # "sent":I
    :cond_17
    goto :goto_16

    .line 393
    :catch_8
    move-exception v0

    .line 394
    .local v0, "e":Ljava/lang/RuntimeException;
    :try_start_18
    const-string v1, "ActivityManager"

    const-string v2, "Unable to send startActivity intent"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_18
    .catchall {:try_start_18 .. :try_end_18} :catchall_a

    .line 396
    .end local v0    # "e":Ljava/lang/RuntimeException;
    nop

    .line 411
    .end local v25    # "res":I
    .restart local v9    # "res":I
    :goto_16
    move/from16 v9, v25

    if-eqz v22, :cond_18

    const/16 v1, -0x60

    if-eq v9, v1, :cond_18

    .line 413
    :try_start_19
    new-instance v2, Landroid/content/Intent;
    :try_end_19
    .catch Landroid/os/RemoteException; {:try_start_19 .. :try_end_19} :catch_a
    .catchall {:try_start_19 .. :try_end_19} :catchall_a

    move-object/from16 v10, v32

    :try_start_1a
    invoke-direct {v2, v10}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    .line 413
    .end local v32    # "finalIntent":Landroid/content/Intent;
    .restart local v10    # "finalIntent":Landroid/content/Intent;
    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    iget-object v0, v15, Lcom/android/server/am/PendingIntentRecord;->key:Lcom/android/server/am/PendingIntentRecord$Key;

    iget v8, v0, Lcom/android/server/am/PendingIntentRecord$Key;->userId:I

    move-object/from16 v1, p5

    invoke-interface/range {v1 .. v8}, Landroid/content/IIntentReceiver;->performReceive(Landroid/content/Intent;ILjava/lang/String;Landroid/os/Bundle;ZZI)V
    :try_end_1a
    .catch Landroid/os/RemoteException; {:try_start_1a .. :try_end_1a} :catch_9
    .catchall {:try_start_1a .. :try_end_1a} :catchall_a

    .line 416
    goto :goto_18

    .line 415
    :catch_9
    move-exception v0

    goto :goto_17

    .line 415
    .end local v10    # "finalIntent":Landroid/content/Intent;
    .restart local v32    # "finalIntent":Landroid/content/Intent;
    :catch_a
    move-exception v0

    move-object/from16 v10, v32

    .line 415
    .end local v32    # "finalIntent":Landroid/content/Intent;
    .restart local v10    # "finalIntent":Landroid/content/Intent;
    :goto_17
    goto :goto_18

    .line 419
    .end local v10    # "finalIntent":Landroid/content/Intent;
    .restart local v32    # "finalIntent":Landroid/content/Intent;
    :cond_18
    move-object/from16 v10, v32

    .line 419
    .end local v32    # "finalIntent":Landroid/content/Intent;
    .restart local v10    # "finalIntent":Landroid/content/Intent;
    :goto_18
    move-wide/from16 v1, v30

    :try_start_1b
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 421
    .end local v30    # "origId":J
    .local v1, "origId":J
    monitor-exit v27
    :try_end_1b
    .catchall {:try_start_1b .. :try_end_1b} :catchall_a

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    return v9

    .line 423
    .end local v1    # "origId":J
    .end local v9    # "res":I
    .end local v10    # "finalIntent":Landroid/content/Intent;
    .end local v18    # "immutable":Z
    .end local v22    # "sendFinish":Z
    .end local v23    # "callingPid":I
    .end local v24    # "userId":I
    .end local v26    # "callingUid":I
    .end local v29    # "mergedOptions":Lcom/android/server/am/SafeActivityOptions;
    :catchall_6
    move-exception v0

    goto/16 :goto_0

    .line 423
    .end local v19    # "resolvedType":Ljava/lang/String;
    .end local v20    # "flagsMask":I
    .end local v21    # "flagsValues":I
    .restart local p3    # "resolvedType":Ljava/lang/String;
    .restart local p10    # "flagsMask":I
    .restart local p11    # "flagsValues":I
    :catchall_7
    move-exception v0

    goto :goto_19

    :cond_19
    move/from16 v3, p10

    move-object/from16 v27, v12

    const/16 v1, -0x60

    :try_start_1c
    monitor-exit v27
    :try_end_1c
    .catchall {:try_start_1c .. :try_end_1c} :catchall_8

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    .line 424
    return v1

    .line 423
    :catchall_8
    move-exception v0

    goto :goto_1a

    :catchall_9
    move-exception v0

    move/from16 v3, p10

    .line 423
    .end local p3    # "resolvedType":Ljava/lang/String;
    .end local p10    # "flagsMask":I
    .end local p11    # "flagsValues":I
    .restart local v19    # "resolvedType":Ljava/lang/String;
    .restart local v20    # "flagsMask":I
    .restart local v21    # "flagsValues":I
    :goto_19
    move-object/from16 v27, v12

    :goto_1a
    move-object/from16 v19, p3

    move/from16 v21, p11

    move/from16 v20, v3

    :goto_1b
    :try_start_1d
    monitor-exit v27
    :try_end_1d
    .catchall {:try_start_1d .. :try_end_1d} :catchall_a

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw v0

    :catchall_a
    move-exception v0

    goto :goto_1b

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public sendWithResult(ILandroid/content/Intent;Ljava/lang/String;Landroid/os/IBinder;Landroid/content/IIntentReceiver;Ljava/lang/String;Landroid/os/Bundle;)I
    .locals 13
    .param p1, "code"    # I
    .param p2, "intent"    # Landroid/content/Intent;
    .param p3, "resolvedType"    # Ljava/lang/String;
    .param p4, "whitelistToken"    # Landroid/os/IBinder;
    .param p5, "finishedReceiver"    # Landroid/content/IIntentReceiver;
    .param p6, "requiredPermission"    # Ljava/lang/String;
    .param p7, "options"    # Landroid/os/Bundle;

    .line 248
    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    move-object/from16 v6, p6

    move-object/from16 v12, p7

    invoke-virtual/range {v0 .. v12}, Lcom/android/server/am/PendingIntentRecord;->sendInner(ILandroid/content/Intent;Ljava/lang/String;Landroid/os/IBinder;Landroid/content/IIntentReceiver;Ljava/lang/String;Landroid/os/IBinder;Ljava/lang/String;IIILandroid/os/Bundle;)I

    move-result v0

    return v0
.end method

.method public setRequestIntentForNotification()V
    .locals 1

    .line 522
    iget-object v0, p0, Lcom/android/server/am/PendingIntentRecord;->key:Lcom/android/server/am/PendingIntentRecord$Key;

    iget-object v0, v0, Lcom/android/server/am/PendingIntentRecord$Key;->requestIntent:Landroid/content/Intent;

    if-eqz v0, :cond_0

    .line 523
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/am/PendingIntentRecord;->isDataCollection:Z

    .line 525
    :cond_0
    return-void
.end method

.method setWhitelistDurationLocked(Landroid/os/IBinder;J)V
    .locals 3
    .param p1, "whitelistToken"    # Landroid/os/IBinder;
    .param p2, "duration"    # J

    .line 202
    const-wide/16 v0, 0x0

    cmp-long v0, p2, v0

    const/4 v1, 0x0

    if-lez v0, :cond_1

    .line 203
    iget-object v0, p0, Lcom/android/server/am/PendingIntentRecord;->whitelistDuration:Landroid/util/ArrayMap;

    if-nez v0, :cond_0

    .line 204
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/PendingIntentRecord;->whitelistDuration:Landroid/util/ArrayMap;

    .line 206
    :cond_0
    iget-object v0, p0, Lcom/android/server/am/PendingIntentRecord;->whitelistDuration:Landroid/util/ArrayMap;

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, p1, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 207
    :cond_1
    iget-object v0, p0, Lcom/android/server/am/PendingIntentRecord;->whitelistDuration:Landroid/util/ArrayMap;

    if-eqz v0, :cond_2

    .line 208
    iget-object v0, p0, Lcom/android/server/am/PendingIntentRecord;->whitelistDuration:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 209
    iget-object v0, p0, Lcom/android/server/am/PendingIntentRecord;->whitelistDuration:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    move-result v0

    if-gtz v0, :cond_2

    .line 210
    iput-object v1, p0, Lcom/android/server/am/PendingIntentRecord;->whitelistDuration:Landroid/util/ArrayMap;

    .line 214
    :cond_2
    :goto_0
    iput-object v1, p0, Lcom/android/server/am/PendingIntentRecord;->stringName:Ljava/lang/String;

    .line 215
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .line 493
    iget-object v0, p0, Lcom/android/server/am/PendingIntentRecord;->stringName:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 494
    iget-object v0, p0, Lcom/android/server/am/PendingIntentRecord;->stringName:Ljava/lang/String;

    return-object v0

    .line 496
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x80

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 497
    .local v0, "sb":Ljava/lang/StringBuilder;
    const-string v1, "PendingIntentRecord{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 498
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 499
    const/16 v1, 0x20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 500
    iget-object v2, p0, Lcom/android/server/am/PendingIntentRecord;->key:Lcom/android/server/am/PendingIntentRecord$Key;

    iget-object v2, v2, Lcom/android/server/am/PendingIntentRecord$Key;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 501
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 502
    iget-object v1, p0, Lcom/android/server/am/PendingIntentRecord;->key:Lcom/android/server/am/PendingIntentRecord$Key;

    invoke-virtual {v1}, Lcom/android/server/am/PendingIntentRecord$Key;->typeName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 503
    iget-object v1, p0, Lcom/android/server/am/PendingIntentRecord;->whitelistDuration:Landroid/util/ArrayMap;

    if-eqz v1, :cond_3

    .line 504
    const-string v1, " (whitelist: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 505
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Lcom/android/server/am/PendingIntentRecord;->whitelistDuration:Landroid/util/ArrayMap;

    invoke-virtual {v2}, Landroid/util/ArrayMap;->size()I

    move-result v2

    if-ge v1, v2, :cond_2

    .line 506
    if-eqz v1, :cond_1

    .line 507
    const-string v2, ","

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 509
    :cond_1
    iget-object v2, p0, Lcom/android/server/am/PendingIntentRecord;->whitelistDuration:Landroid/util/ArrayMap;

    invoke-virtual {v2, v1}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 510
    const-string v2, ":"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 511
    iget-object v2, p0, Lcom/android/server/am/PendingIntentRecord;->whitelistDuration:Landroid/util/ArrayMap;

    invoke-virtual {v2, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-static {v2, v3, v0}, Landroid/util/TimeUtils;->formatDuration(JLjava/lang/StringBuilder;)V

    .line 505
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 513
    .end local v1    # "i":I
    :cond_2
    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 515
    :cond_3
    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 516
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/am/PendingIntentRecord;->stringName:Ljava/lang/String;

    return-object v1
.end method

.method public unregisterCancelListenerLocked(Lcom/android/internal/os/IResultReceiver;)V
    .locals 1
    .param p1, "receiver"    # Lcom/android/internal/os/IResultReceiver;

    .line 225
    iget-object v0, p0, Lcom/android/server/am/PendingIntentRecord;->mCancelCallbacks:Landroid/os/RemoteCallbackList;

    if-nez v0, :cond_0

    .line 226
    return-void

    .line 228
    :cond_0
    iget-object v0, p0, Lcom/android/server/am/PendingIntentRecord;->mCancelCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0, p1}, Landroid/os/RemoteCallbackList;->unregister(Landroid/os/IInterface;)Z

    .line 229
    iget-object v0, p0, Lcom/android/server/am/PendingIntentRecord;->mCancelCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0}, Landroid/os/RemoteCallbackList;->getRegisteredCallbackCount()I

    move-result v0

    if-gtz v0, :cond_1

    .line 230
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/am/PendingIntentRecord;->mCancelCallbacks:Landroid/os/RemoteCallbackList;

    .line 232
    :cond_1
    return-void
.end method
