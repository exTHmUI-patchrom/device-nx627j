.class public Landroid/app/servertransaction/TransactionExecutor;
.super Ljava/lang/Object;
.source "TransactionExecutor.java"


# static fields
.field private static final DEBUG_RESOLVER:Z = false

.field private static final TAG:Ljava/lang/String; = "TransactionExecutor"


# instance fields
.field private mHelper:Landroid/app/servertransaction/TransactionExecutorHelper;

.field private mPendingActions:Landroid/app/servertransaction/PendingTransactionActions;

.field private mTransactionHandler:Landroid/app/ClientTransactionHandler;


# direct methods
.method public constructor <init>(Landroid/app/ClientTransactionHandler;)V
    .locals 1
    .param p1, "clientTransactionHandler"    # Landroid/app/ClientTransactionHandler;

    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    new-instance v0, Landroid/app/servertransaction/PendingTransactionActions;

    invoke-direct {v0}, Landroid/app/servertransaction/PendingTransactionActions;-><init>()V

    iput-object v0, p0, Landroid/app/servertransaction/TransactionExecutor;->mPendingActions:Landroid/app/servertransaction/PendingTransactionActions;

    .line 50
    new-instance v0, Landroid/app/servertransaction/TransactionExecutorHelper;

    invoke-direct {v0}, Landroid/app/servertransaction/TransactionExecutorHelper;-><init>()V

    iput-object v0, p0, Landroid/app/servertransaction/TransactionExecutor;->mHelper:Landroid/app/servertransaction/TransactionExecutorHelper;

    .line 54
    iput-object p1, p0, Landroid/app/servertransaction/TransactionExecutor;->mTransactionHandler:Landroid/app/ClientTransactionHandler;

    .line 55
    return-void
.end method

.method private cycleToPath(Landroid/app/ActivityThread$ActivityClientRecord;IZ)V
    .locals 3
    .param p1, "r"    # Landroid/app/ActivityThread$ActivityClientRecord;
    .param p2, "finish"    # I
    .param p3, "excludeLastState"    # Z

    .line 162
    invoke-virtual {p1}, Landroid/app/ActivityThread$ActivityClientRecord;->getLifecycleState()I

    move-result v0

    .line 163
    .local v0, "start":I
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Cycle from: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " to: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " excludeLastState:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/app/servertransaction/TransactionExecutor;->log(Ljava/lang/String;)V

    .line 164
    iget-object v1, p0, Landroid/app/servertransaction/TransactionExecutor;->mHelper:Landroid/app/servertransaction/TransactionExecutorHelper;

    invoke-virtual {v1, v0, p2, p3}, Landroid/app/servertransaction/TransactionExecutorHelper;->getLifecyclePath(IIZ)Landroid/util/IntArray;

    move-result-object v1

    .line 165
    .local v1, "path":Landroid/util/IntArray;
    invoke-direct {p0, p1, v1}, Landroid/app/servertransaction/TransactionExecutor;->performLifecycleSequence(Landroid/app/ActivityThread$ActivityClientRecord;Landroid/util/IntArray;)V

    .line 166
    return-void
.end method

.method private executeLifecycleState(Landroid/app/servertransaction/ClientTransaction;)V
    .locals 5
    .param p1, "transaction"    # Landroid/app/servertransaction/ClientTransaction;

    .line 126
    invoke-virtual {p1}, Landroid/app/servertransaction/ClientTransaction;->getLifecycleStateRequest()Landroid/app/servertransaction/ActivityLifecycleItem;

    move-result-object v0

    .line 127
    .local v0, "lifecycleItem":Landroid/app/servertransaction/ActivityLifecycleItem;
    if-nez v0, :cond_0

    .line 129
    return-void

    .line 131
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Resolving lifecycle state: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/app/servertransaction/TransactionExecutor;->log(Ljava/lang/String;)V

    .line 133
    invoke-virtual {p1}, Landroid/app/servertransaction/ClientTransaction;->getActivityToken()Landroid/os/IBinder;

    move-result-object v1

    .line 134
    .local v1, "token":Landroid/os/IBinder;
    iget-object v2, p0, Landroid/app/servertransaction/TransactionExecutor;->mTransactionHandler:Landroid/app/ClientTransactionHandler;

    invoke-virtual {v2, v1}, Landroid/app/ClientTransactionHandler;->getActivityClient(Landroid/os/IBinder;)Landroid/app/ActivityThread$ActivityClientRecord;

    move-result-object v2

    .line 136
    .local v2, "r":Landroid/app/ActivityThread$ActivityClientRecord;
    if-nez v2, :cond_1

    .line 138
    return-void

    .line 142
    :cond_1
    invoke-virtual {v0}, Landroid/app/servertransaction/ActivityLifecycleItem;->getTargetState()I

    move-result v3

    const/4 v4, 0x1

    invoke-direct {p0, v2, v3, v4}, Landroid/app/servertransaction/TransactionExecutor;->cycleToPath(Landroid/app/ActivityThread$ActivityClientRecord;IZ)V

    .line 145
    iget-object v3, p0, Landroid/app/servertransaction/TransactionExecutor;->mTransactionHandler:Landroid/app/ClientTransactionHandler;

    iget-object v4, p0, Landroid/app/servertransaction/TransactionExecutor;->mPendingActions:Landroid/app/servertransaction/PendingTransactionActions;

    invoke-virtual {v0, v3, v1, v4}, Landroid/app/servertransaction/ActivityLifecycleItem;->execute(Landroid/app/ClientTransactionHandler;Landroid/os/IBinder;Landroid/app/servertransaction/PendingTransactionActions;)V

    .line 146
    iget-object v3, p0, Landroid/app/servertransaction/TransactionExecutor;->mTransactionHandler:Landroid/app/ClientTransactionHandler;

    iget-object v4, p0, Landroid/app/servertransaction/TransactionExecutor;->mPendingActions:Landroid/app/servertransaction/PendingTransactionActions;

    invoke-virtual {v0, v3, v1, v4}, Landroid/app/servertransaction/ActivityLifecycleItem;->postExecute(Landroid/app/ClientTransactionHandler;Landroid/os/IBinder;Landroid/app/servertransaction/PendingTransactionActions;)V

    .line 147
    return-void
.end method

.method private static log(Ljava/lang/String;)V
    .locals 0
    .param p0, "message"    # Ljava/lang/String;

    .line 212
    return-void
.end method

.method private performLifecycleSequence(Landroid/app/ActivityThread$ActivityClientRecord;Landroid/util/IntArray;)V
    .locals 29
    .param p1, "r"    # Landroid/app/ActivityThread$ActivityClientRecord;
    .param p2, "path"    # Landroid/util/IntArray;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 170
    move-object/from16 v2, p2

    invoke-virtual/range {p2 .. p2}, Landroid/util/IntArray;->size()I

    move-result v3

    .line 171
    .local v3, "size":I
    const/4 v4, 0x0

    move v5, v4

    .line 171
    .local v5, "i":I
    :goto_0
    if-ge v5, v3, :cond_0

    .line 172
    invoke-virtual {v2, v5}, Landroid/util/IntArray;->get(I)I

    move-result v6

    .line 173
    .local v6, "state":I
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Transitioning to state: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Landroid/app/servertransaction/TransactionExecutor;->log(Ljava/lang/String;)V

    .line 174
    packed-switch v6, :pswitch_data_0

    .line 205
    new-instance v4, Ljava/lang/IllegalArgumentException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Unexpected lifecycle state: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v4, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 202
    :pswitch_0
    iget-object v7, v0, Landroid/app/servertransaction/TransactionExecutor;->mTransactionHandler:Landroid/app/ClientTransactionHandler;

    iget-object v8, v1, Landroid/app/ActivityThread$ActivityClientRecord;->token:Landroid/os/IBinder;

    invoke-virtual {v7, v8, v4}, Landroid/app/ClientTransactionHandler;->performRestartActivity(Landroid/os/IBinder;Z)V

    .line 203
    goto :goto_1

    .line 197
    :pswitch_1
    iget-object v9, v0, Landroid/app/servertransaction/TransactionExecutor;->mTransactionHandler:Landroid/app/ClientTransactionHandler;

    iget-object v10, v1, Landroid/app/ActivityThread$ActivityClientRecord;->token:Landroid/os/IBinder;

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "performLifecycleSequence. cycling to:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v8, v3, -0x1

    .line 199
    invoke-virtual {v2, v8}, Landroid/util/IntArray;->get(I)I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    .line 197
    invoke-virtual/range {v9 .. v14}, Landroid/app/ClientTransactionHandler;->handleDestroyActivity(Landroid/os/IBinder;ZIZLjava/lang/String;)V

    .line 200
    goto :goto_1

    .line 192
    :pswitch_2
    iget-object v15, v0, Landroid/app/servertransaction/TransactionExecutor;->mTransactionHandler:Landroid/app/ClientTransactionHandler;

    iget-object v7, v1, Landroid/app/ActivityThread$ActivityClientRecord;->token:Landroid/os/IBinder;

    const/16 v17, 0x0

    const/16 v18, 0x0

    iget-object v8, v0, Landroid/app/servertransaction/TransactionExecutor;->mPendingActions:Landroid/app/servertransaction/PendingTransactionActions;

    const/16 v20, 0x0

    const-string v21, "LIFECYCLER_STOP_ACTIVITY"

    move-object/from16 v16, v7

    move-object/from16 v19, v8

    invoke-virtual/range {v15 .. v21}, Landroid/app/ClientTransactionHandler;->handleStopActivity(Landroid/os/IBinder;ZILandroid/app/servertransaction/PendingTransactionActions;ZLjava/lang/String;)V

    .line 195
    goto :goto_1

    .line 187
    :pswitch_3
    iget-object v7, v0, Landroid/app/servertransaction/TransactionExecutor;->mTransactionHandler:Landroid/app/ClientTransactionHandler;

    iget-object v8, v1, Landroid/app/ActivityThread$ActivityClientRecord;->token:Landroid/os/IBinder;

    const/16 v24, 0x0

    const/16 v25, 0x0

    const/16 v26, 0x0

    iget-object v9, v0, Landroid/app/servertransaction/TransactionExecutor;->mPendingActions:Landroid/app/servertransaction/PendingTransactionActions;

    const-string v28, "LIFECYCLER_PAUSE_ACTIVITY"

    move-object/from16 v22, v7

    move-object/from16 v23, v8

    move-object/from16 v27, v9

    invoke-virtual/range {v22 .. v28}, Landroid/app/ClientTransactionHandler;->handlePauseActivity(Landroid/os/IBinder;ZZILandroid/app/servertransaction/PendingTransactionActions;Ljava/lang/String;)V

    .line 190
    goto :goto_1

    .line 183
    :pswitch_4
    iget-object v7, v0, Landroid/app/servertransaction/TransactionExecutor;->mTransactionHandler:Landroid/app/ClientTransactionHandler;

    iget-object v8, v1, Landroid/app/ActivityThread$ActivityClientRecord;->token:Landroid/os/IBinder;

    iget-boolean v9, v1, Landroid/app/ActivityThread$ActivityClientRecord;->isForward:Z

    const-string v10, "LIFECYCLER_RESUME_ACTIVITY"

    invoke-virtual {v7, v8, v4, v9, v10}, Landroid/app/ClientTransactionHandler;->handleResumeActivity(Landroid/os/IBinder;ZZLjava/lang/String;)V

    .line 185
    goto :goto_1

    .line 180
    :pswitch_5
    iget-object v7, v0, Landroid/app/servertransaction/TransactionExecutor;->mTransactionHandler:Landroid/app/ClientTransactionHandler;

    iget-object v8, v0, Landroid/app/servertransaction/TransactionExecutor;->mPendingActions:Landroid/app/servertransaction/PendingTransactionActions;

    invoke-virtual {v7, v1, v8}, Landroid/app/ClientTransactionHandler;->handleStartActivity(Landroid/app/ActivityThread$ActivityClientRecord;Landroid/app/servertransaction/PendingTransactionActions;)V

    .line 181
    goto :goto_1

    .line 176
    :pswitch_6
    iget-object v7, v0, Landroid/app/servertransaction/TransactionExecutor;->mTransactionHandler:Landroid/app/ClientTransactionHandler;

    iget-object v8, v0, Landroid/app/servertransaction/TransactionExecutor;->mPendingActions:Landroid/app/servertransaction/PendingTransactionActions;

    const/4 v9, 0x0

    invoke-virtual {v7, v1, v8, v9}, Landroid/app/ClientTransactionHandler;->handleLaunchActivity(Landroid/app/ActivityThread$ActivityClientRecord;Landroid/app/servertransaction/PendingTransactionActions;Landroid/content/Intent;)Landroid/app/Activity;

    .line 178
    nop

    .line 171
    :goto_1
    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_0

    .line 208
    .end local v5    # "i":I
    .end local v6    # "state":I
    :cond_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public cycleToPath(Landroid/app/ActivityThread$ActivityClientRecord;I)V
    .locals 1
    .param p1, "r"    # Landroid/app/ActivityThread$ActivityClientRecord;
    .param p2, "finish"    # I
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 152
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Landroid/app/servertransaction/TransactionExecutor;->cycleToPath(Landroid/app/ActivityThread$ActivityClientRecord;IZ)V

    .line 153
    return-void
.end method

.method public execute(Landroid/app/servertransaction/ClientTransaction;)V
    .locals 3
    .param p1, "transaction"    # Landroid/app/servertransaction/ClientTransaction;

    .line 65
    invoke-virtual {p1}, Landroid/app/servertransaction/ClientTransaction;->getActivityToken()Landroid/os/IBinder;

    move-result-object v0

    .line 66
    .local v0, "token":Landroid/os/IBinder;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Start resolving transaction for client: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Landroid/app/servertransaction/TransactionExecutor;->mTransactionHandler:Landroid/app/ClientTransactionHandler;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", token: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/app/servertransaction/TransactionExecutor;->log(Ljava/lang/String;)V

    .line 68
    invoke-virtual {p0, p1}, Landroid/app/servertransaction/TransactionExecutor;->executeCallbacks(Landroid/app/servertransaction/ClientTransaction;)V

    .line 70
    invoke-direct {p0, p1}, Landroid/app/servertransaction/TransactionExecutor;->executeLifecycleState(Landroid/app/servertransaction/ClientTransaction;)V

    .line 71
    iget-object v1, p0, Landroid/app/servertransaction/TransactionExecutor;->mPendingActions:Landroid/app/servertransaction/PendingTransactionActions;

    invoke-virtual {v1}, Landroid/app/servertransaction/PendingTransactionActions;->clear()V

    .line 72
    const-string v1, "End resolving transaction"

    invoke-static {v1}, Landroid/app/servertransaction/TransactionExecutor;->log(Ljava/lang/String;)V

    .line 73
    return-void
.end method

.method public executeCallbacks(Landroid/app/servertransaction/ClientTransaction;)V
    .locals 16
    .param p1, "transaction"    # Landroid/app/servertransaction/ClientTransaction;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    move-object/from16 v0, p0

    .line 78
    invoke-virtual/range {p1 .. p1}, Landroid/app/servertransaction/ClientTransaction;->getCallbacks()Ljava/util/List;

    move-result-object v1

    .line 79
    .local v1, "callbacks":Ljava/util/List;, "Ljava/util/List<Landroid/app/servertransaction/ClientTransactionItem;>;"
    if-nez v1, :cond_0

    .line 81
    return-void

    .line 83
    :cond_0
    const-string v2, "Resolving callbacks"

    invoke-static {v2}, Landroid/app/servertransaction/TransactionExecutor;->log(Ljava/lang/String;)V

    .line 85
    invoke-virtual/range {p1 .. p1}, Landroid/app/servertransaction/ClientTransaction;->getActivityToken()Landroid/os/IBinder;

    move-result-object v2

    .line 86
    .local v2, "token":Landroid/os/IBinder;
    iget-object v3, v0, Landroid/app/servertransaction/TransactionExecutor;->mTransactionHandler:Landroid/app/ClientTransactionHandler;

    invoke-virtual {v3, v2}, Landroid/app/ClientTransactionHandler;->getActivityClient(Landroid/os/IBinder;)Landroid/app/ActivityThread$ActivityClientRecord;

    move-result-object v3

    .line 91
    .local v3, "r":Landroid/app/ActivityThread$ActivityClientRecord;
    invoke-virtual/range {p1 .. p1}, Landroid/app/servertransaction/ClientTransaction;->getLifecycleStateRequest()Landroid/app/servertransaction/ActivityLifecycleItem;

    move-result-object v4

    .line 92
    .local v4, "finalStateRequest":Landroid/app/servertransaction/ActivityLifecycleItem;
    const/4 v5, -0x1

    if-eqz v4, :cond_1

    invoke-virtual {v4}, Landroid/app/servertransaction/ActivityLifecycleItem;->getTargetState()I

    move-result v6

    goto :goto_0

    .line 93
    :cond_1
    move v6, v5

    .line 95
    .local v6, "finalState":I
    :goto_0
    invoke-static/range {p1 .. p1}, Landroid/app/servertransaction/TransactionExecutorHelper;->lastCallbackRequestingState(Landroid/app/servertransaction/ClientTransaction;)I

    move-result v7

    .line 97
    .local v7, "lastCallbackRequestingState":I
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v8

    .line 98
    .local v8, "size":I
    const/4 v9, 0x0

    move-object v10, v3

    move v3, v9

    .local v3, "i":I
    .local v10, "r":Landroid/app/ActivityThread$ActivityClientRecord;
    :goto_1
    if-ge v3, v8, :cond_6

    .line 99
    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/app/servertransaction/ClientTransactionItem;

    .line 100
    .local v11, "item":Landroid/app/servertransaction/ClientTransactionItem;
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Resolving callback: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Landroid/app/servertransaction/TransactionExecutor;->log(Ljava/lang/String;)V

    .line 101
    invoke-virtual {v11}, Landroid/app/servertransaction/ClientTransactionItem;->getPostExecutionState()I

    move-result v12

    .line 102
    .local v12, "postExecutionState":I
    iget-object v13, v0, Landroid/app/servertransaction/TransactionExecutor;->mHelper:Landroid/app/servertransaction/TransactionExecutorHelper;

    .line 103
    invoke-virtual {v11}, Landroid/app/servertransaction/ClientTransactionItem;->getPostExecutionState()I

    move-result v14

    .line 102
    invoke-virtual {v13, v10, v14}, Landroid/app/servertransaction/TransactionExecutorHelper;->getClosestPreExecutionState(Landroid/app/ActivityThread$ActivityClientRecord;I)I

    move-result v13

    .line 104
    .local v13, "closestPreExecutionState":I
    if-eq v13, v5, :cond_2

    .line 105
    invoke-virtual {v0, v10, v13}, Landroid/app/servertransaction/TransactionExecutor;->cycleToPath(Landroid/app/ActivityThread$ActivityClientRecord;I)V

    .line 108
    :cond_2
    iget-object v14, v0, Landroid/app/servertransaction/TransactionExecutor;->mTransactionHandler:Landroid/app/ClientTransactionHandler;

    iget-object v15, v0, Landroid/app/servertransaction/TransactionExecutor;->mPendingActions:Landroid/app/servertransaction/PendingTransactionActions;

    invoke-virtual {v11, v14, v2, v15}, Landroid/app/servertransaction/ClientTransactionItem;->execute(Landroid/app/ClientTransactionHandler;Landroid/os/IBinder;Landroid/app/servertransaction/PendingTransactionActions;)V

    .line 109
    iget-object v14, v0, Landroid/app/servertransaction/TransactionExecutor;->mTransactionHandler:Landroid/app/ClientTransactionHandler;

    iget-object v15, v0, Landroid/app/servertransaction/TransactionExecutor;->mPendingActions:Landroid/app/servertransaction/PendingTransactionActions;

    invoke-virtual {v11, v14, v2, v15}, Landroid/app/servertransaction/ClientTransactionItem;->postExecute(Landroid/app/ClientTransactionHandler;Landroid/os/IBinder;Landroid/app/servertransaction/PendingTransactionActions;)V

    .line 110
    if-nez v10, :cond_3

    .line 112
    iget-object v14, v0, Landroid/app/servertransaction/TransactionExecutor;->mTransactionHandler:Landroid/app/ClientTransactionHandler;

    invoke-virtual {v14, v2}, Landroid/app/ClientTransactionHandler;->getActivityClient(Landroid/os/IBinder;)Landroid/app/ActivityThread$ActivityClientRecord;

    move-result-object v10

    .line 115
    :cond_3
    if-eq v12, v5, :cond_5

    if-eqz v10, :cond_5

    .line 117
    if-ne v3, v7, :cond_4

    if-ne v6, v12, :cond_4

    const/4 v14, 0x1

    goto :goto_2

    :cond_4
    move v14, v9

    .line 119
    .local v14, "shouldExcludeLastTransition":Z
    :goto_2
    invoke-direct {v0, v10, v12, v14}, Landroid/app/servertransaction/TransactionExecutor;->cycleToPath(Landroid/app/ActivityThread$ActivityClientRecord;IZ)V

    .line 98
    .end local v11    # "item":Landroid/app/servertransaction/ClientTransactionItem;
    .end local v12    # "postExecutionState":I
    .end local v13    # "closestPreExecutionState":I
    .end local v14    # "shouldExcludeLastTransition":Z
    :cond_5
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 122
    .end local v3    # "i":I
    :cond_6
    return-void
.end method
