.class public Landroid/widget/GridLayout;
.super Landroid/view/ViewGroup;
.source "GridLayout.java"


# annotations
.annotation runtime Landroid/widget/RemoteViews$RemoteView;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/widget/GridLayout$Alignment;,
        Landroid/widget/GridLayout$Spec;,
        Landroid/widget/GridLayout$Interval;,
        Landroid/widget/GridLayout$Bounds;,
        Landroid/widget/GridLayout$PackedMap;,
        Landroid/widget/GridLayout$Assoc;,
        Landroid/widget/GridLayout$MutableInt;,
        Landroid/widget/GridLayout$Arc;,
        Landroid/widget/GridLayout$LayoutParams;,
        Landroid/widget/GridLayout$Axis;,
        Landroid/widget/GridLayout$AlignmentMode;,
        Landroid/widget/GridLayout$Orientation;
    }
.end annotation


# static fields
.field private static final ALIGNMENT_MODE:I = 0x6

.field public static final ALIGN_BOUNDS:I = 0x0

.field public static final ALIGN_MARGINS:I = 0x1

.field public static final BASELINE:Landroid/widget/GridLayout$Alignment;

.field public static final BOTTOM:Landroid/widget/GridLayout$Alignment;

.field private static final CAN_STRETCH:I = 0x2

.field public static final CENTER:Landroid/widget/GridLayout$Alignment;

.field private static final COLUMN_COUNT:I = 0x3

.field private static final COLUMN_ORDER_PRESERVED:I = 0x4

.field private static final DEFAULT_ALIGNMENT_MODE:I = 0x1

.field static final DEFAULT_CONTAINER_MARGIN:I = 0x0

.field private static final DEFAULT_COUNT:I = -0x80000000

.field private static final DEFAULT_ORDER_PRESERVED:Z = true

.field private static final DEFAULT_ORIENTATION:I = 0x0

.field private static final DEFAULT_USE_DEFAULT_MARGINS:Z = false

.field public static final END:Landroid/widget/GridLayout$Alignment;

.field public static final FILL:Landroid/widget/GridLayout$Alignment;

.field public static final HORIZONTAL:I = 0x0

.field private static final INFLEXIBLE:I = 0x0

.field private static final LEADING:Landroid/widget/GridLayout$Alignment;

.field public static final LEFT:Landroid/widget/GridLayout$Alignment;

.field static final LOG_PRINTER:Landroid/util/Printer;

.field static final MAX_SIZE:I = 0x186a0

.field static final NO_PRINTER:Landroid/util/Printer;

.field private static final ORIENTATION:I = 0x0

.field public static final RIGHT:Landroid/widget/GridLayout$Alignment;

.field private static final ROW_COUNT:I = 0x1

.field private static final ROW_ORDER_PRESERVED:I = 0x2

.field public static final START:Landroid/widget/GridLayout$Alignment;

.field public static final TOP:Landroid/widget/GridLayout$Alignment;

.field private static final TRAILING:Landroid/widget/GridLayout$Alignment;

.field public static final UNDEFINED:I = -0x80000000

.field static final UNDEFINED_ALIGNMENT:Landroid/widget/GridLayout$Alignment;

.field static final UNINITIALIZED_HASH:I = 0x0

.field private static final USE_DEFAULT_MARGINS:I = 0x5

.field public static final VERTICAL:I = 0x1


# instance fields
.field mAlignmentMode:I

.field mDefaultGap:I

.field final mHorizontalAxis:Landroid/widget/GridLayout$Axis;

.field mLastLayoutParamsHashCode:I

.field mOrientation:I

.field mPrinter:Landroid/util/Printer;

.field mUseDefaultMargins:Z

.field final mVerticalAxis:Landroid/widget/GridLayout$Axis;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 249
    new-instance v0, Landroid/util/LogPrinter;

    const-class v1, Landroid/widget/GridLayout;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x3

    invoke-direct {v0, v2, v1}, Landroid/util/LogPrinter;-><init>(ILjava/lang/String;)V

    sput-object v0, Landroid/widget/GridLayout;->LOG_PRINTER:Landroid/util/Printer;

    .line 250
    new-instance v0, Landroid/widget/GridLayout$1;

    invoke-direct {v0}, Landroid/widget/GridLayout$1;-><init>()V

    sput-object v0, Landroid/widget/GridLayout;->NO_PRINTER:Landroid/util/Printer;

    .line 2800
    new-instance v0, Landroid/widget/GridLayout$2;

    invoke-direct {v0}, Landroid/widget/GridLayout$2;-><init>()V

    sput-object v0, Landroid/widget/GridLayout;->UNDEFINED_ALIGNMENT:Landroid/widget/GridLayout$Alignment;

    .line 2816
    new-instance v0, Landroid/widget/GridLayout$3;

    invoke-direct {v0}, Landroid/widget/GridLayout$3;-><init>()V

    sput-object v0, Landroid/widget/GridLayout;->LEADING:Landroid/widget/GridLayout$Alignment;

    .line 2832
    new-instance v0, Landroid/widget/GridLayout$4;

    invoke-direct {v0}, Landroid/widget/GridLayout$4;-><init>()V

    sput-object v0, Landroid/widget/GridLayout;->TRAILING:Landroid/widget/GridLayout$Alignment;

    .line 2848
    sget-object v0, Landroid/widget/GridLayout;->LEADING:Landroid/widget/GridLayout$Alignment;

    sput-object v0, Landroid/widget/GridLayout;->TOP:Landroid/widget/GridLayout$Alignment;

    .line 2854
    sget-object v0, Landroid/widget/GridLayout;->TRAILING:Landroid/widget/GridLayout$Alignment;

    sput-object v0, Landroid/widget/GridLayout;->BOTTOM:Landroid/widget/GridLayout$Alignment;

    .line 2860
    sget-object v0, Landroid/widget/GridLayout;->LEADING:Landroid/widget/GridLayout$Alignment;

    sput-object v0, Landroid/widget/GridLayout;->START:Landroid/widget/GridLayout$Alignment;

    .line 2866
    sget-object v0, Landroid/widget/GridLayout;->TRAILING:Landroid/widget/GridLayout$Alignment;

    sput-object v0, Landroid/widget/GridLayout;->END:Landroid/widget/GridLayout$Alignment;

    .line 2886
    sget-object v0, Landroid/widget/GridLayout;->START:Landroid/widget/GridLayout$Alignment;

    sget-object v1, Landroid/widget/GridLayout;->END:Landroid/widget/GridLayout$Alignment;

    invoke-static {v0, v1}, Landroid/widget/GridLayout;->createSwitchingAlignment(Landroid/widget/GridLayout$Alignment;Landroid/widget/GridLayout$Alignment;)Landroid/widget/GridLayout$Alignment;

    move-result-object v0

    sput-object v0, Landroid/widget/GridLayout;->LEFT:Landroid/widget/GridLayout$Alignment;

    .line 2892
    sget-object v0, Landroid/widget/GridLayout;->END:Landroid/widget/GridLayout$Alignment;

    sget-object v1, Landroid/widget/GridLayout;->START:Landroid/widget/GridLayout$Alignment;

    invoke-static {v0, v1}, Landroid/widget/GridLayout;->createSwitchingAlignment(Landroid/widget/GridLayout$Alignment;Landroid/widget/GridLayout$Alignment;)Landroid/widget/GridLayout$Alignment;

    move-result-object v0

    sput-object v0, Landroid/widget/GridLayout;->RIGHT:Landroid/widget/GridLayout$Alignment;

    .line 2899
    new-instance v0, Landroid/widget/GridLayout$6;

    invoke-direct {v0}, Landroid/widget/GridLayout$6;-><init>()V

    sput-object v0, Landroid/widget/GridLayout;->CENTER:Landroid/widget/GridLayout$Alignment;

    .line 2918
    new-instance v0, Landroid/widget/GridLayout$7;

    invoke-direct {v0}, Landroid/widget/GridLayout$7;-><init>()V

    sput-object v0, Landroid/widget/GridLayout;->BASELINE:Landroid/widget/GridLayout$Alignment;

    .line 2974
    new-instance v0, Landroid/widget/GridLayout$8;

    invoke-direct {v0}, Landroid/widget/GridLayout$8;-><init>()V

    sput-object v0, Landroid/widget/GridLayout;->FILL:Landroid/widget/GridLayout$Alignment;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 288
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/widget/GridLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 289
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 292
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Landroid/widget/GridLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 293
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .line 296
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Landroid/widget/GridLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 297
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I
    .param p4, "defStyleRes"    # I

    .line 300
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 276
    new-instance v0, Landroid/widget/GridLayout$Axis;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-direct {v0, p0, v2, v1}, Landroid/widget/GridLayout$Axis;-><init>(Landroid/widget/GridLayout;ZLandroid/widget/GridLayout$1;)V

    iput-object v0, p0, Landroid/widget/GridLayout;->mHorizontalAxis:Landroid/widget/GridLayout$Axis;

    .line 277
    new-instance v0, Landroid/widget/GridLayout$Axis;

    const/4 v3, 0x0

    invoke-direct {v0, p0, v3, v1}, Landroid/widget/GridLayout$Axis;-><init>(Landroid/widget/GridLayout;ZLandroid/widget/GridLayout$1;)V

    iput-object v0, p0, Landroid/widget/GridLayout;->mVerticalAxis:Landroid/widget/GridLayout$Axis;

    .line 278
    iput v3, p0, Landroid/widget/GridLayout;->mOrientation:I

    .line 279
    iput-boolean v3, p0, Landroid/widget/GridLayout;->mUseDefaultMargins:Z

    .line 280
    iput v2, p0, Landroid/widget/GridLayout;->mAlignmentMode:I

    .line 282
    iput v3, p0, Landroid/widget/GridLayout;->mLastLayoutParamsHashCode:I

    .line 283
    sget-object v0, Landroid/widget/GridLayout;->LOG_PRINTER:Landroid/util/Printer;

    iput-object v0, p0, Landroid/widget/GridLayout;->mPrinter:Landroid/util/Printer;

    .line 301
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x1050077

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    iput v0, p0, Landroid/widget/GridLayout;->mDefaultGap:I

    .line 302
    sget-object v0, Lcom/android/internal/R$styleable;->GridLayout:[I

    invoke-virtual {p1, p2, v0, p3, p4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 305
    .local v0, "a":Landroid/content/res/TypedArray;
    const/high16 v1, -0x80000000

    :try_start_0
    invoke-virtual {v0, v2, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v4

    invoke-virtual {p0, v4}, Landroid/widget/GridLayout;->setRowCount(I)V

    .line 306
    const/4 v4, 0x3

    invoke-virtual {v0, v4, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    invoke-virtual {p0, v1}, Landroid/widget/GridLayout;->setColumnCount(I)V

    .line 307
    invoke-virtual {v0, v3, v3}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    invoke-virtual {p0, v1}, Landroid/widget/GridLayout;->setOrientation(I)V

    .line 308
    const/4 v1, 0x5

    invoke-virtual {v0, v1, v3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    invoke-virtual {p0, v1}, Landroid/widget/GridLayout;->setUseDefaultMargins(Z)V

    .line 309
    const/4 v1, 0x6

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    invoke-virtual {p0, v1}, Landroid/widget/GridLayout;->setAlignmentMode(I)V

    .line 310
    const/4 v1, 0x2

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    invoke-virtual {p0, v1}, Landroid/widget/GridLayout;->setRowOrderPreserved(Z)V

    .line 311
    const/4 v1, 0x4

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    invoke-virtual {p0, v1}, Landroid/widget/GridLayout;->setColumnOrderPreserved(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 313
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 314
    nop

    .line 315
    return-void

    .line 313
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    throw v1
.end method

.method static synthetic access$200(Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Ljava/lang/String;

    .line 170
    invoke-static {p0}, Landroid/widget/GridLayout;->handleInvalidParams(Ljava/lang/String;)V

    return-void
.end method

.method static adjust(II)I
    .locals 2
    .param p0, "measureSpec"    # I
    .param p1, "delta"    # I

    .line 1049
    add-int v0, p0, p1

    .line 1050
    invoke-static {v0}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    invoke-static {p0}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v1

    .line 1049
    invoke-static {v0, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    return v0
.end method

.method static append([Ljava/lang/Object;[Ljava/lang/Object;)[Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;[TT;)[TT;"
        }
    .end annotation

    .line 636
    .local p0, "a":[Ljava/lang/Object;, "[TT;"
    .local p1, "b":[Ljava/lang/Object;, "[TT;"
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v0

    array-length v1, p0

    array-length v2, p1

    add-int/2addr v1, v2

    invoke-static {v0, v1}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/Object;

    .line 637
    .local v0, "result":[Ljava/lang/Object;, "[TT;"
    array-length v1, p0

    const/4 v2, 0x0

    invoke-static {p0, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 638
    array-length v1, p0

    array-length v3, p1

    invoke-static {p1, v2, v0, v1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 639
    return-object v0
.end method

.method static canStretch(I)Z
    .locals 1
    .param p0, "flexibility"    # I

    .line 2992
    and-int/lit8 v0, p0, 0x2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private checkLayoutParams(Landroid/widget/GridLayout$LayoutParams;Z)V
    .locals 7
    .param p1, "lp"    # Landroid/widget/GridLayout$LayoutParams;
    .param p2, "horizontal"    # Z

    .line 842
    if-eqz p2, :cond_0

    const-string v0, "column"

    goto :goto_0

    :cond_0
    const-string/jumbo v0, "row"

    .line 843
    .local v0, "groupName":Ljava/lang/String;
    :goto_0
    if-eqz p2, :cond_1

    iget-object v1, p1, Landroid/widget/GridLayout$LayoutParams;->columnSpec:Landroid/widget/GridLayout$Spec;

    goto :goto_1

    :cond_1
    iget-object v1, p1, Landroid/widget/GridLayout$LayoutParams;->rowSpec:Landroid/widget/GridLayout$Spec;

    .line 844
    .local v1, "spec":Landroid/widget/GridLayout$Spec;
    :goto_1
    iget-object v2, v1, Landroid/widget/GridLayout$Spec;->span:Landroid/widget/GridLayout$Interval;

    .line 845
    .local v2, "span":Landroid/widget/GridLayout$Interval;
    iget v3, v2, Landroid/widget/GridLayout$Interval;->min:I

    const/high16 v4, -0x80000000

    if-eq v3, v4, :cond_2

    iget v3, v2, Landroid/widget/GridLayout$Interval;->min:I

    if-gez v3, :cond_2

    .line 846
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " indices must be positive"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/widget/GridLayout;->handleInvalidParams(Ljava/lang/String;)V

    .line 848
    :cond_2
    if-eqz p2, :cond_3

    iget-object v3, p0, Landroid/widget/GridLayout;->mHorizontalAxis:Landroid/widget/GridLayout$Axis;

    goto :goto_2

    :cond_3
    iget-object v3, p0, Landroid/widget/GridLayout;->mVerticalAxis:Landroid/widget/GridLayout$Axis;

    .line 849
    .local v3, "axis":Landroid/widget/GridLayout$Axis;
    :goto_2
    iget v5, v3, Landroid/widget/GridLayout$Axis;->definedCount:I

    .line 850
    .local v5, "count":I
    if-eq v5, v4, :cond_5

    .line 851
    iget v4, v2, Landroid/widget/GridLayout$Interval;->max:I

    if-le v4, v5, :cond_4

    .line 852
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " indices (start + span) mustn\'t exceed the "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " count"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/widget/GridLayout;->handleInvalidParams(Ljava/lang/String;)V

    .line 855
    :cond_4
    invoke-virtual {v2}, Landroid/widget/GridLayout$Interval;->size()I

    move-result v4

    if-le v4, v5, :cond_5

    .line 856
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " span mustn\'t exceed the "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " count"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/widget/GridLayout;->handleInvalidParams(Ljava/lang/String;)V

    .line 859
    :cond_5
    return-void
.end method

.method private static clip(Landroid/widget/GridLayout$Interval;ZI)I
    .locals 3
    .param p0, "minorRange"    # Landroid/widget/GridLayout$Interval;
    .param p1, "minorWasDefined"    # Z
    .param p2, "count"    # I

    .line 738
    invoke-virtual {p0}, Landroid/widget/GridLayout$Interval;->size()I

    move-result v0

    .line 739
    .local v0, "size":I
    if-nez p2, :cond_0

    .line 740
    return v0

    .line 742
    :cond_0
    if-eqz p1, :cond_1

    iget v1, p0, Landroid/widget/GridLayout$Interval;->min:I

    invoke-static {v1, p2}, Ljava/lang/Math;->min(II)I

    move-result v1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    .line 743
    .local v1, "min":I
    :goto_0
    sub-int v2, p2, v1

    invoke-static {v0, v2}, Ljava/lang/Math;->min(II)I

    move-result v2

    return v2
.end method

.method private computeLayoutParamsHashCode()I
    .locals 7

    .line 987
    const/4 v0, 0x1

    .line 988
    .local v0, "result":I
    const/4 v1, 0x0

    .local v1, "i":I
    invoke-virtual {p0}, Landroid/widget/GridLayout;->getChildCount()I

    move-result v2

    .local v2, "N":I
    :goto_0
    if-ge v1, v2, :cond_1

    .line 989
    invoke-virtual {p0, v1}, Landroid/widget/GridLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 990
    .local v3, "c":Landroid/view/View;
    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    move-result v4

    const/16 v5, 0x8

    if-ne v4, v5, :cond_0

    .end local v3    # "c":Landroid/view/View;
    goto :goto_1

    .line 991
    .restart local v3    # "c":Landroid/view/View;
    :cond_0
    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Landroid/widget/GridLayout$LayoutParams;

    .line 992
    .local v4, "lp":Landroid/widget/GridLayout$LayoutParams;
    const/16 v5, 0x1f

    mul-int/2addr v5, v0

    invoke-virtual {v4}, Landroid/widget/GridLayout$LayoutParams;->hashCode()I

    move-result v6

    add-int/2addr v5, v6

    .line 988
    .end local v0    # "result":I
    .end local v3    # "c":Landroid/view/View;
    .end local v4    # "lp":Landroid/widget/GridLayout$LayoutParams;
    .local v5, "result":I
    move v0, v5

    .end local v5    # "result":I
    .restart local v0    # "result":I
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 994
    .end local v1    # "i":I
    .end local v2    # "N":I
    :cond_1
    return v0
.end method

.method private consistencyCheck()V
    .locals 2

    .line 998
    iget v0, p0, Landroid/widget/GridLayout;->mLastLayoutParamsHashCode:I

    if-nez v0, :cond_0

    .line 999
    invoke-direct {p0}, Landroid/widget/GridLayout;->validateLayoutParams()V

    .line 1000
    invoke-direct {p0}, Landroid/widget/GridLayout;->computeLayoutParamsHashCode()I

    move-result v0

    iput v0, p0, Landroid/widget/GridLayout;->mLastLayoutParamsHashCode:I

    goto :goto_0

    .line 1001
    :cond_0
    iget v0, p0, Landroid/widget/GridLayout;->mLastLayoutParamsHashCode:I

    invoke-direct {p0}, Landroid/widget/GridLayout;->computeLayoutParamsHashCode()I

    move-result v1

    if-eq v0, v1, :cond_1

    .line 1002
    iget-object v0, p0, Landroid/widget/GridLayout;->mPrinter:Landroid/util/Printer;

    const-string v1, "The fields of some layout parameters were modified in between layout operations. Check the javadoc for GridLayout.LayoutParams#rowSpec."

    invoke-interface {v0, v1}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 1004
    invoke-direct {p0}, Landroid/widget/GridLayout;->invalidateStructure()V

    .line 1005
    invoke-direct {p0}, Landroid/widget/GridLayout;->consistencyCheck()V

    .line 1007
    :cond_1
    :goto_0
    return-void
.end method

.method private static createSwitchingAlignment(Landroid/widget/GridLayout$Alignment;Landroid/widget/GridLayout$Alignment;)Landroid/widget/GridLayout$Alignment;
    .locals 1
    .param p0, "ltr"    # Landroid/widget/GridLayout$Alignment;
    .param p1, "rtl"    # Landroid/widget/GridLayout$Alignment;

    .line 2869
    new-instance v0, Landroid/widget/GridLayout$5;

    invoke-direct {v0, p0, p1}, Landroid/widget/GridLayout$5;-><init>(Landroid/widget/GridLayout$Alignment;Landroid/widget/GridLayout$Alignment;)V

    return-object v0
.end method

.method private drawLine(Landroid/graphics/Canvas;IIIILandroid/graphics/Paint;)V
    .locals 17
    .param p1, "graphics"    # Landroid/graphics/Canvas;
    .param p2, "x1"    # I
    .param p3, "y1"    # I
    .param p4, "x2"    # I
    .param p5, "y2"    # I
    .param p6, "paint"    # Landroid/graphics/Paint;

    move/from16 v0, p2

    move/from16 v1, p3

    move/from16 v2, p4

    move/from16 v3, p5

    .line 899
    invoke-virtual/range {p0 .. p0}, Landroid/widget/GridLayout;->isLayoutRtl()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 900
    invoke-virtual/range {p0 .. p0}, Landroid/widget/GridLayout;->getWidth()I

    move-result v4

    .line 901
    .local v4, "width":I
    sub-int v5, v4, v0

    int-to-float v7, v5

    int-to-float v8, v1

    sub-int v5, v4, v2

    int-to-float v9, v5

    int-to-float v10, v3

    move-object/from16 v6, p1

    move-object/from16 v11, p6

    invoke-virtual/range {v6 .. v11}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 902
    .end local v4    # "width":I
    goto :goto_0

    .line 903
    :cond_0
    int-to-float v12, v0

    int-to-float v13, v1

    int-to-float v14, v2

    int-to-float v15, v3

    move-object/from16 v11, p1

    move-object/from16 v16, p6

    invoke-virtual/range {v11 .. v16}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 905
    :goto_0
    return-void
.end method

.method private static fits([IIII)Z
    .locals 3
    .param p0, "a"    # [I
    .param p1, "value"    # I
    .param p2, "start"    # I
    .param p3, "end"    # I

    .line 715
    array-length v0, p0

    const/4 v1, 0x0

    if-le p3, v0, :cond_0

    .line 716
    return v1

    .line 718
    :cond_0
    move v0, p2

    .local v0, "i":I
    :goto_0
    if-ge v0, p3, :cond_2

    .line 719
    aget v2, p0, v0

    if-le v2, p1, :cond_1

    .line 720
    return v1

    .line 718
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 723
    .end local v0    # "i":I
    :cond_2
    const/4 v0, 0x1

    return v0
.end method

.method static getAlignment(IZ)Landroid/widget/GridLayout$Alignment;
    .locals 5
    .param p0, "gravity"    # I
    .param p1, "horizontal"    # Z

    .line 643
    const/4 v0, 0x7

    if-eqz p1, :cond_0

    move v1, v0

    goto :goto_0

    :cond_0
    const/16 v1, 0x70

    .line 644
    .local v1, "mask":I
    :goto_0
    if-eqz p1, :cond_1

    const/4 v2, 0x0

    goto :goto_1

    :cond_1
    const/4 v2, 0x4

    .line 645
    .local v2, "shift":I
    :goto_1
    and-int v3, p0, v1

    shr-int/2addr v3, v2

    .line 646
    .local v3, "flags":I
    const/4 v4, 0x1

    if-eq v3, v4, :cond_9

    const/4 v4, 0x3

    if-eq v3, v4, :cond_7

    const/4 v4, 0x5

    if-eq v3, v4, :cond_5

    if-eq v3, v0, :cond_4

    const v0, 0x800003

    if-eq v3, v0, :cond_3

    const v0, 0x800005

    if-eq v3, v0, :cond_2

    .line 660
    sget-object v0, Landroid/widget/GridLayout;->UNDEFINED_ALIGNMENT:Landroid/widget/GridLayout$Alignment;

    return-object v0

    .line 658
    :cond_2
    sget-object v0, Landroid/widget/GridLayout;->END:Landroid/widget/GridLayout$Alignment;

    return-object v0

    .line 656
    :cond_3
    sget-object v0, Landroid/widget/GridLayout;->START:Landroid/widget/GridLayout$Alignment;

    return-object v0

    .line 652
    :cond_4
    sget-object v0, Landroid/widget/GridLayout;->FILL:Landroid/widget/GridLayout$Alignment;

    return-object v0

    .line 650
    :cond_5
    if-eqz p1, :cond_6

    sget-object v0, Landroid/widget/GridLayout;->RIGHT:Landroid/widget/GridLayout$Alignment;

    goto :goto_2

    :cond_6
    sget-object v0, Landroid/widget/GridLayout;->BOTTOM:Landroid/widget/GridLayout$Alignment;

    :goto_2
    return-object v0

    .line 648
    :cond_7
    if-eqz p1, :cond_8

    sget-object v0, Landroid/widget/GridLayout;->LEFT:Landroid/widget/GridLayout$Alignment;

    goto :goto_3

    :cond_8
    sget-object v0, Landroid/widget/GridLayout;->TOP:Landroid/widget/GridLayout$Alignment;

    :goto_3
    return-object v0

    .line 654
    :cond_9
    sget-object v0, Landroid/widget/GridLayout;->CENTER:Landroid/widget/GridLayout$Alignment;

    return-object v0
.end method

.method private getDefaultMargin(Landroid/view/View;Landroid/widget/GridLayout$LayoutParams;ZZ)I
    .locals 8
    .param p1, "c"    # Landroid/view/View;
    .param p2, "p"    # Landroid/widget/GridLayout$LayoutParams;
    .param p3, "horizontal"    # Z
    .param p4, "leading"    # Z

    .line 677
    iget-boolean v0, p0, Landroid/widget/GridLayout;->mUseDefaultMargins:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 678
    return v1

    .line 680
    :cond_0
    if-eqz p3, :cond_1

    iget-object v0, p2, Landroid/widget/GridLayout$LayoutParams;->columnSpec:Landroid/widget/GridLayout$Spec;

    goto :goto_0

    :cond_1
    iget-object v0, p2, Landroid/widget/GridLayout$LayoutParams;->rowSpec:Landroid/widget/GridLayout$Spec;

    .line 681
    .local v0, "spec":Landroid/widget/GridLayout$Spec;
    :goto_0
    if-eqz p3, :cond_2

    iget-object v2, p0, Landroid/widget/GridLayout;->mHorizontalAxis:Landroid/widget/GridLayout$Axis;

    goto :goto_1

    :cond_2
    iget-object v2, p0, Landroid/widget/GridLayout;->mVerticalAxis:Landroid/widget/GridLayout$Axis;

    .line 682
    .local v2, "axis":Landroid/widget/GridLayout$Axis;
    :goto_1
    iget-object v3, v0, Landroid/widget/GridLayout$Spec;->span:Landroid/widget/GridLayout$Interval;

    .line 683
    .local v3, "span":Landroid/widget/GridLayout$Interval;
    const/4 v4, 0x1

    if-eqz p3, :cond_4

    invoke-virtual {p0}, Landroid/widget/GridLayout;->isLayoutRtl()Z

    move-result v5

    if-eqz v5, :cond_4

    if-nez p4, :cond_3

    move v5, v4

    goto :goto_2

    :cond_3
    move v5, v1

    goto :goto_2

    :cond_4
    move v5, p4

    .line 684
    .local v5, "leading1":Z
    :goto_2
    if-eqz v5, :cond_6

    iget v6, v3, Landroid/widget/GridLayout$Interval;->min:I

    if-nez v6, :cond_5

    :goto_3
    move v1, v4

    goto :goto_4

    :cond_5
    goto :goto_4

    :cond_6
    iget v6, v3, Landroid/widget/GridLayout$Interval;->max:I

    invoke-virtual {v2}, Landroid/widget/GridLayout$Axis;->getCount()I

    move-result v7

    if-ne v6, v7, :cond_5

    goto :goto_3

    .line 686
    .local v1, "isAtEdge":Z
    :goto_4
    invoke-direct {p0, p1, v1, p3, p4}, Landroid/widget/GridLayout;->getDefaultMargin(Landroid/view/View;ZZZ)I

    move-result v4

    return v4
.end method

.method private getDefaultMargin(Landroid/view/View;ZZ)I
    .locals 2
    .param p1, "c"    # Landroid/view/View;
    .param p2, "horizontal"    # Z
    .param p3, "leading"    # Z

    .line 666
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-class v1, Landroid/widget/Space;

    if-ne v0, v1, :cond_0

    .line 667
    const/4 v0, 0x0

    return v0

    .line 669
    :cond_0
    iget v0, p0, Landroid/widget/GridLayout;->mDefaultGap:I

    div-int/lit8 v0, v0, 0x2

    return v0
.end method

.method private getDefaultMargin(Landroid/view/View;ZZZ)I
    .locals 1
    .param p1, "c"    # Landroid/view/View;
    .param p2, "isAtEdge"    # Z
    .param p3, "horizontal"    # Z
    .param p4, "leading"    # Z

    .line 673
    invoke-direct {p0, p1, p3, p4}, Landroid/widget/GridLayout;->getDefaultMargin(Landroid/view/View;ZZ)I

    move-result v0

    return v0
.end method

.method private getMargin(Landroid/view/View;ZZ)I
    .locals 6
    .param p1, "view"    # Landroid/view/View;
    .param p2, "horizontal"    # Z
    .param p3, "leading"    # Z

    .line 698
    iget v0, p0, Landroid/widget/GridLayout;->mAlignmentMode:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 699
    invoke-virtual {p0, p1, p2, p3}, Landroid/widget/GridLayout;->getMargin1(Landroid/view/View;ZZ)I

    move-result v0

    return v0

    .line 701
    :cond_0
    if-eqz p2, :cond_1

    iget-object v0, p0, Landroid/widget/GridLayout;->mHorizontalAxis:Landroid/widget/GridLayout$Axis;

    goto :goto_0

    :cond_1
    iget-object v0, p0, Landroid/widget/GridLayout;->mVerticalAxis:Landroid/widget/GridLayout$Axis;

    .line 702
    .local v0, "axis":Landroid/widget/GridLayout$Axis;
    :goto_0
    if-eqz p3, :cond_2

    invoke-virtual {v0}, Landroid/widget/GridLayout$Axis;->getLeadingMargins()[I

    move-result-object v1

    goto :goto_1

    :cond_2
    invoke-virtual {v0}, Landroid/widget/GridLayout$Axis;->getTrailingMargins()[I

    move-result-object v1

    .line 703
    .local v1, "margins":[I
    :goto_1
    invoke-virtual {p0, p1}, Landroid/widget/GridLayout;->getLayoutParams(Landroid/view/View;)Landroid/widget/GridLayout$LayoutParams;

    move-result-object v2

    .line 704
    .local v2, "lp":Landroid/widget/GridLayout$LayoutParams;
    if-eqz p2, :cond_3

    iget-object v3, v2, Landroid/widget/GridLayout$LayoutParams;->columnSpec:Landroid/widget/GridLayout$Spec;

    goto :goto_2

    :cond_3
    iget-object v3, v2, Landroid/widget/GridLayout$LayoutParams;->rowSpec:Landroid/widget/GridLayout$Spec;

    .line 705
    .local v3, "spec":Landroid/widget/GridLayout$Spec;
    :goto_2
    if-eqz p3, :cond_4

    iget-object v4, v3, Landroid/widget/GridLayout$Spec;->span:Landroid/widget/GridLayout$Interval;

    iget v4, v4, Landroid/widget/GridLayout$Interval;->min:I

    goto :goto_3

    :cond_4
    iget-object v4, v3, Landroid/widget/GridLayout$Spec;->span:Landroid/widget/GridLayout$Interval;

    iget v4, v4, Landroid/widget/GridLayout$Interval;->max:I

    .line 706
    .local v4, "index":I
    :goto_3
    aget v5, v1, v4

    return v5
.end method

.method private getMeasurement(Landroid/view/View;Z)I
    .locals 1
    .param p1, "c"    # Landroid/view/View;
    .param p2, "horizontal"    # Z

    .line 1092
    if-eqz p2, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    :goto_0
    return v0
.end method

.method private getTotalMargin(Landroid/view/View;Z)I
    .locals 2
    .param p1, "child"    # Landroid/view/View;
    .param p2, "horizontal"    # Z

    .line 711
    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, v0}, Landroid/widget/GridLayout;->getMargin(Landroid/view/View;ZZ)I

    move-result v0

    const/4 v1, 0x0

    invoke-direct {p0, p1, p2, v1}, Landroid/widget/GridLayout;->getMargin(Landroid/view/View;ZZ)I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method private static handleInvalidParams(Ljava/lang/String;)V
    .locals 3
    .param p0, "msg"    # Ljava/lang/String;

    .line 838
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ". "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private invalidateStructure()V
    .locals 1

    .line 805
    const/4 v0, 0x0

    iput v0, p0, Landroid/widget/GridLayout;->mLastLayoutParamsHashCode:I

    .line 806
    iget-object v0, p0, Landroid/widget/GridLayout;->mHorizontalAxis:Landroid/widget/GridLayout$Axis;

    invoke-virtual {v0}, Landroid/widget/GridLayout$Axis;->invalidateStructure()V

    .line 807
    iget-object v0, p0, Landroid/widget/GridLayout;->mVerticalAxis:Landroid/widget/GridLayout$Axis;

    invoke-virtual {v0}, Landroid/widget/GridLayout$Axis;->invalidateStructure()V

    .line 809
    invoke-direct {p0}, Landroid/widget/GridLayout;->invalidateValues()V

    .line 810
    return-void
.end method

.method private invalidateValues()V
    .locals 1

    .line 815
    iget-object v0, p0, Landroid/widget/GridLayout;->mHorizontalAxis:Landroid/widget/GridLayout$Axis;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/GridLayout;->mVerticalAxis:Landroid/widget/GridLayout$Axis;

    if-eqz v0, :cond_0

    .line 816
    iget-object v0, p0, Landroid/widget/GridLayout;->mHorizontalAxis:Landroid/widget/GridLayout$Axis;

    invoke-virtual {v0}, Landroid/widget/GridLayout$Axis;->invalidateValues()V

    .line 817
    iget-object v0, p0, Landroid/widget/GridLayout;->mVerticalAxis:Landroid/widget/GridLayout$Axis;

    invoke-virtual {v0}, Landroid/widget/GridLayout$Axis;->invalidateValues()V

    .line 819
    :cond_0
    return-void
.end method

.method static max2([II)I
    .locals 4
    .param p0, "a"    # [I
    .param p1, "valueIfEmpty"    # I

    .line 627
    move v0, p1

    .line 628
    .local v0, "result":I
    const/4 v1, 0x0

    .local v1, "i":I
    array-length v2, p0

    .local v2, "N":I
    :goto_0
    if-ge v1, v2, :cond_0

    .line 629
    aget v3, p0, v1

    invoke-static {v0, v3}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 628
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 631
    .end local v1    # "i":I
    .end local v2    # "N":I
    :cond_0
    return v0
.end method

.method private measureChildWithMargins2(Landroid/view/View;IIII)V
    .locals 2
    .param p1, "child"    # Landroid/view/View;
    .param p2, "parentWidthSpec"    # I
    .param p3, "parentHeightSpec"    # I
    .param p4, "childWidth"    # I
    .param p5, "childHeight"    # I

    .line 1014
    nop

    .line 1015
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Landroid/widget/GridLayout;->getTotalMargin(Landroid/view/View;Z)I

    move-result v0

    .line 1014
    invoke-static {p2, v0, p4}, Landroid/widget/GridLayout;->getChildMeasureSpec(III)I

    move-result v0

    .line 1016
    .local v0, "childWidthSpec":I
    nop

    .line 1017
    const/4 v1, 0x0

    invoke-direct {p0, p1, v1}, Landroid/widget/GridLayout;->getTotalMargin(Landroid/view/View;Z)I

    move-result v1

    .line 1016
    invoke-static {p3, v1, p5}, Landroid/widget/GridLayout;->getChildMeasureSpec(III)I

    move-result v1

    .line 1018
    .local v1, "childHeightSpec":I
    invoke-virtual {p1, v0, v1}, Landroid/view/View;->measure(II)V

    .line 1019
    return-void
.end method

.method private measureChildrenWithMargins(IIZ)V
    .locals 18
    .param p1, "widthSpec"    # I
    .param p2, "heightSpec"    # I
    .param p3, "firstPass"    # Z

    move-object/from16 v6, p0

    .line 1023
    const/4 v0, 0x0

    .local v0, "i":I
    invoke-virtual/range {p0 .. p0}, Landroid/widget/GridLayout;->getChildCount()I

    move-result v1

    move v7, v0

    .end local v0    # "i":I
    .local v1, "N":I
    .local v7, "i":I
    :goto_0
    move v8, v1

    .end local v1    # "N":I
    .local v8, "N":I
    if-ge v7, v8, :cond_7

    .line 1024
    invoke-virtual {v6, v7}, Landroid/widget/GridLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v9

    .line 1025
    .local v9, "c":Landroid/view/View;
    invoke-virtual {v9}, Landroid/view/View;->getVisibility()I

    move-result v0

    const/16 v1, 0x8

    if-ne v0, v1, :cond_0

    .end local v9    # "c":Landroid/view/View;
    goto/16 :goto_4

    .line 1026
    .restart local v9    # "c":Landroid/view/View;
    :cond_0
    invoke-virtual {v6, v9}, Landroid/widget/GridLayout;->getLayoutParams(Landroid/view/View;)Landroid/widget/GridLayout$LayoutParams;

    move-result-object v10

    .line 1027
    .local v10, "lp":Landroid/widget/GridLayout$LayoutParams;
    if-eqz p3, :cond_1

    .line 1028
    iget v4, v10, Landroid/widget/GridLayout$LayoutParams;->width:I

    iget v5, v10, Landroid/widget/GridLayout$LayoutParams;->height:I

    move-object v0, v6

    move-object v1, v9

    move/from16 v2, p1

    move/from16 v3, p2

    invoke-direct/range {v0 .. v5}, Landroid/widget/GridLayout;->measureChildWithMargins2(Landroid/view/View;IIII)V

    goto :goto_4

    .line 1030
    :cond_1
    iget v0, v6, Landroid/widget/GridLayout;->mOrientation:I

    if-nez v0, :cond_2

    const/4 v0, 0x1

    goto :goto_1

    :cond_2
    const/4 v0, 0x0

    :goto_1
    move v11, v0

    .line 1031
    .local v11, "horizontal":Z
    if-eqz v11, :cond_3

    iget-object v0, v10, Landroid/widget/GridLayout$LayoutParams;->columnSpec:Landroid/widget/GridLayout$Spec;

    goto :goto_2

    :cond_3
    iget-object v0, v10, Landroid/widget/GridLayout$LayoutParams;->rowSpec:Landroid/widget/GridLayout$Spec;

    :goto_2
    move-object v12, v0

    .line 1032
    .local v12, "spec":Landroid/widget/GridLayout$Spec;
    invoke-static {v12, v11}, Landroid/widget/GridLayout$Spec;->access$100(Landroid/widget/GridLayout$Spec;Z)Landroid/widget/GridLayout$Alignment;

    move-result-object v0

    sget-object v1, Landroid/widget/GridLayout;->FILL:Landroid/widget/GridLayout$Alignment;

    if-ne v0, v1, :cond_6

    .line 1033
    iget-object v13, v12, Landroid/widget/GridLayout$Spec;->span:Landroid/widget/GridLayout$Interval;

    .line 1034
    .local v13, "span":Landroid/widget/GridLayout$Interval;
    if-eqz v11, :cond_4

    iget-object v0, v6, Landroid/widget/GridLayout;->mHorizontalAxis:Landroid/widget/GridLayout$Axis;

    goto :goto_3

    :cond_4
    iget-object v0, v6, Landroid/widget/GridLayout;->mVerticalAxis:Landroid/widget/GridLayout$Axis;

    :goto_3
    move-object v14, v0

    .line 1035
    .local v14, "axis":Landroid/widget/GridLayout$Axis;
    invoke-virtual {v14}, Landroid/widget/GridLayout$Axis;->getLocations()[I

    move-result-object v15

    .line 1036
    .local v15, "locations":[I
    iget v0, v13, Landroid/widget/GridLayout$Interval;->max:I

    aget v0, v15, v0

    iget v1, v13, Landroid/widget/GridLayout$Interval;->min:I

    aget v1, v15, v1

    sub-int v16, v0, v1

    .line 1037
    .local v16, "cellSize":I
    invoke-direct {v6, v9, v11}, Landroid/widget/GridLayout;->getTotalMargin(Landroid/view/View;Z)I

    move-result v0

    sub-int v17, v16, v0

    .line 1038
    .local v17, "viewSize":I
    if-eqz v11, :cond_5

    .line 1039
    iget v5, v10, Landroid/widget/GridLayout$LayoutParams;->height:I

    move-object v0, v6

    move-object v1, v9

    move/from16 v2, p1

    move/from16 v3, p2

    move/from16 v4, v17

    invoke-direct/range {v0 .. v5}, Landroid/widget/GridLayout;->measureChildWithMargins2(Landroid/view/View;IIII)V

    goto :goto_4

    .line 1041
    :cond_5
    iget v4, v10, Landroid/widget/GridLayout$LayoutParams;->width:I

    move-object v0, v6

    move-object v1, v9

    move/from16 v2, p1

    move/from16 v3, p2

    move/from16 v5, v17

    invoke-direct/range {v0 .. v5}, Landroid/widget/GridLayout;->measureChildWithMargins2(Landroid/view/View;IIII)V

    .line 1023
    .end local v9    # "c":Landroid/view/View;
    .end local v10    # "lp":Landroid/widget/GridLayout$LayoutParams;
    .end local v11    # "horizontal":Z
    .end local v12    # "spec":Landroid/widget/GridLayout$Spec;
    .end local v13    # "span":Landroid/widget/GridLayout$Interval;
    .end local v14    # "axis":Landroid/widget/GridLayout$Axis;
    .end local v15    # "locations":[I
    .end local v16    # "cellSize":I
    .end local v17    # "viewSize":I
    :cond_6
    :goto_4
    add-int/lit8 v7, v7, 0x1

    move v1, v8

    goto :goto_0

    .line 1046
    .end local v7    # "i":I
    .end local v8    # "N":I
    :cond_7
    return-void
.end method

.method private static procrusteanFill([IIII)V
    .locals 3
    .param p0, "a"    # [I
    .param p1, "start"    # I
    .param p2, "end"    # I
    .param p3, "value"    # I

    .line 727
    array-length v0, p0

    .line 728
    .local v0, "length":I
    invoke-static {p1, v0}, Ljava/lang/Math;->min(II)I

    move-result v1

    invoke-static {p2, v0}, Ljava/lang/Math;->min(II)I

    move-result v2

    invoke-static {p0, v1, v2, p3}, Ljava/util/Arrays;->fill([IIII)V

    .line 729
    return-void
.end method

.method private static setCellGroup(Landroid/widget/GridLayout$LayoutParams;IIII)V
    .locals 2
    .param p0, "lp"    # Landroid/widget/GridLayout$LayoutParams;
    .param p1, "row"    # I
    .param p2, "rowSpan"    # I
    .param p3, "col"    # I
    .param p4, "colSpan"    # I

    .line 732
    new-instance v0, Landroid/widget/GridLayout$Interval;

    add-int v1, p1, p2

    invoke-direct {v0, p1, v1}, Landroid/widget/GridLayout$Interval;-><init>(II)V

    invoke-virtual {p0, v0}, Landroid/widget/GridLayout$LayoutParams;->setRowSpecSpan(Landroid/widget/GridLayout$Interval;)V

    .line 733
    new-instance v0, Landroid/widget/GridLayout$Interval;

    add-int v1, p3, p4

    invoke-direct {v0, p3, v1}, Landroid/widget/GridLayout$Interval;-><init>(II)V

    invoke-virtual {p0, v0}, Landroid/widget/GridLayout$LayoutParams;->setColumnSpecSpan(Landroid/widget/GridLayout$Interval;)V

    .line 734
    return-void
.end method

.method public static spec(I)Landroid/widget/GridLayout$Spec;
    .locals 1
    .param p0, "start"    # I

    .line 2736
    const/4 v0, 0x1

    invoke-static {p0, v0}, Landroid/widget/GridLayout;->spec(II)Landroid/widget/GridLayout$Spec;

    move-result-object v0

    return-object v0
.end method

.method public static spec(IF)Landroid/widget/GridLayout$Spec;
    .locals 1
    .param p0, "start"    # I
    .param p1, "weight"    # F

    .line 2674
    const/4 v0, 0x1

    invoke-static {p0, v0, p1}, Landroid/widget/GridLayout;->spec(IIF)Landroid/widget/GridLayout$Spec;

    move-result-object v0

    return-object v0
.end method

.method public static spec(II)Landroid/widget/GridLayout$Spec;
    .locals 1
    .param p0, "start"    # I
    .param p1, "size"    # I

    .line 2720
    sget-object v0, Landroid/widget/GridLayout;->UNDEFINED_ALIGNMENT:Landroid/widget/GridLayout$Alignment;

    invoke-static {p0, p1, v0}, Landroid/widget/GridLayout;->spec(IILandroid/widget/GridLayout$Alignment;)Landroid/widget/GridLayout$Spec;

    move-result-object v0

    return-object v0
.end method

.method public static spec(IIF)Landroid/widget/GridLayout$Spec;
    .locals 1
    .param p0, "start"    # I
    .param p1, "size"    # I
    .param p2, "weight"    # F

    .line 2664
    sget-object v0, Landroid/widget/GridLayout;->UNDEFINED_ALIGNMENT:Landroid/widget/GridLayout$Alignment;

    invoke-static {p0, p1, v0, p2}, Landroid/widget/GridLayout;->spec(IILandroid/widget/GridLayout$Alignment;F)Landroid/widget/GridLayout$Spec;

    move-result-object v0

    return-object v0
.end method

.method public static spec(IILandroid/widget/GridLayout$Alignment;)Landroid/widget/GridLayout$Spec;
    .locals 1
    .param p0, "start"    # I
    .param p1, "size"    # I
    .param p2, "alignment"    # Landroid/widget/GridLayout$Alignment;

    .line 2685
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0}, Landroid/widget/GridLayout;->spec(IILandroid/widget/GridLayout$Alignment;F)Landroid/widget/GridLayout$Spec;

    move-result-object v0

    return-object v0
.end method

.method public static spec(IILandroid/widget/GridLayout$Alignment;F)Landroid/widget/GridLayout$Spec;
    .locals 8
    .param p0, "start"    # I
    .param p1, "size"    # I
    .param p2, "alignment"    # Landroid/widget/GridLayout$Alignment;
    .param p3, "weight"    # F

    .line 2640
    new-instance v7, Landroid/widget/GridLayout$Spec;

    const/high16 v0, -0x80000000

    if-eq p0, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    move v1, v0

    goto :goto_1

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :goto_1
    const/4 v6, 0x0

    move-object v0, v7

    move v2, p0

    move v3, p1

    move-object v4, p2

    move v5, p3

    invoke-direct/range {v0 .. v6}, Landroid/widget/GridLayout$Spec;-><init>(ZIILandroid/widget/GridLayout$Alignment;FLandroid/widget/GridLayout$1;)V

    return-object v7
.end method

.method public static spec(ILandroid/widget/GridLayout$Alignment;)Landroid/widget/GridLayout$Spec;
    .locals 1
    .param p0, "start"    # I
    .param p1, "alignment"    # Landroid/widget/GridLayout$Alignment;

    .line 2703
    const/4 v0, 0x1

    invoke-static {p0, v0, p1}, Landroid/widget/GridLayout;->spec(IILandroid/widget/GridLayout$Alignment;)Landroid/widget/GridLayout$Spec;

    move-result-object v0

    return-object v0
.end method

.method public static spec(ILandroid/widget/GridLayout$Alignment;F)Landroid/widget/GridLayout$Spec;
    .locals 1
    .param p0, "start"    # I
    .param p1, "alignment"    # Landroid/widget/GridLayout$Alignment;
    .param p2, "weight"    # F

    .line 2651
    const/4 v0, 0x1

    invoke-static {p0, v0, p1, p2}, Landroid/widget/GridLayout;->spec(IILandroid/widget/GridLayout$Alignment;F)Landroid/widget/GridLayout$Spec;

    move-result-object v0

    return-object v0
.end method

.method private validateLayoutParams()V
    .locals 19

    .line 748
    move-object/from16 v0, p0

    iget v1, v0, Landroid/widget/GridLayout;->mOrientation:I

    const/4 v2, 0x0

    if-nez v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    move v1, v2

    .line 749
    .local v1, "horizontal":Z
    :goto_0
    if-eqz v1, :cond_1

    iget-object v3, v0, Landroid/widget/GridLayout;->mHorizontalAxis:Landroid/widget/GridLayout$Axis;

    goto :goto_1

    :cond_1
    iget-object v3, v0, Landroid/widget/GridLayout;->mVerticalAxis:Landroid/widget/GridLayout$Axis;

    .line 750
    .local v3, "axis":Landroid/widget/GridLayout$Axis;
    :goto_1
    iget v4, v3, Landroid/widget/GridLayout$Axis;->definedCount:I

    const/high16 v5, -0x80000000

    if-eq v4, v5, :cond_2

    iget v2, v3, Landroid/widget/GridLayout$Axis;->definedCount:I

    nop

    .line 752
    .local v2, "count":I
    :cond_2
    const/4 v4, 0x0

    .line 753
    .local v4, "major":I
    const/4 v5, 0x0

    .line 754
    .local v5, "minor":I
    new-array v6, v2, [I

    .line 756
    .local v6, "maxSizes":[I
    const/4 v7, 0x0

    .local v7, "i":I
    invoke-virtual/range {p0 .. p0}, Landroid/widget/GridLayout;->getChildCount()I

    move-result v8

    .local v8, "N":I
    :goto_2
    if-ge v7, v8, :cond_e

    .line 757
    invoke-virtual {v0, v7}, Landroid/widget/GridLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v9

    invoke-virtual {v9}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v9

    check-cast v9, Landroid/widget/GridLayout$LayoutParams;

    .line 759
    .local v9, "lp":Landroid/widget/GridLayout$LayoutParams;
    if-eqz v1, :cond_3

    iget-object v10, v9, Landroid/widget/GridLayout$LayoutParams;->rowSpec:Landroid/widget/GridLayout$Spec;

    goto :goto_3

    :cond_3
    iget-object v10, v9, Landroid/widget/GridLayout$LayoutParams;->columnSpec:Landroid/widget/GridLayout$Spec;

    .line 760
    .local v10, "majorSpec":Landroid/widget/GridLayout$Spec;
    :goto_3
    iget-object v11, v10, Landroid/widget/GridLayout$Spec;->span:Landroid/widget/GridLayout$Interval;

    .line 761
    .local v11, "majorRange":Landroid/widget/GridLayout$Interval;
    iget-boolean v12, v10, Landroid/widget/GridLayout$Spec;->startDefined:Z

    .line 762
    .local v12, "majorWasDefined":Z
    invoke-virtual {v11}, Landroid/widget/GridLayout$Interval;->size()I

    move-result v13

    .line 763
    .local v13, "majorSpan":I
    if-eqz v12, :cond_4

    .line 764
    iget v4, v11, Landroid/widget/GridLayout$Interval;->min:I

    .line 767
    :cond_4
    if-eqz v1, :cond_5

    iget-object v14, v9, Landroid/widget/GridLayout$LayoutParams;->columnSpec:Landroid/widget/GridLayout$Spec;

    goto :goto_4

    :cond_5
    iget-object v14, v9, Landroid/widget/GridLayout$LayoutParams;->rowSpec:Landroid/widget/GridLayout$Spec;

    .line 768
    .local v14, "minorSpec":Landroid/widget/GridLayout$Spec;
    :goto_4
    iget-object v15, v14, Landroid/widget/GridLayout$Spec;->span:Landroid/widget/GridLayout$Interval;

    .line 769
    .local v15, "minorRange":Landroid/widget/GridLayout$Interval;
    iget-boolean v0, v14, Landroid/widget/GridLayout$Spec;->startDefined:Z

    .line 770
    .local v0, "minorWasDefined":Z
    move-object/from16 v16, v3

    invoke-static {v15, v0, v2}, Landroid/widget/GridLayout;->clip(Landroid/widget/GridLayout$Interval;ZI)I

    move-result v3

    .line 771
    .local v3, "minorSpan":I
    .local v16, "axis":Landroid/widget/GridLayout$Axis;
    if-eqz v0, :cond_6

    .line 772
    iget v5, v15, Landroid/widget/GridLayout$Interval;->min:I

    .line 775
    :cond_6
    if-eqz v2, :cond_c

    .line 777
    if-eqz v12, :cond_8

    if-nez v0, :cond_7

    goto :goto_5

    .line 791
    :cond_7
    move/from16 v17, v8

    goto :goto_7

    .line 778
    :cond_8
    :goto_5
    move/from16 v17, v8

    add-int v8, v5, v3

    .end local v8    # "N":I
    .local v17, "N":I
    invoke-static {v6, v4, v5, v8}, Landroid/widget/GridLayout;->fits([IIII)Z

    move-result v8

    if-nez v8, :cond_b

    .line 779
    if-eqz v0, :cond_9

    .line 780
    add-int/lit8 v4, v4, 0x1

    .line 778
    .end local v17    # "N":I
    .restart local v8    # "N":I
    :goto_6
    move/from16 v8, v17

    goto :goto_5

    .line 782
    .end local v8    # "N":I
    .restart local v17    # "N":I
    :cond_9
    add-int v8, v5, v3

    if-gt v8, v2, :cond_a

    .line 783
    add-int/lit8 v5, v5, 0x1

    goto :goto_6

    .line 785
    :cond_a
    const/4 v5, 0x0

    .line 786
    add-int/lit8 v4, v4, 0x1

    goto :goto_6

    .line 791
    :cond_b
    :goto_7
    add-int v8, v5, v3

    move/from16 v18, v0

    add-int v0, v4, v13

    .end local v0    # "minorWasDefined":Z
    .local v18, "minorWasDefined":Z
    invoke-static {v6, v5, v8, v0}, Landroid/widget/GridLayout;->procrusteanFill([IIII)V

    goto :goto_8

    .line 794
    .end local v17    # "N":I
    .end local v18    # "minorWasDefined":Z
    .restart local v0    # "minorWasDefined":Z
    .restart local v8    # "N":I
    :cond_c
    move/from16 v18, v0

    move/from16 v17, v8

    .end local v0    # "minorWasDefined":Z
    .end local v8    # "N":I
    .restart local v17    # "N":I
    .restart local v18    # "minorWasDefined":Z
    :goto_8
    if-eqz v1, :cond_d

    .line 795
    invoke-static {v9, v4, v13, v5, v3}, Landroid/widget/GridLayout;->setCellGroup(Landroid/widget/GridLayout$LayoutParams;IIII)V

    goto :goto_9

    .line 797
    :cond_d
    invoke-static {v9, v5, v3, v4, v13}, Landroid/widget/GridLayout;->setCellGroup(Landroid/widget/GridLayout$LayoutParams;IIII)V

    .line 800
    :goto_9
    add-int/2addr v5, v3

    .line 756
    .end local v3    # "minorSpan":I
    .end local v9    # "lp":Landroid/widget/GridLayout$LayoutParams;
    .end local v10    # "majorSpec":Landroid/widget/GridLayout$Spec;
    .end local v11    # "majorRange":Landroid/widget/GridLayout$Interval;
    .end local v12    # "majorWasDefined":Z
    .end local v13    # "majorSpan":I
    .end local v14    # "minorSpec":Landroid/widget/GridLayout$Spec;
    .end local v15    # "minorRange":Landroid/widget/GridLayout$Interval;
    .end local v18    # "minorWasDefined":Z
    add-int/lit8 v7, v7, 0x1

    move-object/from16 v3, v16

    move/from16 v8, v17

    move-object/from16 v0, p0

    goto :goto_2

    .line 802
    .end local v7    # "i":I
    .end local v16    # "axis":Landroid/widget/GridLayout$Axis;
    .end local v17    # "N":I
    .local v3, "axis":Landroid/widget/GridLayout$Axis;
    :cond_e
    move-object/from16 v16, v3

    .end local v3    # "axis":Landroid/widget/GridLayout$Axis;
    .restart local v16    # "axis":Landroid/widget/GridLayout$Axis;
    return-void
.end method


# virtual methods
.method protected checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z
    .locals 3
    .param p1, "p"    # Landroid/view/ViewGroup$LayoutParams;

    .line 863
    instance-of v0, p1, Landroid/widget/GridLayout$LayoutParams;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 864
    return v1

    .line 866
    :cond_0
    move-object v0, p1

    check-cast v0, Landroid/widget/GridLayout$LayoutParams;

    .line 868
    .local v0, "lp":Landroid/widget/GridLayout$LayoutParams;
    const/4 v2, 0x1

    invoke-direct {p0, v0, v2}, Landroid/widget/GridLayout;->checkLayoutParams(Landroid/widget/GridLayout$LayoutParams;Z)V

    .line 869
    invoke-direct {p0, v0, v1}, Landroid/widget/GridLayout;->checkLayoutParams(Landroid/widget/GridLayout$LayoutParams;Z)V

    .line 871
    return v2
.end method

.method protected bridge synthetic generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    .locals 1

    .line 169
    invoke-virtual {p0}, Landroid/widget/GridLayout;->generateDefaultLayoutParams()Landroid/widget/GridLayout$LayoutParams;

    move-result-object v0

    return-object v0
.end method

.method protected generateDefaultLayoutParams()Landroid/widget/GridLayout$LayoutParams;
    .locals 1

    .line 876
    new-instance v0, Landroid/widget/GridLayout$LayoutParams;

    invoke-direct {v0}, Landroid/widget/GridLayout$LayoutParams;-><init>()V

    return-object v0
.end method

.method public bridge synthetic generateLayoutParams(Landroid/util/AttributeSet;)Landroid/view/ViewGroup$LayoutParams;
    .locals 0

    .line 169
    invoke-virtual {p0, p1}, Landroid/widget/GridLayout;->generateLayoutParams(Landroid/util/AttributeSet;)Landroid/widget/GridLayout$LayoutParams;

    move-result-object p1

    return-object p1
.end method

.method protected bridge synthetic generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;
    .locals 0

    .line 169
    invoke-virtual {p0, p1}, Landroid/widget/GridLayout;->generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/widget/GridLayout$LayoutParams;

    move-result-object p1

    return-object p1
.end method

.method public generateLayoutParams(Landroid/util/AttributeSet;)Landroid/widget/GridLayout$LayoutParams;
    .locals 2
    .param p1, "attrs"    # Landroid/util/AttributeSet;

    .line 881
    new-instance v0, Landroid/widget/GridLayout$LayoutParams;

    invoke-virtual {p0}, Landroid/widget/GridLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Landroid/widget/GridLayout$LayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-object v0
.end method

.method protected generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/widget/GridLayout$LayoutParams;
    .locals 2
    .param p1, "lp"    # Landroid/view/ViewGroup$LayoutParams;

    .line 886
    sget-boolean v0, Landroid/widget/GridLayout;->sPreserveMarginParamsInLayoutParamConversion:Z

    if-eqz v0, :cond_1

    .line 887
    instance-of v0, p1, Landroid/widget/GridLayout$LayoutParams;

    if-eqz v0, :cond_0

    .line 888
    new-instance v0, Landroid/widget/GridLayout$LayoutParams;

    move-object v1, p1

    check-cast v1, Landroid/widget/GridLayout$LayoutParams;

    invoke-direct {v0, v1}, Landroid/widget/GridLayout$LayoutParams;-><init>(Landroid/widget/GridLayout$LayoutParams;)V

    return-object v0

    .line 889
    :cond_0
    instance-of v0, p1, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz v0, :cond_1

    .line 890
    new-instance v0, Landroid/widget/GridLayout$LayoutParams;

    move-object v1, p1

    check-cast v1, Landroid/view/ViewGroup$MarginLayoutParams;

    invoke-direct {v0, v1}, Landroid/widget/GridLayout$LayoutParams;-><init>(Landroid/view/ViewGroup$MarginLayoutParams;)V

    return-object v0

    .line 893
    :cond_1
    new-instance v0, Landroid/widget/GridLayout$LayoutParams;

    invoke-direct {v0, p1}, Landroid/widget/GridLayout$LayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    return-object v0
.end method

.method public getAccessibilityClassName()Ljava/lang/CharSequence;
    .locals 1

    .line 1202
    const-class v0, Landroid/widget/GridLayout;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getAlignmentMode()I
    .locals 1

    .line 502
    iget v0, p0, Landroid/widget/GridLayout;->mAlignmentMode:I

    return v0
.end method

.method public getColumnCount()I
    .locals 1

    .line 423
    iget-object v0, p0, Landroid/widget/GridLayout;->mHorizontalAxis:Landroid/widget/GridLayout$Axis;

    invoke-virtual {v0}, Landroid/widget/GridLayout$Axis;->getCount()I

    move-result v0

    return v0
.end method

.method final getLayoutParams(Landroid/view/View;)Landroid/widget/GridLayout$LayoutParams;
    .locals 1
    .param p1, "c"    # Landroid/view/View;

    .line 834
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/GridLayout$LayoutParams;

    return-object v0
.end method

.method getMargin1(Landroid/view/View;ZZ)I
    .locals 3
    .param p1, "view"    # Landroid/view/View;
    .param p2, "horizontal"    # Z
    .param p3, "leading"    # Z

    .line 690
    invoke-virtual {p0, p1}, Landroid/widget/GridLayout;->getLayoutParams(Landroid/view/View;)Landroid/widget/GridLayout$LayoutParams;

    move-result-object v0

    .line 691
    .local v0, "lp":Landroid/widget/GridLayout$LayoutParams;
    if-eqz p2, :cond_1

    .line 692
    if-eqz p3, :cond_0

    iget v1, v0, Landroid/widget/GridLayout$LayoutParams;->leftMargin:I

    goto :goto_0

    :cond_0
    iget v1, v0, Landroid/widget/GridLayout$LayoutParams;->rightMargin:I

    goto :goto_0

    .line 693
    :cond_1
    if-eqz p3, :cond_2

    iget v1, v0, Landroid/widget/GridLayout$LayoutParams;->topMargin:I

    goto :goto_0

    :cond_2
    iget v1, v0, Landroid/widget/GridLayout$LayoutParams;->bottomMargin:I

    .line 694
    .local v1, "margin":I
    :goto_0
    const/high16 v2, -0x80000000

    if-ne v1, v2, :cond_3

    invoke-direct {p0, p1, v0, p2, p3}, Landroid/widget/GridLayout;->getDefaultMargin(Landroid/view/View;Landroid/widget/GridLayout$LayoutParams;ZZ)I

    move-result v2

    goto :goto_1

    :cond_3
    move v2, v1

    :goto_1
    return v2
.end method

.method final getMeasurementIncludingMargin(Landroid/view/View;Z)I
    .locals 2
    .param p1, "c"    # Landroid/view/View;
    .param p2, "horizontal"    # Z

    .line 1096
    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result v0

    const/16 v1, 0x8

    if-ne v0, v1, :cond_0

    .line 1097
    const/4 v0, 0x0

    return v0

    .line 1099
    :cond_0
    invoke-direct {p0, p1, p2}, Landroid/widget/GridLayout;->getMeasurement(Landroid/view/View;Z)I

    move-result v0

    invoke-direct {p0, p1, p2}, Landroid/widget/GridLayout;->getTotalMargin(Landroid/view/View;Z)I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public getOrientation()I
    .locals 1

    .line 330
    iget v0, p0, Landroid/widget/GridLayout;->mOrientation:I

    return v0
.end method

.method public getPrinter()Landroid/util/Printer;
    .locals 1

    .line 607
    iget-object v0, p0, Landroid/widget/GridLayout;->mPrinter:Landroid/util/Printer;

    return-object v0
.end method

.method public getRowCount()I
    .locals 1

    .line 390
    iget-object v0, p0, Landroid/widget/GridLayout;->mVerticalAxis:Landroid/widget/GridLayout$Axis;

    invoke-virtual {v0}, Landroid/widget/GridLayout$Axis;->getCount()I

    move-result v0

    return v0
.end method

.method public getUseDefaultMargins()Z
    .locals 1

    .line 454
    iget-boolean v0, p0, Landroid/widget/GridLayout;->mUseDefaultMargins:Z

    return v0
.end method

.method public isColumnOrderPreserved()Z
    .locals 1

    .line 572
    iget-object v0, p0, Landroid/widget/GridLayout;->mHorizontalAxis:Landroid/widget/GridLayout$Axis;

    invoke-virtual {v0}, Landroid/widget/GridLayout$Axis;->isOrderPreserved()Z

    move-result v0

    return v0
.end method

.method public isRowOrderPreserved()Z
    .locals 1

    .line 536
    iget-object v0, p0, Landroid/widget/GridLayout;->mVerticalAxis:Landroid/widget/GridLayout$Axis;

    invoke-virtual {v0}, Landroid/widget/GridLayout$Axis;->isOrderPreserved()Z

    move-result v0

    return v0
.end method

.method protected onChildVisibilityChanged(Landroid/view/View;II)V
    .locals 1
    .param p1, "child"    # Landroid/view/View;
    .param p2, "oldVisibility"    # I
    .param p3, "newVisibility"    # I

    .line 980
    invoke-super {p0, p1, p2, p3}, Landroid/view/ViewGroup;->onChildVisibilityChanged(Landroid/view/View;II)V

    .line 981
    const/16 v0, 0x8

    if-eq p2, v0, :cond_0

    if-ne p3, v0, :cond_1

    .line 982
    :cond_0
    invoke-direct {p0}, Landroid/widget/GridLayout;->invalidateStructure()V

    .line 984
    :cond_1
    return-void
.end method

.method protected onDebugDraw(Landroid/graphics/Canvas;)V
    .locals 19
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    move-object/from16 v7, p0

    .line 930
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    move-object v8, v0

    .line 931
    .local v8, "paint":Landroid/graphics/Paint;
    sget-object v0, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v8, v0}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 932
    const/16 v0, 0xff

    const/16 v1, 0x32

    invoke-static {v1, v0, v0, v0}, Landroid/graphics/Color;->argb(IIII)I

    move-result v0

    invoke-virtual {v8, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 934
    invoke-virtual/range {p0 .. p0}, Landroid/widget/GridLayout;->getOpticalInsets()Landroid/graphics/Insets;

    move-result-object v9

    .line 936
    .local v9, "insets":Landroid/graphics/Insets;
    invoke-virtual/range {p0 .. p0}, Landroid/widget/GridLayout;->getPaddingTop()I

    move-result v0

    iget v1, v9, Landroid/graphics/Insets;->top:I

    add-int v10, v0, v1

    .line 937
    .local v10, "top":I
    invoke-virtual/range {p0 .. p0}, Landroid/widget/GridLayout;->getPaddingLeft()I

    move-result v0

    iget v1, v9, Landroid/graphics/Insets;->left:I

    add-int v11, v0, v1

    .line 938
    .local v11, "left":I
    invoke-virtual/range {p0 .. p0}, Landroid/widget/GridLayout;->getWidth()I

    move-result v0

    invoke-virtual/range {p0 .. p0}, Landroid/widget/GridLayout;->getPaddingRight()I

    move-result v1

    sub-int/2addr v0, v1

    iget v1, v9, Landroid/graphics/Insets;->right:I

    sub-int v12, v0, v1

    .line 939
    .local v12, "right":I
    invoke-virtual/range {p0 .. p0}, Landroid/widget/GridLayout;->getHeight()I

    move-result v0

    invoke-virtual/range {p0 .. p0}, Landroid/widget/GridLayout;->getPaddingBottom()I

    move-result v1

    sub-int/2addr v0, v1

    iget v1, v9, Landroid/graphics/Insets;->bottom:I

    sub-int v13, v0, v1

    .line 941
    .local v13, "bottom":I
    iget-object v0, v7, Landroid/widget/GridLayout;->mHorizontalAxis:Landroid/widget/GridLayout$Axis;

    iget-object v14, v0, Landroid/widget/GridLayout$Axis;->locations:[I

    .line 942
    .local v14, "xs":[I
    if-eqz v14, :cond_0

    .line 943
    const/4 v0, 0x0

    .local v0, "i":I
    array-length v1, v14

    move v15, v0

    .end local v0    # "i":I
    .local v1, "length":I
    .local v15, "i":I
    :goto_0
    move v6, v1

    .end local v1    # "length":I
    .local v6, "length":I
    if-ge v15, v6, :cond_0

    .line 944
    aget v0, v14, v15

    add-int v16, v11, v0

    .line 945
    .local v16, "x":I
    move-object v0, v7

    move-object/from16 v1, p1

    move/from16 v2, v16

    move v3, v10

    move/from16 v4, v16

    move v5, v13

    move/from16 v17, v6

    move-object v6, v8

    .end local v6    # "length":I
    .local v17, "length":I
    invoke-direct/range {v0 .. v6}, Landroid/widget/GridLayout;->drawLine(Landroid/graphics/Canvas;IIIILandroid/graphics/Paint;)V

    .line 943
    .end local v16    # "x":I
    add-int/lit8 v15, v15, 0x1

    move/from16 v1, v17

    goto :goto_0

    .line 949
    .end local v15    # "i":I
    .end local v17    # "length":I
    :cond_0
    iget-object v0, v7, Landroid/widget/GridLayout;->mVerticalAxis:Landroid/widget/GridLayout$Axis;

    iget-object v15, v0, Landroid/widget/GridLayout$Axis;->locations:[I

    .line 950
    .local v15, "ys":[I
    if-eqz v15, :cond_1

    .line 951
    const/4 v0, 0x0

    .restart local v0    # "i":I
    array-length v1, v15

    move v6, v0

    .end local v0    # "i":I
    .restart local v1    # "length":I
    .local v6, "i":I
    :goto_1
    move v5, v1

    .end local v1    # "length":I
    .local v5, "length":I
    if-ge v6, v5, :cond_1

    .line 952
    aget v0, v15, v6

    add-int v16, v10, v0

    .line 953
    .local v16, "y":I
    move-object v0, v7

    move-object/from16 v1, p1

    move v2, v11

    move/from16 v3, v16

    move v4, v12

    move/from16 v17, v5

    move/from16 v5, v16

    .end local v5    # "length":I
    .restart local v17    # "length":I
    move/from16 v18, v6

    move-object v6, v8

    .end local v6    # "i":I
    .local v18, "i":I
    invoke-direct/range {v0 .. v6}, Landroid/widget/GridLayout;->drawLine(Landroid/graphics/Canvas;IIIILandroid/graphics/Paint;)V

    .line 951
    .end local v16    # "y":I
    add-int/lit8 v6, v18, 0x1

    .end local v18    # "i":I
    .restart local v6    # "i":I
    move/from16 v1, v17

    goto :goto_1

    .line 957
    .end local v6    # "i":I
    .end local v17    # "length":I
    :cond_1
    invoke-super/range {p0 .. p1}, Landroid/view/ViewGroup;->onDebugDraw(Landroid/graphics/Canvas;)V

    .line 958
    return-void
.end method

.method protected onDebugDrawMargins(Landroid/graphics/Canvas;Landroid/graphics/Paint;)V
    .locals 8
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "paint"    # Landroid/graphics/Paint;

    .line 913
    new-instance v0, Landroid/widget/GridLayout$LayoutParams;

    invoke-direct {v0}, Landroid/widget/GridLayout$LayoutParams;-><init>()V

    .line 914
    .local v0, "lp":Landroid/widget/GridLayout$LayoutParams;
    const/4 v1, 0x0

    move v2, v1

    .local v2, "i":I
    :goto_0
    invoke-virtual {p0}, Landroid/widget/GridLayout;->getChildCount()I

    move-result v3

    if-ge v2, v3, :cond_0

    .line 915
    invoke-virtual {p0, v2}, Landroid/widget/GridLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 916
    .local v3, "c":Landroid/view/View;
    nop

    .line 917
    const/4 v4, 0x1

    invoke-virtual {p0, v3, v4, v4}, Landroid/widget/GridLayout;->getMargin1(Landroid/view/View;ZZ)I

    move-result v5

    .line 918
    invoke-virtual {p0, v3, v1, v4}, Landroid/widget/GridLayout;->getMargin1(Landroid/view/View;ZZ)I

    move-result v6

    .line 919
    invoke-virtual {p0, v3, v4, v1}, Landroid/widget/GridLayout;->getMargin1(Landroid/view/View;ZZ)I

    move-result v4

    .line 920
    invoke-virtual {p0, v3, v1, v1}, Landroid/widget/GridLayout;->getMargin1(Landroid/view/View;ZZ)I

    move-result v7

    .line 916
    invoke-virtual {v0, v5, v6, v4, v7}, Landroid/widget/GridLayout$LayoutParams;->setMargins(IIII)V

    .line 921
    invoke-virtual {v0, v3, p1, p2}, Landroid/widget/GridLayout$LayoutParams;->onDebugDraw(Landroid/view/View;Landroid/graphics/Canvas;Landroid/graphics/Paint;)V

    .line 914
    .end local v3    # "c":Landroid/view/View;
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 923
    .end local v2    # "i":I
    :cond_0
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 47
    .param p1, "changed"    # Z
    .param p2, "left"    # I
    .param p3, "top"    # I
    .param p4, "right"    # I
    .param p5, "bottom"    # I

    move-object/from16 v6, p0

    .line 1124
    invoke-direct/range {p0 .. p0}, Landroid/widget/GridLayout;->consistencyCheck()V

    .line 1126
    sub-int v9, p4, p2

    .line 1127
    .local v9, "targetWidth":I
    sub-int v12, p5, p3

    .line 1129
    .local v12, "targetHeight":I
    invoke-virtual/range {p0 .. p0}, Landroid/widget/GridLayout;->getPaddingLeft()I

    move-result v13

    .line 1130
    .local v13, "paddingLeft":I
    invoke-virtual/range {p0 .. p0}, Landroid/widget/GridLayout;->getPaddingTop()I

    move-result v14

    .line 1131
    .local v14, "paddingTop":I
    invoke-virtual/range {p0 .. p0}, Landroid/widget/GridLayout;->getPaddingRight()I

    move-result v15

    .line 1132
    .local v15, "paddingRight":I
    invoke-virtual/range {p0 .. p0}, Landroid/widget/GridLayout;->getPaddingBottom()I

    move-result v16

    .line 1134
    .local v16, "paddingBottom":I
    iget-object v0, v6, Landroid/widget/GridLayout;->mHorizontalAxis:Landroid/widget/GridLayout$Axis;

    sub-int v1, v9, v13

    sub-int/2addr v1, v15

    invoke-virtual {v0, v1}, Landroid/widget/GridLayout$Axis;->layout(I)V

    .line 1135
    iget-object v0, v6, Landroid/widget/GridLayout;->mVerticalAxis:Landroid/widget/GridLayout$Axis;

    sub-int v1, v12, v14

    sub-int v1, v1, v16

    invoke-virtual {v0, v1}, Landroid/widget/GridLayout$Axis;->layout(I)V

    .line 1137
    iget-object v0, v6, Landroid/widget/GridLayout;->mHorizontalAxis:Landroid/widget/GridLayout$Axis;

    invoke-virtual {v0}, Landroid/widget/GridLayout$Axis;->getLocations()[I

    move-result-object v17

    .line 1138
    .local v17, "hLocations":[I
    iget-object v0, v6, Landroid/widget/GridLayout;->mVerticalAxis:Landroid/widget/GridLayout$Axis;

    invoke-virtual {v0}, Landroid/widget/GridLayout$Axis;->getLocations()[I

    move-result-object v18

    .line 1140
    .local v18, "vLocations":[I
    const/4 v0, 0x0

    .local v0, "i":I
    invoke-virtual/range {p0 .. p0}, Landroid/widget/GridLayout;->getChildCount()I

    move-result v1

    move v5, v0

    .end local v0    # "i":I
    .local v1, "N":I
    .local v5, "i":I
    :goto_0
    move v4, v1

    .end local v1    # "N":I
    .local v4, "N":I
    if-ge v5, v4, :cond_4

    .line 1141
    invoke-virtual {v6, v5}, Landroid/widget/GridLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 1142
    .local v3, "c":Landroid/view/View;
    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    move-result v0

    const/16 v1, 0x8

    if-ne v0, v1, :cond_0

    .line 1140
    .end local v3    # "c":Landroid/view/View;
    move/from16 v43, v4

    move/from16 v39, v5

    goto/16 :goto_2

    .line 1143
    .restart local v3    # "c":Landroid/view/View;
    :cond_0
    invoke-virtual {v6, v3}, Landroid/widget/GridLayout;->getLayoutParams(Landroid/view/View;)Landroid/widget/GridLayout$LayoutParams;

    move-result-object v2

    .line 1144
    .local v2, "lp":Landroid/widget/GridLayout$LayoutParams;
    iget-object v1, v2, Landroid/widget/GridLayout$LayoutParams;->columnSpec:Landroid/widget/GridLayout$Spec;

    .line 1145
    .local v1, "columnSpec":Landroid/widget/GridLayout$Spec;
    iget-object v0, v2, Landroid/widget/GridLayout$LayoutParams;->rowSpec:Landroid/widget/GridLayout$Spec;

    .line 1147
    .local v0, "rowSpec":Landroid/widget/GridLayout$Spec;
    iget-object v7, v1, Landroid/widget/GridLayout$Spec;->span:Landroid/widget/GridLayout$Interval;

    .line 1148
    .local v7, "colSpan":Landroid/widget/GridLayout$Interval;
    iget-object v8, v0, Landroid/widget/GridLayout$Spec;->span:Landroid/widget/GridLayout$Interval;

    .line 1150
    .local v8, "rowSpan":Landroid/widget/GridLayout$Interval;
    move-object/from16 v19, v2

    iget v2, v7, Landroid/widget/GridLayout$Interval;->min:I

    .end local v2    # "lp":Landroid/widget/GridLayout$LayoutParams;
    .local v19, "lp":Landroid/widget/GridLayout$LayoutParams;
    aget v20, v17, v2

    .line 1151
    .local v20, "x1":I
    iget v2, v8, Landroid/widget/GridLayout$Interval;->min:I

    aget v21, v18, v2

    .line 1153
    .local v21, "y1":I
    iget v2, v7, Landroid/widget/GridLayout$Interval;->max:I

    aget v22, v17, v2

    .line 1154
    .local v22, "x2":I
    iget v2, v8, Landroid/widget/GridLayout$Interval;->max:I

    aget v23, v18, v2

    .line 1156
    .local v23, "y2":I
    sub-int v24, v22, v20

    .line 1157
    .local v24, "cellWidth":I
    sub-int v25, v23, v21

    .line 1159
    .local v25, "cellHeight":I
    const/4 v2, 0x1

    move-object/from16 v26, v7

    invoke-direct {v6, v3, v2}, Landroid/widget/GridLayout;->getMeasurement(Landroid/view/View;Z)I

    move-result v7

    .line 1160
    .local v7, "pWidth":I
    .local v26, "colSpan":Landroid/widget/GridLayout$Interval;
    const/4 v2, 0x0

    move-object/from16 v28, v8

    invoke-direct {v6, v3, v2}, Landroid/widget/GridLayout;->getMeasurement(Landroid/view/View;Z)I

    move-result v8

    .line 1162
    .local v8, "pHeight":I
    .local v28, "rowSpan":Landroid/widget/GridLayout$Interval;
    const/4 v2, 0x1

    invoke-static {v1, v2}, Landroid/widget/GridLayout$Spec;->access$100(Landroid/widget/GridLayout$Spec;Z)Landroid/widget/GridLayout$Alignment;

    move-result-object v10

    .line 1163
    .local v10, "hAlign":Landroid/widget/GridLayout$Alignment;
    const/4 v2, 0x0

    invoke-static {v0, v2}, Landroid/widget/GridLayout$Spec;->access$100(Landroid/widget/GridLayout$Spec;Z)Landroid/widget/GridLayout$Alignment;

    move-result-object v11

    .line 1165
    .local v11, "vAlign":Landroid/widget/GridLayout$Alignment;
    iget-object v2, v6, Landroid/widget/GridLayout;->mHorizontalAxis:Landroid/widget/GridLayout$Axis;

    invoke-virtual {v2}, Landroid/widget/GridLayout$Axis;->getGroupBounds()Landroid/widget/GridLayout$PackedMap;

    move-result-object v2

    invoke-virtual {v2, v5}, Landroid/widget/GridLayout$PackedMap;->getValue(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/widget/GridLayout$Bounds;

    .line 1166
    .local v2, "boundsX":Landroid/widget/GridLayout$Bounds;
    move-object/from16 v30, v0

    iget-object v0, v6, Landroid/widget/GridLayout;->mVerticalAxis:Landroid/widget/GridLayout$Axis;

    .end local v0    # "rowSpec":Landroid/widget/GridLayout$Spec;
    .local v30, "rowSpec":Landroid/widget/GridLayout$Spec;
    invoke-virtual {v0}, Landroid/widget/GridLayout$Axis;->getGroupBounds()Landroid/widget/GridLayout$PackedMap;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/widget/GridLayout$PackedMap;->getValue(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/GridLayout$Bounds;

    .line 1169
    .local v0, "boundsY":Landroid/widget/GridLayout$Bounds;
    move-object/from16 v31, v1

    const/4 v1, 0x1

    invoke-virtual {v2, v1}, Landroid/widget/GridLayout$Bounds;->size(Z)I

    move-result v27

    .end local v1    # "columnSpec":Landroid/widget/GridLayout$Spec;
    .local v31, "columnSpec":Landroid/widget/GridLayout$Spec;
    sub-int v1, v24, v27

    invoke-virtual {v10, v3, v1}, Landroid/widget/GridLayout$Alignment;->getGravityOffset(Landroid/view/View;I)I

    move-result v27

    .line 1170
    .local v27, "gravityOffsetX":I
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/GridLayout$Bounds;->size(Z)I

    move-result v32

    sub-int v1, v25, v32

    invoke-virtual {v11, v3, v1}, Landroid/widget/GridLayout$Alignment;->getGravityOffset(Landroid/view/View;I)I

    move-result v32

    .line 1172
    .local v32, "gravityOffsetY":I
    const/4 v1, 0x1

    invoke-direct {v6, v3, v1, v1}, Landroid/widget/GridLayout;->getMargin(Landroid/view/View;ZZ)I

    move-result v33

    .line 1173
    .local v33, "leftMargin":I
    move-object/from16 v34, v0

    const/4 v0, 0x0

    invoke-direct {v6, v3, v0, v1}, Landroid/widget/GridLayout;->getMargin(Landroid/view/View;ZZ)I

    move-result v29

    .line 1174
    .end local v0    # "boundsY":Landroid/widget/GridLayout$Bounds;
    .local v29, "topMargin":I
    .local v34, "boundsY":Landroid/widget/GridLayout$Bounds;
    invoke-direct {v6, v3, v1, v0}, Landroid/widget/GridLayout;->getMargin(Landroid/view/View;ZZ)I

    move-result v35

    .line 1175
    .local v35, "rightMargin":I
    invoke-direct {v6, v3, v0, v0}, Landroid/widget/GridLayout;->getMargin(Landroid/view/View;ZZ)I

    move-result v36

    .line 1177
    .local v36, "bottomMargin":I
    add-int v37, v33, v35

    .line 1178
    .local v37, "sumMarginsX":I
    add-int v38, v29, v36

    .line 1181
    .local v38, "sumMarginsY":I
    add-int v39, v7, v37

    const/16 v40, 0x1

    move-object v0, v2

    move-object v1, v6

    move-object/from16 v41, v2

    move-object v2, v3

    .end local v2    # "boundsX":Landroid/widget/GridLayout$Bounds;
    .local v41, "boundsX":Landroid/widget/GridLayout$Bounds;
    move-object/from16 v42, v3

    move-object v3, v10

    .end local v3    # "c":Landroid/view/View;
    .local v42, "c":Landroid/view/View;
    move/from16 v43, v4

    move/from16 v4, v39

    .end local v4    # "N":I
    .local v43, "N":I
    move/from16 v39, v5

    move/from16 v5, v40

    .end local v5    # "i":I
    .local v39, "i":I
    invoke-virtual/range {v0 .. v5}, Landroid/widget/GridLayout$Bounds;->getOffset(Landroid/widget/GridLayout;Landroid/view/View;Landroid/widget/GridLayout$Alignment;IZ)I

    move-result v40

    .line 1182
    .local v40, "alignmentOffsetX":I
    add-int v4, v8, v38

    const/4 v5, 0x0

    move-object/from16 v0, v34

    move-object/from16 v2, v42

    move-object v3, v11

    invoke-virtual/range {v0 .. v5}, Landroid/widget/GridLayout$Bounds;->getOffset(Landroid/widget/GridLayout;Landroid/view/View;Landroid/widget/GridLayout$Alignment;IZ)I

    move-result v0

    .line 1184
    .local v0, "alignmentOffsetY":I
    sub-int v1, v24, v37

    invoke-virtual {v10, v2, v7, v1}, Landroid/widget/GridLayout$Alignment;->getSizeInCell(Landroid/view/View;II)I

    move-result v1

    .line 1185
    .end local v42    # "c":Landroid/view/View;
    .local v1, "width":I
    .local v2, "c":Landroid/view/View;
    sub-int v3, v25, v38

    invoke-virtual {v11, v2, v8, v3}, Landroid/widget/GridLayout$Alignment;->getSizeInCell(Landroid/view/View;II)I

    move-result v3

    .line 1187
    .local v3, "height":I
    add-int v4, v20, v27

    add-int v4, v4, v40

    .line 1189
    .local v4, "dx":I
    invoke-virtual/range {p0 .. p0}, Landroid/widget/GridLayout;->isLayoutRtl()Z

    move-result v5

    if-nez v5, :cond_1

    add-int v5, v13, v33

    add-int/2addr v5, v4

    goto :goto_1

    .line 1190
    :cond_1
    sub-int v5, v9, v1

    sub-int/2addr v5, v15

    sub-int v5, v5, v35

    sub-int/2addr v5, v4

    .line 1191
    .local v5, "cx":I
    :goto_1
    add-int v42, v14, v21

    add-int v42, v42, v32

    add-int v42, v42, v0

    move/from16 v44, v0

    add-int v0, v42, v29

    .line 1193
    .local v0, "cy":I
    .local v44, "alignmentOffsetY":I
    move/from16 v45, v4

    invoke-virtual {v2}, Landroid/view/View;->getMeasuredWidth()I

    move-result v4

    .end local v4    # "dx":I
    .local v45, "dx":I
    if-ne v1, v4, :cond_2

    invoke-virtual {v2}, Landroid/view/View;->getMeasuredHeight()I

    move-result v4

    if-eq v3, v4, :cond_3

    .line 1194
    :cond_2
    const/high16 v4, 0x40000000    # 2.0f

    invoke-static {v1, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v6

    invoke-static {v3, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v4

    invoke-virtual {v2, v6, v4}, Landroid/view/View;->measure(II)V

    .line 1196
    :cond_3
    add-int v4, v5, v1

    add-int v6, v0, v3

    invoke-virtual {v2, v5, v0, v4, v6}, Landroid/view/View;->layout(IIII)V

    .line 1140
    .end local v0    # "cy":I
    .end local v1    # "width":I
    .end local v2    # "c":Landroid/view/View;
    .end local v3    # "height":I
    .end local v5    # "cx":I
    .end local v7    # "pWidth":I
    .end local v8    # "pHeight":I
    .end local v10    # "hAlign":Landroid/widget/GridLayout$Alignment;
    .end local v11    # "vAlign":Landroid/widget/GridLayout$Alignment;
    .end local v19    # "lp":Landroid/widget/GridLayout$LayoutParams;
    .end local v20    # "x1":I
    .end local v21    # "y1":I
    .end local v22    # "x2":I
    .end local v23    # "y2":I
    .end local v24    # "cellWidth":I
    .end local v25    # "cellHeight":I
    .end local v26    # "colSpan":Landroid/widget/GridLayout$Interval;
    .end local v27    # "gravityOffsetX":I
    .end local v28    # "rowSpan":Landroid/widget/GridLayout$Interval;
    .end local v29    # "topMargin":I
    .end local v30    # "rowSpec":Landroid/widget/GridLayout$Spec;
    .end local v31    # "columnSpec":Landroid/widget/GridLayout$Spec;
    .end local v32    # "gravityOffsetY":I
    .end local v33    # "leftMargin":I
    .end local v34    # "boundsY":Landroid/widget/GridLayout$Bounds;
    .end local v35    # "rightMargin":I
    .end local v36    # "bottomMargin":I
    .end local v37    # "sumMarginsX":I
    .end local v38    # "sumMarginsY":I
    .end local v40    # "alignmentOffsetX":I
    .end local v41    # "boundsX":Landroid/widget/GridLayout$Bounds;
    .end local v44    # "alignmentOffsetY":I
    .end local v45    # "dx":I
    :goto_2
    add-int/lit8 v5, v39, 0x1

    .end local v39    # "i":I
    .local v5, "i":I
    move/from16 v1, v43

    move-object/from16 v6, p0

    goto/16 :goto_0

    .line 1198
    .end local v5    # "i":I
    .end local v43    # "N":I
    :cond_4
    return-void
.end method

.method protected onMeasure(II)V
    .locals 10
    .param p1, "widthSpec"    # I
    .param p2, "heightSpec"    # I

    .line 1055
    invoke-direct {p0}, Landroid/widget/GridLayout;->consistencyCheck()V

    .line 1059
    invoke-direct {p0}, Landroid/widget/GridLayout;->invalidateValues()V

    .line 1061
    invoke-virtual {p0}, Landroid/widget/GridLayout;->getPaddingLeft()I

    move-result v0

    invoke-virtual {p0}, Landroid/widget/GridLayout;->getPaddingRight()I

    move-result v1

    add-int/2addr v0, v1

    .line 1062
    .local v0, "hPadding":I
    invoke-virtual {p0}, Landroid/widget/GridLayout;->getPaddingTop()I

    move-result v1

    invoke-virtual {p0}, Landroid/widget/GridLayout;->getPaddingBottom()I

    move-result v2

    add-int/2addr v1, v2

    .line 1064
    .local v1, "vPadding":I
    neg-int v2, v0

    invoke-static {p1, v2}, Landroid/widget/GridLayout;->adjust(II)I

    move-result v2

    .line 1065
    .local v2, "widthSpecSansPadding":I
    neg-int v3, v1

    invoke-static {p2, v3}, Landroid/widget/GridLayout;->adjust(II)I

    move-result v3

    .line 1067
    .local v3, "heightSpecSansPadding":I
    const/4 v4, 0x1

    invoke-direct {p0, v2, v3, v4}, Landroid/widget/GridLayout;->measureChildrenWithMargins(IIZ)V

    .line 1073
    iget v4, p0, Landroid/widget/GridLayout;->mOrientation:I

    const/4 v5, 0x0

    if-nez v4, :cond_0

    .line 1074
    iget-object v4, p0, Landroid/widget/GridLayout;->mHorizontalAxis:Landroid/widget/GridLayout$Axis;

    invoke-virtual {v4, v2}, Landroid/widget/GridLayout$Axis;->getMeasure(I)I

    move-result v4

    .line 1075
    .local v4, "widthSansPadding":I
    invoke-direct {p0, v2, v3, v5}, Landroid/widget/GridLayout;->measureChildrenWithMargins(IIZ)V

    .line 1076
    iget-object v6, p0, Landroid/widget/GridLayout;->mVerticalAxis:Landroid/widget/GridLayout$Axis;

    invoke-virtual {v6, v3}, Landroid/widget/GridLayout$Axis;->getMeasure(I)I

    move-result v6

    .local v6, "heightSansPadding":I
    goto :goto_0

    .line 1078
    .end local v4    # "widthSansPadding":I
    .end local v6    # "heightSansPadding":I
    :cond_0
    iget-object v4, p0, Landroid/widget/GridLayout;->mVerticalAxis:Landroid/widget/GridLayout$Axis;

    invoke-virtual {v4, v3}, Landroid/widget/GridLayout$Axis;->getMeasure(I)I

    move-result v6

    .line 1079
    .restart local v6    # "heightSansPadding":I
    invoke-direct {p0, v2, v3, v5}, Landroid/widget/GridLayout;->measureChildrenWithMargins(IIZ)V

    .line 1080
    iget-object v4, p0, Landroid/widget/GridLayout;->mHorizontalAxis:Landroid/widget/GridLayout$Axis;

    invoke-virtual {v4, v2}, Landroid/widget/GridLayout$Axis;->getMeasure(I)I

    move-result v4

    .line 1083
    .restart local v4    # "widthSansPadding":I
    :goto_0
    add-int v7, v4, v0

    invoke-virtual {p0}, Landroid/widget/GridLayout;->getSuggestedMinimumWidth()I

    move-result v8

    invoke-static {v7, v8}, Ljava/lang/Math;->max(II)I

    move-result v7

    .line 1084
    .local v7, "measuredWidth":I
    add-int v8, v6, v1

    invoke-virtual {p0}, Landroid/widget/GridLayout;->getSuggestedMinimumHeight()I

    move-result v9

    invoke-static {v8, v9}, Ljava/lang/Math;->max(II)I

    move-result v8

    .line 1086
    .local v8, "measuredHeight":I
    nop

    .line 1087
    invoke-static {v7, p1, v5}, Landroid/widget/GridLayout;->resolveSizeAndState(III)I

    move-result v9

    .line 1088
    invoke-static {v8, p2, v5}, Landroid/widget/GridLayout;->resolveSizeAndState(III)I

    move-result v5

    .line 1086
    invoke-virtual {p0, v9, v5}, Landroid/widget/GridLayout;->setMeasuredDimension(II)V

    .line 1089
    return-void
.end method

.method protected onSetLayoutParams(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .locals 1
    .param p1, "child"    # Landroid/view/View;
    .param p2, "layoutParams"    # Landroid/view/ViewGroup$LayoutParams;

    .line 824
    invoke-super {p0, p1, p2}, Landroid/view/ViewGroup;->onSetLayoutParams(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 826
    invoke-virtual {p0, p2}, Landroid/widget/GridLayout;->checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 827
    const-string/jumbo v0, "supplied LayoutParams are of the wrong type"

    invoke-static {v0}, Landroid/widget/GridLayout;->handleInvalidParams(Ljava/lang/String;)V

    .line 830
    :cond_0
    invoke-direct {p0}, Landroid/widget/GridLayout;->invalidateStructure()V

    .line 831
    return-void
.end method

.method public onViewAdded(Landroid/view/View;)V
    .locals 0
    .param p1, "child"    # Landroid/view/View;

    .line 962
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onViewAdded(Landroid/view/View;)V

    .line 963
    invoke-direct {p0}, Landroid/widget/GridLayout;->invalidateStructure()V

    .line 964
    return-void
.end method

.method public onViewRemoved(Landroid/view/View;)V
    .locals 0
    .param p1, "child"    # Landroid/view/View;

    .line 968
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onViewRemoved(Landroid/view/View;)V

    .line 969
    invoke-direct {p0}, Landroid/widget/GridLayout;->invalidateStructure()V

    .line 970
    return-void
.end method

.method public requestLayout()V
    .locals 0

    .line 1104
    invoke-super {p0}, Landroid/view/ViewGroup;->requestLayout()V

    .line 1105
    invoke-direct {p0}, Landroid/widget/GridLayout;->invalidateValues()V

    .line 1106
    return-void
.end method

.method public setAlignmentMode(I)V
    .locals 0
    .param p1, "alignmentMode"    # I

    .line 521
    iput p1, p0, Landroid/widget/GridLayout;->mAlignmentMode:I

    .line 522
    invoke-virtual {p0}, Landroid/widget/GridLayout;->requestLayout()V

    .line 523
    return-void
.end method

.method public setColumnCount(I)V
    .locals 1
    .param p1, "columnCount"    # I

    .line 438
    iget-object v0, p0, Landroid/widget/GridLayout;->mHorizontalAxis:Landroid/widget/GridLayout$Axis;

    invoke-virtual {v0, p1}, Landroid/widget/GridLayout$Axis;->setCount(I)V

    .line 439
    invoke-direct {p0}, Landroid/widget/GridLayout;->invalidateStructure()V

    .line 440
    invoke-virtual {p0}, Landroid/widget/GridLayout;->requestLayout()V

    .line 441
    return-void
.end method

.method public setColumnOrderPreserved(Z)V
    .locals 1
    .param p1, "columnOrderPreserved"    # Z

    .line 592
    iget-object v0, p0, Landroid/widget/GridLayout;->mHorizontalAxis:Landroid/widget/GridLayout$Axis;

    invoke-virtual {v0, p1}, Landroid/widget/GridLayout$Axis;->setOrderPreserved(Z)V

    .line 593
    invoke-direct {p0}, Landroid/widget/GridLayout;->invalidateStructure()V

    .line 594
    invoke-virtual {p0}, Landroid/widget/GridLayout;->requestLayout()V

    .line 595
    return-void
.end method

.method public setOrientation(I)V
    .locals 1
    .param p1, "orientation"    # I

    .line 370
    iget v0, p0, Landroid/widget/GridLayout;->mOrientation:I

    if-eq v0, p1, :cond_0

    .line 371
    iput p1, p0, Landroid/widget/GridLayout;->mOrientation:I

    .line 372
    invoke-direct {p0}, Landroid/widget/GridLayout;->invalidateStructure()V

    .line 373
    invoke-virtual {p0}, Landroid/widget/GridLayout;->requestLayout()V

    .line 375
    :cond_0
    return-void
.end method

.method public setPrinter(Landroid/util/Printer;)V
    .locals 1
    .param p1, "printer"    # Landroid/util/Printer;

    .line 621
    if-nez p1, :cond_0

    sget-object v0, Landroid/widget/GridLayout;->NO_PRINTER:Landroid/util/Printer;

    goto :goto_0

    :cond_0
    move-object v0, p1

    :goto_0
    iput-object v0, p0, Landroid/widget/GridLayout;->mPrinter:Landroid/util/Printer;

    .line 622
    return-void
.end method

.method public setRowCount(I)V
    .locals 1
    .param p1, "rowCount"    # I

    .line 405
    iget-object v0, p0, Landroid/widget/GridLayout;->mVerticalAxis:Landroid/widget/GridLayout$Axis;

    invoke-virtual {v0, p1}, Landroid/widget/GridLayout$Axis;->setCount(I)V

    .line 406
    invoke-direct {p0}, Landroid/widget/GridLayout;->invalidateStructure()V

    .line 407
    invoke-virtual {p0}, Landroid/widget/GridLayout;->requestLayout()V

    .line 408
    return-void
.end method

.method public setRowOrderPreserved(Z)V
    .locals 1
    .param p1, "rowOrderPreserved"    # Z

    .line 556
    iget-object v0, p0, Landroid/widget/GridLayout;->mVerticalAxis:Landroid/widget/GridLayout$Axis;

    invoke-virtual {v0, p1}, Landroid/widget/GridLayout$Axis;->setOrderPreserved(Z)V

    .line 557
    invoke-direct {p0}, Landroid/widget/GridLayout;->invalidateStructure()V

    .line 558
    invoke-virtual {p0}, Landroid/widget/GridLayout;->requestLayout()V

    .line 559
    return-void
.end method

.method public setUseDefaultMargins(Z)V
    .locals 0
    .param p1, "useDefaultMargins"    # Z

    .line 484
    iput-boolean p1, p0, Landroid/widget/GridLayout;->mUseDefaultMargins:Z

    .line 485
    invoke-virtual {p0}, Landroid/widget/GridLayout;->requestLayout()V

    .line 486
    return-void
.end method
