.class public final Landroid/view/accessibility/AccessibilityInteractionClient;
.super Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback$Stub;
.source "AccessibilityInteractionClient.java"


# static fields
.field private static final CHECK_INTEGRITY:Z = true

.field private static final DEBUG:Z = false

.field private static final LOG_TAG:Ljava/lang/String; = "AccessibilityInteractionClient"

.field public static final NO_ID:I = -0x1

.field private static final TIMEOUT_INTERACTION_MILLIS:J = 0x1388L

.field private static sAccessibilityCache:Landroid/view/accessibility/AccessibilityCache;

.field private static final sClients:Landroid/util/LongSparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/LongSparseArray<",
            "Landroid/view/accessibility/AccessibilityInteractionClient;",
            ">;"
        }
    .end annotation
.end field

.field private static final sConnectionCache:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/accessibilityservice/IAccessibilityServiceConnection;",
            ">;"
        }
    .end annotation
.end field

.field private static final sStaticLock:Ljava/lang/Object;


# instance fields
.field private mFindAccessibilityNodeInfoResult:Landroid/view/accessibility/AccessibilityNodeInfo;

.field private mFindAccessibilityNodeInfosResult:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/view/accessibility/AccessibilityNodeInfo;",
            ">;"
        }
    .end annotation
.end field

.field private final mInstanceLock:Ljava/lang/Object;

.field private volatile mInteractionId:I

.field private final mInteractionIdCounter:Ljava/util/concurrent/atomic/AtomicInteger;

.field private mPerformAccessibilityActionResult:Z

.field private mSameThreadMessage:Landroid/os/Message;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 87
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Landroid/view/accessibility/AccessibilityInteractionClient;->sStaticLock:Ljava/lang/Object;

    .line 89
    new-instance v0, Landroid/util/LongSparseArray;

    invoke-direct {v0}, Landroid/util/LongSparseArray;-><init>()V

    sput-object v0, Landroid/view/accessibility/AccessibilityInteractionClient;->sClients:Landroid/util/LongSparseArray;

    .line 92
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    sput-object v0, Landroid/view/accessibility/AccessibilityInteractionClient;->sConnectionCache:Landroid/util/SparseArray;

    .line 95
    new-instance v0, Landroid/view/accessibility/AccessibilityCache;

    new-instance v1, Landroid/view/accessibility/AccessibilityCache$AccessibilityNodeRefresher;

    invoke-direct {v1}, Landroid/view/accessibility/AccessibilityCache$AccessibilityNodeRefresher;-><init>()V

    invoke-direct {v0, v1}, Landroid/view/accessibility/AccessibilityCache;-><init>(Landroid/view/accessibility/AccessibilityCache$AccessibilityNodeRefresher;)V

    sput-object v0, Landroid/view/accessibility/AccessibilityInteractionClient;->sAccessibilityCache:Landroid/view/accessibility/AccessibilityCache;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 183
    invoke-direct {p0}, Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback$Stub;-><init>()V

    .line 98
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    iput-object v0, p0, Landroid/view/accessibility/AccessibilityInteractionClient;->mInteractionIdCounter:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 100
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/view/accessibility/AccessibilityInteractionClient;->mInstanceLock:Ljava/lang/Object;

    .line 102
    const/4 v0, -0x1

    iput v0, p0, Landroid/view/accessibility/AccessibilityInteractionClient;->mInteractionId:I

    .line 185
    return-void
.end method

.method public static addConnection(ILandroid/accessibilityservice/IAccessibilityServiceConnection;)V
    .locals 2
    .param p0, "connectionId"    # I
    .param p1, "connection"    # Landroid/accessibilityservice/IAccessibilityServiceConnection;

    .line 158
    sget-object v0, Landroid/view/accessibility/AccessibilityInteractionClient;->sConnectionCache:Landroid/util/SparseArray;

    monitor-enter v0

    .line 159
    :try_start_0
    sget-object v1, Landroid/view/accessibility/AccessibilityInteractionClient;->sConnectionCache:Landroid/util/SparseArray;

    invoke-virtual {v1, p0, p1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 160
    monitor-exit v0

    .line 161
    return-void

    .line 160
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private checkFindAccessibilityNodeInfoResultIntegrity(Ljava/util/List;)V
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/view/accessibility/AccessibilityNodeInfo;",
            ">;)V"
        }
    .end annotation

    .line 857
    .local p1, "infos":Ljava/util/List;, "Ljava/util/List<Landroid/view/accessibility/AccessibilityNodeInfo;>;"
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    .line 858
    return-void

    .line 861
    :cond_0
    const/4 v0, 0x0

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/accessibility/AccessibilityNodeInfo;

    .line 862
    .local v1, "root":Landroid/view/accessibility/AccessibilityNodeInfo;
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    .line 863
    .local v2, "infoCount":I
    const/4 v3, 0x1

    .local v3, "i":I
    :goto_0
    if-ge v3, v2, :cond_3

    .line 864
    move v4, v3

    .local v4, "j":I
    :goto_1
    if-ge v4, v2, :cond_2

    .line 865
    invoke-interface {p1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/view/accessibility/AccessibilityNodeInfo;

    .line 866
    .local v5, "candidate":Landroid/view/accessibility/AccessibilityNodeInfo;
    invoke-virtual {v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->getParentNodeId()J

    move-result-wide v6

    invoke-virtual {v5}, Landroid/view/accessibility/AccessibilityNodeInfo;->getSourceNodeId()J

    move-result-wide v8

    cmp-long v6, v6, v8

    if-nez v6, :cond_1

    .line 867
    move-object v1, v5

    .line 868
    goto :goto_2

    .line 864
    .end local v5    # "candidate":Landroid/view/accessibility/AccessibilityNodeInfo;
    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 863
    .end local v4    # "j":I
    :cond_2
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 872
    .end local v3    # "i":I
    :cond_3
    if-nez v1, :cond_4

    .line 873
    const-string v3, "AccessibilityInteractionClient"

    const-string v4, "No root."

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 876
    :cond_4
    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    .line 877
    .local v3, "seen":Ljava/util/HashSet;, "Ljava/util/HashSet<Landroid/view/accessibility/AccessibilityNodeInfo;>;"
    new-instance v4, Ljava/util/LinkedList;

    invoke-direct {v4}, Ljava/util/LinkedList;-><init>()V

    .line 878
    .local v4, "fringe":Ljava/util/Queue;, "Ljava/util/Queue<Landroid/view/accessibility/AccessibilityNodeInfo;>;"
    invoke-interface {v4, v1}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    .line 879
    :goto_3
    invoke-interface {v4}, Ljava/util/Queue;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_9

    .line 880
    invoke-interface {v4}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/view/accessibility/AccessibilityNodeInfo;

    .line 881
    .local v5, "current":Landroid/view/accessibility/AccessibilityNodeInfo;
    invoke-virtual {v3, v5}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_5

    .line 882
    const-string v0, "AccessibilityInteractionClient"

    const-string v6, "Duplicate node."

    invoke-static {v0, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 883
    return-void

    .line 885
    :cond_5
    invoke-virtual {v5}, Landroid/view/accessibility/AccessibilityNodeInfo;->getChildCount()I

    move-result v6

    .line 886
    .local v6, "childCount":I
    move v7, v0

    .local v7, "i":I
    :goto_4
    if-ge v7, v6, :cond_8

    .line 887
    invoke-virtual {v5, v7}, Landroid/view/accessibility/AccessibilityNodeInfo;->getChildId(I)J

    move-result-wide v8

    .line 888
    .local v8, "childId":J
    move v10, v0

    .local v10, "j":I
    :goto_5
    if-ge v10, v2, :cond_7

    .line 889
    invoke-interface {p1, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/view/accessibility/AccessibilityNodeInfo;

    .line 890
    .local v11, "child":Landroid/view/accessibility/AccessibilityNodeInfo;
    invoke-virtual {v11}, Landroid/view/accessibility/AccessibilityNodeInfo;->getSourceNodeId()J

    move-result-wide v12

    cmp-long v12, v12, v8

    if-nez v12, :cond_6

    .line 891
    invoke-interface {v4, v11}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    .line 888
    .end local v11    # "child":Landroid/view/accessibility/AccessibilityNodeInfo;
    :cond_6
    add-int/lit8 v10, v10, 0x1

    goto :goto_5

    .line 886
    .end local v8    # "childId":J
    .end local v10    # "j":I
    :cond_7
    add-int/lit8 v7, v7, 0x1

    goto :goto_4

    .line 895
    .end local v5    # "current":Landroid/view/accessibility/AccessibilityNodeInfo;
    .end local v6    # "childCount":I
    .end local v7    # "i":I
    :cond_8
    goto :goto_3

    .line 896
    :cond_9
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    invoke-virtual {v3}, Ljava/util/HashSet;->size()I

    move-result v5

    sub-int/2addr v0, v5

    .line 897
    .local v0, "disconnectedCount":I
    if-lez v0, :cond_a

    .line 898
    const-string v5, "AccessibilityInteractionClient"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, " Disconnected nodes."

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 900
    :cond_a
    return-void
.end method

.method private clearResultLocked()V
    .locals 1

    .line 746
    const/4 v0, -0x1

    iput v0, p0, Landroid/view/accessibility/AccessibilityInteractionClient;->mInteractionId:I

    .line 747
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/view/accessibility/AccessibilityInteractionClient;->mFindAccessibilityNodeInfoResult:Landroid/view/accessibility/AccessibilityNodeInfo;

    .line 748
    iput-object v0, p0, Landroid/view/accessibility/AccessibilityInteractionClient;->mFindAccessibilityNodeInfosResult:Ljava/util/List;

    .line 749
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/view/accessibility/AccessibilityInteractionClient;->mPerformAccessibilityActionResult:Z

    .line 750
    return-void
.end method

.method private finalizeAndCacheAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;IZ[Ljava/lang/String;)V
    .locals 2
    .param p1, "info"    # Landroid/view/accessibility/AccessibilityNodeInfo;
    .param p2, "connectionId"    # I
    .param p3, "bypassCache"    # Z
    .param p4, "packageNames"    # [Ljava/lang/String;

    .line 797
    if-eqz p1, :cond_2

    .line 798
    invoke-virtual {p1, p2}, Landroid/view/accessibility/AccessibilityNodeInfo;->setConnectionId(I)V

    .line 800
    invoke-static {p4}, Lcom/android/internal/util/ArrayUtils;->isEmpty([Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 801
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->getPackageName()Ljava/lang/CharSequence;

    move-result-object v0

    .line 802
    .local v0, "packageName":Ljava/lang/CharSequence;
    if-eqz v0, :cond_0

    .line 803
    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p4, v1}, Lcom/android/internal/util/ArrayUtils;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 806
    :cond_0
    const/4 v1, 0x0

    aget-object v1, p4, v1

    invoke-virtual {p1, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setPackageName(Ljava/lang/CharSequence;)V

    .line 809
    .end local v0    # "packageName":Ljava/lang/CharSequence;
    :cond_1
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setSealed(Z)V

    .line 810
    if-nez p3, :cond_2

    .line 811
    sget-object v0, Landroid/view/accessibility/AccessibilityInteractionClient;->sAccessibilityCache:Landroid/view/accessibility/AccessibilityCache;

    invoke-virtual {v0, p1}, Landroid/view/accessibility/AccessibilityCache;->add(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    .line 814
    :cond_2
    return-void
.end method

.method private finalizeAndCacheAccessibilityNodeInfos(Ljava/util/List;IZ[Ljava/lang/String;)V
    .locals 3
    .param p2, "connectionId"    # I
    .param p3, "bypassCache"    # Z
    .param p4, "packageNames"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/view/accessibility/AccessibilityNodeInfo;",
            ">;IZ[",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 827
    .local p1, "infos":Ljava/util/List;, "Ljava/util/List<Landroid/view/accessibility/AccessibilityNodeInfo;>;"
    if-eqz p1, :cond_0

    .line 828
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    .line 829
    .local v0, "infosCount":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 830
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/accessibility/AccessibilityNodeInfo;

    .line 831
    .local v2, "info":Landroid/view/accessibility/AccessibilityNodeInfo;
    invoke-direct {p0, v2, p2, p3, p4}, Landroid/view/accessibility/AccessibilityInteractionClient;->finalizeAndCacheAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;IZ[Ljava/lang/String;)V

    .line 829
    .end local v2    # "info":Landroid/view/accessibility/AccessibilityNodeInfo;
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 835
    .end local v0    # "infosCount":I
    .end local v1    # "i":I
    :cond_0
    return-void
.end method

.method public static getConnection(I)Landroid/accessibilityservice/IAccessibilityServiceConnection;
    .locals 2
    .param p0, "connectionId"    # I

    .line 146
    sget-object v0, Landroid/view/accessibility/AccessibilityInteractionClient;->sConnectionCache:Landroid/util/SparseArray;

    monitor-enter v0

    .line 147
    :try_start_0
    sget-object v1, Landroid/view/accessibility/AccessibilityInteractionClient;->sConnectionCache:Landroid/util/SparseArray;

    invoke-virtual {v1, p0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/accessibilityservice/IAccessibilityServiceConnection;

    monitor-exit v0

    return-object v1

    .line 148
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private getFindAccessibilityNodeInfoResultAndClear(I)Landroid/view/accessibility/AccessibilityNodeInfo;
    .locals 3
    .param p1, "interactionId"    # I

    .line 643
    iget-object v0, p0, Landroid/view/accessibility/AccessibilityInteractionClient;->mInstanceLock:Ljava/lang/Object;

    monitor-enter v0

    .line 644
    :try_start_0
    invoke-direct {p0, p1}, Landroid/view/accessibility/AccessibilityInteractionClient;->waitForResultTimedLocked(I)Z

    move-result v1

    .line 645
    .local v1, "success":Z
    if-eqz v1, :cond_0

    iget-object v2, p0, Landroid/view/accessibility/AccessibilityInteractionClient;->mFindAccessibilityNodeInfoResult:Landroid/view/accessibility/AccessibilityNodeInfo;

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    .line 646
    .local v2, "result":Landroid/view/accessibility/AccessibilityNodeInfo;
    :goto_0
    invoke-direct {p0}, Landroid/view/accessibility/AccessibilityInteractionClient;->clearResultLocked()V

    .line 647
    monitor-exit v0

    return-object v2

    .line 648
    .end local v1    # "success":Z
    .end local v2    # "result":Landroid/view/accessibility/AccessibilityNodeInfo;
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private getFindAccessibilityNodeInfosResultAndClear(I)Ljava/util/List;
    .locals 4
    .param p1, "interactionId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Landroid/view/accessibility/AccessibilityNodeInfo;",
            ">;"
        }
    .end annotation

    .line 673
    iget-object v0, p0, Landroid/view/accessibility/AccessibilityInteractionClient;->mInstanceLock:Ljava/lang/Object;

    monitor-enter v0

    .line 674
    :try_start_0
    invoke-direct {p0, p1}, Landroid/view/accessibility/AccessibilityInteractionClient;->waitForResultTimedLocked(I)Z

    move-result v1

    .line 676
    .local v1, "success":Z
    if-eqz v1, :cond_0

    .line 677
    iget-object v2, p0, Landroid/view/accessibility/AccessibilityInteractionClient;->mFindAccessibilityNodeInfosResult:Ljava/util/List;

    .local v2, "result":Ljava/util/List;, "Ljava/util/List<Landroid/view/accessibility/AccessibilityNodeInfo;>;"
    goto :goto_0

    .line 679
    .end local v2    # "result":Ljava/util/List;, "Ljava/util/List<Landroid/view/accessibility/AccessibilityNodeInfo;>;"
    :cond_0
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v2

    .line 681
    .restart local v2    # "result":Ljava/util/List;, "Ljava/util/List<Landroid/view/accessibility/AccessibilityNodeInfo;>;"
    :goto_0
    invoke-direct {p0}, Landroid/view/accessibility/AccessibilityInteractionClient;->clearResultLocked()V

    .line 682
    sget-boolean v3, Landroid/os/Build;->IS_DEBUGGABLE:Z

    if-eqz v3, :cond_1

    .line 683
    invoke-direct {p0, v2}, Landroid/view/accessibility/AccessibilityInteractionClient;->checkFindAccessibilityNodeInfoResultIntegrity(Ljava/util/List;)V

    .line 685
    :cond_1
    monitor-exit v0

    return-object v2

    .line 686
    .end local v1    # "success":Z
    .end local v2    # "result":Ljava/util/List;, "Ljava/util/List<Landroid/view/accessibility/AccessibilityNodeInfo;>;"
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public static getInstance()Landroid/view/accessibility/AccessibilityInteractionClient;
    .locals 3

    .line 116
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->getId()J

    move-result-wide v0

    .line 117
    .local v0, "threadId":J
    invoke-static {v0, v1}, Landroid/view/accessibility/AccessibilityInteractionClient;->getInstanceForThread(J)Landroid/view/accessibility/AccessibilityInteractionClient;

    move-result-object v2

    return-object v2
.end method

.method public static getInstanceForThread(J)Landroid/view/accessibility/AccessibilityInteractionClient;
    .locals 3
    .param p0, "threadId"    # J

    .line 129
    sget-object v0, Landroid/view/accessibility/AccessibilityInteractionClient;->sStaticLock:Ljava/lang/Object;

    monitor-enter v0

    .line 130
    :try_start_0
    sget-object v1, Landroid/view/accessibility/AccessibilityInteractionClient;->sClients:Landroid/util/LongSparseArray;

    invoke-virtual {v1, p0, p1}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/accessibility/AccessibilityInteractionClient;

    .line 131
    .local v1, "client":Landroid/view/accessibility/AccessibilityInteractionClient;
    if-nez v1, :cond_0

    .line 132
    new-instance v2, Landroid/view/accessibility/AccessibilityInteractionClient;

    invoke-direct {v2}, Landroid/view/accessibility/AccessibilityInteractionClient;-><init>()V

    move-object v1, v2

    .line 133
    sget-object v2, Landroid/view/accessibility/AccessibilityInteractionClient;->sClients:Landroid/util/LongSparseArray;

    invoke-virtual {v2, p0, p1, v1}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    .line 135
    :cond_0
    monitor-exit v0

    return-object v1

    .line 136
    .end local v1    # "client":Landroid/view/accessibility/AccessibilityInteractionClient;
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private getPerformAccessibilityActionResultAndClear(I)Z
    .locals 3
    .param p1, "interactionId"    # I

    .line 721
    iget-object v0, p0, Landroid/view/accessibility/AccessibilityInteractionClient;->mInstanceLock:Ljava/lang/Object;

    monitor-enter v0

    .line 722
    :try_start_0
    invoke-direct {p0, p1}, Landroid/view/accessibility/AccessibilityInteractionClient;->waitForResultTimedLocked(I)Z

    move-result v1

    .line 723
    .local v1, "success":Z
    if-eqz v1, :cond_0

    iget-boolean v2, p0, Landroid/view/accessibility/AccessibilityInteractionClient;->mPerformAccessibilityActionResult:Z

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    .line 724
    .local v2, "result":Z
    :goto_0
    invoke-direct {p0}, Landroid/view/accessibility/AccessibilityInteractionClient;->clearResultLocked()V

    .line 725
    monitor-exit v0

    return v2

    .line 726
    .end local v1    # "success":Z
    .end local v2    # "result":Z
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private getSameProcessMessageAndClear()Landroid/os/Message;
    .locals 3

    .line 844
    iget-object v0, p0, Landroid/view/accessibility/AccessibilityInteractionClient;->mInstanceLock:Ljava/lang/Object;

    monitor-enter v0

    .line 845
    :try_start_0
    iget-object v1, p0, Landroid/view/accessibility/AccessibilityInteractionClient;->mSameThreadMessage:Landroid/os/Message;

    .line 846
    .local v1, "result":Landroid/os/Message;
    const/4 v2, 0x0

    iput-object v2, p0, Landroid/view/accessibility/AccessibilityInteractionClient;->mSameThreadMessage:Landroid/os/Message;

    .line 847
    monitor-exit v0

    return-object v1

    .line 848
    .end local v1    # "result":Landroid/os/Message;
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private static idToString(IJ)Ljava/lang/String;
    .locals 2
    .param p0, "accessibilityWindowId"    # I
    .param p1, "accessibilityNodeId"    # J

    .line 374
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 375
    invoke-static {p1, p2}, Landroid/view/accessibility/AccessibilityNodeInfo;->idToString(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 374
    return-object v0
.end method

.method public static removeConnection(I)V
    .locals 2
    .param p0, "connectionId"    # I

    .line 169
    sget-object v0, Landroid/view/accessibility/AccessibilityInteractionClient;->sConnectionCache:Landroid/util/SparseArray;

    monitor-enter v0

    .line 170
    :try_start_0
    sget-object v1, Landroid/view/accessibility/AccessibilityInteractionClient;->sConnectionCache:Landroid/util/SparseArray;

    invoke-virtual {v1, p0}, Landroid/util/SparseArray;->remove(I)V

    .line 171
    monitor-exit v0

    .line 172
    return-void

    .line 171
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public static setCache(Landroid/view/accessibility/AccessibilityCache;)V
    .locals 0
    .param p0, "cache"    # Landroid/view/accessibility/AccessibilityCache;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 180
    sput-object p0, Landroid/view/accessibility/AccessibilityInteractionClient;->sAccessibilityCache:Landroid/view/accessibility/AccessibilityCache;

    .line 181
    return-void
.end method

.method private waitForResultTimedLocked(I)Z
    .locals 11
    .param p1, "interactionId"    # I

    .line 759
    const-wide/16 v0, 0x1388

    .line 760
    .local v0, "waitTimeMillis":J
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    .line 763
    .local v2, "startTimeMillis":J
    :goto_0
    :try_start_0
    invoke-direct {p0}, Landroid/view/accessibility/AccessibilityInteractionClient;->getSameProcessMessageAndClear()Landroid/os/Message;

    move-result-object v4

    .line 764
    .local v4, "sameProcessMessage":Landroid/os/Message;
    if-eqz v4, :cond_0

    .line 765
    invoke-virtual {v4}, Landroid/os/Message;->getTarget()Landroid/os/Handler;

    move-result-object v5

    invoke-virtual {v5, v4}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 768
    :cond_0
    iget v5, p0, Landroid/view/accessibility/AccessibilityInteractionClient;->mInteractionId:I

    if-ne v5, p1, :cond_1

    .line 769
    const/4 v5, 0x1

    return v5

    .line 771
    :cond_1
    iget v5, p0, Landroid/view/accessibility/AccessibilityInteractionClient;->mInteractionId:I

    const/4 v6, 0x0

    if-le v5, p1, :cond_2

    .line 772
    return v6

    .line 774
    :cond_2
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v7

    sub-long/2addr v7, v2

    .line 775
    .local v7, "elapsedTimeMillis":J
    const-wide/16 v9, 0x1388

    sub-long v0, v9, v7

    .line 776
    const-wide/16 v9, 0x0

    cmp-long v5, v0, v9

    if-gtz v5, :cond_3

    .line 777
    return v6

    .line 779
    :cond_3
    iget-object v5, p0, Landroid/view/accessibility/AccessibilityInteractionClient;->mInstanceLock:Ljava/lang/Object;

    invoke-virtual {v5, v0, v1}, Ljava/lang/Object;->wait(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .end local v4    # "sameProcessMessage":Landroid/os/Message;
    .end local v7    # "elapsedTimeMillis":J
    goto :goto_1

    .line 780
    :catch_0
    move-exception v4

    .line 782
    :goto_1
    goto :goto_0
.end method


# virtual methods
.method public clearCache()V
    .locals 1

    .line 629
    sget-object v0, Landroid/view/accessibility/AccessibilityInteractionClient;->sAccessibilityCache:Landroid/view/accessibility/AccessibilityCache;

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityCache;->clear()V

    .line 630
    return-void
.end method

.method public findAccessibilityNodeInfoByAccessibilityId(IIJZILandroid/os/Bundle;)Landroid/view/accessibility/AccessibilityNodeInfo;
    .locals 20
    .param p1, "connectionId"    # I
    .param p2, "accessibilityWindowId"    # I
    .param p3, "accessibilityNodeId"    # J
    .param p5, "bypassCache"    # Z
    .param p6, "prefetchFlags"    # I
    .param p7, "arguments"    # Landroid/os/Bundle;

    move-object/from16 v11, p0

    move/from16 v12, p5

    .line 316
    and-int/lit8 v0, p6, 0x2

    if-eqz v0, :cond_1

    and-int/lit8 v0, p6, 0x1

    if-eqz v0, :cond_0

    goto :goto_0

    .line 318
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "FLAG_PREFETCH_SIBLINGS requires FLAG_PREFETCH_PREDECESSORS"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 322
    :cond_1
    :goto_0
    :try_start_0
    invoke-static/range {p1 .. p1}, Landroid/view/accessibility/AccessibilityInteractionClient;->getConnection(I)Landroid/accessibilityservice/IAccessibilityServiceConnection;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_2

    move-object v14, v0

    .line 323
    .local v14, "connection":Landroid/accessibilityservice/IAccessibilityServiceConnection;
    if-eqz v14, :cond_5

    .line 324
    if-nez v12, :cond_2

    .line 325
    :try_start_1
    sget-object v0, Landroid/view/accessibility/AccessibilityInteractionClient;->sAccessibilityCache:Landroid/view/accessibility/AccessibilityCache;
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    move/from16 v15, p2

    move-wide/from16 v8, p3

    :try_start_2
    invoke-virtual {v0, v15, v8, v9}, Landroid/view/accessibility/AccessibilityCache;->getNode(IJ)Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v0

    .line 327
    .local v0, "cachedInfo":Landroid/view/accessibility/AccessibilityNodeInfo;
    if-eqz v0, :cond_3

    .line 332
    return-object v0

    .line 366
    .end local v0    # "cachedInfo":Landroid/view/accessibility/AccessibilityNodeInfo;
    .end local v14    # "connection":Landroid/accessibilityservice/IAccessibilityServiceConnection;
    :catch_0
    move-exception v0

    move-wide/from16 v8, p3

    goto/16 :goto_3

    .line 339
    .restart local v14    # "connection":Landroid/accessibilityservice/IAccessibilityServiceConnection;
    :cond_2
    move/from16 v15, p2

    move-wide/from16 v8, p3

    :cond_3
    iget-object v0, v11, Landroid/view/accessibility/AccessibilityInteractionClient;->mInteractionIdCounter:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result v0

    move v10, v0

    .line 340
    .local v10, "interactionId":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_2

    move-wide v6, v0

    .line 343
    .local v6, "identityToken":J
    nop

    .line 345
    :try_start_3
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->getId()J

    move-result-wide v16
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 343
    move-object v1, v14

    move v2, v15

    move-wide v3, v8

    move v5, v10

    move-object/from16 v18, v14

    move-wide v14, v6

    move-object v6, v11

    .end local v6    # "identityToken":J
    .local v14, "identityToken":J
    .local v18, "connection":Landroid/accessibilityservice/IAccessibilityServiceConnection;
    move/from16 v7, p6

    move-wide/from16 v8, v16

    move v13, v10

    move-object/from16 v10, p7

    .end local v10    # "interactionId":I
    .local v13, "interactionId":I
    :try_start_4
    invoke-interface/range {v1 .. v10}, Landroid/accessibilityservice/IAccessibilityServiceConnection;->findAccessibilityNodeInfoByAccessibilityId(IJILandroid/view/accessibility/IAccessibilityInteractionConnectionCallback;IJLandroid/os/Bundle;)[Ljava/lang/String;

    move-result-object v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 347
    .local v0, "packageNames":[Ljava/lang/String;
    :try_start_5
    invoke-static {v14, v15}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 348
    nop

    .line 347
    nop

    .line 349
    if-eqz v0, :cond_5

    .line 350
    invoke-direct {v11, v13}, Landroid/view/accessibility/AccessibilityInteractionClient;->getFindAccessibilityNodeInfosResultAndClear(I)Ljava/util/List;

    move-result-object v1
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_5} :catch_2

    .line 352
    .local v1, "infos":Ljava/util/List;, "Ljava/util/List<Landroid/view/accessibility/AccessibilityNodeInfo;>;"
    move/from16 v2, p1

    :try_start_6
    invoke-direct {v11, v1, v2, v12, v0}, Landroid/view/accessibility/AccessibilityInteractionClient;->finalizeAndCacheAccessibilityNodeInfos(Ljava/util/List;IZ[Ljava/lang/String;)V

    .line 354
    if-eqz v1, :cond_6

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_6

    .line 355
    const/4 v3, 0x1

    .local v3, "i":I
    :goto_1
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_4

    .line 356
    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/accessibility/AccessibilityNodeInfo;

    invoke-virtual {v4}, Landroid/view/accessibility/AccessibilityNodeInfo;->recycle()V

    .line 355
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 358
    .end local v3    # "i":I
    :cond_4
    const/4 v3, 0x0

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/accessibility/AccessibilityNodeInfo;

    return-object v3

    .line 347
    .end local v0    # "packageNames":[Ljava/lang/String;
    .end local v1    # "infos":Ljava/util/List;, "Ljava/util/List<Landroid/view/accessibility/AccessibilityNodeInfo;>;"
    :catchall_0
    move-exception v0

    move/from16 v2, p1

    goto :goto_2

    .end local v13    # "interactionId":I
    .end local v18    # "connection":Landroid/accessibilityservice/IAccessibilityServiceConnection;
    .restart local v6    # "identityToken":J
    .restart local v10    # "interactionId":I
    .local v14, "connection":Landroid/accessibilityservice/IAccessibilityServiceConnection;
    :catchall_1
    move-exception v0

    move/from16 v2, p1

    move v13, v10

    move-object/from16 v18, v14

    move-wide v14, v6

    .end local v6    # "identityToken":J
    .end local v10    # "interactionId":I
    .restart local v13    # "interactionId":I
    .local v14, "identityToken":J
    .restart local v18    # "connection":Landroid/accessibilityservice/IAccessibilityServiceConnection;
    :goto_2
    invoke-static {v14, v15}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v0
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_6} :catch_1

    .line 366
    .end local v13    # "interactionId":I
    .end local v14    # "identityToken":J
    .end local v18    # "connection":Landroid/accessibilityservice/IAccessibilityServiceConnection;
    :catch_1
    move-exception v0

    goto :goto_4

    .line 369
    :cond_5
    move/from16 v2, p1

    :cond_6
    goto :goto_5

    .line 366
    :catch_2
    move-exception v0

    :goto_3
    move/from16 v2, p1

    .line 367
    .local v0, "re":Landroid/os/RemoteException;
    :goto_4
    const-string v1, "AccessibilityInteractionClient"

    const-string v3, "Error while calling remote findAccessibilityNodeInfoByAccessibilityId"

    invoke-static {v1, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 370
    .end local v0    # "re":Landroid/os/RemoteException;
    :goto_5
    const/4 v0, 0x0

    return-object v0
.end method

.method public findAccessibilityNodeInfosByText(IIJLjava/lang/String;)Ljava/util/List;
    .locals 15
    .param p1, "connectionId"    # I
    .param p2, "accessibilityWindowId"    # I
    .param p3, "accessibilityNodeId"    # J
    .param p5, "text"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IIJ",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Landroid/view/accessibility/AccessibilityNodeInfo;",
            ">;"
        }
    .end annotation

    move-object v10, p0

    .line 451
    :try_start_0
    invoke-static/range {p1 .. p1}, Landroid/view/accessibility/AccessibilityInteractionClient;->getConnection(I)Landroid/accessibilityservice/IAccessibilityServiceConnection;

    move-result-object v0

    move-object v11, v0

    .line 452
    .local v11, "connection":Landroid/accessibilityservice/IAccessibilityServiceConnection;
    if-eqz v11, :cond_0

    .line 453
    iget-object v0, v10, Landroid/view/accessibility/AccessibilityInteractionClient;->mInteractionIdCounter:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result v0

    move v12, v0

    .line 454
    .local v12, "interactionId":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1

    move-wide v13, v0

    .line 457
    .local v13, "identityToken":J
    nop

    .line 459
    :try_start_1
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->getId()J

    move-result-wide v8

    .line 457
    move-object v1, v11

    move/from16 v2, p2

    move-wide/from16 v3, p3

    move-object/from16 v5, p5

    move v6, v12

    move-object v7, v10

    invoke-interface/range {v1 .. v9}, Landroid/accessibilityservice/IAccessibilityServiceConnection;->findAccessibilityNodeInfosByText(IJLjava/lang/String;ILandroid/view/accessibility/IAccessibilityInteractionConnectionCallback;J)[Ljava/lang/String;

    move-result-object v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 461
    .local v0, "packageNames":[Ljava/lang/String;
    :try_start_2
    invoke-static {v13, v14}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 462
    nop

    .line 461
    nop

    .line 464
    if-eqz v0, :cond_0

    .line 465
    invoke-direct {v10, v12}, Landroid/view/accessibility/AccessibilityInteractionClient;->getFindAccessibilityNodeInfosResultAndClear(I)Ljava/util/List;

    move-result-object v1
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_1

    .line 467
    .local v1, "infos":Ljava/util/List;, "Ljava/util/List<Landroid/view/accessibility/AccessibilityNodeInfo;>;"
    if-eqz v1, :cond_0

    .line 468
    const/4 v2, 0x0

    move/from16 v3, p1

    :try_start_3
    invoke-direct {v10, v1, v3, v2, v0}, Landroid/view/accessibility/AccessibilityInteractionClient;->finalizeAndCacheAccessibilityNodeInfos(Ljava/util/List;IZ[Ljava/lang/String;)V

    .line 470
    return-object v1

    .line 461
    .end local v0    # "packageNames":[Ljava/lang/String;
    .end local v1    # "infos":Ljava/util/List;, "Ljava/util/List<Landroid/view/accessibility/AccessibilityNodeInfo;>;"
    :catchall_0
    move-exception v0

    move/from16 v3, p1

    invoke-static {v13, v14}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v0
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_0

    .line 478
    .end local v11    # "connection":Landroid/accessibilityservice/IAccessibilityServiceConnection;
    .end local v12    # "interactionId":I
    .end local v13    # "identityToken":J
    :catch_0
    move-exception v0

    goto :goto_0

    .line 481
    :cond_0
    move/from16 v3, p1

    goto :goto_1

    .line 478
    :catch_1
    move-exception v0

    move/from16 v3, p1

    .line 479
    .local v0, "re":Landroid/os/RemoteException;
    :goto_0
    const-string v1, "AccessibilityInteractionClient"

    const-string v2, "Error while calling remote findAccessibilityNodeInfosByViewText"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 482
    .end local v0    # "re":Landroid/os/RemoteException;
    :goto_1
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public findAccessibilityNodeInfosByViewId(IIJLjava/lang/String;)Ljava/util/List;
    .locals 15
    .param p1, "connectionId"    # I
    .param p2, "accessibilityWindowId"    # I
    .param p3, "accessibilityNodeId"    # J
    .param p5, "viewId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IIJ",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Landroid/view/accessibility/AccessibilityNodeInfo;",
            ">;"
        }
    .end annotation

    move-object v10, p0

    .line 397
    :try_start_0
    invoke-static/range {p1 .. p1}, Landroid/view/accessibility/AccessibilityInteractionClient;->getConnection(I)Landroid/accessibilityservice/IAccessibilityServiceConnection;

    move-result-object v0

    move-object v11, v0

    .line 398
    .local v11, "connection":Landroid/accessibilityservice/IAccessibilityServiceConnection;
    if-eqz v11, :cond_0

    .line 399
    iget-object v0, v10, Landroid/view/accessibility/AccessibilityInteractionClient;->mInteractionIdCounter:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result v0

    move v12, v0

    .line 400
    .local v12, "interactionId":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1

    move-wide v13, v0

    .line 403
    .local v13, "identityToken":J
    nop

    .line 405
    :try_start_1
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->getId()J

    move-result-wide v8

    .line 403
    move-object v1, v11

    move/from16 v2, p2

    move-wide/from16 v3, p3

    move-object/from16 v5, p5

    move v6, v12

    move-object v7, v10

    invoke-interface/range {v1 .. v9}, Landroid/accessibilityservice/IAccessibilityServiceConnection;->findAccessibilityNodeInfosByViewId(IJLjava/lang/String;ILandroid/view/accessibility/IAccessibilityInteractionConnectionCallback;J)[Ljava/lang/String;

    move-result-object v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 407
    .local v0, "packageNames":[Ljava/lang/String;
    :try_start_2
    invoke-static {v13, v14}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 408
    nop

    .line 407
    nop

    .line 410
    if-eqz v0, :cond_0

    .line 411
    invoke-direct {v10, v12}, Landroid/view/accessibility/AccessibilityInteractionClient;->getFindAccessibilityNodeInfosResultAndClear(I)Ljava/util/List;

    move-result-object v1
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_1

    .line 413
    .local v1, "infos":Ljava/util/List;, "Ljava/util/List<Landroid/view/accessibility/AccessibilityNodeInfo;>;"
    if-eqz v1, :cond_0

    .line 414
    const/4 v2, 0x0

    move/from16 v3, p1

    :try_start_3
    invoke-direct {v10, v1, v3, v2, v0}, Landroid/view/accessibility/AccessibilityInteractionClient;->finalizeAndCacheAccessibilityNodeInfos(Ljava/util/List;IZ[Ljava/lang/String;)V

    .line 416
    return-object v1

    .line 407
    .end local v0    # "packageNames":[Ljava/lang/String;
    .end local v1    # "infos":Ljava/util/List;, "Ljava/util/List<Landroid/view/accessibility/AccessibilityNodeInfo;>;"
    :catchall_0
    move-exception v0

    move/from16 v3, p1

    invoke-static {v13, v14}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v0
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_0

    .line 424
    .end local v11    # "connection":Landroid/accessibilityservice/IAccessibilityServiceConnection;
    .end local v12    # "interactionId":I
    .end local v13    # "identityToken":J
    :catch_0
    move-exception v0

    goto :goto_0

    .line 427
    :cond_0
    move/from16 v3, p1

    goto :goto_1

    .line 424
    :catch_1
    move-exception v0

    move/from16 v3, p1

    .line 425
    .local v0, "re":Landroid/os/RemoteException;
    :goto_0
    const-string v1, "AccessibilityInteractionClient"

    const-string v2, "Error while calling remote findAccessibilityNodeInfoByViewIdInActiveWindow"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 428
    .end local v0    # "re":Landroid/os/RemoteException;
    :goto_1
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public findFocus(IIJI)Landroid/view/accessibility/AccessibilityNodeInfo;
    .locals 15
    .param p1, "connectionId"    # I
    .param p2, "accessibilityWindowId"    # I
    .param p3, "accessibilityNodeId"    # J
    .param p5, "focusType"    # I

    move-object v10, p0

    .line 504
    :try_start_0
    invoke-static/range {p1 .. p1}, Landroid/view/accessibility/AccessibilityInteractionClient;->getConnection(I)Landroid/accessibilityservice/IAccessibilityServiceConnection;

    move-result-object v0

    move-object v11, v0

    .line 505
    .local v11, "connection":Landroid/accessibilityservice/IAccessibilityServiceConnection;
    if-eqz v11, :cond_0

    .line 506
    iget-object v0, v10, Landroid/view/accessibility/AccessibilityInteractionClient;->mInteractionIdCounter:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result v0

    move v12, v0

    .line 507
    .local v12, "interactionId":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1

    move-wide v13, v0

    .line 510
    .local v13, "identityToken":J
    nop

    .line 512
    :try_start_1
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->getId()J

    move-result-wide v8

    .line 510
    move-object v1, v11

    move/from16 v2, p2

    move-wide/from16 v3, p3

    move/from16 v5, p5

    move v6, v12

    move-object v7, v10

    invoke-interface/range {v1 .. v9}, Landroid/accessibilityservice/IAccessibilityServiceConnection;->findFocus(IJIILandroid/view/accessibility/IAccessibilityInteractionConnectionCallback;J)[Ljava/lang/String;

    move-result-object v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 514
    .local v0, "packageNames":[Ljava/lang/String;
    :try_start_2
    invoke-static {v13, v14}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 515
    nop

    .line 514
    nop

    .line 517
    if-eqz v0, :cond_0

    .line 518
    invoke-direct {v10, v12}, Landroid/view/accessibility/AccessibilityInteractionClient;->getFindAccessibilityNodeInfoResultAndClear(I)Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v1
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_1

    .line 520
    .local v1, "info":Landroid/view/accessibility/AccessibilityNodeInfo;
    const/4 v2, 0x0

    move/from16 v3, p1

    :try_start_3
    invoke-direct {v10, v1, v3, v2, v0}, Landroid/view/accessibility/AccessibilityInteractionClient;->finalizeAndCacheAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;IZ[Ljava/lang/String;)V

    .line 521
    return-object v1

    .line 514
    .end local v0    # "packageNames":[Ljava/lang/String;
    .end local v1    # "info":Landroid/view/accessibility/AccessibilityNodeInfo;
    :catchall_0
    move-exception v0

    move/from16 v3, p1

    invoke-static {v13, v14}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v0
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_0

    .line 528
    .end local v11    # "connection":Landroid/accessibilityservice/IAccessibilityServiceConnection;
    .end local v12    # "interactionId":I
    .end local v13    # "identityToken":J
    :catch_0
    move-exception v0

    goto :goto_0

    .line 530
    :cond_0
    move/from16 v3, p1

    goto :goto_1

    .line 528
    :catch_1
    move-exception v0

    move/from16 v3, p1

    .line 529
    .local v0, "re":Landroid/os/RemoteException;
    :goto_0
    const-string v1, "AccessibilityInteractionClient"

    const-string v2, "Error while calling remote findFocus"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 531
    .end local v0    # "re":Landroid/os/RemoteException;
    :goto_1
    const/4 v0, 0x0

    return-object v0
.end method

.method public focusSearch(IIJI)Landroid/view/accessibility/AccessibilityNodeInfo;
    .locals 15
    .param p1, "connectionId"    # I
    .param p2, "accessibilityWindowId"    # I
    .param p3, "accessibilityNodeId"    # J
    .param p5, "direction"    # I

    move-object v10, p0

    .line 553
    :try_start_0
    invoke-static/range {p1 .. p1}, Landroid/view/accessibility/AccessibilityInteractionClient;->getConnection(I)Landroid/accessibilityservice/IAccessibilityServiceConnection;

    move-result-object v0

    move-object v11, v0

    .line 554
    .local v11, "connection":Landroid/accessibilityservice/IAccessibilityServiceConnection;
    if-eqz v11, :cond_0

    .line 555
    iget-object v0, v10, Landroid/view/accessibility/AccessibilityInteractionClient;->mInteractionIdCounter:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result v0

    move v12, v0

    .line 556
    .local v12, "interactionId":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1

    move-wide v13, v0

    .line 559
    .local v13, "identityToken":J
    nop

    .line 561
    :try_start_1
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->getId()J

    move-result-wide v8

    .line 559
    move-object v1, v11

    move/from16 v2, p2

    move-wide/from16 v3, p3

    move/from16 v5, p5

    move v6, v12

    move-object v7, v10

    invoke-interface/range {v1 .. v9}, Landroid/accessibilityservice/IAccessibilityServiceConnection;->focusSearch(IJIILandroid/view/accessibility/IAccessibilityInteractionConnectionCallback;J)[Ljava/lang/String;

    move-result-object v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 563
    .local v0, "packageNames":[Ljava/lang/String;
    :try_start_2
    invoke-static {v13, v14}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 564
    nop

    .line 563
    nop

    .line 566
    if-eqz v0, :cond_0

    .line 567
    invoke-direct {v10, v12}, Landroid/view/accessibility/AccessibilityInteractionClient;->getFindAccessibilityNodeInfoResultAndClear(I)Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v1
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_1

    .line 569
    .local v1, "info":Landroid/view/accessibility/AccessibilityNodeInfo;
    const/4 v2, 0x0

    move/from16 v3, p1

    :try_start_3
    invoke-direct {v10, v1, v3, v2, v0}, Landroid/view/accessibility/AccessibilityInteractionClient;->finalizeAndCacheAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;IZ[Ljava/lang/String;)V

    .line 570
    return-object v1

    .line 563
    .end local v0    # "packageNames":[Ljava/lang/String;
    .end local v1    # "info":Landroid/view/accessibility/AccessibilityNodeInfo;
    :catchall_0
    move-exception v0

    move/from16 v3, p1

    invoke-static {v13, v14}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v0
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_0

    .line 577
    .end local v11    # "connection":Landroid/accessibilityservice/IAccessibilityServiceConnection;
    .end local v12    # "interactionId":I
    .end local v13    # "identityToken":J
    :catch_0
    move-exception v0

    goto :goto_0

    .line 579
    :cond_0
    move/from16 v3, p1

    goto :goto_1

    .line 577
    :catch_1
    move-exception v0

    move/from16 v3, p1

    .line 578
    .local v0, "re":Landroid/os/RemoteException;
    :goto_0
    const-string v1, "AccessibilityInteractionClient"

    const-string v2, "Error while calling remote accessibilityFocusSearch"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 580
    .end local v0    # "re":Landroid/os/RemoteException;
    :goto_1
    const/4 v0, 0x0

    return-object v0
.end method

.method public getRootInActiveWindow(I)Landroid/view/accessibility/AccessibilityNodeInfo;
    .locals 8
    .param p1, "connectionId"    # I

    .line 207
    sget-wide v3, Landroid/view/accessibility/AccessibilityNodeInfo;->ROOT_NODE_ID:J

    const v2, 0x7fffffff

    const/4 v5, 0x0

    const/4 v6, 0x4

    const/4 v7, 0x0

    move-object v0, p0

    move v1, p1

    invoke-virtual/range {v0 .. v7}, Landroid/view/accessibility/AccessibilityInteractionClient;->findAccessibilityNodeInfoByAccessibilityId(IIJZILandroid/os/Bundle;)Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v0

    return-object v0
.end method

.method public getWindow(II)Landroid/view/accessibility/AccessibilityWindowInfo;
    .locals 5
    .param p1, "connectionId"    # I
    .param p2, "accessibilityWindowId"    # I

    .line 223
    :try_start_0
    invoke-static {p1}, Landroid/view/accessibility/AccessibilityInteractionClient;->getConnection(I)Landroid/accessibilityservice/IAccessibilityServiceConnection;

    move-result-object v0

    .line 224
    .local v0, "connection":Landroid/accessibilityservice/IAccessibilityServiceConnection;
    if-eqz v0, :cond_1

    .line 225
    sget-object v1, Landroid/view/accessibility/AccessibilityInteractionClient;->sAccessibilityCache:Landroid/view/accessibility/AccessibilityCache;

    invoke-virtual {v1, p2}, Landroid/view/accessibility/AccessibilityCache;->getWindow(I)Landroid/view/accessibility/AccessibilityWindowInfo;

    move-result-object v1

    .line 227
    .local v1, "window":Landroid/view/accessibility/AccessibilityWindowInfo;
    if-eqz v1, :cond_0

    .line 231
    return-object v1

    .line 236
    :cond_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 238
    .local v2, "identityToken":J
    :try_start_1
    invoke-interface {v0, p2}, Landroid/accessibilityservice/IAccessibilityServiceConnection;->getWindow(I)Landroid/view/accessibility/AccessibilityWindowInfo;

    move-result-object v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object v1, v4

    .line 240
    :try_start_2
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 241
    nop

    .line 242
    if-eqz v1, :cond_1

    .line 243
    sget-object v4, Landroid/view/accessibility/AccessibilityInteractionClient;->sAccessibilityCache:Landroid/view/accessibility/AccessibilityCache;

    invoke-virtual {v4, v1}, Landroid/view/accessibility/AccessibilityCache;->addWindow(Landroid/view/accessibility/AccessibilityWindowInfo;)V

    .line 244
    return-object v1

    .line 240
    :catchall_0
    move-exception v4

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v4
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0

    .line 253
    .end local v0    # "connection":Landroid/accessibilityservice/IAccessibilityServiceConnection;
    .end local v1    # "window":Landroid/view/accessibility/AccessibilityWindowInfo;
    .end local v2    # "identityToken":J
    :cond_1
    goto :goto_0

    .line 251
    :catch_0
    move-exception v0

    .line 252
    .local v0, "re":Landroid/os/RemoteException;
    const-string v1, "AccessibilityInteractionClient"

    const-string v2, "Error while calling remote getWindow"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 254
    .end local v0    # "re":Landroid/os/RemoteException;
    :goto_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getWindows(I)Ljava/util/List;
    .locals 5
    .param p1, "connectionId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Landroid/view/accessibility/AccessibilityWindowInfo;",
            ">;"
        }
    .end annotation

    .line 265
    :try_start_0
    invoke-static {p1}, Landroid/view/accessibility/AccessibilityInteractionClient;->getConnection(I)Landroid/accessibilityservice/IAccessibilityServiceConnection;

    move-result-object v0

    .line 266
    .local v0, "connection":Landroid/accessibilityservice/IAccessibilityServiceConnection;
    if-eqz v0, :cond_1

    .line 267
    sget-object v1, Landroid/view/accessibility/AccessibilityInteractionClient;->sAccessibilityCache:Landroid/view/accessibility/AccessibilityCache;

    invoke-virtual {v1}, Landroid/view/accessibility/AccessibilityCache;->getWindows()Ljava/util/List;

    move-result-object v1

    .line 268
    .local v1, "windows":Ljava/util/List;, "Ljava/util/List<Landroid/view/accessibility/AccessibilityWindowInfo;>;"
    if-eqz v1, :cond_0

    .line 272
    return-object v1

    .line 277
    :cond_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 279
    .local v2, "identityToken":J
    :try_start_1
    invoke-interface {v0}, Landroid/accessibilityservice/IAccessibilityServiceConnection;->getWindows()Ljava/util/List;

    move-result-object v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object v1, v4

    .line 281
    :try_start_2
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 282
    nop

    .line 283
    if-eqz v1, :cond_1

    .line 284
    sget-object v4, Landroid/view/accessibility/AccessibilityInteractionClient;->sAccessibilityCache:Landroid/view/accessibility/AccessibilityCache;

    invoke-virtual {v4, v1}, Landroid/view/accessibility/AccessibilityCache;->setWindows(Ljava/util/List;)V

    .line 285
    return-object v1

    .line 281
    :catchall_0
    move-exception v4

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v4
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0

    .line 294
    .end local v0    # "connection":Landroid/accessibilityservice/IAccessibilityServiceConnection;
    .end local v1    # "windows":Ljava/util/List;, "Ljava/util/List<Landroid/view/accessibility/AccessibilityWindowInfo;>;"
    .end local v2    # "identityToken":J
    :cond_1
    goto :goto_0

    .line 292
    :catch_0
    move-exception v0

    .line 293
    .local v0, "re":Landroid/os/RemoteException;
    const-string v1, "AccessibilityInteractionClient"

    const-string v2, "Error while calling remote getWindows"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 295
    .end local v0    # "re":Landroid/os/RemoteException;
    :goto_0
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public onAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 1
    .param p1, "event"    # Landroid/view/accessibility/AccessibilityEvent;

    .line 633
    sget-object v0, Landroid/view/accessibility/AccessibilityInteractionClient;->sAccessibilityCache:Landroid/view/accessibility/AccessibilityCache;

    invoke-virtual {v0, p1}, Landroid/view/accessibility/AccessibilityCache;->onAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 634
    return-void
.end method

.method public performAccessibilityAction(IIJILandroid/os/Bundle;)Z
    .locals 16
    .param p1, "connectionId"    # I
    .param p2, "accessibilityWindowId"    # I
    .param p3, "accessibilityNodeId"    # J
    .param p5, "action"    # I
    .param p6, "arguments"    # Landroid/os/Bundle;

    move-object/from16 v11, p0

    .line 601
    :try_start_0
    invoke-static/range {p1 .. p1}, Landroid/view/accessibility/AccessibilityInteractionClient;->getConnection(I)Landroid/accessibilityservice/IAccessibilityServiceConnection;

    move-result-object v0

    move-object v12, v0

    .line 602
    .local v12, "connection":Landroid/accessibilityservice/IAccessibilityServiceConnection;
    if-eqz v12, :cond_0

    .line 603
    iget-object v0, v11, Landroid/view/accessibility/AccessibilityInteractionClient;->mInteractionIdCounter:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result v0

    move v13, v0

    .line 604
    .local v13, "interactionId":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-wide v14, v0

    .line 607
    .local v14, "identityToken":J
    nop

    .line 609
    :try_start_1
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->getId()J

    move-result-wide v9

    .line 607
    move-object v1, v12

    move/from16 v2, p2

    move-wide/from16 v3, p3

    move/from16 v5, p5

    move-object/from16 v6, p6

    move v7, v13

    move-object v8, v11

    invoke-interface/range {v1 .. v10}, Landroid/accessibilityservice/IAccessibilityServiceConnection;->performAccessibilityAction(IJILandroid/os/Bundle;ILandroid/view/accessibility/IAccessibilityInteractionConnectionCallback;J)Z

    move-result v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 611
    .local v0, "success":Z
    :try_start_2
    invoke-static {v14, v15}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 612
    nop

    .line 611
    nop

    .line 614
    if-eqz v0, :cond_0

    .line 615
    invoke-direct {v11, v13}, Landroid/view/accessibility/AccessibilityInteractionClient;->getPerformAccessibilityActionResultAndClear(I)Z

    move-result v1

    return v1

    .line 611
    .end local v0    # "success":Z
    :catchall_0
    move-exception v0

    invoke-static {v14, v15}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v0
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0

    .line 624
    .end local v12    # "connection":Landroid/accessibilityservice/IAccessibilityServiceConnection;
    .end local v13    # "interactionId":I
    .end local v14    # "identityToken":J
    :cond_0
    goto :goto_0

    .line 622
    :catch_0
    move-exception v0

    .line 623
    .local v0, "re":Landroid/os/RemoteException;
    const-string v1, "AccessibilityInteractionClient"

    const-string v2, "Error while calling remote performAccessibilityAction"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 625
    .end local v0    # "re":Landroid/os/RemoteException;
    :goto_0
    const/4 v0, 0x0

    return v0
.end method

.method public setFindAccessibilityNodeInfoResult(Landroid/view/accessibility/AccessibilityNodeInfo;I)V
    .locals 2
    .param p1, "info"    # Landroid/view/accessibility/AccessibilityNodeInfo;
    .param p2, "interactionId"    # I

    .line 656
    iget-object v0, p0, Landroid/view/accessibility/AccessibilityInteractionClient;->mInstanceLock:Ljava/lang/Object;

    monitor-enter v0

    .line 657
    :try_start_0
    iget v1, p0, Landroid/view/accessibility/AccessibilityInteractionClient;->mInteractionId:I

    if-le p2, v1, :cond_0

    .line 658
    iput-object p1, p0, Landroid/view/accessibility/AccessibilityInteractionClient;->mFindAccessibilityNodeInfoResult:Landroid/view/accessibility/AccessibilityNodeInfo;

    .line 659
    iput p2, p0, Landroid/view/accessibility/AccessibilityInteractionClient;->mInteractionId:I

    .line 661
    :cond_0
    iget-object v1, p0, Landroid/view/accessibility/AccessibilityInteractionClient;->mInstanceLock:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    .line 662
    monitor-exit v0

    .line 663
    return-void

    .line 662
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public setFindAccessibilityNodeInfosResult(Ljava/util/List;I)V
    .locals 3
    .param p2, "interactionId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/view/accessibility/AccessibilityNodeInfo;",
            ">;I)V"
        }
    .end annotation

    .line 694
    .local p1, "infos":Ljava/util/List;, "Ljava/util/List<Landroid/view/accessibility/AccessibilityNodeInfo;>;"
    iget-object v0, p0, Landroid/view/accessibility/AccessibilityInteractionClient;->mInstanceLock:Ljava/lang/Object;

    monitor-enter v0

    .line 695
    :try_start_0
    iget v1, p0, Landroid/view/accessibility/AccessibilityInteractionClient;->mInteractionId:I

    if-le p2, v1, :cond_3

    .line 696
    if-eqz p1, :cond_2

    .line 699
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v2

    if-eq v1, v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 700
    .local v1, "isIpcCall":Z
    :goto_0
    if-nez v1, :cond_1

    .line 701
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v2, p0, Landroid/view/accessibility/AccessibilityInteractionClient;->mFindAccessibilityNodeInfosResult:Ljava/util/List;

    goto :goto_1

    .line 703
    :cond_1
    iput-object p1, p0, Landroid/view/accessibility/AccessibilityInteractionClient;->mFindAccessibilityNodeInfosResult:Ljava/util/List;

    .line 705
    .end local v1    # "isIpcCall":Z
    :goto_1
    goto :goto_2

    .line 706
    :cond_2
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Landroid/view/accessibility/AccessibilityInteractionClient;->mFindAccessibilityNodeInfosResult:Ljava/util/List;

    .line 708
    :goto_2
    iput p2, p0, Landroid/view/accessibility/AccessibilityInteractionClient;->mInteractionId:I

    .line 710
    :cond_3
    iget-object v1, p0, Landroid/view/accessibility/AccessibilityInteractionClient;->mInstanceLock:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    .line 711
    monitor-exit v0

    .line 712
    return-void

    .line 711
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public setPerformAccessibilityActionResult(ZI)V
    .locals 2
    .param p1, "succeeded"    # Z
    .param p2, "interactionId"    # I

    .line 733
    iget-object v0, p0, Landroid/view/accessibility/AccessibilityInteractionClient;->mInstanceLock:Ljava/lang/Object;

    monitor-enter v0

    .line 734
    :try_start_0
    iget v1, p0, Landroid/view/accessibility/AccessibilityInteractionClient;->mInteractionId:I

    if-le p2, v1, :cond_0

    .line 735
    iput-boolean p1, p0, Landroid/view/accessibility/AccessibilityInteractionClient;->mPerformAccessibilityActionResult:Z

    .line 736
    iput p2, p0, Landroid/view/accessibility/AccessibilityInteractionClient;->mInteractionId:I

    .line 738
    :cond_0
    iget-object v1, p0, Landroid/view/accessibility/AccessibilityInteractionClient;->mInstanceLock:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    .line 739
    monitor-exit v0

    .line 740
    return-void

    .line 739
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public setSameThreadMessage(Landroid/os/Message;)V
    .locals 2
    .param p1, "message"    # Landroid/os/Message;

    .line 194
    iget-object v0, p0, Landroid/view/accessibility/AccessibilityInteractionClient;->mInstanceLock:Ljava/lang/Object;

    monitor-enter v0

    .line 195
    :try_start_0
    iput-object p1, p0, Landroid/view/accessibility/AccessibilityInteractionClient;->mSameThreadMessage:Landroid/os/Message;

    .line 196
    iget-object v1, p0, Landroid/view/accessibility/AccessibilityInteractionClient;->mInstanceLock:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    .line 197
    monitor-exit v0

    .line 198
    return-void

    .line 197
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
