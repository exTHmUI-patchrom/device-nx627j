.class public Landroid/app/servertransaction/TransactionExecutorHelper;
.super Ljava/lang/Object;
.source "TransactionExecutorHelper.java"


# static fields
.field private static final DESTRUCTION_PENALTY:I = 0xa

.field private static final ON_RESUME_PRE_EXCUTION_STATES:[I


# instance fields
.field private mLifecycleSequence:Landroid/util/IntArray;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 44
    const/4 v0, 0x2

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Landroid/app/servertransaction/TransactionExecutorHelper;->ON_RESUME_PRE_EXCUTION_STATES:[I

    return-void

    nop

    :array_0
    .array-data 4
        0x2
        0x4
    .end array-data
.end method

.method public constructor <init>()V
    .locals 2

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    new-instance v0, Landroid/util/IntArray;

    const/4 v1, 0x6

    invoke-direct {v0, v1}, Landroid/util/IntArray;-><init>(I)V

    iput-object v0, p0, Landroid/app/servertransaction/TransactionExecutorHelper;->mLifecycleSequence:Landroid/util/IntArray;

    return-void
.end method

.method public static getLifecycleRequestForCurrentState(Landroid/app/ActivityThread$ActivityClientRecord;)Landroid/app/servertransaction/ActivityLifecycleItem;
    .locals 3
    .param p0, "r"    # Landroid/app/ActivityThread$ActivityClientRecord;

    .line 173
    invoke-virtual {p0}, Landroid/app/ActivityThread$ActivityClientRecord;->getLifecycleState()I

    move-result v0

    .line 175
    .local v0, "prevState":I
    const/4 v1, 0x0

    packed-switch v0, :pswitch_data_0

    .line 185
    invoke-static {v1}, Landroid/app/servertransaction/ResumeActivityItem;->obtain(Z)Landroid/app/servertransaction/ResumeActivityItem;

    move-result-object v1

    goto :goto_0

    .line 181
    :pswitch_0
    invoke-virtual {p0}, Landroid/app/ActivityThread$ActivityClientRecord;->isVisibleFromServer()Z

    move-result v2

    invoke-static {v2, v1}, Landroid/app/servertransaction/StopActivityItem;->obtain(ZI)Landroid/app/servertransaction/StopActivityItem;

    move-result-object v1

    .line 183
    .local v1, "lifecycleItem":Landroid/app/servertransaction/ActivityLifecycleItem;
    goto :goto_0

    .line 178
    .end local v1    # "lifecycleItem":Landroid/app/servertransaction/ActivityLifecycleItem;
    :pswitch_1
    invoke-static {}, Landroid/app/servertransaction/PauseActivityItem;->obtain()Landroid/app/servertransaction/PauseActivityItem;

    move-result-object v1

    .line 179
    .restart local v1    # "lifecycleItem":Landroid/app/servertransaction/ActivityLifecycleItem;
    nop

    .line 185
    :goto_0
    nop

    .line 189
    return-object v1

    nop

    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method static lastCallbackRequestingState(Landroid/app/servertransaction/ClientTransaction;)I
    .locals 7
    .param p0, "transaction"    # Landroid/app/servertransaction/ClientTransaction;

    .line 218
    invoke-virtual {p0}, Landroid/app/servertransaction/ClientTransaction;->getCallbacks()Ljava/util/List;

    move-result-object v0

    .line 219
    .local v0, "callbacks":Ljava/util/List;, "Ljava/util/List<Landroid/app/servertransaction/ClientTransactionItem;>;"
    const/4 v1, -0x1

    if-eqz v0, :cond_4

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-nez v2, :cond_0

    goto :goto_1

    .line 225
    :cond_0
    const/4 v2, -0x1

    .line 226
    .local v2, "lastRequestedState":I
    const/4 v3, -0x1

    .line 227
    .local v3, "lastRequestingCallback":I
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    .local v4, "i":I
    :goto_0
    if-ltz v4, :cond_3

    .line 228
    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/app/servertransaction/ClientTransactionItem;

    .line 229
    .local v5, "callback":Landroid/app/servertransaction/ClientTransactionItem;
    invoke-virtual {v5}, Landroid/app/servertransaction/ClientTransactionItem;->getPostExecutionState()I

    move-result v6

    .line 230
    .local v6, "postExecutionState":I
    if-eq v6, v1, :cond_2

    .line 232
    if-eq v2, v1, :cond_1

    if-ne v2, v6, :cond_3

    .line 236
    :cond_1
    move v2, v6

    .line 237
    move v3, v4

    .line 227
    .end local v5    # "callback":Landroid/app/servertransaction/ClientTransactionItem;
    .end local v6    # "postExecutionState":I
    :cond_2
    add-int/lit8 v4, v4, -0x1

    goto :goto_0

    .line 244
    .end local v4    # "i":I
    :cond_3
    return v3

    .line 220
    .end local v2    # "lastRequestedState":I
    .end local v3    # "lastRequestingCallback":I
    :cond_4
    :goto_1
    return v1
.end method

.method private static pathInvolvesDestruction(Landroid/util/IntArray;)Z
    .locals 5
    .param p0, "lifecycleSequence"    # Landroid/util/IntArray;

    .line 197
    invoke-virtual {p0}, Landroid/util/IntArray;->size()I

    move-result v0

    .line 198
    .local v0, "size":I
    const/4 v1, 0x0

    move v2, v1

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_1

    .line 199
    invoke-virtual {p0, v2}, Landroid/util/IntArray;->get(I)I

    move-result v3

    const/4 v4, 0x6

    if-ne v3, v4, :cond_0

    .line 200
    const/4 v1, 0x1

    return v1

    .line 198
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 203
    .end local v2    # "i":I
    :cond_1
    return v1
.end method


# virtual methods
.method public getClosestOfStates(Landroid/app/ActivityThread$ActivityClientRecord;[I)I
    .locals 6
    .param p1, "r"    # Landroid/app/ActivityThread$ActivityClientRecord;
    .param p2, "finalStates"    # [I
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 151
    if-eqz p2, :cond_4

    array-length v0, p2

    if-nez v0, :cond_0

    goto :goto_1

    .line 155
    :cond_0
    invoke-virtual {p1}, Landroid/app/ActivityThread$ActivityClientRecord;->getLifecycleState()I

    move-result v0

    .line 156
    .local v0, "currentState":I
    const/4 v1, -0x1

    .line 157
    .local v1, "closestState":I
    const/4 v2, 0x0

    .local v2, "i":I
    const v3, 0x7fffffff

    .local v3, "shortestPath":I
    :goto_0
    array-length v4, p2

    if-ge v2, v4, :cond_3

    .line 158
    aget v4, p2, v2

    const/4 v5, 0x0

    invoke-virtual {p0, v0, v4, v5}, Landroid/app/servertransaction/TransactionExecutorHelper;->getLifecyclePath(IIZ)Landroid/util/IntArray;

    .line 159
    iget-object v4, p0, Landroid/app/servertransaction/TransactionExecutorHelper;->mLifecycleSequence:Landroid/util/IntArray;

    invoke-virtual {v4}, Landroid/util/IntArray;->size()I

    move-result v4

    .line 160
    .local v4, "pathLength":I
    iget-object v5, p0, Landroid/app/servertransaction/TransactionExecutorHelper;->mLifecycleSequence:Landroid/util/IntArray;

    invoke-static {v5}, Landroid/app/servertransaction/TransactionExecutorHelper;->pathInvolvesDestruction(Landroid/util/IntArray;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 161
    add-int/lit8 v4, v4, 0xa

    .line 163
    :cond_1
    if-le v3, v4, :cond_2

    .line 164
    move v3, v4

    .line 165
    aget v1, p2, v2

    .line 157
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 168
    .end local v2    # "i":I
    .end local v3    # "shortestPath":I
    .end local v4    # "pathLength":I
    :cond_3
    return v1

    .line 152
    .end local v0    # "currentState":I
    .end local v1    # "closestState":I
    :cond_4
    :goto_1
    const/4 v0, -0x1

    return v0
.end method

.method public getClosestPreExecutionState(Landroid/app/ActivityThread$ActivityClientRecord;I)I
    .locals 3
    .param p1, "r"    # Landroid/app/ActivityThread$ActivityClientRecord;
    .param p2, "postExecutionState"    # I
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 129
    const/4 v0, -0x1

    if-eq p2, v0, :cond_1

    const/4 v0, 0x3

    if-ne p2, v0, :cond_0

    .line 133
    sget-object v0, Landroid/app/servertransaction/TransactionExecutorHelper;->ON_RESUME_PRE_EXCUTION_STATES:[I

    invoke-virtual {p0, p1, v0}, Landroid/app/servertransaction/TransactionExecutorHelper;->getClosestOfStates(Landroid/app/ActivityThread$ActivityClientRecord;[I)I

    move-result v0

    return v0

    .line 135
    :cond_0
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Pre-execution states for state: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " is not supported."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 131
    :cond_1
    return v0
.end method

.method public getLifecyclePath(IIZ)Landroid/util/IntArray;
    .locals 6
    .param p1, "start"    # I
    .param p2, "finish"    # I
    .param p3, "excludeLastState"    # Z
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 60
    const/4 v0, -0x1

    if-eq p1, v0, :cond_a

    if-eq p2, v0, :cond_a

    .line 63
    const/4 v0, 0x7

    if-eq p1, v0, :cond_9

    if-eq p2, v0, :cond_9

    .line 67
    if-nez p2, :cond_1

    if-ne p1, p2, :cond_0

    goto :goto_0

    .line 68
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Can only start in pre-onCreate state"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 71
    :cond_1
    :goto_0
    iget-object v1, p0, Landroid/app/servertransaction/TransactionExecutorHelper;->mLifecycleSequence:Landroid/util/IntArray;

    invoke-virtual {v1}, Landroid/util/IntArray;->clear()V

    .line 72
    const/4 v1, 0x1

    if-lt p2, p1, :cond_2

    .line 74
    add-int/lit8 v0, p1, 0x1

    .local v0, "i":I
    :goto_1
    if-gt v0, p2, :cond_7

    .line 75
    iget-object v2, p0, Landroid/app/servertransaction/TransactionExecutorHelper;->mLifecycleSequence:Landroid/util/IntArray;

    invoke-virtual {v2, v0}, Landroid/util/IntArray;->add(I)V

    .line 74
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 78
    .end local v0    # "i":I
    :cond_2
    const/4 v2, 0x4

    if-ne p1, v2, :cond_3

    const/4 v2, 0x3

    if-ne p2, v2, :cond_3

    .line 80
    iget-object v0, p0, Landroid/app/servertransaction/TransactionExecutorHelper;->mLifecycleSequence:Landroid/util/IntArray;

    invoke-virtual {v0, v2}, Landroid/util/IntArray;->add(I)V

    goto :goto_6

    .line 81
    :cond_3
    const/4 v2, 0x5

    if-gt p1, v2, :cond_5

    const/4 v3, 0x2

    if-lt p2, v3, :cond_5

    .line 85
    add-int/lit8 v4, p1, 0x1

    .local v4, "i":I
    :goto_2
    if-gt v4, v2, :cond_4

    .line 86
    iget-object v5, p0, Landroid/app/servertransaction/TransactionExecutorHelper;->mLifecycleSequence:Landroid/util/IntArray;

    invoke-virtual {v5, v4}, Landroid/util/IntArray;->add(I)V

    .line 85
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 89
    .end local v4    # "i":I
    :cond_4
    iget-object v2, p0, Landroid/app/servertransaction/TransactionExecutorHelper;->mLifecycleSequence:Landroid/util/IntArray;

    invoke-virtual {v2, v0}, Landroid/util/IntArray;->add(I)V

    .line 91
    nop

    .local v3, "i":I
    :goto_3
    move v0, v3

    .end local v3    # "i":I
    .restart local v0    # "i":I
    if-gt v0, p2, :cond_7

    .line 92
    iget-object v2, p0, Landroid/app/servertransaction/TransactionExecutorHelper;->mLifecycleSequence:Landroid/util/IntArray;

    invoke-virtual {v2, v0}, Landroid/util/IntArray;->add(I)V

    .line 91
    add-int/lit8 v3, v0, 0x1

    .end local v0    # "i":I
    .restart local v3    # "i":I
    goto :goto_3

    .line 98
    .end local v3    # "i":I
    :cond_5
    add-int/lit8 v0, p1, 0x1

    .restart local v0    # "i":I
    :goto_4
    const/4 v2, 0x6

    if-gt v0, v2, :cond_6

    .line 99
    iget-object v2, p0, Landroid/app/servertransaction/TransactionExecutorHelper;->mLifecycleSequence:Landroid/util/IntArray;

    invoke-virtual {v2, v0}, Landroid/util/IntArray;->add(I)V

    .line 98
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    .line 102
    .end local v0    # "i":I
    :cond_6
    move v0, v1

    .restart local v0    # "i":I
    :goto_5
    if-gt v0, p2, :cond_7

    .line 103
    iget-object v2, p0, Landroid/app/servertransaction/TransactionExecutorHelper;->mLifecycleSequence:Landroid/util/IntArray;

    invoke-virtual {v2, v0}, Landroid/util/IntArray;->add(I)V

    .line 102
    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    .line 109
    .end local v0    # "i":I
    :cond_7
    :goto_6
    if-eqz p3, :cond_8

    iget-object v0, p0, Landroid/app/servertransaction/TransactionExecutorHelper;->mLifecycleSequence:Landroid/util/IntArray;

    invoke-virtual {v0}, Landroid/util/IntArray;->size()I

    move-result v0

    if-eqz v0, :cond_8

    .line 110
    iget-object v0, p0, Landroid/app/servertransaction/TransactionExecutorHelper;->mLifecycleSequence:Landroid/util/IntArray;

    iget-object v2, p0, Landroid/app/servertransaction/TransactionExecutorHelper;->mLifecycleSequence:Landroid/util/IntArray;

    invoke-virtual {v2}, Landroid/util/IntArray;->size()I

    move-result v2

    sub-int/2addr v2, v1

    invoke-virtual {v0, v2}, Landroid/util/IntArray;->remove(I)V

    .line 113
    :cond_8
    iget-object v0, p0, Landroid/app/servertransaction/TransactionExecutorHelper;->mLifecycleSequence:Landroid/util/IntArray;

    return-object v0

    .line 64
    :cond_9
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Can\'t start or finish in intermittent RESTART state"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 61
    :cond_a
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Can\'t resolve lifecycle path for undefined state"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
