.class public Landroid/widget/ReverseExpandableListView;
.super Landroid/widget/ListView;
.source "ReverseExpandableListView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/widget/ReverseExpandableListView$SavedState;,
        Landroid/widget/ReverseExpandableListView$ExpandableListContextMenuInfo;,
        Landroid/widget/ReverseExpandableListView$OnChildClickListener;,
        Landroid/widget/ReverseExpandableListView$OnGroupClickListener;,
        Landroid/widget/ReverseExpandableListView$OnGroupExpandListener;,
        Landroid/widget/ReverseExpandableListView$OnGroupCollapseListener;
    }
.end annotation


# static fields
.field public static final CHILD_INDICATOR_INHERIT:I = -0x1

.field private static final CHILD_LAST_STATE_SET:[I

.field private static final EMPTY_STATE_SET:[I

.field private static final GROUP_EMPTY_STATE_SET:[I

.field private static final GROUP_EXPANDED_EMPTY_STATE_SET:[I

.field private static final GROUP_EXPANDED_STATE_SET:[I

.field private static final GROUP_STATE_SETS:[[I

.field private static final INDICATOR_UNDEFINED:I = -0x2

.field private static final PACKED_POSITION_INT_MASK_CHILD:J = -0x1L

.field private static final PACKED_POSITION_INT_MASK_GROUP:J = 0x7fffffffL

.field private static final PACKED_POSITION_MASK_CHILD:J = 0xffffffffL

.field private static final PACKED_POSITION_MASK_GROUP:J = 0x7fffffff00000000L

.field private static final PACKED_POSITION_MASK_TYPE:J = -0x8000000000000000L

.field private static final PACKED_POSITION_SHIFT_GROUP:J = 0x20L

.field private static final PACKED_POSITION_SHIFT_TYPE:J = 0x3fL

.field public static final PACKED_POSITION_TYPE_CHILD:I = 0x1

.field public static final PACKED_POSITION_TYPE_GROUP:I = 0x0

.field public static final PACKED_POSITION_TYPE_NULL:I = 0x2

.field public static final PACKED_POSITION_VALUE_NULL:J = 0xffffffffL


# instance fields
.field private mAdapter:Landroid/widget/ExpandableListAdapter;

.field private mChildDivider:Landroid/graphics/drawable/Drawable;

.field private mChildIndicator:Landroid/graphics/drawable/Drawable;

.field private mChildIndicatorEnd:I

.field private mChildIndicatorLeft:I

.field private mChildIndicatorRight:I

.field private mChildIndicatorStart:I

.field private mConnector:Landroid/widget/ReverseExpandableListConnector;

.field private mGroupIndicator:Landroid/graphics/drawable/Drawable;

.field private mIndicatorEnd:I

.field private mIndicatorLeft:I

.field private final mIndicatorRect:Landroid/graphics/Rect;

.field private mIndicatorRight:I

.field private mIndicatorStart:I

.field private mOnChildClickListener:Landroid/widget/ReverseExpandableListView$OnChildClickListener;

.field private mOnGroupClickListener:Landroid/widget/ReverseExpandableListView$OnGroupClickListener;

.field private mOnGroupCollapseListener:Landroid/widget/ReverseExpandableListView$OnGroupCollapseListener;

.field private mOnGroupExpandListener:Landroid/widget/ReverseExpandableListView$OnGroupExpandListener;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 188
    const/4 v0, 0x0

    new-array v1, v0, [I

    sput-object v1, Landroid/widget/ReverseExpandableListView;->EMPTY_STATE_SET:[I

    .line 191
    const/4 v1, 0x1

    new-array v2, v1, [I

    const v3, 0x10100a8

    aput v3, v2, v0

    sput-object v2, Landroid/widget/ReverseExpandableListView;->GROUP_EXPANDED_STATE_SET:[I

    .line 195
    new-array v2, v1, [I

    const v3, 0x10100a9

    aput v3, v2, v0

    sput-object v2, Landroid/widget/ReverseExpandableListView;->GROUP_EMPTY_STATE_SET:[I

    .line 199
    const/4 v2, 0x2

    new-array v3, v2, [I

    fill-array-data v3, :array_0

    sput-object v3, Landroid/widget/ReverseExpandableListView;->GROUP_EXPANDED_EMPTY_STATE_SET:[I

    .line 203
    const/4 v3, 0x4

    new-array v3, v3, [[I

    sget-object v4, Landroid/widget/ReverseExpandableListView;->EMPTY_STATE_SET:[I

    aput-object v4, v3, v0

    sget-object v4, Landroid/widget/ReverseExpandableListView;->GROUP_EXPANDED_STATE_SET:[I

    aput-object v4, v3, v1

    sget-object v4, Landroid/widget/ReverseExpandableListView;->GROUP_EMPTY_STATE_SET:[I

    aput-object v4, v3, v2

    sget-object v2, Landroid/widget/ReverseExpandableListView;->GROUP_EXPANDED_EMPTY_STATE_SET:[I

    const/4 v4, 0x3

    aput-object v2, v3, v4

    sput-object v3, Landroid/widget/ReverseExpandableListView;->GROUP_STATE_SETS:[[I

    .line 211
    new-array v1, v1, [I

    const v2, 0x10100a6

    aput v2, v1, v0

    sput-object v1, Landroid/widget/ReverseExpandableListView;->CHILD_LAST_STATE_SET:[I

    return-void

    :array_0
    .array-data 4
        0x10100a8
        0x10100a9
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 221
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/widget/ReverseExpandableListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 222
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 225
    const v0, 0x101006f

    invoke-direct {p0, p1, p2, v0}, Landroid/widget/ReverseExpandableListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 226
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .line 229
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Landroid/widget/ReverseExpandableListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 230
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I
    .param p4, "defStyleRes"    # I

    .line 234
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/ListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 218
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/widget/ReverseExpandableListView;->mIndicatorRect:Landroid/graphics/Rect;

    .line 236
    sget-object v0, Lcom/android/internal/R$styleable;->ExpandableListView:[I

    invoke-virtual {p1, p2, v0, p3, p4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 239
    .local v0, "a":Landroid/content/res/TypedArray;
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iput-object v2, p0, Landroid/widget/ReverseExpandableListView;->mGroupIndicator:Landroid/graphics/drawable/Drawable;

    .line 241
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iput-object v2, p0, Landroid/widget/ReverseExpandableListView;->mChildIndicator:Landroid/graphics/drawable/Drawable;

    .line 243
    const/4 v2, 0x2

    invoke-virtual {v0, v2, v1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v2

    iput v2, p0, Landroid/widget/ReverseExpandableListView;->mIndicatorLeft:I

    .line 245
    const/4 v2, 0x3

    invoke-virtual {v0, v2, v1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    iput v1, p0, Landroid/widget/ReverseExpandableListView;->mIndicatorRight:I

    .line 247
    iget v1, p0, Landroid/widget/ReverseExpandableListView;->mIndicatorRight:I

    if-nez v1, :cond_0

    iget-object v1, p0, Landroid/widget/ReverseExpandableListView;->mGroupIndicator:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_0

    .line 248
    iget v1, p0, Landroid/widget/ReverseExpandableListView;->mIndicatorLeft:I

    iget-object v2, p0, Landroid/widget/ReverseExpandableListView;->mGroupIndicator:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v2

    add-int/2addr v1, v2

    iput v1, p0, Landroid/widget/ReverseExpandableListView;->mIndicatorRight:I

    .line 250
    :cond_0
    const/4 v1, 0x4

    const/4 v2, -0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    iput v1, p0, Landroid/widget/ReverseExpandableListView;->mChildIndicatorLeft:I

    .line 253
    const/4 v1, 0x5

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    iput v1, p0, Landroid/widget/ReverseExpandableListView;->mChildIndicatorRight:I

    .line 256
    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Landroid/widget/ReverseExpandableListView;->mChildDivider:Landroid/graphics/drawable/Drawable;

    .line 259
    invoke-direct {p0}, Landroid/widget/ReverseExpandableListView;->isRtlCompatibilityMode()Z

    move-result v1

    if-nez v1, :cond_1

    .line 260
    const/4 v1, 0x7

    const/4 v3, -0x2

    invoke-virtual {v0, v1, v3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    iput v1, p0, Landroid/widget/ReverseExpandableListView;->mIndicatorStart:I

    .line 263
    const/16 v1, 0x8

    invoke-virtual {v0, v1, v3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    iput v1, p0, Landroid/widget/ReverseExpandableListView;->mIndicatorEnd:I

    .line 267
    const/16 v1, 0x9

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    iput v1, p0, Landroid/widget/ReverseExpandableListView;->mChildIndicatorStart:I

    .line 270
    const/16 v1, 0xa

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    iput v1, p0, Landroid/widget/ReverseExpandableListView;->mChildIndicatorEnd:I

    .line 275
    :cond_1
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 276
    return-void
.end method

.method private getAbsoluteFlatPosition(I)I
    .locals 1
    .param p1, "flatListPosition"    # I

    .line 639
    invoke-virtual {p0}, Landroid/widget/ReverseExpandableListView;->getHeaderViewsCount()I

    move-result v0

    add-int/2addr v0, p1

    return v0
.end method

.method private getChildOrGroupId(Landroid/widget/ExpandableListPosition;)J
    .locals 3
    .param p1, "position"    # Landroid/widget/ExpandableListPosition;

    .line 1142
    iget v0, p1, Landroid/widget/ExpandableListPosition;->type:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 1143
    iget-object v0, p0, Landroid/widget/ReverseExpandableListView;->mAdapter:Landroid/widget/ExpandableListAdapter;

    iget v1, p1, Landroid/widget/ExpandableListPosition;->groupPos:I

    iget v2, p1, Landroid/widget/ExpandableListPosition;->childPos:I

    invoke-interface {v0, v1, v2}, Landroid/widget/ExpandableListAdapter;->getChildId(II)J

    move-result-wide v0

    return-wide v0

    .line 1145
    :cond_0
    iget-object v0, p0, Landroid/widget/ReverseExpandableListView;->mAdapter:Landroid/widget/ExpandableListAdapter;

    iget v1, p1, Landroid/widget/ExpandableListPosition;->groupPos:I

    invoke-interface {v0, v1}, Landroid/widget/ExpandableListAdapter;->getGroupId(I)J

    move-result-wide v0

    return-wide v0
.end method

.method private getFlatPositionForConnector(I)I
    .locals 1
    .param p1, "flatListPosition"    # I

    .line 628
    invoke-virtual {p0}, Landroid/widget/ReverseExpandableListView;->getHeaderViewsCount()I

    move-result v0

    sub-int v0, p1, v0

    return v0
.end method

.method private getIndicator(Landroid/widget/ReverseExpandableListConnector$PositionMetadata;)Landroid/graphics/drawable/Drawable;
    .locals 5
    .param p1, "pos"    # Landroid/widget/ReverseExpandableListConnector$PositionMetadata;

    .line 478
    iget-object v0, p1, Landroid/widget/ReverseExpandableListConnector$PositionMetadata;->position:Landroid/widget/ExpandableListPosition;

    iget v0, v0, Landroid/widget/ExpandableListPosition;->type:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_3

    .line 479
    iget-object v0, p0, Landroid/widget/ReverseExpandableListView;->mGroupIndicator:Landroid/graphics/drawable/Drawable;

    .line 481
    .local v0, "indicator":Landroid/graphics/drawable/Drawable;
    if-eqz v0, :cond_5

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 485
    iget-object v2, p1, Landroid/widget/ReverseExpandableListConnector$PositionMetadata;->groupMetadata:Landroid/widget/ReverseExpandableListConnector$GroupMetadata;

    const/4 v3, 0x0

    if-eqz v2, :cond_1

    iget-object v2, p1, Landroid/widget/ReverseExpandableListConnector$PositionMetadata;->groupMetadata:Landroid/widget/ReverseExpandableListConnector$GroupMetadata;

    iget v2, v2, Landroid/widget/ReverseExpandableListConnector$GroupMetadata;->lastChildFlPos:I

    iget-object v4, p1, Landroid/widget/ReverseExpandableListConnector$PositionMetadata;->groupMetadata:Landroid/widget/ReverseExpandableListConnector$GroupMetadata;

    iget v4, v4, Landroid/widget/ReverseExpandableListConnector$GroupMetadata;->flPos:I

    if-ne v2, v4, :cond_0

    goto :goto_0

    :cond_0
    move v2, v3

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v2, 0x1

    .line 489
    .local v2, "isEmpty":Z
    :goto_1
    invoke-virtual {p1}, Landroid/widget/ReverseExpandableListConnector$PositionMetadata;->isExpanded()Z

    move-result v4

    .line 490
    if-eqz v2, :cond_2

    goto :goto_2

    :cond_2
    move v1, v3

    :goto_2
    or-int/2addr v1, v4

    .line 491
    .local v1, "stateSetIndex":I
    sget-object v3, Landroid/widget/ReverseExpandableListView;->GROUP_STATE_SETS:[[I

    aget-object v3, v3, v1

    invoke-virtual {v0, v3}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 492
    .end local v1    # "stateSetIndex":I
    .end local v2    # "isEmpty":Z
    goto :goto_4

    .line 494
    .end local v0    # "indicator":Landroid/graphics/drawable/Drawable;
    :cond_3
    iget-object v0, p0, Landroid/widget/ReverseExpandableListView;->mChildIndicator:Landroid/graphics/drawable/Drawable;

    .line 496
    .restart local v0    # "indicator":Landroid/graphics/drawable/Drawable;
    if-eqz v0, :cond_5

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 498
    iget-object v1, p1, Landroid/widget/ReverseExpandableListConnector$PositionMetadata;->position:Landroid/widget/ExpandableListPosition;

    iget v1, v1, Landroid/widget/ExpandableListPosition;->flatListPos:I

    iget-object v2, p1, Landroid/widget/ReverseExpandableListConnector$PositionMetadata;->groupMetadata:Landroid/widget/ReverseExpandableListConnector$GroupMetadata;

    iget v2, v2, Landroid/widget/ReverseExpandableListConnector$GroupMetadata;->lastChildFlPos:I

    if-ne v1, v2, :cond_4

    .line 499
    sget-object v1, Landroid/widget/ReverseExpandableListView;->CHILD_LAST_STATE_SET:[I

    goto :goto_3

    .line 500
    :cond_4
    sget-object v1, Landroid/widget/ReverseExpandableListView;->EMPTY_STATE_SET:[I

    .line 501
    .local v1, "stateSet":[I
    :goto_3
    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 505
    .end local v1    # "stateSet":[I
    :cond_5
    :goto_4
    return-object v0
.end method

.method public static getPackedPositionChild(J)I
    .locals 8
    .param p0, "packedPosition"    # J

    .line 1070
    const-wide v0, 0xffffffffL

    cmp-long v2, p0, v0

    const/4 v3, -0x1

    if-nez v2, :cond_0

    return v3

    .line 1073
    :cond_0
    const-wide/high16 v4, -0x8000000000000000L

    and-long v6, p0, v4

    cmp-long v2, v6, v4

    if-eqz v2, :cond_1

    return v3

    .line 1075
    :cond_1
    and-long/2addr v0, p0

    long-to-int v0, v0

    return v0
.end method

.method public static getPackedPositionForChild(II)J
    .locals 6
    .param p0, "groupPosition"    # I
    .param p1, "childPosition"    # I

    .line 1095
    int-to-long v0, p0

    const-wide/32 v2, 0x7fffffff

    and-long/2addr v0, v2

    const/16 v2, 0x20

    shl-long/2addr v0, v2

    const-wide/high16 v2, -0x8000000000000000L

    or-long/2addr v0, v2

    int-to-long v2, p1

    const-wide/16 v4, -0x1

    and-long/2addr v2, v4

    or-long/2addr v0, v2

    return-wide v0
.end method

.method public static getPackedPositionForGroup(I)J
    .locals 4
    .param p0, "groupPosition"    # I

    .line 1110
    int-to-long v0, p0

    const-wide/32 v2, 0x7fffffff

    and-long/2addr v0, v2

    const/16 v2, 0x20

    shl-long/2addr v0, v2

    return-wide v0
.end method

.method public static getPackedPositionGroup(J)I
    .locals 3
    .param p0, "packedPosition"    # J

    .line 1051
    const-wide v0, 0xffffffffL

    cmp-long v0, p0, v0

    if-nez v0, :cond_0

    const/4 v0, -0x1

    return v0

    .line 1053
    :cond_0
    const-wide v0, 0x7fffffff00000000L

    and-long/2addr v0, p0

    const/16 v2, 0x20

    shr-long/2addr v0, v2

    long-to-int v0, v0

    return v0
.end method

.method public static getPackedPositionType(J)I
    .locals 4
    .param p0, "packedPosition"    # J

    .line 1031
    const-wide v0, 0xffffffffL

    cmp-long v0, p0, v0

    if-nez v0, :cond_0

    .line 1032
    const/4 v0, 0x2

    return v0

    .line 1035
    :cond_0
    const-wide/high16 v0, -0x8000000000000000L

    and-long v2, p0, v0

    cmp-long v0, v2, v0

    if-nez v0, :cond_1

    .line 1036
    const/4 v0, 0x1

    goto :goto_0

    .line 1037
    :cond_1
    const/4 v0, 0x0

    .line 1035
    :goto_0
    return v0
.end method

.method private hasRtlSupport()Z
    .locals 1

    .line 291
    iget-object v0, p0, Landroid/widget/ReverseExpandableListView;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/pm/ApplicationInfo;->hasRtlSupport()Z

    move-result v0

    return v0
.end method

.method private isHeaderOrFooterPosition(I)Z
    .locals 2
    .param p1, "position"    # I

    .line 616
    iget v0, p0, Landroid/widget/ReverseExpandableListView;->mItemCount:I

    invoke-virtual {p0}, Landroid/widget/ReverseExpandableListView;->getFooterViewsCount()I

    move-result v1

    sub-int/2addr v0, v1

    .line 617
    .local v0, "footerViewsStart":I
    invoke-virtual {p0}, Landroid/widget/ReverseExpandableListView;->getHeaderViewsCount()I

    move-result v1

    if-lt p1, v1, :cond_1

    if-lt p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v1, 0x1

    :goto_1
    return v1
.end method

.method private isRtlCompatibilityMode()Z
    .locals 2

    .line 283
    iget-object v0, p0, Landroid/widget/ReverseExpandableListView;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    .line 284
    .local v0, "targetSdkVersion":I
    const/16 v1, 0x11

    if-lt v0, v1, :cond_1

    invoke-direct {p0}, Landroid/widget/ReverseExpandableListView;->hasRtlSupport()Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v1, 0x1

    :goto_1
    return v1
.end method

.method private resolveChildIndicator()V
    .locals 3

    .line 330
    invoke-virtual {p0}, Landroid/widget/ReverseExpandableListView;->isLayoutRtl()Z

    move-result v0

    .line 331
    .local v0, "isLayoutRtl":Z
    const/4 v1, -0x1

    if-eqz v0, :cond_1

    .line 332
    iget v2, p0, Landroid/widget/ReverseExpandableListView;->mChildIndicatorStart:I

    if-lt v2, v1, :cond_0

    .line 333
    iget v2, p0, Landroid/widget/ReverseExpandableListView;->mChildIndicatorStart:I

    iput v2, p0, Landroid/widget/ReverseExpandableListView;->mChildIndicatorRight:I

    .line 335
    :cond_0
    iget v2, p0, Landroid/widget/ReverseExpandableListView;->mChildIndicatorEnd:I

    if-lt v2, v1, :cond_3

    .line 336
    iget v1, p0, Landroid/widget/ReverseExpandableListView;->mChildIndicatorEnd:I

    iput v1, p0, Landroid/widget/ReverseExpandableListView;->mChildIndicatorLeft:I

    goto :goto_0

    .line 339
    :cond_1
    iget v2, p0, Landroid/widget/ReverseExpandableListView;->mChildIndicatorStart:I

    if-lt v2, v1, :cond_2

    .line 340
    iget v2, p0, Landroid/widget/ReverseExpandableListView;->mChildIndicatorStart:I

    iput v2, p0, Landroid/widget/ReverseExpandableListView;->mChildIndicatorLeft:I

    .line 342
    :cond_2
    iget v2, p0, Landroid/widget/ReverseExpandableListView;->mChildIndicatorEnd:I

    if-lt v2, v1, :cond_3

    .line 343
    iget v1, p0, Landroid/widget/ReverseExpandableListView;->mChildIndicatorEnd:I

    iput v1, p0, Landroid/widget/ReverseExpandableListView;->mChildIndicatorRight:I

    .line 346
    :cond_3
    :goto_0
    return-void
.end method

.method private resolveIndicator()V
    .locals 3

    .line 304
    invoke-virtual {p0}, Landroid/widget/ReverseExpandableListView;->isLayoutRtl()Z

    move-result v0

    .line 305
    .local v0, "isLayoutRtl":Z
    if-eqz v0, :cond_1

    .line 306
    iget v1, p0, Landroid/widget/ReverseExpandableListView;->mIndicatorStart:I

    if-ltz v1, :cond_0

    .line 307
    iget v1, p0, Landroid/widget/ReverseExpandableListView;->mIndicatorStart:I

    iput v1, p0, Landroid/widget/ReverseExpandableListView;->mIndicatorRight:I

    .line 309
    :cond_0
    iget v1, p0, Landroid/widget/ReverseExpandableListView;->mIndicatorEnd:I

    if-ltz v1, :cond_3

    .line 310
    iget v1, p0, Landroid/widget/ReverseExpandableListView;->mIndicatorEnd:I

    iput v1, p0, Landroid/widget/ReverseExpandableListView;->mIndicatorLeft:I

    goto :goto_0

    .line 313
    :cond_1
    iget v1, p0, Landroid/widget/ReverseExpandableListView;->mIndicatorStart:I

    if-ltz v1, :cond_2

    .line 314
    iget v1, p0, Landroid/widget/ReverseExpandableListView;->mIndicatorStart:I

    iput v1, p0, Landroid/widget/ReverseExpandableListView;->mIndicatorLeft:I

    .line 316
    :cond_2
    iget v1, p0, Landroid/widget/ReverseExpandableListView;->mIndicatorEnd:I

    if-ltz v1, :cond_3

    .line 317
    iget v1, p0, Landroid/widget/ReverseExpandableListView;->mIndicatorEnd:I

    iput v1, p0, Landroid/widget/ReverseExpandableListView;->mIndicatorRight:I

    .line 320
    :cond_3
    :goto_0
    iget v1, p0, Landroid/widget/ReverseExpandableListView;->mIndicatorRight:I

    if-nez v1, :cond_4

    iget-object v1, p0, Landroid/widget/ReverseExpandableListView;->mGroupIndicator:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_4

    .line 321
    iget v1, p0, Landroid/widget/ReverseExpandableListView;->mIndicatorLeft:I

    iget-object v2, p0, Landroid/widget/ReverseExpandableListView;->mGroupIndicator:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v2

    add-int/2addr v1, v2

    iput v1, p0, Landroid/widget/ReverseExpandableListView;->mIndicatorRight:I

    .line 323
    :cond_4
    return-void
.end method


# virtual methods
.method public collapseGroup(I)Z
    .locals 2
    .param p1, "groupPos"    # I

    .line 775
    iget-object v0, p0, Landroid/widget/ReverseExpandableListView;->mConnector:Landroid/widget/ReverseExpandableListConnector;

    invoke-virtual {v0, p1}, Landroid/widget/ReverseExpandableListConnector;->collapseGroup(I)Z

    move-result v0

    .line 777
    .local v0, "retValue":Z
    iget-object v1, p0, Landroid/widget/ReverseExpandableListView;->mOnGroupCollapseListener:Landroid/widget/ReverseExpandableListView$OnGroupCollapseListener;

    if-eqz v1, :cond_0

    .line 778
    iget-object v1, p0, Landroid/widget/ReverseExpandableListView;->mOnGroupCollapseListener:Landroid/widget/ReverseExpandableListView$OnGroupCollapseListener;

    invoke-interface {v1, p1}, Landroid/widget/ReverseExpandableListView$OnGroupCollapseListener;->onGroupCollapse(I)V

    .line 781
    :cond_0
    return v0
.end method

.method createContextMenuInfo(Landroid/view/View;IJ)Landroid/view/ContextMenu$ContextMenuInfo;
    .locals 17
    .param p1, "view"    # Landroid/view/View;
    .param p2, "flatListPosition"    # I
    .param p3, "id"    # J

    move-object/from16 v0, p0

    move/from16 v1, p2

    .line 1116
    invoke-direct {v0, v1}, Landroid/widget/ReverseExpandableListView;->isHeaderOrFooterPosition(I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1118
    new-instance v2, Landroid/widget/AdapterView$AdapterContextMenuInfo;

    move-object/from16 v9, p1

    move-wide/from16 v3, p3

    invoke-direct {v2, v9, v1, v3, v4}, Landroid/widget/AdapterView$AdapterContextMenuInfo;-><init>(Landroid/view/View;IJ)V

    return-object v2

    .line 1121
    :cond_0
    move-object/from16 v9, p1

    move-wide/from16 v3, p3

    invoke-direct {v0, v1}, Landroid/widget/ReverseExpandableListView;->getFlatPositionForConnector(I)I

    move-result v2

    .line 1122
    .local v2, "adjustedPosition":I
    iget-object v5, v0, Landroid/widget/ReverseExpandableListView;->mConnector:Landroid/widget/ReverseExpandableListConnector;

    invoke-virtual {v5, v2}, Landroid/widget/ReverseExpandableListConnector;->getUnflattenedPos(I)Landroid/widget/ReverseExpandableListConnector$PositionMetadata;

    move-result-object v10

    .line 1123
    .local v10, "pm":Landroid/widget/ReverseExpandableListConnector$PositionMetadata;
    iget-object v11, v10, Landroid/widget/ReverseExpandableListConnector$PositionMetadata;->position:Landroid/widget/ExpandableListPosition;

    .line 1125
    .local v11, "pos":Landroid/widget/ExpandableListPosition;
    invoke-direct {v0, v11}, Landroid/widget/ReverseExpandableListView;->getChildOrGroupId(Landroid/widget/ExpandableListPosition;)J

    move-result-wide v12

    .line 1126
    .end local p3    # "id":J
    .local v12, "id":J
    invoke-virtual {v11}, Landroid/widget/ExpandableListPosition;->getPackedPosition()J

    move-result-wide v14

    .line 1128
    .local v14, "packedPosition":J
    invoke-virtual {v10}, Landroid/widget/ReverseExpandableListConnector$PositionMetadata;->recycle()V

    .line 1130
    new-instance v16, Landroid/widget/ReverseExpandableListView$ExpandableListContextMenuInfo;

    move-object/from16 v3, v16

    move-object v4, v9

    move-wide v5, v14

    move-wide v7, v12

    invoke-direct/range {v3 .. v8}, Landroid/widget/ReverseExpandableListView$ExpandableListContextMenuInfo;-><init>(Landroid/view/View;JJ)V

    return-object v16
.end method

.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 21
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    move-object/from16 v0, p0

    .line 351
    move-object/from16 v1, p1

    invoke-super/range {p0 .. p1}, Landroid/widget/ListView;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 353
    iget-object v2, v0, Landroid/widget/ReverseExpandableListView;->mChildIndicator:Landroid/graphics/drawable/Drawable;

    if-nez v2, :cond_0

    iget-object v2, v0, Landroid/widget/ReverseExpandableListView;->mGroupIndicator:Landroid/graphics/drawable/Drawable;

    if-nez v2, :cond_0

    .line 354
    return-void

    .line 357
    :cond_0
    const/4 v2, 0x0

    .line 358
    .local v2, "saveCount":I
    iget v3, v0, Landroid/widget/ReverseExpandableListView;->mGroupFlags:I

    const/16 v4, 0x22

    and-int/2addr v3, v4

    const/4 v5, 0x1

    if-ne v3, v4, :cond_1

    move v3, v5

    goto :goto_0

    :cond_1
    const/4 v3, 0x0

    .line 359
    .local v3, "clipToPadding":Z
    :goto_0
    if-eqz v3, :cond_2

    .line 360
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    move-result v2

    .line 361
    iget v4, v0, Landroid/widget/ReverseExpandableListView;->mScrollX:I

    .line 362
    .local v4, "scrollX":I
    iget v6, v0, Landroid/widget/ReverseExpandableListView;->mScrollY:I

    .line 363
    .local v6, "scrollY":I
    iget v7, v0, Landroid/widget/ReverseExpandableListView;->mPaddingLeft:I

    add-int/2addr v7, v4

    iget v8, v0, Landroid/widget/ReverseExpandableListView;->mPaddingTop:I

    add-int/2addr v8, v6

    iget v9, v0, Landroid/widget/ReverseExpandableListView;->mRight:I

    add-int/2addr v9, v4

    iget v10, v0, Landroid/widget/ReverseExpandableListView;->mLeft:I

    sub-int/2addr v9, v10

    iget v10, v0, Landroid/widget/ReverseExpandableListView;->mPaddingRight:I

    sub-int/2addr v9, v10

    iget v10, v0, Landroid/widget/ReverseExpandableListView;->mBottom:I

    add-int/2addr v10, v6

    iget v11, v0, Landroid/widget/ReverseExpandableListView;->mTop:I

    sub-int/2addr v10, v11

    iget v11, v0, Landroid/widget/ReverseExpandableListView;->mPaddingBottom:I

    sub-int/2addr v10, v11

    invoke-virtual {v1, v7, v8, v9, v10}, Landroid/graphics/Canvas;->clipRect(IIII)Z

    .line 368
    .end local v4    # "scrollX":I
    .end local v6    # "scrollY":I
    :cond_2
    invoke-virtual/range {p0 .. p0}, Landroid/widget/ReverseExpandableListView;->getHeaderViewsCount()I

    move-result v4

    .line 370
    .local v4, "headerViewsCount":I
    iget v6, v0, Landroid/widget/ReverseExpandableListView;->mItemCount:I

    invoke-virtual/range {p0 .. p0}, Landroid/widget/ReverseExpandableListView;->getFooterViewsCount()I

    move-result v7

    sub-int/2addr v6, v7

    sub-int/2addr v6, v4

    sub-int/2addr v6, v5

    .line 372
    .local v6, "lastChildFlPos":I
    iget v7, v0, Landroid/widget/ReverseExpandableListView;->mBottom:I

    .line 380
    .local v7, "myB":I
    const/4 v8, -0x4

    .line 382
    .local v8, "lastItemType":I
    iget-object v9, v0, Landroid/widget/ReverseExpandableListView;->mIndicatorRect:Landroid/graphics/Rect;

    .line 387
    .local v9, "indicatorRect":Landroid/graphics/Rect;
    invoke-virtual/range {p0 .. p0}, Landroid/widget/ReverseExpandableListView;->getChildCount()I

    move-result v10

    .line 388
    .local v10, "childCount":I
    const/4 v11, 0x0

    .local v11, "i":I
    iget v12, v0, Landroid/widget/ReverseExpandableListView;->mFirstPosition:I

    sub-int/2addr v12, v4

    .local v12, "childFlPos":I
    :goto_1
    if-ge v11, v10, :cond_e

    .line 391
    if-gez v12, :cond_3

    .line 393
    nop

    .line 389
    .end local v4    # "headerViewsCount":I
    .end local v6    # "lastChildFlPos":I
    .local v18, "headerViewsCount":I
    .local v19, "lastChildFlPos":I
    :goto_2
    move/from16 v18, v4

    move/from16 v19, v6

    goto/16 :goto_9

    .line 394
    .end local v18    # "headerViewsCount":I
    .end local v19    # "lastChildFlPos":I
    .restart local v4    # "headerViewsCount":I
    .restart local v6    # "lastChildFlPos":I
    :cond_3
    if-le v12, v6, :cond_4

    .line 396
    nop

    .line 462
    move/from16 v18, v4

    move/from16 v19, v6

    goto/16 :goto_a

    .line 399
    :cond_4
    invoke-virtual {v0, v11}, Landroid/widget/ReverseExpandableListView;->getChildAt(I)Landroid/view/View;

    move-result-object v13

    .line 400
    .local v13, "item":Landroid/view/View;
    invoke-virtual {v13}, Landroid/view/View;->getTop()I

    move-result v14

    .line 401
    .local v14, "t":I
    invoke-virtual {v13}, Landroid/view/View;->getBottom()I

    move-result v15

    .line 404
    .local v15, "b":I
    if-ltz v15, :cond_d

    if-le v14, v7, :cond_5

    .end local v13    # "item":Landroid/view/View;
    .end local v14    # "t":I
    .end local v15    # "b":I
    goto :goto_2

    .line 407
    .restart local v13    # "item":Landroid/view/View;
    .restart local v14    # "t":I
    .restart local v15    # "b":I
    :cond_5
    iget-object v5, v0, Landroid/widget/ReverseExpandableListView;->mConnector:Landroid/widget/ReverseExpandableListConnector;

    invoke-virtual {v5, v12}, Landroid/widget/ReverseExpandableListConnector;->getUnflattenedPos(I)Landroid/widget/ReverseExpandableListConnector$PositionMetadata;

    move-result-object v5

    .line 409
    .local v5, "pos":Landroid/widget/ReverseExpandableListConnector$PositionMetadata;
    invoke-virtual/range {p0 .. p0}, Landroid/widget/ReverseExpandableListView;->isLayoutRtl()Z

    move-result v16

    .line 410
    .local v16, "isLayoutRtl":Z
    invoke-virtual/range {p0 .. p0}, Landroid/widget/ReverseExpandableListView;->getWidth()I

    move-result v17

    .line 414
    .local v17, "width":I
    move/from16 v18, v4

    iget-object v4, v5, Landroid/widget/ReverseExpandableListConnector$PositionMetadata;->position:Landroid/widget/ExpandableListPosition;

    .end local v4    # "headerViewsCount":I
    .restart local v18    # "headerViewsCount":I
    iget v4, v4, Landroid/widget/ExpandableListPosition;->type:I

    if-eq v4, v8, :cond_a

    .line 415
    iget-object v4, v5, Landroid/widget/ReverseExpandableListConnector$PositionMetadata;->position:Landroid/widget/ExpandableListPosition;

    iget v4, v4, Landroid/widget/ExpandableListPosition;->type:I

    move/from16 v19, v6

    const/4 v6, 0x1

    if-ne v4, v6, :cond_8

    .line 416
    .end local v6    # "lastChildFlPos":I
    .restart local v19    # "lastChildFlPos":I
    iget v4, v0, Landroid/widget/ReverseExpandableListView;->mChildIndicatorLeft:I

    const/4 v6, -0x1

    if-ne v4, v6, :cond_6

    .line 417
    iget v4, v0, Landroid/widget/ReverseExpandableListView;->mIndicatorLeft:I

    goto :goto_3

    :cond_6
    iget v4, v0, Landroid/widget/ReverseExpandableListView;->mChildIndicatorLeft:I

    :goto_3
    iput v4, v9, Landroid/graphics/Rect;->left:I

    .line 418
    iget v4, v0, Landroid/widget/ReverseExpandableListView;->mChildIndicatorRight:I

    if-ne v4, v6, :cond_7

    .line 419
    iget v4, v0, Landroid/widget/ReverseExpandableListView;->mIndicatorRight:I

    goto :goto_4

    :cond_7
    iget v4, v0, Landroid/widget/ReverseExpandableListView;->mChildIndicatorRight:I

    :goto_4
    iput v4, v9, Landroid/graphics/Rect;->right:I

    goto :goto_5

    .line 421
    :cond_8
    iget v4, v0, Landroid/widget/ReverseExpandableListView;->mIndicatorLeft:I

    iput v4, v9, Landroid/graphics/Rect;->left:I

    .line 422
    iget v4, v0, Landroid/widget/ReverseExpandableListView;->mIndicatorRight:I

    iput v4, v9, Landroid/graphics/Rect;->right:I

    .line 425
    :goto_5
    if-eqz v16, :cond_9

    .line 426
    iget v4, v9, Landroid/graphics/Rect;->left:I

    .line 427
    .local v4, "temp":I
    iget v6, v9, Landroid/graphics/Rect;->right:I

    sub-int v6, v17, v6

    iput v6, v9, Landroid/graphics/Rect;->left:I

    .line 428
    sub-int v6, v17, v4

    iput v6, v9, Landroid/graphics/Rect;->right:I

    .line 430
    iget v6, v9, Landroid/graphics/Rect;->left:I

    move/from16 v20, v4

    iget v4, v0, Landroid/widget/ReverseExpandableListView;->mPaddingRight:I

    .end local v4    # "temp":I
    .local v20, "temp":I
    sub-int/2addr v6, v4

    iput v6, v9, Landroid/graphics/Rect;->left:I

    .line 431
    iget v4, v9, Landroid/graphics/Rect;->right:I

    iget v6, v0, Landroid/widget/ReverseExpandableListView;->mPaddingRight:I

    sub-int/2addr v4, v6

    iput v4, v9, Landroid/graphics/Rect;->right:I

    .line 432
    .end local v20    # "temp":I
    goto :goto_6

    .line 433
    :cond_9
    iget v4, v9, Landroid/graphics/Rect;->left:I

    iget v6, v0, Landroid/widget/ReverseExpandableListView;->mPaddingLeft:I

    add-int/2addr v4, v6

    iput v4, v9, Landroid/graphics/Rect;->left:I

    .line 434
    iget v4, v9, Landroid/graphics/Rect;->right:I

    iget v6, v0, Landroid/widget/ReverseExpandableListView;->mPaddingLeft:I

    add-int/2addr v4, v6

    iput v4, v9, Landroid/graphics/Rect;->right:I

    .line 437
    :goto_6
    iget-object v4, v5, Landroid/widget/ReverseExpandableListConnector$PositionMetadata;->position:Landroid/widget/ExpandableListPosition;

    iget v8, v4, Landroid/widget/ExpandableListPosition;->type:I

    goto :goto_7

    .line 440
    .end local v19    # "lastChildFlPos":I
    .restart local v6    # "lastChildFlPos":I
    :cond_a
    move/from16 v19, v6

    .end local v6    # "lastChildFlPos":I
    .restart local v19    # "lastChildFlPos":I
    :goto_7
    iget v4, v9, Landroid/graphics/Rect;->left:I

    iget v6, v9, Landroid/graphics/Rect;->right:I

    if-eq v4, v6, :cond_c

    .line 442
    iget-boolean v4, v0, Landroid/widget/ReverseExpandableListView;->mStackFromBottom:Z

    if-eqz v4, :cond_b

    .line 444
    iput v14, v9, Landroid/graphics/Rect;->top:I

    .line 445
    iput v15, v9, Landroid/graphics/Rect;->bottom:I

    goto :goto_8

    .line 447
    :cond_b
    iput v14, v9, Landroid/graphics/Rect;->top:I

    .line 448
    iput v15, v9, Landroid/graphics/Rect;->bottom:I

    .line 452
    :goto_8
    invoke-direct {v0, v5}, Landroid/widget/ReverseExpandableListView;->getIndicator(Landroid/widget/ReverseExpandableListConnector$PositionMetadata;)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    .line 453
    .local v4, "indicator":Landroid/graphics/drawable/Drawable;
    if-eqz v4, :cond_c

    .line 455
    invoke-virtual {v4, v9}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 456
    invoke-virtual {v4, v1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 459
    .end local v4    # "indicator":Landroid/graphics/drawable/Drawable;
    :cond_c
    invoke-virtual {v5}, Landroid/widget/ReverseExpandableListConnector$PositionMetadata;->recycle()V

    .end local v5    # "pos":Landroid/widget/ReverseExpandableListConnector$PositionMetadata;
    .end local v13    # "item":Landroid/view/View;
    .end local v14    # "t":I
    .end local v15    # "b":I
    .end local v16    # "isLayoutRtl":Z
    .end local v17    # "width":I
    goto :goto_9

    .line 389
    .end local v18    # "headerViewsCount":I
    .end local v19    # "lastChildFlPos":I
    .local v4, "headerViewsCount":I
    .restart local v6    # "lastChildFlPos":I
    :cond_d
    move/from16 v18, v4

    move/from16 v19, v6

    .end local v4    # "headerViewsCount":I
    .end local v6    # "lastChildFlPos":I
    .restart local v18    # "headerViewsCount":I
    .restart local v19    # "lastChildFlPos":I
    :goto_9
    add-int/lit8 v11, v11, 0x1

    add-int/lit8 v12, v12, 0x1

    .line 388
    move/from16 v4, v18

    move/from16 v6, v19

    const/4 v5, 0x1

    goto/16 :goto_1

    .line 462
    .end local v11    # "i":I
    .end local v12    # "childFlPos":I
    .end local v18    # "headerViewsCount":I
    .end local v19    # "lastChildFlPos":I
    .restart local v4    # "headerViewsCount":I
    .restart local v6    # "lastChildFlPos":I
    :cond_e
    move/from16 v18, v4

    move/from16 v19, v6

    .end local v4    # "headerViewsCount":I
    .end local v6    # "lastChildFlPos":I
    .restart local v18    # "headerViewsCount":I
    .restart local v19    # "lastChildFlPos":I
    :goto_a
    if-eqz v3, :cond_f

    .line 463
    invoke-virtual {v1, v2}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 465
    :cond_f
    return-void
.end method

.method drawDivider(Landroid/graphics/Canvas;Landroid/graphics/Rect;I)V
    .locals 5
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "bounds"    # Landroid/graphics/Rect;
    .param p3, "childIndex"    # I

    .line 521
    iget v0, p0, Landroid/widget/ReverseExpandableListView;->mFirstPosition:I

    add-int/2addr v0, p3

    .line 525
    .local v0, "flatListPosition":I
    if-ltz v0, :cond_2

    .line 526
    invoke-direct {p0, v0}, Landroid/widget/ReverseExpandableListView;->getFlatPositionForConnector(I)I

    move-result v1

    .line 527
    .local v1, "adjustedPosition":I
    iget-object v2, p0, Landroid/widget/ReverseExpandableListView;->mConnector:Landroid/widget/ReverseExpandableListConnector;

    invoke-virtual {v2, v1}, Landroid/widget/ReverseExpandableListConnector;->getUnflattenedPos(I)Landroid/widget/ReverseExpandableListConnector$PositionMetadata;

    move-result-object v2

    .line 529
    .local v2, "pos":Landroid/widget/ReverseExpandableListConnector$PositionMetadata;
    iget-object v3, v2, Landroid/widget/ReverseExpandableListConnector$PositionMetadata;->position:Landroid/widget/ExpandableListPosition;

    iget v3, v3, Landroid/widget/ExpandableListPosition;->type:I

    const/4 v4, 0x1

    if-eq v3, v4, :cond_1

    invoke-virtual {v2}, Landroid/widget/ReverseExpandableListConnector$PositionMetadata;->isExpanded()Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, v2, Landroid/widget/ReverseExpandableListConnector$PositionMetadata;->groupMetadata:Landroid/widget/ReverseExpandableListConnector$GroupMetadata;

    iget v3, v3, Landroid/widget/ReverseExpandableListConnector$GroupMetadata;->lastChildFlPos:I

    iget-object v4, v2, Landroid/widget/ReverseExpandableListConnector$PositionMetadata;->groupMetadata:Landroid/widget/ReverseExpandableListConnector$GroupMetadata;

    iget v4, v4, Landroid/widget/ReverseExpandableListConnector$GroupMetadata;->flPos:I

    if-eq v3, v4, :cond_0

    goto :goto_0

    .line 538
    :cond_0
    invoke-virtual {v2}, Landroid/widget/ReverseExpandableListConnector$PositionMetadata;->recycle()V

    .end local v1    # "adjustedPosition":I
    .end local v2    # "pos":Landroid/widget/ReverseExpandableListConnector$PositionMetadata;
    goto :goto_1

    .line 532
    .restart local v1    # "adjustedPosition":I
    .restart local v2    # "pos":Landroid/widget/ReverseExpandableListConnector$PositionMetadata;
    :cond_1
    :goto_0
    iget-object v3, p0, Landroid/widget/ReverseExpandableListView;->mChildDivider:Landroid/graphics/drawable/Drawable;

    .line 533
    .local v3, "divider":Landroid/graphics/drawable/Drawable;
    invoke-virtual {v3, p2}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 534
    invoke-virtual {v3, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 535
    invoke-virtual {v2}, Landroid/widget/ReverseExpandableListConnector$PositionMetadata;->recycle()V

    .line 536
    return-void

    .line 542
    .end local v1    # "adjustedPosition":I
    .end local v2    # "pos":Landroid/widget/ReverseExpandableListConnector$PositionMetadata;
    .end local v3    # "divider":Landroid/graphics/drawable/Drawable;
    :cond_2
    :goto_1
    invoke-super {p0, p1, p2, v0}, Landroid/widget/ListView;->drawDivider(Landroid/graphics/Canvas;Landroid/graphics/Rect;I)V

    .line 543
    return-void
.end method

.method public expandGroup(I)Z
    .locals 1
    .param p1, "groupPos"    # I

    .line 733
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/widget/ReverseExpandableListView;->expandGroup(IZ)Z

    move-result v0

    return v0
.end method

.method public expandGroup(IZ)Z
    .locals 6
    .param p1, "groupPos"    # I
    .param p2, "animate"    # Z

    .line 745
    const/4 v0, -0x1

    const/4 v1, 0x2

    invoke-static {v1, p1, v0, v0}, Landroid/widget/ExpandableListPosition;->obtain(IIII)Landroid/widget/ExpandableListPosition;

    move-result-object v0

    .line 747
    .local v0, "elGroupPos":Landroid/widget/ExpandableListPosition;
    iget-object v1, p0, Landroid/widget/ReverseExpandableListView;->mConnector:Landroid/widget/ReverseExpandableListConnector;

    invoke-virtual {v1, v0}, Landroid/widget/ReverseExpandableListConnector;->getFlattenedPos(Landroid/widget/ExpandableListPosition;)Landroid/widget/ReverseExpandableListConnector$PositionMetadata;

    move-result-object v1

    .line 748
    .local v1, "pm":Landroid/widget/ReverseExpandableListConnector$PositionMetadata;
    invoke-virtual {v0}, Landroid/widget/ExpandableListPosition;->recycle()V

    .line 749
    iget-object v2, p0, Landroid/widget/ReverseExpandableListView;->mConnector:Landroid/widget/ReverseExpandableListConnector;

    invoke-virtual {v2, v1}, Landroid/widget/ReverseExpandableListConnector;->expandGroup(Landroid/widget/ReverseExpandableListConnector$PositionMetadata;)Z

    move-result v2

    .line 751
    .local v2, "retValue":Z
    iget-object v3, p0, Landroid/widget/ReverseExpandableListView;->mOnGroupExpandListener:Landroid/widget/ReverseExpandableListView$OnGroupExpandListener;

    if-eqz v3, :cond_0

    .line 752
    iget-object v3, p0, Landroid/widget/ReverseExpandableListView;->mOnGroupExpandListener:Landroid/widget/ReverseExpandableListView$OnGroupExpandListener;

    invoke-interface {v3, p1}, Landroid/widget/ReverseExpandableListView$OnGroupExpandListener;->onGroupExpand(I)V

    .line 755
    :cond_0
    if-eqz p2, :cond_1

    .line 756
    iget-object v3, v1, Landroid/widget/ReverseExpandableListConnector$PositionMetadata;->position:Landroid/widget/ExpandableListPosition;

    iget v3, v3, Landroid/widget/ExpandableListPosition;->flatListPos:I

    .line 758
    .local v3, "groupFlatPos":I
    invoke-virtual {p0}, Landroid/widget/ReverseExpandableListView;->getHeaderViewsCount()I

    move-result v4

    add-int/2addr v4, v3

    .line 759
    .local v4, "shiftedGroupPosition":I
    iget-object v5, p0, Landroid/widget/ReverseExpandableListView;->mAdapter:Landroid/widget/ExpandableListAdapter;

    invoke-interface {v5, p1}, Landroid/widget/ExpandableListAdapter;->getChildrenCount(I)I

    move-result v5

    add-int/2addr v5, v4

    invoke-virtual {p0, v5, v4}, Landroid/widget/ReverseExpandableListView;->smoothScrollToPosition(II)V

    .line 762
    .end local v3    # "groupFlatPos":I
    .end local v4    # "shiftedGroupPosition":I
    :cond_1
    invoke-virtual {v1}, Landroid/widget/ReverseExpandableListConnector$PositionMetadata;->recycle()V

    .line 764
    return v2
.end method

.method public getAccessibilityClassName()Ljava/lang/CharSequence;
    .locals 1

    .line 1343
    const-class v0, Landroid/widget/ReverseExpandableListView;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getAdapter()Landroid/widget/Adapter;
    .locals 1

    .line 84
    invoke-virtual {p0}, Landroid/widget/ReverseExpandableListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    return-object v0
.end method

.method public getAdapter()Landroid/widget/ListAdapter;
    .locals 1

    .line 568
    invoke-super {p0}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    return-object v0
.end method

.method public getExpandableListAdapter()Landroid/widget/ExpandableListAdapter;
    .locals 1

    .line 608
    iget-object v0, p0, Landroid/widget/ReverseExpandableListView;->mAdapter:Landroid/widget/ExpandableListAdapter;

    return-object v0
.end method

.method public getExpandableListPosition(I)J
    .locals 4
    .param p1, "flatListPosition"    # I

    .line 887
    invoke-direct {p0, p1}, Landroid/widget/ReverseExpandableListView;->isHeaderOrFooterPosition(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 888
    const-wide v0, 0xffffffffL

    return-wide v0

    .line 891
    :cond_0
    invoke-direct {p0, p1}, Landroid/widget/ReverseExpandableListView;->getFlatPositionForConnector(I)I

    move-result v0

    .line 892
    .local v0, "adjustedPosition":I
    iget-object v1, p0, Landroid/widget/ReverseExpandableListView;->mConnector:Landroid/widget/ReverseExpandableListConnector;

    invoke-virtual {v1, v0}, Landroid/widget/ReverseExpandableListConnector;->getUnflattenedPos(I)Landroid/widget/ReverseExpandableListConnector$PositionMetadata;

    move-result-object v1

    .line 893
    .local v1, "pm":Landroid/widget/ReverseExpandableListConnector$PositionMetadata;
    iget-object v2, v1, Landroid/widget/ReverseExpandableListConnector$PositionMetadata;->position:Landroid/widget/ExpandableListPosition;

    invoke-virtual {v2}, Landroid/widget/ExpandableListPosition;->getPackedPosition()J

    move-result-wide v2

    .line 894
    .local v2, "packedPos":J
    invoke-virtual {v1}, Landroid/widget/ReverseExpandableListConnector$PositionMetadata;->recycle()V

    .line 895
    return-wide v2
.end method

.method public getFlatListPosition(J)I
    .locals 4
    .param p1, "packedPosition"    # J

    .line 910
    nop

    .line 911
    invoke-static {p1, p2}, Landroid/widget/ExpandableListPosition;->obtainPosition(J)Landroid/widget/ExpandableListPosition;

    move-result-object v0

    .line 912
    .local v0, "elPackedPos":Landroid/widget/ExpandableListPosition;
    iget-object v1, p0, Landroid/widget/ReverseExpandableListView;->mConnector:Landroid/widget/ReverseExpandableListConnector;

    invoke-virtual {v1, v0}, Landroid/widget/ReverseExpandableListConnector;->getFlattenedPos(Landroid/widget/ExpandableListPosition;)Landroid/widget/ReverseExpandableListConnector$PositionMetadata;

    move-result-object v1

    .line 913
    .local v1, "pm":Landroid/widget/ReverseExpandableListConnector$PositionMetadata;
    invoke-virtual {v0}, Landroid/widget/ExpandableListPosition;->recycle()V

    .line 914
    iget-object v2, v1, Landroid/widget/ReverseExpandableListConnector$PositionMetadata;->position:Landroid/widget/ExpandableListPosition;

    iget v2, v2, Landroid/widget/ExpandableListPosition;->flatListPos:I

    .line 915
    .local v2, "flatListPosition":I
    invoke-virtual {v1}, Landroid/widget/ReverseExpandableListConnector$PositionMetadata;->recycle()V

    .line 916
    invoke-direct {p0, v2}, Landroid/widget/ReverseExpandableListView;->getAbsoluteFlatPosition(I)I

    move-result v3

    return v3
.end method

.method public getSelectedId()J
    .locals 5

    .line 942
    invoke-virtual {p0}, Landroid/widget/ReverseExpandableListView;->getSelectedPosition()J

    move-result-wide v0

    .line 943
    .local v0, "packedPos":J
    const-wide v2, 0xffffffffL

    cmp-long v2, v0, v2

    if-nez v2, :cond_0

    const-wide/16 v2, -0x1

    return-wide v2

    .line 945
    :cond_0
    invoke-static {v0, v1}, Landroid/widget/ReverseExpandableListView;->getPackedPositionGroup(J)I

    move-result v2

    .line 947
    .local v2, "groupPos":I
    invoke-static {v0, v1}, Landroid/widget/ReverseExpandableListView;->getPackedPositionType(J)I

    move-result v3

    if-nez v3, :cond_1

    .line 949
    iget-object v3, p0, Landroid/widget/ReverseExpandableListView;->mAdapter:Landroid/widget/ExpandableListAdapter;

    invoke-interface {v3, v2}, Landroid/widget/ExpandableListAdapter;->getGroupId(I)J

    move-result-wide v3

    return-wide v3

    .line 952
    :cond_1
    iget-object v3, p0, Landroid/widget/ReverseExpandableListView;->mAdapter:Landroid/widget/ExpandableListAdapter;

    invoke-static {v0, v1}, Landroid/widget/ReverseExpandableListView;->getPackedPositionChild(J)I

    move-result v4

    invoke-interface {v3, v2, v4}, Landroid/widget/ExpandableListAdapter;->getChildId(II)J

    move-result-wide v3

    return-wide v3
.end method

.method public getSelectedPosition()J
    .locals 3

    .line 928
    invoke-virtual {p0}, Landroid/widget/ReverseExpandableListView;->getSelectedItemPosition()I

    move-result v0

    .line 931
    .local v0, "selectedPos":I
    invoke-virtual {p0, v0}, Landroid/widget/ReverseExpandableListView;->getExpandableListPosition(I)J

    move-result-wide v1

    return-wide v1
.end method

.method handleItemClick(Landroid/view/View;IJ)Z
    .locals 9
    .param p1, "v"    # Landroid/view/View;
    .param p2, "position"    # I
    .param p3, "id"    # J

    .line 664
    iget-object v0, p0, Landroid/widget/ReverseExpandableListView;->mConnector:Landroid/widget/ReverseExpandableListConnector;

    invoke-virtual {v0, p2}, Landroid/widget/ReverseExpandableListConnector;->getUnflattenedPos(I)Landroid/widget/ReverseExpandableListConnector$PositionMetadata;

    move-result-object v0

    .line 666
    .local v0, "posMetadata":Landroid/widget/ReverseExpandableListConnector$PositionMetadata;
    iget-object v1, v0, Landroid/widget/ReverseExpandableListConnector$PositionMetadata;->position:Landroid/widget/ExpandableListPosition;

    invoke-direct {p0, v1}, Landroid/widget/ReverseExpandableListView;->getChildOrGroupId(Landroid/widget/ExpandableListPosition;)J

    move-result-wide p3

    .line 669
    iget-object v1, v0, Landroid/widget/ReverseExpandableListConnector$PositionMetadata;->position:Landroid/widget/ExpandableListPosition;

    iget v1, v1, Landroid/widget/ExpandableListPosition;->type:I

    const/4 v8, 0x0

    const/4 v2, 0x2

    if-ne v1, v2, :cond_4

    .line 673
    iget-object v1, p0, Landroid/widget/ReverseExpandableListView;->mOnGroupClickListener:Landroid/widget/ReverseExpandableListView$OnGroupClickListener;

    if-eqz v1, :cond_0

    .line 674
    iget-object v2, p0, Landroid/widget/ReverseExpandableListView;->mOnGroupClickListener:Landroid/widget/ReverseExpandableListView$OnGroupClickListener;

    iget-object v1, v0, Landroid/widget/ReverseExpandableListConnector$PositionMetadata;->position:Landroid/widget/ExpandableListPosition;

    iget v5, v1, Landroid/widget/ExpandableListPosition;->groupPos:I

    move-object v3, p0

    move-object v4, p1

    move-wide v6, p3

    invoke-interface/range {v2 .. v7}, Landroid/widget/ReverseExpandableListView$OnGroupClickListener;->onGroupClick(Landroid/widget/ReverseExpandableListView;Landroid/view/View;IJ)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 676
    invoke-virtual {v0}, Landroid/widget/ReverseExpandableListConnector$PositionMetadata;->recycle()V

    .line 677
    const/4 v1, 0x1

    return v1

    .line 681
    :cond_0
    invoke-virtual {v0}, Landroid/widget/ReverseExpandableListConnector$PositionMetadata;->isExpanded()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 683
    iget-object v1, p0, Landroid/widget/ReverseExpandableListView;->mConnector:Landroid/widget/ReverseExpandableListConnector;

    invoke-virtual {v1, v0}, Landroid/widget/ReverseExpandableListConnector;->collapseGroup(Landroid/widget/ReverseExpandableListConnector$PositionMetadata;)Z

    .line 685
    invoke-virtual {p0, v8}, Landroid/widget/ReverseExpandableListView;->playSoundEffect(I)V

    .line 687
    iget-object v1, p0, Landroid/widget/ReverseExpandableListView;->mOnGroupCollapseListener:Landroid/widget/ReverseExpandableListView$OnGroupCollapseListener;

    if-eqz v1, :cond_3

    .line 688
    iget-object v1, p0, Landroid/widget/ReverseExpandableListView;->mOnGroupCollapseListener:Landroid/widget/ReverseExpandableListView$OnGroupCollapseListener;

    iget-object v2, v0, Landroid/widget/ReverseExpandableListConnector$PositionMetadata;->position:Landroid/widget/ExpandableListPosition;

    iget v2, v2, Landroid/widget/ExpandableListPosition;->groupPos:I

    invoke-interface {v1, v2}, Landroid/widget/ReverseExpandableListView$OnGroupCollapseListener;->onGroupCollapse(I)V

    goto :goto_0

    .line 692
    :cond_1
    iget-object v1, p0, Landroid/widget/ReverseExpandableListView;->mConnector:Landroid/widget/ReverseExpandableListConnector;

    invoke-virtual {v1, v0}, Landroid/widget/ReverseExpandableListConnector;->expandGroup(Landroid/widget/ReverseExpandableListConnector$PositionMetadata;)Z

    .line 694
    invoke-virtual {p0, v8}, Landroid/widget/ReverseExpandableListView;->playSoundEffect(I)V

    .line 696
    iget-object v1, p0, Landroid/widget/ReverseExpandableListView;->mOnGroupExpandListener:Landroid/widget/ReverseExpandableListView$OnGroupExpandListener;

    if-eqz v1, :cond_2

    .line 697
    iget-object v1, p0, Landroid/widget/ReverseExpandableListView;->mOnGroupExpandListener:Landroid/widget/ReverseExpandableListView$OnGroupExpandListener;

    iget-object v2, v0, Landroid/widget/ReverseExpandableListConnector$PositionMetadata;->position:Landroid/widget/ExpandableListPosition;

    iget v2, v2, Landroid/widget/ExpandableListPosition;->groupPos:I

    invoke-interface {v1, v2}, Landroid/widget/ReverseExpandableListView$OnGroupExpandListener;->onGroupExpand(I)V

    .line 700
    :cond_2
    iget-object v1, v0, Landroid/widget/ReverseExpandableListConnector$PositionMetadata;->position:Landroid/widget/ExpandableListPosition;

    iget v1, v1, Landroid/widget/ExpandableListPosition;->groupPos:I

    .line 701
    .local v1, "groupPos":I
    iget-object v2, v0, Landroid/widget/ReverseExpandableListConnector$PositionMetadata;->position:Landroid/widget/ExpandableListPosition;

    iget v2, v2, Landroid/widget/ExpandableListPosition;->flatListPos:I

    .line 703
    .local v2, "groupFlatPos":I
    invoke-virtual {p0}, Landroid/widget/ReverseExpandableListView;->getHeaderViewsCount()I

    move-result v3

    add-int/2addr v3, v2

    .line 704
    .local v3, "shiftedGroupPosition":I
    iget-object v4, p0, Landroid/widget/ReverseExpandableListView;->mAdapter:Landroid/widget/ExpandableListAdapter;

    invoke-interface {v4, v1}, Landroid/widget/ExpandableListAdapter;->getChildrenCount(I)I

    move-result v4

    add-int/2addr v4, v3

    invoke-virtual {p0, v4, v3}, Landroid/widget/ReverseExpandableListView;->smoothScrollToPosition(II)V

    .line 708
    .end local v1    # "groupPos":I
    .end local v2    # "groupFlatPos":I
    .end local v3    # "shiftedGroupPosition":I
    :cond_3
    :goto_0
    const/4 v8, 0x1

    .local v8, "returnValue":Z
    goto :goto_1

    .line 711
    .end local v8    # "returnValue":Z
    :cond_4
    iget-object v1, p0, Landroid/widget/ReverseExpandableListView;->mOnChildClickListener:Landroid/widget/ReverseExpandableListView$OnChildClickListener;

    if-eqz v1, :cond_5

    .line 712
    invoke-virtual {p0, v8}, Landroid/widget/ReverseExpandableListView;->playSoundEffect(I)V

    .line 713
    iget-object v2, p0, Landroid/widget/ReverseExpandableListView;->mOnChildClickListener:Landroid/widget/ReverseExpandableListView$OnChildClickListener;

    iget-object v1, v0, Landroid/widget/ReverseExpandableListConnector$PositionMetadata;->position:Landroid/widget/ExpandableListPosition;

    iget v5, v1, Landroid/widget/ExpandableListPosition;->groupPos:I

    iget-object v1, v0, Landroid/widget/ReverseExpandableListConnector$PositionMetadata;->position:Landroid/widget/ExpandableListPosition;

    iget v6, v1, Landroid/widget/ExpandableListPosition;->childPos:I

    move-object v3, p0

    move-object v4, p1

    move-wide v7, p3

    invoke-interface/range {v2 .. v8}, Landroid/widget/ReverseExpandableListView$OnChildClickListener;->onChildClick(Landroid/widget/ReverseExpandableListView;Landroid/view/View;IIJ)Z

    move-result v1

    return v1

    .line 717
    :cond_5
    nop

    .restart local v8    # "returnValue":Z
    :goto_1
    move v1, v8

    .line 720
    .end local v8    # "returnValue":Z
    .local v1, "returnValue":Z
    invoke-virtual {v0}, Landroid/widget/ReverseExpandableListConnector$PositionMetadata;->recycle()V

    .line 722
    return v1
.end method

.method public isGroupExpanded(I)Z
    .locals 1
    .param p1, "groupPosition"    # I

    .line 1018
    iget-object v0, p0, Landroid/widget/ReverseExpandableListView;->mConnector:Landroid/widget/ReverseExpandableListConnector;

    invoke-virtual {v0, p1}, Landroid/widget/ReverseExpandableListConnector;->isGroupExpanded(I)Z

    move-result v0

    return v0
.end method

.method public onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 3
    .param p1, "state"    # Landroid/os/Parcelable;

    .line 1328
    instance-of v0, p1, Landroid/widget/ReverseExpandableListView$SavedState;

    if-nez v0, :cond_0

    .line 1329
    invoke-super {p0, p1}, Landroid/widget/ListView;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 1330
    return-void

    .line 1333
    :cond_0
    move-object v0, p1

    check-cast v0, Landroid/widget/ReverseExpandableListView$SavedState;

    .line 1334
    .local v0, "ss":Landroid/widget/ReverseExpandableListView$SavedState;
    invoke-virtual {v0}, Landroid/widget/ReverseExpandableListView$SavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v1

    invoke-super {p0, v1}, Landroid/widget/ListView;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 1336
    iget-object v1, p0, Landroid/widget/ReverseExpandableListView;->mConnector:Landroid/widget/ReverseExpandableListConnector;

    if-eqz v1, :cond_1

    iget-object v1, v0, Landroid/widget/ReverseExpandableListView$SavedState;->expandedGroupMetadataList:Ljava/util/ArrayList;

    if-eqz v1, :cond_1

    .line 1337
    iget-object v1, p0, Landroid/widget/ReverseExpandableListView;->mConnector:Landroid/widget/ReverseExpandableListConnector;

    iget-object v2, v0, Landroid/widget/ReverseExpandableListView$SavedState;->expandedGroupMetadataList:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Landroid/widget/ReverseExpandableListConnector;->setExpandedGroupMetadataList(Ljava/util/ArrayList;)V

    .line 1339
    :cond_1
    return-void
.end method

.method public onRtlPropertiesChanged(I)V
    .locals 0
    .param p1, "layoutDirection"    # I

    .line 295
    invoke-direct {p0}, Landroid/widget/ReverseExpandableListView;->resolveIndicator()V

    .line 296
    invoke-direct {p0}, Landroid/widget/ReverseExpandableListView;->resolveChildIndicator()V

    .line 297
    return-void
.end method

.method public onSaveInstanceState()Landroid/os/Parcelable;
    .locals 3

    .line 1321
    invoke-super {p0}, Landroid/widget/ListView;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v0

    .line 1322
    .local v0, "superState":Landroid/os/Parcelable;
    new-instance v1, Landroid/widget/ReverseExpandableListView$SavedState;

    .line 1323
    iget-object v2, p0, Landroid/widget/ReverseExpandableListView;->mConnector:Landroid/widget/ReverseExpandableListConnector;

    if-eqz v2, :cond_0

    iget-object v2, p0, Landroid/widget/ReverseExpandableListView;->mConnector:Landroid/widget/ReverseExpandableListConnector;

    invoke-virtual {v2}, Landroid/widget/ReverseExpandableListConnector;->getExpandedGroupMetadataList()Ljava/util/ArrayList;

    move-result-object v2

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    invoke-direct {v1, v0, v2}, Landroid/widget/ReverseExpandableListView$SavedState;-><init>(Landroid/os/Parcelable;Ljava/util/ArrayList;)V

    .line 1322
    return-object v1
.end method

.method public performItemClick(Landroid/view/View;IJ)Z
    .locals 2
    .param p1, "v"    # Landroid/view/View;
    .param p2, "position"    # I
    .param p3, "id"    # J

    .line 645
    invoke-direct {p0, p2}, Landroid/widget/ReverseExpandableListView;->isHeaderOrFooterPosition(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 647
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/ListView;->performItemClick(Landroid/view/View;IJ)Z

    move-result v0

    return v0

    .line 651
    :cond_0
    invoke-direct {p0, p2}, Landroid/widget/ReverseExpandableListView;->getFlatPositionForConnector(I)I

    move-result v0

    .line 652
    .local v0, "adjustedPosition":I
    invoke-virtual {p0, p1, v0, p3, p4}, Landroid/widget/ReverseExpandableListView;->handleItemClick(Landroid/view/View;IJ)Z

    move-result v1

    return v1
.end method

.method public bridge synthetic setAdapter(Landroid/widget/Adapter;)V
    .locals 0

    .line 84
    check-cast p1, Landroid/widget/ListAdapter;

    invoke-virtual {p0, p1}, Landroid/widget/ReverseExpandableListView;->setAdapter(Landroid/widget/ListAdapter;)V

    return-void
.end method

.method public setAdapter(Landroid/widget/ExpandableListAdapter;)V
    .locals 1
    .param p1, "adapter"    # Landroid/widget/ExpandableListAdapter;

    .line 590
    iput-object p1, p0, Landroid/widget/ReverseExpandableListView;->mAdapter:Landroid/widget/ExpandableListAdapter;

    .line 592
    if-eqz p1, :cond_0

    .line 594
    new-instance v0, Landroid/widget/ReverseExpandableListConnector;

    invoke-direct {v0, p1}, Landroid/widget/ReverseExpandableListConnector;-><init>(Landroid/widget/ExpandableListAdapter;)V

    iput-object v0, p0, Landroid/widget/ReverseExpandableListView;->mConnector:Landroid/widget/ReverseExpandableListConnector;

    goto :goto_0

    .line 596
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/widget/ReverseExpandableListView;->mConnector:Landroid/widget/ReverseExpandableListConnector;

    .line 600
    :goto_0
    iget-object v0, p0, Landroid/widget/ReverseExpandableListView;->mConnector:Landroid/widget/ReverseExpandableListConnector;

    invoke-super {p0, v0}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 601
    return-void
.end method

.method public setAdapter(Landroid/widget/ListAdapter;)V
    .locals 2
    .param p1, "adapter"    # Landroid/widget/ListAdapter;

    .line 553
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "For ExpandableListView, use setAdapter(ExpandableListAdapter) instead of setAdapter(ListAdapter)"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setChildDivider(Landroid/graphics/drawable/Drawable;)V
    .locals 0
    .param p1, "childDivider"    # Landroid/graphics/drawable/Drawable;

    .line 516
    iput-object p1, p0, Landroid/widget/ReverseExpandableListView;->mChildDivider:Landroid/graphics/drawable/Drawable;

    .line 517
    return-void
.end method

.method public setChildIndicator(Landroid/graphics/drawable/Drawable;)V
    .locals 0
    .param p1, "childIndicator"    # Landroid/graphics/drawable/Drawable;

    .line 1157
    iput-object p1, p0, Landroid/widget/ReverseExpandableListView;->mChildIndicator:Landroid/graphics/drawable/Drawable;

    .line 1158
    return-void
.end method

.method public setChildIndicatorBounds(II)V
    .locals 0
    .param p1, "left"    # I
    .param p2, "right"    # I

    .line 1172
    iput p1, p0, Landroid/widget/ReverseExpandableListView;->mChildIndicatorLeft:I

    .line 1173
    iput p2, p0, Landroid/widget/ReverseExpandableListView;->mChildIndicatorRight:I

    .line 1174
    invoke-direct {p0}, Landroid/widget/ReverseExpandableListView;->resolveChildIndicator()V

    .line 1175
    return-void
.end method

.method public setChildIndicatorBoundsRelative(II)V
    .locals 0
    .param p1, "start"    # I
    .param p2, "end"    # I

    .line 1189
    iput p1, p0, Landroid/widget/ReverseExpandableListView;->mChildIndicatorStart:I

    .line 1190
    iput p2, p0, Landroid/widget/ReverseExpandableListView;->mChildIndicatorEnd:I

    .line 1191
    invoke-direct {p0}, Landroid/widget/ReverseExpandableListView;->resolveChildIndicator()V

    .line 1192
    return-void
.end method

.method public setGroupIndicator(Landroid/graphics/drawable/Drawable;)V
    .locals 2
    .param p1, "groupIndicator"    # Landroid/graphics/drawable/Drawable;

    .line 1203
    iput-object p1, p0, Landroid/widget/ReverseExpandableListView;->mGroupIndicator:Landroid/graphics/drawable/Drawable;

    .line 1204
    iget v0, p0, Landroid/widget/ReverseExpandableListView;->mIndicatorRight:I

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/widget/ReverseExpandableListView;->mGroupIndicator:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 1205
    iget v0, p0, Landroid/widget/ReverseExpandableListView;->mIndicatorLeft:I

    iget-object v1, p0, Landroid/widget/ReverseExpandableListView;->mGroupIndicator:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p0, Landroid/widget/ReverseExpandableListView;->mIndicatorRight:I

    .line 1207
    :cond_0
    return-void
.end method

.method public setIndicatorBounds(II)V
    .locals 0
    .param p1, "left"    # I
    .param p2, "right"    # I

    .line 1221
    iput p1, p0, Landroid/widget/ReverseExpandableListView;->mIndicatorLeft:I

    .line 1222
    iput p2, p0, Landroid/widget/ReverseExpandableListView;->mIndicatorRight:I

    .line 1223
    invoke-direct {p0}, Landroid/widget/ReverseExpandableListView;->resolveIndicator()V

    .line 1224
    return-void
.end method

.method public setIndicatorBoundsRelative(II)V
    .locals 0
    .param p1, "start"    # I
    .param p2, "end"    # I

    .line 1238
    iput p1, p0, Landroid/widget/ReverseExpandableListView;->mIndicatorStart:I

    .line 1239
    iput p2, p0, Landroid/widget/ReverseExpandableListView;->mIndicatorEnd:I

    .line 1240
    invoke-direct {p0}, Landroid/widget/ReverseExpandableListView;->resolveIndicator()V

    .line 1241
    return-void
.end method

.method public setOnChildClickListener(Landroid/widget/ReverseExpandableListView$OnChildClickListener;)V
    .locals 0
    .param p1, "onChildClickListener"    # Landroid/widget/ReverseExpandableListView$OnChildClickListener;

    .line 869
    iput-object p1, p0, Landroid/widget/ReverseExpandableListView;->mOnChildClickListener:Landroid/widget/ReverseExpandableListView$OnChildClickListener;

    .line 870
    return-void
.end method

.method public setOnGroupClickListener(Landroid/widget/ReverseExpandableListView$OnGroupClickListener;)V
    .locals 0
    .param p1, "onGroupClickListener"    # Landroid/widget/ReverseExpandableListView$OnGroupClickListener;

    .line 842
    iput-object p1, p0, Landroid/widget/ReverseExpandableListView;->mOnGroupClickListener:Landroid/widget/ReverseExpandableListView$OnGroupClickListener;

    .line 843
    return-void
.end method

.method public setOnGroupCollapseListener(Landroid/widget/ReverseExpandableListView$OnGroupCollapseListener;)V
    .locals 0
    .param p1, "onGroupCollapseListener"    # Landroid/widget/ReverseExpandableListView$OnGroupCollapseListener;

    .line 799
    iput-object p1, p0, Landroid/widget/ReverseExpandableListView;->mOnGroupCollapseListener:Landroid/widget/ReverseExpandableListView$OnGroupCollapseListener;

    .line 800
    return-void
.end method

.method public setOnGroupExpandListener(Landroid/widget/ReverseExpandableListView$OnGroupExpandListener;)V
    .locals 0
    .param p1, "onGroupExpandListener"    # Landroid/widget/ReverseExpandableListView$OnGroupExpandListener;

    .line 817
    iput-object p1, p0, Landroid/widget/ReverseExpandableListView;->mOnGroupExpandListener:Landroid/widget/ReverseExpandableListView$OnGroupExpandListener;

    .line 818
    return-void
.end method

.method public setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V
    .locals 0
    .param p1, "l"    # Landroid/widget/AdapterView$OnItemClickListener;

    .line 581
    invoke-super {p0, p1}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 582
    return-void
.end method

.method public setSelectedChild(IIZ)Z
    .locals 4
    .param p1, "groupPosition"    # I
    .param p2, "childPosition"    # I
    .param p3, "shouldExpandGroup"    # Z

    .line 982
    invoke-static {p1, p2}, Landroid/widget/ExpandableListPosition;->obtainChildPosition(II)Landroid/widget/ExpandableListPosition;

    move-result-object v0

    .line 984
    .local v0, "elChildPos":Landroid/widget/ExpandableListPosition;
    iget-object v1, p0, Landroid/widget/ReverseExpandableListView;->mConnector:Landroid/widget/ReverseExpandableListConnector;

    invoke-virtual {v1, v0}, Landroid/widget/ReverseExpandableListConnector;->getFlattenedPos(Landroid/widget/ExpandableListPosition;)Landroid/widget/ReverseExpandableListConnector$PositionMetadata;

    move-result-object v1

    .line 986
    .local v1, "flatChildPos":Landroid/widget/ReverseExpandableListConnector$PositionMetadata;
    if-nez v1, :cond_2

    .line 990
    if-nez p3, :cond_0

    const/4 v2, 0x0

    return v2

    .line 992
    :cond_0
    invoke-virtual {p0, p1}, Landroid/widget/ReverseExpandableListView;->expandGroup(I)Z

    .line 994
    iget-object v2, p0, Landroid/widget/ReverseExpandableListView;->mConnector:Landroid/widget/ReverseExpandableListConnector;

    invoke-virtual {v2, v0}, Landroid/widget/ReverseExpandableListConnector;->getFlattenedPos(Landroid/widget/ExpandableListPosition;)Landroid/widget/ReverseExpandableListConnector$PositionMetadata;

    move-result-object v1

    .line 997
    if-eqz v1, :cond_1

    goto :goto_0

    .line 998
    :cond_1
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v3, "Could not find child"

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1002
    :cond_2
    :goto_0
    iget-object v2, v1, Landroid/widget/ReverseExpandableListConnector$PositionMetadata;->position:Landroid/widget/ExpandableListPosition;

    iget v2, v2, Landroid/widget/ExpandableListPosition;->flatListPos:I

    invoke-direct {p0, v2}, Landroid/widget/ReverseExpandableListView;->getAbsoluteFlatPosition(I)I

    move-result v2

    .line 1003
    .local v2, "absoluteFlatPosition":I
    invoke-super {p0, v2}, Landroid/widget/ListView;->setSelection(I)V

    .line 1005
    invoke-virtual {v0}, Landroid/widget/ExpandableListPosition;->recycle()V

    .line 1006
    invoke-virtual {v1}, Landroid/widget/ReverseExpandableListConnector$PositionMetadata;->recycle()V

    .line 1008
    const/4 v3, 0x1

    return v3
.end method

.method public setSelectedGroup(I)V
    .locals 3
    .param p1, "groupPosition"    # I

    .line 961
    nop

    .line 962
    invoke-static {p1}, Landroid/widget/ExpandableListPosition;->obtainGroupPosition(I)Landroid/widget/ExpandableListPosition;

    move-result-object v0

    .line 963
    .local v0, "elGroupPos":Landroid/widget/ExpandableListPosition;
    iget-object v1, p0, Landroid/widget/ReverseExpandableListView;->mConnector:Landroid/widget/ReverseExpandableListConnector;

    invoke-virtual {v1, v0}, Landroid/widget/ReverseExpandableListConnector;->getFlattenedPos(Landroid/widget/ExpandableListPosition;)Landroid/widget/ReverseExpandableListConnector$PositionMetadata;

    move-result-object v1

    .line 964
    .local v1, "pm":Landroid/widget/ReverseExpandableListConnector$PositionMetadata;
    invoke-virtual {v0}, Landroid/widget/ExpandableListPosition;->recycle()V

    .line 965
    iget-object v2, v1, Landroid/widget/ReverseExpandableListConnector$PositionMetadata;->position:Landroid/widget/ExpandableListPosition;

    iget v2, v2, Landroid/widget/ExpandableListPosition;->flatListPos:I

    invoke-direct {p0, v2}, Landroid/widget/ReverseExpandableListView;->getAbsoluteFlatPosition(I)I

    move-result v2

    .line 966
    .local v2, "absoluteFlatPosition":I
    invoke-super {p0, v2}, Landroid/widget/ListView;->setSelection(I)V

    .line 967
    invoke-virtual {v1}, Landroid/widget/ReverseExpandableListConnector$PositionMetadata;->recycle()V

    .line 968
    return-void
.end method
