.class Landroid/os/StrictMode$AndroidBlockGuardPolicy;
.super Ljava/lang/Object;
.source "StrictMode.java"

# interfaces
.implements Ldalvik/system/BlockGuard$Policy;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/StrictMode;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "AndroidBlockGuardPolicy"
.end annotation


# instance fields
.field private mLastViolationTime:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private mPolicyMask:I


# direct methods
.method public constructor <init>(I)V
    .locals 0
    .param p1, "policyMask"    # I

    .line 1441
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1442
    iput p1, p0, Landroid/os/StrictMode$AndroidBlockGuardPolicy;->mPolicyMask:I

    .line 1443
    return-void
.end method

.method public static synthetic lambda$handleViolationWithTimingAttempt$0(Landroid/os/StrictMode$AndroidBlockGuardPolicy;Landroid/view/IWindowManager;Ljava/util/ArrayList;)V
    .locals 6
    .param p1, "windowManager"    # Landroid/view/IWindowManager;
    .param p2, "records"    # Ljava/util/ArrayList;

    .line 1604
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 1610
    .local v0, "loopFinishTime":J
    const/4 v2, 0x0

    if-eqz p1, :cond_0

    .line 1612
    :try_start_0
    invoke-interface {p1, v2}, Landroid/view/IWindowManager;->showStrictModeViolation(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1614
    goto :goto_0

    .line 1613
    :catch_0
    move-exception v3

    .line 1617
    :cond_0
    :goto_0
    nop

    .local v2, "n":I
    :goto_1
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_1

    .line 1618
    invoke-virtual {p2, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/StrictMode$ViolationInfo;

    .line 1619
    .local v3, "v":Landroid/os/StrictMode$ViolationInfo;
    add-int/lit8 v4, v2, 0x1

    iput v4, v3, Landroid/os/StrictMode$ViolationInfo;->violationNumThisLoop:I

    .line 1620
    iget-wide v4, v3, Landroid/os/StrictMode$ViolationInfo;->violationUptimeMillis:J

    sub-long v4, v0, v4

    long-to-int v4, v4

    iput v4, v3, Landroid/os/StrictMode$ViolationInfo;->durationMillis:I

    .line 1622
    invoke-virtual {p0, v3}, Landroid/os/StrictMode$AndroidBlockGuardPolicy;->onThreadPolicyViolation(Landroid/os/StrictMode$ViolationInfo;)V

    .line 1617
    .end local v3    # "v":Landroid/os/StrictMode$ViolationInfo;
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 1624
    .end local v2    # "n":I
    :cond_1
    invoke-virtual {p2}, Ljava/util/ArrayList;->clear()V

    .line 1625
    return-void
.end method

.method static synthetic lambda$onThreadPolicyViolation$1(Landroid/os/StrictMode$OnThreadViolationListener;Landroid/os/strictmode/Violation;)V
    .locals 2
    .param p0, "listener"    # Landroid/os/StrictMode$OnThreadViolationListener;
    .param p1, "violation"    # Landroid/os/strictmode/Violation;

    .line 1723
    invoke-static {}, Landroid/os/StrictMode;->access$1800()Landroid/os/StrictMode$ThreadPolicy;

    move-result-object v0

    .line 1725
    .local v0, "oldPolicy":Landroid/os/StrictMode$ThreadPolicy;
    :try_start_0
    invoke-interface {p0, p1}, Landroid/os/StrictMode$OnThreadViolationListener;->onThreadViolation(Landroid/os/strictmode/Violation;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1727
    invoke-static {v0}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    .line 1728
    nop

    .line 1729
    return-void

    .line 1727
    :catchall_0
    move-exception v1

    invoke-static {v0}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    throw v1
.end method


# virtual methods
.method public getPolicyMask()I
    .locals 1

    .line 1452
    iget v0, p0, Landroid/os/StrictMode$AndroidBlockGuardPolicy;->mPolicyMask:I

    return v0
.end method

.method handleViolationWithTimingAttempt(Landroid/os/StrictMode$ViolationInfo;)V
    .locals 5
    .param p1, "info"    # Landroid/os/StrictMode$ViolationInfo;

    .line 1545
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    .line 1563
    .local v0, "looper":Landroid/os/Looper;
    if-eqz v0, :cond_5

    invoke-static {p1}, Landroid/os/StrictMode$ViolationInfo;->access$500(Landroid/os/StrictMode$ViolationInfo;)I

    move-result v1

    const/high16 v2, 0x1770000

    and-int/2addr v1, v2

    const/high16 v2, 0x40000

    if-ne v1, v2, :cond_0

    goto :goto_2

    .line 1569
    :cond_0
    invoke-static {}, Landroid/os/StrictMode;->access$600()Ljava/lang/ThreadLocal;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    .line 1570
    .local v1, "records":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/os/StrictMode$ViolationInfo;>;"
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/16 v3, 0xa

    if-lt v2, v3, :cond_1

    .line 1572
    return-void

    .line 1574
    :cond_1
    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1575
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v3, 0x1

    if-le v2, v3, :cond_2

    .line 1579
    return-void

    .line 1583
    :cond_2
    const/high16 v2, 0x100000

    invoke-virtual {p1, v2}, Landroid/os/StrictMode$ViolationInfo;->penaltyEnabled(I)Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-static {}, Landroid/os/StrictMode;->access$700()Landroid/util/Singleton;

    move-result-object v2

    invoke-virtual {v2}, Landroid/util/Singleton;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/IWindowManager;

    goto :goto_0

    :cond_3
    const/4 v2, 0x0

    .line 1584
    .local v2, "windowManager":Landroid/view/IWindowManager;
    :goto_0
    if-eqz v2, :cond_4

    .line 1586
    :try_start_0
    invoke-interface {v2, v3}, Landroid/view/IWindowManager;->showStrictModeViolation(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1588
    goto :goto_1

    .line 1587
    :catch_0
    move-exception v3

    .line 1600
    :cond_4
    :goto_1
    invoke-static {}, Landroid/os/StrictMode;->access$800()Ljava/lang/ThreadLocal;

    move-result-object v3

    .line 1601
    invoke-virtual {v3}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/Handler;

    new-instance v4, Landroid/os/-$$Lambda$StrictMode$AndroidBlockGuardPolicy$9nBulCQKaMajrWr41SB7f7YRT1I;

    invoke-direct {v4, p0, v2, v1}, Landroid/os/-$$Lambda$StrictMode$AndroidBlockGuardPolicy$9nBulCQKaMajrWr41SB7f7YRT1I;-><init>(Landroid/os/StrictMode$AndroidBlockGuardPolicy;Landroid/view/IWindowManager;Ljava/util/ArrayList;)V

    .line 1602
    invoke-virtual {v3, v4}, Landroid/os/Handler;->postAtFrontOfQueue(Ljava/lang/Runnable;)Z

    .line 1626
    return-void

    .line 1564
    .end local v1    # "records":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/os/StrictMode$ViolationInfo;>;"
    .end local v2    # "windowManager":Landroid/view/IWindowManager;
    :cond_5
    :goto_2
    const/4 v1, -0x1

    iput v1, p1, Landroid/os/StrictMode$ViolationInfo;->durationMillis:I

    .line 1565
    invoke-virtual {p0, p1}, Landroid/os/StrictMode$AndroidBlockGuardPolicy;->onThreadPolicyViolation(Landroid/os/StrictMode$ViolationInfo;)V

    .line 1566
    return-void
.end method

.method onCustomSlowCall(Ljava/lang/String;)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    .line 1468
    iget v0, p0, Landroid/os/StrictMode$AndroidBlockGuardPolicy;->mPolicyMask:I

    and-int/lit8 v0, v0, 0x8

    if-nez v0, :cond_0

    .line 1469
    return-void

    .line 1471
    :cond_0
    invoke-static {}, Landroid/os/StrictMode;->access$400()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1472
    return-void

    .line 1474
    :cond_1
    new-instance v0, Landroid/os/strictmode/CustomViolation;

    invoke-direct {v0, p1}, Landroid/os/strictmode/CustomViolation;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Landroid/os/StrictMode$AndroidBlockGuardPolicy;->startHandlingViolationException(Landroid/os/strictmode/Violation;)V

    .line 1475
    return-void
.end method

.method public onNetwork()V
    .locals 2

    .line 1512
    iget v0, p0, Landroid/os/StrictMode$AndroidBlockGuardPolicy;->mPolicyMask:I

    and-int/lit8 v0, v0, 0x4

    if-nez v0, :cond_0

    .line 1513
    return-void

    .line 1515
    :cond_0
    iget v0, p0, Landroid/os/StrictMode$AndroidBlockGuardPolicy;->mPolicyMask:I

    const/high16 v1, 0x1000000

    and-int/2addr v0, v1

    if-nez v0, :cond_2

    .line 1518
    invoke-static {}, Landroid/os/StrictMode;->access$400()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1519
    return-void

    .line 1521
    :cond_1
    new-instance v0, Landroid/os/strictmode/NetworkViolation;

    invoke-direct {v0}, Landroid/os/strictmode/NetworkViolation;-><init>()V

    invoke-virtual {p0, v0}, Landroid/os/StrictMode$AndroidBlockGuardPolicy;->startHandlingViolationException(Landroid/os/strictmode/Violation;)V

    .line 1522
    return-void

    .line 1516
    :cond_2
    new-instance v0, Landroid/os/NetworkOnMainThreadException;

    invoke-direct {v0}, Landroid/os/NetworkOnMainThreadException;-><init>()V

    throw v0
.end method

.method public onReadFromDisk()V
    .locals 1

    .line 1501
    iget v0, p0, Landroid/os/StrictMode$AndroidBlockGuardPolicy;->mPolicyMask:I

    and-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_0

    .line 1502
    return-void

    .line 1504
    :cond_0
    invoke-static {}, Landroid/os/StrictMode;->access$400()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1505
    return-void

    .line 1507
    :cond_1
    new-instance v0, Landroid/os/strictmode/DiskReadViolation;

    invoke-direct {v0}, Landroid/os/strictmode/DiskReadViolation;-><init>()V

    invoke-virtual {p0, v0}, Landroid/os/StrictMode$AndroidBlockGuardPolicy;->startHandlingViolationException(Landroid/os/strictmode/Violation;)V

    .line 1508
    return-void
.end method

.method onResourceMismatch(Ljava/lang/Object;)V
    .locals 1
    .param p1, "tag"    # Ljava/lang/Object;

    .line 1479
    iget v0, p0, Landroid/os/StrictMode$AndroidBlockGuardPolicy;->mPolicyMask:I

    and-int/lit8 v0, v0, 0x10

    if-nez v0, :cond_0

    .line 1480
    return-void

    .line 1482
    :cond_0
    invoke-static {}, Landroid/os/StrictMode;->access$400()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1483
    return-void

    .line 1485
    :cond_1
    new-instance v0, Landroid/os/strictmode/ResourceMismatchViolation;

    invoke-direct {v0, p1}, Landroid/os/strictmode/ResourceMismatchViolation;-><init>(Ljava/lang/Object;)V

    invoke-virtual {p0, v0}, Landroid/os/StrictMode$AndroidBlockGuardPolicy;->startHandlingViolationException(Landroid/os/strictmode/Violation;)V

    .line 1486
    return-void
.end method

.method onThreadPolicyViolation(Landroid/os/StrictMode$ViolationInfo;)V
    .locals 17
    .param p1, "info"    # Landroid/os/StrictMode$ViolationInfo;

    move-object/from16 v1, p0

    .line 1634
    move-object/from16 v2, p1

    invoke-static {}, Landroid/os/StrictMode;->access$900()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "StrictMode"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "onThreadPolicyViolation; policy="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static/range {p1 .. p1}, Landroid/os/StrictMode$ViolationInfo;->access$500(Landroid/os/StrictMode$ViolationInfo;)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1636
    :cond_0
    const/high16 v0, 0x400000

    invoke-virtual {v2, v0}, Landroid/os/StrictMode$ViolationInfo;->penaltyEnabled(I)Z

    move-result v0

    const/4 v3, 0x1

    if-eqz v0, :cond_4

    .line 1637
    invoke-static {}, Landroid/os/StrictMode;->access$1000()Ljava/lang/ThreadLocal;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    .line 1638
    .local v0, "violations":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/os/StrictMode$ViolationInfo;>;"
    if-nez v0, :cond_1

    .line 1639
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4, v3}, Ljava/util/ArrayList;-><init>(I)V

    move-object v0, v4

    .line 1640
    invoke-static {}, Landroid/os/StrictMode;->access$1000()Ljava/lang/ThreadLocal;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 1642
    :cond_1
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/StrictMode$ViolationInfo;

    .line 1643
    .local v4, "previous":Landroid/os/StrictMode$ViolationInfo;
    invoke-virtual/range {p1 .. p1}, Landroid/os/StrictMode$ViolationInfo;->getStackTrace()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4}, Landroid/os/StrictMode$ViolationInfo;->getStackTrace()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 1645
    return-void

    .line 1647
    .end local v4    # "previous":Landroid/os/StrictMode$ViolationInfo;
    :cond_2
    goto :goto_0

    .line 1648
    :cond_3
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1649
    return-void

    .line 1653
    .end local v0    # "violations":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/os/StrictMode$ViolationInfo;>;"
    :cond_4
    invoke-virtual/range {p1 .. p1}, Landroid/os/StrictMode$ViolationInfo;->hashCode()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    .line 1654
    .local v4, "crashFingerprint":Ljava/lang/Integer;
    const-wide/16 v5, 0x0

    .line 1655
    .local v5, "lastViolationTime":J
    iget-object v0, v1, Landroid/os/StrictMode$AndroidBlockGuardPolicy;->mLastViolationTime:Landroid/util/ArrayMap;

    if-eqz v0, :cond_6

    .line 1656
    iget-object v0, v1, Landroid/os/StrictMode$AndroidBlockGuardPolicy;->mLastViolationTime:Landroid/util/ArrayMap;

    invoke-virtual {v0, v4}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    .line 1657
    .local v0, "vtime":Ljava/lang/Long;
    if-eqz v0, :cond_5

    .line 1658
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    .line 1660
    .end local v0    # "vtime":Ljava/lang/Long;
    :cond_5
    goto :goto_1

    .line 1661
    :cond_6
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0, v3}, Landroid/util/ArrayMap;-><init>(I)V

    iput-object v0, v1, Landroid/os/StrictMode$AndroidBlockGuardPolicy;->mLastViolationTime:Landroid/util/ArrayMap;

    .line 1663
    :goto_1
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v7

    .line 1664
    .local v7, "now":J
    iget-object v0, v1, Landroid/os/StrictMode$AndroidBlockGuardPolicy;->mLastViolationTime:Landroid/util/ArrayMap;

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    invoke-virtual {v0, v4, v9}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1666
    const-wide/16 v9, 0x0

    cmp-long v0, v5, v9

    if-nez v0, :cond_7

    const-wide v11, 0x7fffffffffffffffL

    goto :goto_2

    :cond_7
    sub-long v11, v7, v5

    .line 1669
    .local v11, "timeSinceLastViolationMillis":J
    :goto_2
    const/high16 v0, 0x10000

    invoke-virtual {v2, v0}, Landroid/os/StrictMode$ViolationInfo;->penaltyEnabled(I)Z

    move-result v0

    if-eqz v0, :cond_8

    const-wide/16 v13, 0x3e8

    cmp-long v0, v11, v13

    if-lez v0, :cond_8

    .line 1671
    invoke-static/range {p1 .. p1}, Landroid/os/StrictMode;->access$1100(Landroid/os/StrictMode$ViolationInfo;)Z

    move-result v0

    if-nez v0, :cond_8

    .line 1672
    invoke-static {}, Landroid/os/StrictMode;->access$1200()Landroid/os/StrictMode$ViolationLogger;

    move-result-object v0

    invoke-interface {v0, v2}, Landroid/os/StrictMode$ViolationLogger;->log(Landroid/os/StrictMode$ViolationInfo;)V

    .line 1676
    :cond_8
    invoke-static/range {p1 .. p1}, Landroid/os/StrictMode$ViolationInfo;->access$1300(Landroid/os/StrictMode$ViolationInfo;)Landroid/os/strictmode/Violation;

    move-result-object v13

    .line 1682
    .local v13, "violation":Landroid/os/strictmode/Violation;
    const/4 v0, 0x0

    .line 1684
    .local v0, "violationMaskSubset":I
    const/high16 v14, 0x20000

    invoke-virtual {v2, v14}, Landroid/os/StrictMode$ViolationInfo;->penaltyEnabled(I)Z

    move-result v15

    if-eqz v15, :cond_9

    const-wide/16 v15, 0x7530

    cmp-long v15, v11, v15

    if-lez v15, :cond_9

    .line 1686
    or-int/2addr v0, v14

    .line 1689
    :cond_9
    const/high16 v14, 0x200000

    invoke-virtual {v2, v14}, Landroid/os/StrictMode$ViolationInfo;->penaltyEnabled(I)Z

    move-result v15

    if-eqz v15, :cond_a

    cmp-long v9, v5, v9

    if-nez v9, :cond_a

    .line 1690
    or-int/2addr v0, v14

    .line 1693
    :cond_a
    if-eqz v0, :cond_d

    .line 1694
    invoke-virtual/range {p1 .. p1}, Landroid/os/StrictMode$ViolationInfo;->getViolationBit()I

    move-result v9

    or-int/2addr v0, v9

    .line 1696
    invoke-static/range {p1 .. p1}, Landroid/os/StrictMode$ViolationInfo;->access$500(Landroid/os/StrictMode$ViolationInfo;)I

    move-result v9

    const/high16 v10, 0x1770000

    and-int/2addr v9, v10

    if-ne v9, v14, :cond_b

    goto :goto_3

    :cond_b
    const/4 v3, 0x0

    .line 1697
    .local v3, "justDropBox":Z
    :goto_3
    if-eqz v3, :cond_c

    .line 1704
    invoke-static {v0, v2}, Landroid/os/StrictMode;->access$1400(ILandroid/os/StrictMode$ViolationInfo;)V

    goto :goto_4

    .line 1706
    :cond_c
    invoke-static {v0, v2}, Landroid/os/StrictMode;->access$1500(ILandroid/os/StrictMode$ViolationInfo;)V

    .line 1710
    .end local v3    # "justDropBox":Z
    :cond_d
    :goto_4
    move v3, v0

    .line 1710
    .end local v0    # "violationMaskSubset":I
    .local v3, "violationMaskSubset":I
    invoke-virtual/range {p1 .. p1}, Landroid/os/StrictMode$ViolationInfo;->getPolicyMask()I

    move-result v0

    const/high16 v9, 0x40000

    and-int/2addr v0, v9

    if-nez v0, :cond_f

    .line 1716
    invoke-static {}, Landroid/os/StrictMode;->access$1600()Ljava/lang/ThreadLocal;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v9, v0

    check-cast v9, Landroid/os/StrictMode$OnThreadViolationListener;

    .line 1717
    .local v9, "listener":Landroid/os/StrictMode$OnThreadViolationListener;
    invoke-static {}, Landroid/os/StrictMode;->access$1700()Ljava/lang/ThreadLocal;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v10, v0

    check-cast v10, Ljava/util/concurrent/Executor;

    .line 1718
    .local v10, "executor":Ljava/util/concurrent/Executor;
    if-eqz v9, :cond_e

    if-eqz v10, :cond_e

    .line 1720
    :try_start_0
    new-instance v0, Landroid/os/-$$Lambda$StrictMode$AndroidBlockGuardPolicy$FxZGA9KtfTewqdcxlUwvIe5Nx9I;

    invoke-direct {v0, v9, v13}, Landroid/os/-$$Lambda$StrictMode$AndroidBlockGuardPolicy$FxZGA9KtfTewqdcxlUwvIe5Nx9I;-><init>(Landroid/os/StrictMode$OnThreadViolationListener;Landroid/os/strictmode/Violation;)V

    invoke-interface {v10, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/util/concurrent/RejectedExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1732
    goto :goto_5

    .line 1730
    :catch_0
    move-exception v0

    .line 1731
    .local v0, "e":Ljava/util/concurrent/RejectedExecutionException;
    const-string v14, "StrictMode"

    const-string v15, "ThreadPolicy penaltyCallback failed"

    invoke-static {v14, v15, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1734
    .end local v0    # "e":Ljava/util/concurrent/RejectedExecutionException;
    :cond_e
    :goto_5
    return-void

    .line 1711
    .end local v9    # "listener":Landroid/os/StrictMode$OnThreadViolationListener;
    .end local v10    # "executor":Ljava/util/concurrent/Executor;
    :cond_f
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v9, "StrictMode ThreadPolicy violation"

    invoke-direct {v0, v9, v13}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method

.method public onUnbufferedIO()V
    .locals 1

    .line 1490
    iget v0, p0, Landroid/os/StrictMode$AndroidBlockGuardPolicy;->mPolicyMask:I

    and-int/lit8 v0, v0, 0x20

    if-nez v0, :cond_0

    .line 1491
    return-void

    .line 1493
    :cond_0
    invoke-static {}, Landroid/os/StrictMode;->access$400()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1494
    return-void

    .line 1496
    :cond_1
    new-instance v0, Landroid/os/strictmode/UnbufferedIoViolation;

    invoke-direct {v0}, Landroid/os/strictmode/UnbufferedIoViolation;-><init>()V

    invoke-virtual {p0, v0}, Landroid/os/StrictMode$AndroidBlockGuardPolicy;->startHandlingViolationException(Landroid/os/strictmode/Violation;)V

    .line 1497
    return-void
.end method

.method public onWriteToDisk()V
    .locals 1

    .line 1457
    iget v0, p0, Landroid/os/StrictMode$AndroidBlockGuardPolicy;->mPolicyMask:I

    and-int/lit8 v0, v0, 0x1

    if-nez v0, :cond_0

    .line 1458
    return-void

    .line 1460
    :cond_0
    invoke-static {}, Landroid/os/StrictMode;->access$400()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1461
    return-void

    .line 1463
    :cond_1
    new-instance v0, Landroid/os/strictmode/DiskWriteViolation;

    invoke-direct {v0}, Landroid/os/strictmode/DiskWriteViolation;-><init>()V

    invoke-virtual {p0, v0}, Landroid/os/StrictMode$AndroidBlockGuardPolicy;->startHandlingViolationException(Landroid/os/strictmode/Violation;)V

    .line 1464
    return-void
.end method

.method public setPolicyMask(I)V
    .locals 0
    .param p1, "policyMask"    # I

    .line 1525
    iput p1, p0, Landroid/os/StrictMode$AndroidBlockGuardPolicy;->mPolicyMask:I

    .line 1526
    return-void
.end method

.method startHandlingViolationException(Landroid/os/strictmode/Violation;)V
    .locals 3
    .param p1, "e"    # Landroid/os/strictmode/Violation;

    .line 1534
    new-instance v0, Landroid/os/StrictMode$ViolationInfo;

    iget v1, p0, Landroid/os/StrictMode$AndroidBlockGuardPolicy;->mPolicyMask:I

    invoke-direct {v0, p1, v1}, Landroid/os/StrictMode$ViolationInfo;-><init>(Landroid/os/strictmode/Violation;I)V

    .line 1535
    .local v0, "info":Landroid/os/StrictMode$ViolationInfo;
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    iput-wide v1, v0, Landroid/os/StrictMode$ViolationInfo;->violationUptimeMillis:J

    .line 1536
    invoke-virtual {p0, v0}, Landroid/os/StrictMode$AndroidBlockGuardPolicy;->handleViolationWithTimingAttempt(Landroid/os/StrictMode$ViolationInfo;)V

    .line 1537
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 1447
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "AndroidBlockGuardPolicy; mPolicyMask="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/os/StrictMode$AndroidBlockGuardPolicy;->mPolicyMask:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
