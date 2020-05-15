.class public Landroid/widget/ExpandableListView;
.super Landroid/widget/ListView;
.source "ExpandableListView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/widget/ExpandableListView$SavedState;,
        Landroid/widget/ExpandableListView$ExpandableListContextMenuInfo;,
        Landroid/widget/ExpandableListView$OnChildClickListener;,
        Landroid/widget/ExpandableListView$OnGroupClickListener;,
        Landroid/widget/ExpandableListView$OnGroupExpandListener;,
        Landroid/widget/ExpandableListView$OnGroupCollapseListener;
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

.field private mConnector:Landroid/widget/ExpandableListConnector;

.field private mGroupIndicator:Landroid/graphics/drawable/Drawable;

.field private mIndicatorEnd:I

.field private mIndicatorLeft:I

.field private final mIndicatorRect:Landroid/graphics/Rect;

.field private mIndicatorRight:I

.field private mIndicatorStart:I

.field private mOnChildClickListener:Landroid/widget/ExpandableListView$OnChildClickListener;

.field private mOnGroupClickListener:Landroid/widget/ExpandableListView$OnGroupClickListener;

.field private mOnGroupCollapseListener:Landroid/widget/ExpandableListView$OnGroupCollapseListener;

.field private mOnGroupExpandListener:Landroid/widget/ExpandableListView$OnGroupExpandListener;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 188
    const/4 v0, 0x0

    new-array v1, v0, [I

    sput-object v1, Landroid/widget/ExpandableListView;->EMPTY_STATE_SET:[I

    .line 191
    const/4 v1, 0x1

    new-array v2, v1, [I

    const v3, 0x10100a8

    aput v3, v2, v0

    sput-object v2, Landroid/widget/ExpandableListView;->GROUP_EXPANDED_STATE_SET:[I

    .line 195
    new-array v2, v1, [I

    const v3, 0x10100a9

    aput v3, v2, v0

    sput-object v2, Landroid/widget/ExpandableListView;->GROUP_EMPTY_STATE_SET:[I

    .line 199
    const/4 v2, 0x2

    new-array v3, v2, [I

    fill-array-data v3, :array_0

    sput-object v3, Landroid/widget/ExpandableListView;->GROUP_EXPANDED_EMPTY_STATE_SET:[I

    .line 203
    const/4 v3, 0x4

    new-array v3, v3, [[I

    sget-object v4, Landroid/widget/ExpandableListView;->EMPTY_STATE_SET:[I

    aput-object v4, v3, v0

    sget-object v4, Landroid/widget/ExpandableListView;->GROUP_EXPANDED_STATE_SET:[I

    aput-object v4, v3, v1

    sget-object v4, Landroid/widget/ExpandableListView;->GROUP_EMPTY_STATE_SET:[I

    aput-object v4, v3, v2

    sget-object v2, Landroid/widget/ExpandableListView;->GROUP_EXPANDED_EMPTY_STATE_SET:[I

    const/4 v4, 0x3

    aput-object v2, v3, v4

    sput-object v3, Landroid/widget/ExpandableListView;->GROUP_STATE_SETS:[[I

    .line 211
    new-array v1, v1, [I

    const v2, 0x10100a6

    aput v2, v1, v0

    sput-object v1, Landroid/widget/ExpandableListView;->CHILD_LAST_STATE_SET:[I

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

    invoke-direct {p0, p1, v0}, Landroid/widget/ExpandableListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 222
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 225
    const v0, 0x101006f

    invoke-direct {p0, p1, p2, v0}, Landroid/widget/ExpandableListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

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

    invoke-direct {p0, p1, p2, p3, v0}, Landroid/widget/ExpandableListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

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

    iput-object v0, p0, Landroid/widget/ExpandableListView;->mIndicatorRect:Landroid/graphics/Rect;

    .line 236
    sget-object v0, Lcom/android/internal/R$styleable;->ExpandableListView:[I

    invoke-virtual {p1, p2, v0, p3, p4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 239
    .local v0, "a":Landroid/content/res/TypedArray;
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iput-object v2, p0, Landroid/widget/ExpandableListView;->mGroupIndicator:Landroid/graphics/drawable/Drawable;

    .line 241
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iput-object v2, p0, Landroid/widget/ExpandableListView;->mChildIndicator:Landroid/graphics/drawable/Drawable;

    .line 243
    const/4 v2, 0x2

    invoke-virtual {v0, v2, v1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v2

    iput v2, p0, Landroid/widget/ExpandableListView;->mIndicatorLeft:I

    .line 245
    const/4 v2, 0x3

    invoke-virtual {v0, v2, v1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    iput v1, p0, Landroid/widget/ExpandableListView;->mIndicatorRight:I

    .line 247
    iget v1, p0, Landroid/widget/ExpandableListView;->mIndicatorRight:I

    if-nez v1, :cond_0

    iget-object v1, p0, Landroid/widget/ExpandableListView;->mGroupIndicator:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_0

    .line 248
    iget v1, p0, Landroid/widget/ExpandableListView;->mIndicatorLeft:I

    iget-object v2, p0, Landroid/widget/ExpandableListView;->mGroupIndicator:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v2

    add-int/2addr v1, v2

    iput v1, p0, Landroid/widget/ExpandableListView;->mIndicatorRight:I

    .line 250
    :cond_0
    const/4 v1, 0x4

    const/4 v2, -0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    iput v1, p0, Landroid/widget/ExpandableListView;->mChildIndicatorLeft:I

    .line 253
    const/4 v1, 0x5

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    iput v1, p0, Landroid/widget/ExpandableListView;->mChildIndicatorRight:I

    .line 256
    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Landroid/widget/ExpandableListView;->mChildDivider:Landroid/graphics/drawable/Drawable;

    .line 259
    invoke-direct {p0}, Landroid/widget/ExpandableListView;->isRtlCompatibilityMode()Z

    move-result v1

    if-nez v1, :cond_1

    .line 260
    const/4 v1, 0x7

    const/4 v3, -0x2

    invoke-virtual {v0, v1, v3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    iput v1, p0, Landroid/widget/ExpandableListView;->mIndicatorStart:I

    .line 263
    const/16 v1, 0x8

    invoke-virtual {v0, v1, v3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    iput v1, p0, Landroid/widget/ExpandableListView;->mIndicatorEnd:I

    .line 267
    const/16 v1, 0x9

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    iput v1, p0, Landroid/widget/ExpandableListView;->mChildIndicatorStart:I

    .line 270
    const/16 v1, 0xa

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    iput v1, p0, Landroid/widget/ExpandableListView;->mChildIndicatorEnd:I

    .line 275
    :cond_1
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 276
    return-void
.end method

.method private getAbsoluteFlatPosition(I)I
    .locals 1
    .param p1, "flatListPosition"    # I

    .line 640
    invoke-virtual {p0}, Landroid/widget/ExpandableListView;->getHeaderViewsCount()I

    move-result v0

    add-int/2addr v0, p1

    return v0
.end method

.method private getChildOrGroupId(Landroid/widget/ExpandableListPosition;)J
    .locals 3
    .param p1, "position"    # Landroid/widget/ExpandableListPosition;

    .line 1143
    iget v0, p1, Landroid/widget/ExpandableListPosition;->type:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 1144
    iget-object v0, p0, Landroid/widget/ExpandableListView;->mAdapter:Landroid/widget/ExpandableListAdapter;

    iget v1, p1, Landroid/widget/ExpandableListPosition;->groupPos:I

    iget v2, p1, Landroid/widget/ExpandableListPosition;->childPos:I

    invoke-interface {v0, v1, v2}, Landroid/widget/ExpandableListAdapter;->getChildId(II)J

    move-result-wide v0

    return-wide v0

    .line 1146
    :cond_0
    iget-object v0, p0, Landroid/widget/ExpandableListView;->mAdapter:Landroid/widget/ExpandableListAdapter;

    iget v1, p1, Landroid/widget/ExpandableListPosition;->groupPos:I

    invoke-interface {v0, v1}, Landroid/widget/ExpandableListAdapter;->getGroupId(I)J

    move-result-wide v0

    return-wide v0
.end method

.method private getFlatPositionForConnector(I)I
    .locals 1
    .param p1, "flatListPosition"    # I

    .line 629
    invoke-virtual {p0}, Landroid/widget/ExpandableListView;->getHeaderViewsCount()I

    move-result v0

    sub-int v0, p1, v0

    return v0
.end method

.method private getIndicator(Landroid/widget/ExpandableListConnector$PositionMetadata;)Landroid/graphics/drawable/Drawable;
    .locals 5
    .param p1, "pos"    # Landroid/widget/ExpandableListConnector$PositionMetadata;

    .line 479
    iget-object v0, p1, Landroid/widget/ExpandableListConnector$PositionMetadata;->position:Landroid/widget/ExpandableListPosition;

    iget v0, v0, Landroid/widget/ExpandableListPosition;->type:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_3

    .line 480
    iget-object v0, p0, Landroid/widget/ExpandableListView;->mGroupIndicator:Landroid/graphics/drawable/Drawable;

    .line 482
    .local v0, "indicator":Landroid/graphics/drawable/Drawable;
    if-eqz v0, :cond_5

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 486
    iget-object v2, p1, Landroid/widget/ExpandableListConnector$PositionMetadata;->groupMetadata:Landroid/widget/ExpandableListConnector$GroupMetadata;

    const/4 v3, 0x0

    if-eqz v2, :cond_1

    iget-object v2, p1, Landroid/widget/ExpandableListConnector$PositionMetadata;->groupMetadata:Landroid/widget/ExpandableListConnector$GroupMetadata;

    iget v2, v2, Landroid/widget/ExpandableListConnector$GroupMetadata;->lastChildFlPos:I

    iget-object v4, p1, Landroid/widget/ExpandableListConnector$PositionMetadata;->groupMetadata:Landroid/widget/ExpandableListConnector$GroupMetadata;

    iget v4, v4, Landroid/widget/ExpandableListConnector$GroupMetadata;->flPos:I

    if-ne v2, v4, :cond_0

    goto :goto_0

    :cond_0
    move v2, v3

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v2, 0x1

    .line 490
    .local v2, "isEmpty":Z
    :goto_1
    invoke-virtual {p1}, Landroid/widget/ExpandableListConnector$PositionMetadata;->isExpanded()Z

    move-result v4

    .line 491
    if-eqz v2, :cond_2

    goto :goto_2

    :cond_2
    move v1, v3

    :goto_2
    or-int/2addr v1, v4

    .line 492
    .local v1, "stateSetIndex":I
    sget-object v3, Landroid/widget/ExpandableListView;->GROUP_STATE_SETS:[[I

    aget-object v3, v3, v1

    invoke-virtual {v0, v3}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 493
    .end local v1    # "stateSetIndex":I
    .end local v2    # "isEmpty":Z
    goto :goto_4

    .line 495
    .end local v0    # "indicator":Landroid/graphics/drawable/Drawable;
    :cond_3
    iget-object v0, p0, Landroid/widget/ExpandableListView;->mChildIndicator:Landroid/graphics/drawable/Drawable;

    .line 497
    .restart local v0    # "indicator":Landroid/graphics/drawable/Drawable;
    if-eqz v0, :cond_5

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 499
    iget-object v1, p1, Landroid/widget/ExpandableListConnector$PositionMetadata;->position:Landroid/widget/ExpandableListPosition;

    iget v1, v1, Landroid/widget/ExpandableListPosition;->flatListPos:I

    iget-object v2, p1, Landroid/widget/ExpandableListConnector$PositionMetadata;->groupMetadata:Landroid/widget/ExpandableListConnector$GroupMetadata;

    iget v2, v2, Landroid/widget/ExpandableListConnector$GroupMetadata;->lastChildFlPos:I

    if-ne v1, v2, :cond_4

    .line 500
    sget-object v1, Landroid/widget/ExpandableListView;->CHILD_LAST_STATE_SET:[I

    goto :goto_3

    .line 501
    :cond_4
    sget-object v1, Landroid/widget/ExpandableListView;->EMPTY_STATE_SET:[I

    .line 502
    .local v1, "stateSet":[I
    :goto_3
    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 506
    .end local v1    # "stateSet":[I
    :cond_5
    :goto_4
    return-object v0
.end method

.method public static getPackedPositionChild(J)I
    .locals 8
    .param p0, "packedPosition"    # J

    .line 1071
    const-wide v0, 0xffffffffL

    cmp-long v2, p0, v0

    const/4 v3, -0x1

    if-nez v2, :cond_0

    return v3

    .line 1074
    :cond_0
    const-wide/high16 v4, -0x8000000000000000L

    and-long v6, p0, v4

    cmp-long v2, v6, v4

    if-eqz v2, :cond_1

    return v3

    .line 1076
    :cond_1
    and-long/2addr v0, p0

    long-to-int v0, v0

    return v0
.end method

.method public static getPackedPositionForChild(II)J
    .locals 6
    .param p0, "groupPosition"    # I
    .param p1, "childPosition"    # I

    .line 1096
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

    .line 1111
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

    .line 1052
    const-wide v0, 0xffffffffL

    cmp-long v0, p0, v0

    if-nez v0, :cond_0

    const/4 v0, -0x1

    return v0

    .line 1054
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

    .line 1032
    const-wide v0, 0xffffffffL

    cmp-long v0, p0, v0

    if-nez v0, :cond_0

    .line 1033
    const/4 v0, 0x2

    return v0

    .line 1036
    :cond_0
    const-wide/high16 v0, -0x8000000000000000L

    and-long v2, p0, v0

    cmp-long v0, v2, v0

    if-nez v0, :cond_1

    .line 1037
    const/4 v0, 0x1

    goto :goto_0

    .line 1038
    :cond_1
    const/4 v0, 0x0

    .line 1036
    :goto_0
    return v0
.end method

.method private hasRtlSupport()Z
    .locals 1

    .line 291
    iget-object v0, p0, Landroid/widget/ExpandableListView;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/pm/ApplicationInfo;->hasRtlSupport()Z

    move-result v0

    return v0
.end method

.method private isHeaderOrFooterPosition(I)Z
    .locals 2
    .param p1, "position"    # I

    .line 617
    iget v0, p0, Landroid/widget/ExpandableListView;->mItemCount:I

    invoke-virtual {p0}, Landroid/widget/ExpandableListView;->getFooterViewsCount()I

    move-result v1

    sub-int/2addr v0, v1

    .line 618
    .local v0, "footerViewsStart":I
    invoke-virtual {p0}, Landroid/widget/ExpandableListView;->getHeaderViewsCount()I

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
    iget-object v0, p0, Landroid/widget/ExpandableListView;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    .line 284
    .local v0, "targetSdkVersion":I
    const/16 v1, 0x11

    if-lt v0, v1, :cond_1

    invoke-direct {p0}, Landroid/widget/ExpandableListView;->hasRtlSupport()Z

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
    invoke-virtual {p0}, Landroid/widget/ExpandableListView;->isLayoutRtl()Z

    move-result v0

    .line 331
    .local v0, "isLayoutRtl":Z
    const/4 v1, -0x1

    if-eqz v0, :cond_1

    .line 332
    iget v2, p0, Landroid/widget/ExpandableListView;->mChildIndicatorStart:I

    if-lt v2, v1, :cond_0

    .line 333
    iget v2, p0, Landroid/widget/ExpandableListView;->mChildIndicatorStart:I

    iput v2, p0, Landroid/widget/ExpandableListView;->mChildIndicatorRight:I

    .line 335
    :cond_0
    iget v2, p0, Landroid/widget/ExpandableListView;->mChildIndicatorEnd:I

    if-lt v2, v1, :cond_3

    .line 336
    iget v1, p0, Landroid/widget/ExpandableListView;->mChildIndicatorEnd:I

    iput v1, p0, Landroid/widget/ExpandableListView;->mChildIndicatorLeft:I

    goto :goto_0

    .line 339
    :cond_1
    iget v2, p0, Landroid/widget/ExpandableListView;->mChildIndicatorStart:I

    if-lt v2, v1, :cond_2

    .line 340
    iget v2, p0, Landroid/widget/ExpandableListView;->mChildIndicatorStart:I

    iput v2, p0, Landroid/widget/ExpandableListView;->mChildIndicatorLeft:I

    .line 342
    :cond_2
    iget v2, p0, Landroid/widget/ExpandableListView;->mChildIndicatorEnd:I

    if-lt v2, v1, :cond_3

    .line 343
    iget v1, p0, Landroid/widget/ExpandableListView;->mChildIndicatorEnd:I

    iput v1, p0, Landroid/widget/ExpandableListView;->mChildIndicatorRight:I

    .line 346
    :cond_3
    :goto_0
    return-void
.end method

.method private resolveIndicator()V
    .locals 3

    .line 304
    invoke-virtual {p0}, Landroid/widget/ExpandableListView;->isLayoutRtl()Z

    move-result v0

    .line 305
    .local v0, "isLayoutRtl":Z
    if-eqz v0, :cond_1

    .line 306
    iget v1, p0, Landroid/widget/ExpandableListView;->mIndicatorStart:I

    if-ltz v1, :cond_0

    .line 307
    iget v1, p0, Landroid/widget/ExpandableListView;->mIndicatorStart:I

    iput v1, p0, Landroid/widget/ExpandableListView;->mIndicatorRight:I

    .line 309
    :cond_0
    iget v1, p0, Landroid/widget/ExpandableListView;->mIndicatorEnd:I

    if-ltz v1, :cond_3

    .line 310
    iget v1, p0, Landroid/widget/ExpandableListView;->mIndicatorEnd:I

    iput v1, p0, Landroid/widget/ExpandableListView;->mIndicatorLeft:I

    goto :goto_0

    .line 313
    :cond_1
    iget v1, p0, Landroid/widget/ExpandableListView;->mIndicatorStart:I

    if-ltz v1, :cond_2

    .line 314
    iget v1, p0, Landroid/widget/ExpandableListView;->mIndicatorStart:I

    iput v1, p0, Landroid/widget/ExpandableListView;->mIndicatorLeft:I

    .line 316
    :cond_2
    iget v1, p0, Landroid/widget/ExpandableListView;->mIndicatorEnd:I

    if-ltz v1, :cond_3

    .line 317
    iget v1, p0, Landroid/widget/ExpandableListView;->mIndicatorEnd:I

    iput v1, p0, Landroid/widget/ExpandableListView;->mIndicatorRight:I

    .line 320
    :cond_3
    :goto_0
    iget v1, p0, Landroid/widget/ExpandableListView;->mIndicatorRight:I

    if-nez v1, :cond_4

    iget-object v1, p0, Landroid/widget/ExpandableListView;->mGroupIndicator:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_4

    .line 321
    iget v1, p0, Landroid/widget/ExpandableListView;->mIndicatorLeft:I

    iget-object v2, p0, Landroid/widget/ExpandableListView;->mGroupIndicator:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v2

    add-int/2addr v1, v2

    iput v1, p0, Landroid/widget/ExpandableListView;->mIndicatorRight:I

    .line 323
    :cond_4
    return-void
.end method


# virtual methods
.method public collapseGroup(I)Z
    .locals 2
    .param p1, "groupPos"    # I

    .line 776
    iget-object v0, p0, Landroid/widget/ExpandableListView;->mConnector:Landroid/widget/ExpandableListConnector;

    invoke-virtual {v0, p1}, Landroid/widget/ExpandableListConnector;->collapseGroup(I)Z

    move-result v0

    .line 778
    .local v0, "retValue":Z
    iget-object v1, p0, Landroid/widget/ExpandableListView;->mOnGroupCollapseListener:Landroid/widget/ExpandableListView$OnGroupCollapseListener;

    if-eqz v1, :cond_0

    .line 779
    iget-object v1, p0, Landroid/widget/ExpandableListView;->mOnGroupCollapseListener:Landroid/widget/ExpandableListView$OnGroupCollapseListener;

    invoke-interface {v1, p1}, Landroid/widget/ExpandableListView$OnGroupCollapseListener;->onGroupCollapse(I)V

    .line 782
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

    .line 1117
    invoke-direct {v0, v1}, Landroid/widget/ExpandableListView;->isHeaderOrFooterPosition(I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1119
    new-instance v2, Landroid/widget/AdapterView$AdapterContextMenuInfo;

    move-object/from16 v9, p1

    move-wide/from16 v3, p3

    invoke-direct {v2, v9, v1, v3, v4}, Landroid/widget/AdapterView$AdapterContextMenuInfo;-><init>(Landroid/view/View;IJ)V

    return-object v2

    .line 1122
    :cond_0
    move-object/from16 v9, p1

    move-wide/from16 v3, p3

    invoke-direct {v0, v1}, Landroid/widget/ExpandableListView;->getFlatPositionForConnector(I)I

    move-result v2

    .line 1123
    .local v2, "adjustedPosition":I
    iget-object v5, v0, Landroid/widget/ExpandableListView;->mConnector:Landroid/widget/ExpandableListConnector;

    invoke-virtual {v5, v2}, Landroid/widget/ExpandableListConnector;->getUnflattenedPos(I)Landroid/widget/ExpandableListConnector$PositionMetadata;

    move-result-object v10

    .line 1124
    .local v10, "pm":Landroid/widget/ExpandableListConnector$PositionMetadata;
    iget-object v11, v10, Landroid/widget/ExpandableListConnector$PositionMetadata;->position:Landroid/widget/ExpandableListPosition;

    .line 1126
    .local v11, "pos":Landroid/widget/ExpandableListPosition;
    invoke-direct {v0, v11}, Landroid/widget/ExpandableListView;->getChildOrGroupId(Landroid/widget/ExpandableListPosition;)J

    move-result-wide v12

    .line 1127
    .end local p3    # "id":J
    .local v12, "id":J
    invoke-virtual {v11}, Landroid/widget/ExpandableListPosition;->getPackedPosition()J

    move-result-wide v14

    .line 1129
    .local v14, "packedPosition":J
    invoke-virtual {v10}, Landroid/widget/ExpandableListConnector$PositionMetadata;->recycle()V

    .line 1131
    new-instance v16, Landroid/widget/ExpandableListView$ExpandableListContextMenuInfo;

    move-object/from16 v3, v16

    move-object v4, v9

    move-wide v5, v14

    move-wide v7, v12

    invoke-direct/range {v3 .. v8}, Landroid/widget/ExpandableListView$ExpandableListContextMenuInfo;-><init>(Landroid/view/View;JJ)V

    return-object v16
.end method

.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 21
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    move-object/from16 v0, p0

    .line 351
    move-object/from16 v1, p1

    invoke-super/range {p0 .. p1}, Landroid/widget/ListView;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 354
    iget-object v2, v0, Landroid/widget/ExpandableListView;->mChildIndicator:Landroid/graphics/drawable/Drawable;

    if-nez v2, :cond_0

    iget-object v2, v0, Landroid/widget/ExpandableListView;->mGroupIndicator:Landroid/graphics/drawable/Drawable;

    if-nez v2, :cond_0

    .line 355
    return-void

    .line 358
    :cond_0
    const/4 v2, 0x0

    .line 359
    .local v2, "saveCount":I
    iget v3, v0, Landroid/widget/ExpandableListView;->mGroupFlags:I

    const/16 v4, 0x22

    and-int/2addr v3, v4

    const/4 v5, 0x1

    if-ne v3, v4, :cond_1

    move v3, v5

    goto :goto_0

    :cond_1
    const/4 v3, 0x0

    .line 360
    .local v3, "clipToPadding":Z
    :goto_0
    if-eqz v3, :cond_2

    .line 361
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    move-result v2

    .line 362
    iget v4, v0, Landroid/widget/ExpandableListView;->mScrollX:I

    .line 363
    .local v4, "scrollX":I
    iget v6, v0, Landroid/widget/ExpandableListView;->mScrollY:I

    .line 364
    .local v6, "scrollY":I
    iget v7, v0, Landroid/widget/ExpandableListView;->mPaddingLeft:I

    add-int/2addr v7, v4

    iget v8, v0, Landroid/widget/ExpandableListView;->mPaddingTop:I

    add-int/2addr v8, v6

    iget v9, v0, Landroid/widget/ExpandableListView;->mRight:I

    add-int/2addr v9, v4

    iget v10, v0, Landroid/widget/ExpandableListView;->mLeft:I

    sub-int/2addr v9, v10

    iget v10, v0, Landroid/widget/ExpandableListView;->mPaddingRight:I

    sub-int/2addr v9, v10

    iget v10, v0, Landroid/widget/ExpandableListView;->mBottom:I

    add-int/2addr v10, v6

    iget v11, v0, Landroid/widget/ExpandableListView;->mTop:I

    sub-int/2addr v10, v11

    iget v11, v0, Landroid/widget/ExpandableListView;->mPaddingBottom:I

    sub-int/2addr v10, v11

    invoke-virtual {v1, v7, v8, v9, v10}, Landroid/graphics/Canvas;->clipRect(IIII)Z

    .line 369
    .end local v4    # "scrollX":I
    .end local v6    # "scrollY":I
    :cond_2
    invoke-virtual/range {p0 .. p0}, Landroid/widget/ExpandableListView;->getHeaderViewsCount()I

    move-result v4

    .line 371
    .local v4, "headerViewsCount":I
    iget v6, v0, Landroid/widget/ExpandableListView;->mItemCount:I

    invoke-virtual/range {p0 .. p0}, Landroid/widget/ExpandableListView;->getFooterViewsCount()I

    move-result v7

    sub-int/2addr v6, v7

    sub-int/2addr v6, v4

    sub-int/2addr v6, v5

    .line 373
    .local v6, "lastChildFlPos":I
    iget v7, v0, Landroid/widget/ExpandableListView;->mBottom:I

    .line 381
    .local v7, "myB":I
    const/4 v8, -0x4

    .line 383
    .local v8, "lastItemType":I
    iget-object v9, v0, Landroid/widget/ExpandableListView;->mIndicatorRect:Landroid/graphics/Rect;

    .line 388
    .local v9, "indicatorRect":Landroid/graphics/Rect;
    invoke-virtual/range {p0 .. p0}, Landroid/widget/ExpandableListView;->getChildCount()I

    move-result v10

    .line 389
    .local v10, "childCount":I
    const/4 v11, 0x0

    .local v11, "i":I
    iget v12, v0, Landroid/widget/ExpandableListView;->mFirstPosition:I

    sub-int/2addr v12, v4

    .local v12, "childFlPos":I
    :goto_1
    if-ge v11, v10, :cond_e

    .line 392
    if-gez v12, :cond_3

    .line 394
    nop

    .line 390
    .end local v4    # "headerViewsCount":I
    .end local v6    # "lastChildFlPos":I
    .local v18, "headerViewsCount":I
    .local v19, "lastChildFlPos":I
    :goto_2
    move/from16 v18, v4

    move/from16 v19, v6

    goto/16 :goto_9

    .line 395
    .end local v18    # "headerViewsCount":I
    .end local v19    # "lastChildFlPos":I
    .restart local v4    # "headerViewsCount":I
    .restart local v6    # "lastChildFlPos":I
    :cond_3
    if-le v12, v6, :cond_4

    .line 397
    nop

    .line 463
    move/from16 v18, v4

    move/from16 v19, v6

    goto/16 :goto_a

    .line 400
    :cond_4
    invoke-virtual {v0, v11}, Landroid/widget/ExpandableListView;->getChildAt(I)Landroid/view/View;

    move-result-object v13

    .line 401
    .local v13, "item":Landroid/view/View;
    invoke-virtual {v13}, Landroid/view/View;->getTop()I

    move-result v14

    .line 402
    .local v14, "t":I
    invoke-virtual {v13}, Landroid/view/View;->getBottom()I

    move-result v15

    .line 405
    .local v15, "b":I
    if-ltz v15, :cond_d

    if-le v14, v7, :cond_5

    .end local v13    # "item":Landroid/view/View;
    .end local v14    # "t":I
    .end local v15    # "b":I
    goto :goto_2

    .line 408
    .restart local v13    # "item":Landroid/view/View;
    .restart local v14    # "t":I
    .restart local v15    # "b":I
    :cond_5
    iget-object v5, v0, Landroid/widget/ExpandableListView;->mConnector:Landroid/widget/ExpandableListConnector;

    invoke-virtual {v5, v12}, Landroid/widget/ExpandableListConnector;->getUnflattenedPos(I)Landroid/widget/ExpandableListConnector$PositionMetadata;

    move-result-object v5

    .line 410
    .local v5, "pos":Landroid/widget/ExpandableListConnector$PositionMetadata;
    invoke-virtual/range {p0 .. p0}, Landroid/widget/ExpandableListView;->isLayoutRtl()Z

    move-result v16

    .line 411
    .local v16, "isLayoutRtl":Z
    invoke-virtual/range {p0 .. p0}, Landroid/widget/ExpandableListView;->getWidth()I

    move-result v17

    .line 415
    .local v17, "width":I
    move/from16 v18, v4

    iget-object v4, v5, Landroid/widget/ExpandableListConnector$PositionMetadata;->position:Landroid/widget/ExpandableListPosition;

    .end local v4    # "headerViewsCount":I
    .restart local v18    # "headerViewsCount":I
    iget v4, v4, Landroid/widget/ExpandableListPosition;->type:I

    if-eq v4, v8, :cond_a

    .line 416
    iget-object v4, v5, Landroid/widget/ExpandableListConnector$PositionMetadata;->position:Landroid/widget/ExpandableListPosition;

    iget v4, v4, Landroid/widget/ExpandableListPosition;->type:I

    move/from16 v19, v6

    const/4 v6, 0x1

    if-ne v4, v6, :cond_8

    .line 417
    .end local v6    # "lastChildFlPos":I
    .restart local v19    # "lastChildFlPos":I
    iget v4, v0, Landroid/widget/ExpandableListView;->mChildIndicatorLeft:I

    const/4 v6, -0x1

    if-ne v4, v6, :cond_6

    .line 418
    iget v4, v0, Landroid/widget/ExpandableListView;->mIndicatorLeft:I

    goto :goto_3

    :cond_6
    iget v4, v0, Landroid/widget/ExpandableListView;->mChildIndicatorLeft:I

    :goto_3
    iput v4, v9, Landroid/graphics/Rect;->left:I

    .line 419
    iget v4, v0, Landroid/widget/ExpandableListView;->mChildIndicatorRight:I

    if-ne v4, v6, :cond_7

    .line 420
    iget v4, v0, Landroid/widget/ExpandableListView;->mIndicatorRight:I

    goto :goto_4

    :cond_7
    iget v4, v0, Landroid/widget/ExpandableListView;->mChildIndicatorRight:I

    :goto_4
    iput v4, v9, Landroid/graphics/Rect;->right:I

    goto :goto_5

    .line 422
    :cond_8
    iget v4, v0, Landroid/widget/ExpandableListView;->mIndicatorLeft:I

    iput v4, v9, Landroid/graphics/Rect;->left:I

    .line 423
    iget v4, v0, Landroid/widget/ExpandableListView;->mIndicatorRight:I

    iput v4, v9, Landroid/graphics/Rect;->right:I

    .line 426
    :goto_5
    if-eqz v16, :cond_9

    .line 427
    iget v4, v9, Landroid/graphics/Rect;->left:I

    .line 428
    .local v4, "temp":I
    iget v6, v9, Landroid/graphics/Rect;->right:I

    sub-int v6, v17, v6

    iput v6, v9, Landroid/graphics/Rect;->left:I

    .line 429
    sub-int v6, v17, v4

    iput v6, v9, Landroid/graphics/Rect;->right:I

    .line 431
    iget v6, v9, Landroid/graphics/Rect;->left:I

    move/from16 v20, v4

    iget v4, v0, Landroid/widget/ExpandableListView;->mPaddingRight:I

    .end local v4    # "temp":I
    .local v20, "temp":I
    sub-int/2addr v6, v4

    iput v6, v9, Landroid/graphics/Rect;->left:I

    .line 432
    iget v4, v9, Landroid/graphics/Rect;->right:I

    iget v6, v0, Landroid/widget/ExpandableListView;->mPaddingRight:I

    sub-int/2addr v4, v6

    iput v4, v9, Landroid/graphics/Rect;->right:I

    .line 433
    .end local v20    # "temp":I
    goto :goto_6

    .line 434
    :cond_9
    iget v4, v9, Landroid/graphics/Rect;->left:I

    iget v6, v0, Landroid/widget/ExpandableListView;->mPaddingLeft:I

    add-int/2addr v4, v6

    iput v4, v9, Landroid/graphics/Rect;->left:I

    .line 435
    iget v4, v9, Landroid/graphics/Rect;->right:I

    iget v6, v0, Landroid/widget/ExpandableListView;->mPaddingLeft:I

    add-int/2addr v4, v6

    iput v4, v9, Landroid/graphics/Rect;->right:I

    .line 438
    :goto_6
    iget-object v4, v5, Landroid/widget/ExpandableListConnector$PositionMetadata;->position:Landroid/widget/ExpandableListPosition;

    iget v8, v4, Landroid/widget/ExpandableListPosition;->type:I

    goto :goto_7

    .line 441
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

    .line 443
    iget-boolean v4, v0, Landroid/widget/ExpandableListView;->mStackFromBottom:Z

    if-eqz v4, :cond_b

    .line 445
    iput v14, v9, Landroid/graphics/Rect;->top:I

    .line 446
    iput v15, v9, Landroid/graphics/Rect;->bottom:I

    goto :goto_8

    .line 448
    :cond_b
    iput v14, v9, Landroid/graphics/Rect;->top:I

    .line 449
    iput v15, v9, Landroid/graphics/Rect;->bottom:I

    .line 453
    :goto_8
    invoke-direct {v0, v5}, Landroid/widget/ExpandableListView;->getIndicator(Landroid/widget/ExpandableListConnector$PositionMetadata;)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    .line 454
    .local v4, "indicator":Landroid/graphics/drawable/Drawable;
    if-eqz v4, :cond_c

    .line 456
    invoke-virtual {v4, v9}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 457
    invoke-virtual {v4, v1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 460
    .end local v4    # "indicator":Landroid/graphics/drawable/Drawable;
    :cond_c
    invoke-virtual {v5}, Landroid/widget/ExpandableListConnector$PositionMetadata;->recycle()V

    .end local v5    # "pos":Landroid/widget/ExpandableListConnector$PositionMetadata;
    .end local v13    # "item":Landroid/view/View;
    .end local v14    # "t":I
    .end local v15    # "b":I
    .end local v16    # "isLayoutRtl":Z
    .end local v17    # "width":I
    goto :goto_9

    .line 390
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

    .line 389
    move/from16 v4, v18

    move/from16 v6, v19

    const/4 v5, 0x1

    goto/16 :goto_1

    .line 463
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

    .line 464
    invoke-virtual {v1, v2}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 466
    :cond_f
    return-void
.end method

.method drawDivider(Landroid/graphics/Canvas;Landroid/graphics/Rect;I)V
    .locals 5
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "bounds"    # Landroid/graphics/Rect;
    .param p3, "childIndex"    # I

    .line 522
    iget v0, p0, Landroid/widget/ExpandableListView;->mFirstPosition:I

    add-int/2addr v0, p3

    .line 526
    .local v0, "flatListPosition":I
    if-ltz v0, :cond_2

    .line 527
    invoke-direct {p0, v0}, Landroid/widget/ExpandableListView;->getFlatPositionForConnector(I)I

    move-result v1

    .line 528
    .local v1, "adjustedPosition":I
    iget-object v2, p0, Landroid/widget/ExpandableListView;->mConnector:Landroid/widget/ExpandableListConnector;

    invoke-virtual {v2, v1}, Landroid/widget/ExpandableListConnector;->getUnflattenedPos(I)Landroid/widget/ExpandableListConnector$PositionMetadata;

    move-result-object v2

    .line 530
    .local v2, "pos":Landroid/widget/ExpandableListConnector$PositionMetadata;
    iget-object v3, v2, Landroid/widget/ExpandableListConnector$PositionMetadata;->position:Landroid/widget/ExpandableListPosition;

    iget v3, v3, Landroid/widget/ExpandableListPosition;->type:I

    const/4 v4, 0x1

    if-eq v3, v4, :cond_1

    invoke-virtual {v2}, Landroid/widget/ExpandableListConnector$PositionMetadata;->isExpanded()Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, v2, Landroid/widget/ExpandableListConnector$PositionMetadata;->groupMetadata:Landroid/widget/ExpandableListConnector$GroupMetadata;

    iget v3, v3, Landroid/widget/ExpandableListConnector$GroupMetadata;->lastChildFlPos:I

    iget-object v4, v2, Landroid/widget/ExpandableListConnector$PositionMetadata;->groupMetadata:Landroid/widget/ExpandableListConnector$GroupMetadata;

    iget v4, v4, Landroid/widget/ExpandableListConnector$GroupMetadata;->flPos:I

    if-eq v3, v4, :cond_0

    goto :goto_0

    .line 539
    :cond_0
    invoke-virtual {v2}, Landroid/widget/ExpandableListConnector$PositionMetadata;->recycle()V

    .end local v1    # "adjustedPosition":I
    .end local v2    # "pos":Landroid/widget/ExpandableListConnector$PositionMetadata;
    goto :goto_1

    .line 533
    .restart local v1    # "adjustedPosition":I
    .restart local v2    # "pos":Landroid/widget/ExpandableListConnector$PositionMetadata;
    :cond_1
    :goto_0
    iget-object v3, p0, Landroid/widget/ExpandableListView;->mChildDivider:Landroid/graphics/drawable/Drawable;

    .line 534
    .local v3, "divider":Landroid/graphics/drawable/Drawable;
    invoke-virtual {v3, p2}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 535
    invoke-virtual {v3, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 536
    invoke-virtual {v2}, Landroid/widget/ExpandableListConnector$PositionMetadata;->recycle()V

    .line 537
    return-void

    .line 543
    .end local v1    # "adjustedPosition":I
    .end local v2    # "pos":Landroid/widget/ExpandableListConnector$PositionMetadata;
    .end local v3    # "divider":Landroid/graphics/drawable/Drawable;
    :cond_2
    :goto_1
    invoke-super {p0, p1, p2, v0}, Landroid/widget/ListView;->drawDivider(Landroid/graphics/Canvas;Landroid/graphics/Rect;I)V

    .line 544
    return-void
.end method

.method public expandGroup(I)Z
    .locals 1
    .param p1, "groupPos"    # I

    .line 734
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/widget/ExpandableListView;->expandGroup(IZ)Z

    move-result v0

    return v0
.end method

.method public expandGroup(IZ)Z
    .locals 6
    .param p1, "groupPos"    # I
    .param p2, "animate"    # Z

    .line 746
    const/4 v0, -0x1

    const/4 v1, 0x2

    invoke-static {v1, p1, v0, v0}, Landroid/widget/ExpandableListPosition;->obtain(IIII)Landroid/widget/ExpandableListPosition;

    move-result-object v0

    .line 748
    .local v0, "elGroupPos":Landroid/widget/ExpandableListPosition;
    iget-object v1, p0, Landroid/widget/ExpandableListView;->mConnector:Landroid/widget/ExpandableListConnector;

    invoke-virtual {v1, v0}, Landroid/widget/ExpandableListConnector;->getFlattenedPos(Landroid/widget/ExpandableListPosition;)Landroid/widget/ExpandableListConnector$PositionMetadata;

    move-result-object v1

    .line 749
    .local v1, "pm":Landroid/widget/ExpandableListConnector$PositionMetadata;
    invoke-virtual {v0}, Landroid/widget/ExpandableListPosition;->recycle()V

    .line 750
    iget-object v2, p0, Landroid/widget/ExpandableListView;->mConnector:Landroid/widget/ExpandableListConnector;

    invoke-virtual {v2, v1}, Landroid/widget/ExpandableListConnector;->expandGroup(Landroid/widget/ExpandableListConnector$PositionMetadata;)Z

    move-result v2

    .line 752
    .local v2, "retValue":Z
    iget-object v3, p0, Landroid/widget/ExpandableListView;->mOnGroupExpandListener:Landroid/widget/ExpandableListView$OnGroupExpandListener;

    if-eqz v3, :cond_0

    .line 753
    iget-object v3, p0, Landroid/widget/ExpandableListView;->mOnGroupExpandListener:Landroid/widget/ExpandableListView$OnGroupExpandListener;

    invoke-interface {v3, p1}, Landroid/widget/ExpandableListView$OnGroupExpandListener;->onGroupExpand(I)V

    .line 756
    :cond_0
    if-eqz p2, :cond_1

    .line 757
    iget-object v3, v1, Landroid/widget/ExpandableListConnector$PositionMetadata;->position:Landroid/widget/ExpandableListPosition;

    iget v3, v3, Landroid/widget/ExpandableListPosition;->flatListPos:I

    .line 759
    .local v3, "groupFlatPos":I
    invoke-virtual {p0}, Landroid/widget/ExpandableListView;->getHeaderViewsCount()I

    move-result v4

    add-int/2addr v4, v3

    .line 760
    .local v4, "shiftedGroupPosition":I
    iget-object v5, p0, Landroid/widget/ExpandableListView;->mAdapter:Landroid/widget/ExpandableListAdapter;

    invoke-interface {v5, p1}, Landroid/widget/ExpandableListAdapter;->getChildrenCount(I)I

    move-result v5

    add-int/2addr v5, v4

    invoke-virtual {p0, v5, v4}, Landroid/widget/ExpandableListView;->smoothScrollToPosition(II)V

    .line 763
    .end local v3    # "groupFlatPos":I
    .end local v4    # "shiftedGroupPosition":I
    :cond_1
    invoke-virtual {v1}, Landroid/widget/ExpandableListConnector$PositionMetadata;->recycle()V

    .line 765
    return v2
.end method

.method public getAccessibilityClassName()Ljava/lang/CharSequence;
    .locals 1

    .line 1344
    const-class v0, Landroid/widget/ExpandableListView;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getAdapter()Landroid/widget/Adapter;
    .locals 1

    .line 84
    invoke-virtual {p0}, Landroid/widget/ExpandableListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    return-object v0
.end method

.method public getAdapter()Landroid/widget/ListAdapter;
    .locals 1

    .line 569
    invoke-super {p0}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    return-object v0
.end method

.method public getExpandableListAdapter()Landroid/widget/ExpandableListAdapter;
    .locals 1

    .line 609
    iget-object v0, p0, Landroid/widget/ExpandableListView;->mAdapter:Landroid/widget/ExpandableListAdapter;

    return-object v0
.end method

.method public getExpandableListPosition(I)J
    .locals 4
    .param p1, "flatListPosition"    # I

    .line 888
    invoke-direct {p0, p1}, Landroid/widget/ExpandableListView;->isHeaderOrFooterPosition(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 889
    const-wide v0, 0xffffffffL

    return-wide v0

    .line 892
    :cond_0
    invoke-direct {p0, p1}, Landroid/widget/ExpandableListView;->getFlatPositionForConnector(I)I

    move-result v0

    .line 893
    .local v0, "adjustedPosition":I
    iget-object v1, p0, Landroid/widget/ExpandableListView;->mConnector:Landroid/widget/ExpandableListConnector;

    invoke-virtual {v1, v0}, Landroid/widget/ExpandableListConnector;->getUnflattenedPos(I)Landroid/widget/ExpandableListConnector$PositionMetadata;

    move-result-object v1

    .line 894
    .local v1, "pm":Landroid/widget/ExpandableListConnector$PositionMetadata;
    iget-object v2, v1, Landroid/widget/ExpandableListConnector$PositionMetadata;->position:Landroid/widget/ExpandableListPosition;

    invoke-virtual {v2}, Landroid/widget/ExpandableListPosition;->getPackedPosition()J

    move-result-wide v2

    .line 895
    .local v2, "packedPos":J
    invoke-virtual {v1}, Landroid/widget/ExpandableListConnector$PositionMetadata;->recycle()V

    .line 896
    return-wide v2
.end method

.method public getFlatListPosition(J)I
    .locals 4
    .param p1, "packedPosition"    # J

    .line 911
    nop

    .line 912
    invoke-static {p1, p2}, Landroid/widget/ExpandableListPosition;->obtainPosition(J)Landroid/widget/ExpandableListPosition;

    move-result-object v0

    .line 913
    .local v0, "elPackedPos":Landroid/widget/ExpandableListPosition;
    iget-object v1, p0, Landroid/widget/ExpandableListView;->mConnector:Landroid/widget/ExpandableListConnector;

    invoke-virtual {v1, v0}, Landroid/widget/ExpandableListConnector;->getFlattenedPos(Landroid/widget/ExpandableListPosition;)Landroid/widget/ExpandableListConnector$PositionMetadata;

    move-result-object v1

    .line 914
    .local v1, "pm":Landroid/widget/ExpandableListConnector$PositionMetadata;
    invoke-virtual {v0}, Landroid/widget/ExpandableListPosition;->recycle()V

    .line 915
    iget-object v2, v1, Landroid/widget/ExpandableListConnector$PositionMetadata;->position:Landroid/widget/ExpandableListPosition;

    iget v2, v2, Landroid/widget/ExpandableListPosition;->flatListPos:I

    .line 916
    .local v2, "flatListPosition":I
    invoke-virtual {v1}, Landroid/widget/ExpandableListConnector$PositionMetadata;->recycle()V

    .line 917
    invoke-direct {p0, v2}, Landroid/widget/ExpandableListView;->getAbsoluteFlatPosition(I)I

    move-result v3

    return v3
.end method

.method public getSelectedId()J
    .locals 5

    .line 943
    invoke-virtual {p0}, Landroid/widget/ExpandableListView;->getSelectedPosition()J

    move-result-wide v0

    .line 944
    .local v0, "packedPos":J
    const-wide v2, 0xffffffffL

    cmp-long v2, v0, v2

    if-nez v2, :cond_0

    const-wide/16 v2, -0x1

    return-wide v2

    .line 946
    :cond_0
    invoke-static {v0, v1}, Landroid/widget/ExpandableListView;->getPackedPositionGroup(J)I

    move-result v2

    .line 948
    .local v2, "groupPos":I
    invoke-static {v0, v1}, Landroid/widget/ExpandableListView;->getPackedPositionType(J)I

    move-result v3

    if-nez v3, :cond_1

    .line 950
    iget-object v3, p0, Landroid/widget/ExpandableListView;->mAdapter:Landroid/widget/ExpandableListAdapter;

    invoke-interface {v3, v2}, Landroid/widget/ExpandableListAdapter;->getGroupId(I)J

    move-result-wide v3

    return-wide v3

    .line 953
    :cond_1
    iget-object v3, p0, Landroid/widget/ExpandableListView;->mAdapter:Landroid/widget/ExpandableListAdapter;

    invoke-static {v0, v1}, Landroid/widget/ExpandableListView;->getPackedPositionChild(J)I

    move-result v4

    invoke-interface {v3, v2, v4}, Landroid/widget/ExpandableListAdapter;->getChildId(II)J

    move-result-wide v3

    return-wide v3
.end method

.method public getSelectedPosition()J
    .locals 3

    .line 929
    invoke-virtual {p0}, Landroid/widget/ExpandableListView;->getSelectedItemPosition()I

    move-result v0

    .line 932
    .local v0, "selectedPos":I
    invoke-virtual {p0, v0}, Landroid/widget/ExpandableListView;->getExpandableListPosition(I)J

    move-result-wide v1

    return-wide v1
.end method

.method handleItemClick(Landroid/view/View;IJ)Z
    .locals 9
    .param p1, "v"    # Landroid/view/View;
    .param p2, "position"    # I
    .param p3, "id"    # J

    .line 665
    iget-object v0, p0, Landroid/widget/ExpandableListView;->mConnector:Landroid/widget/ExpandableListConnector;

    invoke-virtual {v0, p2}, Landroid/widget/ExpandableListConnector;->getUnflattenedPos(I)Landroid/widget/ExpandableListConnector$PositionMetadata;

    move-result-object v0

    .line 667
    .local v0, "posMetadata":Landroid/widget/ExpandableListConnector$PositionMetadata;
    iget-object v1, v0, Landroid/widget/ExpandableListConnector$PositionMetadata;->position:Landroid/widget/ExpandableListPosition;

    invoke-direct {p0, v1}, Landroid/widget/ExpandableListView;->getChildOrGroupId(Landroid/widget/ExpandableListPosition;)J

    move-result-wide p3

    .line 670
    iget-object v1, v0, Landroid/widget/ExpandableListConnector$PositionMetadata;->position:Landroid/widget/ExpandableListPosition;

    iget v1, v1, Landroid/widget/ExpandableListPosition;->type:I

    const/4 v8, 0x0

    const/4 v2, 0x2

    if-ne v1, v2, :cond_4

    .line 674
    iget-object v1, p0, Landroid/widget/ExpandableListView;->mOnGroupClickListener:Landroid/widget/ExpandableListView$OnGroupClickListener;

    if-eqz v1, :cond_0

    .line 675
    iget-object v2, p0, Landroid/widget/ExpandableListView;->mOnGroupClickListener:Landroid/widget/ExpandableListView$OnGroupClickListener;

    iget-object v1, v0, Landroid/widget/ExpandableListConnector$PositionMetadata;->position:Landroid/widget/ExpandableListPosition;

    iget v5, v1, Landroid/widget/ExpandableListPosition;->groupPos:I

    move-object v3, p0

    move-object v4, p1

    move-wide v6, p3

    invoke-interface/range {v2 .. v7}, Landroid/widget/ExpandableListView$OnGroupClickListener;->onGroupClick(Landroid/widget/ExpandableListView;Landroid/view/View;IJ)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 677
    invoke-virtual {v0}, Landroid/widget/ExpandableListConnector$PositionMetadata;->recycle()V

    .line 678
    const/4 v1, 0x1

    return v1

    .line 682
    :cond_0
    invoke-virtual {v0}, Landroid/widget/ExpandableListConnector$PositionMetadata;->isExpanded()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 684
    iget-object v1, p0, Landroid/widget/ExpandableListView;->mConnector:Landroid/widget/ExpandableListConnector;

    invoke-virtual {v1, v0}, Landroid/widget/ExpandableListConnector;->collapseGroup(Landroid/widget/ExpandableListConnector$PositionMetadata;)Z

    .line 686
    invoke-virtual {p0, v8}, Landroid/widget/ExpandableListView;->playSoundEffect(I)V

    .line 688
    iget-object v1, p0, Landroid/widget/ExpandableListView;->mOnGroupCollapseListener:Landroid/widget/ExpandableListView$OnGroupCollapseListener;

    if-eqz v1, :cond_3

    .line 689
    iget-object v1, p0, Landroid/widget/ExpandableListView;->mOnGroupCollapseListener:Landroid/widget/ExpandableListView$OnGroupCollapseListener;

    iget-object v2, v0, Landroid/widget/ExpandableListConnector$PositionMetadata;->position:Landroid/widget/ExpandableListPosition;

    iget v2, v2, Landroid/widget/ExpandableListPosition;->groupPos:I

    invoke-interface {v1, v2}, Landroid/widget/ExpandableListView$OnGroupCollapseListener;->onGroupCollapse(I)V

    goto :goto_0

    .line 693
    :cond_1
    iget-object v1, p0, Landroid/widget/ExpandableListView;->mConnector:Landroid/widget/ExpandableListConnector;

    invoke-virtual {v1, v0}, Landroid/widget/ExpandableListConnector;->expandGroup(Landroid/widget/ExpandableListConnector$PositionMetadata;)Z

    .line 695
    invoke-virtual {p0, v8}, Landroid/widget/ExpandableListView;->playSoundEffect(I)V

    .line 697
    iget-object v1, p0, Landroid/widget/ExpandableListView;->mOnGroupExpandListener:Landroid/widget/ExpandableListView$OnGroupExpandListener;

    if-eqz v1, :cond_2

    .line 698
    iget-object v1, p0, Landroid/widget/ExpandableListView;->mOnGroupExpandListener:Landroid/widget/ExpandableListView$OnGroupExpandListener;

    iget-object v2, v0, Landroid/widget/ExpandableListConnector$PositionMetadata;->position:Landroid/widget/ExpandableListPosition;

    iget v2, v2, Landroid/widget/ExpandableListPosition;->groupPos:I

    invoke-interface {v1, v2}, Landroid/widget/ExpandableListView$OnGroupExpandListener;->onGroupExpand(I)V

    .line 701
    :cond_2
    iget-object v1, v0, Landroid/widget/ExpandableListConnector$PositionMetadata;->position:Landroid/widget/ExpandableListPosition;

    iget v1, v1, Landroid/widget/ExpandableListPosition;->groupPos:I

    .line 702
    .local v1, "groupPos":I
    iget-object v2, v0, Landroid/widget/ExpandableListConnector$PositionMetadata;->position:Landroid/widget/ExpandableListPosition;

    iget v2, v2, Landroid/widget/ExpandableListPosition;->flatListPos:I

    .line 704
    .local v2, "groupFlatPos":I
    invoke-virtual {p0}, Landroid/widget/ExpandableListView;->getHeaderViewsCount()I

    move-result v3

    add-int/2addr v3, v2

    .line 705
    .local v3, "shiftedGroupPosition":I
    iget-object v4, p0, Landroid/widget/ExpandableListView;->mAdapter:Landroid/widget/ExpandableListAdapter;

    invoke-interface {v4, v1}, Landroid/widget/ExpandableListAdapter;->getChildrenCount(I)I

    move-result v4

    add-int/2addr v4, v3

    invoke-virtual {p0, v4, v3}, Landroid/widget/ExpandableListView;->smoothScrollToPosition(II)V

    .line 709
    .end local v1    # "groupPos":I
    .end local v2    # "groupFlatPos":I
    .end local v3    # "shiftedGroupPosition":I
    :cond_3
    :goto_0
    const/4 v8, 0x1

    .local v8, "returnValue":Z
    goto :goto_1

    .line 712
    .end local v8    # "returnValue":Z
    :cond_4
    iget-object v1, p0, Landroid/widget/ExpandableListView;->mOnChildClickListener:Landroid/widget/ExpandableListView$OnChildClickListener;

    if-eqz v1, :cond_5

    .line 713
    invoke-virtual {p0, v8}, Landroid/widget/ExpandableListView;->playSoundEffect(I)V

    .line 714
    iget-object v2, p0, Landroid/widget/ExpandableListView;->mOnChildClickListener:Landroid/widget/ExpandableListView$OnChildClickListener;

    iget-object v1, v0, Landroid/widget/ExpandableListConnector$PositionMetadata;->position:Landroid/widget/ExpandableListPosition;

    iget v5, v1, Landroid/widget/ExpandableListPosition;->groupPos:I

    iget-object v1, v0, Landroid/widget/ExpandableListConnector$PositionMetadata;->position:Landroid/widget/ExpandableListPosition;

    iget v6, v1, Landroid/widget/ExpandableListPosition;->childPos:I

    move-object v3, p0

    move-object v4, p1

    move-wide v7, p3

    invoke-interface/range {v2 .. v8}, Landroid/widget/ExpandableListView$OnChildClickListener;->onChildClick(Landroid/widget/ExpandableListView;Landroid/view/View;IIJ)Z

    move-result v1

    return v1

    .line 718
    :cond_5
    nop

    .restart local v8    # "returnValue":Z
    :goto_1
    move v1, v8

    .line 721
    .end local v8    # "returnValue":Z
    .local v1, "returnValue":Z
    invoke-virtual {v0}, Landroid/widget/ExpandableListConnector$PositionMetadata;->recycle()V

    .line 723
    return v1
.end method

.method public isGroupExpanded(I)Z
    .locals 1
    .param p1, "groupPosition"    # I

    .line 1019
    iget-object v0, p0, Landroid/widget/ExpandableListView;->mConnector:Landroid/widget/ExpandableListConnector;

    invoke-virtual {v0, p1}, Landroid/widget/ExpandableListConnector;->isGroupExpanded(I)Z

    move-result v0

    return v0
.end method

.method public onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 3
    .param p1, "state"    # Landroid/os/Parcelable;

    .line 1329
    instance-of v0, p1, Landroid/widget/ExpandableListView$SavedState;

    if-nez v0, :cond_0

    .line 1330
    invoke-super {p0, p1}, Landroid/widget/ListView;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 1331
    return-void

    .line 1334
    :cond_0
    move-object v0, p1

    check-cast v0, Landroid/widget/ExpandableListView$SavedState;

    .line 1335
    .local v0, "ss":Landroid/widget/ExpandableListView$SavedState;
    invoke-virtual {v0}, Landroid/widget/ExpandableListView$SavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v1

    invoke-super {p0, v1}, Landroid/widget/ListView;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 1337
    iget-object v1, p0, Landroid/widget/ExpandableListView;->mConnector:Landroid/widget/ExpandableListConnector;

    if-eqz v1, :cond_1

    iget-object v1, v0, Landroid/widget/ExpandableListView$SavedState;->expandedGroupMetadataList:Ljava/util/ArrayList;

    if-eqz v1, :cond_1

    .line 1338
    iget-object v1, p0, Landroid/widget/ExpandableListView;->mConnector:Landroid/widget/ExpandableListConnector;

    iget-object v2, v0, Landroid/widget/ExpandableListView$SavedState;->expandedGroupMetadataList:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Landroid/widget/ExpandableListConnector;->setExpandedGroupMetadataList(Ljava/util/ArrayList;)V

    .line 1340
    :cond_1
    return-void
.end method

.method public onRtlPropertiesChanged(I)V
    .locals 0
    .param p1, "layoutDirection"    # I

    .line 295
    invoke-direct {p0}, Landroid/widget/ExpandableListView;->resolveIndicator()V

    .line 296
    invoke-direct {p0}, Landroid/widget/ExpandableListView;->resolveChildIndicator()V

    .line 297
    return-void
.end method

.method public onSaveInstanceState()Landroid/os/Parcelable;
    .locals 3

    .line 1322
    invoke-super {p0}, Landroid/widget/ListView;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v0

    .line 1323
    .local v0, "superState":Landroid/os/Parcelable;
    new-instance v1, Landroid/widget/ExpandableListView$SavedState;

    .line 1324
    iget-object v2, p0, Landroid/widget/ExpandableListView;->mConnector:Landroid/widget/ExpandableListConnector;

    if-eqz v2, :cond_0

    iget-object v2, p0, Landroid/widget/ExpandableListView;->mConnector:Landroid/widget/ExpandableListConnector;

    invoke-virtual {v2}, Landroid/widget/ExpandableListConnector;->getExpandedGroupMetadataList()Ljava/util/ArrayList;

    move-result-object v2

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    invoke-direct {v1, v0, v2}, Landroid/widget/ExpandableListView$SavedState;-><init>(Landroid/os/Parcelable;Ljava/util/ArrayList;)V

    .line 1323
    return-object v1
.end method

.method public performItemClick(Landroid/view/View;IJ)Z
    .locals 2
    .param p1, "v"    # Landroid/view/View;
    .param p2, "position"    # I
    .param p3, "id"    # J

    .line 646
    invoke-direct {p0, p2}, Landroid/widget/ExpandableListView;->isHeaderOrFooterPosition(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 648
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/ListView;->performItemClick(Landroid/view/View;IJ)Z

    move-result v0

    return v0

    .line 652
    :cond_0
    invoke-direct {p0, p2}, Landroid/widget/ExpandableListView;->getFlatPositionForConnector(I)I

    move-result v0

    .line 653
    .local v0, "adjustedPosition":I
    invoke-virtual {p0, p1, v0, p3, p4}, Landroid/widget/ExpandableListView;->handleItemClick(Landroid/view/View;IJ)Z

    move-result v1

    return v1
.end method

.method public bridge synthetic setAdapter(Landroid/widget/Adapter;)V
    .locals 0

    .line 84
    check-cast p1, Landroid/widget/ListAdapter;

    invoke-virtual {p0, p1}, Landroid/widget/ExpandableListView;->setAdapter(Landroid/widget/ListAdapter;)V

    return-void
.end method

.method public setAdapter(Landroid/widget/ExpandableListAdapter;)V
    .locals 1
    .param p1, "adapter"    # Landroid/widget/ExpandableListAdapter;

    .line 591
    iput-object p1, p0, Landroid/widget/ExpandableListView;->mAdapter:Landroid/widget/ExpandableListAdapter;

    .line 593
    if-eqz p1, :cond_0

    .line 595
    new-instance v0, Landroid/widget/ExpandableListConnector;

    invoke-direct {v0, p1}, Landroid/widget/ExpandableListConnector;-><init>(Landroid/widget/ExpandableListAdapter;)V

    iput-object v0, p0, Landroid/widget/ExpandableListView;->mConnector:Landroid/widget/ExpandableListConnector;

    goto :goto_0

    .line 597
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/widget/ExpandableListView;->mConnector:Landroid/widget/ExpandableListConnector;

    .line 601
    :goto_0
    iget-object v0, p0, Landroid/widget/ExpandableListView;->mConnector:Landroid/widget/ExpandableListConnector;

    invoke-super {p0, v0}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 602
    return-void
.end method

.method public setAdapter(Landroid/widget/ListAdapter;)V
    .locals 2
    .param p1, "adapter"    # Landroid/widget/ListAdapter;

    .line 554
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "For ExpandableListView, use setAdapter(ExpandableListAdapter) instead of setAdapter(ListAdapter)"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setChildDivider(Landroid/graphics/drawable/Drawable;)V
    .locals 0
    .param p1, "childDivider"    # Landroid/graphics/drawable/Drawable;

    .line 517
    iput-object p1, p0, Landroid/widget/ExpandableListView;->mChildDivider:Landroid/graphics/drawable/Drawable;

    .line 518
    return-void
.end method

.method public setChildIndicator(Landroid/graphics/drawable/Drawable;)V
    .locals 0
    .param p1, "childIndicator"    # Landroid/graphics/drawable/Drawable;

    .line 1158
    iput-object p1, p0, Landroid/widget/ExpandableListView;->mChildIndicator:Landroid/graphics/drawable/Drawable;

    .line 1159
    return-void
.end method

.method public setChildIndicatorBounds(II)V
    .locals 0
    .param p1, "left"    # I
    .param p2, "right"    # I

    .line 1173
    iput p1, p0, Landroid/widget/ExpandableListView;->mChildIndicatorLeft:I

    .line 1174
    iput p2, p0, Landroid/widget/ExpandableListView;->mChildIndicatorRight:I

    .line 1175
    invoke-direct {p0}, Landroid/widget/ExpandableListView;->resolveChildIndicator()V

    .line 1176
    return-void
.end method

.method public setChildIndicatorBoundsRelative(II)V
    .locals 0
    .param p1, "start"    # I
    .param p2, "end"    # I

    .line 1190
    iput p1, p0, Landroid/widget/ExpandableListView;->mChildIndicatorStart:I

    .line 1191
    iput p2, p0, Landroid/widget/ExpandableListView;->mChildIndicatorEnd:I

    .line 1192
    invoke-direct {p0}, Landroid/widget/ExpandableListView;->resolveChildIndicator()V

    .line 1193
    return-void
.end method

.method public setGroupIndicator(Landroid/graphics/drawable/Drawable;)V
    .locals 2
    .param p1, "groupIndicator"    # Landroid/graphics/drawable/Drawable;

    .line 1204
    iput-object p1, p0, Landroid/widget/ExpandableListView;->mGroupIndicator:Landroid/graphics/drawable/Drawable;

    .line 1205
    iget v0, p0, Landroid/widget/ExpandableListView;->mIndicatorRight:I

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/widget/ExpandableListView;->mGroupIndicator:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 1206
    iget v0, p0, Landroid/widget/ExpandableListView;->mIndicatorLeft:I

    iget-object v1, p0, Landroid/widget/ExpandableListView;->mGroupIndicator:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p0, Landroid/widget/ExpandableListView;->mIndicatorRight:I

    .line 1208
    :cond_0
    return-void
.end method

.method public setIndicatorBounds(II)V
    .locals 0
    .param p1, "left"    # I
    .param p2, "right"    # I

    .line 1222
    iput p1, p0, Landroid/widget/ExpandableListView;->mIndicatorLeft:I

    .line 1223
    iput p2, p0, Landroid/widget/ExpandableListView;->mIndicatorRight:I

    .line 1224
    invoke-direct {p0}, Landroid/widget/ExpandableListView;->resolveIndicator()V

    .line 1225
    return-void
.end method

.method public setIndicatorBoundsRelative(II)V
    .locals 0
    .param p1, "start"    # I
    .param p2, "end"    # I

    .line 1239
    iput p1, p0, Landroid/widget/ExpandableListView;->mIndicatorStart:I

    .line 1240
    iput p2, p0, Landroid/widget/ExpandableListView;->mIndicatorEnd:I

    .line 1241
    invoke-direct {p0}, Landroid/widget/ExpandableListView;->resolveIndicator()V

    .line 1242
    return-void
.end method

.method public setOnChildClickListener(Landroid/widget/ExpandableListView$OnChildClickListener;)V
    .locals 0
    .param p1, "onChildClickListener"    # Landroid/widget/ExpandableListView$OnChildClickListener;

    .line 870
    iput-object p1, p0, Landroid/widget/ExpandableListView;->mOnChildClickListener:Landroid/widget/ExpandableListView$OnChildClickListener;

    .line 871
    return-void
.end method

.method public setOnGroupClickListener(Landroid/widget/ExpandableListView$OnGroupClickListener;)V
    .locals 0
    .param p1, "onGroupClickListener"    # Landroid/widget/ExpandableListView$OnGroupClickListener;

    .line 843
    iput-object p1, p0, Landroid/widget/ExpandableListView;->mOnGroupClickListener:Landroid/widget/ExpandableListView$OnGroupClickListener;

    .line 844
    return-void
.end method

.method public setOnGroupCollapseListener(Landroid/widget/ExpandableListView$OnGroupCollapseListener;)V
    .locals 0
    .param p1, "onGroupCollapseListener"    # Landroid/widget/ExpandableListView$OnGroupCollapseListener;

    .line 800
    iput-object p1, p0, Landroid/widget/ExpandableListView;->mOnGroupCollapseListener:Landroid/widget/ExpandableListView$OnGroupCollapseListener;

    .line 801
    return-void
.end method

.method public setOnGroupExpandListener(Landroid/widget/ExpandableListView$OnGroupExpandListener;)V
    .locals 0
    .param p1, "onGroupExpandListener"    # Landroid/widget/ExpandableListView$OnGroupExpandListener;

    .line 818
    iput-object p1, p0, Landroid/widget/ExpandableListView;->mOnGroupExpandListener:Landroid/widget/ExpandableListView$OnGroupExpandListener;

    .line 819
    return-void
.end method

.method public setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V
    .locals 0
    .param p1, "l"    # Landroid/widget/AdapterView$OnItemClickListener;

    .line 582
    invoke-super {p0, p1}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 583
    return-void
.end method

.method public setSelectedChild(IIZ)Z
    .locals 4
    .param p1, "groupPosition"    # I
    .param p2, "childPosition"    # I
    .param p3, "shouldExpandGroup"    # Z

    .line 983
    invoke-static {p1, p2}, Landroid/widget/ExpandableListPosition;->obtainChildPosition(II)Landroid/widget/ExpandableListPosition;

    move-result-object v0

    .line 985
    .local v0, "elChildPos":Landroid/widget/ExpandableListPosition;
    iget-object v1, p0, Landroid/widget/ExpandableListView;->mConnector:Landroid/widget/ExpandableListConnector;

    invoke-virtual {v1, v0}, Landroid/widget/ExpandableListConnector;->getFlattenedPos(Landroid/widget/ExpandableListPosition;)Landroid/widget/ExpandableListConnector$PositionMetadata;

    move-result-object v1

    .line 987
    .local v1, "flatChildPos":Landroid/widget/ExpandableListConnector$PositionMetadata;
    if-nez v1, :cond_2

    .line 991
    if-nez p3, :cond_0

    const/4 v2, 0x0

    return v2

    .line 993
    :cond_0
    invoke-virtual {p0, p1}, Landroid/widget/ExpandableListView;->expandGroup(I)Z

    .line 995
    iget-object v2, p0, Landroid/widget/ExpandableListView;->mConnector:Landroid/widget/ExpandableListConnector;

    invoke-virtual {v2, v0}, Landroid/widget/ExpandableListConnector;->getFlattenedPos(Landroid/widget/ExpandableListPosition;)Landroid/widget/ExpandableListConnector$PositionMetadata;

    move-result-object v1

    .line 998
    if-eqz v1, :cond_1

    goto :goto_0

    .line 999
    :cond_1
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v3, "Could not find child"

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1003
    :cond_2
    :goto_0
    iget-object v2, v1, Landroid/widget/ExpandableListConnector$PositionMetadata;->position:Landroid/widget/ExpandableListPosition;

    iget v2, v2, Landroid/widget/ExpandableListPosition;->flatListPos:I

    invoke-direct {p0, v2}, Landroid/widget/ExpandableListView;->getAbsoluteFlatPosition(I)I

    move-result v2

    .line 1004
    .local v2, "absoluteFlatPosition":I
    invoke-super {p0, v2}, Landroid/widget/ListView;->setSelection(I)V

    .line 1006
    invoke-virtual {v0}, Landroid/widget/ExpandableListPosition;->recycle()V

    .line 1007
    invoke-virtual {v1}, Landroid/widget/ExpandableListConnector$PositionMetadata;->recycle()V

    .line 1009
    const/4 v3, 0x1

    return v3
.end method

.method public setSelectedGroup(I)V
    .locals 3
    .param p1, "groupPosition"    # I

    .line 962
    nop

    .line 963
    invoke-static {p1}, Landroid/widget/ExpandableListPosition;->obtainGroupPosition(I)Landroid/widget/ExpandableListPosition;

    move-result-object v0

    .line 964
    .local v0, "elGroupPos":Landroid/widget/ExpandableListPosition;
    iget-object v1, p0, Landroid/widget/ExpandableListView;->mConnector:Landroid/widget/ExpandableListConnector;

    invoke-virtual {v1, v0}, Landroid/widget/ExpandableListConnector;->getFlattenedPos(Landroid/widget/ExpandableListPosition;)Landroid/widget/ExpandableListConnector$PositionMetadata;

    move-result-object v1

    .line 965
    .local v1, "pm":Landroid/widget/ExpandableListConnector$PositionMetadata;
    invoke-virtual {v0}, Landroid/widget/ExpandableListPosition;->recycle()V

    .line 966
    iget-object v2, v1, Landroid/widget/ExpandableListConnector$PositionMetadata;->position:Landroid/widget/ExpandableListPosition;

    iget v2, v2, Landroid/widget/ExpandableListPosition;->flatListPos:I

    invoke-direct {p0, v2}, Landroid/widget/ExpandableListView;->getAbsoluteFlatPosition(I)I

    move-result v2

    .line 967
    .local v2, "absoluteFlatPosition":I
    invoke-super {p0, v2}, Landroid/widget/ListView;->setSelection(I)V

    .line 968
    invoke-virtual {v1}, Landroid/widget/ExpandableListConnector$PositionMetadata;->recycle()V

    .line 969
    return-void
.end method
