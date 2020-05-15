.class Landroid/content/AbstractThreadedSyncAdapter$ISyncAdapterImpl;
.super Landroid/content/ISyncAdapter$Stub;
.source "AbstractThreadedSyncAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/content/AbstractThreadedSyncAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ISyncAdapterImpl"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/content/AbstractThreadedSyncAdapter;


# direct methods
.method private constructor <init>(Landroid/content/AbstractThreadedSyncAdapter;)V
    .locals 0

    .line 173
    iput-object p1, p0, Landroid/content/AbstractThreadedSyncAdapter$ISyncAdapterImpl;->this$0:Landroid/content/AbstractThreadedSyncAdapter;

    invoke-direct {p0}, Landroid/content/ISyncAdapter$Stub;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Landroid/content/AbstractThreadedSyncAdapter;Landroid/content/AbstractThreadedSyncAdapter$1;)V
    .locals 0
    .param p1, "x0"    # Landroid/content/AbstractThreadedSyncAdapter;
    .param p2, "x1"    # Landroid/content/AbstractThreadedSyncAdapter$1;

    .line 173
    invoke-direct {p0, p1}, Landroid/content/AbstractThreadedSyncAdapter$ISyncAdapterImpl;-><init>(Landroid/content/AbstractThreadedSyncAdapter;)V

    return-void
.end method

.method static synthetic lambda$onUnsyncableAccount$0(Ljava/lang/Object;Landroid/content/ISyncAdapterUnsyncableAccountCallback;)V
    .locals 1
    .param p0, "rec$"    # Ljava/lang/Object;
    .param p1, "x$0"    # Landroid/content/ISyncAdapterUnsyncableAccountCallback;

    .line 177
    move-object v0, p0

    check-cast v0, Landroid/content/AbstractThreadedSyncAdapter;

    invoke-static {v0, p1}, Landroid/content/AbstractThreadedSyncAdapter;->access$1200(Landroid/content/AbstractThreadedSyncAdapter;Landroid/content/ISyncAdapterUnsyncableAccountCallback;)V

    return-void
.end method


# virtual methods
.method public cancelSync(Landroid/content/ISyncContext;)V
    .locals 6
    .param p1, "syncContext"    # Landroid/content/ISyncContext;

    .line 248
    const/4 v0, 0x0

    .line 249
    .local v0, "info":Landroid/content/AbstractThreadedSyncAdapter$SyncThread;
    :try_start_0
    iget-object v1, p0, Landroid/content/AbstractThreadedSyncAdapter$ISyncAdapterImpl;->this$0:Landroid/content/AbstractThreadedSyncAdapter;

    invoke-static {v1}, Landroid/content/AbstractThreadedSyncAdapter;->access$300(Landroid/content/AbstractThreadedSyncAdapter;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 250
    :try_start_1
    iget-object v2, p0, Landroid/content/AbstractThreadedSyncAdapter$ISyncAdapterImpl;->this$0:Landroid/content/AbstractThreadedSyncAdapter;

    invoke-static {v2}, Landroid/content/AbstractThreadedSyncAdapter;->access$400(Landroid/content/AbstractThreadedSyncAdapter;)Ljava/util/HashMap;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/AbstractThreadedSyncAdapter$SyncThread;

    .line 251
    .local v3, "current":Landroid/content/AbstractThreadedSyncAdapter$SyncThread;
    invoke-static {v3}, Landroid/content/AbstractThreadedSyncAdapter$SyncThread;->access$800(Landroid/content/AbstractThreadedSyncAdapter$SyncThread;)Landroid/content/SyncContext;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/SyncContext;->getSyncContextBinder()Landroid/os/IBinder;

    move-result-object v4

    invoke-interface {p1}, Landroid/content/ISyncContext;->asBinder()Landroid/os/IBinder;

    move-result-object v5

    if-ne v4, v5, :cond_0

    .line 252
    move-object v0, v3

    .line 253
    goto :goto_1

    .line 255
    .end local v3    # "current":Landroid/content/AbstractThreadedSyncAdapter$SyncThread;
    :cond_0
    goto :goto_0

    .line 256
    :cond_1
    :goto_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 257
    if-eqz v0, :cond_4

    .line 258
    :try_start_2
    invoke-static {}, Landroid/content/AbstractThreadedSyncAdapter;->access$100()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 259
    const-string v1, "SyncAdapter"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "cancelSync() "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Landroid/content/AbstractThreadedSyncAdapter$SyncThread;->access$900(Landroid/content/AbstractThreadedSyncAdapter$SyncThread;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Landroid/content/AbstractThreadedSyncAdapter$SyncThread;->access$1000(Landroid/content/AbstractThreadedSyncAdapter$SyncThread;)Landroid/accounts/Account;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 261
    :cond_2
    iget-object v1, p0, Landroid/content/AbstractThreadedSyncAdapter$ISyncAdapterImpl;->this$0:Landroid/content/AbstractThreadedSyncAdapter;

    invoke-static {v1}, Landroid/content/AbstractThreadedSyncAdapter;->access$1100(Landroid/content/AbstractThreadedSyncAdapter;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 262
    iget-object v1, p0, Landroid/content/AbstractThreadedSyncAdapter$ISyncAdapterImpl;->this$0:Landroid/content/AbstractThreadedSyncAdapter;

    invoke-virtual {v1, v0}, Landroid/content/AbstractThreadedSyncAdapter;->onSyncCanceled(Ljava/lang/Thread;)V

    goto :goto_2

    .line 264
    :cond_3
    iget-object v1, p0, Landroid/content/AbstractThreadedSyncAdapter$ISyncAdapterImpl;->this$0:Landroid/content/AbstractThreadedSyncAdapter;

    invoke-virtual {v1}, Landroid/content/AbstractThreadedSyncAdapter;->onSyncCanceled()V

    goto :goto_2

    .line 267
    :cond_4
    invoke-static {}, Landroid/content/AbstractThreadedSyncAdapter;->access$100()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 268
    const-string v1, "SyncAdapter"

    const-string v2, "cancelSync() unknown context"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/Error; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 277
    .end local v0    # "info":Landroid/content/AbstractThreadedSyncAdapter$SyncThread;
    :cond_5
    :goto_2
    invoke-static {}, Landroid/content/AbstractThreadedSyncAdapter;->access$100()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 278
    const-string v0, "SyncAdapter"

    const-string v1, "cancelSync() finishing"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 281
    :cond_6
    return-void

    .line 256
    .restart local v0    # "info":Landroid/content/AbstractThreadedSyncAdapter$SyncThread;
    :catchall_0
    move-exception v2

    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v2
    :try_end_4
    .catch Ljava/lang/RuntimeException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/lang/Error; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 277
    .end local v0    # "info":Landroid/content/AbstractThreadedSyncAdapter$SyncThread;
    :catchall_1
    move-exception v0

    goto :goto_3

    .line 271
    :catch_0
    move-exception v0

    .line 272
    .local v0, "th":Ljava/lang/Throwable;
    :try_start_5
    invoke-static {}, Landroid/content/AbstractThreadedSyncAdapter;->access$100()Z

    move-result v1

    if-eqz v1, :cond_7

    .line 273
    const-string v1, "SyncAdapter"

    const-string v2, "cancelSync() caught exception"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 275
    :cond_7
    throw v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 277
    .end local v0    # "th":Ljava/lang/Throwable;
    :goto_3
    invoke-static {}, Landroid/content/AbstractThreadedSyncAdapter;->access$100()Z

    move-result v1

    if-eqz v1, :cond_8

    .line 278
    const-string v1, "SyncAdapter"

    const-string v2, "cancelSync() finishing"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_8
    throw v0
.end method

.method public onUnsyncableAccount(Landroid/content/ISyncAdapterUnsyncableAccountCallback;)V
    .locals 3
    .param p1, "cb"    # Landroid/content/ISyncAdapterUnsyncableAccountCallback;

    .line 176
    invoke-static {}, Landroid/os/Handler;->getMain()Landroid/os/Handler;

    move-result-object v0

    sget-object v1, Landroid/content/-$$Lambda$AbstractThreadedSyncAdapter$ISyncAdapterImpl$L6ZtOCe8gjKwJj0908ytPlrD8Rc;->INSTANCE:Landroid/content/-$$Lambda$AbstractThreadedSyncAdapter$ISyncAdapterImpl$L6ZtOCe8gjKwJj0908ytPlrD8Rc;

    iget-object v2, p0, Landroid/content/AbstractThreadedSyncAdapter$ISyncAdapterImpl;->this$0:Landroid/content/AbstractThreadedSyncAdapter;

    invoke-static {v1, v2, p1}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Ljava/util/function/BiConsumer;Ljava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 179
    return-void
.end method

.method public startSync(Landroid/content/ISyncContext;Ljava/lang/String;Landroid/accounts/Account;Landroid/os/Bundle;)V
    .locals 17
    .param p1, "syncContext"    # Landroid/content/ISyncContext;
    .param p2, "authority"    # Ljava/lang/String;
    .param p3, "account"    # Landroid/accounts/Account;
    .param p4, "extras"    # Landroid/os/Bundle;

    move-object/from16 v1, p0

    move-object/from16 v10, p2

    move-object/from16 v11, p3

    .line 184
    move-object/from16 v12, p4

    invoke-static {}, Landroid/content/AbstractThreadedSyncAdapter;->access$100()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 185
    if-eqz v12, :cond_0

    .line 186
    invoke-virtual/range {p4 .. p4}, Landroid/os/Bundle;->size()I

    .line 188
    :cond_0
    const-string v0, "SyncAdapter"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "startSync() start "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 191
    :cond_1
    :try_start_0
    new-instance v0, Landroid/content/SyncContext;
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    move-object/from16 v13, p1

    :try_start_1
    invoke-direct {v0, v13}, Landroid/content/SyncContext;-><init>(Landroid/content/ISyncContext;)V

    move-object v14, v0

    .line 196
    .local v14, "syncContextClient":Landroid/content/SyncContext;
    iget-object v0, v1, Landroid/content/AbstractThreadedSyncAdapter$ISyncAdapterImpl;->this$0:Landroid/content/AbstractThreadedSyncAdapter;

    invoke-static {v0, v11}, Landroid/content/AbstractThreadedSyncAdapter;->access$200(Landroid/content/AbstractThreadedSyncAdapter;Landroid/accounts/Account;)Landroid/accounts/Account;

    move-result-object v0

    move-object v15, v0

    .line 197
    .local v15, "threadsKey":Landroid/accounts/Account;
    iget-object v0, v1, Landroid/content/AbstractThreadedSyncAdapter$ISyncAdapterImpl;->this$0:Landroid/content/AbstractThreadedSyncAdapter;

    invoke-static {v0}, Landroid/content/AbstractThreadedSyncAdapter;->access$300(Landroid/content/AbstractThreadedSyncAdapter;)Ljava/lang/Object;

    move-result-object v16

    monitor-enter v16
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Error; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 198
    :try_start_2
    iget-object v0, v1, Landroid/content/AbstractThreadedSyncAdapter$ISyncAdapterImpl;->this$0:Landroid/content/AbstractThreadedSyncAdapter;

    invoke-static {v0}, Landroid/content/AbstractThreadedSyncAdapter;->access$400(Landroid/content/AbstractThreadedSyncAdapter;)Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {v0, v15}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    const/4 v2, 0x1

    if-nez v0, :cond_5

    .line 199
    iget-object v0, v1, Landroid/content/AbstractThreadedSyncAdapter$ISyncAdapterImpl;->this$0:Landroid/content/AbstractThreadedSyncAdapter;

    invoke-static {v0}, Landroid/content/AbstractThreadedSyncAdapter;->access$500(Landroid/content/AbstractThreadedSyncAdapter;)Z

    move-result v0

    if-eqz v0, :cond_4

    if-eqz v12, :cond_4

    const-string v0, "initialize"

    const/4 v3, 0x0

    .line 201
    invoke-virtual {v12, v0, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    if-eqz v0, :cond_4

    .line 204
    :try_start_3
    invoke-static {v11, v10}, Landroid/content/ContentResolver;->getIsSyncable(Landroid/accounts/Account;Ljava/lang/String;)I

    move-result v0

    if-gez v0, :cond_2

    .line 205
    invoke-static {v11, v10, v2}, Landroid/content/ContentResolver;->setIsSyncable(Landroid/accounts/Account;Ljava/lang/String;I)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 208
    :cond_2
    :try_start_4
    new-instance v0, Landroid/content/SyncResult;

    invoke-direct {v0}, Landroid/content/SyncResult;-><init>()V

    invoke-virtual {v14, v0}, Landroid/content/SyncContext;->onFinished(Landroid/content/SyncResult;)V

    .line 209
    nop

    .line 210
    monitor-exit v16
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 237
    invoke-static {}, Landroid/content/AbstractThreadedSyncAdapter;->access$100()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 238
    const-string v0, "SyncAdapter"

    const-string/jumbo v2, "startSync() finishing"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 210
    :cond_3
    return-void

    .line 208
    :catchall_0
    move-exception v0

    :try_start_5
    new-instance v2, Landroid/content/SyncResult;

    invoke-direct {v2}, Landroid/content/SyncResult;-><init>()V

    invoke-virtual {v14, v2}, Landroid/content/SyncContext;->onFinished(Landroid/content/SyncResult;)V

    throw v0

    .line 212
    :cond_4
    new-instance v0, Landroid/content/AbstractThreadedSyncAdapter$SyncThread;

    iget-object v3, v1, Landroid/content/AbstractThreadedSyncAdapter$ISyncAdapterImpl;->this$0:Landroid/content/AbstractThreadedSyncAdapter;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "SyncAdapterThread-"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v1, Landroid/content/AbstractThreadedSyncAdapter$ISyncAdapterImpl;->this$0:Landroid/content/AbstractThreadedSyncAdapter;

    .line 213
    invoke-static {v4}, Landroid/content/AbstractThreadedSyncAdapter;->access$600(Landroid/content/AbstractThreadedSyncAdapter;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    move-result v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v9, 0x0

    move-object v2, v0

    move-object v5, v14

    move-object v6, v10

    move-object v7, v11

    move-object v8, v12

    invoke-direct/range {v2 .. v9}, Landroid/content/AbstractThreadedSyncAdapter$SyncThread;-><init>(Landroid/content/AbstractThreadedSyncAdapter;Ljava/lang/String;Landroid/content/SyncContext;Ljava/lang/String;Landroid/accounts/Account;Landroid/os/Bundle;Landroid/content/AbstractThreadedSyncAdapter$1;)V

    .line 215
    .local v0, "syncThread":Landroid/content/AbstractThreadedSyncAdapter$SyncThread;
    iget-object v2, v1, Landroid/content/AbstractThreadedSyncAdapter$ISyncAdapterImpl;->this$0:Landroid/content/AbstractThreadedSyncAdapter;

    invoke-static {v2}, Landroid/content/AbstractThreadedSyncAdapter;->access$400(Landroid/content/AbstractThreadedSyncAdapter;)Ljava/util/HashMap;

    move-result-object v2

    invoke-virtual {v2, v15, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 216
    invoke-virtual {v0}, Landroid/content/AbstractThreadedSyncAdapter$SyncThread;->start()V

    .line 217
    const/4 v2, 0x0

    .line 218
    .end local v0    # "syncThread":Landroid/content/AbstractThreadedSyncAdapter$SyncThread;
    .local v2, "alreadyInProgress":Z
    goto :goto_0

    .line 219
    .end local v2    # "alreadyInProgress":Z
    :cond_5
    invoke-static {}, Landroid/content/AbstractThreadedSyncAdapter;->access$100()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 220
    const-string v0, "SyncAdapter"

    const-string v3, "  alreadyInProgress"

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 222
    :cond_6
    nop

    .line 222
    .restart local v2    # "alreadyInProgress":Z
    :goto_0
    move v0, v2

    .line 224
    .end local v2    # "alreadyInProgress":Z
    .local v0, "alreadyInProgress":Z
    monitor-exit v16
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 228
    if-eqz v0, :cond_7

    .line 229
    :try_start_6
    sget-object v2, Landroid/content/SyncResult;->ALREADY_IN_PROGRESS:Landroid/content/SyncResult;

    invoke-virtual {v14, v2}, Landroid/content/SyncContext;->onFinished(Landroid/content/SyncResult;)V
    :try_end_6
    .catch Ljava/lang/RuntimeException; {:try_start_6 .. :try_end_6} :catch_0
    .catch Ljava/lang/Error; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    .line 237
    .end local v0    # "alreadyInProgress":Z
    .end local v14    # "syncContextClient":Landroid/content/SyncContext;
    .end local v15    # "threadsKey":Landroid/accounts/Account;
    :cond_7
    invoke-static {}, Landroid/content/AbstractThreadedSyncAdapter;->access$100()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 238
    const-string v0, "SyncAdapter"

    const-string/jumbo v2, "startSync() finishing"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 241
    :cond_8
    return-void

    .line 224
    .restart local v14    # "syncContextClient":Landroid/content/SyncContext;
    .restart local v15    # "threadsKey":Landroid/accounts/Account;
    :catchall_1
    move-exception v0

    :try_start_7
    monitor-exit v16
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    :try_start_8
    throw v0
    :try_end_8
    .catch Ljava/lang/RuntimeException; {:try_start_8 .. :try_end_8} :catch_0
    .catch Ljava/lang/Error; {:try_start_8 .. :try_end_8} :catch_0
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    .line 237
    .end local v14    # "syncContextClient":Landroid/content/SyncContext;
    .end local v15    # "threadsKey":Landroid/accounts/Account;
    :catchall_2
    move-exception v0

    goto :goto_2

    .line 231
    :catch_0
    move-exception v0

    goto :goto_1

    .line 237
    :catchall_3
    move-exception v0

    move-object/from16 v13, p1

    goto :goto_2

    .line 231
    :catch_1
    move-exception v0

    move-object/from16 v13, p1

    .line 232
    .local v0, "th":Ljava/lang/Throwable;
    :goto_1
    :try_start_9
    invoke-static {}, Landroid/content/AbstractThreadedSyncAdapter;->access$100()Z

    move-result v2

    if-eqz v2, :cond_9

    .line 233
    const-string v2, "SyncAdapter"

    const-string/jumbo v3, "startSync() caught exception"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 235
    :cond_9
    throw v0
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    .line 237
    .end local v0    # "th":Ljava/lang/Throwable;
    :goto_2
    invoke-static {}, Landroid/content/AbstractThreadedSyncAdapter;->access$100()Z

    move-result v2

    if-eqz v2, :cond_a

    .line 238
    const-string v2, "SyncAdapter"

    const-string/jumbo v3, "startSync() finishing"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_a
    throw v0
.end method
