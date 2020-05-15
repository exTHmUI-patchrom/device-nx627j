.class Landroid/widget/ReverseExpandableListConnector;
.super Landroid/widget/BaseAdapter;
.source "ReverseExpandableListConnector.java"

# interfaces
.implements Landroid/widget/Filterable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/widget/ReverseExpandableListConnector$PositionMetadata;,
        Landroid/widget/ReverseExpandableListConnector$GroupMetadata;,
        Landroid/widget/ReverseExpandableListConnector$MyDataSetObserver;
    }
.end annotation


# instance fields
.field private final mDataSetObserver:Landroid/database/DataSetObserver;

.field private mExpGroupMetadataList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/widget/ReverseExpandableListConnector$GroupMetadata;",
            ">;"
        }
    .end annotation
.end field

.field private mExpandableListAdapter:Landroid/widget/ExpandableListAdapter;

.field private mMaxExpGroupCount:I

.field private mTotalExpChildrenCount:I


# direct methods
.method public constructor <init>(Landroid/widget/ExpandableListAdapter;)V
    .locals 1
    .param p1, "expandableListAdapter"    # Landroid/widget/ExpandableListAdapter;

    .line 75
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 67
    const v0, 0x7fffffff

    iput v0, p0, Landroid/widget/ReverseExpandableListConnector;->mMaxExpGroupCount:I

    .line 70
    new-instance v0, Landroid/widget/ReverseExpandableListConnector$MyDataSetObserver;

    invoke-direct {v0, p0}, Landroid/widget/ReverseExpandableListConnector$MyDataSetObserver;-><init>(Landroid/widget/ReverseExpandableListConnector;)V

    iput-object v0, p0, Landroid/widget/ReverseExpandableListConnector;->mDataSetObserver:Landroid/database/DataSetObserver;

    .line 76
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/widget/ReverseExpandableListConnector;->mExpGroupMetadataList:Ljava/util/ArrayList;

    .line 78
    invoke-virtual {p0, p1}, Landroid/widget/ReverseExpandableListConnector;->setExpandableListAdapter(Landroid/widget/ExpandableListAdapter;)V

    .line 79
    return-void
.end method

.method static synthetic access$000(Landroid/widget/ReverseExpandableListConnector;ZZ)V
    .locals 0
    .param p0, "x0"    # Landroid/widget/ReverseExpandableListConnector;
    .param p1, "x1"    # Z
    .param p2, "x2"    # Z

    .line 50
    invoke-direct {p0, p1, p2}, Landroid/widget/ReverseExpandableListConnector;->refreshExpGroupMetadataList(ZZ)V

    return-void
.end method

.method private refreshExpGroupMetadataList(ZZ)V
    .locals 11
    .param p1, "forceChildrenCountRefresh"    # Z
    .param p2, "syncGroupPositions"    # Z

    .line 521
    iget-object v0, p0, Landroid/widget/ReverseExpandableListConnector;->mExpGroupMetadataList:Ljava/util/ArrayList;

    .line 522
    .local v0, "egml":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/widget/ReverseExpandableListConnector$GroupMetadata;>;"
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 523
    .local v1, "egmlSize":I
    const/4 v2, 0x0

    .line 526
    .local v2, "curFlPos":I
    const/4 v3, 0x0

    iput v3, p0, Landroid/widget/ReverseExpandableListConnector;->mTotalExpChildrenCount:I

    .line 528
    const/4 v4, -0x1

    if-eqz p2, :cond_3

    .line 530
    const/4 v5, 0x0

    .line 532
    .local v5, "positionsChanged":Z
    add-int/lit8 v6, v1, -0x1

    .local v6, "i":I
    :goto_0
    if-ltz v6, :cond_2

    .line 533
    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/widget/ReverseExpandableListConnector$GroupMetadata;

    .line 534
    .local v7, "curGm":Landroid/widget/ReverseExpandableListConnector$GroupMetadata;
    iget-wide v8, v7, Landroid/widget/ReverseExpandableListConnector$GroupMetadata;->gId:J

    iget v10, v7, Landroid/widget/ReverseExpandableListConnector$GroupMetadata;->gPos:I

    invoke-virtual {p0, v8, v9, v10}, Landroid/widget/ReverseExpandableListConnector;->findGroupPosition(JI)I

    move-result v8

    .line 535
    .local v8, "newGPos":I
    iget v9, v7, Landroid/widget/ReverseExpandableListConnector$GroupMetadata;->gPos:I

    if-eq v8, v9, :cond_1

    .line 536
    if-ne v8, v4, :cond_0

    .line 538
    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 539
    add-int/lit8 v1, v1, -0x1

    .line 542
    :cond_0
    iput v8, v7, Landroid/widget/ReverseExpandableListConnector$GroupMetadata;->gPos:I

    .line 543
    if-nez v5, :cond_1

    const/4 v5, 0x1

    .line 532
    .end local v7    # "curGm":Landroid/widget/ReverseExpandableListConnector$GroupMetadata;
    .end local v8    # "newGPos":I
    :cond_1
    add-int/lit8 v6, v6, -0x1

    goto :goto_0

    .line 547
    .end local v6    # "i":I
    :cond_2
    if-eqz v5, :cond_3

    .line 549
    invoke-static {v0}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 554
    .end local v5    # "positionsChanged":Z
    :cond_3
    const/4 v5, 0x0

    .line 555
    .local v5, "lastGPos":I
    nop

    .local v3, "i":I
    :goto_1
    if-ge v3, v1, :cond_6

    .line 557
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/widget/ReverseExpandableListConnector$GroupMetadata;

    .line 563
    .local v6, "curGm":Landroid/widget/ReverseExpandableListConnector$GroupMetadata;
    iget v7, v6, Landroid/widget/ReverseExpandableListConnector$GroupMetadata;->lastChildFlPos:I

    if-eq v7, v4, :cond_5

    if-eqz p1, :cond_4

    goto :goto_2

    .line 569
    :cond_4
    iget v7, v6, Landroid/widget/ReverseExpandableListConnector$GroupMetadata;->lastChildFlPos:I

    iget v8, v6, Landroid/widget/ReverseExpandableListConnector$GroupMetadata;->flPos:I

    sub-int/2addr v7, v8

    goto :goto_3

    .line 564
    :cond_5
    :goto_2
    iget-object v7, p0, Landroid/widget/ReverseExpandableListConnector;->mExpandableListAdapter:Landroid/widget/ExpandableListAdapter;

    iget v8, v6, Landroid/widget/ReverseExpandableListConnector$GroupMetadata;->gPos:I

    invoke-interface {v7, v8}, Landroid/widget/ExpandableListAdapter;->getChildrenCount(I)I

    move-result v7

    .line 569
    .local v7, "gChildrenCount":I
    :goto_3
    nop

    .line 573
    iget v8, p0, Landroid/widget/ReverseExpandableListConnector;->mTotalExpChildrenCount:I

    add-int/2addr v8, v7

    iput v8, p0, Landroid/widget/ReverseExpandableListConnector;->mTotalExpChildrenCount:I

    .line 580
    iget v8, v6, Landroid/widget/ReverseExpandableListConnector$GroupMetadata;->gPos:I

    sub-int/2addr v8, v5

    add-int/2addr v2, v8

    .line 581
    iget v5, v6, Landroid/widget/ReverseExpandableListConnector$GroupMetadata;->gPos:I

    .line 584
    iput v2, v6, Landroid/widget/ReverseExpandableListConnector$GroupMetadata;->flPos:I

    .line 585
    add-int/2addr v2, v7

    .line 586
    iput v2, v6, Landroid/widget/ReverseExpandableListConnector$GroupMetadata;->lastChildFlPos:I

    .line 555
    .end local v6    # "curGm":Landroid/widget/ReverseExpandableListConnector$GroupMetadata;
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 588
    .end local v3    # "i":I
    .end local v7    # "gChildrenCount":I
    :cond_6
    return-void
.end method


# virtual methods
.method public areAllItemsEnabled()Z
    .locals 1

    .line 371
    iget-object v0, p0, Landroid/widget/ReverseExpandableListConnector;->mExpandableListAdapter:Landroid/widget/ExpandableListAdapter;

    invoke-interface {v0}, Landroid/widget/ExpandableListAdapter;->areAllItemsEnabled()Z

    move-result v0

    return v0
.end method

.method collapseGroup(I)Z
    .locals 3
    .param p1, "groupPos"    # I

    .line 596
    const/4 v0, -0x1

    const/4 v1, 0x2

    invoke-static {v1, p1, v0, v0}, Landroid/widget/ExpandableListPosition;->obtain(IIII)Landroid/widget/ExpandableListPosition;

    move-result-object v0

    .line 598
    .local v0, "elGroupPos":Landroid/widget/ExpandableListPosition;
    invoke-virtual {p0, v0}, Landroid/widget/ReverseExpandableListConnector;->getFlattenedPos(Landroid/widget/ExpandableListPosition;)Landroid/widget/ReverseExpandableListConnector$PositionMetadata;

    move-result-object v1

    .line 599
    .local v1, "pm":Landroid/widget/ReverseExpandableListConnector$PositionMetadata;
    invoke-virtual {v0}, Landroid/widget/ExpandableListPosition;->recycle()V

    .line 600
    if-nez v1, :cond_0

    const/4 v2, 0x0

    return v2

    .line 602
    :cond_0
    invoke-virtual {p0, v1}, Landroid/widget/ReverseExpandableListConnector;->collapseGroup(Landroid/widget/ReverseExpandableListConnector$PositionMetadata;)Z

    move-result v2

    .line 603
    .local v2, "retValue":Z
    invoke-virtual {v1}, Landroid/widget/ReverseExpandableListConnector$PositionMetadata;->recycle()V

    .line 604
    return v2
.end method

.method collapseGroup(Landroid/widget/ReverseExpandableListConnector$PositionMetadata;)Z
    .locals 3
    .param p1, "posMetadata"    # Landroid/widget/ReverseExpandableListConnector$PositionMetadata;

    .line 617
    iget-object v0, p1, Landroid/widget/ReverseExpandableListConnector$PositionMetadata;->groupMetadata:Landroid/widget/ReverseExpandableListConnector$GroupMetadata;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 620
    :cond_0
    iget-object v0, p0, Landroid/widget/ReverseExpandableListConnector;->mExpGroupMetadataList:Ljava/util/ArrayList;

    iget-object v2, p1, Landroid/widget/ReverseExpandableListConnector$PositionMetadata;->groupMetadata:Landroid/widget/ReverseExpandableListConnector$GroupMetadata;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 623
    invoke-direct {p0, v1, v1}, Landroid/widget/ReverseExpandableListConnector;->refreshExpGroupMetadataList(ZZ)V

    .line 626
    invoke-virtual {p0}, Landroid/widget/ReverseExpandableListConnector;->notifyDataSetChanged()V

    .line 629
    iget-object v0, p0, Landroid/widget/ReverseExpandableListConnector;->mExpandableListAdapter:Landroid/widget/ExpandableListAdapter;

    iget-object v1, p1, Landroid/widget/ReverseExpandableListConnector$PositionMetadata;->groupMetadata:Landroid/widget/ReverseExpandableListConnector$GroupMetadata;

    iget v1, v1, Landroid/widget/ReverseExpandableListConnector$GroupMetadata;->gPos:I

    invoke-interface {v0, v1}, Landroid/widget/ExpandableListAdapter;->onGroupCollapsed(I)V

    .line 631
    const/4 v0, 0x1

    return v0
.end method

.method expandGroup(I)Z
    .locals 3
    .param p1, "groupPos"    # I

    .line 639
    const/4 v0, -0x1

    const/4 v1, 0x2

    invoke-static {v1, p1, v0, v0}, Landroid/widget/ExpandableListPosition;->obtain(IIII)Landroid/widget/ExpandableListPosition;

    move-result-object v0

    .line 641
    .local v0, "elGroupPos":Landroid/widget/ExpandableListPosition;
    invoke-virtual {p0, v0}, Landroid/widget/ReverseExpandableListConnector;->getFlattenedPos(Landroid/widget/ExpandableListPosition;)Landroid/widget/ReverseExpandableListConnector$PositionMetadata;

    move-result-object v1

    .line 642
    .local v1, "pm":Landroid/widget/ReverseExpandableListConnector$PositionMetadata;
    invoke-virtual {v0}, Landroid/widget/ExpandableListPosition;->recycle()V

    .line 643
    invoke-virtual {p0, v1}, Landroid/widget/ReverseExpandableListConnector;->expandGroup(Landroid/widget/ReverseExpandableListConnector$PositionMetadata;)Z

    move-result v2

    .line 644
    .local v2, "retValue":Z
    invoke-virtual {v1}, Landroid/widget/ReverseExpandableListConnector$PositionMetadata;->recycle()V

    .line 645
    return v2
.end method

.method expandGroup(Landroid/widget/ReverseExpandableListConnector$PositionMetadata;)Z
    .locals 6
    .param p1, "posMetadata"    # Landroid/widget/ReverseExpandableListConnector$PositionMetadata;

    .line 653
    iget-object v0, p1, Landroid/widget/ReverseExpandableListConnector$PositionMetadata;->position:Landroid/widget/ExpandableListPosition;

    iget v0, v0, Landroid/widget/ExpandableListPosition;->groupPos:I

    if-ltz v0, :cond_3

    .line 658
    iget v0, p0, Landroid/widget/ReverseExpandableListConnector;->mMaxExpGroupCount:I

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 661
    :cond_0
    iget-object v0, p1, Landroid/widget/ReverseExpandableListConnector$PositionMetadata;->groupMetadata:Landroid/widget/ReverseExpandableListConnector$GroupMetadata;

    if-eqz v0, :cond_1

    return v1

    .line 664
    :cond_1
    iget-object v0, p0, Landroid/widget/ReverseExpandableListConnector;->mExpGroupMetadataList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    iget v2, p0, Landroid/widget/ReverseExpandableListConnector;->mMaxExpGroupCount:I

    const/4 v3, 0x1

    if-lt v0, v2, :cond_2

    .line 668
    iget-object v0, p0, Landroid/widget/ReverseExpandableListConnector;->mExpGroupMetadataList:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ReverseExpandableListConnector$GroupMetadata;

    .line 670
    .local v0, "collapsedGm":Landroid/widget/ReverseExpandableListConnector$GroupMetadata;
    iget-object v2, p0, Landroid/widget/ReverseExpandableListConnector;->mExpGroupMetadataList:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v2

    .line 672
    .local v2, "collapsedIndex":I
    iget v4, v0, Landroid/widget/ReverseExpandableListConnector$GroupMetadata;->gPos:I

    invoke-virtual {p0, v4}, Landroid/widget/ReverseExpandableListConnector;->collapseGroup(I)Z

    .line 675
    iget v4, p1, Landroid/widget/ReverseExpandableListConnector$PositionMetadata;->groupInsertIndex:I

    if-le v4, v2, :cond_2

    .line 676
    iget v4, p1, Landroid/widget/ReverseExpandableListConnector$PositionMetadata;->groupInsertIndex:I

    sub-int/2addr v4, v3

    iput v4, p1, Landroid/widget/ReverseExpandableListConnector$PositionMetadata;->groupInsertIndex:I

    .line 680
    .end local v0    # "collapsedGm":Landroid/widget/ReverseExpandableListConnector$GroupMetadata;
    .end local v2    # "collapsedIndex":I
    :cond_2
    iget-object v0, p1, Landroid/widget/ReverseExpandableListConnector$PositionMetadata;->position:Landroid/widget/ExpandableListPosition;

    iget v0, v0, Landroid/widget/ExpandableListPosition;->groupPos:I

    iget-object v2, p0, Landroid/widget/ReverseExpandableListConnector;->mExpandableListAdapter:Landroid/widget/ExpandableListAdapter;

    iget-object v4, p1, Landroid/widget/ReverseExpandableListConnector$PositionMetadata;->position:Landroid/widget/ExpandableListPosition;

    iget v4, v4, Landroid/widget/ExpandableListPosition;->groupPos:I

    .line 684
    invoke-interface {v2, v4}, Landroid/widget/ExpandableListAdapter;->getGroupId(I)J

    move-result-wide v4

    .line 680
    const/4 v2, -0x1

    invoke-static {v2, v2, v0, v4, v5}, Landroid/widget/ReverseExpandableListConnector$GroupMetadata;->obtain(IIIJ)Landroid/widget/ReverseExpandableListConnector$GroupMetadata;

    move-result-object v0

    .line 686
    .local v0, "expandedGm":Landroid/widget/ReverseExpandableListConnector$GroupMetadata;
    iget-object v2, p0, Landroid/widget/ReverseExpandableListConnector;->mExpGroupMetadataList:Ljava/util/ArrayList;

    iget v4, p1, Landroid/widget/ReverseExpandableListConnector$PositionMetadata;->groupInsertIndex:I

    invoke-virtual {v2, v4, v0}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 689
    invoke-direct {p0, v1, v1}, Landroid/widget/ReverseExpandableListConnector;->refreshExpGroupMetadataList(ZZ)V

    .line 692
    invoke-virtual {p0}, Landroid/widget/ReverseExpandableListConnector;->notifyDataSetChanged()V

    .line 695
    iget-object v1, p0, Landroid/widget/ReverseExpandableListConnector;->mExpandableListAdapter:Landroid/widget/ExpandableListAdapter;

    iget v2, v0, Landroid/widget/ReverseExpandableListConnector$GroupMetadata;->gPos:I

    invoke-interface {v1, v2}, Landroid/widget/ExpandableListAdapter;->onGroupExpanded(I)V

    .line 697
    return v3

    .line 655
    .end local v0    # "expandedGm":Landroid/widget/ReverseExpandableListConnector$GroupMetadata;
    :cond_3
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Need group"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method findGroupPosition(JI)I
    .locals 15
    .param p1, "groupIdToMatch"    # J
    .param p3, "seedGroupPosition"    # I

    .line 780
    move-object v0, p0

    iget-object v1, v0, Landroid/widget/ReverseExpandableListConnector;->mExpandableListAdapter:Landroid/widget/ExpandableListAdapter;

    invoke-interface {v1}, Landroid/widget/ExpandableListAdapter;->getGroupCount()I

    move-result v1

    .line 782
    .local v1, "count":I
    const/4 v2, -0x1

    if-nez v1, :cond_0

    .line 783
    return v2

    .line 787
    :cond_0
    const-wide/high16 v3, -0x8000000000000000L

    cmp-long v3, p1, v3

    if-nez v3, :cond_1

    .line 788
    return v2

    .line 792
    :cond_1
    const/4 v3, 0x0

    move/from16 v4, p3

    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v4

    .line 793
    .end local p3    # "seedGroupPosition":I
    .local v4, "seedGroupPosition":I
    add-int/lit8 v5, v1, -0x1

    invoke-static {v5, v4}, Ljava/lang/Math;->min(II)I

    move-result v4

    .line 795
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v5

    const-wide/16 v7, 0x64

    add-long/2addr v5, v7

    .line 800
    .local v5, "endTime":J
    move v7, v4

    .line 803
    .local v7, "first":I
    move v8, v4

    .line 806
    .local v8, "last":I
    const/4 v9, 0x0

    .line 816
    .local v9, "next":Z
    invoke-virtual {v0}, Landroid/widget/ReverseExpandableListConnector;->getAdapter()Landroid/widget/ExpandableListAdapter;

    move-result-object v10

    .line 817
    .local v10, "adapter":Landroid/widget/ExpandableListAdapter;
    if-nez v10, :cond_2

    .line 818
    return v2

    .line 821
    :cond_2
    :goto_0
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v11

    cmp-long v11, v11, v5

    if-gtz v11, :cond_a

    .line 822
    invoke-interface {v10, v4}, Landroid/widget/ExpandableListAdapter;->getGroupId(I)J

    move-result-wide v11

    .line 823
    .local v11, "rowId":J
    cmp-long v13, v11, p1

    if-nez v13, :cond_3

    .line 825
    return v4

    .line 828
    :cond_3
    add-int/lit8 v13, v1, -0x1

    const/4 v14, 0x1

    if-ne v8, v13, :cond_4

    move v13, v14

    goto :goto_1

    :cond_4
    move v13, v3

    .line 829
    .local v13, "hitLast":Z
    :goto_1
    if-nez v7, :cond_5

    goto :goto_2

    :cond_5
    move v14, v3

    .line 831
    .local v14, "hitFirst":Z
    :goto_2
    if-eqz v13, :cond_6

    if-eqz v14, :cond_6

    .line 833
    goto :goto_4

    .line 836
    :cond_6
    if-nez v14, :cond_9

    if-eqz v9, :cond_7

    if-nez v13, :cond_7

    goto :goto_3

    .line 842
    :cond_7
    if-nez v13, :cond_8

    if-nez v9, :cond_2

    if-nez v14, :cond_2

    .line 844
    :cond_8
    add-int/lit8 v7, v7, -0x1

    .line 845
    move v4, v7

    .line 847
    const/4 v9, 0x1

    goto :goto_0

    .line 838
    :cond_9
    :goto_3
    add-int/lit8 v8, v8, 0x1

    .line 839
    move v4, v8

    .line 841
    const/4 v9, 0x0

    goto :goto_0

    .line 852
    .end local v11    # "rowId":J
    .end local v13    # "hitLast":Z
    .end local v14    # "hitFirst":Z
    :cond_a
    :goto_4
    return v2
.end method

.method getAdapter()Landroid/widget/ExpandableListAdapter;
    .locals 1

    .line 726
    iget-object v0, p0, Landroid/widget/ReverseExpandableListConnector;->mExpandableListAdapter:Landroid/widget/ExpandableListAdapter;

    return-object v0
.end method

.method public getCount()I
    .locals 2

    .line 398
    iget-object v0, p0, Landroid/widget/ReverseExpandableListConnector;->mExpandableListAdapter:Landroid/widget/ExpandableListAdapter;

    invoke-interface {v0}, Landroid/widget/ExpandableListAdapter;->getGroupCount()I

    move-result v0

    iget v1, p0, Landroid/widget/ReverseExpandableListConnector;->mTotalExpChildrenCount:I

    add-int/2addr v0, v1

    return v0
.end method

.method getExpandedGroupMetadataList()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Landroid/widget/ReverseExpandableListConnector$GroupMetadata;",
            ">;"
        }
    .end annotation

    .line 739
    iget-object v0, p0, Landroid/widget/ReverseExpandableListConnector;->mExpGroupMetadataList:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getFilter()Landroid/widget/Filter;
    .locals 2

    .line 730
    invoke-virtual {p0}, Landroid/widget/ReverseExpandableListConnector;->getAdapter()Landroid/widget/ExpandableListAdapter;

    move-result-object v0

    .line 731
    .local v0, "adapter":Landroid/widget/ExpandableListAdapter;
    instance-of v1, v0, Landroid/widget/Filterable;

    if-eqz v1, :cond_0

    .line 732
    move-object v1, v0

    check-cast v1, Landroid/widget/Filterable;

    invoke-interface {v1}, Landroid/widget/Filterable;->getFilter()Landroid/widget/Filter;

    move-result-object v1

    return-object v1

    .line 734
    :cond_0
    const/4 v1, 0x0

    return-object v1
.end method

.method getFlattenedPos(Landroid/widget/ExpandableListPosition;)Landroid/widget/ReverseExpandableListConnector$PositionMetadata;
    .locals 21
    .param p1, "pos"    # Landroid/widget/ExpandableListPosition;

    .line 260
    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iget-object v2, v1, Landroid/widget/ReverseExpandableListConnector;->mExpGroupMetadataList:Ljava/util/ArrayList;

    .line 261
    .local v2, "egml":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/widget/ReverseExpandableListConnector$GroupMetadata;>;"
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 264
    .local v3, "numExpGroups":I
    const/4 v4, 0x0

    .line 265
    .local v4, "leftExpGroupIndex":I
    add-int/lit8 v5, v3, -0x1

    .line 266
    .local v5, "rightExpGroupIndex":I
    const/4 v6, 0x0

    .line 269
    .local v6, "midExpGroupIndex":I
    if-nez v3, :cond_0

    .line 275
    iget v7, v0, Landroid/widget/ExpandableListPosition;->groupPos:I

    iget v8, v0, Landroid/widget/ExpandableListPosition;->type:I

    iget v9, v0, Landroid/widget/ExpandableListPosition;->groupPos:I

    iget v10, v0, Landroid/widget/ExpandableListPosition;->childPos:I

    const/4 v11, 0x0

    const/4 v12, 0x0

    invoke-static/range {v7 .. v12}, Landroid/widget/ReverseExpandableListConnector$PositionMetadata;->obtain(IIIILandroid/widget/ReverseExpandableListConnector$GroupMetadata;I)Landroid/widget/ReverseExpandableListConnector$PositionMetadata;

    move-result-object v7

    return-object v7

    .line 284
    :cond_0
    :goto_0
    const/4 v7, 0x0

    const/4 v8, 0x2

    const/4 v9, 0x1

    if-gt v4, v5, :cond_5

    .line 285
    sub-int v10, v5, v4

    div-int/2addr v10, v8

    add-int v6, v10, v4

    .line 286
    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/widget/ReverseExpandableListConnector$GroupMetadata;

    .line 288
    .local v10, "midExpGm":Landroid/widget/ReverseExpandableListConnector$GroupMetadata;
    iget v11, v0, Landroid/widget/ExpandableListPosition;->groupPos:I

    iget v12, v10, Landroid/widget/ReverseExpandableListConnector$GroupMetadata;->gPos:I

    if-le v11, v12, :cond_1

    .line 292
    add-int/lit8 v4, v6, 0x1

    goto :goto_0

    .line 293
    :cond_1
    iget v11, v0, Landroid/widget/ExpandableListPosition;->groupPos:I

    iget v12, v10, Landroid/widget/ReverseExpandableListConnector$GroupMetadata;->gPos:I

    if-ge v11, v12, :cond_2

    .line 297
    add-int/lit8 v5, v6, -0x1

    goto :goto_0

    .line 298
    :cond_2
    iget v11, v0, Landroid/widget/ExpandableListPosition;->groupPos:I

    iget v12, v10, Landroid/widget/ReverseExpandableListConnector$GroupMetadata;->gPos:I

    if-ne v11, v12, :cond_0

    .line 303
    iget v11, v0, Landroid/widget/ExpandableListPosition;->type:I

    if-ne v11, v8, :cond_3

    .line 305
    iget v11, v10, Landroid/widget/ReverseExpandableListConnector$GroupMetadata;->flPos:I

    iget v12, v0, Landroid/widget/ExpandableListPosition;->type:I

    iget v13, v0, Landroid/widget/ExpandableListPosition;->groupPos:I

    iget v14, v0, Landroid/widget/ExpandableListPosition;->childPos:I

    move-object v15, v10

    move/from16 v16, v6

    invoke-static/range {v11 .. v16}, Landroid/widget/ReverseExpandableListConnector$PositionMetadata;->obtain(IIIILandroid/widget/ReverseExpandableListConnector$GroupMetadata;I)Landroid/widget/ReverseExpandableListConnector$PositionMetadata;

    move-result-object v7

    return-object v7

    .line 307
    :cond_3
    iget v8, v0, Landroid/widget/ExpandableListPosition;->type:I

    if-ne v8, v9, :cond_4

    .line 309
    iget v7, v10, Landroid/widget/ReverseExpandableListConnector$GroupMetadata;->flPos:I

    iget v8, v0, Landroid/widget/ExpandableListPosition;->childPos:I

    add-int/2addr v7, v8

    add-int/lit8 v11, v7, 0x1

    iget v12, v0, Landroid/widget/ExpandableListPosition;->type:I

    iget v13, v0, Landroid/widget/ExpandableListPosition;->groupPos:I

    iget v14, v0, Landroid/widget/ExpandableListPosition;->childPos:I

    move-object v15, v10

    move/from16 v16, v6

    invoke-static/range {v11 .. v16}, Landroid/widget/ReverseExpandableListConnector$PositionMetadata;->obtain(IIIILandroid/widget/ReverseExpandableListConnector$GroupMetadata;I)Landroid/widget/ReverseExpandableListConnector$PositionMetadata;

    move-result-object v7

    return-object v7

    .line 313
    :cond_4
    return-object v7

    .line 322
    .end local v10    # "midExpGm":Landroid/widget/ReverseExpandableListConnector$GroupMetadata;
    :cond_5
    iget v10, v0, Landroid/widget/ExpandableListPosition;->type:I

    if-eq v10, v8, :cond_6

    .line 324
    return-object v7

    .line 332
    :cond_6
    if-le v4, v6, :cond_7

    .line 343
    add-int/lit8 v7, v4, -0x1

    invoke-virtual {v2, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/widget/ReverseExpandableListConnector$GroupMetadata;

    .line 344
    .local v7, "leftExpGm":Landroid/widget/ReverseExpandableListConnector$GroupMetadata;
    iget v8, v7, Landroid/widget/ReverseExpandableListConnector$GroupMetadata;->lastChildFlPos:I

    iget v9, v0, Landroid/widget/ExpandableListPosition;->groupPos:I

    iget v10, v7, Landroid/widget/ReverseExpandableListConnector$GroupMetadata;->gPos:I

    sub-int/2addr v9, v10

    add-int v14, v8, v9

    .line 348
    .local v14, "flPos":I
    iget v9, v0, Landroid/widget/ExpandableListPosition;->type:I

    iget v10, v0, Landroid/widget/ExpandableListPosition;->groupPos:I

    iget v11, v0, Landroid/widget/ExpandableListPosition;->childPos:I

    const/4 v12, 0x0

    move v8, v14

    move v13, v4

    invoke-static/range {v8 .. v13}, Landroid/widget/ReverseExpandableListConnector$PositionMetadata;->obtain(IIIILandroid/widget/ReverseExpandableListConnector$GroupMetadata;I)Landroid/widget/ReverseExpandableListConnector$PositionMetadata;

    move-result-object v8

    return-object v8

    .line 350
    .end local v7    # "leftExpGm":Landroid/widget/ReverseExpandableListConnector$GroupMetadata;
    .end local v14    # "flPos":I
    :cond_7
    if-ge v5, v6, :cond_8

    .line 358
    add-int/2addr v5, v9

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/widget/ReverseExpandableListConnector$GroupMetadata;

    .line 359
    .local v7, "rightExpGm":Landroid/widget/ReverseExpandableListConnector$GroupMetadata;
    iget v8, v7, Landroid/widget/ReverseExpandableListConnector$GroupMetadata;->flPos:I

    iget v9, v7, Landroid/widget/ReverseExpandableListConnector$GroupMetadata;->gPos:I

    iget v10, v0, Landroid/widget/ExpandableListPosition;->groupPos:I

    sub-int/2addr v9, v10

    sub-int/2addr v8, v9

    .line 362
    .local v8, "flPos":I
    iget v9, v0, Landroid/widget/ExpandableListPosition;->type:I

    iget v10, v0, Landroid/widget/ExpandableListPosition;->groupPos:I

    iget v11, v0, Landroid/widget/ExpandableListPosition;->childPos:I

    const/16 v19, 0x0

    move v15, v8

    move/from16 v16, v9

    move/from16 v17, v10

    move/from16 v18, v11

    move/from16 v20, v5

    invoke-static/range {v15 .. v20}, Landroid/widget/ReverseExpandableListConnector$PositionMetadata;->obtain(IIIILandroid/widget/ReverseExpandableListConnector$GroupMetadata;I)Landroid/widget/ReverseExpandableListConnector$PositionMetadata;

    move-result-object v9

    return-object v9

    .line 365
    .end local v7    # "rightExpGm":Landroid/widget/ReverseExpandableListConnector$GroupMetadata;
    .end local v8    # "flPos":I
    :cond_8
    return-object v7
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 4
    .param p1, "flatListPos"    # I

    .line 402
    invoke-virtual {p0, p1}, Landroid/widget/ReverseExpandableListConnector;->getUnflattenedPos(I)Landroid/widget/ReverseExpandableListConnector$PositionMetadata;

    move-result-object v0

    .line 405
    .local v0, "posMetadata":Landroid/widget/ReverseExpandableListConnector$PositionMetadata;
    iget-object v1, v0, Landroid/widget/ReverseExpandableListConnector$PositionMetadata;->position:Landroid/widget/ExpandableListPosition;

    iget v1, v1, Landroid/widget/ExpandableListPosition;->type:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    .line 406
    iget-object v1, p0, Landroid/widget/ReverseExpandableListConnector;->mExpandableListAdapter:Landroid/widget/ExpandableListAdapter;

    iget-object v2, v0, Landroid/widget/ReverseExpandableListConnector$PositionMetadata;->position:Landroid/widget/ExpandableListPosition;

    iget v2, v2, Landroid/widget/ExpandableListPosition;->groupPos:I

    .line 407
    invoke-interface {v1, v2}, Landroid/widget/ExpandableListAdapter;->getGroup(I)Ljava/lang/Object;

    move-result-object v1

    .local v1, "retValue":Ljava/lang/Object;
    :goto_0
    goto :goto_1

    .line 408
    .end local v1    # "retValue":Ljava/lang/Object;
    :cond_0
    iget-object v1, v0, Landroid/widget/ReverseExpandableListConnector$PositionMetadata;->position:Landroid/widget/ExpandableListPosition;

    iget v1, v1, Landroid/widget/ExpandableListPosition;->type:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    .line 409
    iget-object v1, p0, Landroid/widget/ReverseExpandableListConnector;->mExpandableListAdapter:Landroid/widget/ExpandableListAdapter;

    iget-object v2, v0, Landroid/widget/ReverseExpandableListConnector$PositionMetadata;->position:Landroid/widget/ExpandableListPosition;

    iget v2, v2, Landroid/widget/ExpandableListPosition;->groupPos:I

    iget-object v3, v0, Landroid/widget/ReverseExpandableListConnector$PositionMetadata;->position:Landroid/widget/ExpandableListPosition;

    iget v3, v3, Landroid/widget/ExpandableListPosition;->childPos:I

    invoke-interface {v1, v2, v3}, Landroid/widget/ExpandableListAdapter;->getChild(II)Ljava/lang/Object;

    move-result-object v1

    goto :goto_0

    .line 413
    .restart local v1    # "retValue":Ljava/lang/Object;
    :goto_1
    nop

    .line 416
    invoke-virtual {v0}, Landroid/widget/ReverseExpandableListConnector$PositionMetadata;->recycle()V

    .line 418
    return-object v1

    .line 413
    .end local v1    # "retValue":Ljava/lang/Object;
    :cond_1
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Flat list position is of unknown type"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public getItemId(I)J
    .locals 6
    .param p1, "flatListPos"    # I

    .line 422
    invoke-virtual {p0, p1}, Landroid/widget/ReverseExpandableListConnector;->getUnflattenedPos(I)Landroid/widget/ReverseExpandableListConnector$PositionMetadata;

    move-result-object v0

    .line 423
    .local v0, "posMetadata":Landroid/widget/ReverseExpandableListConnector$PositionMetadata;
    iget-object v1, p0, Landroid/widget/ReverseExpandableListConnector;->mExpandableListAdapter:Landroid/widget/ExpandableListAdapter;

    iget-object v2, v0, Landroid/widget/ReverseExpandableListConnector$PositionMetadata;->position:Landroid/widget/ExpandableListPosition;

    iget v2, v2, Landroid/widget/ExpandableListPosition;->groupPos:I

    invoke-interface {v1, v2}, Landroid/widget/ExpandableListAdapter;->getGroupId(I)J

    move-result-wide v1

    .line 426
    .local v1, "groupId":J
    iget-object v3, v0, Landroid/widget/ReverseExpandableListConnector$PositionMetadata;->position:Landroid/widget/ExpandableListPosition;

    iget v3, v3, Landroid/widget/ExpandableListPosition;->type:I

    const/4 v4, 0x2

    if-ne v3, v4, :cond_0

    .line 427
    iget-object v3, p0, Landroid/widget/ReverseExpandableListConnector;->mExpandableListAdapter:Landroid/widget/ExpandableListAdapter;

    invoke-interface {v3, v1, v2}, Landroid/widget/ExpandableListAdapter;->getCombinedGroupId(J)J

    move-result-wide v3

    .local v3, "retValue":J
    goto :goto_0

    .line 428
    .end local v3    # "retValue":J
    :cond_0
    iget-object v3, v0, Landroid/widget/ReverseExpandableListConnector$PositionMetadata;->position:Landroid/widget/ExpandableListPosition;

    iget v3, v3, Landroid/widget/ExpandableListPosition;->type:I

    const/4 v4, 0x1

    if-ne v3, v4, :cond_1

    .line 429
    iget-object v3, p0, Landroid/widget/ReverseExpandableListConnector;->mExpandableListAdapter:Landroid/widget/ExpandableListAdapter;

    iget-object v4, v0, Landroid/widget/ReverseExpandableListConnector$PositionMetadata;->position:Landroid/widget/ExpandableListPosition;

    iget v4, v4, Landroid/widget/ExpandableListPosition;->groupPos:I

    iget-object v5, v0, Landroid/widget/ReverseExpandableListConnector$PositionMetadata;->position:Landroid/widget/ExpandableListPosition;

    iget v5, v5, Landroid/widget/ExpandableListPosition;->childPos:I

    invoke-interface {v3, v4, v5}, Landroid/widget/ExpandableListAdapter;->getChildId(II)J

    move-result-wide v3

    .line 431
    .local v3, "childId":J
    iget-object v5, p0, Landroid/widget/ReverseExpandableListConnector;->mExpandableListAdapter:Landroid/widget/ExpandableListAdapter;

    invoke-interface {v5, v1, v2, v3, v4}, Landroid/widget/ExpandableListAdapter;->getCombinedChildId(JJ)J

    move-result-wide v3

    .line 432
    .local v3, "retValue":J
    nop

    .line 434
    :goto_0
    nop

    .line 437
    invoke-virtual {v0}, Landroid/widget/ReverseExpandableListConnector$PositionMetadata;->recycle()V

    .line 439
    return-wide v3

    .line 434
    .end local v3    # "retValue":J
    :cond_1
    new-instance v3, Ljava/lang/RuntimeException;

    const-string v4, "Flat list position is of unknown type"

    invoke-direct {v3, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method public getItemViewType(I)I
    .locals 5
    .param p1, "flatListPos"    # I

    .line 466
    invoke-virtual {p0, p1}, Landroid/widget/ReverseExpandableListConnector;->getUnflattenedPos(I)Landroid/widget/ReverseExpandableListConnector$PositionMetadata;

    move-result-object v0

    .line 467
    .local v0, "metadata":Landroid/widget/ReverseExpandableListConnector$PositionMetadata;
    iget-object v1, v0, Landroid/widget/ReverseExpandableListConnector$PositionMetadata;->position:Landroid/widget/ExpandableListPosition;

    .line 470
    .local v1, "pos":Landroid/widget/ExpandableListPosition;
    iget-object v2, p0, Landroid/widget/ReverseExpandableListConnector;->mExpandableListAdapter:Landroid/widget/ExpandableListAdapter;

    instance-of v2, v2, Landroid/widget/HeterogeneousExpandableList;

    const/4 v3, 0x2

    if-eqz v2, :cond_1

    .line 471
    iget-object v2, p0, Landroid/widget/ReverseExpandableListConnector;->mExpandableListAdapter:Landroid/widget/ExpandableListAdapter;

    check-cast v2, Landroid/widget/HeterogeneousExpandableList;

    .line 473
    .local v2, "adapter":Landroid/widget/HeterogeneousExpandableList;
    iget v4, v1, Landroid/widget/ExpandableListPosition;->type:I

    if-ne v4, v3, :cond_0

    .line 474
    iget v3, v1, Landroid/widget/ExpandableListPosition;->groupPos:I

    invoke-interface {v2, v3}, Landroid/widget/HeterogeneousExpandableList;->getGroupType(I)I

    move-result v3

    .local v3, "retValue":I
    goto :goto_0

    .line 476
    .end local v3    # "retValue":I
    :cond_0
    iget v3, v1, Landroid/widget/ExpandableListPosition;->groupPos:I

    iget v4, v1, Landroid/widget/ExpandableListPosition;->childPos:I

    invoke-interface {v2, v3, v4}, Landroid/widget/HeterogeneousExpandableList;->getChildType(II)I

    move-result v3

    .line 477
    .local v3, "childType":I
    invoke-interface {v2}, Landroid/widget/HeterogeneousExpandableList;->getGroupTypeCount()I

    move-result v4

    add-int/2addr v3, v4

    .end local v2    # "adapter":Landroid/widget/HeterogeneousExpandableList;
    .local v3, "retValue":I
    :goto_0
    move v2, v3

    .line 479
    .end local v3    # "retValue":I
    .local v2, "retValue":I
    goto :goto_1

    .line 480
    .end local v2    # "retValue":I
    :cond_1
    iget v2, v1, Landroid/widget/ExpandableListPosition;->type:I

    if-ne v2, v3, :cond_2

    .line 481
    const/4 v2, 0x0

    .restart local v2    # "retValue":I
    goto :goto_1

    .line 483
    .end local v2    # "retValue":I
    :cond_2
    const/4 v2, 0x1

    .line 487
    .restart local v2    # "retValue":I
    :goto_1
    invoke-virtual {v0}, Landroid/widget/ReverseExpandableListConnector$PositionMetadata;->recycle()V

    .line 489
    return v2
.end method

.method getUnflattenedPos(I)Landroid/widget/ReverseExpandableListConnector$PositionMetadata;
    .locals 14
    .param p1, "pos"    # I

    .line 109
    invoke-virtual {p0}, Landroid/widget/ReverseExpandableListConnector;->getCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    sub-int/2addr v0, p1

    .line 110
    .local v0, "flPos":I
    iget-object v7, p0, Landroid/widget/ReverseExpandableListConnector;->mExpGroupMetadataList:Ljava/util/ArrayList;

    .line 111
    .local v7, "egml":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/widget/ReverseExpandableListConnector$GroupMetadata;>;"
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v8

    .line 114
    .local v8, "numExpGroups":I
    const/4 v9, 0x0

    .line 115
    .local v9, "leftExpGroupIndex":I
    add-int/lit8 v10, v8, -0x1

    .line 116
    .local v10, "rightExpGroupIndex":I
    const/4 v11, 0x0

    .line 119
    .local v11, "midExpGroupIndex":I
    if-nez v8, :cond_0

    .line 125
    const/4 v2, 0x2

    const/4 v4, -0x1

    const/4 v5, 0x0

    const/4 v6, 0x0

    move v1, v0

    move v3, v0

    invoke-static/range {v1 .. v6}, Landroid/widget/ReverseExpandableListConnector$PositionMetadata;->obtain(IIIILandroid/widget/ReverseExpandableListConnector$GroupMetadata;I)Landroid/widget/ReverseExpandableListConnector$PositionMetadata;

    move-result-object v1

    return-object v1

    .line 141
    :cond_0
    :goto_0
    if-gt v9, v10, :cond_4

    .line 142
    sub-int v1, v10, v9

    div-int/lit8 v1, v1, 0x2

    add-int v11, v1, v9

    .line 145
    invoke-virtual {v7, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    move-object v12, v1

    check-cast v12, Landroid/widget/ReverseExpandableListConnector$GroupMetadata;

    .line 147
    .local v12, "midExpGm":Landroid/widget/ReverseExpandableListConnector$GroupMetadata;
    iget v1, v12, Landroid/widget/ReverseExpandableListConnector$GroupMetadata;->lastChildFlPos:I

    if-le v0, v1, :cond_1

    .line 152
    add-int/lit8 v9, v11, 0x1

    goto :goto_0

    .line 153
    :cond_1
    iget v1, v12, Landroid/widget/ReverseExpandableListConnector$GroupMetadata;->flPos:I

    if-ge v0, v1, :cond_2

    .line 158
    add-int/lit8 v10, v11, -0x1

    goto :goto_0

    .line 159
    :cond_2
    iget v1, v12, Landroid/widget/ReverseExpandableListConnector$GroupMetadata;->flPos:I

    if-ne v0, v1, :cond_3

    .line 164
    const/4 v2, 0x2

    iget v3, v12, Landroid/widget/ReverseExpandableListConnector$GroupMetadata;->gPos:I

    const/4 v4, -0x1

    move v1, v0

    move-object v5, v12

    move v6, v11

    invoke-static/range {v1 .. v6}, Landroid/widget/ReverseExpandableListConnector$PositionMetadata;->obtain(IIIILandroid/widget/ReverseExpandableListConnector$GroupMetadata;I)Landroid/widget/ReverseExpandableListConnector$PositionMetadata;

    move-result-object v1

    return-object v1

    .line 166
    :cond_3
    iget v1, v12, Landroid/widget/ReverseExpandableListConnector$GroupMetadata;->lastChildFlPos:I

    if-gt v0, v1, :cond_0

    .line 176
    iget v1, v12, Landroid/widget/ReverseExpandableListConnector$GroupMetadata;->flPos:I

    add-int/lit8 v1, v1, 0x1

    sub-int v13, v0, v1

    .line 177
    .local v13, "childPos":I
    const/4 v2, 0x1

    iget v3, v12, Landroid/widget/ReverseExpandableListConnector$GroupMetadata;->gPos:I

    move v1, v0

    move v4, v13

    move-object v5, v12

    move v6, v11

    invoke-static/range {v1 .. v6}, Landroid/widget/ReverseExpandableListConnector$PositionMetadata;->obtain(IIIILandroid/widget/ReverseExpandableListConnector$GroupMetadata;I)Landroid/widget/ReverseExpandableListConnector$PositionMetadata;

    move-result-object v1

    return-object v1

    .line 193
    .end local v12    # "midExpGm":Landroid/widget/ReverseExpandableListConnector$GroupMetadata;
    .end local v13    # "childPos":I
    :cond_4
    const/4 v1, 0x0

    .line 196
    .local v1, "insertPosition":I
    const/4 v2, 0x0

    .line 203
    .local v2, "groupPos":I
    if-le v9, v11, :cond_5

    .line 211
    add-int/lit8 v3, v9, -0x1

    invoke-virtual {v7, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/widget/ReverseExpandableListConnector$GroupMetadata;

    .line 213
    .local v3, "leftExpGm":Landroid/widget/ReverseExpandableListConnector$GroupMetadata;
    move v1, v9

    .line 219
    iget v4, v3, Landroid/widget/ReverseExpandableListConnector$GroupMetadata;->lastChildFlPos:I

    sub-int v4, v0, v4

    iget v5, v3, Landroid/widget/ReverseExpandableListConnector$GroupMetadata;->gPos:I

    add-int/2addr v4, v5

    .line 221
    .end local v2    # "groupPos":I
    .end local v3    # "leftExpGm":Landroid/widget/ReverseExpandableListConnector$GroupMetadata;
    .local v4, "groupPos":I
    nop

    .line 244
    .end local v1    # "insertPosition":I
    .end local v4    # "groupPos":I
    .local v10, "groupPos":I
    .local v12, "insertPosition":I
    .local v13, "rightExpGroupIndex":I
    :goto_1
    move v12, v1

    move v13, v10

    move v10, v4

    goto :goto_2

    .line 221
    .end local v12    # "insertPosition":I
    .end local v13    # "rightExpGroupIndex":I
    .restart local v1    # "insertPosition":I
    .restart local v2    # "groupPos":I
    .local v10, "rightExpGroupIndex":I
    :cond_5
    if-ge v10, v11, :cond_6

    .line 228
    add-int/lit8 v10, v10, 0x1

    invoke-virtual {v7, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/widget/ReverseExpandableListConnector$GroupMetadata;

    .line 230
    .local v3, "rightExpGm":Landroid/widget/ReverseExpandableListConnector$GroupMetadata;
    move v1, v10

    .line 238
    iget v4, v3, Landroid/widget/ReverseExpandableListConnector$GroupMetadata;->gPos:I

    iget v5, v3, Landroid/widget/ReverseExpandableListConnector$GroupMetadata;->flPos:I

    sub-int/2addr v5, v0

    sub-int/2addr v4, v5

    .line 239
    .end local v2    # "groupPos":I
    .end local v3    # "rightExpGm":Landroid/widget/ReverseExpandableListConnector$GroupMetadata;
    .restart local v4    # "groupPos":I
    goto :goto_1

    .line 244
    .end local v1    # "insertPosition":I
    .end local v4    # "groupPos":I
    .local v10, "groupPos":I
    .restart local v12    # "insertPosition":I
    .restart local v13    # "rightExpGroupIndex":I
    :goto_2
    const/4 v2, 0x2

    const/4 v4, -0x1

    const/4 v5, 0x0

    move v1, v0

    move v3, v10

    move v6, v12

    invoke-static/range {v1 .. v6}, Landroid/widget/ReverseExpandableListConnector$PositionMetadata;->obtain(IIIILandroid/widget/ReverseExpandableListConnector$GroupMetadata;I)Landroid/widget/ReverseExpandableListConnector$PositionMetadata;

    move-result-object v1

    return-object v1

    .line 241
    .end local v12    # "insertPosition":I
    .end local v13    # "rightExpGroupIndex":I
    .restart local v1    # "insertPosition":I
    .restart local v2    # "groupPos":I
    .local v10, "rightExpGroupIndex":I
    :cond_6
    new-instance v3, Ljava/lang/RuntimeException;

    const-string v4, "Unknown state"

    invoke-direct {v3, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 9
    .param p1, "flatListPos"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .line 443
    invoke-virtual {p0, p1}, Landroid/widget/ReverseExpandableListConnector;->getUnflattenedPos(I)Landroid/widget/ReverseExpandableListConnector$PositionMetadata;

    move-result-object v0

    .line 446
    .local v0, "posMetadata":Landroid/widget/ReverseExpandableListConnector$PositionMetadata;
    iget-object v1, v0, Landroid/widget/ReverseExpandableListConnector$PositionMetadata;->position:Landroid/widget/ExpandableListPosition;

    iget v1, v1, Landroid/widget/ExpandableListPosition;->type:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    .line 447
    iget-object v1, p0, Landroid/widget/ReverseExpandableListConnector;->mExpandableListAdapter:Landroid/widget/ExpandableListAdapter;

    iget-object v2, v0, Landroid/widget/ReverseExpandableListConnector$PositionMetadata;->position:Landroid/widget/ExpandableListPosition;

    iget v2, v2, Landroid/widget/ExpandableListPosition;->groupPos:I

    .line 448
    invoke-virtual {v0}, Landroid/widget/ReverseExpandableListConnector$PositionMetadata;->isExpanded()Z

    move-result v3

    .line 447
    invoke-interface {v1, v2, v3, p2, p3}, Landroid/widget/ExpandableListAdapter;->getGroupView(IZLandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .local v1, "retValue":Landroid/view/View;
    goto :goto_2

    .line 449
    .end local v1    # "retValue":Landroid/view/View;
    :cond_0
    iget-object v1, v0, Landroid/widget/ReverseExpandableListConnector$PositionMetadata;->position:Landroid/widget/ExpandableListPosition;

    iget v1, v1, Landroid/widget/ExpandableListPosition;->type:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_2

    .line 450
    iget-object v1, v0, Landroid/widget/ReverseExpandableListConnector$PositionMetadata;->groupMetadata:Landroid/widget/ReverseExpandableListConnector$GroupMetadata;

    iget v1, v1, Landroid/widget/ReverseExpandableListConnector$GroupMetadata;->lastChildFlPos:I

    if-ne v1, p1, :cond_1

    :goto_0
    move v6, v2

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    goto :goto_0

    .line 452
    .local v6, "isLastChild":Z
    :goto_1
    iget-object v3, p0, Landroid/widget/ReverseExpandableListConnector;->mExpandableListAdapter:Landroid/widget/ExpandableListAdapter;

    iget-object v1, v0, Landroid/widget/ReverseExpandableListConnector$PositionMetadata;->position:Landroid/widget/ExpandableListPosition;

    iget v4, v1, Landroid/widget/ExpandableListPosition;->groupPos:I

    iget-object v1, v0, Landroid/widget/ReverseExpandableListConnector$PositionMetadata;->position:Landroid/widget/ExpandableListPosition;

    iget v5, v1, Landroid/widget/ExpandableListPosition;->childPos:I

    move-object v7, p2

    move-object v8, p3

    invoke-interface/range {v3 .. v8}, Landroid/widget/ExpandableListAdapter;->getChildView(IIZLandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 454
    .end local v6    # "isLastChild":Z
    .restart local v1    # "retValue":Landroid/view/View;
    nop

    .line 456
    :goto_2
    nop

    .line 459
    invoke-virtual {v0}, Landroid/widget/ReverseExpandableListConnector$PositionMetadata;->recycle()V

    .line 461
    return-object v1

    .line 456
    .end local v1    # "retValue":Landroid/view/View;
    :cond_2
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Flat list position is of unknown type"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public getViewTypeCount()I
    .locals 3

    .line 494
    iget-object v0, p0, Landroid/widget/ReverseExpandableListConnector;->mExpandableListAdapter:Landroid/widget/ExpandableListAdapter;

    instance-of v0, v0, Landroid/widget/HeterogeneousExpandableList;

    if-eqz v0, :cond_0

    .line 495
    iget-object v0, p0, Landroid/widget/ReverseExpandableListConnector;->mExpandableListAdapter:Landroid/widget/ExpandableListAdapter;

    check-cast v0, Landroid/widget/HeterogeneousExpandableList;

    .line 497
    .local v0, "adapter":Landroid/widget/HeterogeneousExpandableList;
    invoke-interface {v0}, Landroid/widget/HeterogeneousExpandableList;->getGroupTypeCount()I

    move-result v1

    invoke-interface {v0}, Landroid/widget/HeterogeneousExpandableList;->getChildTypeCount()I

    move-result v2

    add-int/2addr v1, v2

    return v1

    .line 499
    .end local v0    # "adapter":Landroid/widget/HeterogeneousExpandableList;
    :cond_0
    const/4 v0, 0x2

    return v0
.end method

.method public hasStableIds()Z
    .locals 1

    .line 505
    iget-object v0, p0, Landroid/widget/ReverseExpandableListConnector;->mExpandableListAdapter:Landroid/widget/ExpandableListAdapter;

    invoke-interface {v0}, Landroid/widget/ExpandableListAdapter;->hasStableIds()Z

    move-result v0

    return v0
.end method

.method public isEmpty()Z
    .locals 2

    .line 764
    invoke-virtual {p0}, Landroid/widget/ReverseExpandableListConnector;->getAdapter()Landroid/widget/ExpandableListAdapter;

    move-result-object v0

    .line 765
    .local v0, "adapter":Landroid/widget/ExpandableListAdapter;
    if-eqz v0, :cond_0

    invoke-interface {v0}, Landroid/widget/ExpandableListAdapter;->isEmpty()Z

    move-result v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x1

    :goto_0
    return v1
.end method

.method public isEnabled(I)Z
    .locals 5
    .param p1, "flatListPos"    # I

    .line 376
    invoke-virtual {p0, p1}, Landroid/widget/ReverseExpandableListConnector;->getUnflattenedPos(I)Landroid/widget/ReverseExpandableListConnector$PositionMetadata;

    move-result-object v0

    .line 377
    .local v0, "metadata":Landroid/widget/ReverseExpandableListConnector$PositionMetadata;
    iget-object v1, v0, Landroid/widget/ReverseExpandableListConnector$PositionMetadata;->position:Landroid/widget/ExpandableListPosition;

    .line 380
    .local v1, "pos":Landroid/widget/ExpandableListPosition;
    iget v2, v1, Landroid/widget/ExpandableListPosition;->type:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    .line 381
    iget-object v2, p0, Landroid/widget/ReverseExpandableListConnector;->mExpandableListAdapter:Landroid/widget/ExpandableListAdapter;

    iget v3, v1, Landroid/widget/ExpandableListPosition;->groupPos:I

    iget v4, v1, Landroid/widget/ExpandableListPosition;->childPos:I

    invoke-interface {v2, v3, v4}, Landroid/widget/ExpandableListAdapter;->isChildSelectable(II)Z

    move-result v3

    .local v3, "retValue":Z
    goto :goto_0

    .line 384
    .end local v3    # "retValue":Z
    :cond_0
    nop

    .restart local v3    # "retValue":Z
    :goto_0
    move v2, v3

    .line 387
    .end local v3    # "retValue":Z
    .local v2, "retValue":Z
    invoke-virtual {v0}, Landroid/widget/ReverseExpandableListConnector$PositionMetadata;->recycle()V

    .line 389
    return v2
.end method

.method public isGroupExpanded(I)Z
    .locals 4
    .param p1, "groupPosition"    # I

    .line 707
    iget-object v0, p0, Landroid/widget/ReverseExpandableListConnector;->mExpGroupMetadataList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_1

    .line 708
    iget-object v2, p0, Landroid/widget/ReverseExpandableListConnector;->mExpGroupMetadataList:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/widget/ReverseExpandableListConnector$GroupMetadata;

    .line 710
    .local v2, "groupMetadata":Landroid/widget/ReverseExpandableListConnector$GroupMetadata;
    iget v3, v2, Landroid/widget/ReverseExpandableListConnector$GroupMetadata;->gPos:I

    if-ne v3, p1, :cond_0

    .line 711
    return v1

    .line 707
    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 715
    .end local v0    # "i":I
    .end local v2    # "groupMetadata":Landroid/widget/ReverseExpandableListConnector$GroupMetadata;
    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public setExpandableListAdapter(Landroid/widget/ExpandableListAdapter;)V
    .locals 2
    .param p1, "expandableListAdapter"    # Landroid/widget/ExpandableListAdapter;

    .line 87
    iget-object v0, p0, Landroid/widget/ReverseExpandableListConnector;->mExpandableListAdapter:Landroid/widget/ExpandableListAdapter;

    if-eqz v0, :cond_0

    .line 88
    iget-object v0, p0, Landroid/widget/ReverseExpandableListConnector;->mExpandableListAdapter:Landroid/widget/ExpandableListAdapter;

    iget-object v1, p0, Landroid/widget/ReverseExpandableListConnector;->mDataSetObserver:Landroid/database/DataSetObserver;

    invoke-interface {v0, v1}, Landroid/widget/ExpandableListAdapter;->unregisterDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 91
    :cond_0
    iput-object p1, p0, Landroid/widget/ReverseExpandableListConnector;->mExpandableListAdapter:Landroid/widget/ExpandableListAdapter;

    .line 92
    iget-object v0, p0, Landroid/widget/ReverseExpandableListConnector;->mDataSetObserver:Landroid/database/DataSetObserver;

    invoke-interface {p1, v0}, Landroid/widget/ExpandableListAdapter;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 93
    return-void
.end method

.method setExpandedGroupMetadataList(Ljava/util/ArrayList;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Landroid/widget/ReverseExpandableListConnector$GroupMetadata;",
            ">;)V"
        }
    .end annotation

    .line 744
    .local p1, "expandedGroupMetadataList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/widget/ReverseExpandableListConnector$GroupMetadata;>;"
    if-eqz p1, :cond_3

    iget-object v0, p0, Landroid/widget/ReverseExpandableListConnector;->mExpandableListAdapter:Landroid/widget/ExpandableListAdapter;

    if-nez v0, :cond_0

    goto :goto_1

    .line 750
    :cond_0
    iget-object v0, p0, Landroid/widget/ReverseExpandableListConnector;->mExpandableListAdapter:Landroid/widget/ExpandableListAdapter;

    invoke-interface {v0}, Landroid/widget/ExpandableListAdapter;->getGroupCount()I

    move-result v0

    .line 751
    .local v0, "numGroups":I
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    .local v1, "i":I
    :goto_0
    if-ltz v1, :cond_2

    .line 752
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/widget/ReverseExpandableListConnector$GroupMetadata;

    iget v3, v3, Landroid/widget/ReverseExpandableListConnector$GroupMetadata;->gPos:I

    if-lt v3, v0, :cond_1

    .line 754
    return-void

    .line 751
    :cond_1
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 758
    .end local v1    # "i":I
    :cond_2
    iput-object p1, p0, Landroid/widget/ReverseExpandableListConnector;->mExpGroupMetadataList:Ljava/util/ArrayList;

    .line 759
    const/4 v1, 0x0

    invoke-direct {p0, v2, v1}, Landroid/widget/ReverseExpandableListConnector;->refreshExpGroupMetadataList(ZZ)V

    .line 760
    return-void

    .line 745
    .end local v0    # "numGroups":I
    :cond_3
    :goto_1
    return-void
.end method

.method public setMaxExpGroupCount(I)V
    .locals 0
    .param p1, "maxExpGroupCount"    # I

    .line 722
    iput p1, p0, Landroid/widget/ReverseExpandableListConnector;->mMaxExpGroupCount:I

    .line 723
    return-void
.end method
