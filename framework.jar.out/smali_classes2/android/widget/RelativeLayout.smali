.class public Landroid/widget/RelativeLayout;
.super Landroid/view/ViewGroup;
.source "RelativeLayout.java"


# annotations
.annotation runtime Landroid/widget/RemoteViews$RemoteView;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/widget/RelativeLayout$DependencyGraph;,
        Landroid/widget/RelativeLayout$LayoutParams;,
        Landroid/widget/RelativeLayout$TopToBottomLeftToRightComparator;
    }
.end annotation


# static fields
.field public static final ABOVE:I = 0x2

.field public static final ALIGN_BASELINE:I = 0x4

.field public static final ALIGN_BOTTOM:I = 0x8

.field public static final ALIGN_END:I = 0x13

.field public static final ALIGN_LEFT:I = 0x5

.field public static final ALIGN_PARENT_BOTTOM:I = 0xc

.field public static final ALIGN_PARENT_END:I = 0x15

.field public static final ALIGN_PARENT_LEFT:I = 0x9

.field public static final ALIGN_PARENT_RIGHT:I = 0xb

.field public static final ALIGN_PARENT_START:I = 0x14

.field public static final ALIGN_PARENT_TOP:I = 0xa

.field public static final ALIGN_RIGHT:I = 0x7

.field public static final ALIGN_START:I = 0x12

.field public static final ALIGN_TOP:I = 0x6

.field public static final BELOW:I = 0x3

.field public static final CENTER_HORIZONTAL:I = 0xe

.field public static final CENTER_IN_PARENT:I = 0xd

.field public static final CENTER_VERTICAL:I = 0xf

.field private static final DEFAULT_WIDTH:I = 0x10000

.field public static final END_OF:I = 0x11

.field public static final LEFT_OF:I = 0x0

.field public static final RIGHT_OF:I = 0x1

.field private static final RULES_HORIZONTAL:[I

.field private static final RULES_VERTICAL:[I

.field public static final START_OF:I = 0x10

.field public static final TRUE:I = -0x1

.field private static final VALUE_NOT_SET:I = -0x80000000

.field private static final VERB_COUNT:I = 0x16


# instance fields
.field private mAllowBrokenMeasureSpecs:Z

.field private mBaselineView:Landroid/view/View;

.field private final mContentBounds:Landroid/graphics/Rect;

.field private mDirtyHierarchy:Z

.field private final mGraph:Landroid/widget/RelativeLayout$DependencyGraph;

.field private mGravity:I

.field private mIgnoreGravity:I

.field private mMeasureVerticalWithPaddingMargin:Z

.field private final mSelfBounds:Landroid/graphics/Rect;

.field private mSortedHorizontalChildren:[Landroid/view/View;

.field private mSortedVerticalChildren:[Landroid/view/View;

.field private mTopToBottomLeftToRightSet:Ljava/util/SortedSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/SortedSet<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 191
    const/4 v0, 0x5

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Landroid/widget/RelativeLayout;->RULES_VERTICAL:[I

    .line 195
    const/16 v0, 0x8

    new-array v0, v0, [I

    fill-array-data v0, :array_1

    sput-object v0, Landroid/widget/RelativeLayout;->RULES_HORIZONTAL:[I

    return-void

    :array_0
    .array-data 4
        0x2
        0x3
        0x4
        0x6
        0x8
    .end array-data

    :array_1
    .array-data 4
        0x0
        0x1
        0x5
        0x7
        0x10
        0x11
        0x12
        0x13
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 236
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 237
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 240
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 241
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .line 244
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 245
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I
    .param p4, "defStyleRes"    # I

    .line 248
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 204
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/widget/RelativeLayout;->mBaselineView:Landroid/view/View;

    .line 206
    const v1, 0x800033

    iput v1, p0, Landroid/widget/RelativeLayout;->mGravity:I

    .line 207
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Landroid/widget/RelativeLayout;->mContentBounds:Landroid/graphics/Rect;

    .line 208
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Landroid/widget/RelativeLayout;->mSelfBounds:Landroid/graphics/Rect;

    .line 211
    iput-object v0, p0, Landroid/widget/RelativeLayout;->mTopToBottomLeftToRightSet:Ljava/util/SortedSet;

    .line 216
    new-instance v1, Landroid/widget/RelativeLayout$DependencyGraph;

    invoke-direct {v1, v0}, Landroid/widget/RelativeLayout$DependencyGraph;-><init>(Landroid/widget/RelativeLayout$1;)V

    iput-object v1, p0, Landroid/widget/RelativeLayout;->mGraph:Landroid/widget/RelativeLayout$DependencyGraph;

    .line 221
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/widget/RelativeLayout;->mAllowBrokenMeasureSpecs:Z

    .line 225
    iput-boolean v0, p0, Landroid/widget/RelativeLayout;->mMeasureVerticalWithPaddingMargin:Z

    .line 249
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/RelativeLayout;->initFromAttributes(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 250
    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;->queryCompatibilityModes(Landroid/content/Context;)V

    .line 251
    return-void
.end method

.method private applyHorizontalSizeRules(Landroid/widget/RelativeLayout$LayoutParams;I[I)V
    .locals 4
    .param p1, "childParams"    # Landroid/widget/RelativeLayout$LayoutParams;
    .param p2, "myWidth"    # I
    .param p3, "rules"    # [I

    .line 896
    const/high16 v0, -0x80000000

    invoke-static {p1, v0}, Landroid/widget/RelativeLayout$LayoutParams;->access$102(Landroid/widget/RelativeLayout$LayoutParams;I)I

    .line 897
    invoke-static {p1, v0}, Landroid/widget/RelativeLayout$LayoutParams;->access$202(Landroid/widget/RelativeLayout$LayoutParams;I)I

    .line 899
    const/4 v0, 0x0

    invoke-direct {p0, p3, v0}, Landroid/widget/RelativeLayout;->getRelatedViewParams([II)Landroid/widget/RelativeLayout$LayoutParams;

    move-result-object v1

    .line 900
    .local v1, "anchorParams":Landroid/widget/RelativeLayout$LayoutParams;
    if-eqz v1, :cond_0

    .line 901
    invoke-static {v1}, Landroid/widget/RelativeLayout$LayoutParams;->access$100(Landroid/widget/RelativeLayout$LayoutParams;)I

    move-result v0

    iget v2, v1, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    iget v3, p1, Landroid/widget/RelativeLayout$LayoutParams;->rightMargin:I

    add-int/2addr v2, v3

    sub-int/2addr v0, v2

    invoke-static {p1, v0}, Landroid/widget/RelativeLayout$LayoutParams;->access$202(Landroid/widget/RelativeLayout$LayoutParams;I)I

    goto :goto_0

    .line 903
    :cond_0
    iget-boolean v2, p1, Landroid/widget/RelativeLayout$LayoutParams;->alignWithParent:Z

    if-eqz v2, :cond_1

    aget v0, p3, v0

    if-eqz v0, :cond_1

    .line 904
    if-ltz p2, :cond_1

    .line 905
    iget v0, p0, Landroid/widget/RelativeLayout;->mPaddingRight:I

    sub-int v0, p2, v0

    iget v2, p1, Landroid/widget/RelativeLayout$LayoutParams;->rightMargin:I

    sub-int/2addr v0, v2

    invoke-static {p1, v0}, Landroid/widget/RelativeLayout$LayoutParams;->access$202(Landroid/widget/RelativeLayout$LayoutParams;I)I

    .line 909
    :cond_1
    :goto_0
    const/4 v0, 0x1

    invoke-direct {p0, p3, v0}, Landroid/widget/RelativeLayout;->getRelatedViewParams([II)Landroid/widget/RelativeLayout$LayoutParams;

    move-result-object v1

    .line 910
    if-eqz v1, :cond_2

    .line 911
    invoke-static {v1}, Landroid/widget/RelativeLayout$LayoutParams;->access$200(Landroid/widget/RelativeLayout$LayoutParams;)I

    move-result v0

    iget v2, v1, Landroid/widget/RelativeLayout$LayoutParams;->rightMargin:I

    iget v3, p1, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    add-int/2addr v2, v3

    add-int/2addr v0, v2

    invoke-static {p1, v0}, Landroid/widget/RelativeLayout$LayoutParams;->access$102(Landroid/widget/RelativeLayout$LayoutParams;I)I

    goto :goto_1

    .line 913
    :cond_2
    iget-boolean v2, p1, Landroid/widget/RelativeLayout$LayoutParams;->alignWithParent:Z

    if-eqz v2, :cond_3

    aget v0, p3, v0

    if-eqz v0, :cond_3

    .line 914
    iget v0, p0, Landroid/widget/RelativeLayout;->mPaddingLeft:I

    iget v2, p1, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    add-int/2addr v0, v2

    invoke-static {p1, v0}, Landroid/widget/RelativeLayout$LayoutParams;->access$102(Landroid/widget/RelativeLayout$LayoutParams;I)I

    .line 917
    :cond_3
    :goto_1
    const/4 v0, 0x5

    invoke-direct {p0, p3, v0}, Landroid/widget/RelativeLayout;->getRelatedViewParams([II)Landroid/widget/RelativeLayout$LayoutParams;

    move-result-object v1

    .line 918
    if-eqz v1, :cond_4

    .line 919
    invoke-static {v1}, Landroid/widget/RelativeLayout$LayoutParams;->access$100(Landroid/widget/RelativeLayout$LayoutParams;)I

    move-result v0

    iget v2, p1, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    add-int/2addr v0, v2

    invoke-static {p1, v0}, Landroid/widget/RelativeLayout$LayoutParams;->access$102(Landroid/widget/RelativeLayout$LayoutParams;I)I

    goto :goto_2

    .line 920
    :cond_4
    iget-boolean v2, p1, Landroid/widget/RelativeLayout$LayoutParams;->alignWithParent:Z

    if-eqz v2, :cond_5

    aget v0, p3, v0

    if-eqz v0, :cond_5

    .line 921
    iget v0, p0, Landroid/widget/RelativeLayout;->mPaddingLeft:I

    iget v2, p1, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    add-int/2addr v0, v2

    invoke-static {p1, v0}, Landroid/widget/RelativeLayout$LayoutParams;->access$102(Landroid/widget/RelativeLayout$LayoutParams;I)I

    .line 924
    :cond_5
    :goto_2
    const/4 v0, 0x7

    invoke-direct {p0, p3, v0}, Landroid/widget/RelativeLayout;->getRelatedViewParams([II)Landroid/widget/RelativeLayout$LayoutParams;

    move-result-object v1

    .line 925
    if-eqz v1, :cond_6

    .line 926
    invoke-static {v1}, Landroid/widget/RelativeLayout$LayoutParams;->access$200(Landroid/widget/RelativeLayout$LayoutParams;)I

    move-result v0

    iget v2, p1, Landroid/widget/RelativeLayout$LayoutParams;->rightMargin:I

    sub-int/2addr v0, v2

    invoke-static {p1, v0}, Landroid/widget/RelativeLayout$LayoutParams;->access$202(Landroid/widget/RelativeLayout$LayoutParams;I)I

    goto :goto_3

    .line 927
    :cond_6
    iget-boolean v2, p1, Landroid/widget/RelativeLayout$LayoutParams;->alignWithParent:Z

    if-eqz v2, :cond_7

    aget v0, p3, v0

    if-eqz v0, :cond_7

    .line 928
    if-ltz p2, :cond_7

    .line 929
    iget v0, p0, Landroid/widget/RelativeLayout;->mPaddingRight:I

    sub-int v0, p2, v0

    iget v2, p1, Landroid/widget/RelativeLayout$LayoutParams;->rightMargin:I

    sub-int/2addr v0, v2

    invoke-static {p1, v0}, Landroid/widget/RelativeLayout$LayoutParams;->access$202(Landroid/widget/RelativeLayout$LayoutParams;I)I

    .line 933
    :cond_7
    :goto_3
    const/16 v0, 0x9

    aget v0, p3, v0

    if-eqz v0, :cond_8

    .line 934
    iget v0, p0, Landroid/widget/RelativeLayout;->mPaddingLeft:I

    iget v2, p1, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    add-int/2addr v0, v2

    invoke-static {p1, v0}, Landroid/widget/RelativeLayout$LayoutParams;->access$102(Landroid/widget/RelativeLayout$LayoutParams;I)I

    .line 937
    :cond_8
    const/16 v0, 0xb

    aget v0, p3, v0

    if-eqz v0, :cond_9

    .line 938
    if-ltz p2, :cond_9

    .line 939
    iget v0, p0, Landroid/widget/RelativeLayout;->mPaddingRight:I

    sub-int v0, p2, v0

    iget v2, p1, Landroid/widget/RelativeLayout$LayoutParams;->rightMargin:I

    sub-int/2addr v0, v2

    invoke-static {p1, v0}, Landroid/widget/RelativeLayout$LayoutParams;->access$202(Landroid/widget/RelativeLayout$LayoutParams;I)I

    .line 942
    :cond_9
    return-void
.end method

.method private applyVerticalSizeRules(Landroid/widget/RelativeLayout$LayoutParams;II)V
    .locals 6
    .param p1, "childParams"    # Landroid/widget/RelativeLayout$LayoutParams;
    .param p2, "myHeight"    # I
    .param p3, "myBaseline"    # I

    .line 945
    invoke-virtual {p1}, Landroid/widget/RelativeLayout$LayoutParams;->getRules()[I

    move-result-object v0

    .line 948
    .local v0, "rules":[I
    invoke-direct {p0, v0}, Landroid/widget/RelativeLayout;->getRelatedViewBaselineOffset([I)I

    move-result v1

    .line 949
    .local v1, "baselineOffset":I
    const/4 v2, -0x1

    const/high16 v3, -0x80000000

    if-eq v1, v2, :cond_1

    .line 950
    if-eq p3, v2, :cond_0

    .line 951
    sub-int/2addr v1, p3

    .line 953
    :cond_0
    invoke-static {p1, v1}, Landroid/widget/RelativeLayout$LayoutParams;->access$402(Landroid/widget/RelativeLayout$LayoutParams;I)I

    .line 954
    invoke-static {p1, v3}, Landroid/widget/RelativeLayout$LayoutParams;->access$302(Landroid/widget/RelativeLayout$LayoutParams;I)I

    .line 955
    return-void

    .line 960
    :cond_1
    invoke-static {p1, v3}, Landroid/widget/RelativeLayout$LayoutParams;->access$402(Landroid/widget/RelativeLayout$LayoutParams;I)I

    .line 961
    invoke-static {p1, v3}, Landroid/widget/RelativeLayout$LayoutParams;->access$302(Landroid/widget/RelativeLayout$LayoutParams;I)I

    .line 963
    const/4 v2, 0x2

    invoke-direct {p0, v0, v2}, Landroid/widget/RelativeLayout;->getRelatedViewParams([II)Landroid/widget/RelativeLayout$LayoutParams;

    move-result-object v3

    .line 964
    .local v3, "anchorParams":Landroid/widget/RelativeLayout$LayoutParams;
    if-eqz v3, :cond_2

    .line 965
    invoke-static {v3}, Landroid/widget/RelativeLayout$LayoutParams;->access$400(Landroid/widget/RelativeLayout$LayoutParams;)I

    move-result v2

    iget v4, v3, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    iget v5, p1, Landroid/widget/RelativeLayout$LayoutParams;->bottomMargin:I

    add-int/2addr v4, v5

    sub-int/2addr v2, v4

    invoke-static {p1, v2}, Landroid/widget/RelativeLayout$LayoutParams;->access$302(Landroid/widget/RelativeLayout$LayoutParams;I)I

    goto :goto_0

    .line 967
    :cond_2
    iget-boolean v4, p1, Landroid/widget/RelativeLayout$LayoutParams;->alignWithParent:Z

    if-eqz v4, :cond_3

    aget v2, v0, v2

    if-eqz v2, :cond_3

    .line 968
    if-ltz p2, :cond_3

    .line 969
    iget v2, p0, Landroid/widget/RelativeLayout;->mPaddingBottom:I

    sub-int v2, p2, v2

    iget v4, p1, Landroid/widget/RelativeLayout$LayoutParams;->bottomMargin:I

    sub-int/2addr v2, v4

    invoke-static {p1, v2}, Landroid/widget/RelativeLayout$LayoutParams;->access$302(Landroid/widget/RelativeLayout$LayoutParams;I)I

    .line 973
    :cond_3
    :goto_0
    const/4 v2, 0x3

    invoke-direct {p0, v0, v2}, Landroid/widget/RelativeLayout;->getRelatedViewParams([II)Landroid/widget/RelativeLayout$LayoutParams;

    move-result-object v3

    .line 974
    if-eqz v3, :cond_4

    .line 975
    invoke-static {v3}, Landroid/widget/RelativeLayout$LayoutParams;->access$300(Landroid/widget/RelativeLayout$LayoutParams;)I

    move-result v2

    iget v4, v3, Landroid/widget/RelativeLayout$LayoutParams;->bottomMargin:I

    iget v5, p1, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    add-int/2addr v4, v5

    add-int/2addr v2, v4

    invoke-static {p1, v2}, Landroid/widget/RelativeLayout$LayoutParams;->access$402(Landroid/widget/RelativeLayout$LayoutParams;I)I

    goto :goto_1

    .line 977
    :cond_4
    iget-boolean v4, p1, Landroid/widget/RelativeLayout$LayoutParams;->alignWithParent:Z

    if-eqz v4, :cond_5

    aget v2, v0, v2

    if-eqz v2, :cond_5

    .line 978
    iget v2, p0, Landroid/widget/RelativeLayout;->mPaddingTop:I

    iget v4, p1, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    add-int/2addr v2, v4

    invoke-static {p1, v2}, Landroid/widget/RelativeLayout$LayoutParams;->access$402(Landroid/widget/RelativeLayout$LayoutParams;I)I

    .line 981
    :cond_5
    :goto_1
    const/4 v2, 0x6

    invoke-direct {p0, v0, v2}, Landroid/widget/RelativeLayout;->getRelatedViewParams([II)Landroid/widget/RelativeLayout$LayoutParams;

    move-result-object v3

    .line 982
    if-eqz v3, :cond_6

    .line 983
    invoke-static {v3}, Landroid/widget/RelativeLayout$LayoutParams;->access$400(Landroid/widget/RelativeLayout$LayoutParams;)I

    move-result v2

    iget v4, p1, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    add-int/2addr v2, v4

    invoke-static {p1, v2}, Landroid/widget/RelativeLayout$LayoutParams;->access$402(Landroid/widget/RelativeLayout$LayoutParams;I)I

    goto :goto_2

    .line 984
    :cond_6
    iget-boolean v4, p1, Landroid/widget/RelativeLayout$LayoutParams;->alignWithParent:Z

    if-eqz v4, :cond_7

    aget v2, v0, v2

    if-eqz v2, :cond_7

    .line 985
    iget v2, p0, Landroid/widget/RelativeLayout;->mPaddingTop:I

    iget v4, p1, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    add-int/2addr v2, v4

    invoke-static {p1, v2}, Landroid/widget/RelativeLayout$LayoutParams;->access$402(Landroid/widget/RelativeLayout$LayoutParams;I)I

    .line 988
    :cond_7
    :goto_2
    const/16 v2, 0x8

    invoke-direct {p0, v0, v2}, Landroid/widget/RelativeLayout;->getRelatedViewParams([II)Landroid/widget/RelativeLayout$LayoutParams;

    move-result-object v3

    .line 989
    if-eqz v3, :cond_8

    .line 990
    invoke-static {v3}, Landroid/widget/RelativeLayout$LayoutParams;->access$300(Landroid/widget/RelativeLayout$LayoutParams;)I

    move-result v2

    iget v4, p1, Landroid/widget/RelativeLayout$LayoutParams;->bottomMargin:I

    sub-int/2addr v2, v4

    invoke-static {p1, v2}, Landroid/widget/RelativeLayout$LayoutParams;->access$302(Landroid/widget/RelativeLayout$LayoutParams;I)I

    goto :goto_3

    .line 991
    :cond_8
    iget-boolean v4, p1, Landroid/widget/RelativeLayout$LayoutParams;->alignWithParent:Z

    if-eqz v4, :cond_9

    aget v2, v0, v2

    if-eqz v2, :cond_9

    .line 992
    if-ltz p2, :cond_9

    .line 993
    iget v2, p0, Landroid/widget/RelativeLayout;->mPaddingBottom:I

    sub-int v2, p2, v2

    iget v4, p1, Landroid/widget/RelativeLayout$LayoutParams;->bottomMargin:I

    sub-int/2addr v2, v4

    invoke-static {p1, v2}, Landroid/widget/RelativeLayout$LayoutParams;->access$302(Landroid/widget/RelativeLayout$LayoutParams;I)I

    .line 997
    :cond_9
    :goto_3
    const/16 v2, 0xa

    aget v2, v0, v2

    if-eqz v2, :cond_a

    .line 998
    iget v2, p0, Landroid/widget/RelativeLayout;->mPaddingTop:I

    iget v4, p1, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    add-int/2addr v2, v4

    invoke-static {p1, v2}, Landroid/widget/RelativeLayout$LayoutParams;->access$402(Landroid/widget/RelativeLayout$LayoutParams;I)I

    .line 1001
    :cond_a
    const/16 v2, 0xc

    aget v2, v0, v2

    if-eqz v2, :cond_b

    .line 1002
    if-ltz p2, :cond_b

    .line 1003
    iget v2, p0, Landroid/widget/RelativeLayout;->mPaddingBottom:I

    sub-int v2, p2, v2

    iget v4, p1, Landroid/widget/RelativeLayout$LayoutParams;->bottomMargin:I

    sub-int/2addr v2, v4

    invoke-static {p1, v2}, Landroid/widget/RelativeLayout$LayoutParams;->access$302(Landroid/widget/RelativeLayout$LayoutParams;I)I

    .line 1006
    :cond_b
    return-void
.end method

.method private static centerHorizontal(Landroid/view/View;Landroid/widget/RelativeLayout$LayoutParams;I)V
    .locals 3
    .param p0, "child"    # Landroid/view/View;
    .param p1, "params"    # Landroid/widget/RelativeLayout$LayoutParams;
    .param p2, "myWidth"    # I

    .line 1057
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    .line 1058
    .local v0, "childWidth":I
    sub-int v1, p2, v0

    div-int/lit8 v1, v1, 0x2

    .line 1060
    .local v1, "left":I
    invoke-static {p1, v1}, Landroid/widget/RelativeLayout$LayoutParams;->access$102(Landroid/widget/RelativeLayout$LayoutParams;I)I

    .line 1061
    add-int v2, v1, v0

    invoke-static {p1, v2}, Landroid/widget/RelativeLayout$LayoutParams;->access$202(Landroid/widget/RelativeLayout$LayoutParams;I)I

    .line 1062
    return-void
.end method

.method private static centerVertical(Landroid/view/View;Landroid/widget/RelativeLayout$LayoutParams;I)V
    .locals 3
    .param p0, "child"    # Landroid/view/View;
    .param p1, "params"    # Landroid/widget/RelativeLayout$LayoutParams;
    .param p2, "myHeight"    # I

    .line 1065
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    .line 1066
    .local v0, "childHeight":I
    sub-int v1, p2, v0

    div-int/lit8 v1, v1, 0x2

    .line 1068
    .local v1, "top":I
    invoke-static {p1, v1}, Landroid/widget/RelativeLayout$LayoutParams;->access$402(Landroid/widget/RelativeLayout$LayoutParams;I)I

    .line 1069
    add-int v2, v1, v0

    invoke-static {p1, v2}, Landroid/widget/RelativeLayout$LayoutParams;->access$302(Landroid/widget/RelativeLayout$LayoutParams;I)I

    .line 1070
    return-void
.end method

.method private compareLayoutPosition(Landroid/widget/RelativeLayout$LayoutParams;Landroid/widget/RelativeLayout$LayoutParams;)I
    .locals 3
    .param p1, "p1"    # Landroid/widget/RelativeLayout$LayoutParams;
    .param p2, "p2"    # Landroid/widget/RelativeLayout$LayoutParams;

    .line 648
    invoke-static {p1}, Landroid/widget/RelativeLayout$LayoutParams;->access$400(Landroid/widget/RelativeLayout$LayoutParams;)I

    move-result v0

    invoke-static {p2}, Landroid/widget/RelativeLayout$LayoutParams;->access$400(Landroid/widget/RelativeLayout$LayoutParams;)I

    move-result v1

    sub-int/2addr v0, v1

    .line 649
    .local v0, "topDiff":I
    if-eqz v0, :cond_0

    .line 650
    return v0

    .line 652
    :cond_0
    invoke-static {p1}, Landroid/widget/RelativeLayout$LayoutParams;->access$100(Landroid/widget/RelativeLayout$LayoutParams;)I

    move-result v1

    invoke-static {p2}, Landroid/widget/RelativeLayout$LayoutParams;->access$100(Landroid/widget/RelativeLayout$LayoutParams;)I

    move-result v2

    sub-int/2addr v1, v2

    return v1
.end method

.method private getChildMeasureSpec(IIIIIIII)I
    .locals 13
    .param p1, "childStart"    # I
    .param p2, "childEnd"    # I
    .param p3, "childSize"    # I
    .param p4, "startMargin"    # I
    .param p5, "endMargin"    # I
    .param p6, "startPadding"    # I
    .param p7, "endPadding"    # I
    .param p8, "mySize"    # I

    move v0, p1

    move v1, p2

    move/from16 v2, p3

    .line 737
    const/4 v3, 0x0

    .line 738
    .local v3, "childSpecMode":I
    const/4 v4, 0x0

    .line 743
    .local v4, "childSpecSize":I
    const/4 v5, 0x0

    if-gez p8, :cond_0

    const/4 v6, 0x1

    goto :goto_0

    :cond_0
    move v6, v5

    .line 744
    .local v6, "isUnspecified":Z
    :goto_0
    const/high16 v7, -0x80000000

    if-eqz v6, :cond_3

    move-object v8, p0

    iget-boolean v9, v8, Landroid/widget/RelativeLayout;->mAllowBrokenMeasureSpecs:Z

    if-nez v9, :cond_4

    .line 745
    if-eq v0, v7, :cond_1

    if-eq v1, v7, :cond_1

    .line 747
    sub-int v7, v1, v0

    invoke-static {v5, v7}, Ljava/lang/Math;->max(II)I

    move-result v4

    .line 748
    const/high16 v3, 0x40000000    # 2.0f

    goto :goto_1

    .line 749
    :cond_1
    if-ltz v2, :cond_2

    .line 751
    move v4, v2

    .line 752
    const/high16 v3, 0x40000000    # 2.0f

    goto :goto_1

    .line 755
    :cond_2
    const/4 v4, 0x0

    .line 756
    const/4 v3, 0x0

    .line 759
    :goto_1
    invoke-static {v4, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v5

    return v5

    .line 763
    :cond_3
    move-object v8, p0

    :cond_4
    move v9, v0

    .line 764
    .local v9, "tempStart":I
    move v10, v1

    .line 768
    .local v10, "tempEnd":I
    if-ne v9, v7, :cond_5

    .line 769
    add-int v9, p6, p4

    .line 771
    :cond_5
    if-ne v10, v7, :cond_6

    .line 772
    sub-int v11, p8, p7

    sub-int v10, v11, p5

    .line 776
    :cond_6
    sub-int v11, v10, v9

    .line 778
    .local v11, "maxAvailable":I
    const/high16 v12, 0x40000000    # 2.0f

    if-eq v0, v7, :cond_8

    if-eq v1, v7, :cond_8

    .line 780
    if-eqz v6, :cond_7

    move v12, v5

    nop

    :cond_7
    move v3, v12

    .line 781
    invoke-static {v5, v11}, Ljava/lang/Math;->max(II)I

    move-result v4

    goto :goto_2

    .line 783
    :cond_8
    if-ltz v2, :cond_a

    .line 785
    const/high16 v3, 0x40000000    # 2.0f

    .line 787
    if-ltz v11, :cond_9

    .line 789
    invoke-static {v11, v2}, Ljava/lang/Math;->min(II)I

    move-result v4

    goto :goto_2

    .line 792
    :cond_9
    move v4, v2

    goto :goto_2

    .line 794
    :cond_a
    const/4 v7, -0x1

    if-ne v2, v7, :cond_c

    .line 797
    if-eqz v6, :cond_b

    move v12, v5

    nop

    :cond_b
    move v3, v12

    .line 798
    invoke-static {v5, v11}, Ljava/lang/Math;->max(II)I

    move-result v4

    goto :goto_2

    .line 799
    :cond_c
    const/4 v5, -0x2

    if-ne v2, v5, :cond_e

    .line 802
    if-ltz v11, :cond_d

    .line 804
    const/high16 v3, -0x80000000

    .line 805
    move v4, v11

    goto :goto_2

    .line 809
    :cond_d
    const/4 v3, 0x0

    .line 810
    const/4 v4, 0x0

    .line 815
    :cond_e
    :goto_2
    invoke-static {v4, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v5

    return v5
.end method

.method private getRelatedView([II)Landroid/view/View;
    .locals 6
    .param p1, "rules"    # [I
    .param p2, "relation"    # I

    .line 1009
    aget v0, p1, p2

    .line 1010
    .local v0, "id":I
    const/4 v1, 0x0

    if-eqz v0, :cond_4

    .line 1011
    iget-object v2, p0, Landroid/widget/RelativeLayout;->mGraph:Landroid/widget/RelativeLayout$DependencyGraph;

    invoke-static {v2}, Landroid/widget/RelativeLayout$DependencyGraph;->access$500(Landroid/widget/RelativeLayout$DependencyGraph;)Landroid/util/SparseArray;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/widget/RelativeLayout$DependencyGraph$Node;

    .line 1012
    .local v2, "node":Landroid/widget/RelativeLayout$DependencyGraph$Node;
    if-nez v2, :cond_0

    return-object v1

    .line 1013
    :cond_0
    iget-object v3, v2, Landroid/widget/RelativeLayout$DependencyGraph$Node;->view:Landroid/view/View;

    .line 1016
    .local v3, "v":Landroid/view/View;
    :goto_0
    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    move-result v4

    const/16 v5, 0x8

    if-ne v4, v5, :cond_3

    .line 1017
    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-virtual {v3}, Landroid/view/View;->getLayoutDirection()I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/widget/RelativeLayout$LayoutParams;->getRules(I)[I

    move-result-object p1

    .line 1018
    iget-object v4, p0, Landroid/widget/RelativeLayout;->mGraph:Landroid/widget/RelativeLayout$DependencyGraph;

    invoke-static {v4}, Landroid/widget/RelativeLayout$DependencyGraph;->access$500(Landroid/widget/RelativeLayout$DependencyGraph;)Landroid/util/SparseArray;

    move-result-object v4

    aget v5, p1, p2

    invoke-virtual {v4, v5}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    move-object v2, v4

    check-cast v2, Landroid/widget/RelativeLayout$DependencyGraph$Node;

    .line 1020
    if-eqz v2, :cond_2

    iget-object v4, v2, Landroid/widget/RelativeLayout$DependencyGraph$Node;->view:Landroid/view/View;

    if-ne v3, v4, :cond_1

    goto :goto_1

    .line 1021
    :cond_1
    iget-object v3, v2, Landroid/widget/RelativeLayout$DependencyGraph$Node;->view:Landroid/view/View;

    goto :goto_0

    .line 1020
    :cond_2
    :goto_1
    return-object v1

    .line 1024
    :cond_3
    return-object v3

    .line 1027
    .end local v2    # "node":Landroid/widget/RelativeLayout$DependencyGraph$Node;
    .end local v3    # "v":Landroid/view/View;
    :cond_4
    return-object v1
.end method

.method private getRelatedViewBaselineOffset([I)I
    .locals 5
    .param p1, "rules"    # [I

    .line 1042
    const/4 v0, 0x4

    invoke-direct {p0, p1, v0}, Landroid/widget/RelativeLayout;->getRelatedView([II)Landroid/view/View;

    move-result-object v0

    .line 1043
    .local v0, "v":Landroid/view/View;
    const/4 v1, -0x1

    if-eqz v0, :cond_0

    .line 1044
    invoke-virtual {v0}, Landroid/view/View;->getBaseline()I

    move-result v2

    .line 1045
    .local v2, "baseline":I
    if-eq v2, v1, :cond_0

    .line 1046
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    .line 1047
    .local v3, "params":Landroid/view/ViewGroup$LayoutParams;
    instance-of v4, v3, Landroid/widget/RelativeLayout$LayoutParams;

    if-eqz v4, :cond_0

    .line 1048
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout$LayoutParams;

    .line 1049
    .local v1, "anchorParams":Landroid/widget/RelativeLayout$LayoutParams;
    invoke-static {v1}, Landroid/widget/RelativeLayout$LayoutParams;->access$400(Landroid/widget/RelativeLayout$LayoutParams;)I

    move-result v4

    add-int/2addr v4, v2

    return v4

    .line 1053
    .end local v1    # "anchorParams":Landroid/widget/RelativeLayout$LayoutParams;
    .end local v2    # "baseline":I
    .end local v3    # "params":Landroid/view/ViewGroup$LayoutParams;
    :cond_0
    return v1
.end method

.method private getRelatedViewParams([II)Landroid/widget/RelativeLayout$LayoutParams;
    .locals 3
    .param p1, "rules"    # [I
    .param p2, "relation"    # I

    .line 1031
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;->getRelatedView([II)Landroid/view/View;

    move-result-object v0

    .line 1032
    .local v0, "v":Landroid/view/View;
    if-eqz v0, :cond_0

    .line 1033
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    .line 1034
    .local v1, "params":Landroid/view/ViewGroup$LayoutParams;
    instance-of v2, v1, Landroid/widget/RelativeLayout$LayoutParams;

    if-eqz v2, :cond_0

    .line 1035
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/widget/RelativeLayout$LayoutParams;

    return-object v2

    .line 1038
    .end local v1    # "params":Landroid/view/ViewGroup$LayoutParams;
    :cond_0
    const/4 v1, 0x0

    return-object v1
.end method

.method private initFromAttributes(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I
    .param p4, "defStyleRes"    # I

    .line 255
    sget-object v0, Lcom/android/internal/R$styleable;->RelativeLayout:[I

    invoke-virtual {p1, p2, v0, p3, p4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 257
    .local v0, "a":Landroid/content/res/TypedArray;
    const/4 v1, 0x1

    const/4 v2, -0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    iput v1, p0, Landroid/widget/RelativeLayout;->mIgnoreGravity:I

    .line 258
    iget v1, p0, Landroid/widget/RelativeLayout;->mGravity:I

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    iput v1, p0, Landroid/widget/RelativeLayout;->mGravity:I

    .line 259
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 260
    return-void
.end method

.method private measureChild(Landroid/view/View;Landroid/widget/RelativeLayout$LayoutParams;II)V
    .locals 10
    .param p1, "child"    # Landroid/view/View;
    .param p2, "params"    # Landroid/widget/RelativeLayout$LayoutParams;
    .param p3, "myWidth"    # I
    .param p4, "myHeight"    # I

    .line 666
    invoke-static {p2}, Landroid/widget/RelativeLayout$LayoutParams;->access$100(Landroid/widget/RelativeLayout$LayoutParams;)I

    move-result v1

    .line 667
    invoke-static {p2}, Landroid/widget/RelativeLayout$LayoutParams;->access$200(Landroid/widget/RelativeLayout$LayoutParams;)I

    move-result v2

    iget v3, p2, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    iget v4, p2, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    iget v5, p2, Landroid/widget/RelativeLayout$LayoutParams;->rightMargin:I

    iget v6, p0, Landroid/widget/RelativeLayout;->mPaddingLeft:I

    iget v7, p0, Landroid/widget/RelativeLayout;->mPaddingRight:I

    .line 666
    move-object v0, p0

    move v8, p3

    invoke-direct/range {v0 .. v8}, Landroid/widget/RelativeLayout;->getChildMeasureSpec(IIIIIIII)I

    move-result v0

    .line 671
    .local v0, "childWidthMeasureSpec":I
    invoke-static {p2}, Landroid/widget/RelativeLayout$LayoutParams;->access$400(Landroid/widget/RelativeLayout$LayoutParams;)I

    move-result v2

    .line 672
    invoke-static {p2}, Landroid/widget/RelativeLayout$LayoutParams;->access$300(Landroid/widget/RelativeLayout$LayoutParams;)I

    move-result v3

    iget v4, p2, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    iget v5, p2, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    iget v6, p2, Landroid/widget/RelativeLayout$LayoutParams;->bottomMargin:I

    iget v7, p0, Landroid/widget/RelativeLayout;->mPaddingTop:I

    iget v8, p0, Landroid/widget/RelativeLayout;->mPaddingBottom:I

    .line 671
    move-object v1, p0

    move v9, p4

    invoke-direct/range {v1 .. v9}, Landroid/widget/RelativeLayout;->getChildMeasureSpec(IIIIIIII)I

    move-result v1

    .line 676
    .local v1, "childHeightMeasureSpec":I
    invoke-virtual {p1, v0, v1}, Landroid/view/View;->measure(II)V

    .line 677
    return-void
.end method

.method private measureChildHorizontal(Landroid/view/View;Landroid/widget/RelativeLayout$LayoutParams;II)V
    .locals 9
    .param p1, "child"    # Landroid/view/View;
    .param p2, "params"    # Landroid/widget/RelativeLayout$LayoutParams;
    .param p3, "myWidth"    # I
    .param p4, "myHeight"    # I

    .line 681
    invoke-static {p2}, Landroid/widget/RelativeLayout$LayoutParams;->access$100(Landroid/widget/RelativeLayout$LayoutParams;)I

    move-result v1

    invoke-static {p2}, Landroid/widget/RelativeLayout$LayoutParams;->access$200(Landroid/widget/RelativeLayout$LayoutParams;)I

    move-result v2

    iget v3, p2, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    iget v4, p2, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    iget v5, p2, Landroid/widget/RelativeLayout$LayoutParams;->rightMargin:I

    iget v6, p0, Landroid/widget/RelativeLayout;->mPaddingLeft:I

    iget v7, p0, Landroid/widget/RelativeLayout;->mPaddingRight:I

    move-object v0, p0

    move v8, p3

    invoke-direct/range {v0 .. v8}, Landroid/widget/RelativeLayout;->getChildMeasureSpec(IIIIIIII)I

    move-result v0

    .line 686
    .local v0, "childWidthMeasureSpec":I
    const/4 v1, 0x0

    if-gez p4, :cond_1

    iget-boolean v2, p0, Landroid/widget/RelativeLayout;->mAllowBrokenMeasureSpecs:Z

    if-nez v2, :cond_1

    .line 687
    iget v2, p2, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    if-ltz v2, :cond_0

    .line 688
    iget v1, p2, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    const/high16 v2, 0x40000000    # 2.0f

    invoke-static {v1, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    .local v1, "childHeightMeasureSpec":I
    :goto_0
    goto :goto_3

    .line 695
    .end local v1    # "childHeightMeasureSpec":I
    :cond_0
    invoke-static {v1, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    goto :goto_0

    .line 699
    :cond_1
    iget-boolean v2, p0, Landroid/widget/RelativeLayout;->mMeasureVerticalWithPaddingMargin:Z

    if-eqz v2, :cond_2

    .line 700
    iget v2, p0, Landroid/widget/RelativeLayout;->mPaddingTop:I

    sub-int v2, p4, v2

    iget v3, p0, Landroid/widget/RelativeLayout;->mPaddingBottom:I

    sub-int/2addr v2, v3

    iget v3, p2, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    sub-int/2addr v2, v3

    iget v3, p2, Landroid/widget/RelativeLayout$LayoutParams;->bottomMargin:I

    sub-int/2addr v2, v3

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    .local v1, "maxHeight":I
    goto :goto_1

    .line 703
    .end local v1    # "maxHeight":I
    :cond_2
    invoke-static {v1, p4}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 707
    .restart local v1    # "maxHeight":I
    :goto_1
    iget v2, p2, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    const/4 v3, -0x1

    if-ne v2, v3, :cond_3

    .line 708
    const/high16 v2, 0x40000000    # 2.0f

    .local v2, "heightMode":I
    goto :goto_2

    .line 710
    .end local v2    # "heightMode":I
    :cond_3
    const/high16 v2, -0x80000000

    .line 712
    .restart local v2    # "heightMode":I
    :goto_2
    invoke-static {v1, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    .line 715
    .end local v2    # "heightMode":I
    .local v1, "childHeightMeasureSpec":I
    :goto_3
    invoke-virtual {p1, v0, v1}, Landroid/view/View;->measure(II)V

    .line 716
    return-void
.end method

.method private positionAtEdge(Landroid/view/View;Landroid/widget/RelativeLayout$LayoutParams;I)V
    .locals 2
    .param p1, "child"    # Landroid/view/View;
    .param p2, "params"    # Landroid/widget/RelativeLayout$LayoutParams;
    .param p3, "myWidth"    # I

    .line 849
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->isLayoutRtl()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 850
    iget v0, p0, Landroid/widget/RelativeLayout;->mPaddingRight:I

    sub-int v0, p3, v0

    iget v1, p2, Landroid/widget/RelativeLayout$LayoutParams;->rightMargin:I

    sub-int/2addr v0, v1

    invoke-static {p2, v0}, Landroid/widget/RelativeLayout$LayoutParams;->access$202(Landroid/widget/RelativeLayout$LayoutParams;I)I

    .line 851
    invoke-static {p2}, Landroid/widget/RelativeLayout$LayoutParams;->access$200(Landroid/widget/RelativeLayout$LayoutParams;)I

    move-result v0

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-static {p2, v0}, Landroid/widget/RelativeLayout$LayoutParams;->access$102(Landroid/widget/RelativeLayout$LayoutParams;I)I

    goto :goto_0

    .line 853
    :cond_0
    iget v0, p0, Landroid/widget/RelativeLayout;->mPaddingLeft:I

    iget v1, p2, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    add-int/2addr v0, v1

    invoke-static {p2, v0}, Landroid/widget/RelativeLayout$LayoutParams;->access$102(Landroid/widget/RelativeLayout$LayoutParams;I)I

    .line 854
    invoke-static {p2}, Landroid/widget/RelativeLayout$LayoutParams;->access$100(Landroid/widget/RelativeLayout$LayoutParams;)I

    move-result v0

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    add-int/2addr v0, v1

    invoke-static {p2, v0}, Landroid/widget/RelativeLayout$LayoutParams;->access$202(Landroid/widget/RelativeLayout$LayoutParams;I)I

    .line 856
    :goto_0
    return-void
.end method

.method private positionChildHorizontal(Landroid/view/View;Landroid/widget/RelativeLayout$LayoutParams;IZ)Z
    .locals 5
    .param p1, "child"    # Landroid/view/View;
    .param p2, "params"    # Landroid/widget/RelativeLayout$LayoutParams;
    .param p3, "myWidth"    # I
    .param p4, "wrapContent"    # Z

    .line 821
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getLayoutDirection()I

    move-result v0

    .line 822
    .local v0, "layoutDirection":I
    invoke-virtual {p2, v0}, Landroid/widget/RelativeLayout$LayoutParams;->getRules(I)[I

    move-result-object v1

    .line 824
    .local v1, "rules":[I
    invoke-static {p2}, Landroid/widget/RelativeLayout$LayoutParams;->access$100(Landroid/widget/RelativeLayout$LayoutParams;)I

    move-result v2

    const/4 v3, 0x1

    const/high16 v4, -0x80000000

    if-ne v2, v4, :cond_0

    invoke-static {p2}, Landroid/widget/RelativeLayout$LayoutParams;->access$200(Landroid/widget/RelativeLayout$LayoutParams;)I

    move-result v2

    if-eq v2, v4, :cond_0

    .line 826
    invoke-static {p2}, Landroid/widget/RelativeLayout$LayoutParams;->access$200(Landroid/widget/RelativeLayout$LayoutParams;)I

    move-result v2

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v4

    sub-int/2addr v2, v4

    invoke-static {p2, v2}, Landroid/widget/RelativeLayout$LayoutParams;->access$102(Landroid/widget/RelativeLayout$LayoutParams;I)I

    goto :goto_2

    .line 827
    :cond_0
    invoke-static {p2}, Landroid/widget/RelativeLayout$LayoutParams;->access$100(Landroid/widget/RelativeLayout$LayoutParams;)I

    move-result v2

    if-eq v2, v4, :cond_1

    invoke-static {p2}, Landroid/widget/RelativeLayout$LayoutParams;->access$200(Landroid/widget/RelativeLayout$LayoutParams;)I

    move-result v2

    if-ne v2, v4, :cond_1

    .line 829
    invoke-static {p2}, Landroid/widget/RelativeLayout$LayoutParams;->access$100(Landroid/widget/RelativeLayout$LayoutParams;)I

    move-result v2

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v4

    add-int/2addr v2, v4

    invoke-static {p2, v2}, Landroid/widget/RelativeLayout$LayoutParams;->access$202(Landroid/widget/RelativeLayout$LayoutParams;I)I

    goto :goto_2

    .line 830
    :cond_1
    invoke-static {p2}, Landroid/widget/RelativeLayout$LayoutParams;->access$100(Landroid/widget/RelativeLayout$LayoutParams;)I

    move-result v2

    if-ne v2, v4, :cond_5

    invoke-static {p2}, Landroid/widget/RelativeLayout$LayoutParams;->access$200(Landroid/widget/RelativeLayout$LayoutParams;)I

    move-result v2

    if-ne v2, v4, :cond_5

    .line 832
    const/16 v2, 0xd

    aget v2, v1, v2

    if-nez v2, :cond_3

    const/16 v2, 0xe

    aget v2, v1, v2

    if-eqz v2, :cond_2

    goto :goto_0

    .line 842
    :cond_2
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/RelativeLayout;->positionAtEdge(Landroid/view/View;Landroid/widget/RelativeLayout$LayoutParams;I)V

    goto :goto_2

    .line 833
    :cond_3
    :goto_0
    if-nez p4, :cond_4

    .line 834
    invoke-static {p1, p2, p3}, Landroid/widget/RelativeLayout;->centerHorizontal(Landroid/view/View;Landroid/widget/RelativeLayout$LayoutParams;I)V

    goto :goto_1

    .line 836
    :cond_4
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/RelativeLayout;->positionAtEdge(Landroid/view/View;Landroid/widget/RelativeLayout$LayoutParams;I)V

    .line 838
    :goto_1
    return v3

    .line 845
    :cond_5
    :goto_2
    const/16 v2, 0x15

    aget v2, v1, v2

    if-eqz v2, :cond_6

    goto :goto_3

    :cond_6
    const/4 v3, 0x0

    :goto_3
    return v3
.end method

.method private positionChildVertical(Landroid/view/View;Landroid/widget/RelativeLayout$LayoutParams;IZ)Z
    .locals 4
    .param p1, "child"    # Landroid/view/View;
    .param p2, "params"    # Landroid/widget/RelativeLayout$LayoutParams;
    .param p3, "myHeight"    # I
    .param p4, "wrapContent"    # Z

    .line 861
    invoke-virtual {p2}, Landroid/widget/RelativeLayout$LayoutParams;->getRules()[I

    move-result-object v0

    .line 863
    .local v0, "rules":[I
    invoke-static {p2}, Landroid/widget/RelativeLayout$LayoutParams;->access$400(Landroid/widget/RelativeLayout$LayoutParams;)I

    move-result v1

    const/4 v2, 0x1

    const/high16 v3, -0x80000000

    if-ne v1, v3, :cond_0

    invoke-static {p2}, Landroid/widget/RelativeLayout$LayoutParams;->access$300(Landroid/widget/RelativeLayout$LayoutParams;)I

    move-result v1

    if-eq v1, v3, :cond_0

    .line 865
    invoke-static {p2}, Landroid/widget/RelativeLayout$LayoutParams;->access$300(Landroid/widget/RelativeLayout$LayoutParams;)I

    move-result v1

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v3

    sub-int/2addr v1, v3

    invoke-static {p2, v1}, Landroid/widget/RelativeLayout$LayoutParams;->access$402(Landroid/widget/RelativeLayout$LayoutParams;I)I

    goto :goto_2

    .line 866
    :cond_0
    invoke-static {p2}, Landroid/widget/RelativeLayout$LayoutParams;->access$400(Landroid/widget/RelativeLayout$LayoutParams;)I

    move-result v1

    if-eq v1, v3, :cond_1

    invoke-static {p2}, Landroid/widget/RelativeLayout$LayoutParams;->access$300(Landroid/widget/RelativeLayout$LayoutParams;)I

    move-result v1

    if-ne v1, v3, :cond_1

    .line 868
    invoke-static {p2}, Landroid/widget/RelativeLayout$LayoutParams;->access$400(Landroid/widget/RelativeLayout$LayoutParams;)I

    move-result v1

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v3

    add-int/2addr v1, v3

    invoke-static {p2, v1}, Landroid/widget/RelativeLayout$LayoutParams;->access$302(Landroid/widget/RelativeLayout$LayoutParams;I)I

    goto :goto_2

    .line 869
    :cond_1
    invoke-static {p2}, Landroid/widget/RelativeLayout$LayoutParams;->access$400(Landroid/widget/RelativeLayout$LayoutParams;)I

    move-result v1

    if-ne v1, v3, :cond_5

    invoke-static {p2}, Landroid/widget/RelativeLayout$LayoutParams;->access$300(Landroid/widget/RelativeLayout$LayoutParams;)I

    move-result v1

    if-ne v1, v3, :cond_5

    .line 871
    const/16 v1, 0xd

    aget v1, v0, v1

    if-nez v1, :cond_3

    const/16 v1, 0xf

    aget v1, v0, v1

    if-eqz v1, :cond_2

    goto :goto_0

    .line 880
    :cond_2
    iget v1, p0, Landroid/widget/RelativeLayout;->mPaddingTop:I

    iget v3, p2, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    add-int/2addr v1, v3

    invoke-static {p2, v1}, Landroid/widget/RelativeLayout$LayoutParams;->access$402(Landroid/widget/RelativeLayout$LayoutParams;I)I

    .line 881
    invoke-static {p2}, Landroid/widget/RelativeLayout$LayoutParams;->access$400(Landroid/widget/RelativeLayout$LayoutParams;)I

    move-result v1

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v3

    add-int/2addr v1, v3

    invoke-static {p2, v1}, Landroid/widget/RelativeLayout$LayoutParams;->access$302(Landroid/widget/RelativeLayout$LayoutParams;I)I

    goto :goto_2

    .line 872
    :cond_3
    :goto_0
    if-nez p4, :cond_4

    .line 873
    invoke-static {p1, p2, p3}, Landroid/widget/RelativeLayout;->centerVertical(Landroid/view/View;Landroid/widget/RelativeLayout$LayoutParams;I)V

    goto :goto_1

    .line 875
    :cond_4
    iget v1, p0, Landroid/widget/RelativeLayout;->mPaddingTop:I

    iget v3, p2, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    add-int/2addr v1, v3

    invoke-static {p2, v1}, Landroid/widget/RelativeLayout$LayoutParams;->access$402(Landroid/widget/RelativeLayout$LayoutParams;I)I

    .line 876
    invoke-static {p2}, Landroid/widget/RelativeLayout$LayoutParams;->access$400(Landroid/widget/RelativeLayout$LayoutParams;)I

    move-result v1

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v3

    add-int/2addr v1, v3

    invoke-static {p2, v1}, Landroid/widget/RelativeLayout$LayoutParams;->access$302(Landroid/widget/RelativeLayout$LayoutParams;I)I

    .line 878
    :goto_1
    return v2

    .line 884
    :cond_5
    :goto_2
    const/16 v1, 0xc

    aget v1, v0, v1

    if-eqz v1, :cond_6

    goto :goto_3

    :cond_6
    const/4 v2, 0x0

    :goto_3
    return v2
.end method

.method private queryCompatibilityModes(Landroid/content/Context;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    .line 263
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    .line 264
    .local v0, "version":I
    const/4 v1, 0x0

    const/4 v2, 0x1

    const/16 v3, 0x11

    if-gt v0, v3, :cond_0

    move v3, v2

    goto :goto_0

    :cond_0
    move v3, v1

    :goto_0
    iput-boolean v3, p0, Landroid/widget/RelativeLayout;->mAllowBrokenMeasureSpecs:Z

    .line 265
    const/16 v3, 0x12

    if-lt v0, v3, :cond_1

    move v1, v2

    nop

    :cond_1
    iput-boolean v1, p0, Landroid/widget/RelativeLayout;->mMeasureVerticalWithPaddingMargin:Z

    .line 266
    return-void
.end method

.method private sortChildren()V
    .locals 4

    .line 365
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getChildCount()I

    move-result v0

    .line 366
    .local v0, "count":I
    iget-object v1, p0, Landroid/widget/RelativeLayout;->mSortedVerticalChildren:[Landroid/view/View;

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/widget/RelativeLayout;->mSortedVerticalChildren:[Landroid/view/View;

    array-length v1, v1

    if-eq v1, v0, :cond_1

    .line 367
    :cond_0
    new-array v1, v0, [Landroid/view/View;

    iput-object v1, p0, Landroid/widget/RelativeLayout;->mSortedVerticalChildren:[Landroid/view/View;

    .line 370
    :cond_1
    iget-object v1, p0, Landroid/widget/RelativeLayout;->mSortedHorizontalChildren:[Landroid/view/View;

    if-eqz v1, :cond_2

    iget-object v1, p0, Landroid/widget/RelativeLayout;->mSortedHorizontalChildren:[Landroid/view/View;

    array-length v1, v1

    if-eq v1, v0, :cond_3

    .line 371
    :cond_2
    new-array v1, v0, [Landroid/view/View;

    iput-object v1, p0, Landroid/widget/RelativeLayout;->mSortedHorizontalChildren:[Landroid/view/View;

    .line 374
    :cond_3
    iget-object v1, p0, Landroid/widget/RelativeLayout;->mGraph:Landroid/widget/RelativeLayout$DependencyGraph;

    .line 375
    .local v1, "graph":Landroid/widget/RelativeLayout$DependencyGraph;
    invoke-virtual {v1}, Landroid/widget/RelativeLayout$DependencyGraph;->clear()V

    .line 377
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_4

    .line 378
    invoke-virtual {p0, v2}, Landroid/widget/RelativeLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/RelativeLayout$DependencyGraph;->add(Landroid/view/View;)V

    .line 377
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 381
    .end local v2    # "i":I
    :cond_4
    iget-object v2, p0, Landroid/widget/RelativeLayout;->mSortedVerticalChildren:[Landroid/view/View;

    sget-object v3, Landroid/widget/RelativeLayout;->RULES_VERTICAL:[I

    invoke-virtual {v1, v2, v3}, Landroid/widget/RelativeLayout$DependencyGraph;->getSortedViews([Landroid/view/View;[I)V

    .line 382
    iget-object v2, p0, Landroid/widget/RelativeLayout;->mSortedHorizontalChildren:[Landroid/view/View;

    sget-object v3, Landroid/widget/RelativeLayout;->RULES_HORIZONTAL:[I

    invoke-virtual {v1, v2, v3}, Landroid/widget/RelativeLayout$DependencyGraph;->getSortedViews([Landroid/view/View;[I)V

    .line 383
    return-void
.end method


# virtual methods
.method protected checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z
    .locals 1
    .param p1, "p"    # Landroid/view/ViewGroup$LayoutParams;

    .line 1106
    instance-of v0, p1, Landroid/widget/RelativeLayout$LayoutParams;

    return v0
.end method

.method public dispatchPopulateAccessibilityEventInternal(Landroid/view/accessibility/AccessibilityEvent;)Z
    .locals 4
    .param p1, "event"    # Landroid/view/accessibility/AccessibilityEvent;

    .line 1124
    iget-object v0, p0, Landroid/widget/RelativeLayout;->mTopToBottomLeftToRightSet:Ljava/util/SortedSet;

    if-nez v0, :cond_0

    .line 1125
    new-instance v0, Ljava/util/TreeSet;

    new-instance v1, Landroid/widget/RelativeLayout$TopToBottomLeftToRightComparator;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Landroid/widget/RelativeLayout$TopToBottomLeftToRightComparator;-><init>(Landroid/widget/RelativeLayout;Landroid/widget/RelativeLayout$1;)V

    invoke-direct {v0, v1}, Ljava/util/TreeSet;-><init>(Ljava/util/Comparator;)V

    iput-object v0, p0, Landroid/widget/RelativeLayout;->mTopToBottomLeftToRightSet:Ljava/util/SortedSet;

    .line 1129
    :cond_0
    const/4 v0, 0x0

    .local v0, "i":I
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getChildCount()I

    move-result v1

    .local v1, "count":I
    :goto_0
    if-ge v0, v1, :cond_1

    .line 1130
    iget-object v2, p0, Landroid/widget/RelativeLayout;->mTopToBottomLeftToRightSet:Ljava/util/SortedSet;

    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/SortedSet;->add(Ljava/lang/Object;)Z

    .line 1129
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1133
    .end local v0    # "i":I
    .end local v1    # "count":I
    :cond_1
    iget-object v0, p0, Landroid/widget/RelativeLayout;->mTopToBottomLeftToRightSet:Ljava/util/SortedSet;

    invoke-interface {v0}, Ljava/util/SortedSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    .line 1134
    .local v1, "view":Landroid/view/View;
    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v2

    if-nez v2, :cond_2

    .line 1135
    invoke-virtual {v1, p1}, Landroid/view/View;->dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1136
    iget-object v0, p0, Landroid/widget/RelativeLayout;->mTopToBottomLeftToRightSet:Ljava/util/SortedSet;

    invoke-interface {v0}, Ljava/util/SortedSet;->clear()V

    .line 1137
    const/4 v0, 0x1

    return v0

    .line 1139
    .end local v1    # "view":Landroid/view/View;
    :cond_2
    goto :goto_1

    .line 1141
    :cond_3
    iget-object v0, p0, Landroid/widget/RelativeLayout;->mTopToBottomLeftToRightSet:Ljava/util/SortedSet;

    invoke-interface {v0}, Ljava/util/SortedSet;->clear()V

    .line 1142
    const/4 v0, 0x0

    return v0
.end method

.method protected generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    .locals 2

    .line 1100
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v1, -0x2

    invoke-direct {v0, v1, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    return-object v0
.end method

.method public bridge synthetic generateLayoutParams(Landroid/util/AttributeSet;)Landroid/view/ViewGroup$LayoutParams;
    .locals 0

    .line 83
    invoke-virtual {p0, p1}, Landroid/widget/RelativeLayout;->generateLayoutParams(Landroid/util/AttributeSet;)Landroid/widget/RelativeLayout$LayoutParams;

    move-result-object p1

    return-object p1
.end method

.method protected generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;
    .locals 2
    .param p1, "lp"    # Landroid/view/ViewGroup$LayoutParams;

    .line 1111
    sget-boolean v0, Landroid/widget/RelativeLayout;->sPreserveMarginParamsInLayoutParamConversion:Z

    if-eqz v0, :cond_1

    .line 1112
    instance-of v0, p1, Landroid/widget/RelativeLayout$LayoutParams;

    if-eqz v0, :cond_0

    .line 1113
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    move-object v1, p1

    check-cast v1, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(Landroid/widget/RelativeLayout$LayoutParams;)V

    return-object v0

    .line 1114
    :cond_0
    instance-of v0, p1, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz v0, :cond_1

    .line 1115
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    move-object v1, p1

    check-cast v1, Landroid/view/ViewGroup$MarginLayoutParams;

    invoke-direct {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(Landroid/view/ViewGroup$MarginLayoutParams;)V

    return-object v0

    .line 1118
    :cond_1
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, p1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    return-object v0
.end method

.method public generateLayoutParams(Landroid/util/AttributeSet;)Landroid/widget/RelativeLayout$LayoutParams;
    .locals 2
    .param p1, "attrs"    # Landroid/util/AttributeSet;

    .line 1090
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-object v0
.end method

.method public getAccessibilityClassName()Ljava/lang/CharSequence;
    .locals 1

    .line 1147
    const-class v0, Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getBaseline()I
    .locals 1

    .line 355
    iget-object v0, p0, Landroid/widget/RelativeLayout;->mBaselineView:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/RelativeLayout;->mBaselineView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getBaseline()I

    move-result v0

    goto :goto_0

    :cond_0
    invoke-super {p0}, Landroid/view/ViewGroup;->getBaseline()I

    move-result v0

    :goto_0
    return v0
.end method

.method public getGravity()I
    .locals 1

    .line 300
    iget v0, p0, Landroid/widget/RelativeLayout;->mGravity:I

    return v0
.end method

.method protected onLayout(ZIIII)V
    .locals 8
    .param p1, "changed"    # Z
    .param p2, "l"    # I
    .param p3, "t"    # I
    .param p4, "r"    # I
    .param p5, "b"    # I

    .line 1076
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getChildCount()I

    move-result v0

    .line 1078
    .local v0, "count":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 1079
    invoke-virtual {p0, v1}, Landroid/widget/RelativeLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 1080
    .local v2, "child":Landroid/view/View;
    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    move-result v3

    const/16 v4, 0x8

    if-eq v3, v4, :cond_0

    .line 1081
    nop

    .line 1082
    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/widget/RelativeLayout$LayoutParams;

    .line 1083
    .local v3, "st":Landroid/widget/RelativeLayout$LayoutParams;
    invoke-static {v3}, Landroid/widget/RelativeLayout$LayoutParams;->access$100(Landroid/widget/RelativeLayout$LayoutParams;)I

    move-result v4

    invoke-static {v3}, Landroid/widget/RelativeLayout$LayoutParams;->access$400(Landroid/widget/RelativeLayout$LayoutParams;)I

    move-result v5

    invoke-static {v3}, Landroid/widget/RelativeLayout$LayoutParams;->access$200(Landroid/widget/RelativeLayout$LayoutParams;)I

    move-result v6

    invoke-static {v3}, Landroid/widget/RelativeLayout$LayoutParams;->access$300(Landroid/widget/RelativeLayout$LayoutParams;)I

    move-result v7

    invoke-virtual {v2, v4, v5, v6, v7}, Landroid/view/View;->layout(IIII)V

    .line 1078
    .end local v2    # "child":Landroid/view/View;
    .end local v3    # "st":Landroid/widget/RelativeLayout$LayoutParams;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1086
    .end local v1    # "i":I
    :cond_1
    return-void
.end method

.method protected onMeasure(II)V
    .locals 57
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    move-object/from16 v0, p0

    .line 387
    iget-boolean v1, v0, Landroid/widget/RelativeLayout;->mDirtyHierarchy:Z

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 388
    iput-boolean v2, v0, Landroid/widget/RelativeLayout;->mDirtyHierarchy:Z

    .line 389
    invoke-direct/range {p0 .. p0}, Landroid/widget/RelativeLayout;->sortChildren()V

    .line 392
    :cond_0
    const/4 v1, -0x1

    .line 393
    .local v1, "myWidth":I
    const/4 v3, -0x1

    .line 395
    .local v3, "myHeight":I
    const/4 v4, 0x0

    .line 396
    .local v4, "width":I
    const/4 v5, 0x0

    .line 398
    .local v5, "height":I
    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v6

    .line 399
    .local v6, "widthMode":I
    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v7

    .line 400
    .local v7, "heightMode":I
    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v8

    .line 401
    .local v8, "widthSize":I
    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v9

    .line 404
    .local v9, "heightSize":I
    if-eqz v6, :cond_1

    .line 405
    move v1, v8

    .line 408
    :cond_1
    if-eqz v7, :cond_2

    .line 409
    move v3, v9

    .line 412
    :cond_2
    const/high16 v10, 0x40000000    # 2.0f

    if-ne v6, v10, :cond_3

    .line 413
    move v4, v1

    .line 416
    :cond_3
    if-ne v7, v10, :cond_4

    .line 417
    move v5, v3

    .line 420
    :cond_4
    const/4 v11, 0x0

    .line 421
    .local v11, "ignore":Landroid/view/View;
    iget v12, v0, Landroid/widget/RelativeLayout;->mGravity:I

    const v13, 0x800007

    and-int/2addr v12, v13

    .line 422
    .local v12, "gravity":I
    const v13, 0x800003

    if-eq v12, v13, :cond_5

    if-eqz v12, :cond_5

    const/4 v13, 0x1

    goto :goto_0

    :cond_5
    move v13, v2

    .line 423
    .local v13, "horizontalGravity":Z
    :goto_0
    iget v15, v0, Landroid/widget/RelativeLayout;->mGravity:I

    and-int/lit8 v12, v15, 0x70

    .line 424
    const/16 v15, 0x30

    if-eq v12, v15, :cond_6

    if-eqz v12, :cond_6

    const/4 v15, 0x1

    goto :goto_1

    :cond_6
    move v15, v2

    .line 426
    .local v15, "verticalGravity":Z
    :goto_1
    const v16, 0x7fffffff

    .line 427
    .local v16, "left":I
    const v17, 0x7fffffff

    .line 428
    .local v17, "top":I
    const/high16 v18, -0x80000000

    .line 429
    .local v18, "right":I
    const/high16 v19, -0x80000000

    .line 431
    .local v19, "bottom":I
    const/16 v20, 0x0

    .line 432
    .local v20, "offsetHorizontalAxis":Z
    const/16 v21, 0x0

    .line 434
    .local v21, "offsetVerticalAxis":Z
    const/4 v2, -0x1

    if-nez v13, :cond_7

    if-eqz v15, :cond_8

    :cond_7
    iget v14, v0, Landroid/widget/RelativeLayout;->mIgnoreGravity:I

    if-eq v14, v2, :cond_8

    .line 435
    iget v14, v0, Landroid/widget/RelativeLayout;->mIgnoreGravity:I

    invoke-virtual {v0, v14}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v11

    .line 438
    :cond_8
    if-eq v6, v10, :cond_9

    const/4 v14, 0x1

    goto :goto_2

    :cond_9
    const/4 v14, 0x0

    .line 439
    .local v14, "isWrapContentWidth":Z
    :goto_2
    if-eq v7, v10, :cond_a

    const/16 v23, 0x1

    goto :goto_3

    :cond_a
    const/16 v23, 0x0

    :goto_3
    move/from16 v10, v23

    .line 446
    .local v10, "isWrapContentHeight":Z
    invoke-virtual/range {p0 .. p0}, Landroid/widget/RelativeLayout;->getLayoutDirection()I

    move-result v2

    .line 447
    .local v2, "layoutDirection":I
    invoke-virtual/range {p0 .. p0}, Landroid/widget/RelativeLayout;->isLayoutRtl()Z

    move-result v23

    if-eqz v23, :cond_b

    move/from16 v30, v4

    const/4 v4, -0x1

    if-ne v1, v4, :cond_c

    .line 448
    .end local v4    # "width":I
    .local v30, "width":I
    const/high16 v1, 0x10000

    goto :goto_4

    .line 451
    .end local v30    # "width":I
    .restart local v4    # "width":I
    :cond_b
    move/from16 v30, v4

    .end local v4    # "width":I
    .restart local v30    # "width":I
    :cond_c
    :goto_4
    iget-object v4, v0, Landroid/widget/RelativeLayout;->mSortedHorizontalChildren:[Landroid/view/View;

    .line 452
    .local v4, "views":[Landroid/view/View;
    move/from16 v31, v5

    array-length v5, v4

    .line 454
    .local v5, "count":I
    .local v31, "height":I
    move/from16 v29, v20

    const/16 v20, 0x0

    .local v20, "i":I
    .local v29, "offsetHorizontalAxis":Z
    :goto_5
    move/from16 v32, v20

    .end local v20    # "i":I
    .local v32, "i":I
    move/from16 v33, v6

    .end local v6    # "widthMode":I
    .local v33, "widthMode":I
    move/from16 v6, v32

    if-ge v6, v5, :cond_e

    .line 455
    .end local v32    # "i":I
    .local v6, "i":I
    move/from16 v34, v5

    aget-object v5, v4, v6

    .line 456
    .local v5, "child":Landroid/view/View;
    .local v34, "count":I
    move-object/from16 v35, v4

    invoke-virtual {v5}, Landroid/view/View;->getVisibility()I

    move-result v4

    .end local v4    # "views":[Landroid/view/View;
    .local v35, "views":[Landroid/view/View;
    move/from16 v36, v7

    const/16 v7, 0x8

    if-eq v4, v7, :cond_d

    .line 457
    .end local v7    # "heightMode":I
    .local v36, "heightMode":I
    invoke-virtual {v5}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Landroid/widget/RelativeLayout$LayoutParams;

    .line 458
    .local v4, "params":Landroid/widget/RelativeLayout$LayoutParams;
    invoke-virtual {v4, v2}, Landroid/widget/RelativeLayout$LayoutParams;->getRules(I)[I

    move-result-object v7

    .line 460
    .local v7, "rules":[I
    invoke-direct {v0, v4, v1, v7}, Landroid/widget/RelativeLayout;->applyHorizontalSizeRules(Landroid/widget/RelativeLayout$LayoutParams;I[I)V

    .line 461
    invoke-direct {v0, v5, v4, v1, v3}, Landroid/widget/RelativeLayout;->measureChildHorizontal(Landroid/view/View;Landroid/widget/RelativeLayout$LayoutParams;II)V

    .line 463
    invoke-direct {v0, v5, v4, v1, v14}, Landroid/widget/RelativeLayout;->positionChildHorizontal(Landroid/view/View;Landroid/widget/RelativeLayout$LayoutParams;IZ)Z

    move-result v20

    if-eqz v20, :cond_d

    .line 464
    const/4 v4, 0x1

    .line 454
    .end local v5    # "child":Landroid/view/View;
    .end local v7    # "rules":[I
    .end local v29    # "offsetHorizontalAxis":Z
    .local v4, "offsetHorizontalAxis":Z
    move/from16 v29, v4

    .end local v4    # "offsetHorizontalAxis":Z
    .restart local v29    # "offsetHorizontalAxis":Z
    :cond_d
    add-int/lit8 v20, v6, 0x1

    .end local v6    # "i":I
    .restart local v20    # "i":I
    move/from16 v6, v33

    move/from16 v5, v34

    move-object/from16 v4, v35

    move/from16 v7, v36

    goto :goto_5

    .line 469
    .end local v20    # "i":I
    .end local v34    # "count":I
    .end local v35    # "views":[Landroid/view/View;
    .end local v36    # "heightMode":I
    .local v4, "views":[Landroid/view/View;
    .local v5, "count":I
    .local v7, "heightMode":I
    :cond_e
    move-object/from16 v35, v4

    move/from16 v34, v5

    move/from16 v36, v7

    .end local v4    # "views":[Landroid/view/View;
    .end local v5    # "count":I
    .end local v7    # "heightMode":I
    .restart local v34    # "count":I
    .restart local v35    # "views":[Landroid/view/View;
    .restart local v36    # "heightMode":I
    iget-object v4, v0, Landroid/widget/RelativeLayout;->mSortedVerticalChildren:[Landroid/view/View;

    .line 470
    .end local v35    # "views":[Landroid/view/View;
    .restart local v4    # "views":[Landroid/view/View;
    array-length v5, v4

    .line 471
    .end local v34    # "count":I
    .restart local v5    # "count":I
    invoke-virtual/range {p0 .. p0}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v6

    iget v6, v6, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    .line 473
    .local v6, "targetSdkVersion":I
    move/from16 v40, v2

    move/from16 v37, v8

    move/from16 v38, v9

    move/from16 v39, v12

    move/from16 v12, v16

    move/from16 v2, v17

    move/from16 v41, v18

    move/from16 v42, v19

    move/from16 v8, v30

    move/from16 v9, v31

    const/4 v7, 0x0

    .end local v16    # "left":I
    .end local v17    # "top":I
    .end local v18    # "right":I
    .end local v19    # "bottom":I
    .end local v30    # "width":I
    .end local v31    # "height":I
    .local v2, "top":I
    .local v7, "i":I
    .local v8, "width":I
    .local v9, "height":I
    .local v12, "left":I
    .local v37, "widthSize":I
    .local v38, "heightSize":I
    .local v39, "gravity":I
    .local v40, "layoutDirection":I
    .local v41, "right":I
    .local v42, "bottom":I
    :goto_6
    if-ge v7, v5, :cond_1b

    .line 474
    move/from16 v43, v5

    aget-object v5, v4, v7

    .line 475
    .local v5, "child":Landroid/view/View;
    .local v43, "count":I
    move-object/from16 v44, v4

    invoke-virtual {v5}, Landroid/view/View;->getVisibility()I

    move-result v4

    .end local v4    # "views":[Landroid/view/View;
    .local v44, "views":[Landroid/view/View;
    move/from16 v45, v7

    const/16 v7, 0x8

    if-eq v4, v7, :cond_19

    .line 476
    .end local v7    # "i":I
    .local v45, "i":I
    invoke-virtual {v5}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Landroid/widget/RelativeLayout$LayoutParams;

    .line 478
    .local v4, "params":Landroid/widget/RelativeLayout$LayoutParams;
    invoke-virtual {v5}, Landroid/view/View;->getBaseline()I

    move-result v7

    invoke-direct {v0, v4, v3, v7}, Landroid/widget/RelativeLayout;->applyVerticalSizeRules(Landroid/widget/RelativeLayout$LayoutParams;II)V

    .line 479
    invoke-direct {v0, v5, v4, v1, v3}, Landroid/widget/RelativeLayout;->measureChild(Landroid/view/View;Landroid/widget/RelativeLayout$LayoutParams;II)V

    .line 480
    invoke-direct {v0, v5, v4, v3, v10}, Landroid/widget/RelativeLayout;->positionChildVertical(Landroid/view/View;Landroid/widget/RelativeLayout$LayoutParams;IZ)Z

    move-result v7

    if-eqz v7, :cond_f

    .line 481
    const/16 v21, 0x1

    .line 484
    :cond_f
    const/16 v7, 0x13

    if-eqz v14, :cond_13

    .line 485
    invoke-virtual/range {p0 .. p0}, Landroid/widget/RelativeLayout;->isLayoutRtl()Z

    move-result v16

    if-eqz v16, :cond_11

    .line 486
    if-ge v6, v7, :cond_10

    .line 487
    invoke-static {v4}, Landroid/widget/RelativeLayout$LayoutParams;->access$100(Landroid/widget/RelativeLayout$LayoutParams;)I

    move-result v16

    sub-int v7, v1, v16

    invoke-static {v8, v7}, Ljava/lang/Math;->max(II)I

    move-result v8

    .line 500
    move/from16 v46, v3

    goto :goto_7

    .line 489
    :cond_10
    invoke-static {v4}, Landroid/widget/RelativeLayout$LayoutParams;->access$100(Landroid/widget/RelativeLayout$LayoutParams;)I

    move-result v7

    sub-int v7, v1, v7

    move/from16 v46, v3

    iget v3, v4, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    .end local v3    # "myHeight":I
    .local v46, "myHeight":I
    add-int/2addr v7, v3

    invoke-static {v8, v7}, Ljava/lang/Math;->max(II)I

    move-result v8

    goto :goto_7

    .line 492
    .end local v46    # "myHeight":I
    .restart local v3    # "myHeight":I
    :cond_11
    move/from16 v46, v3

    .end local v3    # "myHeight":I
    .restart local v46    # "myHeight":I
    const/16 v3, 0x13

    if-ge v6, v3, :cond_12

    .line 493
    invoke-static {v4}, Landroid/widget/RelativeLayout$LayoutParams;->access$200(Landroid/widget/RelativeLayout$LayoutParams;)I

    move-result v3

    invoke-static {v8, v3}, Ljava/lang/Math;->max(II)I

    move-result v8

    goto :goto_7

    .line 495
    :cond_12
    invoke-static {v4}, Landroid/widget/RelativeLayout$LayoutParams;->access$200(Landroid/widget/RelativeLayout$LayoutParams;)I

    move-result v3

    iget v7, v4, Landroid/widget/RelativeLayout$LayoutParams;->rightMargin:I

    add-int/2addr v3, v7

    invoke-static {v8, v3}, Ljava/lang/Math;->max(II)I

    move-result v8

    goto :goto_7

    .line 500
    .end local v46    # "myHeight":I
    .restart local v3    # "myHeight":I
    :cond_13
    move/from16 v46, v3

    .end local v3    # "myHeight":I
    .restart local v46    # "myHeight":I
    :goto_7
    if-eqz v10, :cond_15

    .line 501
    const/16 v3, 0x13

    if-ge v6, v3, :cond_14

    .line 502
    invoke-static {v4}, Landroid/widget/RelativeLayout$LayoutParams;->access$300(Landroid/widget/RelativeLayout$LayoutParams;)I

    move-result v3

    invoke-static {v9, v3}, Ljava/lang/Math;->max(II)I

    move-result v9

    goto :goto_8

    .line 504
    :cond_14
    invoke-static {v4}, Landroid/widget/RelativeLayout$LayoutParams;->access$300(Landroid/widget/RelativeLayout$LayoutParams;)I

    move-result v3

    iget v7, v4, Landroid/widget/RelativeLayout$LayoutParams;->bottomMargin:I

    add-int/2addr v3, v7

    invoke-static {v9, v3}, Ljava/lang/Math;->max(II)I

    move-result v9

    .line 508
    :cond_15
    :goto_8
    if-ne v5, v11, :cond_16

    if-eqz v15, :cond_17

    .line 509
    :cond_16
    invoke-static {v4}, Landroid/widget/RelativeLayout$LayoutParams;->access$100(Landroid/widget/RelativeLayout$LayoutParams;)I

    move-result v3

    iget v7, v4, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    sub-int/2addr v3, v7

    invoke-static {v12, v3}, Ljava/lang/Math;->min(II)I

    move-result v12

    .line 510
    invoke-static {v4}, Landroid/widget/RelativeLayout$LayoutParams;->access$400(Landroid/widget/RelativeLayout$LayoutParams;)I

    move-result v3

    iget v7, v4, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    sub-int/2addr v3, v7

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 513
    :cond_17
    if-ne v5, v11, :cond_18

    if-eqz v13, :cond_1a

    .line 514
    :cond_18
    invoke-static {v4}, Landroid/widget/RelativeLayout$LayoutParams;->access$200(Landroid/widget/RelativeLayout$LayoutParams;)I

    move-result v3

    iget v7, v4, Landroid/widget/RelativeLayout$LayoutParams;->rightMargin:I

    add-int/2addr v3, v7

    move/from16 v7, v41

    invoke-static {v7, v3}, Ljava/lang/Math;->max(II)I

    move-result v3

    .line 515
    .end local v41    # "right":I
    .local v3, "right":I
    invoke-static {v4}, Landroid/widget/RelativeLayout$LayoutParams;->access$300(Landroid/widget/RelativeLayout$LayoutParams;)I

    move-result v7

    move/from16 v47, v2

    iget v2, v4, Landroid/widget/RelativeLayout$LayoutParams;->bottomMargin:I

    .end local v2    # "top":I
    .local v47, "top":I
    add-int/2addr v7, v2

    move/from16 v2, v42

    invoke-static {v2, v7}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 473
    .end local v4    # "params":Landroid/widget/RelativeLayout$LayoutParams;
    .end local v5    # "child":Landroid/view/View;
    .end local v42    # "bottom":I
    .local v2, "bottom":I
    move/from16 v42, v2

    move/from16 v41, v3

    move/from16 v2, v47

    goto :goto_9

    .end local v46    # "myHeight":I
    .end local v47    # "top":I
    .local v2, "top":I
    .local v3, "myHeight":I
    .restart local v41    # "right":I
    .restart local v42    # "bottom":I
    :cond_19
    move/from16 v46, v3

    move/from16 v7, v41

    move/from16 v19, v42

    .end local v3    # "myHeight":I
    .restart local v46    # "myHeight":I
    :cond_1a
    :goto_9
    add-int/lit8 v7, v45, 0x1

    .end local v45    # "i":I
    .restart local v7    # "i":I
    move/from16 v5, v43

    move-object/from16 v4, v44

    move/from16 v3, v46

    goto/16 :goto_6

    .line 522
    .end local v7    # "i":I
    .end local v43    # "count":I
    .end local v44    # "views":[Landroid/view/View;
    .end local v46    # "myHeight":I
    .restart local v3    # "myHeight":I
    .local v4, "views":[Landroid/view/View;
    .local v5, "count":I
    :cond_1b
    move/from16 v46, v3

    move-object/from16 v44, v4

    move/from16 v43, v5

    move/from16 v7, v41

    move/from16 v19, v42

    .end local v3    # "myHeight":I
    .end local v4    # "views":[Landroid/view/View;
    .end local v5    # "count":I
    .end local v41    # "right":I
    .end local v42    # "bottom":I
    .local v7, "right":I
    .restart local v19    # "bottom":I
    .restart local v43    # "count":I
    .restart local v44    # "views":[Landroid/view/View;
    .restart local v46    # "myHeight":I
    const/4 v3, 0x0

    .line 523
    .local v3, "baselineView":Landroid/view/View;
    const/4 v4, 0x0

    .line 524
    .local v4, "baselineParams":Landroid/widget/RelativeLayout$LayoutParams;
    move-object v5, v4

    move-object v4, v3

    const/4 v3, 0x0

    .local v3, "i":I
    .local v4, "baselineView":Landroid/view/View;
    .local v5, "baselineParams":Landroid/widget/RelativeLayout$LayoutParams;
    :goto_a
    move/from16 v48, v6

    move/from16 v6, v43

    if-ge v3, v6, :cond_1e

    .line 525
    .end local v43    # "count":I
    .local v6, "count":I
    .local v48, "targetSdkVersion":I
    move/from16 v49, v1

    aget-object v1, v44, v3

    .line 526
    .local v1, "child":Landroid/view/View;
    .local v49, "myWidth":I
    move-object/from16 v50, v11

    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v11

    .end local v11    # "ignore":Landroid/view/View;
    .local v50, "ignore":Landroid/view/View;
    move/from16 v51, v2

    const/16 v2, 0x8

    if-eq v11, v2, :cond_1d

    .line 527
    .end local v2    # "top":I
    .local v51, "top":I
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/widget/RelativeLayout$LayoutParams;

    .line 528
    .local v2, "childParams":Landroid/widget/RelativeLayout$LayoutParams;
    if-eqz v4, :cond_1c

    if-eqz v5, :cond_1c

    .line 529
    invoke-direct {v0, v2, v5}, Landroid/widget/RelativeLayout;->compareLayoutPosition(Landroid/widget/RelativeLayout$LayoutParams;Landroid/widget/RelativeLayout$LayoutParams;)I

    move-result v11

    if-gez v11, :cond_1d

    .line 530
    :cond_1c
    move-object v4, v1

    .line 531
    move-object v1, v2

    .line 524
    .end local v2    # "childParams":Landroid/widget/RelativeLayout$LayoutParams;
    .end local v5    # "baselineParams":Landroid/widget/RelativeLayout$LayoutParams;
    .local v1, "baselineParams":Landroid/widget/RelativeLayout$LayoutParams;
    move-object v5, v1

    .end local v1    # "baselineParams":Landroid/widget/RelativeLayout$LayoutParams;
    .restart local v5    # "baselineParams":Landroid/widget/RelativeLayout$LayoutParams;
    :cond_1d
    add-int/lit8 v3, v3, 0x1

    move/from16 v43, v6

    move/from16 v6, v48

    move/from16 v1, v49

    move-object/from16 v11, v50

    move/from16 v2, v51

    goto :goto_a

    .line 535
    .end local v3    # "i":I
    .end local v49    # "myWidth":I
    .end local v50    # "ignore":Landroid/view/View;
    .end local v51    # "top":I
    .local v1, "myWidth":I
    .local v2, "top":I
    .restart local v11    # "ignore":Landroid/view/View;
    :cond_1e
    move/from16 v49, v1

    move/from16 v51, v2

    move-object/from16 v50, v11

    .end local v1    # "myWidth":I
    .end local v2    # "top":I
    .end local v11    # "ignore":Landroid/view/View;
    .restart local v49    # "myWidth":I
    .restart local v50    # "ignore":Landroid/view/View;
    .restart local v51    # "top":I
    iput-object v4, v0, Landroid/widget/RelativeLayout;->mBaselineView:Landroid/view/View;

    .line 537
    if-eqz v14, :cond_24

    .line 540
    iget v2, v0, Landroid/widget/RelativeLayout;->mPaddingRight:I

    add-int/2addr v8, v2

    .line 542
    iget-object v2, v0, Landroid/widget/RelativeLayout;->mLayoutParams:Landroid/view/ViewGroup$LayoutParams;

    if-eqz v2, :cond_1f

    iget-object v2, v0, Landroid/widget/RelativeLayout;->mLayoutParams:Landroid/view/ViewGroup$LayoutParams;

    iget v2, v2, Landroid/view/ViewGroup$LayoutParams;->width:I

    if-ltz v2, :cond_1f

    .line 543
    iget-object v2, v0, Landroid/widget/RelativeLayout;->mLayoutParams:Landroid/view/ViewGroup$LayoutParams;

    iget v2, v2, Landroid/view/ViewGroup$LayoutParams;->width:I

    invoke-static {v8, v2}, Ljava/lang/Math;->max(II)I

    move-result v8

    .line 546
    :cond_1f
    invoke-virtual/range {p0 .. p0}, Landroid/widget/RelativeLayout;->getSuggestedMinimumWidth()I

    move-result v2

    invoke-static {v8, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 547
    .end local v8    # "width":I
    .local v2, "width":I
    move/from16 v3, p1

    invoke-static {v2, v3}, Landroid/widget/RelativeLayout;->resolveSize(II)I

    move-result v8

    .line 549
    .end local v2    # "width":I
    .restart local v8    # "width":I
    if-eqz v29, :cond_24

    .line 550
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_b
    if-ge v2, v6, :cond_24

    .line 551
    aget-object v11, v44, v2

    .line 552
    .local v11, "child":Landroid/view/View;
    invoke-virtual {v11}, Landroid/view/View;->getVisibility()I

    move-result v1

    const/16 v3, 0x8

    if-eq v1, v3, :cond_23

    .line 553
    invoke-virtual {v11}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout$LayoutParams;

    .line 554
    .local v1, "params":Landroid/widget/RelativeLayout$LayoutParams;
    move/from16 v3, v40

    invoke-virtual {v1, v3}, Landroid/widget/RelativeLayout$LayoutParams;->getRules(I)[I

    move-result-object v16

    .line 555
    .end local v40    # "layoutDirection":I
    .local v3, "layoutDirection":I
    .local v16, "rules":[I
    const/16 v17, 0xd

    aget v18, v16, v17

    if-nez v18, :cond_22

    const/16 v17, 0xe

    aget v17, v16, v17

    if-eqz v17, :cond_20

    .line 556
    move-object/from16 v52, v4

    goto :goto_c

    .line 557
    :cond_20
    const/16 v17, 0xb

    aget v17, v16, v17

    if-eqz v17, :cond_21

    .line 558
    invoke-virtual {v11}, Landroid/view/View;->getMeasuredWidth()I

    move-result v17

    .line 559
    .local v17, "childWidth":I
    move-object/from16 v52, v4

    iget v4, v0, Landroid/widget/RelativeLayout;->mPaddingRight:I

    .end local v4    # "baselineView":Landroid/view/View;
    .local v52, "baselineView":Landroid/view/View;
    sub-int v4, v8, v4

    sub-int v4, v4, v17

    invoke-static {v1, v4}, Landroid/widget/RelativeLayout$LayoutParams;->access$102(Landroid/widget/RelativeLayout$LayoutParams;I)I

    .line 560
    invoke-static {v1}, Landroid/widget/RelativeLayout$LayoutParams;->access$100(Landroid/widget/RelativeLayout$LayoutParams;)I

    move-result v4

    add-int v4, v4, v17

    invoke-static {v1, v4}, Landroid/widget/RelativeLayout$LayoutParams;->access$202(Landroid/widget/RelativeLayout$LayoutParams;I)I

    .end local v1    # "params":Landroid/widget/RelativeLayout$LayoutParams;
    .end local v11    # "child":Landroid/view/View;
    .end local v16    # "rules":[I
    .end local v17    # "childWidth":I
    goto :goto_d

    .line 550
    .end local v52    # "baselineView":Landroid/view/View;
    .restart local v4    # "baselineView":Landroid/view/View;
    :cond_21
    move-object/from16 v52, v4

    .end local v4    # "baselineView":Landroid/view/View;
    .restart local v52    # "baselineView":Landroid/view/View;
    goto :goto_d

    .line 556
    .end local v52    # "baselineView":Landroid/view/View;
    .restart local v1    # "params":Landroid/widget/RelativeLayout$LayoutParams;
    .restart local v4    # "baselineView":Landroid/view/View;
    .restart local v11    # "child":Landroid/view/View;
    .restart local v16    # "rules":[I
    :cond_22
    move-object/from16 v52, v4

    .end local v4    # "baselineView":Landroid/view/View;
    .restart local v52    # "baselineView":Landroid/view/View;
    :goto_c
    invoke-static {v11, v1, v8}, Landroid/widget/RelativeLayout;->centerHorizontal(Landroid/view/View;Landroid/widget/RelativeLayout$LayoutParams;I)V

    goto :goto_d

    .line 550
    .end local v1    # "params":Landroid/widget/RelativeLayout$LayoutParams;
    .end local v3    # "layoutDirection":I
    .end local v11    # "child":Landroid/view/View;
    .end local v16    # "rules":[I
    .end local v52    # "baselineView":Landroid/view/View;
    .restart local v4    # "baselineView":Landroid/view/View;
    .restart local v40    # "layoutDirection":I
    :cond_23
    move-object/from16 v52, v4

    move/from16 v3, v40

    .end local v4    # "baselineView":Landroid/view/View;
    .end local v40    # "layoutDirection":I
    .restart local v3    # "layoutDirection":I
    .restart local v52    # "baselineView":Landroid/view/View;
    :goto_d
    add-int/lit8 v2, v2, 0x1

    move/from16 v40, v3

    move-object/from16 v4, v52

    move/from16 v3, p1

    goto :goto_b

    .line 567
    .end local v2    # "i":I
    .end local v3    # "layoutDirection":I
    .end local v52    # "baselineView":Landroid/view/View;
    .restart local v4    # "baselineView":Landroid/view/View;
    .restart local v40    # "layoutDirection":I
    :cond_24
    move-object/from16 v52, v4

    move/from16 v3, v40

    .end local v4    # "baselineView":Landroid/view/View;
    .end local v40    # "layoutDirection":I
    .restart local v3    # "layoutDirection":I
    .restart local v52    # "baselineView":Landroid/view/View;
    if-eqz v10, :cond_2a

    .line 570
    iget v1, v0, Landroid/widget/RelativeLayout;->mPaddingBottom:I

    add-int/2addr v9, v1

    .line 572
    iget-object v1, v0, Landroid/widget/RelativeLayout;->mLayoutParams:Landroid/view/ViewGroup$LayoutParams;

    if-eqz v1, :cond_25

    iget-object v1, v0, Landroid/widget/RelativeLayout;->mLayoutParams:Landroid/view/ViewGroup$LayoutParams;

    iget v1, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    if-ltz v1, :cond_25

    .line 573
    iget-object v1, v0, Landroid/widget/RelativeLayout;->mLayoutParams:Landroid/view/ViewGroup$LayoutParams;

    iget v1, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    invoke-static {v9, v1}, Ljava/lang/Math;->max(II)I

    move-result v9

    .line 576
    :cond_25
    invoke-virtual/range {p0 .. p0}, Landroid/widget/RelativeLayout;->getSuggestedMinimumHeight()I

    move-result v1

    invoke-static {v9, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 577
    .end local v9    # "height":I
    .local v1, "height":I
    move/from16 v2, p2

    invoke-static {v1, v2}, Landroid/widget/RelativeLayout;->resolveSize(II)I

    move-result v9

    .line 579
    .end local v1    # "height":I
    .restart local v9    # "height":I
    if-eqz v21, :cond_2a

    .line 580
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_e
    if-ge v1, v6, :cond_2a

    .line 581
    aget-object v4, v44, v1

    .line 582
    .local v4, "child":Landroid/view/View;
    invoke-virtual {v4}, Landroid/view/View;->getVisibility()I

    move-result v11

    const/16 v2, 0x8

    if-eq v11, v2, :cond_29

    .line 583
    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/widget/RelativeLayout$LayoutParams;

    .line 584
    .local v2, "params":Landroid/widget/RelativeLayout$LayoutParams;
    invoke-virtual {v2, v3}, Landroid/widget/RelativeLayout$LayoutParams;->getRules(I)[I

    move-result-object v11

    .line 585
    .local v11, "rules":[I
    const/16 v16, 0xd

    aget v17, v11, v16

    if-nez v17, :cond_28

    const/16 v17, 0xf

    aget v17, v11, v17

    if-eqz v17, :cond_26

    .line 586
    move-object/from16 v53, v5

    goto :goto_f

    .line 587
    :cond_26
    const/16 v17, 0xc

    aget v17, v11, v17

    if-eqz v17, :cond_27

    .line 588
    invoke-virtual {v4}, Landroid/view/View;->getMeasuredHeight()I

    move-result v17

    .line 589
    .local v17, "childHeight":I
    move-object/from16 v53, v5

    iget v5, v0, Landroid/widget/RelativeLayout;->mPaddingBottom:I

    .end local v5    # "baselineParams":Landroid/widget/RelativeLayout$LayoutParams;
    .local v53, "baselineParams":Landroid/widget/RelativeLayout$LayoutParams;
    sub-int v5, v9, v5

    sub-int v5, v5, v17

    invoke-static {v2, v5}, Landroid/widget/RelativeLayout$LayoutParams;->access$402(Landroid/widget/RelativeLayout$LayoutParams;I)I

    .line 590
    invoke-static {v2}, Landroid/widget/RelativeLayout$LayoutParams;->access$400(Landroid/widget/RelativeLayout$LayoutParams;)I

    move-result v5

    add-int v5, v5, v17

    invoke-static {v2, v5}, Landroid/widget/RelativeLayout$LayoutParams;->access$302(Landroid/widget/RelativeLayout$LayoutParams;I)I

    .end local v2    # "params":Landroid/widget/RelativeLayout$LayoutParams;
    .end local v4    # "child":Landroid/view/View;
    .end local v11    # "rules":[I
    .end local v17    # "childHeight":I
    goto :goto_10

    .line 580
    .end local v53    # "baselineParams":Landroid/widget/RelativeLayout$LayoutParams;
    .restart local v5    # "baselineParams":Landroid/widget/RelativeLayout$LayoutParams;
    :cond_27
    move-object/from16 v53, v5

    goto :goto_10

    .line 586
    .restart local v2    # "params":Landroid/widget/RelativeLayout$LayoutParams;
    .restart local v4    # "child":Landroid/view/View;
    .restart local v11    # "rules":[I
    :cond_28
    move-object/from16 v53, v5

    .end local v5    # "baselineParams":Landroid/widget/RelativeLayout$LayoutParams;
    .restart local v53    # "baselineParams":Landroid/widget/RelativeLayout$LayoutParams;
    :goto_f
    invoke-static {v4, v2, v9}, Landroid/widget/RelativeLayout;->centerVertical(Landroid/view/View;Landroid/widget/RelativeLayout$LayoutParams;I)V

    goto :goto_10

    .line 580
    .end local v2    # "params":Landroid/widget/RelativeLayout$LayoutParams;
    .end local v4    # "child":Landroid/view/View;
    .end local v11    # "rules":[I
    .end local v53    # "baselineParams":Landroid/widget/RelativeLayout$LayoutParams;
    .restart local v5    # "baselineParams":Landroid/widget/RelativeLayout$LayoutParams;
    :cond_29
    move-object/from16 v53, v5

    const/16 v16, 0xd

    .end local v5    # "baselineParams":Landroid/widget/RelativeLayout$LayoutParams;
    .restart local v53    # "baselineParams":Landroid/widget/RelativeLayout$LayoutParams;
    :goto_10
    add-int/lit8 v1, v1, 0x1

    move-object/from16 v5, v53

    move/from16 v2, p2

    goto :goto_e

    .line 597
    .end local v1    # "i":I
    .end local v53    # "baselineParams":Landroid/widget/RelativeLayout$LayoutParams;
    .restart local v5    # "baselineParams":Landroid/widget/RelativeLayout$LayoutParams;
    :cond_2a
    move-object/from16 v53, v5

    .end local v5    # "baselineParams":Landroid/widget/RelativeLayout$LayoutParams;
    .restart local v53    # "baselineParams":Landroid/widget/RelativeLayout$LayoutParams;
    if-nez v13, :cond_2c

    if-eqz v15, :cond_2b

    goto :goto_11

    .line 626
    :cond_2b
    move/from16 v56, v3

    move-object/from16 v2, v50

    goto/16 :goto_14

    .line 598
    :cond_2c
    :goto_11
    iget-object v1, v0, Landroid/widget/RelativeLayout;->mSelfBounds:Landroid/graphics/Rect;

    .line 599
    .local v1, "selfBounds":Landroid/graphics/Rect;
    iget v2, v0, Landroid/widget/RelativeLayout;->mPaddingLeft:I

    iget v4, v0, Landroid/widget/RelativeLayout;->mPaddingTop:I

    iget v5, v0, Landroid/widget/RelativeLayout;->mPaddingRight:I

    sub-int v5, v8, v5

    iget v11, v0, Landroid/widget/RelativeLayout;->mPaddingBottom:I

    sub-int v11, v9, v11

    invoke-virtual {v1, v2, v4, v5, v11}, Landroid/graphics/Rect;->set(IIII)V

    .line 602
    iget-object v2, v0, Landroid/widget/RelativeLayout;->mContentBounds:Landroid/graphics/Rect;

    .line 603
    .local v2, "contentBounds":Landroid/graphics/Rect;
    iget v4, v0, Landroid/widget/RelativeLayout;->mGravity:I

    sub-int v24, v7, v12

    sub-int v25, v19, v51

    move/from16 v23, v4

    move-object/from16 v26, v1

    move-object/from16 v27, v2

    move/from16 v28, v3

    invoke-static/range {v23 .. v28}, Landroid/view/Gravity;->apply(IIILandroid/graphics/Rect;Landroid/graphics/Rect;I)V

    .line 606
    iget v4, v2, Landroid/graphics/Rect;->left:I

    sub-int/2addr v4, v12

    .line 607
    .local v4, "horizontalOffset":I
    iget v5, v2, Landroid/graphics/Rect;->top:I

    sub-int v5, v5, v51

    .line 608
    .local v5, "verticalOffset":I
    if-nez v4, :cond_2d

    if-eqz v5, :cond_2b

    .line 609
    :cond_2d
    const/4 v11, 0x0

    .local v11, "i":I
    :goto_12
    if-ge v11, v6, :cond_31

    .line 610
    move-object/from16 v54, v1

    aget-object v1, v44, v11

    .line 611
    .local v1, "child":Landroid/view/View;
    .local v54, "selfBounds":Landroid/graphics/Rect;
    move-object/from16 v55, v2

    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v2

    .end local v2    # "contentBounds":Landroid/graphics/Rect;
    .local v55, "contentBounds":Landroid/graphics/Rect;
    move/from16 v56, v3

    const/16 v3, 0x8

    if-eq v2, v3, :cond_2f

    .end local v3    # "layoutDirection":I
    .local v56, "layoutDirection":I
    move-object/from16 v2, v50

    if-eq v1, v2, :cond_30

    .line 612
    .end local v50    # "ignore":Landroid/view/View;
    .local v2, "ignore":Landroid/view/View;
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/widget/RelativeLayout$LayoutParams;

    .line 613
    .local v3, "params":Landroid/widget/RelativeLayout$LayoutParams;
    if-eqz v13, :cond_2e

    .line 614
    invoke-static {v3, v4}, Landroid/widget/RelativeLayout$LayoutParams;->access$112(Landroid/widget/RelativeLayout$LayoutParams;I)I

    .line 615
    invoke-static {v3, v4}, Landroid/widget/RelativeLayout$LayoutParams;->access$212(Landroid/widget/RelativeLayout$LayoutParams;I)I

    .line 617
    :cond_2e
    if-eqz v15, :cond_30

    .line 618
    invoke-static {v3, v5}, Landroid/widget/RelativeLayout$LayoutParams;->access$412(Landroid/widget/RelativeLayout$LayoutParams;I)I

    .line 619
    invoke-static {v3, v5}, Landroid/widget/RelativeLayout$LayoutParams;->access$312(Landroid/widget/RelativeLayout$LayoutParams;I)I

    .end local v1    # "child":Landroid/view/View;
    .end local v3    # "params":Landroid/widget/RelativeLayout$LayoutParams;
    goto :goto_13

    .line 609
    .end local v2    # "ignore":Landroid/view/View;
    .restart local v50    # "ignore":Landroid/view/View;
    :cond_2f
    move-object/from16 v2, v50

    .end local v50    # "ignore":Landroid/view/View;
    .restart local v2    # "ignore":Landroid/view/View;
    :cond_30
    :goto_13
    add-int/lit8 v11, v11, 0x1

    move-object/from16 v50, v2

    move-object/from16 v1, v54

    move-object/from16 v2, v55

    move/from16 v3, v56

    goto :goto_12

    .line 626
    .end local v2    # "ignore":Landroid/view/View;
    .end local v4    # "horizontalOffset":I
    .end local v5    # "verticalOffset":I
    .end local v11    # "i":I
    .end local v54    # "selfBounds":Landroid/graphics/Rect;
    .end local v55    # "contentBounds":Landroid/graphics/Rect;
    .end local v56    # "layoutDirection":I
    .local v3, "layoutDirection":I
    .restart local v50    # "ignore":Landroid/view/View;
    :cond_31
    move/from16 v56, v3

    move-object/from16 v2, v50

    .end local v3    # "layoutDirection":I
    .end local v50    # "ignore":Landroid/view/View;
    .restart local v2    # "ignore":Landroid/view/View;
    .restart local v56    # "layoutDirection":I
    :goto_14
    invoke-virtual/range {p0 .. p0}, Landroid/widget/RelativeLayout;->isLayoutRtl()Z

    move-result v1

    if-eqz v1, :cond_33

    .line 627
    sub-int v1, v49, v8

    .line 628
    .local v1, "offsetWidth":I
    const/16 v22, 0x0

    .local v22, "i":I
    :goto_15
    move/from16 v3, v22

    .end local v22    # "i":I
    .local v3, "i":I
    if-ge v3, v6, :cond_33

    .line 629
    aget-object v4, v44, v3

    .line 630
    .local v4, "child":Landroid/view/View;
    invoke-virtual {v4}, Landroid/view/View;->getVisibility()I

    move-result v5

    const/16 v11, 0x8

    if-eq v5, v11, :cond_32

    .line 631
    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    check-cast v5, Landroid/widget/RelativeLayout$LayoutParams;

    .line 632
    .local v5, "params":Landroid/widget/RelativeLayout$LayoutParams;
    invoke-static {v5, v1}, Landroid/widget/RelativeLayout$LayoutParams;->access$120(Landroid/widget/RelativeLayout$LayoutParams;I)I

    .line 633
    invoke-static {v5, v1}, Landroid/widget/RelativeLayout$LayoutParams;->access$220(Landroid/widget/RelativeLayout$LayoutParams;I)I

    .line 628
    .end local v4    # "child":Landroid/view/View;
    .end local v5    # "params":Landroid/widget/RelativeLayout$LayoutParams;
    :cond_32
    add-int/lit8 v22, v3, 0x1

    .end local v3    # "i":I
    .restart local v22    # "i":I
    goto :goto_15

    .line 638
    .end local v1    # "offsetWidth":I
    .end local v22    # "i":I
    :cond_33
    invoke-virtual {v0, v8, v9}, Landroid/widget/RelativeLayout;->setMeasuredDimension(II)V

    .line 639
    return-void
.end method

.method public requestLayout()V
    .locals 1

    .line 360
    invoke-super {p0}, Landroid/view/ViewGroup;->requestLayout()V

    .line 361
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/widget/RelativeLayout;->mDirtyHierarchy:Z

    .line 362
    return-void
.end method

.method public setGravity(I)V
    .locals 1
    .param p1, "gravity"    # I
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .line 321
    iget v0, p0, Landroid/widget/RelativeLayout;->mGravity:I

    if-eq v0, p1, :cond_2

    .line 322
    const v0, 0x800007

    and-int/2addr v0, p1

    if-nez v0, :cond_0

    .line 323
    const v0, 0x800003

    or-int/2addr p1, v0

    .line 326
    :cond_0
    and-int/lit8 v0, p1, 0x70

    if-nez v0, :cond_1

    .line 327
    or-int/lit8 p1, p1, 0x30

    .line 330
    :cond_1
    iput p1, p0, Landroid/widget/RelativeLayout;->mGravity:I

    .line 331
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->requestLayout()V

    .line 333
    :cond_2
    return-void
.end method

.method public setHorizontalGravity(I)V
    .locals 3
    .param p1, "horizontalGravity"    # I
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .line 337
    const v0, 0x800007

    and-int v1, p1, v0

    .line 338
    .local v1, "gravity":I
    iget v2, p0, Landroid/widget/RelativeLayout;->mGravity:I

    and-int/2addr v0, v2

    if-eq v0, v1, :cond_0

    .line 339
    iget v0, p0, Landroid/widget/RelativeLayout;->mGravity:I

    const v2, -0x800008

    and-int/2addr v0, v2

    or-int/2addr v0, v1

    iput v0, p0, Landroid/widget/RelativeLayout;->mGravity:I

    .line 340
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->requestLayout()V

    .line 342
    :cond_0
    return-void
.end method

.method public setIgnoreGravity(I)V
    .locals 0
    .param p1, "viewId"    # I
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .line 286
    iput p1, p0, Landroid/widget/RelativeLayout;->mIgnoreGravity:I

    .line 287
    return-void
.end method

.method public setVerticalGravity(I)V
    .locals 2
    .param p1, "verticalGravity"    # I
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .line 346
    and-int/lit8 v0, p1, 0x70

    .line 347
    .local v0, "gravity":I
    iget v1, p0, Landroid/widget/RelativeLayout;->mGravity:I

    and-int/lit8 v1, v1, 0x70

    if-eq v1, v0, :cond_0

    .line 348
    iget v1, p0, Landroid/widget/RelativeLayout;->mGravity:I

    and-int/lit8 v1, v1, -0x71

    or-int/2addr v1, v0

    iput v1, p0, Landroid/widget/RelativeLayout;->mGravity:I

    .line 349
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->requestLayout()V

    .line 351
    :cond_0
    return-void
.end method

.method public shouldDelayChildPressedState()Z
    .locals 1

    .line 270
    const/4 v0, 0x0

    return v0
.end method
