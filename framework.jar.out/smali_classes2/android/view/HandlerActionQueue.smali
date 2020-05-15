.class public Landroid/view/HandlerActionQueue;
.super Ljava/lang/Object;
.source "HandlerActionQueue.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/view/HandlerActionQueue$HandlerAction;
    }
.end annotation


# instance fields
.field private mActions:[Landroid/view/HandlerActionQueue$HandlerAction;

.field private mCount:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public executeActions(Landroid/os/Handler;)V
    .locals 7
    .param p1, "handler"    # Landroid/os/Handler;

    .line 81
    monitor-enter p0

    .line 82
    :try_start_0
    iget-object v0, p0, Landroid/view/HandlerActionQueue;->mActions:[Landroid/view/HandlerActionQueue$HandlerAction;

    .line 83
    .local v0, "actions":[Landroid/view/HandlerActionQueue$HandlerAction;
    const/4 v1, 0x0

    .local v1, "i":I
    iget v2, p0, Landroid/view/HandlerActionQueue;->mCount:I

    .local v2, "count":I
    :goto_0
    if-ge v1, v2, :cond_0

    .line 84
    aget-object v3, v0, v1

    .line 85
    .local v3, "handlerAction":Landroid/view/HandlerActionQueue$HandlerAction;
    iget-object v4, v3, Landroid/view/HandlerActionQueue$HandlerAction;->action:Ljava/lang/Runnable;

    iget-wide v5, v3, Landroid/view/HandlerActionQueue$HandlerAction;->delay:J

    invoke-virtual {p1, v4, v5, v6}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 83
    .end local v3    # "handlerAction":Landroid/view/HandlerActionQueue$HandlerAction;
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 88
    .end local v1    # "i":I
    .end local v2    # "count":I
    :cond_0
    const/4 v1, 0x0

    iput-object v1, p0, Landroid/view/HandlerActionQueue;->mActions:[Landroid/view/HandlerActionQueue$HandlerAction;

    .line 89
    const/4 v1, 0x0

    iput v1, p0, Landroid/view/HandlerActionQueue;->mCount:I

    .line 90
    .end local v0    # "actions":[Landroid/view/HandlerActionQueue$HandlerAction;
    monitor-exit p0

    .line 91
    return-void

    .line 90
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getDelay(I)J
    .locals 2
    .param p1, "index"    # I

    .line 105
    iget v0, p0, Landroid/view/HandlerActionQueue;->mCount:I

    if-ge p1, v0, :cond_0

    .line 108
    iget-object v0, p0, Landroid/view/HandlerActionQueue;->mActions:[Landroid/view/HandlerActionQueue$HandlerAction;

    aget-object v0, v0, p1

    iget-wide v0, v0, Landroid/view/HandlerActionQueue$HandlerAction;->delay:J

    return-wide v0

    .line 106
    :cond_0
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v0
.end method

.method public getRunnable(I)Ljava/lang/Runnable;
    .locals 1
    .param p1, "index"    # I

    .line 98
    iget v0, p0, Landroid/view/HandlerActionQueue;->mCount:I

    if-ge p1, v0, :cond_0

    .line 101
    iget-object v0, p0, Landroid/view/HandlerActionQueue;->mActions:[Landroid/view/HandlerActionQueue$HandlerAction;

    aget-object v0, v0, p1

    iget-object v0, v0, Landroid/view/HandlerActionQueue$HandlerAction;->action:Ljava/lang/Runnable;

    return-object v0

    .line 99
    :cond_0
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v0
.end method

.method public post(Ljava/lang/Runnable;)V
    .locals 2
    .param p1, "action"    # Ljava/lang/Runnable;

    .line 33
    const-wide/16 v0, 0x0

    invoke-virtual {p0, p1, v0, v1}, Landroid/view/HandlerActionQueue;->postDelayed(Ljava/lang/Runnable;J)V

    .line 34
    return-void
.end method

.method public postDelayed(Ljava/lang/Runnable;J)V
    .locals 3
    .param p1, "action"    # Ljava/lang/Runnable;
    .param p2, "delayMillis"    # J

    .line 37
    new-instance v0, Landroid/view/HandlerActionQueue$HandlerAction;

    invoke-direct {v0, p1, p2, p3}, Landroid/view/HandlerActionQueue$HandlerAction;-><init>(Ljava/lang/Runnable;J)V

    .line 39
    .local v0, "handlerAction":Landroid/view/HandlerActionQueue$HandlerAction;
    monitor-enter p0

    .line 40
    :try_start_0
    iget-object v1, p0, Landroid/view/HandlerActionQueue;->mActions:[Landroid/view/HandlerActionQueue$HandlerAction;

    if-nez v1, :cond_0

    .line 41
    const/4 v1, 0x4

    new-array v1, v1, [Landroid/view/HandlerActionQueue$HandlerAction;

    iput-object v1, p0, Landroid/view/HandlerActionQueue;->mActions:[Landroid/view/HandlerActionQueue$HandlerAction;

    .line 43
    :cond_0
    iget-object v1, p0, Landroid/view/HandlerActionQueue;->mActions:[Landroid/view/HandlerActionQueue$HandlerAction;

    iget v2, p0, Landroid/view/HandlerActionQueue;->mCount:I

    invoke-static {v1, v2, v0}, Lcom/android/internal/util/GrowingArrayUtils;->append([Ljava/lang/Object;ILjava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Landroid/view/HandlerActionQueue$HandlerAction;

    iput-object v1, p0, Landroid/view/HandlerActionQueue;->mActions:[Landroid/view/HandlerActionQueue$HandlerAction;

    .line 44
    iget v1, p0, Landroid/view/HandlerActionQueue;->mCount:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Landroid/view/HandlerActionQueue;->mCount:I

    .line 45
    monitor-exit p0

    .line 46
    return-void

    .line 45
    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public removeCallbacks(Ljava/lang/Runnable;)V
    .locals 5
    .param p1, "action"    # Ljava/lang/Runnable;

    .line 49
    monitor-enter p0

    .line 50
    :try_start_0
    iget v0, p0, Landroid/view/HandlerActionQueue;->mCount:I

    .line 51
    .local v0, "count":I
    const/4 v1, 0x0

    .line 53
    .local v1, "j":I
    iget-object v2, p0, Landroid/view/HandlerActionQueue;->mActions:[Landroid/view/HandlerActionQueue$HandlerAction;

    .line 54
    .local v2, "actions":[Landroid/view/HandlerActionQueue$HandlerAction;
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v0, :cond_2

    .line 55
    aget-object v4, v2, v3

    invoke-virtual {v4, p1}, Landroid/view/HandlerActionQueue$HandlerAction;->matches(Ljava/lang/Runnable;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 58
    goto :goto_1

    .line 61
    :cond_0
    if-eq v1, v3, :cond_1

    .line 64
    aget-object v4, v2, v3

    aput-object v4, v2, v1

    .line 67
    :cond_1
    add-int/lit8 v1, v1, 0x1

    .line 54
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 71
    .end local v3    # "i":I
    :cond_2
    iput v1, p0, Landroid/view/HandlerActionQueue;->mCount:I

    .line 74
    :goto_2
    if-ge v1, v0, :cond_3

    .line 75
    const/4 v3, 0x0

    aput-object v3, v2, v1

    .line 74
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 77
    .end local v0    # "count":I
    .end local v1    # "j":I
    .end local v2    # "actions":[Landroid/view/HandlerActionQueue$HandlerAction;
    :cond_3
    monitor-exit p0

    .line 78
    return-void

    .line 77
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public size()I
    .locals 1

    .line 94
    iget v0, p0, Landroid/view/HandlerActionQueue;->mCount:I

    return v0
.end method
