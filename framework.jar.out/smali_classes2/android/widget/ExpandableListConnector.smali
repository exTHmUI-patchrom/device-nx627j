.class Landroid/widget/ExpandableListConnector;
.super Landroid/widget/BaseAdapter;
.source "ExpandableListConnector.java"

# interfaces
.implements Landroid/widget/Filterable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/widget/ExpandableListConnector$PositionMetadata;,
        Landroid/widget/ExpandableListConnector$GroupMetadata;,
        Landroid/widget/ExpandableListConnector$MyDataSetObserver;
    }
.end annotation


# instance fields
.field private final mDataSetObserver:Landroid/database/DataSetObserver;

.field private mExpGroupMetadataList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/widget/ExpandableListConnector$GroupMetadata;",
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

    iput v0, p0, Landroid/widget/ExpandableListConnector;->mMaxExpGroupCount:I

    .line 70
    new-instance v0, Landroid/widget/ExpandableListConnector$MyDataSetObserver;

    invoke-direct {v0, p0}, Landroid/widget/ExpandableListConnector$MyDataSetObserver;-><init>(Landroid/widget/ExpandableListConnector;)V

    iput-object v0, p0, Landroid/widget/ExpandableListConnector;->mDataSetObserver:Landroid/database/DataSetObserver;

    .line 76
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/widget/ExpandableListConnector;->mExpGroupMetadataList:Ljava/util/ArrayList;

    .line 78
    invoke-virtual {p0, p1}, Landroid/widget/ExpandableListConnector;->setExpandableListAdapter(Landroid/widget/ExpandableListAdapter;)V

    .line 79
    return-void
.end method

.method static synthetic access$000(Landroid/widget/ExpandableListConnector;ZZ)V
    .locals 0
    .param p0, "x0"    # Landroid/widget/ExpandableListConnector;
    .param p1, "x1"    # Z
    .param p2, "x2"    # Z

    .line 50
    invoke-direct {p0, p1, p2}, Landroid/widget/ExpandableListConnector;->refreshExpGroupMetadataList(ZZ)V

    return-void
.end method

.method private refreshExpGroupMetadataList(ZZ)V
    .locals 11
    .param p1, "forceChildrenCountRefresh"    # Z
    .param p2, "syncGroupPositions"    # Z

    .line 520
    iget-object v0, p0, Landroid/widget/ExpandableListConnector;->mExpGroupMetadataList:Ljava/util/ArrayList;

    .line 521
    .local v0, "egml":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/widget/ExpandableListConnector$GroupMetadata;>;"
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 522
    .local v1, "egmlSize":I
    const/4 v2, 0x0

    .line 525
    .local v2, "curFlPos":I
    const/4 v3, 0x0

    iput v3, p0, Landroid/widget/ExpandableListConnector;->mTotalExpChildrenCount:I

    .line 527
    const/4 v4, -0x1

    if-eqz p2, :cond_3

    .line 529
    const/4 v5, 0x0

    .line 531
    .local v5, "positionsChanged":Z
    add-int/lit8 v6, v1, -0x1

    .local v6, "i":I
    :goto_0
    if-ltz v6, :cond_2

    .line 532
    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/widget/ExpandableListConnector$GroupMetadata;

    .line 533
    .local v7, "curGm":Landroid/widget/ExpandableListConnector$GroupMetadata;
    iget-wide v8, v7, Landroid/widget/ExpandableListConnector$GroupMetadata;->gId:J

    iget v10, v7, Landroid/widget/ExpandableListConnector$GroupMetadata;->gPos:I

    invoke-virtual {p0, v8, v9, v10}, Landroid/widget/ExpandableListConnector;->findGroupPosition(JI)I

    move-result v8

    .line 534
    .local v8, "newGPos":I
    iget v9, v7, Landroid/widget/ExpandableListConnector$GroupMetadata;->gPos:I

    if-eq v8, v9, :cond_1

    .line 535
    if-ne v8, v4, :cond_0

    .line 537
    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 538
    add-int/lit8 v1, v1, -0x1

    .line 541
    :cond_0
    iput v8, v7, Landroid/widget/ExpandableListConnector$GroupMetadata;->gPos:I

    .line 542
    if-nez v5, :cond_1

    const/4 v5, 0x1

    .line 531
    .end local v7    # "curGm":Landroid/widget/ExpandableListConnector$GroupMetadata;
    .end local v8    # "newGPos":I
    :cond_1
    add-int/lit8 v6, v6, -0x1

    goto :goto_0

    .line 546
    .end local v6    # "i":I
    :cond_2
    if-eqz v5, :cond_3

    .line 548
    invoke-static {v0}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 553
    .end local v5    # "positionsChanged":Z
    :cond_3
    const/4 v5, 0x0

    .line 554
    .local v5, "lastGPos":I
    nop

    .local v3, "i":I
    :goto_1
    if-ge v3, v1, :cond_6

    .line 556
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/widget/ExpandableListConnector$GroupMetadata;

    .line 562
    .local v6, "curGm":Landroid/widget/ExpandableListConnector$GroupMetadata;
    iget v7, v6, Landroid/widget/ExpandableListConnector$GroupMetadata;->lastChildFlPos:I

    if-eq v7, v4, :cond_5

    if-eqz p1, :cond_4

    goto :goto_2

    .line 568
    :cond_4
    iget v7, v6, Landroid/widget/ExpandableListConnector$GroupMetadata;->lastChildFlPos:I

    iget v8, v6, Landroid/widget/ExpandableListConnector$GroupMetadata;->flPos:I

    sub-int/2addr v7, v8

    goto :goto_3

    .line 563
    :cond_5
    :goto_2
    iget-object v7, p0, Landroid/widget/ExpandableListConnector;->mExpandableListAdapter:Landroid/widget/ExpandableListAdapter;

    iget v8, v6, Landroid/widget/ExpandableListConnector$GroupMetadata;->gPos:I

    invoke-interface {v7, v8}, Landroid/widget/ExpandableListAdapter;->getChildrenCount(I)I

    move-result v7

    .line 568
    .local v7, "gChildrenCount":I
    :goto_3
    nop

    .line 572
    iget v8, p0, Landroid/widget/ExpandableListConnector;->mTotalExpChildrenCount:I

    add-int/2addr v8, v7

    iput v8, p0, Landroid/widget/ExpandableListConnector;->mTotalExpChildrenCount:I

    .line 579
    iget v8, v6, Landroid/widget/ExpandableListConnector$GroupMetadata;->gPos:I

    sub-int/2addr v8, v5

    add-int/2addr v2, v8

    .line 580
    iget v5, v6, Landroid/widget/ExpandableListConnector$GroupMetadata;->gPos:I

    .line 583
    iput v2, v6, Landroid/widget/ExpandableListConnector$GroupMetadata;->flPos:I

    .line 584
    add-int/2addr v2, v7

    .line 585
    iput v2, v6, Landroid/widget/ExpandableListConnector$GroupMetadata;->lastChildFlPos:I

    .line 554
    .end local v6    # "curGm":Landroid/widget/ExpandableListConnector$GroupMetadata;
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 587
    .end local v3    # "i":I
    .end local v7    # "gChildrenCount":I
    :cond_6
    return-void
.end method


# virtual methods
.method public areAllItemsEnabled()Z
    .locals 1

    .line 370
    iget-object v0, p0, Landroid/widget/ExpandableListConnector;->mExpandableListAdapter:Landroid/widget/ExpandableListAdapter;

    invoke-interface {v0}, Landroid/widget/ExpandableListAdapter;->areAllItemsEnabled()Z

    move-result v0

    return v0
.end method

.method collapseGroup(I)Z
    .locals 3
    .param p1, "groupPos"    # I

    .line 595
    const/4 v0, -0x1

    const/4 v1, 0x2

    invoke-static {v1, p1, v0, v0}, Landroid/widget/ExpandableListPosition;->obtain(IIII)Landroid/widget/ExpandableListPosition;

    move-result-object v0

    .line 597
    .local v0, "elGroupPos":Landroid/widget/ExpandableListPosition;
    invoke-virtual {p0, v0}, Landroid/widget/ExpandableListConnector;->getFlattenedPos(Landroid/widget/ExpandableListPosition;)Landroid/widget/ExpandableListConnector$PositionMetadata;

    move-result-object v1

    .line 598
    .local v1, "pm":Landroid/widget/ExpandableListConnector$PositionMetadata;
    invoke-virtual {v0}, Landroid/widget/ExpandableListPosition;->recycle()V

    .line 599
    if-nez v1, :cond_0

    const/4 v2, 0x0

    return v2

    .line 601
    :cond_0
    invoke-virtual {p0, v1}, Landroid/widget/ExpandableListConnector;->collapseGroup(Landroid/widget/ExpandableListConnector$PositionMetadata;)Z

    move-result v2

    .line 602
    .local v2, "retValue":Z
    invoke-virtual {v1}, Landroid/widget/ExpandableListConnector$PositionMetadata;->recycle()V

    .line 603
    return v2
.end method

.method collapseGroup(Landroid/widget/ExpandableListConnector$PositionMetadata;)Z
    .locals 3
    .param p1, "posMetadata"    # Landroid/widget/ExpandableListConnector$PositionMetadata;

    .line 616
    iget-object v0, p1, Landroid/widget/ExpandableListConnector$PositionMetadata;->groupMetadata:Landroid/widget/ExpandableListConnector$GroupMetadata;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 619
    :cond_0
    iget-object v0, p0, Landroid/widget/ExpandableListConnector;->mExpGroupMetadataList:Ljava/util/ArrayList;

    iget-object v2, p1, Landroid/widget/ExpandableListConnector$PositionMetadata;->groupMetadata:Landroid/widget/ExpandableListConnector$GroupMetadata;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 622
    invoke-direct {p0, v1, v1}, Landroid/widget/ExpandableListConnector;->refreshExpGroupMetadataList(ZZ)V

    .line 625
    invoke-virtual {p0}, Landroid/widget/ExpandableListConnector;->notifyDataSetChanged()V

    .line 628
    iget-object v0, p0, Landroid/widget/ExpandableListConnector;->mExpandableListAdapter:Landroid/widget/ExpandableListAdapter;

    iget-object v1, p1, Landroid/widget/ExpandableListConnector$PositionMetadata;->groupMetadata:Landroid/widget/ExpandableListConnector$GroupMetadata;

    iget v1, v1, Landroid/widget/ExpandableListConnector$GroupMetadata;->gPos:I

    invoke-interface {v0, v1}, Landroid/widget/ExpandableListAdapter;->onGroupCollapsed(I)V

    .line 630
    const/4 v0, 0x1

    return v0
.end method

.method expandGroup(I)Z
    .locals 3
    .param p1, "groupPos"    # I

    .line 638
    const/4 v0, -0x1

    const/4 v1, 0x2

    invoke-static {v1, p1, v0, v0}, Landroid/widget/ExpandableListPosition;->obtain(IIII)Landroid/widget/ExpandableListPosition;

    move-result-object v0

    .line 640
    .local v0, "elGroupPos":Landroid/widget/ExpandableListPosition;
    invoke-virtual {p0, v0}, Landroid/widget/ExpandableListConnector;->getFlattenedPos(Landroid/widget/ExpandableListPosition;)Landroid/widget/ExpandableListConnector$PositionMetadata;

    move-result-object v1

    .line 641
    .local v1, "pm":Landroid/widget/ExpandableListConnector$PositionMetadata;
    invoke-virtual {v0}, Landroid/widget/ExpandableListPosition;->recycle()V

    .line 642
    invoke-virtual {p0, v1}, Landroid/widget/ExpandableListConnector;->expandGroup(Landroid/widget/ExpandableListConnector$PositionMetadata;)Z

    move-result v2

    .line 643
    .local v2, "retValue":Z
    invoke-virtual {v1}, Landroid/widget/ExpandableListConnector$PositionMetadata;->recycle()V

    .line 644
    return v2
.end method

.method expandGroup(Landroid/widget/ExpandableListConnector$PositionMetadata;)Z
    .locals 6
    .param p1, "posMetadata"    # Landroid/widget/ExpandableListConnector$PositionMetadata;

    .line 652
    iget-object v0, p1, Landroid/widget/ExpandableListConnector$PositionMetadata;->position:Landroid/widget/ExpandableListPosition;

    iget v0, v0, Landroid/widget/ExpandableListPosition;->groupPos:I

    if-ltz v0, :cond_3

    .line 657
    iget v0, p0, Landroid/widget/ExpandableListConnector;->mMaxExpGroupCount:I

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 660
    :cond_0
    iget-object v0, p1, Landroid/widget/ExpandableListConnector$PositionMetadata;->groupMetadata:Landroid/widget/ExpandableListConnector$GroupMetadata;

    if-eqz v0, :cond_1

    return v1

    .line 663
    :cond_1
    iget-object v0, p0, Landroid/widget/ExpandableListConnector;->mExpGroupMetadataList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    iget v2, p0, Landroid/widget/ExpandableListConnector;->mMaxExpGroupCount:I

    const/4 v3, 0x1

    if-lt v0, v2, :cond_2

    .line 667
    iget-object v0, p0, Landroid/widget/ExpandableListConnector;->mExpGroupMetadataList:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ExpandableListConnector$GroupMetadata;

    .line 669
    .local v0, "collapsedGm":Landroid/widget/ExpandableListConnector$GroupMetadata;
    iget-object v2, p0, Landroid/widget/ExpandableListConnector;->mExpGroupMetadataList:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v2

    .line 671
    .local v2, "collapsedIndex":I
    iget v4, v0, Landroid/widget/ExpandableListConnector$GroupMetadata;->gPos:I

    invoke-virtual {p0, v4}, Landroid/widget/ExpandableListConnector;->collapseGroup(I)Z

    .line 674
    iget v4, p1, Landroid/widget/ExpandableListConnector$PositionMetadata;->groupInsertIndex:I

    if-le v4, v2, :cond_2

    .line 675
    iget v4, p1, Landroid/widget/ExpandableListConnector$PositionMetadata;->groupInsertIndex:I

    sub-int/2addr v4, v3

    iput v4, p1, Landroid/widget/ExpandableListConnector$PositionMetadata;->groupInsertIndex:I

    .line 679
    .end local v0    # "collapsedGm":Landroid/widget/ExpandableListConnector$GroupMetadata;
    .end local v2    # "collapsedIndex":I
    :cond_2
    iget-object v0, p1, Landroid/widget/ExpandableListConnector$PositionMetadata;->position:Landroid/widget/ExpandableListPosition;

    iget v0, v0, Landroid/widget/ExpandableListPosition;->groupPos:I

    iget-object v2, p0, Landroid/widget/ExpandableListConnector;->mExpandableListAdapter:Landroid/widget/ExpandableListAdapter;

    iget-object v4, p1, Landroid/widget/ExpandableListConnector$PositionMetadata;->position:Landroid/widget/ExpandableListPosition;

    iget v4, v4, Landroid/widget/ExpandableListPosition;->groupPos:I

    .line 683
    invoke-interface {v2, v4}, Landroid/widget/ExpandableListAdapter;->getGroupId(I)J

    move-result-wide v4

    .line 679
    const/4 v2, -0x1

    invoke-static {v2, v2, v0, v4, v5}, Landroid/widget/ExpandableListConnector$GroupMetadata;->obtain(IIIJ)Landroid/widget/ExpandableListConnector$GroupMetadata;

    move-result-object v0

    .line 685
    .local v0, "expandedGm":Landroid/widget/ExpandableListConnector$GroupMetadata;
    iget-object v2, p0, Landroid/widget/ExpandableListConnector;->mExpGroupMetadataList:Ljava/util/ArrayList;

    iget v4, p1, Landroid/widget/ExpandableListConnector$PositionMetadata;->groupInsertIndex:I

    invoke-virtual {v2, v4, v0}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 688
    invoke-direct {p0, v1, v1}, Landroid/widget/ExpandableListConnector;->refreshExpGroupMetadataList(ZZ)V

    .line 691
    invoke-virtual {p0}, Landroid/widget/ExpandableListConnector;->notifyDataSetChanged()V

    .line 694
    iget-object v1, p0, Landroid/widget/ExpandableListConnector;->mExpandableListAdapter:Landroid/widget/ExpandableListAdapter;

    iget v2, v0, Landroid/widget/ExpandableListConnector$GroupMetadata;->gPos:I

    invoke-interface {v1, v2}, Landroid/widget/ExpandableListAdapter;->onGroupExpanded(I)V

    .line 696
    return v3

    .line 654
    .end local v0    # "expandedGm":Landroid/widget/ExpandableListConnector$GroupMetadata;
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

    .line 779
    move-object v0, p0

    iget-object v1, v0, Landroid/widget/ExpandableListConnector;->mExpandableListAdapter:Landroid/widget/ExpandableListAdapter;

    invoke-interface {v1}, Landroid/widget/ExpandableListAdapter;->getGroupCount()I

    move-result v1

    .line 781
    .local v1, "count":I
    const/4 v2, -0x1

    if-nez v1, :cond_0

    .line 782
    return v2

    .line 786
    :cond_0
    const-wide/high16 v3, -0x8000000000000000L

    cmp-long v3, p1, v3

    if-nez v3, :cond_1

    .line 787
    return v2

    .line 791
    :cond_1
    const/4 v3, 0x0

    move/from16 v4, p3

    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v4

    .line 792
    .end local p3    # "seedGroupPosition":I
    .local v4, "seedGroupPosition":I
    add-int/lit8 v5, v1, -0x1

    invoke-static {v5, v4}, Ljava/lang/Math;->min(II)I

    move-result v4

    .line 794
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v5

    const-wide/16 v7, 0x64

    add-long/2addr v5, v7

    .line 799
    .local v5, "endTime":J
    move v7, v4

    .line 802
    .local v7, "first":I
    move v8, v4

    .line 805
    .local v8, "last":I
    const/4 v9, 0x0

    .line 815
    .local v9, "next":Z
    invoke-virtual {v0}, Landroid/widget/ExpandableListConnector;->getAdapter()Landroid/widget/ExpandableListAdapter;

    move-result-object v10

    .line 816
    .local v10, "adapter":Landroid/widget/ExpandableListAdapter;
    if-nez v10, :cond_2

    .line 817
    return v2

    .line 820
    :cond_2
    :goto_0
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v11

    cmp-long v11, v11, v5

    if-gtz v11, :cond_a

    .line 821
    invoke-interface {v10, v4}, Landroid/widget/ExpandableListAdapter;->getGroupId(I)J

    move-result-wide v11

    .line 822
    .local v11, "rowId":J
    cmp-long v13, v11, p1

    if-nez v13, :cond_3

    .line 824
    return v4

    .line 827
    :cond_3
    add-int/lit8 v13, v1, -0x1

    const/4 v14, 0x1

    if-ne v8, v13, :cond_4

    move v13, v14

    goto :goto_1

    :cond_4
    move v13, v3

    .line 828
    .local v13, "hitLast":Z
    :goto_1
    if-nez v7, :cond_5

    goto :goto_2

    :cond_5
    move v14, v3

    .line 830
    .local v14, "hitFirst":Z
    :goto_2
    if-eqz v13, :cond_6

    if-eqz v14, :cond_6

    .line 832
    goto :goto_4

    .line 835
    :cond_6
    if-nez v14, :cond_9

    if-eqz v9, :cond_7

    if-nez v13, :cond_7

    goto :goto_3

    .line 841
    :cond_7
    if-nez v13, :cond_8

    if-nez v9, :cond_2

    if-nez v14, :cond_2

    .line 843
    :cond_8
    add-int/lit8 v7, v7, -0x1

    .line 844
    move v4, v7

    .line 846
    const/4 v9, 0x1

    goto :goto_0

    .line 837
    :cond_9
    :goto_3
    add-int/lit8 v8, v8, 0x1

    .line 838
    move v4, v8

    .line 840
    const/4 v9, 0x0

    goto :goto_0

    .line 851
    .end local v11    # "rowId":J
    .end local v13    # "hitLast":Z
    .end local v14    # "hitFirst":Z
    :cond_a
    :goto_4
    return v2
.end method

.method getAdapter()Landroid/widget/ExpandableListAdapter;
    .locals 1

    .line 725
    iget-object v0, p0, Landroid/widget/ExpandableListConnector;->mExpandableListAdapter:Landroid/widget/ExpandableListAdapter;

    return-object v0
.end method

.method public getCount()I
    .locals 2

    .line 397
    iget-object v0, p0, Landroid/widget/ExpandableListConnector;->mExpandableListAdapter:Landroid/widget/ExpandableListAdapter;

    invoke-interface {v0}, Landroid/widget/ExpandableListAdapter;->getGroupCount()I

    move-result v0

    iget v1, p0, Landroid/widget/ExpandableListConnector;->mTotalExpChildrenCount:I

    add-int/2addr v0, v1

    return v0
.end method

.method getExpandedGroupMetadataList()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Landroid/widget/ExpandableListConnector$GroupMetadata;",
            ">;"
        }
    .end annotation

    .line 738
    iget-object v0, p0, Landroid/widget/ExpandableListConnector;->mExpGroupMetadataList:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getFilter()Landroid/widget/Filter;
    .locals 2

    .line 729
    invoke-virtual {p0}, Landroid/widget/ExpandableListConnector;->getAdapter()Landroid/widget/ExpandableListAdapter;

    move-result-object v0

    .line 730
    .local v0, "adapter":Landroid/widget/ExpandableListAdapter;
    instance-of v1, v0, Landroid/widget/Filterable;

    if-eqz v1, :cond_0

    .line 731
    move-object v1, v0

    check-cast v1, Landroid/widget/Filterable;

    invoke-interface {v1}, Landroid/widget/Filterable;->getFilter()Landroid/widget/Filter;

    move-result-object v1

    return-object v1

    .line 733
    :cond_0
    const/4 v1, 0x0

    return-object v1
.end method

.method getFlattenedPos(Landroid/widget/ExpandableListPosition;)Landroid/widget/ExpandableListConnector$PositionMetadata;
    .locals 21
    .param p1, "pos"    # Landroid/widget/ExpandableListPosition;

    .line 259
    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iget-object v2, v1, Landroid/widget/ExpandableListConnector;->mExpGroupMetadataList:Ljava/util/ArrayList;

    .line 260
    .local v2, "egml":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/widget/ExpandableListConnector$GroupMetadata;>;"
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 263
    .local v3, "numExpGroups":I
    const/4 v4, 0x0

    .line 264
    .local v4, "leftExpGroupIndex":I
    add-int/lit8 v5, v3, -0x1

    .line 265
    .local v5, "rightExpGroupIndex":I
    const/4 v6, 0x0

    .line 268
    .local v6, "midExpGroupIndex":I
    if-nez v3, :cond_0

    .line 274
    iget v7, v0, Landroid/widget/ExpandableListPosition;->groupPos:I

    iget v8, v0, Landroid/widget/ExpandableListPosition;->type:I

    iget v9, v0, Landroid/widget/ExpandableListPosition;->groupPos:I

    iget v10, v0, Landroid/widget/ExpandableListPosition;->childPos:I

    const/4 v11, 0x0

    const/4 v12, 0x0

    invoke-static/range {v7 .. v12}, Landroid/widget/ExpandableListConnector$PositionMetadata;->obtain(IIIILandroid/widget/ExpandableListConnector$GroupMetadata;I)Landroid/widget/ExpandableListConnector$PositionMetadata;

    move-result-object v7

    return-object v7

    .line 283
    :cond_0
    :goto_0
    const/4 v7, 0x0

    const/4 v8, 0x2

    const/4 v9, 0x1

    if-gt v4, v5, :cond_5

    .line 284
    sub-int v10, v5, v4

    div-int/2addr v10, v8

    add-int v6, v10, v4

    .line 285
    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/widget/ExpandableListConnector$GroupMetadata;

    .line 287
    .local v10, "midExpGm":Landroid/widget/ExpandableListConnector$GroupMetadata;
    iget v11, v0, Landroid/widget/ExpandableListPosition;->groupPos:I

    iget v12, v10, Landroid/widget/ExpandableListConnector$GroupMetadata;->gPos:I

    if-le v11, v12, :cond_1

    .line 291
    add-int/lit8 v4, v6, 0x1

    goto :goto_0

    .line 292
    :cond_1
    iget v11, v0, Landroid/widget/ExpandableListPosition;->groupPos:I

    iget v12, v10, Landroid/widget/ExpandableListConnector$GroupMetadata;->gPos:I

    if-ge v11, v12, :cond_2

    .line 296
    add-int/lit8 v5, v6, -0x1

    goto :goto_0

    .line 297
    :cond_2
    iget v11, v0, Landroid/widget/ExpandableListPosition;->groupPos:I

    iget v12, v10, Landroid/widget/ExpandableListConnector$GroupMetadata;->gPos:I

    if-ne v11, v12, :cond_0

    .line 302
    iget v11, v0, Landroid/widget/ExpandableListPosition;->type:I

    if-ne v11, v8, :cond_3

    .line 304
    iget v11, v10, Landroid/widget/ExpandableListConnector$GroupMetadata;->flPos:I

    iget v12, v0, Landroid/widget/ExpandableListPosition;->type:I

    iget v13, v0, Landroid/widget/ExpandableListPosition;->groupPos:I

    iget v14, v0, Landroid/widget/ExpandableListPosition;->childPos:I

    move-object v15, v10

    move/from16 v16, v6

    invoke-static/range {v11 .. v16}, Landroid/widget/ExpandableListConnector$PositionMetadata;->obtain(IIIILandroid/widget/ExpandableListConnector$GroupMetadata;I)Landroid/widget/ExpandableListConnector$PositionMetadata;

    move-result-object v7

    return-object v7

    .line 306
    :cond_3
    iget v8, v0, Landroid/widget/ExpandableListPosition;->type:I

    if-ne v8, v9, :cond_4

    .line 308
    iget v7, v10, Landroid/widget/ExpandableListConnector$GroupMetadata;->flPos:I

    iget v8, v0, Landroid/widget/ExpandableListPosition;->childPos:I

    add-int/2addr v7, v8

    add-int/lit8 v11, v7, 0x1

    iget v12, v0, Landroid/widget/ExpandableListPosition;->type:I

    iget v13, v0, Landroid/widget/ExpandableListPosition;->groupPos:I

    iget v14, v0, Landroid/widget/ExpandableListPosition;->childPos:I

    move-object v15, v10

    move/from16 v16, v6

    invoke-static/range {v11 .. v16}, Landroid/widget/ExpandableListConnector$PositionMetadata;->obtain(IIIILandroid/widget/ExpandableListConnector$GroupMetadata;I)Landroid/widget/ExpandableListConnector$PositionMetadata;

    move-result-object v7

    return-object v7

    .line 312
    :cond_4
    return-object v7

    .line 321
    .end local v10    # "midExpGm":Landroid/widget/ExpandableListConnector$GroupMetadata;
    :cond_5
    iget v10, v0, Landroid/widget/ExpandableListPosition;->type:I

    if-eq v10, v8, :cond_6

    .line 323
    return-object v7

    .line 331
    :cond_6
    if-le v4, v6, :cond_7

    .line 342
    add-int/lit8 v7, v4, -0x1

    invoke-virtual {v2, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/widget/ExpandableListConnector$GroupMetadata;

    .line 343
    .local v7, "leftExpGm":Landroid/widget/ExpandableListConnector$GroupMetadata;
    iget v8, v7, Landroid/widget/ExpandableListConnector$GroupMetadata;->lastChildFlPos:I

    iget v9, v0, Landroid/widget/ExpandableListPosition;->groupPos:I

    iget v10, v7, Landroid/widget/ExpandableListConnector$GroupMetadata;->gPos:I

    sub-int/2addr v9, v10

    add-int v14, v8, v9

    .line 347
    .local v14, "flPos":I
    iget v9, v0, Landroid/widget/ExpandableListPosition;->type:I

    iget v10, v0, Landroid/widget/ExpandableListPosition;->groupPos:I

    iget v11, v0, Landroid/widget/ExpandableListPosition;->childPos:I

    const/4 v12, 0x0

    move v8, v14

    move v13, v4

    invoke-static/range {v8 .. v13}, Landroid/widget/ExpandableListConnector$PositionMetadata;->obtain(IIIILandroid/widget/ExpandableListConnector$GroupMetadata;I)Landroid/widget/ExpandableListConnector$PositionMetadata;

    move-result-object v8

    return-object v8

    .line 349
    .end local v7    # "leftExpGm":Landroid/widget/ExpandableListConnector$GroupMetadata;
    .end local v14    # "flPos":I
    :cond_7
    if-ge v5, v6, :cond_8

    .line 357
    add-int/2addr v5, v9

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/widget/ExpandableListConnector$GroupMetadata;

    .line 358
    .local v7, "rightExpGm":Landroid/widget/ExpandableListConnector$GroupMetadata;
    iget v8, v7, Landroid/widget/ExpandableListConnector$GroupMetadata;->flPos:I

    iget v9, v7, Landroid/widget/ExpandableListConnector$GroupMetadata;->gPos:I

    iget v10, v0, Landroid/widget/ExpandableListPosition;->groupPos:I

    sub-int/2addr v9, v10

    sub-int/2addr v8, v9

    .line 361
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

    invoke-static/range {v15 .. v20}, Landroid/widget/ExpandableListConnector$PositionMetadata;->obtain(IIIILandroid/widget/ExpandableListConnector$GroupMetadata;I)Landroid/widget/ExpandableListConnector$PositionMetadata;

    move-result-object v9

    return-object v9

    .line 364
    .end local v7    # "rightExpGm":Landroid/widget/ExpandableListConnector$GroupMetadata;
    .end local v8    # "flPos":I
    :cond_8
    return-object v7
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 4
    .param p1, "flatListPos"    # I

    .line 401
    invoke-virtual {p0, p1}, Landroid/widget/ExpandableListConnector;->getUnflattenedPos(I)Landroid/widget/ExpandableListConnector$PositionMetadata;

    move-result-object v0

    .line 404
    .local v0, "posMetadata":Landroid/widget/ExpandableListConnector$PositionMetadata;
    iget-object v1, v0, Landroid/widget/ExpandableListConnector$PositionMetadata;->position:Landroid/widget/ExpandableListPosition;

    iget v1, v1, Landroid/widget/ExpandableListPosition;->type:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    .line 405
    iget-object v1, p0, Landroid/widget/ExpandableListConnector;->mExpandableListAdapter:Landroid/widget/ExpandableListAdapter;

    iget-object v2, v0, Landroid/widget/ExpandableListConnector$PositionMetadata;->position:Landroid/widget/ExpandableListPosition;

    iget v2, v2, Landroid/widget/ExpandableListPosition;->groupPos:I

    .line 406
    invoke-interface {v1, v2}, Landroid/widget/ExpandableListAdapter;->getGroup(I)Ljava/lang/Object;

    move-result-object v1

    .local v1, "retValue":Ljava/lang/Object;
    :goto_0
    goto :goto_1

    .line 407
    .end local v1    # "retValue":Ljava/lang/Object;
    :cond_0
    iget-object v1, v0, Landroid/widget/ExpandableListConnector$PositionMetadata;->position:Landroid/widget/ExpandableListPosition;

    iget v1, v1, Landroid/widget/ExpandableListPosition;->type:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    .line 408
    iget-object v1, p0, Landroid/widget/ExpandableListConnector;->mExpandableListAdapter:Landroid/widget/ExpandableListAdapter;

    iget-object v2, v0, Landroid/widget/ExpandableListConnector$PositionMetadata;->position:Landroid/widget/ExpandableListPosition;

    iget v2, v2, Landroid/widget/ExpandableListPosition;->groupPos:I

    iget-object v3, v0, Landroid/widget/ExpandableListConnector$PositionMetadata;->position:Landroid/widget/ExpandableListPosition;

    iget v3, v3, Landroid/widget/ExpandableListPosition;->childPos:I

    invoke-interface {v1, v2, v3}, Landroid/widget/ExpandableListAdapter;->getChild(II)Ljava/lang/Object;

    move-result-object v1

    goto :goto_0

    .line 412
    .restart local v1    # "retValue":Ljava/lang/Object;
    :goto_1
    nop

    .line 415
    invoke-virtual {v0}, Landroid/widget/ExpandableListConnector$PositionMetadata;->recycle()V

    .line 417
    return-object v1

    .line 412
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

    .line 421
    invoke-virtual {p0, p1}, Landroid/widget/ExpandableListConnector;->getUnflattenedPos(I)Landroid/widget/ExpandableListConnector$PositionMetadata;

    move-result-object v0

    .line 422
    .local v0, "posMetadata":Landroid/widget/ExpandableListConnector$PositionMetadata;
    iget-object v1, p0, Landroid/widget/ExpandableListConnector;->mExpandableListAdapter:Landroid/widget/ExpandableListAdapter;

    iget-object v2, v0, Landroid/widget/ExpandableListConnector$PositionMetadata;->position:Landroid/widget/ExpandableListPosition;

    iget v2, v2, Landroid/widget/ExpandableListPosition;->groupPos:I

    invoke-interface {v1, v2}, Landroid/widget/ExpandableListAdapter;->getGroupId(I)J

    move-result-wide v1

    .line 425
    .local v1, "groupId":J
    iget-object v3, v0, Landroid/widget/ExpandableListConnector$PositionMetadata;->position:Landroid/widget/ExpandableListPosition;

    iget v3, v3, Landroid/widget/ExpandableListPosition;->type:I

    const/4 v4, 0x2

    if-ne v3, v4, :cond_0

    .line 426
    iget-object v3, p0, Landroid/widget/ExpandableListConnector;->mExpandableListAdapter:Landroid/widget/ExpandableListAdapter;

    invoke-interface {v3, v1, v2}, Landroid/widget/ExpandableListAdapter;->getCombinedGroupId(J)J

    move-result-wide v3

    .local v3, "retValue":J
    goto :goto_0

    .line 427
    .end local v3    # "retValue":J
    :cond_0
    iget-object v3, v0, Landroid/widget/ExpandableListConnector$PositionMetadata;->position:Landroid/widget/ExpandableListPosition;

    iget v3, v3, Landroid/widget/ExpandableListPosition;->type:I

    const/4 v4, 0x1

    if-ne v3, v4, :cond_1

    .line 428
    iget-object v3, p0, Landroid/widget/ExpandableListConnector;->mExpandableListAdapter:Landroid/widget/ExpandableListAdapter;

    iget-object v4, v0, Landroid/widget/ExpandableListConnector$PositionMetadata;->position:Landroid/widget/ExpandableListPosition;

    iget v4, v4, Landroid/widget/ExpandableListPosition;->groupPos:I

    iget-object v5, v0, Landroid/widget/ExpandableListConnector$PositionMetadata;->position:Landroid/widget/ExpandableListPosition;

    iget v5, v5, Landroid/widget/ExpandableListPosition;->childPos:I

    invoke-interface {v3, v4, v5}, Landroid/widget/ExpandableListAdapter;->getChildId(II)J

    move-result-wide v3

    .line 430
    .local v3, "childId":J
    iget-object v5, p0, Landroid/widget/ExpandableListConnector;->mExpandableListAdapter:Landroid/widget/ExpandableListAdapter;

    invoke-interface {v5, v1, v2, v3, v4}, Landroid/widget/ExpandableListAdapter;->getCombinedChildId(JJ)J

    move-result-wide v3

    .line 431
    .local v3, "retValue":J
    nop

    .line 433
    :goto_0
    nop

    .line 436
    invoke-virtual {v0}, Landroid/widget/ExpandableListConnector$PositionMetadata;->recycle()V

    .line 438
    return-wide v3

    .line 433
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

    .line 465
    invoke-virtual {p0, p1}, Landroid/widget/ExpandableListConnector;->getUnflattenedPos(I)Landroid/widget/ExpandableListConnector$PositionMetadata;

    move-result-object v0

    .line 466
    .local v0, "metadata":Landroid/widget/ExpandableListConnector$PositionMetadata;
    iget-object v1, v0, Landroid/widget/ExpandableListConnector$PositionMetadata;->position:Landroid/widget/ExpandableListPosition;

    .line 469
    .local v1, "pos":Landroid/widget/ExpandableListPosition;
    iget-object v2, p0, Landroid/widget/ExpandableListConnector;->mExpandableListAdapter:Landroid/widget/ExpandableListAdapter;

    instance-of v2, v2, Landroid/widget/HeterogeneousExpandableList;

    const/4 v3, 0x2

    if-eqz v2, :cond_1

    .line 470
    iget-object v2, p0, Landroid/widget/ExpandableListConnector;->mExpandableListAdapter:Landroid/widget/ExpandableListAdapter;

    check-cast v2, Landroid/widget/HeterogeneousExpandableList;

    .line 472
    .local v2, "adapter":Landroid/widget/HeterogeneousExpandableList;
    iget v4, v1, Landroid/widget/ExpandableListPosition;->type:I

    if-ne v4, v3, :cond_0

    .line 473
    iget v3, v1, Landroid/widget/ExpandableListPosition;->groupPos:I

    invoke-interface {v2, v3}, Landroid/widget/HeterogeneousExpandableList;->getGroupType(I)I

    move-result v3

    .local v3, "retValue":I
    goto :goto_0

    .line 475
    .end local v3    # "retValue":I
    :cond_0
    iget v3, v1, Landroid/widget/ExpandableListPosition;->groupPos:I

    iget v4, v1, Landroid/widget/ExpandableListPosition;->childPos:I

    invoke-interface {v2, v3, v4}, Landroid/widget/HeterogeneousExpandableList;->getChildType(II)I

    move-result v3

    .line 476
    .local v3, "childType":I
    invoke-interface {v2}, Landroid/widget/HeterogeneousExpandableList;->getGroupTypeCount()I

    move-result v4

    add-int/2addr v3, v4

    .end local v2    # "adapter":Landroid/widget/HeterogeneousExpandableList;
    .local v3, "retValue":I
    :goto_0
    move v2, v3

    .line 478
    .end local v3    # "retValue":I
    .local v2, "retValue":I
    goto :goto_1

    .line 479
    .end local v2    # "retValue":I
    :cond_1
    iget v2, v1, Landroid/widget/ExpandableListPosition;->type:I

    if-ne v2, v3, :cond_2

    .line 480
    const/4 v2, 0x0

    .restart local v2    # "retValue":I
    goto :goto_1

    .line 482
    .end local v2    # "retValue":I
    :cond_2
    const/4 v2, 0x1

    .line 486
    .restart local v2    # "retValue":I
    :goto_1
    invoke-virtual {v0}, Landroid/widget/ExpandableListConnector$PositionMetadata;->recycle()V

    .line 488
    return v2
.end method

.method getUnflattenedPos(I)Landroid/widget/ExpandableListConnector$PositionMetadata;
    .locals 15
    .param p1, "flPos"    # I

    .line 109
    move/from16 v6, p1

    move-object v7, p0

    iget-object v8, v7, Landroid/widget/ExpandableListConnector;->mExpGroupMetadataList:Ljava/util/ArrayList;

    .line 110
    .local v8, "egml":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/widget/ExpandableListConnector$GroupMetadata;>;"
    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v9

    .line 113
    .local v9, "numExpGroups":I
    const/4 v10, 0x0

    .line 114
    .local v10, "leftExpGroupIndex":I
    add-int/lit8 v11, v9, -0x1

    .line 115
    .local v11, "rightExpGroupIndex":I
    const/4 v12, 0x0

    .line 118
    .local v12, "midExpGroupIndex":I
    if-nez v9, :cond_0

    .line 124
    const/4 v1, 0x2

    const/4 v3, -0x1

    const/4 v4, 0x0

    const/4 v5, 0x0

    move v0, v6

    move v2, v6

    invoke-static/range {v0 .. v5}, Landroid/widget/ExpandableListConnector$PositionMetadata;->obtain(IIIILandroid/widget/ExpandableListConnector$GroupMetadata;I)Landroid/widget/ExpandableListConnector$PositionMetadata;

    move-result-object v0

    return-object v0

    .line 140
    :cond_0
    :goto_0
    if-gt v10, v11, :cond_4

    .line 141
    sub-int v0, v11, v10

    div-int/lit8 v0, v0, 0x2

    add-int v12, v0, v10

    .line 144
    invoke-virtual {v8, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v13, v0

    check-cast v13, Landroid/widget/ExpandableListConnector$GroupMetadata;

    .line 146
    .local v13, "midExpGm":Landroid/widget/ExpandableListConnector$GroupMetadata;
    iget v0, v13, Landroid/widget/ExpandableListConnector$GroupMetadata;->lastChildFlPos:I

    if-le v6, v0, :cond_1

    .line 151
    add-int/lit8 v10, v12, 0x1

    goto :goto_0

    .line 152
    :cond_1
    iget v0, v13, Landroid/widget/ExpandableListConnector$GroupMetadata;->flPos:I

    if-ge v6, v0, :cond_2

    .line 157
    add-int/lit8 v11, v12, -0x1

    goto :goto_0

    .line 158
    :cond_2
    iget v0, v13, Landroid/widget/ExpandableListConnector$GroupMetadata;->flPos:I

    if-ne v6, v0, :cond_3

    .line 163
    const/4 v1, 0x2

    iget v2, v13, Landroid/widget/ExpandableListConnector$GroupMetadata;->gPos:I

    const/4 v3, -0x1

    move v0, v6

    move-object v4, v13

    move v5, v12

    invoke-static/range {v0 .. v5}, Landroid/widget/ExpandableListConnector$PositionMetadata;->obtain(IIIILandroid/widget/ExpandableListConnector$GroupMetadata;I)Landroid/widget/ExpandableListConnector$PositionMetadata;

    move-result-object v0

    return-object v0

    .line 165
    :cond_3
    iget v0, v13, Landroid/widget/ExpandableListConnector$GroupMetadata;->lastChildFlPos:I

    if-gt v6, v0, :cond_0

    .line 175
    iget v0, v13, Landroid/widget/ExpandableListConnector$GroupMetadata;->flPos:I

    add-int/lit8 v0, v0, 0x1

    sub-int v14, v6, v0

    .line 176
    .local v14, "childPos":I
    const/4 v1, 0x1

    iget v2, v13, Landroid/widget/ExpandableListConnector$GroupMetadata;->gPos:I

    move v0, v6

    move v3, v14

    move-object v4, v13

    move v5, v12

    invoke-static/range {v0 .. v5}, Landroid/widget/ExpandableListConnector$PositionMetadata;->obtain(IIIILandroid/widget/ExpandableListConnector$GroupMetadata;I)Landroid/widget/ExpandableListConnector$PositionMetadata;

    move-result-object v0

    return-object v0

    .line 192
    .end local v13    # "midExpGm":Landroid/widget/ExpandableListConnector$GroupMetadata;
    .end local v14    # "childPos":I
    :cond_4
    const/4 v0, 0x0

    .line 195
    .local v0, "insertPosition":I
    const/4 v1, 0x0

    .line 202
    .local v1, "groupPos":I
    if-le v10, v12, :cond_5

    .line 210
    add-int/lit8 v2, v10, -0x1

    invoke-virtual {v8, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/widget/ExpandableListConnector$GroupMetadata;

    .line 212
    .local v2, "leftExpGm":Landroid/widget/ExpandableListConnector$GroupMetadata;
    move v0, v10

    .line 218
    iget v3, v2, Landroid/widget/ExpandableListConnector$GroupMetadata;->lastChildFlPos:I

    sub-int v3, v6, v3

    iget v4, v2, Landroid/widget/ExpandableListConnector$GroupMetadata;->gPos:I

    add-int/2addr v3, v4

    .line 220
    .end local v1    # "groupPos":I
    .end local v2    # "leftExpGm":Landroid/widget/ExpandableListConnector$GroupMetadata;
    .local v3, "groupPos":I
    nop

    .line 243
    .end local v0    # "insertPosition":I
    .end local v3    # "groupPos":I
    .local v11, "groupPos":I
    .local v13, "insertPosition":I
    .local v14, "rightExpGroupIndex":I
    :goto_1
    move v13, v0

    move v14, v11

    move v11, v3

    goto :goto_2

    .line 220
    .end local v13    # "insertPosition":I
    .end local v14    # "rightExpGroupIndex":I
    .restart local v0    # "insertPosition":I
    .restart local v1    # "groupPos":I
    .local v11, "rightExpGroupIndex":I
    :cond_5
    if-ge v11, v12, :cond_6

    .line 227
    add-int/lit8 v11, v11, 0x1

    invoke-virtual {v8, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/widget/ExpandableListConnector$GroupMetadata;

    .line 229
    .local v2, "rightExpGm":Landroid/widget/ExpandableListConnector$GroupMetadata;
    move v0, v11

    .line 237
    iget v3, v2, Landroid/widget/ExpandableListConnector$GroupMetadata;->gPos:I

    iget v4, v2, Landroid/widget/ExpandableListConnector$GroupMetadata;->flPos:I

    sub-int/2addr v4, v6

    sub-int/2addr v3, v4

    .line 238
    .end local v1    # "groupPos":I
    .end local v2    # "rightExpGm":Landroid/widget/ExpandableListConnector$GroupMetadata;
    .restart local v3    # "groupPos":I
    goto :goto_1

    .line 243
    .end local v0    # "insertPosition":I
    .end local v3    # "groupPos":I
    .local v11, "groupPos":I
    .restart local v13    # "insertPosition":I
    .restart local v14    # "rightExpGroupIndex":I
    :goto_2
    const/4 v1, 0x2

    const/4 v3, -0x1

    const/4 v4, 0x0

    move v0, v6

    move v2, v11

    move v5, v13

    invoke-static/range {v0 .. v5}, Landroid/widget/ExpandableListConnector$PositionMetadata;->obtain(IIIILandroid/widget/ExpandableListConnector$GroupMetadata;I)Landroid/widget/ExpandableListConnector$PositionMetadata;

    move-result-object v0

    return-object v0

    .line 240
    .end local v13    # "insertPosition":I
    .end local v14    # "rightExpGroupIndex":I
    .restart local v0    # "insertPosition":I
    .restart local v1    # "groupPos":I
    .local v11, "rightExpGroupIndex":I
    :cond_6
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "Unknown state"

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 9
    .param p1, "flatListPos"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .line 442
    invoke-virtual {p0, p1}, Landroid/widget/ExpandableListConnector;->getUnflattenedPos(I)Landroid/widget/ExpandableListConnector$PositionMetadata;

    move-result-object v0

    .line 445
    .local v0, "posMetadata":Landroid/widget/ExpandableListConnector$PositionMetadata;
    iget-object v1, v0, Landroid/widget/ExpandableListConnector$PositionMetadata;->position:Landroid/widget/ExpandableListPosition;

    iget v1, v1, Landroid/widget/ExpandableListPosition;->type:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    .line 446
    iget-object v1, p0, Landroid/widget/ExpandableListConnector;->mExpandableListAdapter:Landroid/widget/ExpandableListAdapter;

    iget-object v2, v0, Landroid/widget/ExpandableListConnector$PositionMetadata;->position:Landroid/widget/ExpandableListPosition;

    iget v2, v2, Landroid/widget/ExpandableListPosition;->groupPos:I

    .line 447
    invoke-virtual {v0}, Landroid/widget/ExpandableListConnector$PositionMetadata;->isExpanded()Z

    move-result v3

    .line 446
    invoke-interface {v1, v2, v3, p2, p3}, Landroid/widget/ExpandableListAdapter;->getGroupView(IZLandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .local v1, "retValue":Landroid/view/View;
    goto :goto_2

    .line 448
    .end local v1    # "retValue":Landroid/view/View;
    :cond_0
    iget-object v1, v0, Landroid/widget/ExpandableListConnector$PositionMetadata;->position:Landroid/widget/ExpandableListPosition;

    iget v1, v1, Landroid/widget/ExpandableListPosition;->type:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_2

    .line 449
    iget-object v1, v0, Landroid/widget/ExpandableListConnector$PositionMetadata;->groupMetadata:Landroid/widget/ExpandableListConnector$GroupMetadata;

    iget v1, v1, Landroid/widget/ExpandableListConnector$GroupMetadata;->lastChildFlPos:I

    if-ne v1, p1, :cond_1

    :goto_0
    move v6, v2

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    goto :goto_0

    .line 451
    .local v6, "isLastChild":Z
    :goto_1
    iget-object v3, p0, Landroid/widget/ExpandableListConnector;->mExpandableListAdapter:Landroid/widget/ExpandableListAdapter;

    iget-object v1, v0, Landroid/widget/ExpandableListConnector$PositionMetadata;->position:Landroid/widget/ExpandableListPosition;

    iget v4, v1, Landroid/widget/ExpandableListPosition;->groupPos:I

    iget-object v1, v0, Landroid/widget/ExpandableListConnector$PositionMetadata;->position:Landroid/widget/ExpandableListPosition;

    iget v5, v1, Landroid/widget/ExpandableListPosition;->childPos:I

    move-object v7, p2

    move-object v8, p3

    invoke-interface/range {v3 .. v8}, Landroid/widget/ExpandableListAdapter;->getChildView(IIZLandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 453
    .end local v6    # "isLastChild":Z
    .restart local v1    # "retValue":Landroid/view/View;
    nop

    .line 455
    :goto_2
    nop

    .line 458
    invoke-virtual {v0}, Landroid/widget/ExpandableListConnector$PositionMetadata;->recycle()V

    .line 460
    return-object v1

    .line 455
    .end local v1    # "retValue":Landroid/view/View;
    :cond_2
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Flat list position is of unknown type"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public getViewTypeCount()I
    .locals 3

    .line 493
    iget-object v0, p0, Landroid/widget/ExpandableListConnector;->mExpandableListAdapter:Landroid/widget/ExpandableListAdapter;

    instance-of v0, v0, Landroid/widget/HeterogeneousExpandableList;

    if-eqz v0, :cond_0

    .line 494
    iget-object v0, p0, Landroid/widget/ExpandableListConnector;->mExpandableListAdapter:Landroid/widget/ExpandableListAdapter;

    check-cast v0, Landroid/widget/HeterogeneousExpandableList;

    .line 496
    .local v0, "adapter":Landroid/widget/HeterogeneousExpandableList;
    invoke-interface {v0}, Landroid/widget/HeterogeneousExpandableList;->getGroupTypeCount()I

    move-result v1

    invoke-interface {v0}, Landroid/widget/HeterogeneousExpandableList;->getChildTypeCount()I

    move-result v2

    add-int/2addr v1, v2

    return v1

    .line 498
    .end local v0    # "adapter":Landroid/widget/HeterogeneousExpandableList;
    :cond_0
    const/4 v0, 0x2

    return v0
.end method

.method public hasStableIds()Z
    .locals 1

    .line 504
    iget-object v0, p0, Landroid/widget/ExpandableListConnector;->mExpandableListAdapter:Landroid/widget/ExpandableListAdapter;

    invoke-interface {v0}, Landroid/widget/ExpandableListAdapter;->hasStableIds()Z

    move-result v0

    return v0
.end method

.method public isEmpty()Z
    .locals 2

    .line 763
    invoke-virtual {p0}, Landroid/widget/ExpandableListConnector;->getAdapter()Landroid/widget/ExpandableListAdapter;

    move-result-object v0

    .line 764
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

    .line 375
    invoke-virtual {p0, p1}, Landroid/widget/ExpandableListConnector;->getUnflattenedPos(I)Landroid/widget/ExpandableListConnector$PositionMetadata;

    move-result-object v0

    .line 376
    .local v0, "metadata":Landroid/widget/ExpandableListConnector$PositionMetadata;
    iget-object v1, v0, Landroid/widget/ExpandableListConnector$PositionMetadata;->position:Landroid/widget/ExpandableListPosition;

    .line 379
    .local v1, "pos":Landroid/widget/ExpandableListPosition;
    iget v2, v1, Landroid/widget/ExpandableListPosition;->type:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    .line 380
    iget-object v2, p0, Landroid/widget/ExpandableListConnector;->mExpandableListAdapter:Landroid/widget/ExpandableListAdapter;

    iget v3, v1, Landroid/widget/ExpandableListPosition;->groupPos:I

    iget v4, v1, Landroid/widget/ExpandableListPosition;->childPos:I

    invoke-interface {v2, v3, v4}, Landroid/widget/ExpandableListAdapter;->isChildSelectable(II)Z

    move-result v3

    .local v3, "retValue":Z
    goto :goto_0

    .line 383
    .end local v3    # "retValue":Z
    :cond_0
    nop

    .restart local v3    # "retValue":Z
    :goto_0
    move v2, v3

    .line 386
    .end local v3    # "retValue":Z
    .local v2, "retValue":Z
    invoke-virtual {v0}, Landroid/widget/ExpandableListConnector$PositionMetadata;->recycle()V

    .line 388
    return v2
.end method

.method public isGroupExpanded(I)Z
    .locals 4
    .param p1, "groupPosition"    # I

    .line 706
    iget-object v0, p0, Landroid/widget/ExpandableListConnector;->mExpGroupMetadataList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_1

    .line 707
    iget-object v2, p0, Landroid/widget/ExpandableListConnector;->mExpGroupMetadataList:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/widget/ExpandableListConnector$GroupMetadata;

    .line 709
    .local v2, "groupMetadata":Landroid/widget/ExpandableListConnector$GroupMetadata;
    iget v3, v2, Landroid/widget/ExpandableListConnector$GroupMetadata;->gPos:I

    if-ne v3, p1, :cond_0

    .line 710
    return v1

    .line 706
    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 714
    .end local v0    # "i":I
    .end local v2    # "groupMetadata":Landroid/widget/ExpandableListConnector$GroupMetadata;
    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public setExpandableListAdapter(Landroid/widget/ExpandableListAdapter;)V
    .locals 2
    .param p1, "expandableListAdapter"    # Landroid/widget/ExpandableListAdapter;

    .line 87
    iget-object v0, p0, Landroid/widget/ExpandableListConnector;->mExpandableListAdapter:Landroid/widget/ExpandableListAdapter;

    if-eqz v0, :cond_0

    .line 88
    iget-object v0, p0, Landroid/widget/ExpandableListConnector;->mExpandableListAdapter:Landroid/widget/ExpandableListAdapter;

    iget-object v1, p0, Landroid/widget/ExpandableListConnector;->mDataSetObserver:Landroid/database/DataSetObserver;

    invoke-interface {v0, v1}, Landroid/widget/ExpandableListAdapter;->unregisterDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 91
    :cond_0
    iput-object p1, p0, Landroid/widget/ExpandableListConnector;->mExpandableListAdapter:Landroid/widget/ExpandableListAdapter;

    .line 92
    iget-object v0, p0, Landroid/widget/ExpandableListConnector;->mDataSetObserver:Landroid/database/DataSetObserver;

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
            "Landroid/widget/ExpandableListConnector$GroupMetadata;",
            ">;)V"
        }
    .end annotation

    .line 743
    .local p1, "expandedGroupMetadataList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/widget/ExpandableListConnector$GroupMetadata;>;"
    if-eqz p1, :cond_3

    iget-object v0, p0, Landroid/widget/ExpandableListConnector;->mExpandableListAdapter:Landroid/widget/ExpandableListAdapter;

    if-nez v0, :cond_0

    goto :goto_1

    .line 749
    :cond_0
    iget-object v0, p0, Landroid/widget/ExpandableListConnector;->mExpandableListAdapter:Landroid/widget/ExpandableListAdapter;

    invoke-interface {v0}, Landroid/widget/ExpandableListAdapter;->getGroupCount()I

    move-result v0

    .line 750
    .local v0, "numGroups":I
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    .local v1, "i":I
    :goto_0
    if-ltz v1, :cond_2

    .line 751
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/widget/ExpandableListConnector$GroupMetadata;

    iget v3, v3, Landroid/widget/ExpandableListConnector$GroupMetadata;->gPos:I

    if-lt v3, v0, :cond_1

    .line 753
    return-void

    .line 750
    :cond_1
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 757
    .end local v1    # "i":I
    :cond_2
    iput-object p1, p0, Landroid/widget/ExpandableListConnector;->mExpGroupMetadataList:Ljava/util/ArrayList;

    .line 758
    const/4 v1, 0x0

    invoke-direct {p0, v2, v1}, Landroid/widget/ExpandableListConnector;->refreshExpGroupMetadataList(ZZ)V

    .line 759
    return-void

    .line 744
    .end local v0    # "numGroups":I
    :cond_3
    :goto_1
    return-void
.end method

.method public setMaxExpGroupCount(I)V
    .locals 0
    .param p1, "maxExpGroupCount"    # I

    .line 721
    iput p1, p0, Landroid/widget/ExpandableListConnector;->mMaxExpGroupCount:I

    .line 722
    return-void
.end method
