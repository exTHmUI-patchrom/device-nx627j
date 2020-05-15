.class Landroid/os/Looper$MessageHistory;
.super Ljava/lang/Object;
.source "Looper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/Looper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "MessageHistory"
.end annotation


# instance fields
.field array:[Landroid/os/Looper$MessageRecord;

.field cache:Landroid/os/Looper$MessageRecord;

.field index:I


# direct methods
.method public constructor <init>(I)V
    .locals 1
    .param p1, "size"    # I

    .line 526
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 522
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/os/Looper$MessageHistory;->cache:Landroid/os/Looper$MessageRecord;

    .line 527
    new-array v0, p1, [Landroid/os/Looper$MessageRecord;

    iput-object v0, p0, Landroid/os/Looper$MessageHistory;->array:[Landroid/os/Looper$MessageRecord;

    .line 528
    return-void
.end method


# virtual methods
.method addMessage(Landroid/os/Looper$MessageRecord;)V
    .locals 2
    .param p1, "msg"    # Landroid/os/Looper$MessageRecord;

    .line 531
    monitor-enter p0

    .line 532
    :try_start_0
    iget-object v0, p0, Landroid/os/Looper$MessageHistory;->array:[Landroid/os/Looper$MessageRecord;

    iget v1, p0, Landroid/os/Looper$MessageHistory;->index:I

    aget-object v0, v0, v1

    iput-object v0, p0, Landroid/os/Looper$MessageHistory;->cache:Landroid/os/Looper$MessageRecord;

    .line 533
    iget-object v0, p0, Landroid/os/Looper$MessageHistory;->array:[Landroid/os/Looper$MessageRecord;

    iget v1, p0, Landroid/os/Looper$MessageHistory;->index:I

    aput-object p1, v0, v1

    .line 534
    iget v0, p0, Landroid/os/Looper$MessageHistory;->index:I

    add-int/lit8 v0, v0, 0x1

    iget-object v1, p0, Landroid/os/Looper$MessageHistory;->array:[Landroid/os/Looper$MessageRecord;

    array-length v1, v1

    rem-int/2addr v0, v1

    iput v0, p0, Landroid/os/Looper$MessageHistory;->index:I

    .line 535
    monitor-exit p0

    .line 536
    return-void

    .line 535
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method dump(Landroid/util/Printer;Ljava/lang/String;J)V
    .locals 5
    .param p1, "pw"    # Landroid/util/Printer;
    .param p2, "prefix"    # Ljava/lang/String;
    .param p3, "now"    # J

    .line 547
    monitor-enter p0

    .line 548
    :try_start_0
    iget-object v0, p0, Landroid/os/Looper$MessageHistory;->array:[Landroid/os/Looper$MessageRecord;

    array-length v0, v0

    .line 549
    .local v0, "length":I
    const/4 v1, 0x0

    .line 550
    .local v1, "j":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_1

    .line 551
    iget v3, p0, Landroid/os/Looper$MessageHistory;->index:I

    add-int/lit8 v3, v3, -0x1

    add-int/2addr v3, v0

    sub-int/2addr v3, v2

    rem-int/2addr v3, v0

    move v1, v3

    .line 552
    iget-object v3, p0, Landroid/os/Looper$MessageHistory;->array:[Landroid/os/Looper$MessageRecord;

    aget-object v3, v3, v1

    if-eqz v3, :cond_0

    .line 553
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "Message["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, "]: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Landroid/os/Looper$MessageHistory;->array:[Landroid/os/Looper$MessageRecord;

    aget-object v4, v4, v1

    invoke-virtual {v4, p3, p4}, Landroid/os/Looper$MessageRecord;->toString(J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {p1, v3}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 550
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 556
    .end local v0    # "length":I
    .end local v1    # "j":I
    .end local v2    # "i":I
    :cond_1
    monitor-exit p0

    .line 557
    return-void

    .line 556
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method getCache()Landroid/os/Looper$MessageRecord;
    .locals 1

    .line 539
    iget-object v0, p0, Landroid/os/Looper$MessageHistory;->cache:Landroid/os/Looper$MessageRecord;

    return-object v0
.end method

.method size()I
    .locals 1

    .line 543
    iget-object v0, p0, Landroid/os/Looper$MessageHistory;->array:[Landroid/os/Looper$MessageRecord;

    array-length v0, v0

    return v0
.end method
