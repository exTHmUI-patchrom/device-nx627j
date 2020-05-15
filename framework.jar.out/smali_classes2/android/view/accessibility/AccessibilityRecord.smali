.class public Landroid/view/accessibility/AccessibilityRecord;
.super Ljava/lang/Object;
.source "AccessibilityRecord.java"


# static fields
.field protected static final DEBUG_CONCISE_TOSTRING:Z = false

.field private static final GET_SOURCE_PREFETCH_FLAGS:I = 0x7

.field private static final MAX_POOL_SIZE:I = 0xa

.field private static final PROPERTY_CHECKED:I = 0x1

.field private static final PROPERTY_ENABLED:I = 0x2

.field private static final PROPERTY_FULL_SCREEN:I = 0x80

.field private static final PROPERTY_IMPORTANT_FOR_ACCESSIBILITY:I = 0x200

.field private static final PROPERTY_PASSWORD:I = 0x4

.field private static final PROPERTY_SCROLLABLE:I = 0x100

.field private static final UNDEFINED:I = -0x1

.field private static sPool:Landroid/view/accessibility/AccessibilityRecord;

.field private static final sPoolLock:Ljava/lang/Object;

.field private static sPoolSize:I


# instance fields
.field mAddedCount:I

.field mBeforeText:Ljava/lang/CharSequence;

.field mBooleanProperties:I

.field mClassName:Ljava/lang/CharSequence;

.field mConnectionId:I

.field mContentDescription:Ljava/lang/CharSequence;

.field mCurrentItemIndex:I

.field mFromIndex:I

.field private mIsInPool:Z

.field mItemCount:I

.field mMaxScrollX:I

.field mMaxScrollY:I

.field private mNext:Landroid/view/accessibility/AccessibilityRecord;

.field mParcelableData:Landroid/os/Parcelable;

.field mRemovedCount:I

.field mScrollDeltaX:I

.field mScrollDeltaY:I

.field mScrollX:I

.field mScrollY:I

.field mSealed:Z

.field mSourceNodeId:J

.field mSourceWindowId:I

.field final mText:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/CharSequence;",
            ">;"
        }
    .end annotation
.end field

.field mToIndex:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 79
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Landroid/view/accessibility/AccessibilityRecord;->sPoolLock:Ljava/lang/Object;

    return-void
.end method

.method constructor <init>()V
    .locals 3

    .line 116
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 86
    const/4 v0, 0x0

    iput v0, p0, Landroid/view/accessibility/AccessibilityRecord;->mBooleanProperties:I

    .line 87
    const/4 v0, -0x1

    iput v0, p0, Landroid/view/accessibility/AccessibilityRecord;->mCurrentItemIndex:I

    .line 88
    iput v0, p0, Landroid/view/accessibility/AccessibilityRecord;->mItemCount:I

    .line 89
    iput v0, p0, Landroid/view/accessibility/AccessibilityRecord;->mFromIndex:I

    .line 90
    iput v0, p0, Landroid/view/accessibility/AccessibilityRecord;->mToIndex:I

    .line 91
    iput v0, p0, Landroid/view/accessibility/AccessibilityRecord;->mScrollX:I

    .line 92
    iput v0, p0, Landroid/view/accessibility/AccessibilityRecord;->mScrollY:I

    .line 94
    iput v0, p0, Landroid/view/accessibility/AccessibilityRecord;->mScrollDeltaX:I

    .line 95
    iput v0, p0, Landroid/view/accessibility/AccessibilityRecord;->mScrollDeltaY:I

    .line 96
    iput v0, p0, Landroid/view/accessibility/AccessibilityRecord;->mMaxScrollX:I

    .line 97
    iput v0, p0, Landroid/view/accessibility/AccessibilityRecord;->mMaxScrollY:I

    .line 99
    iput v0, p0, Landroid/view/accessibility/AccessibilityRecord;->mAddedCount:I

    .line 100
    iput v0, p0, Landroid/view/accessibility/AccessibilityRecord;->mRemovedCount:I

    .line 101
    sget-wide v1, Landroid/view/accessibility/AccessibilityNodeInfo;->UNDEFINED_NODE_ID:J

    iput-wide v1, p0, Landroid/view/accessibility/AccessibilityRecord;->mSourceNodeId:J

    .line 102
    iput v0, p0, Landroid/view/accessibility/AccessibilityRecord;->mSourceWindowId:I

    .line 109
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Landroid/view/accessibility/AccessibilityRecord;->mText:Ljava/util/List;

    .line 111
    iput v0, p0, Landroid/view/accessibility/AccessibilityRecord;->mConnectionId:I

    .line 117
    return-void
.end method

.method private append(Ljava/lang/StringBuilder;Ljava/lang/String;I)V
    .locals 1
    .param p1, "builder"    # Ljava/lang/StringBuilder;
    .param p2, "propName"    # Ljava/lang/String;
    .param p3, "propValue"    # I

    .line 949
    invoke-direct {p0, p1, p2}, Landroid/view/accessibility/AccessibilityRecord;->appendPropName(Ljava/lang/StringBuilder;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 950
    return-void
.end method

.method private append(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1
    .param p1, "builder"    # Ljava/lang/StringBuilder;
    .param p2, "propName"    # Ljava/lang/String;
    .param p3, "propValue"    # Ljava/lang/Object;

    .line 954
    invoke-direct {p0, p1, p2}, Landroid/view/accessibility/AccessibilityRecord;->appendPropName(Ljava/lang/StringBuilder;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 955
    return-void
.end method

.method private appendPropName(Ljava/lang/StringBuilder;Ljava/lang/String;)Ljava/lang/StringBuilder;
    .locals 1
    .param p1, "builder"    # Ljava/lang/StringBuilder;
    .param p2, "propName"    # Ljava/lang/String;

    .line 958
    const-string v0, "; "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ": "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-object p1
.end method

.method private appendUnless(ZILjava/lang/StringBuilder;)V
    .locals 2
    .param p1, "defValue"    # Z
    .param p2, "prop"    # I
    .param p3, "builder"    # Ljava/lang/StringBuilder;

    .line 928
    invoke-direct {p0, p2}, Landroid/view/accessibility/AccessibilityRecord;->getBooleanProperty(I)Z

    move-result v0

    .line 930
    .local v0, "value":Z
    invoke-static {p2}, Landroid/view/accessibility/AccessibilityRecord;->singleBooleanPropertyToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, p3, v1}, Landroid/view/accessibility/AccessibilityRecord;->appendPropName(Ljava/lang/StringBuilder;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 931
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 932
    return-void
.end method

.method private getBooleanProperty(I)Z
    .locals 1
    .param p1, "property"    # I

    .line 767
    iget v0, p0, Landroid/view/accessibility/AccessibilityRecord;->mBooleanProperties:I

    and-int/2addr v0, p1

    if-ne v0, p1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static obtain()Landroid/view/accessibility/AccessibilityRecord;
    .locals 3

    .line 804
    sget-object v0, Landroid/view/accessibility/AccessibilityRecord;->sPoolLock:Ljava/lang/Object;

    monitor-enter v0

    .line 805
    :try_start_0
    sget-object v1, Landroid/view/accessibility/AccessibilityRecord;->sPool:Landroid/view/accessibility/AccessibilityRecord;

    if-eqz v1, :cond_0

    .line 806
    sget-object v1, Landroid/view/accessibility/AccessibilityRecord;->sPool:Landroid/view/accessibility/AccessibilityRecord;

    .line 807
    .local v1, "record":Landroid/view/accessibility/AccessibilityRecord;
    sget-object v2, Landroid/view/accessibility/AccessibilityRecord;->sPool:Landroid/view/accessibility/AccessibilityRecord;

    iget-object v2, v2, Landroid/view/accessibility/AccessibilityRecord;->mNext:Landroid/view/accessibility/AccessibilityRecord;

    sput-object v2, Landroid/view/accessibility/AccessibilityRecord;->sPool:Landroid/view/accessibility/AccessibilityRecord;

    .line 808
    sget v2, Landroid/view/accessibility/AccessibilityRecord;->sPoolSize:I

    add-int/lit8 v2, v2, -0x1

    sput v2, Landroid/view/accessibility/AccessibilityRecord;->sPoolSize:I

    .line 809
    const/4 v2, 0x0

    iput-object v2, v1, Landroid/view/accessibility/AccessibilityRecord;->mNext:Landroid/view/accessibility/AccessibilityRecord;

    .line 810
    const/4 v2, 0x0

    iput-boolean v2, v1, Landroid/view/accessibility/AccessibilityRecord;->mIsInPool:Z

    .line 811
    monitor-exit v0

    return-object v1

    .line 813
    .end local v1    # "record":Landroid/view/accessibility/AccessibilityRecord;
    :cond_0
    new-instance v1, Landroid/view/accessibility/AccessibilityRecord;

    invoke-direct {v1}, Landroid/view/accessibility/AccessibilityRecord;-><init>()V

    monitor-exit v0

    return-object v1

    .line 814
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public static obtain(Landroid/view/accessibility/AccessibilityRecord;)Landroid/view/accessibility/AccessibilityRecord;
    .locals 1
    .param p0, "record"    # Landroid/view/accessibility/AccessibilityRecord;

    .line 792
    invoke-static {}, Landroid/view/accessibility/AccessibilityRecord;->obtain()Landroid/view/accessibility/AccessibilityRecord;

    move-result-object v0

    .line 793
    .local v0, "clone":Landroid/view/accessibility/AccessibilityRecord;
    invoke-virtual {v0, p0}, Landroid/view/accessibility/AccessibilityRecord;->init(Landroid/view/accessibility/AccessibilityRecord;)V

    .line 794
    return-object v0
.end method

.method private setBooleanProperty(IZ)V
    .locals 2
    .param p1, "property"    # I
    .param p2, "value"    # Z

    .line 777
    if-eqz p2, :cond_0

    .line 778
    iget v0, p0, Landroid/view/accessibility/AccessibilityRecord;->mBooleanProperties:I

    or-int/2addr v0, p1

    iput v0, p0, Landroid/view/accessibility/AccessibilityRecord;->mBooleanProperties:I

    goto :goto_0

    .line 780
    :cond_0
    iget v0, p0, Landroid/view/accessibility/AccessibilityRecord;->mBooleanProperties:I

    not-int v1, p1

    and-int/2addr v0, v1

    iput v0, p0, Landroid/view/accessibility/AccessibilityRecord;->mBooleanProperties:I

    .line 782
    :goto_0
    return-void
.end method

.method private static singleBooleanPropertyToString(I)Ljava/lang/String;
    .locals 1
    .param p0, "prop"    # I

    .line 935
    const/4 v0, 0x4

    if-eq p0, v0, :cond_3

    const/16 v0, 0x80

    if-eq p0, v0, :cond_2

    const/16 v0, 0x100

    if-eq p0, v0, :cond_1

    const/16 v0, 0x200

    if-eq p0, v0, :cond_0

    packed-switch p0, :pswitch_data_0

    .line 943
    invoke-static {p0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 937
    :pswitch_0
    const-string v0, "Enabled"

    return-object v0

    .line 936
    :pswitch_1
    const-string v0, "Checked"

    return-object v0

    .line 942
    :cond_0
    const-string v0, "ImportantForAccessibility"

    return-object v0

    .line 940
    :cond_1
    const-string v0, "Scrollable"

    return-object v0

    .line 939
    :cond_2
    const-string v0, "FullScreen"

    return-object v0

    .line 938
    :cond_3
    const-string v0, "Password"

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method appendTo(Ljava/lang/StringBuilder;)Ljava/lang/StringBuilder;
    .locals 3
    .param p1, "builder"    # Ljava/lang/StringBuilder;

    .line 899
    const-string v0, " [ ClassName: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Landroid/view/accessibility/AccessibilityRecord;->mClassName:Ljava/lang/CharSequence;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 901
    const-string v0, "Text"

    invoke-direct {p0, p1, v0}, Landroid/view/accessibility/AccessibilityRecord;->appendPropName(Ljava/lang/StringBuilder;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/view/accessibility/AccessibilityRecord;->mText:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 903
    const-string v0, "ContentDescription"

    iget-object v1, p0, Landroid/view/accessibility/AccessibilityRecord;->mContentDescription:Ljava/lang/CharSequence;

    invoke-direct {p0, p1, v0, v1}, Landroid/view/accessibility/AccessibilityRecord;->append(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/Object;)V

    .line 904
    const-string v0, "ItemCount"

    iget v1, p0, Landroid/view/accessibility/AccessibilityRecord;->mItemCount:I

    invoke-direct {p0, p1, v0, v1}, Landroid/view/accessibility/AccessibilityRecord;->append(Ljava/lang/StringBuilder;Ljava/lang/String;I)V

    .line 905
    const-string v0, "CurrentItemIndex"

    iget v1, p0, Landroid/view/accessibility/AccessibilityRecord;->mCurrentItemIndex:I

    invoke-direct {p0, p1, v0, v1}, Landroid/view/accessibility/AccessibilityRecord;->append(Ljava/lang/StringBuilder;Ljava/lang/String;I)V

    .line 907
    const/4 v0, 0x1

    const/4 v1, 0x2

    invoke-direct {p0, v0, v1, p1}, Landroid/view/accessibility/AccessibilityRecord;->appendUnless(ZILjava/lang/StringBuilder;)V

    .line 908
    const/4 v1, 0x0

    const/4 v2, 0x4

    invoke-direct {p0, v1, v2, p1}, Landroid/view/accessibility/AccessibilityRecord;->appendUnless(ZILjava/lang/StringBuilder;)V

    .line 909
    invoke-direct {p0, v1, v0, p1}, Landroid/view/accessibility/AccessibilityRecord;->appendUnless(ZILjava/lang/StringBuilder;)V

    .line 910
    const/16 v0, 0x80

    invoke-direct {p0, v1, v0, p1}, Landroid/view/accessibility/AccessibilityRecord;->appendUnless(ZILjava/lang/StringBuilder;)V

    .line 911
    const/16 v0, 0x100

    invoke-direct {p0, v1, v0, p1}, Landroid/view/accessibility/AccessibilityRecord;->appendUnless(ZILjava/lang/StringBuilder;)V

    .line 913
    const-string v0, "BeforeText"

    iget-object v1, p0, Landroid/view/accessibility/AccessibilityRecord;->mBeforeText:Ljava/lang/CharSequence;

    invoke-direct {p0, p1, v0, v1}, Landroid/view/accessibility/AccessibilityRecord;->append(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/Object;)V

    .line 914
    const-string v0, "FromIndex"

    iget v1, p0, Landroid/view/accessibility/AccessibilityRecord;->mFromIndex:I

    invoke-direct {p0, p1, v0, v1}, Landroid/view/accessibility/AccessibilityRecord;->append(Ljava/lang/StringBuilder;Ljava/lang/String;I)V

    .line 915
    const-string v0, "ToIndex"

    iget v1, p0, Landroid/view/accessibility/AccessibilityRecord;->mToIndex:I

    invoke-direct {p0, p1, v0, v1}, Landroid/view/accessibility/AccessibilityRecord;->append(Ljava/lang/StringBuilder;Ljava/lang/String;I)V

    .line 916
    const-string v0, "ScrollX"

    iget v1, p0, Landroid/view/accessibility/AccessibilityRecord;->mScrollX:I

    invoke-direct {p0, p1, v0, v1}, Landroid/view/accessibility/AccessibilityRecord;->append(Ljava/lang/StringBuilder;Ljava/lang/String;I)V

    .line 917
    const-string v0, "ScrollY"

    iget v1, p0, Landroid/view/accessibility/AccessibilityRecord;->mScrollY:I

    invoke-direct {p0, p1, v0, v1}, Landroid/view/accessibility/AccessibilityRecord;->append(Ljava/lang/StringBuilder;Ljava/lang/String;I)V

    .line 918
    const-string v0, "MaxScrollX"

    iget v1, p0, Landroid/view/accessibility/AccessibilityRecord;->mMaxScrollX:I

    invoke-direct {p0, p1, v0, v1}, Landroid/view/accessibility/AccessibilityRecord;->append(Ljava/lang/StringBuilder;Ljava/lang/String;I)V

    .line 919
    const-string v0, "MaxScrollY"

    iget v1, p0, Landroid/view/accessibility/AccessibilityRecord;->mMaxScrollY:I

    invoke-direct {p0, p1, v0, v1}, Landroid/view/accessibility/AccessibilityRecord;->append(Ljava/lang/StringBuilder;Ljava/lang/String;I)V

    .line 920
    const-string v0, "AddedCount"

    iget v1, p0, Landroid/view/accessibility/AccessibilityRecord;->mAddedCount:I

    invoke-direct {p0, p1, v0, v1}, Landroid/view/accessibility/AccessibilityRecord;->append(Ljava/lang/StringBuilder;Ljava/lang/String;I)V

    .line 921
    const-string v0, "RemovedCount"

    iget v1, p0, Landroid/view/accessibility/AccessibilityRecord;->mRemovedCount:I

    invoke-direct {p0, p1, v0, v1}, Landroid/view/accessibility/AccessibilityRecord;->append(Ljava/lang/StringBuilder;Ljava/lang/String;I)V

    .line 922
    const-string v0, "ParcelableData"

    iget-object v1, p0, Landroid/view/accessibility/AccessibilityRecord;->mParcelableData:Landroid/os/Parcelable;

    invoke-direct {p0, p1, v0, v1}, Landroid/view/accessibility/AccessibilityRecord;->append(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/Object;)V

    .line 923
    const-string v0, " ]"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 924
    return-object p1
.end method

.method clear()V
    .locals 3

    .line 871
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/view/accessibility/AccessibilityRecord;->mSealed:Z

    .line 872
    iput v0, p0, Landroid/view/accessibility/AccessibilityRecord;->mBooleanProperties:I

    .line 873
    const/4 v0, -0x1

    iput v0, p0, Landroid/view/accessibility/AccessibilityRecord;->mCurrentItemIndex:I

    .line 874
    iput v0, p0, Landroid/view/accessibility/AccessibilityRecord;->mItemCount:I

    .line 875
    iput v0, p0, Landroid/view/accessibility/AccessibilityRecord;->mFromIndex:I

    .line 876
    iput v0, p0, Landroid/view/accessibility/AccessibilityRecord;->mToIndex:I

    .line 877
    iput v0, p0, Landroid/view/accessibility/AccessibilityRecord;->mScrollX:I

    .line 878
    iput v0, p0, Landroid/view/accessibility/AccessibilityRecord;->mScrollY:I

    .line 879
    iput v0, p0, Landroid/view/accessibility/AccessibilityRecord;->mMaxScrollX:I

    .line 880
    iput v0, p0, Landroid/view/accessibility/AccessibilityRecord;->mMaxScrollY:I

    .line 881
    iput v0, p0, Landroid/view/accessibility/AccessibilityRecord;->mAddedCount:I

    .line 882
    iput v0, p0, Landroid/view/accessibility/AccessibilityRecord;->mRemovedCount:I

    .line 883
    const/4 v1, 0x0

    iput-object v1, p0, Landroid/view/accessibility/AccessibilityRecord;->mClassName:Ljava/lang/CharSequence;

    .line 884
    iput-object v1, p0, Landroid/view/accessibility/AccessibilityRecord;->mContentDescription:Ljava/lang/CharSequence;

    .line 885
    iput-object v1, p0, Landroid/view/accessibility/AccessibilityRecord;->mBeforeText:Ljava/lang/CharSequence;

    .line 886
    iput-object v1, p0, Landroid/view/accessibility/AccessibilityRecord;->mParcelableData:Landroid/os/Parcelable;

    .line 887
    iget-object v1, p0, Landroid/view/accessibility/AccessibilityRecord;->mText:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 888
    const-wide/32 v1, 0x7fffffff

    iput-wide v1, p0, Landroid/view/accessibility/AccessibilityRecord;->mSourceNodeId:J

    .line 889
    iput v0, p0, Landroid/view/accessibility/AccessibilityRecord;->mSourceWindowId:I

    .line 890
    iput v0, p0, Landroid/view/accessibility/AccessibilityRecord;->mConnectionId:I

    .line 891
    return-void
.end method

.method enforceNotSealed()V
    .locals 2

    .line 754
    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityRecord;->isSealed()Z

    move-result v0

    if-nez v0, :cond_0

    .line 758
    return-void

    .line 755
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot perform this action on a sealed instance."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method enforceSealed()V
    .locals 2

    .line 742
    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityRecord;->isSealed()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 746
    return-void

    .line 743
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot perform this action on a not sealed instance."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getAddedCount()I
    .locals 1

    .line 560
    iget v0, p0, Landroid/view/accessibility/AccessibilityRecord;->mAddedCount:I

    return v0
.end method

.method public getBeforeText()Ljava/lang/CharSequence;
    .locals 1

    .line 633
    iget-object v0, p0, Landroid/view/accessibility/AccessibilityRecord;->mBeforeText:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public getClassName()Ljava/lang/CharSequence;
    .locals 1

    .line 602
    iget-object v0, p0, Landroid/view/accessibility/AccessibilityRecord;->mClassName:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public getContentDescription()Ljava/lang/CharSequence;
    .locals 1

    .line 655
    iget-object v0, p0, Landroid/view/accessibility/AccessibilityRecord;->mContentDescription:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public getCurrentItemIndex()I
    .locals 1

    .line 373
    iget v0, p0, Landroid/view/accessibility/AccessibilityRecord;->mCurrentItemIndex:I

    return v0
.end method

.method public getFromIndex()I
    .locals 1

    .line 397
    iget v0, p0, Landroid/view/accessibility/AccessibilityRecord;->mFromIndex:I

    return v0
.end method

.method public getItemCount()I
    .locals 1

    .line 352
    iget v0, p0, Landroid/view/accessibility/AccessibilityRecord;->mItemCount:I

    return v0
.end method

.method public getMaxScrollX()I
    .locals 1

    .line 522
    iget v0, p0, Landroid/view/accessibility/AccessibilityRecord;->mMaxScrollX:I

    return v0
.end method

.method public getMaxScrollY()I
    .locals 1

    .line 541
    iget v0, p0, Landroid/view/accessibility/AccessibilityRecord;->mMaxScrollY:I

    return v0
.end method

.method public getParcelableData()Landroid/os/Parcelable;
    .locals 1

    .line 677
    iget-object v0, p0, Landroid/view/accessibility/AccessibilityRecord;->mParcelableData:Landroid/os/Parcelable;

    return-object v0
.end method

.method public getRemovedCount()I
    .locals 1

    .line 581
    iget v0, p0, Landroid/view/accessibility/AccessibilityRecord;->mRemovedCount:I

    return v0
.end method

.method public getScrollDeltaX()I
    .locals 1

    .line 481
    iget v0, p0, Landroid/view/accessibility/AccessibilityRecord;->mScrollDeltaX:I

    return v0
.end method

.method public getScrollDeltaY()I
    .locals 1

    .line 502
    iget v0, p0, Landroid/view/accessibility/AccessibilityRecord;->mScrollDeltaY:I

    return v0
.end method

.method public getScrollX()I
    .locals 1

    .line 442
    iget v0, p0, Landroid/view/accessibility/AccessibilityRecord;->mScrollX:I

    return v0
.end method

.method public getScrollY()I
    .locals 1

    .line 461
    iget v0, p0, Landroid/view/accessibility/AccessibilityRecord;->mScrollY:I

    return v0
.end method

.method public getSource()Landroid/view/accessibility/AccessibilityNodeInfo;
    .locals 10

    .line 178
    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityRecord;->enforceSealed()V

    .line 179
    iget v0, p0, Landroid/view/accessibility/AccessibilityRecord;->mConnectionId:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    iget v0, p0, Landroid/view/accessibility/AccessibilityRecord;->mSourceWindowId:I

    if-eq v0, v1, :cond_1

    iget-wide v0, p0, Landroid/view/accessibility/AccessibilityRecord;->mSourceNodeId:J

    .line 181
    invoke-static {v0, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->getAccessibilityViewId(J)I

    move-result v0

    const v1, 0x7fffffff

    if-ne v0, v1, :cond_0

    goto :goto_0

    .line 185
    :cond_0
    invoke-static {}, Landroid/view/accessibility/AccessibilityInteractionClient;->getInstance()Landroid/view/accessibility/AccessibilityInteractionClient;

    move-result-object v0

    .line 186
    .local v0, "client":Landroid/view/accessibility/AccessibilityInteractionClient;
    iget v3, p0, Landroid/view/accessibility/AccessibilityRecord;->mConnectionId:I

    iget v4, p0, Landroid/view/accessibility/AccessibilityRecord;->mSourceWindowId:I

    iget-wide v5, p0, Landroid/view/accessibility/AccessibilityRecord;->mSourceNodeId:J

    const/4 v7, 0x0

    const/4 v8, 0x7

    const/4 v9, 0x0

    move-object v2, v0

    invoke-virtual/range {v2 .. v9}, Landroid/view/accessibility/AccessibilityInteractionClient;->findAccessibilityNodeInfoByAccessibilityId(IIJZILandroid/os/Bundle;)Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v1

    return-object v1

    .line 183
    .end local v0    # "client":Landroid/view/accessibility/AccessibilityInteractionClient;
    :cond_1
    :goto_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getSourceNodeId()J
    .locals 2

    .line 700
    iget-wide v0, p0, Landroid/view/accessibility/AccessibilityRecord;->mSourceNodeId:J

    return-wide v0
.end method

.method public getText()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/CharSequence;",
            ">;"
        }
    .end annotation

    .line 624
    iget-object v0, p0, Landroid/view/accessibility/AccessibilityRecord;->mText:Ljava/util/List;

    return-object v0
.end method

.method public getToIndex()I
    .locals 1

    .line 422
    iget v0, p0, Landroid/view/accessibility/AccessibilityRecord;->mToIndex:I

    return v0
.end method

.method public getWindowId()I
    .locals 1

    .line 207
    iget v0, p0, Landroid/view/accessibility/AccessibilityRecord;->mSourceWindowId:I

    return v0
.end method

.method init(Landroid/view/accessibility/AccessibilityRecord;)V
    .locals 2
    .param p1, "record"    # Landroid/view/accessibility/AccessibilityRecord;

    .line 845
    iget-boolean v0, p1, Landroid/view/accessibility/AccessibilityRecord;->mSealed:Z

    iput-boolean v0, p0, Landroid/view/accessibility/AccessibilityRecord;->mSealed:Z

    .line 846
    iget v0, p1, Landroid/view/accessibility/AccessibilityRecord;->mBooleanProperties:I

    iput v0, p0, Landroid/view/accessibility/AccessibilityRecord;->mBooleanProperties:I

    .line 847
    iget v0, p1, Landroid/view/accessibility/AccessibilityRecord;->mCurrentItemIndex:I

    iput v0, p0, Landroid/view/accessibility/AccessibilityRecord;->mCurrentItemIndex:I

    .line 848
    iget v0, p1, Landroid/view/accessibility/AccessibilityRecord;->mItemCount:I

    iput v0, p0, Landroid/view/accessibility/AccessibilityRecord;->mItemCount:I

    .line 849
    iget v0, p1, Landroid/view/accessibility/AccessibilityRecord;->mFromIndex:I

    iput v0, p0, Landroid/view/accessibility/AccessibilityRecord;->mFromIndex:I

    .line 850
    iget v0, p1, Landroid/view/accessibility/AccessibilityRecord;->mToIndex:I

    iput v0, p0, Landroid/view/accessibility/AccessibilityRecord;->mToIndex:I

    .line 851
    iget v0, p1, Landroid/view/accessibility/AccessibilityRecord;->mScrollX:I

    iput v0, p0, Landroid/view/accessibility/AccessibilityRecord;->mScrollX:I

    .line 852
    iget v0, p1, Landroid/view/accessibility/AccessibilityRecord;->mScrollY:I

    iput v0, p0, Landroid/view/accessibility/AccessibilityRecord;->mScrollY:I

    .line 853
    iget v0, p1, Landroid/view/accessibility/AccessibilityRecord;->mMaxScrollX:I

    iput v0, p0, Landroid/view/accessibility/AccessibilityRecord;->mMaxScrollX:I

    .line 854
    iget v0, p1, Landroid/view/accessibility/AccessibilityRecord;->mMaxScrollY:I

    iput v0, p0, Landroid/view/accessibility/AccessibilityRecord;->mMaxScrollY:I

    .line 855
    iget v0, p1, Landroid/view/accessibility/AccessibilityRecord;->mAddedCount:I

    iput v0, p0, Landroid/view/accessibility/AccessibilityRecord;->mAddedCount:I

    .line 856
    iget v0, p1, Landroid/view/accessibility/AccessibilityRecord;->mRemovedCount:I

    iput v0, p0, Landroid/view/accessibility/AccessibilityRecord;->mRemovedCount:I

    .line 857
    iget-object v0, p1, Landroid/view/accessibility/AccessibilityRecord;->mClassName:Ljava/lang/CharSequence;

    iput-object v0, p0, Landroid/view/accessibility/AccessibilityRecord;->mClassName:Ljava/lang/CharSequence;

    .line 858
    iget-object v0, p1, Landroid/view/accessibility/AccessibilityRecord;->mContentDescription:Ljava/lang/CharSequence;

    iput-object v0, p0, Landroid/view/accessibility/AccessibilityRecord;->mContentDescription:Ljava/lang/CharSequence;

    .line 859
    iget-object v0, p1, Landroid/view/accessibility/AccessibilityRecord;->mBeforeText:Ljava/lang/CharSequence;

    iput-object v0, p0, Landroid/view/accessibility/AccessibilityRecord;->mBeforeText:Ljava/lang/CharSequence;

    .line 860
    iget-object v0, p1, Landroid/view/accessibility/AccessibilityRecord;->mParcelableData:Landroid/os/Parcelable;

    iput-object v0, p0, Landroid/view/accessibility/AccessibilityRecord;->mParcelableData:Landroid/os/Parcelable;

    .line 861
    iget-object v0, p0, Landroid/view/accessibility/AccessibilityRecord;->mText:Ljava/util/List;

    iget-object v1, p1, Landroid/view/accessibility/AccessibilityRecord;->mText:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 862
    iget v0, p1, Landroid/view/accessibility/AccessibilityRecord;->mSourceWindowId:I

    iput v0, p0, Landroid/view/accessibility/AccessibilityRecord;->mSourceWindowId:I

    .line 863
    iget-wide v0, p1, Landroid/view/accessibility/AccessibilityRecord;->mSourceNodeId:J

    iput-wide v0, p0, Landroid/view/accessibility/AccessibilityRecord;->mSourceNodeId:J

    .line 864
    iget v0, p1, Landroid/view/accessibility/AccessibilityRecord;->mConnectionId:I

    iput v0, p0, Landroid/view/accessibility/AccessibilityRecord;->mConnectionId:I

    .line 865
    return-void
.end method

.method public isChecked()Z
    .locals 1

    .line 216
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Landroid/view/accessibility/AccessibilityRecord;->getBooleanProperty(I)Z

    move-result v0

    return v0
.end method

.method public isEnabled()Z
    .locals 1

    .line 237
    const/4 v0, 0x2

    invoke-direct {p0, v0}, Landroid/view/accessibility/AccessibilityRecord;->getBooleanProperty(I)Z

    move-result v0

    return v0
.end method

.method public isFullScreen()Z
    .locals 1

    .line 279
    const/16 v0, 0x80

    invoke-direct {p0, v0}, Landroid/view/accessibility/AccessibilityRecord;->getBooleanProperty(I)Z

    move-result v0

    return v0
.end method

.method public isImportantForAccessibility()Z
    .locals 1

    .line 329
    const/16 v0, 0x200

    invoke-direct {p0, v0}, Landroid/view/accessibility/AccessibilityRecord;->getBooleanProperty(I)Z

    move-result v0

    return v0
.end method

.method public isPassword()Z
    .locals 1

    .line 258
    const/4 v0, 0x4

    invoke-direct {p0, v0}, Landroid/view/accessibility/AccessibilityRecord;->getBooleanProperty(I)Z

    move-result v0

    return v0
.end method

.method public isScrollable()Z
    .locals 1

    .line 300
    const/16 v0, 0x100

    invoke-direct {p0, v0}, Landroid/view/accessibility/AccessibilityRecord;->getBooleanProperty(I)Z

    move-result v0

    return v0
.end method

.method isSealed()Z
    .locals 1

    .line 733
    iget-boolean v0, p0, Landroid/view/accessibility/AccessibilityRecord;->mSealed:Z

    return v0
.end method

.method public recycle()V
    .locals 3

    .line 825
    iget-boolean v0, p0, Landroid/view/accessibility/AccessibilityRecord;->mIsInPool:Z

    if-nez v0, :cond_1

    .line 828
    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityRecord;->clear()V

    .line 829
    sget-object v0, Landroid/view/accessibility/AccessibilityRecord;->sPoolLock:Ljava/lang/Object;

    monitor-enter v0

    .line 830
    :try_start_0
    sget v1, Landroid/view/accessibility/AccessibilityRecord;->sPoolSize:I

    const/16 v2, 0xa

    if-gt v1, v2, :cond_0

    .line 831
    sget-object v1, Landroid/view/accessibility/AccessibilityRecord;->sPool:Landroid/view/accessibility/AccessibilityRecord;

    iput-object v1, p0, Landroid/view/accessibility/AccessibilityRecord;->mNext:Landroid/view/accessibility/AccessibilityRecord;

    .line 832
    sput-object p0, Landroid/view/accessibility/AccessibilityRecord;->sPool:Landroid/view/accessibility/AccessibilityRecord;

    .line 833
    const/4 v1, 0x1

    iput-boolean v1, p0, Landroid/view/accessibility/AccessibilityRecord;->mIsInPool:Z

    .line 834
    sget v2, Landroid/view/accessibility/AccessibilityRecord;->sPoolSize:I

    add-int/2addr v2, v1

    sput v2, Landroid/view/accessibility/AccessibilityRecord;->sPoolSize:I

    .line 836
    :cond_0
    monitor-exit v0

    .line 837
    return-void

    .line 836
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 826
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Record already recycled!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setAddedCount(I)V
    .locals 0
    .param p1, "addedCount"    # I

    .line 571
    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityRecord;->enforceNotSealed()V

    .line 572
    iput p1, p0, Landroid/view/accessibility/AccessibilityRecord;->mAddedCount:I

    .line 573
    return-void
.end method

.method public setBeforeText(Ljava/lang/CharSequence;)V
    .locals 2
    .param p1, "beforeText"    # Ljava/lang/CharSequence;

    .line 644
    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityRecord;->enforceNotSealed()V

    .line 645
    if-nez p1, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    .line 646
    :cond_0
    const/4 v0, 0x0

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    invoke-interface {p1, v0, v1}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v0

    :goto_0
    iput-object v0, p0, Landroid/view/accessibility/AccessibilityRecord;->mBeforeText:Ljava/lang/CharSequence;

    .line 647
    return-void
.end method

.method public setChecked(Z)V
    .locals 1
    .param p1, "isChecked"    # Z

    .line 227
    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityRecord;->enforceNotSealed()V

    .line 228
    const/4 v0, 0x1

    invoke-direct {p0, v0, p1}, Landroid/view/accessibility/AccessibilityRecord;->setBooleanProperty(IZ)V

    .line 229
    return-void
.end method

.method public setClassName(Ljava/lang/CharSequence;)V
    .locals 0
    .param p1, "className"    # Ljava/lang/CharSequence;

    .line 613
    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityRecord;->enforceNotSealed()V

    .line 614
    iput-object p1, p0, Landroid/view/accessibility/AccessibilityRecord;->mClassName:Ljava/lang/CharSequence;

    .line 615
    return-void
.end method

.method public setConnectionId(I)V
    .locals 0
    .param p1, "connectionId"    # I

    .line 712
    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityRecord;->enforceNotSealed()V

    .line 713
    iput p1, p0, Landroid/view/accessibility/AccessibilityRecord;->mConnectionId:I

    .line 714
    return-void
.end method

.method public setContentDescription(Ljava/lang/CharSequence;)V
    .locals 2
    .param p1, "contentDescription"    # Ljava/lang/CharSequence;

    .line 666
    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityRecord;->enforceNotSealed()V

    .line 667
    if-nez p1, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    .line 668
    :cond_0
    const/4 v0, 0x0

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    invoke-interface {p1, v0, v1}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v0

    :goto_0
    iput-object v0, p0, Landroid/view/accessibility/AccessibilityRecord;->mContentDescription:Ljava/lang/CharSequence;

    .line 669
    return-void
.end method

.method public setCurrentItemIndex(I)V
    .locals 0
    .param p1, "currentItemIndex"    # I

    .line 384
    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityRecord;->enforceNotSealed()V

    .line 385
    iput p1, p0, Landroid/view/accessibility/AccessibilityRecord;->mCurrentItemIndex:I

    .line 386
    return-void
.end method

.method public setEnabled(Z)V
    .locals 1
    .param p1, "isEnabled"    # Z

    .line 248
    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityRecord;->enforceNotSealed()V

    .line 249
    const/4 v0, 0x2

    invoke-direct {p0, v0, p1}, Landroid/view/accessibility/AccessibilityRecord;->setBooleanProperty(IZ)V

    .line 250
    return-void
.end method

.method public setFromIndex(I)V
    .locals 0
    .param p1, "fromIndex"    # I

    .line 411
    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityRecord;->enforceNotSealed()V

    .line 412
    iput p1, p0, Landroid/view/accessibility/AccessibilityRecord;->mFromIndex:I

    .line 413
    return-void
.end method

.method public setFullScreen(Z)V
    .locals 1
    .param p1, "isFullScreen"    # Z

    .line 290
    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityRecord;->enforceNotSealed()V

    .line 291
    const/16 v0, 0x80

    invoke-direct {p0, v0, p1}, Landroid/view/accessibility/AccessibilityRecord;->setBooleanProperty(IZ)V

    .line 292
    return-void
.end method

.method public setImportantForAccessibility(Z)V
    .locals 1
    .param p1, "importantForAccessibility"    # Z

    .line 342
    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityRecord;->enforceNotSealed()V

    .line 343
    const/16 v0, 0x200

    invoke-direct {p0, v0, p1}, Landroid/view/accessibility/AccessibilityRecord;->setBooleanProperty(IZ)V

    .line 344
    return-void
.end method

.method public setItemCount(I)V
    .locals 0
    .param p1, "itemCount"    # I

    .line 363
    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityRecord;->enforceNotSealed()V

    .line 364
    iput p1, p0, Landroid/view/accessibility/AccessibilityRecord;->mItemCount:I

    .line 365
    return-void
.end method

.method public setMaxScrollX(I)V
    .locals 0
    .param p1, "maxScrollX"    # I

    .line 531
    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityRecord;->enforceNotSealed()V

    .line 532
    iput p1, p0, Landroid/view/accessibility/AccessibilityRecord;->mMaxScrollX:I

    .line 533
    return-void
.end method

.method public setMaxScrollY(I)V
    .locals 0
    .param p1, "maxScrollY"    # I

    .line 550
    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityRecord;->enforceNotSealed()V

    .line 551
    iput p1, p0, Landroid/view/accessibility/AccessibilityRecord;->mMaxScrollY:I

    .line 552
    return-void
.end method

.method public setParcelableData(Landroid/os/Parcelable;)V
    .locals 0
    .param p1, "parcelableData"    # Landroid/os/Parcelable;

    .line 688
    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityRecord;->enforceNotSealed()V

    .line 689
    iput-object p1, p0, Landroid/view/accessibility/AccessibilityRecord;->mParcelableData:Landroid/os/Parcelable;

    .line 690
    return-void
.end method

.method public setPassword(Z)V
    .locals 1
    .param p1, "isPassword"    # Z

    .line 269
    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityRecord;->enforceNotSealed()V

    .line 270
    const/4 v0, 0x4

    invoke-direct {p0, v0, p1}, Landroid/view/accessibility/AccessibilityRecord;->setBooleanProperty(IZ)V

    .line 271
    return-void
.end method

.method public setRemovedCount(I)V
    .locals 0
    .param p1, "removedCount"    # I

    .line 592
    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityRecord;->enforceNotSealed()V

    .line 593
    iput p1, p0, Landroid/view/accessibility/AccessibilityRecord;->mRemovedCount:I

    .line 594
    return-void
.end method

.method public setScrollDeltaX(I)V
    .locals 0
    .param p1, "scrollDeltaX"    # I

    .line 491
    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityRecord;->enforceNotSealed()V

    .line 492
    iput p1, p0, Landroid/view/accessibility/AccessibilityRecord;->mScrollDeltaX:I

    .line 493
    return-void
.end method

.method public setScrollDeltaY(I)V
    .locals 0
    .param p1, "scrollDeltaY"    # I

    .line 512
    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityRecord;->enforceNotSealed()V

    .line 513
    iput p1, p0, Landroid/view/accessibility/AccessibilityRecord;->mScrollDeltaY:I

    .line 514
    return-void
.end method

.method public setScrollX(I)V
    .locals 0
    .param p1, "scrollX"    # I

    .line 451
    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityRecord;->enforceNotSealed()V

    .line 452
    iput p1, p0, Landroid/view/accessibility/AccessibilityRecord;->mScrollX:I

    .line 453
    return-void
.end method

.method public setScrollY(I)V
    .locals 0
    .param p1, "scrollY"    # I

    .line 470
    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityRecord;->enforceNotSealed()V

    .line 471
    iput p1, p0, Landroid/view/accessibility/AccessibilityRecord;->mScrollY:I

    .line 472
    return-void
.end method

.method public setScrollable(Z)V
    .locals 1
    .param p1, "scrollable"    # Z

    .line 311
    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityRecord;->enforceNotSealed()V

    .line 312
    const/16 v0, 0x100

    invoke-direct {p0, v0, p1}, Landroid/view/accessibility/AccessibilityRecord;->setBooleanProperty(IZ)V

    .line 313
    return-void
.end method

.method public setSealed(Z)V
    .locals 0
    .param p1, "sealed"    # Z

    .line 724
    iput-boolean p1, p0, Landroid/view/accessibility/AccessibilityRecord;->mSealed:Z

    .line 725
    return-void
.end method

.method public setSource(Landroid/view/View;)V
    .locals 1
    .param p1, "source"    # Landroid/view/View;

    .line 127
    const/4 v0, -0x1

    invoke-virtual {p0, p1, v0}, Landroid/view/accessibility/AccessibilityRecord;->setSource(Landroid/view/View;I)V

    .line 128
    return-void
.end method

.method public setSource(Landroid/view/View;I)V
    .locals 4
    .param p1, "root"    # Landroid/view/View;
    .param p2, "virtualDescendantId"    # I

    .line 145
    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityRecord;->enforceNotSealed()V

    .line 146
    const/4 v0, 0x1

    .line 147
    .local v0, "important":Z
    const v1, 0x7fffffff

    .line 148
    .local v1, "rootViewId":I
    const/4 v2, -0x1

    iput v2, p0, Landroid/view/accessibility/AccessibilityRecord;->mSourceWindowId:I

    .line 149
    if-eqz p1, :cond_0

    .line 150
    invoke-virtual {p1}, Landroid/view/View;->isImportantForAccessibility()Z

    move-result v0

    .line 151
    invoke-virtual {p1}, Landroid/view/View;->getAccessibilityViewId()I

    move-result v1

    .line 152
    invoke-virtual {p1}, Landroid/view/View;->getAccessibilityWindowId()I

    move-result v2

    iput v2, p0, Landroid/view/accessibility/AccessibilityRecord;->mSourceWindowId:I

    .line 154
    :cond_0
    const/16 v2, 0x200

    invoke-direct {p0, v2, v0}, Landroid/view/accessibility/AccessibilityRecord;->setBooleanProperty(IZ)V

    .line 155
    invoke-static {v1, p2}, Landroid/view/accessibility/AccessibilityNodeInfo;->makeNodeId(II)J

    move-result-wide v2

    iput-wide v2, p0, Landroid/view/accessibility/AccessibilityRecord;->mSourceNodeId:J

    .line 156
    return-void
.end method

.method public setSourceNodeId(J)V
    .locals 0
    .param p1, "sourceNodeId"    # J

    .line 165
    iput-wide p1, p0, Landroid/view/accessibility/AccessibilityRecord;->mSourceNodeId:J

    .line 166
    return-void
.end method

.method public setToIndex(I)V
    .locals 0
    .param p1, "toIndex"    # I

    .line 432
    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityRecord;->enforceNotSealed()V

    .line 433
    iput p1, p0, Landroid/view/accessibility/AccessibilityRecord;->mToIndex:I

    .line 434
    return-void
.end method

.method public setWindowId(I)V
    .locals 0
    .param p1, "windowId"    # I

    .line 198
    iput p1, p0, Landroid/view/accessibility/AccessibilityRecord;->mSourceWindowId:I

    .line 199
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 895
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v0}, Landroid/view/accessibility/AccessibilityRecord;->appendTo(Ljava/lang/StringBuilder;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
