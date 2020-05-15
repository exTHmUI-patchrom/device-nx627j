.class public abstract Lcom/android/internal/telephony/IntRangeManager;
.super Ljava/lang/Object;
.source "IntRangeManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/IntRangeManager$ClientRange;,
        Lcom/android/internal/telephony/IntRangeManager$IntRange;
    }
.end annotation


# static fields
.field private static final INITIAL_CLIENTS_ARRAY_SIZE:I = 0x4


# instance fields
.field private mRanges:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/internal/telephony/IntRangeManager$IntRange;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method protected constructor <init>()V
    .locals 1

    .line 181
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 179
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/IntRangeManager;->mRanges:Ljava/util/ArrayList;

    .line 181
    return-void
.end method

.method private populateAllClientRanges()V
    .locals 10

    .line 634
    iget-object v0, p0, Lcom/android/internal/telephony/IntRangeManager;->mRanges:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 635
    .local v0, "len":I
    const/4 v1, 0x0

    move v2, v1

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_1

    .line 636
    iget-object v3, p0, Lcom/android/internal/telephony/IntRangeManager;->mRanges:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/internal/telephony/IntRangeManager$IntRange;

    .line 638
    .local v3, "range":Lcom/android/internal/telephony/IntRangeManager$IntRange;
    iget-object v4, v3, Lcom/android/internal/telephony/IntRangeManager$IntRange;->mClients:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    .line 639
    .local v4, "clientLen":I
    move v5, v1

    .local v5, "j":I
    :goto_1
    if-ge v5, v4, :cond_0

    .line 640
    iget-object v6, v3, Lcom/android/internal/telephony/IntRangeManager$IntRange;->mClients:Ljava/util/ArrayList;

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/internal/telephony/IntRangeManager$ClientRange;

    .line 641
    .local v6, "nextRange":Lcom/android/internal/telephony/IntRangeManager$ClientRange;
    iget v7, v6, Lcom/android/internal/telephony/IntRangeManager$ClientRange;->mStartId:I

    iget v8, v6, Lcom/android/internal/telephony/IntRangeManager$ClientRange;->mEndId:I

    const/4 v9, 0x1

    invoke-virtual {p0, v7, v8, v9}, Lcom/android/internal/telephony/IntRangeManager;->addRange(IIZ)V

    .line 639
    .end local v6    # "nextRange":Lcom/android/internal/telephony/IntRangeManager$ClientRange;
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 635
    .end local v3    # "range":Lcom/android/internal/telephony/IntRangeManager$IntRange;
    .end local v4    # "clientLen":I
    .end local v5    # "j":I
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 644
    .end local v2    # "i":I
    :cond_1
    return-void
.end method

.method private populateAllRanges()V
    .locals 5

    .line 621
    iget-object v0, p0, Lcom/android/internal/telephony/IntRangeManager;->mRanges:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 623
    .local v0, "itr":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/internal/telephony/IntRangeManager$IntRange;>;"
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 624
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/telephony/IntRangeManager$IntRange;

    .line 625
    .local v1, "currRange":Lcom/android/internal/telephony/IntRangeManager$IntRange;
    iget v2, v1, Lcom/android/internal/telephony/IntRangeManager$IntRange;->mStartId:I

    iget v3, v1, Lcom/android/internal/telephony/IntRangeManager$IntRange;->mEndId:I

    const/4 v4, 0x1

    invoke-virtual {p0, v2, v3, v4}, Lcom/android/internal/telephony/IntRangeManager;->addRange(IIZ)V

    .line 626
    .end local v1    # "currRange":Lcom/android/internal/telephony/IntRangeManager$IntRange;
    goto :goto_0

    .line 627
    :cond_0
    return-void
.end method


# virtual methods
.method protected abstract addRange(IIZ)V
.end method

.method public declared-synchronized disableRange(IILjava/lang/String;)Z
    .locals 21
    .param p1, "startId"    # I
    .param p2, "endId"    # I
    .param p3, "client"    # Ljava/lang/String;

    move-object/from16 v1, p0

    move/from16 v0, p1

    move/from16 v2, p2

    move-object/from16 v3, p3

    monitor-enter p0

    .line 438
    :try_start_0
    iget-object v4, v1, Lcom/android/internal/telephony/IntRangeManager;->mRanges:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    .line 440
    .local v4, "len":I
    const/4 v5, 0x0

    move v6, v5

    .local v6, "i":I
    :goto_0
    if-ge v6, v4, :cond_12

    .line 441
    iget-object v7, v1, Lcom/android/internal/telephony/IntRangeManager;->mRanges:Ljava/util/ArrayList;

    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/internal/telephony/IntRangeManager$IntRange;

    .line 442
    .local v7, "range":Lcom/android/internal/telephony/IntRangeManager$IntRange;
    iget v8, v7, Lcom/android/internal/telephony/IntRangeManager$IntRange;->mStartId:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-ge v0, v8, :cond_0

    .line 443
    monitor-exit p0

    return v5

    .line 444
    :cond_0
    :try_start_1
    iget v8, v7, Lcom/android/internal/telephony/IntRangeManager$IntRange;->mEndId:I

    if-gt v2, v8, :cond_11

    .line 447
    iget-object v8, v7, Lcom/android/internal/telephony/IntRangeManager$IntRange;->mClients:Ljava/util/ArrayList;

    .line 450
    .local v8, "clients":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/telephony/IntRangeManager$ClientRange;>;"
    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v9

    .line 451
    .local v9, "crLength":I
    const/4 v10, 0x1

    if-ne v9, v10, :cond_3

    .line 452
    invoke-virtual {v8, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/android/internal/telephony/IntRangeManager$ClientRange;

    .line 453
    .local v11, "cr":Lcom/android/internal/telephony/IntRangeManager$ClientRange;
    iget v12, v11, Lcom/android/internal/telephony/IntRangeManager$ClientRange;->mStartId:I

    if-ne v12, v0, :cond_2

    iget v12, v11, Lcom/android/internal/telephony/IntRangeManager$ClientRange;->mEndId:I

    if-ne v12, v2, :cond_2

    iget-object v12, v11, Lcom/android/internal/telephony/IntRangeManager$ClientRange;->mClient:Ljava/lang/String;

    invoke-virtual {v12, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_2

    .line 456
    iget-object v12, v1, Lcom/android/internal/telephony/IntRangeManager;->mRanges:Ljava/util/ArrayList;

    invoke-virtual {v12, v6}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 457
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/IntRangeManager;->updateRanges()Z

    move-result v12
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v12, :cond_1

    .line 458
    monitor-exit p0

    return v10

    .line 461
    :cond_1
    :try_start_2
    iget-object v10, v1, Lcom/android/internal/telephony/IntRangeManager;->mRanges:Ljava/util/ArrayList;

    invoke-virtual {v10, v6, v7}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 462
    monitor-exit p0

    return v5

    .line 465
    :cond_2
    monitor-exit p0

    return v5

    .line 475
    .end local v11    # "cr":Lcom/android/internal/telephony/IntRangeManager$ClientRange;
    :cond_3
    const/high16 v11, -0x80000000

    .line 476
    .local v11, "largestEndId":I
    const/4 v12, 0x0

    .line 479
    .local v12, "updateStarted":Z
    move v13, v11

    move v11, v5

    .local v11, "crIndex":I
    .local v13, "largestEndId":I
    :goto_1
    if-ge v11, v9, :cond_11

    .line 480
    :try_start_3
    invoke-virtual {v8, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/android/internal/telephony/IntRangeManager$ClientRange;

    .line 481
    .local v14, "cr":Lcom/android/internal/telephony/IntRangeManager$ClientRange;
    iget v15, v14, Lcom/android/internal/telephony/IntRangeManager$ClientRange;->mStartId:I

    if-ne v15, v0, :cond_f

    iget v15, v14, Lcom/android/internal/telephony/IntRangeManager$ClientRange;->mEndId:I

    if-ne v15, v2, :cond_f

    iget-object v15, v14, Lcom/android/internal/telephony/IntRangeManager$ClientRange;->mClient:Ljava/lang/String;

    invoke-virtual {v15, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_f

    .line 483
    add-int/lit8 v15, v9, -0x1

    if-ne v11, v15, :cond_6

    .line 484
    iget v15, v7, Lcom/android/internal/telephony/IntRangeManager$IntRange;->mEndId:I

    if-ne v15, v13, :cond_4

    .line 487
    invoke-virtual {v8, v11}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 488
    monitor-exit p0

    return v10

    .line 491
    :cond_4
    :try_start_4
    invoke-virtual {v8, v11}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 492
    iput v13, v7, Lcom/android/internal/telephony/IntRangeManager$IntRange;->mEndId:I

    .line 493
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/IntRangeManager;->updateRanges()Z

    move-result v15
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    if-eqz v15, :cond_5

    .line 494
    monitor-exit p0

    return v10

    .line 496
    :cond_5
    :try_start_5
    invoke-virtual {v8, v11, v14}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 497
    iget v10, v14, Lcom/android/internal/telephony/IntRangeManager$ClientRange;->mEndId:I

    iput v10, v7, Lcom/android/internal/telephony/IntRangeManager$IntRange;->mEndId:I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 498
    monitor-exit p0

    return v5

    .line 506
    :cond_6
    :try_start_6
    new-instance v15, Lcom/android/internal/telephony/IntRangeManager$IntRange;

    invoke-direct {v15, v1, v7, v11}, Lcom/android/internal/telephony/IntRangeManager$IntRange;-><init>(Lcom/android/internal/telephony/IntRangeManager;Lcom/android/internal/telephony/IntRangeManager$IntRange;I)V

    .line 508
    .local v15, "rangeCopy":Lcom/android/internal/telephony/IntRangeManager$IntRange;
    if-nez v11, :cond_8

    .line 514
    invoke-virtual {v8, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v16

    move-object/from16 v5, v16

    check-cast v5, Lcom/android/internal/telephony/IntRangeManager$ClientRange;

    iget v5, v5, Lcom/android/internal/telephony/IntRangeManager$ClientRange;->mStartId:I

    .line 515
    .local v5, "nextStartId":I
    iget v10, v7, Lcom/android/internal/telephony/IntRangeManager$IntRange;->mStartId:I

    if-eq v5, v10, :cond_7

    .line 516
    const/4 v10, 0x1

    .line 517
    .end local v12    # "updateStarted":Z
    .local v10, "updateStarted":Z
    iput v5, v15, Lcom/android/internal/telephony/IntRangeManager$IntRange;->mStartId:I

    .line 520
    move v12, v10

    .end local v10    # "updateStarted":Z
    .restart local v12    # "updateStarted":Z
    :cond_7
    const/4 v10, 0x1

    invoke-virtual {v8, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v16

    move-object/from16 v10, v16

    check-cast v10, Lcom/android/internal/telephony/IntRangeManager$ClientRange;

    iget v10, v10, Lcom/android/internal/telephony/IntRangeManager$ClientRange;->mEndId:I

    move v13, v10

    .line 527
    .end local v5    # "nextStartId":I
    :cond_8
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 529
    .local v5, "newRanges":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/telephony/IntRangeManager$IntRange;>;"
    move-object v10, v15

    .line 530
    .local v10, "currentRange":Lcom/android/internal/telephony/IntRangeManager$IntRange;
    add-int/lit8 v16, v11, 0x1

    .local v16, "nextIndex":I
    :goto_2
    move/from16 v17, v16

    .end local v16    # "nextIndex":I
    .local v17, "nextIndex":I
    move/from16 v0, v17

    if-ge v0, v9, :cond_c

    .line 531
    .end local v17    # "nextIndex":I
    .local v0, "nextIndex":I
    invoke-virtual {v8, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Lcom/android/internal/telephony/IntRangeManager$ClientRange;

    move-object/from16 v18, v16

    .line 532
    .local v18, "nextCr":Lcom/android/internal/telephony/IntRangeManager$ClientRange;
    move/from16 v19, v4

    move-object/from16 v3, v18

    iget v4, v3, Lcom/android/internal/telephony/IntRangeManager$ClientRange;->mStartId:I

    .end local v4    # "len":I
    .end local v18    # "nextCr":Lcom/android/internal/telephony/IntRangeManager$ClientRange;
    .local v3, "nextCr":Lcom/android/internal/telephony/IntRangeManager$ClientRange;
    .local v19, "len":I
    move-object/from16 v20, v8

    add-int/lit8 v8, v13, 0x1

    .end local v8    # "clients":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/telephony/IntRangeManager$ClientRange;>;"
    .local v20, "clients":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/telephony/IntRangeManager$ClientRange;>;"
    if-le v4, v8, :cond_9

    .line 533
    const/4 v4, 0x1

    .line 534
    .end local v12    # "updateStarted":Z
    .local v4, "updateStarted":Z
    iput v13, v10, Lcom/android/internal/telephony/IntRangeManager$IntRange;->mEndId:I

    .line 535
    invoke-virtual {v5, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 536
    new-instance v8, Lcom/android/internal/telephony/IntRangeManager$IntRange;

    invoke-direct {v8, v1, v3}, Lcom/android/internal/telephony/IntRangeManager$IntRange;-><init>(Lcom/android/internal/telephony/IntRangeManager;Lcom/android/internal/telephony/IntRangeManager$ClientRange;)V

    .line 543
    .end local v10    # "currentRange":Lcom/android/internal/telephony/IntRangeManager$IntRange;
    .local v8, "currentRange":Lcom/android/internal/telephony/IntRangeManager$IntRange;
    move v12, v4

    move-object v10, v8

    goto :goto_3

    .line 538
    .end local v4    # "updateStarted":Z
    .end local v8    # "currentRange":Lcom/android/internal/telephony/IntRangeManager$IntRange;
    .restart local v10    # "currentRange":Lcom/android/internal/telephony/IntRangeManager$IntRange;
    .restart local v12    # "updateStarted":Z
    :cond_9
    iget v4, v10, Lcom/android/internal/telephony/IntRangeManager$IntRange;->mEndId:I

    iget v8, v3, Lcom/android/internal/telephony/IntRangeManager$ClientRange;->mEndId:I

    if-ge v4, v8, :cond_a

    .line 539
    iget v4, v3, Lcom/android/internal/telephony/IntRangeManager$ClientRange;->mEndId:I

    iput v4, v10, Lcom/android/internal/telephony/IntRangeManager$IntRange;->mEndId:I

    .line 541
    :cond_a
    iget-object v4, v10, Lcom/android/internal/telephony/IntRangeManager$IntRange;->mClients:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 543
    :goto_3
    iget v4, v3, Lcom/android/internal/telephony/IntRangeManager$ClientRange;->mEndId:I

    if-le v4, v13, :cond_b

    .line 544
    iget v4, v3, Lcom/android/internal/telephony/IntRangeManager$ClientRange;->mEndId:I

    move v3, v4

    .line 530
    .end local v13    # "largestEndId":I
    .local v3, "largestEndId":I
    move v13, v3

    .end local v3    # "largestEndId":I
    .restart local v13    # "largestEndId":I
    :cond_b
    add-int/lit8 v16, v0, 0x1

    .end local v0    # "nextIndex":I
    .restart local v16    # "nextIndex":I
    move/from16 v4, v19

    move-object/from16 v8, v20

    move/from16 v0, p1

    move-object/from16 v3, p3

    goto :goto_2

    .line 549
    .end local v16    # "nextIndex":I
    .end local v19    # "len":I
    .end local v20    # "clients":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/telephony/IntRangeManager$ClientRange;>;"
    .local v4, "len":I
    .local v8, "clients":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/telephony/IntRangeManager$ClientRange;>;"
    :cond_c
    move/from16 v19, v4

    move-object/from16 v20, v8

    .end local v4    # "len":I
    .end local v8    # "clients":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/telephony/IntRangeManager$ClientRange;>;"
    .restart local v19    # "len":I
    .restart local v20    # "clients":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/telephony/IntRangeManager$ClientRange;>;"
    if-ge v13, v2, :cond_d

    .line 550
    const/4 v12, 0x1

    .line 551
    iput v13, v10, Lcom/android/internal/telephony/IntRangeManager$IntRange;->mEndId:I

    .line 553
    :cond_d
    invoke-virtual {v5, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 556
    iget-object v0, v1, Lcom/android/internal/telephony/IntRangeManager;->mRanges:Ljava/util/ArrayList;

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 557
    iget-object v0, v1, Lcom/android/internal/telephony/IntRangeManager;->mRanges:Ljava/util/ArrayList;

    invoke-virtual {v0, v6, v5}, Ljava/util/ArrayList;->addAll(ILjava/util/Collection;)Z

    .line 558
    if-eqz v12, :cond_e

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/IntRangeManager;->updateRanges()Z

    move-result v0

    if-nez v0, :cond_e

    .line 560
    iget-object v0, v1, Lcom/android/internal/telephony/IntRangeManager;->mRanges:Ljava/util/ArrayList;

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->removeAll(Ljava/util/Collection;)Z

    .line 561
    iget-object v0, v1, Lcom/android/internal/telephony/IntRangeManager;->mRanges:Ljava/util/ArrayList;

    invoke-virtual {v0, v6, v7}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 562
    monitor-exit p0

    const/4 v0, 0x0

    return v0

    .line 565
    :cond_e
    monitor-exit p0

    const/4 v0, 0x1

    return v0

    .line 568
    .end local v5    # "newRanges":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/telephony/IntRangeManager$IntRange;>;"
    .end local v10    # "currentRange":Lcom/android/internal/telephony/IntRangeManager$IntRange;
    .end local v15    # "rangeCopy":Lcom/android/internal/telephony/IntRangeManager$IntRange;
    .end local v19    # "len":I
    .end local v20    # "clients":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/telephony/IntRangeManager$ClientRange;>;"
    .restart local v4    # "len":I
    .restart local v8    # "clients":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/telephony/IntRangeManager$ClientRange;>;"
    :cond_f
    move/from16 v19, v4

    move-object/from16 v20, v8

    move v0, v10

    .end local v4    # "len":I
    .end local v8    # "clients":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/telephony/IntRangeManager$ClientRange;>;"
    .restart local v19    # "len":I
    .restart local v20    # "clients":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/telephony/IntRangeManager$ClientRange;>;"
    :try_start_7
    iget v3, v14, Lcom/android/internal/telephony/IntRangeManager$ClientRange;->mEndId:I

    if-le v3, v13, :cond_10

    .line 569
    iget v3, v14, Lcom/android/internal/telephony/IntRangeManager$ClientRange;->mEndId:I
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 479
    .end local v13    # "largestEndId":I
    .end local v14    # "cr":Lcom/android/internal/telephony/IntRangeManager$ClientRange;
    .restart local v3    # "largestEndId":I
    move v13, v3

    .end local v3    # "largestEndId":I
    .restart local v13    # "largestEndId":I
    :cond_10
    add-int/lit8 v11, v11, 0x1

    move v10, v0

    move/from16 v4, v19

    move-object/from16 v8, v20

    move/from16 v0, p1

    move-object/from16 v3, p3

    const/4 v5, 0x0

    goto/16 :goto_1

    .line 440
    .end local v7    # "range":Lcom/android/internal/telephony/IntRangeManager$IntRange;
    .end local v9    # "crLength":I
    .end local v11    # "crIndex":I
    .end local v12    # "updateStarted":Z
    .end local v13    # "largestEndId":I
    .end local v19    # "len":I
    .end local v20    # "clients":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/telephony/IntRangeManager$ClientRange;>;"
    .restart local v4    # "len":I
    :cond_11
    move/from16 v19, v4

    .end local v4    # "len":I
    .restart local v19    # "len":I
    add-int/lit8 v6, v6, 0x1

    move/from16 v4, v19

    move/from16 v0, p1

    move-object/from16 v3, p3

    const/4 v5, 0x0

    goto/16 :goto_0

    .line 576
    .end local v6    # "i":I
    .end local v19    # "len":I
    .restart local v4    # "len":I
    :cond_12
    move/from16 v19, v4

    .end local v4    # "len":I
    .restart local v19    # "len":I
    monitor-exit p0

    const/4 v0, 0x0

    return v0

    .line 437
    .end local v19    # "len":I
    .end local p1    # "startId":I
    .end local p2    # "endId":I
    .end local p3    # "client":Ljava/lang/String;
    :catchall_0
    move-exception v0

    monitor-exit p0

    .end local p0    # "this":Lcom/android/internal/telephony/IntRangeManager;
    throw v0
.end method

.method public declared-synchronized enableRange(IILjava/lang/String;)Z
    .locals 12
    .param p1, "startId"    # I
    .param p2, "endId"    # I
    .param p3, "client"    # Ljava/lang/String;

    monitor-enter p0

    .line 194
    :try_start_0
    iget-object v0, p0, Lcom/android/internal/telephony/IntRangeManager;->mRanges:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 197
    .local v0, "len":I
    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_1

    .line 198
    invoke-virtual {p0, p1, p2, v2}, Lcom/android/internal/telephony/IntRangeManager;->tryAddRanges(IIZ)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 199
    iget-object v1, p0, Lcom/android/internal/telephony/IntRangeManager;->mRanges:Ljava/util/ArrayList;

    new-instance v3, Lcom/android/internal/telephony/IntRangeManager$IntRange;

    invoke-direct {v3, p0, p1, p2, p3}, Lcom/android/internal/telephony/IntRangeManager$IntRange;-><init>(Lcom/android/internal/telephony/IntRangeManager;IILjava/lang/String;)V

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 200
    monitor-exit p0

    return v2

    .line 202
    :cond_0
    monitor-exit p0

    return v1

    .line 206
    :cond_1
    move v3, v1

    .local v3, "startIndex":I
    :goto_0
    if-ge v3, v0, :cond_21

    .line 207
    :try_start_1
    iget-object v4, p0, Lcom/android/internal/telephony/IntRangeManager;->mRanges:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/internal/telephony/IntRangeManager$IntRange;

    .line 208
    .local v4, "range":Lcom/android/internal/telephony/IntRangeManager$IntRange;
    iget v5, v4, Lcom/android/internal/telephony/IntRangeManager$IntRange;->mStartId:I

    if-lt p1, v5, :cond_2

    iget v5, v4, Lcom/android/internal/telephony/IntRangeManager$IntRange;->mEndId:I

    if-gt p2, v5, :cond_2

    .line 213
    new-instance v1, Lcom/android/internal/telephony/IntRangeManager$ClientRange;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/android/internal/telephony/IntRangeManager$ClientRange;-><init>(Lcom/android/internal/telephony/IntRangeManager;IILjava/lang/String;)V

    invoke-virtual {v4, v1}, Lcom/android/internal/telephony/IntRangeManager$IntRange;->insert(Lcom/android/internal/telephony/IntRangeManager$ClientRange;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 214
    monitor-exit p0

    return v2

    .line 215
    :cond_2
    add-int/lit8 v5, p1, -0x1

    :try_start_2
    iget v6, v4, Lcom/android/internal/telephony/IntRangeManager$IntRange;->mEndId:I

    if-ne v5, v6, :cond_8

    .line 218
    move v5, p2

    .line 219
    .local v5, "newRangeEndId":I
    const/4 v6, 0x0

    .line 220
    .local v6, "nextRange":Lcom/android/internal/telephony/IntRangeManager$IntRange;
    add-int/lit8 v7, v3, 0x1

    if-ge v7, v0, :cond_4

    .line 221
    iget-object v7, p0, Lcom/android/internal/telephony/IntRangeManager;->mRanges:Ljava/util/ArrayList;

    add-int/lit8 v8, v3, 0x1

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/internal/telephony/IntRangeManager$IntRange;

    move-object v6, v7

    .line 222
    iget v7, v6, Lcom/android/internal/telephony/IntRangeManager$IntRange;->mStartId:I

    sub-int/2addr v7, v2

    if-gt v7, p2, :cond_3

    .line 224
    iget v7, v6, Lcom/android/internal/telephony/IntRangeManager$IntRange;->mEndId:I

    if-gt p2, v7, :cond_4

    .line 226
    iget v7, v6, Lcom/android/internal/telephony/IntRangeManager$IntRange;->mStartId:I

    add-int/lit8 v5, v7, -0x1

    goto :goto_1

    .line 230
    :cond_3
    const/4 v6, 0x0

    .line 233
    :cond_4
    :goto_1
    invoke-virtual {p0, p1, v5, v2}, Lcom/android/internal/telephony/IntRangeManager;->tryAddRanges(IIZ)Z

    move-result v7

    if-eqz v7, :cond_7

    .line 234
    iput p2, v4, Lcom/android/internal/telephony/IntRangeManager$IntRange;->mEndId:I

    .line 235
    new-instance v1, Lcom/android/internal/telephony/IntRangeManager$ClientRange;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/android/internal/telephony/IntRangeManager$ClientRange;-><init>(Lcom/android/internal/telephony/IntRangeManager;IILjava/lang/String;)V

    invoke-virtual {v4, v1}, Lcom/android/internal/telephony/IntRangeManager$IntRange;->insert(Lcom/android/internal/telephony/IntRangeManager$ClientRange;)V

    .line 238
    if-eqz v6, :cond_6

    .line 239
    iget v1, v4, Lcom/android/internal/telephony/IntRangeManager$IntRange;->mEndId:I

    iget v7, v6, Lcom/android/internal/telephony/IntRangeManager$IntRange;->mEndId:I

    if-ge v1, v7, :cond_5

    .line 241
    iget v1, v6, Lcom/android/internal/telephony/IntRangeManager$IntRange;->mEndId:I

    iput v1, v4, Lcom/android/internal/telephony/IntRangeManager$IntRange;->mEndId:I

    .line 243
    :cond_5
    iget-object v1, v4, Lcom/android/internal/telephony/IntRangeManager$IntRange;->mClients:Ljava/util/ArrayList;

    iget-object v7, v6, Lcom/android/internal/telephony/IntRangeManager$IntRange;->mClients:Ljava/util/ArrayList;

    invoke-virtual {v1, v7}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 244
    iget-object v1, p0, Lcom/android/internal/telephony/IntRangeManager;->mRanges:Ljava/util/ArrayList;

    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 246
    :cond_6
    monitor-exit p0

    return v2

    .line 248
    :cond_7
    monitor-exit p0

    return v1

    .line 250
    .end local v5    # "newRangeEndId":I
    .end local v6    # "nextRange":Lcom/android/internal/telephony/IntRangeManager$IntRange;
    :cond_8
    :try_start_3
    iget v5, v4, Lcom/android/internal/telephony/IntRangeManager$IntRange;->mStartId:I

    if-ge p1, v5, :cond_16

    .line 254
    add-int/lit8 v5, p2, 0x1

    iget v6, v4, Lcom/android/internal/telephony/IntRangeManager$IntRange;->mStartId:I

    if-ge v5, v6, :cond_a

    .line 257
    invoke-virtual {p0, p1, p2, v2}, Lcom/android/internal/telephony/IntRangeManager;->tryAddRanges(IIZ)Z

    move-result v5

    if-eqz v5, :cond_9

    .line 258
    iget-object v1, p0, Lcom/android/internal/telephony/IntRangeManager;->mRanges:Ljava/util/ArrayList;

    new-instance v5, Lcom/android/internal/telephony/IntRangeManager$IntRange;

    invoke-direct {v5, p0, p1, p2, p3}, Lcom/android/internal/telephony/IntRangeManager$IntRange;-><init>(Lcom/android/internal/telephony/IntRangeManager;IILjava/lang/String;)V

    invoke-virtual {v1, v3, v5}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 259
    monitor-exit p0

    return v2

    .line 261
    :cond_9
    monitor-exit p0

    return v1

    .line 263
    :cond_a
    :try_start_4
    iget v5, v4, Lcom/android/internal/telephony/IntRangeManager$IntRange;->mEndId:I

    if-gt p2, v5, :cond_c

    .line 266
    iget v5, v4, Lcom/android/internal/telephony/IntRangeManager$IntRange;->mStartId:I

    sub-int/2addr v5, v2

    invoke-virtual {p0, p1, v5, v2}, Lcom/android/internal/telephony/IntRangeManager;->tryAddRanges(IIZ)Z

    move-result v5

    if-eqz v5, :cond_b

    .line 267
    iput p1, v4, Lcom/android/internal/telephony/IntRangeManager$IntRange;->mStartId:I

    .line 268
    iget-object v5, v4, Lcom/android/internal/telephony/IntRangeManager$IntRange;->mClients:Ljava/util/ArrayList;

    new-instance v6, Lcom/android/internal/telephony/IntRangeManager$ClientRange;

    invoke-direct {v6, p0, p1, p2, p3}, Lcom/android/internal/telephony/IntRangeManager$ClientRange;-><init>(Lcom/android/internal/telephony/IntRangeManager;IILjava/lang/String;)V

    invoke-virtual {v5, v1, v6}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 269
    monitor-exit p0

    return v2

    .line 271
    :cond_b
    monitor-exit p0

    return v1

    .line 275
    :cond_c
    add-int/lit8 v5, v3, 0x1

    .local v5, "endIndex":I
    :goto_2
    if-ge v5, v0, :cond_13

    .line 276
    :try_start_5
    iget-object v6, p0, Lcom/android/internal/telephony/IntRangeManager;->mRanges:Ljava/util/ArrayList;

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/internal/telephony/IntRangeManager$IntRange;

    .line 277
    .local v6, "endRange":Lcom/android/internal/telephony/IntRangeManager$IntRange;
    add-int/lit8 v7, p2, 0x1

    iget v8, v6, Lcom/android/internal/telephony/IntRangeManager$IntRange;->mStartId:I

    if-ge v7, v8, :cond_f

    .line 280
    invoke-virtual {p0, p1, p2, v2}, Lcom/android/internal/telephony/IntRangeManager;->tryAddRanges(IIZ)Z

    move-result v7

    if-eqz v7, :cond_e

    .line 281
    iput p1, v4, Lcom/android/internal/telephony/IntRangeManager$IntRange;->mStartId:I

    .line 282
    iput p2, v4, Lcom/android/internal/telephony/IntRangeManager$IntRange;->mEndId:I

    .line 284
    iget-object v7, v4, Lcom/android/internal/telephony/IntRangeManager$IntRange;->mClients:Ljava/util/ArrayList;

    new-instance v8, Lcom/android/internal/telephony/IntRangeManager$ClientRange;

    invoke-direct {v8, p0, p1, p2, p3}, Lcom/android/internal/telephony/IntRangeManager$ClientRange;-><init>(Lcom/android/internal/telephony/IntRangeManager;IILjava/lang/String;)V

    invoke-virtual {v7, v1, v8}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 290
    add-int/lit8 v1, v3, 0x1

    .line 291
    .local v1, "joinIndex":I
    move v7, v1

    .local v7, "i":I
    :goto_3
    if-ge v7, v5, :cond_d

    .line 293
    iget-object v8, p0, Lcom/android/internal/telephony/IntRangeManager;->mRanges:Ljava/util/ArrayList;

    invoke-virtual {v8, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/internal/telephony/IntRangeManager$IntRange;

    .line 294
    .local v8, "joinRange":Lcom/android/internal/telephony/IntRangeManager$IntRange;
    iget-object v9, v4, Lcom/android/internal/telephony/IntRangeManager$IntRange;->mClients:Ljava/util/ArrayList;

    iget-object v10, v8, Lcom/android/internal/telephony/IntRangeManager$IntRange;->mClients:Ljava/util/ArrayList;

    invoke-virtual {v9, v10}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 295
    iget-object v9, p0, Lcom/android/internal/telephony/IntRangeManager;->mRanges:Ljava/util/ArrayList;

    invoke-virtual {v9, v8}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 291
    .end local v8    # "joinRange":Lcom/android/internal/telephony/IntRangeManager$IntRange;
    add-int/lit8 v7, v7, 0x1

    goto :goto_3

    .line 297
    .end local v7    # "i":I
    :cond_d
    monitor-exit p0

    return v2

    .line 299
    .end local v1    # "joinIndex":I
    :cond_e
    monitor-exit p0

    return v1

    .line 301
    :cond_f
    :try_start_6
    iget v7, v6, Lcom/android/internal/telephony/IntRangeManager$IntRange;->mEndId:I

    if-gt p2, v7, :cond_12

    .line 305
    iget v7, v6, Lcom/android/internal/telephony/IntRangeManager$IntRange;->mStartId:I

    sub-int/2addr v7, v2

    invoke-virtual {p0, p1, v7, v2}, Lcom/android/internal/telephony/IntRangeManager;->tryAddRanges(IIZ)Z

    move-result v7

    if-eqz v7, :cond_11

    .line 306
    iput p1, v4, Lcom/android/internal/telephony/IntRangeManager$IntRange;->mStartId:I

    .line 307
    iget v7, v6, Lcom/android/internal/telephony/IntRangeManager$IntRange;->mEndId:I

    iput v7, v4, Lcom/android/internal/telephony/IntRangeManager$IntRange;->mEndId:I

    .line 309
    iget-object v7, v4, Lcom/android/internal/telephony/IntRangeManager$IntRange;->mClients:Ljava/util/ArrayList;

    new-instance v8, Lcom/android/internal/telephony/IntRangeManager$ClientRange;

    invoke-direct {v8, p0, p1, p2, p3}, Lcom/android/internal/telephony/IntRangeManager$ClientRange;-><init>(Lcom/android/internal/telephony/IntRangeManager;IILjava/lang/String;)V

    invoke-virtual {v7, v1, v8}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 315
    add-int/lit8 v1, v3, 0x1

    .line 316
    .restart local v1    # "joinIndex":I
    move v7, v1

    .restart local v7    # "i":I
    :goto_4
    if-gt v7, v5, :cond_10

    .line 317
    iget-object v8, p0, Lcom/android/internal/telephony/IntRangeManager;->mRanges:Ljava/util/ArrayList;

    invoke-virtual {v8, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/internal/telephony/IntRangeManager$IntRange;

    .line 318
    .restart local v8    # "joinRange":Lcom/android/internal/telephony/IntRangeManager$IntRange;
    iget-object v9, v4, Lcom/android/internal/telephony/IntRangeManager$IntRange;->mClients:Ljava/util/ArrayList;

    iget-object v10, v8, Lcom/android/internal/telephony/IntRangeManager$IntRange;->mClients:Ljava/util/ArrayList;

    invoke-virtual {v9, v10}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 319
    iget-object v9, p0, Lcom/android/internal/telephony/IntRangeManager;->mRanges:Ljava/util/ArrayList;

    invoke-virtual {v9, v8}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 316
    .end local v8    # "joinRange":Lcom/android/internal/telephony/IntRangeManager$IntRange;
    add-int/lit8 v7, v7, 0x1

    goto :goto_4

    .line 321
    .end local v7    # "i":I
    :cond_10
    monitor-exit p0

    return v2

    .line 323
    .end local v1    # "joinIndex":I
    :cond_11
    monitor-exit p0

    return v1

    .line 275
    .end local v6    # "endRange":Lcom/android/internal/telephony/IntRangeManager$IntRange;
    :cond_12
    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_2

    .line 330
    .end local v5    # "endIndex":I
    :cond_13
    :try_start_7
    invoke-virtual {p0, p1, p2, v2}, Lcom/android/internal/telephony/IntRangeManager;->tryAddRanges(IIZ)Z

    move-result v5

    if-eqz v5, :cond_15

    .line 331
    iput p1, v4, Lcom/android/internal/telephony/IntRangeManager$IntRange;->mStartId:I

    .line 332
    iput p2, v4, Lcom/android/internal/telephony/IntRangeManager$IntRange;->mEndId:I

    .line 334
    iget-object v5, v4, Lcom/android/internal/telephony/IntRangeManager$IntRange;->mClients:Ljava/util/ArrayList;

    new-instance v6, Lcom/android/internal/telephony/IntRangeManager$ClientRange;

    invoke-direct {v6, p0, p1, p2, p3}, Lcom/android/internal/telephony/IntRangeManager$ClientRange;-><init>(Lcom/android/internal/telephony/IntRangeManager;IILjava/lang/String;)V

    invoke-virtual {v5, v1, v6}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 340
    add-int/lit8 v1, v3, 0x1

    .line 341
    .restart local v1    # "joinIndex":I
    move v5, v1

    .local v5, "i":I
    :goto_5
    if-ge v5, v0, :cond_14

    .line 343
    iget-object v6, p0, Lcom/android/internal/telephony/IntRangeManager;->mRanges:Ljava/util/ArrayList;

    invoke-virtual {v6, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/internal/telephony/IntRangeManager$IntRange;

    .line 344
    .local v6, "joinRange":Lcom/android/internal/telephony/IntRangeManager$IntRange;
    iget-object v7, v4, Lcom/android/internal/telephony/IntRangeManager$IntRange;->mClients:Ljava/util/ArrayList;

    iget-object v8, v6, Lcom/android/internal/telephony/IntRangeManager$IntRange;->mClients:Ljava/util/ArrayList;

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 345
    iget-object v7, p0, Lcom/android/internal/telephony/IntRangeManager;->mRanges:Ljava/util/ArrayList;

    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 341
    .end local v6    # "joinRange":Lcom/android/internal/telephony/IntRangeManager$IntRange;
    add-int/lit8 v5, v5, 0x1

    goto :goto_5

    .line 347
    .end local v5    # "i":I
    :cond_14
    monitor-exit p0

    return v2

    .line 349
    .end local v1    # "joinIndex":I
    :cond_15
    monitor-exit p0

    return v1

    .line 352
    :cond_16
    add-int/lit8 v5, p1, 0x1

    :try_start_8
    iget v6, v4, Lcom/android/internal/telephony/IntRangeManager$IntRange;->mEndId:I

    if-gt v5, v6, :cond_20

    .line 354
    iget v5, v4, Lcom/android/internal/telephony/IntRangeManager$IntRange;->mEndId:I

    if-gt p2, v5, :cond_17

    .line 357
    new-instance v1, Lcom/android/internal/telephony/IntRangeManager$ClientRange;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/android/internal/telephony/IntRangeManager$ClientRange;-><init>(Lcom/android/internal/telephony/IntRangeManager;IILjava/lang/String;)V

    invoke-virtual {v4, v1}, Lcom/android/internal/telephony/IntRangeManager$IntRange;->insert(Lcom/android/internal/telephony/IntRangeManager$ClientRange;)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 358
    monitor-exit p0

    return v2

    .line 362
    :cond_17
    move v5, v3

    .line 363
    .local v5, "endIndex":I
    add-int/lit8 v6, v3, 0x1

    .local v6, "testIndex":I
    :goto_6
    if-ge v6, v0, :cond_19

    .line 364
    :try_start_9
    iget-object v7, p0, Lcom/android/internal/telephony/IntRangeManager;->mRanges:Ljava/util/ArrayList;

    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/internal/telephony/IntRangeManager$IntRange;

    .line 365
    .local v7, "testRange":Lcom/android/internal/telephony/IntRangeManager$IntRange;
    add-int/lit8 v8, p2, 0x1

    iget v9, v7, Lcom/android/internal/telephony/IntRangeManager$IntRange;->mStartId:I

    if-ge v8, v9, :cond_18

    .line 366
    goto :goto_7

    .line 368
    :cond_18
    move v5, v6

    .line 363
    .end local v7    # "testRange":Lcom/android/internal/telephony/IntRangeManager$IntRange;
    add-int/lit8 v6, v6, 0x1

    goto :goto_6

    .line 372
    .end local v6    # "testIndex":I
    :cond_19
    :goto_7
    if-ne v5, v3, :cond_1b

    .line 376
    iget v6, v4, Lcom/android/internal/telephony/IntRangeManager$IntRange;->mEndId:I

    add-int/2addr v6, v2

    invoke-virtual {p0, v6, p2, v2}, Lcom/android/internal/telephony/IntRangeManager;->tryAddRanges(IIZ)Z

    move-result v6

    if-eqz v6, :cond_1a

    .line 377
    iput p2, v4, Lcom/android/internal/telephony/IntRangeManager$IntRange;->mEndId:I

    .line 378
    new-instance v1, Lcom/android/internal/telephony/IntRangeManager$ClientRange;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/android/internal/telephony/IntRangeManager$ClientRange;-><init>(Lcom/android/internal/telephony/IntRangeManager;IILjava/lang/String;)V

    invoke-virtual {v4, v1}, Lcom/android/internal/telephony/IntRangeManager$IntRange;->insert(Lcom/android/internal/telephony/IntRangeManager$ClientRange;)V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    .line 379
    monitor-exit p0

    return v2

    .line 381
    :cond_1a
    monitor-exit p0

    return v1

    .line 385
    :cond_1b
    :try_start_a
    iget-object v6, p0, Lcom/android/internal/telephony/IntRangeManager;->mRanges:Ljava/util/ArrayList;

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/internal/telephony/IntRangeManager$IntRange;

    .line 390
    .local v6, "endRange":Lcom/android/internal/telephony/IntRangeManager$IntRange;
    iget v7, v6, Lcom/android/internal/telephony/IntRangeManager$IntRange;->mEndId:I

    if-gt p2, v7, :cond_1c

    iget v7, v6, Lcom/android/internal/telephony/IntRangeManager$IntRange;->mStartId:I

    sub-int/2addr v7, v2

    goto :goto_8

    :cond_1c
    move v7, p2

    .line 393
    .local v7, "newRangeEndId":I
    :goto_8
    iget v8, v4, Lcom/android/internal/telephony/IntRangeManager$IntRange;->mEndId:I

    add-int/2addr v8, v2

    invoke-virtual {p0, v8, v7, v2}, Lcom/android/internal/telephony/IntRangeManager;->tryAddRanges(IIZ)Z

    move-result v8

    if-eqz v8, :cond_1f

    .line 394
    iget v1, v6, Lcom/android/internal/telephony/IntRangeManager$IntRange;->mEndId:I

    if-gt p2, v1, :cond_1d

    iget v1, v6, Lcom/android/internal/telephony/IntRangeManager$IntRange;->mEndId:I

    goto :goto_9

    :cond_1d
    move v1, p2

    .line 395
    .end local v7    # "newRangeEndId":I
    .local v1, "newRangeEndId":I
    :goto_9
    iput v1, v4, Lcom/android/internal/telephony/IntRangeManager$IntRange;->mEndId:I

    .line 397
    new-instance v7, Lcom/android/internal/telephony/IntRangeManager$ClientRange;

    invoke-direct {v7, p0, p1, p2, p3}, Lcom/android/internal/telephony/IntRangeManager$ClientRange;-><init>(Lcom/android/internal/telephony/IntRangeManager;IILjava/lang/String;)V

    invoke-virtual {v4, v7}, Lcom/android/internal/telephony/IntRangeManager$IntRange;->insert(Lcom/android/internal/telephony/IntRangeManager$ClientRange;)V

    .line 403
    add-int/lit8 v7, v3, 0x1

    .line 404
    .local v7, "joinIndex":I
    move v8, v7

    .local v8, "i":I
    :goto_a
    if-gt v8, v5, :cond_1e

    .line 405
    iget-object v9, p0, Lcom/android/internal/telephony/IntRangeManager;->mRanges:Ljava/util/ArrayList;

    invoke-virtual {v9, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/internal/telephony/IntRangeManager$IntRange;

    .line 406
    .local v9, "joinRange":Lcom/android/internal/telephony/IntRangeManager$IntRange;
    iget-object v10, v4, Lcom/android/internal/telephony/IntRangeManager$IntRange;->mClients:Ljava/util/ArrayList;

    iget-object v11, v9, Lcom/android/internal/telephony/IntRangeManager$IntRange;->mClients:Ljava/util/ArrayList;

    invoke-virtual {v10, v11}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 407
    iget-object v10, p0, Lcom/android/internal/telephony/IntRangeManager;->mRanges:Ljava/util/ArrayList;

    invoke-virtual {v10, v9}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    .line 404
    .end local v9    # "joinRange":Lcom/android/internal/telephony/IntRangeManager$IntRange;
    add-int/lit8 v8, v8, 0x1

    goto :goto_a

    .line 409
    .end local v8    # "i":I
    :cond_1e
    monitor-exit p0

    return v2

    .line 411
    .end local v1    # "newRangeEndId":I
    .local v7, "newRangeEndId":I
    :cond_1f
    monitor-exit p0

    return v1

    .line 206
    .end local v4    # "range":Lcom/android/internal/telephony/IntRangeManager$IntRange;
    .end local v5    # "endIndex":I
    .end local v6    # "endRange":Lcom/android/internal/telephony/IntRangeManager$IntRange;
    .end local v7    # "newRangeEndId":I
    :cond_20
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_0

    .line 419
    .end local v3    # "startIndex":I
    :cond_21
    :try_start_b
    invoke-virtual {p0, p1, p2, v2}, Lcom/android/internal/telephony/IntRangeManager;->tryAddRanges(IIZ)Z

    move-result v3

    if-eqz v3, :cond_22

    .line 420
    iget-object v1, p0, Lcom/android/internal/telephony/IntRangeManager;->mRanges:Ljava/util/ArrayList;

    new-instance v3, Lcom/android/internal/telephony/IntRangeManager$IntRange;

    invoke-direct {v3, p0, p1, p2, p3}, Lcom/android/internal/telephony/IntRangeManager$IntRange;-><init>(Lcom/android/internal/telephony/IntRangeManager;IILjava/lang/String;)V

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    .line 421
    monitor-exit p0

    return v2

    .line 423
    :cond_22
    monitor-exit p0

    return v1

    .line 193
    .end local v0    # "len":I
    .end local p1    # "startId":I
    .end local p2    # "endId":I
    .end local p3    # "client":Ljava/lang/String;
    :catchall_0
    move-exception p1

    monitor-exit p0

    .end local p0    # "this":Lcom/android/internal/telephony/IntRangeManager;
    throw p1
.end method

.method protected abstract finishUpdate()Z
.end method

.method public isEmpty()Z
    .locals 1

    .line 613
    iget-object v0, p0, Lcom/android/internal/telephony/IntRangeManager;->mRanges:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    return v0
.end method

.method protected abstract startUpdate()V
.end method

.method protected tryAddRanges(IIZ)Z
    .locals 1
    .param p1, "startId"    # I
    .param p2, "endId"    # I
    .param p3, "selected"    # Z

    .line 601
    invoke-virtual {p0}, Lcom/android/internal/telephony/IntRangeManager;->startUpdate()V

    .line 602
    invoke-direct {p0}, Lcom/android/internal/telephony/IntRangeManager;->populateAllRanges()V

    .line 604
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/internal/telephony/IntRangeManager;->addRange(IIZ)V

    .line 605
    invoke-virtual {p0}, Lcom/android/internal/telephony/IntRangeManager;->finishUpdate()Z

    move-result v0

    return v0
.end method

.method public updateRanges()Z
    .locals 1

    .line 586
    invoke-virtual {p0}, Lcom/android/internal/telephony/IntRangeManager;->startUpdate()V

    .line 588
    invoke-direct {p0}, Lcom/android/internal/telephony/IntRangeManager;->populateAllRanges()V

    .line 589
    invoke-virtual {p0}, Lcom/android/internal/telephony/IntRangeManager;->finishUpdate()Z

    move-result v0

    return v0
.end method
