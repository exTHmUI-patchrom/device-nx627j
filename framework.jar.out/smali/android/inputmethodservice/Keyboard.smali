.class public Landroid/inputmethodservice/Keyboard;
.super Ljava/lang/Object;
.source "Keyboard.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/inputmethodservice/Keyboard$Key;,
        Landroid/inputmethodservice/Keyboard$Row;
    }
.end annotation


# static fields
.field public static final EDGE_BOTTOM:I = 0x8

.field public static final EDGE_LEFT:I = 0x1

.field public static final EDGE_RIGHT:I = 0x2

.field public static final EDGE_TOP:I = 0x4

.field private static final GRID_HEIGHT:I = 0x5

.field private static final GRID_SIZE:I = 0x32

.field private static final GRID_WIDTH:I = 0xa

.field public static final KEYCODE_ALT:I = -0x6

.field public static final KEYCODE_CANCEL:I = -0x3

.field public static final KEYCODE_DELETE:I = -0x5

.field public static final KEYCODE_DONE:I = -0x4

.field public static final KEYCODE_MODE_CHANGE:I = -0x2

.field public static final KEYCODE_SHIFT:I = -0x1

.field private static SEARCH_DISTANCE:F = 0.0f

.field static final TAG:Ljava/lang/String; = "Keyboard"

.field private static final TAG_KEY:Ljava/lang/String; = "Key"

.field private static final TAG_KEYBOARD:Ljava/lang/String; = "Keyboard"

.field private static final TAG_ROW:Ljava/lang/String; = "Row"


# instance fields
.field private mCellHeight:I

.field private mCellWidth:I

.field private mDefaultHeight:I

.field private mDefaultHorizontalGap:I

.field private mDefaultVerticalGap:I

.field private mDefaultWidth:I

.field private mDisplayHeight:I

.field private mDisplayWidth:I

.field private mGridNeighbors:[[I

.field private mKeyHeight:I

.field private mKeyWidth:I

.field private mKeyboardMode:I

.field private mKeys:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/inputmethodservice/Keyboard$Key;",
            ">;"
        }
    .end annotation
.end field

.field private mLabel:Ljava/lang/CharSequence;

.field private mModifierKeys:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/inputmethodservice/Keyboard$Key;",
            ">;"
        }
    .end annotation
.end field

.field private mProximityThreshold:I

.field private mShiftKeyIndices:[I

.field private mShiftKeys:[Landroid/inputmethodservice/Keyboard$Key;

.field private mShifted:Z

.field private mTotalHeight:I

.field private mTotalWidth:I

.field private rows:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/inputmethodservice/Keyboard$Row;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 146
    const v0, 0x3fe66666    # 1.8f

    sput v0, Landroid/inputmethodservice/Keyboard;->SEARCH_DISTANCE:F

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "xmlLayoutResId"    # I

    .line 522
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Landroid/inputmethodservice/Keyboard;-><init>(Landroid/content/Context;II)V

    .line 523
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;II)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "xmlLayoutResId"    # I
    .param p3, "modeId"    # I

    .line 556
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 101
    const/4 v0, 0x2

    new-array v1, v0, [Landroid/inputmethodservice/Keyboard$Key;

    const/4 v2, 0x0

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const/4 v4, 0x1

    aput-object v2, v1, v4

    iput-object v1, p0, Landroid/inputmethodservice/Keyboard;->mShiftKeys:[Landroid/inputmethodservice/Keyboard$Key;

    .line 104
    new-array v0, v0, [I

    fill-array-data v0, :array_0

    iput-object v0, p0, Landroid/inputmethodservice/Keyboard;->mShiftKeyIndices:[I

    .line 148
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/inputmethodservice/Keyboard;->rows:Ljava/util/ArrayList;

    .line 557
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 558
    .local v0, "dm":Landroid/util/DisplayMetrics;
    iget v1, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    iput v1, p0, Landroid/inputmethodservice/Keyboard;->mDisplayWidth:I

    .line 559
    iget v1, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    iput v1, p0, Landroid/inputmethodservice/Keyboard;->mDisplayHeight:I

    .line 562
    iput v3, p0, Landroid/inputmethodservice/Keyboard;->mDefaultHorizontalGap:I

    .line 563
    iget v1, p0, Landroid/inputmethodservice/Keyboard;->mDisplayWidth:I

    div-int/lit8 v1, v1, 0xa

    iput v1, p0, Landroid/inputmethodservice/Keyboard;->mDefaultWidth:I

    .line 564
    iput v3, p0, Landroid/inputmethodservice/Keyboard;->mDefaultVerticalGap:I

    .line 565
    iget v1, p0, Landroid/inputmethodservice/Keyboard;->mDefaultWidth:I

    iput v1, p0, Landroid/inputmethodservice/Keyboard;->mDefaultHeight:I

    .line 566
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Landroid/inputmethodservice/Keyboard;->mKeys:Ljava/util/List;

    .line 567
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Landroid/inputmethodservice/Keyboard;->mModifierKeys:Ljava/util/List;

    .line 568
    iput p3, p0, Landroid/inputmethodservice/Keyboard;->mKeyboardMode:I

    .line 569
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, p2}, Landroid/content/res/Resources;->getXml(I)Landroid/content/res/XmlResourceParser;

    move-result-object v1

    invoke-direct {p0, p1, v1}, Landroid/inputmethodservice/Keyboard;->loadKeyboard(Landroid/content/Context;Landroid/content/res/XmlResourceParser;)V

    .line 570
    return-void

    nop

    :array_0
    .array-data 4
        -0x1
        -0x1
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;IIII)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "xmlLayoutResId"    # I
    .param p3, "modeId"    # I
    .param p4, "width"    # I
    .param p5, "height"    # I

    .line 535
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 101
    const/4 v0, 0x2

    new-array v1, v0, [Landroid/inputmethodservice/Keyboard$Key;

    const/4 v2, 0x0

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const/4 v4, 0x1

    aput-object v2, v1, v4

    iput-object v1, p0, Landroid/inputmethodservice/Keyboard;->mShiftKeys:[Landroid/inputmethodservice/Keyboard$Key;

    .line 104
    new-array v0, v0, [I

    fill-array-data v0, :array_0

    iput-object v0, p0, Landroid/inputmethodservice/Keyboard;->mShiftKeyIndices:[I

    .line 148
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/inputmethodservice/Keyboard;->rows:Ljava/util/ArrayList;

    .line 536
    iput p4, p0, Landroid/inputmethodservice/Keyboard;->mDisplayWidth:I

    .line 537
    iput p5, p0, Landroid/inputmethodservice/Keyboard;->mDisplayHeight:I

    .line 539
    iput v3, p0, Landroid/inputmethodservice/Keyboard;->mDefaultHorizontalGap:I

    .line 540
    iget v0, p0, Landroid/inputmethodservice/Keyboard;->mDisplayWidth:I

    div-int/lit8 v0, v0, 0xa

    iput v0, p0, Landroid/inputmethodservice/Keyboard;->mDefaultWidth:I

    .line 541
    iput v3, p0, Landroid/inputmethodservice/Keyboard;->mDefaultVerticalGap:I

    .line 542
    iget v0, p0, Landroid/inputmethodservice/Keyboard;->mDefaultWidth:I

    iput v0, p0, Landroid/inputmethodservice/Keyboard;->mDefaultHeight:I

    .line 543
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/inputmethodservice/Keyboard;->mKeys:Ljava/util/List;

    .line 544
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/inputmethodservice/Keyboard;->mModifierKeys:Ljava/util/List;

    .line 545
    iput p3, p0, Landroid/inputmethodservice/Keyboard;->mKeyboardMode:I

    .line 546
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/content/res/Resources;->getXml(I)Landroid/content/res/XmlResourceParser;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Landroid/inputmethodservice/Keyboard;->loadKeyboard(Landroid/content/Context;Landroid/content/res/XmlResourceParser;)V

    .line 547
    return-void

    nop

    :array_0
    .array-data 4
        -0x1
        -0x1
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;ILjava/lang/CharSequence;II)V
    .locals 14
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "layoutTemplateResId"    # I
    .param p3, "characters"    # Ljava/lang/CharSequence;
    .param p4, "columns"    # I
    .param p5, "horizontalPadding"    # I

    move-object v0, p0

    .line 588
    invoke-direct/range {p0 .. p2}, Landroid/inputmethodservice/Keyboard;-><init>(Landroid/content/Context;I)V

    .line 589
    const/4 v1, 0x0

    .line 590
    .local v1, "x":I
    const/4 v2, 0x0

    .line 591
    .local v2, "y":I
    const/4 v3, 0x0

    .line 592
    .local v3, "column":I
    const/4 v4, 0x0

    iput v4, v0, Landroid/inputmethodservice/Keyboard;->mTotalWidth:I

    .line 594
    new-instance v5, Landroid/inputmethodservice/Keyboard$Row;

    invoke-direct {v5, v0}, Landroid/inputmethodservice/Keyboard$Row;-><init>(Landroid/inputmethodservice/Keyboard;)V

    .line 595
    .local v5, "row":Landroid/inputmethodservice/Keyboard$Row;
    iget v6, v0, Landroid/inputmethodservice/Keyboard;->mDefaultHeight:I

    iput v6, v5, Landroid/inputmethodservice/Keyboard$Row;->defaultHeight:I

    .line 596
    iget v6, v0, Landroid/inputmethodservice/Keyboard;->mDefaultWidth:I

    iput v6, v5, Landroid/inputmethodservice/Keyboard$Row;->defaultWidth:I

    .line 597
    iget v6, v0, Landroid/inputmethodservice/Keyboard;->mDefaultHorizontalGap:I

    iput v6, v5, Landroid/inputmethodservice/Keyboard$Row;->defaultHorizontalGap:I

    .line 598
    iget v6, v0, Landroid/inputmethodservice/Keyboard;->mDefaultVerticalGap:I

    iput v6, v5, Landroid/inputmethodservice/Keyboard$Row;->verticalGap:I

    .line 599
    const/16 v6, 0xc

    iput v6, v5, Landroid/inputmethodservice/Keyboard$Row;->rowEdgeFlags:I

    .line 600
    const/4 v6, -0x1

    move/from16 v7, p4

    if-ne v7, v6, :cond_0

    const v6, 0x7fffffff

    goto :goto_0

    :cond_0
    move v6, v7

    .line 601
    .local v6, "maxColumns":I
    :goto_0
    move v8, v1

    move v1, v4

    .local v1, "i":I
    .local v8, "x":I
    :goto_1
    invoke-interface/range {p3 .. p3}, Ljava/lang/CharSequence;->length()I

    move-result v9

    if-ge v1, v9, :cond_4

    .line 602
    move-object/from16 v9, p3

    invoke-interface {v9, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v10

    .line 603
    .local v10, "c":C
    if-ge v3, v6, :cond_1

    iget v11, v0, Landroid/inputmethodservice/Keyboard;->mDefaultWidth:I

    add-int/2addr v11, v8

    add-int v11, v11, p5

    iget v12, v0, Landroid/inputmethodservice/Keyboard;->mDisplayWidth:I

    if-le v11, v12, :cond_2

    .line 605
    :cond_1
    const/4 v8, 0x0

    .line 606
    iget v11, v0, Landroid/inputmethodservice/Keyboard;->mDefaultVerticalGap:I

    iget v12, v0, Landroid/inputmethodservice/Keyboard;->mDefaultHeight:I

    add-int/2addr v11, v12

    add-int/2addr v2, v11

    .line 607
    const/4 v3, 0x0

    .line 609
    :cond_2
    new-instance v11, Landroid/inputmethodservice/Keyboard$Key;

    invoke-direct {v11, v5}, Landroid/inputmethodservice/Keyboard$Key;-><init>(Landroid/inputmethodservice/Keyboard$Row;)V

    .line 610
    .local v11, "key":Landroid/inputmethodservice/Keyboard$Key;
    iput v8, v11, Landroid/inputmethodservice/Keyboard$Key;->x:I

    .line 611
    iput v2, v11, Landroid/inputmethodservice/Keyboard$Key;->y:I

    .line 612
    invoke-static {v10}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v12

    iput-object v12, v11, Landroid/inputmethodservice/Keyboard$Key;->label:Ljava/lang/CharSequence;

    .line 613
    const/4 v12, 0x1

    new-array v13, v12, [I

    aput v10, v13, v4

    iput-object v13, v11, Landroid/inputmethodservice/Keyboard$Key;->codes:[I

    .line 614
    add-int/2addr v3, v12

    .line 615
    iget v12, v11, Landroid/inputmethodservice/Keyboard$Key;->width:I

    iget v13, v11, Landroid/inputmethodservice/Keyboard$Key;->gap:I

    add-int/2addr v12, v13

    add-int/2addr v8, v12

    .line 616
    iget-object v12, v0, Landroid/inputmethodservice/Keyboard;->mKeys:Ljava/util/List;

    invoke-interface {v12, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 617
    iget-object v12, v5, Landroid/inputmethodservice/Keyboard$Row;->mKeys:Ljava/util/ArrayList;

    invoke-virtual {v12, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 618
    iget v12, v0, Landroid/inputmethodservice/Keyboard;->mTotalWidth:I

    if-le v8, v12, :cond_3

    .line 619
    iput v8, v0, Landroid/inputmethodservice/Keyboard;->mTotalWidth:I

    .line 601
    .end local v10    # "c":C
    .end local v11    # "key":Landroid/inputmethodservice/Keyboard$Key;
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 622
    .end local v1    # "i":I
    :cond_4
    move-object/from16 v9, p3

    iget v1, v0, Landroid/inputmethodservice/Keyboard;->mDefaultHeight:I

    add-int/2addr v1, v2

    iput v1, v0, Landroid/inputmethodservice/Keyboard;->mTotalHeight:I

    .line 623
    iget-object v1, v0, Landroid/inputmethodservice/Keyboard;->rows:Ljava/util/ArrayList;

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 624
    return-void
.end method

.method static synthetic access$000(Landroid/inputmethodservice/Keyboard;)I
    .locals 1
    .param p0, "x0"    # Landroid/inputmethodservice/Keyboard;

    .line 61
    iget v0, p0, Landroid/inputmethodservice/Keyboard;->mDisplayWidth:I

    return v0
.end method

.method static synthetic access$100(Landroid/inputmethodservice/Keyboard;)I
    .locals 1
    .param p0, "x0"    # Landroid/inputmethodservice/Keyboard;

    .line 61
    iget v0, p0, Landroid/inputmethodservice/Keyboard;->mDefaultWidth:I

    return v0
.end method

.method static synthetic access$200(Landroid/inputmethodservice/Keyboard;)I
    .locals 1
    .param p0, "x0"    # Landroid/inputmethodservice/Keyboard;

    .line 61
    iget v0, p0, Landroid/inputmethodservice/Keyboard;->mDisplayHeight:I

    return v0
.end method

.method static synthetic access$300(Landroid/inputmethodservice/Keyboard;)I
    .locals 1
    .param p0, "x0"    # Landroid/inputmethodservice/Keyboard;

    .line 61
    iget v0, p0, Landroid/inputmethodservice/Keyboard;->mDefaultHeight:I

    return v0
.end method

.method static synthetic access$400(Landroid/inputmethodservice/Keyboard;)I
    .locals 1
    .param p0, "x0"    # Landroid/inputmethodservice/Keyboard;

    .line 61
    iget v0, p0, Landroid/inputmethodservice/Keyboard;->mDefaultHorizontalGap:I

    return v0
.end method

.method static synthetic access$500(Landroid/inputmethodservice/Keyboard;)I
    .locals 1
    .param p0, "x0"    # Landroid/inputmethodservice/Keyboard;

    .line 61
    iget v0, p0, Landroid/inputmethodservice/Keyboard;->mDefaultVerticalGap:I

    return v0
.end method

.method private computeNearestNeighbors()V
    .locals 12

    .line 739
    invoke-virtual {p0}, Landroid/inputmethodservice/Keyboard;->getMinWidth()I

    move-result v0

    const/16 v1, 0xa

    add-int/2addr v0, v1

    add-int/lit8 v0, v0, -0x1

    div-int/2addr v0, v1

    iput v0, p0, Landroid/inputmethodservice/Keyboard;->mCellWidth:I

    .line 740
    invoke-virtual {p0}, Landroid/inputmethodservice/Keyboard;->getHeight()I

    move-result v0

    const/4 v2, 0x5

    add-int/2addr v0, v2

    add-int/lit8 v0, v0, -0x1

    div-int/2addr v0, v2

    iput v0, p0, Landroid/inputmethodservice/Keyboard;->mCellHeight:I

    .line 741
    const/16 v0, 0x32

    new-array v0, v0, [[I

    iput-object v0, p0, Landroid/inputmethodservice/Keyboard;->mGridNeighbors:[[I

    .line 742
    iget-object v0, p0, Landroid/inputmethodservice/Keyboard;->mKeys:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [I

    .line 743
    .local v0, "indices":[I
    iget v3, p0, Landroid/inputmethodservice/Keyboard;->mCellWidth:I

    mul-int/2addr v3, v1

    .line 744
    .local v3, "gridWidth":I
    iget v4, p0, Landroid/inputmethodservice/Keyboard;->mCellHeight:I

    mul-int/2addr v2, v4

    .line 745
    .local v2, "gridHeight":I
    const/4 v4, 0x0

    move v5, v4

    .local v5, "x":I
    :goto_0
    if-ge v5, v3, :cond_4

    .line 746
    move v6, v4

    .local v6, "y":I
    :goto_1
    if-ge v6, v2, :cond_3

    .line 747
    const/4 v7, 0x0

    .line 748
    .local v7, "count":I
    move v8, v7

    move v7, v4

    .local v7, "i":I
    .local v8, "count":I
    :goto_2
    iget-object v9, p0, Landroid/inputmethodservice/Keyboard;->mKeys:Ljava/util/List;

    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v9

    if-ge v7, v9, :cond_2

    .line 749
    iget-object v9, p0, Landroid/inputmethodservice/Keyboard;->mKeys:Ljava/util/List;

    invoke-interface {v9, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/inputmethodservice/Keyboard$Key;

    .line 750
    .local v9, "key":Landroid/inputmethodservice/Keyboard$Key;
    invoke-virtual {v9, v5, v6}, Landroid/inputmethodservice/Keyboard$Key;->squaredDistanceFrom(II)I

    move-result v10

    iget v11, p0, Landroid/inputmethodservice/Keyboard;->mProximityThreshold:I

    if-lt v10, v11, :cond_0

    iget v10, p0, Landroid/inputmethodservice/Keyboard;->mCellWidth:I

    add-int/2addr v10, v5

    add-int/lit8 v10, v10, -0x1

    .line 751
    invoke-virtual {v9, v10, v6}, Landroid/inputmethodservice/Keyboard$Key;->squaredDistanceFrom(II)I

    move-result v10

    iget v11, p0, Landroid/inputmethodservice/Keyboard;->mProximityThreshold:I

    if-lt v10, v11, :cond_0

    iget v10, p0, Landroid/inputmethodservice/Keyboard;->mCellWidth:I

    add-int/2addr v10, v5

    add-int/lit8 v10, v10, -0x1

    iget v11, p0, Landroid/inputmethodservice/Keyboard;->mCellHeight:I

    add-int/2addr v11, v6

    add-int/lit8 v11, v11, -0x1

    .line 752
    invoke-virtual {v9, v10, v11}, Landroid/inputmethodservice/Keyboard$Key;->squaredDistanceFrom(II)I

    move-result v10

    iget v11, p0, Landroid/inputmethodservice/Keyboard;->mProximityThreshold:I

    if-lt v10, v11, :cond_0

    iget v10, p0, Landroid/inputmethodservice/Keyboard;->mCellHeight:I

    add-int/2addr v10, v6

    add-int/lit8 v10, v10, -0x1

    .line 754
    invoke-virtual {v9, v5, v10}, Landroid/inputmethodservice/Keyboard$Key;->squaredDistanceFrom(II)I

    move-result v10

    iget v11, p0, Landroid/inputmethodservice/Keyboard;->mProximityThreshold:I

    if-ge v10, v11, :cond_1

    .line 755
    :cond_0
    add-int/lit8 v10, v8, 0x1

    .local v10, "count":I
    aput v7, v0, v8

    .line 748
    .end local v8    # "count":I
    .end local v9    # "key":Landroid/inputmethodservice/Keyboard$Key;
    move v8, v10

    .end local v10    # "count":I
    .restart local v8    # "count":I
    :cond_1
    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    .line 758
    .end local v7    # "i":I
    :cond_2
    new-array v7, v8, [I

    .line 759
    .local v7, "cell":[I
    invoke-static {v0, v4, v7, v4, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 760
    iget-object v9, p0, Landroid/inputmethodservice/Keyboard;->mGridNeighbors:[[I

    iget v10, p0, Landroid/inputmethodservice/Keyboard;->mCellHeight:I

    div-int v10, v6, v10

    mul-int/2addr v10, v1

    iget v11, p0, Landroid/inputmethodservice/Keyboard;->mCellWidth:I

    div-int v11, v5, v11

    add-int/2addr v10, v11

    aput-object v7, v9, v10

    .line 746
    .end local v7    # "cell":[I
    .end local v8    # "count":I
    iget v7, p0, Landroid/inputmethodservice/Keyboard;->mCellHeight:I

    add-int/2addr v6, v7

    goto :goto_1

    .line 745
    .end local v6    # "y":I
    :cond_3
    iget v6, p0, Landroid/inputmethodservice/Keyboard;->mCellWidth:I

    add-int/2addr v5, v6

    goto :goto_0

    .line 763
    .end local v5    # "x":I
    :cond_4
    return-void
.end method

.method static getDimensionOrFraction(Landroid/content/res/TypedArray;III)I
    .locals 3
    .param p0, "a"    # Landroid/content/res/TypedArray;
    .param p1, "index"    # I
    .param p2, "base"    # I
    .param p3, "defValue"    # I

    .line 897
    invoke-virtual {p0, p1}, Landroid/content/res/TypedArray;->peekValue(I)Landroid/util/TypedValue;

    move-result-object v0

    .line 898
    .local v0, "value":Landroid/util/TypedValue;
    if-nez v0, :cond_0

    return p3

    .line 899
    :cond_0
    iget v1, v0, Landroid/util/TypedValue;->type:I

    const/4 v2, 0x5

    if-ne v1, v2, :cond_1

    .line 900
    invoke-virtual {p0, p1, p3}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v1

    return v1

    .line 901
    :cond_1
    iget v1, v0, Landroid/util/TypedValue;->type:I

    const/4 v2, 0x6

    if-ne v1, v2, :cond_2

    .line 903
    int-to-float v1, p3

    invoke-virtual {p0, p1, p2, p2, v1}, Landroid/content/res/TypedArray;->getFraction(IIIF)F

    move-result v1

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    return v1

    .line 905
    :cond_2
    return p3
.end method

.method private loadKeyboard(Landroid/content/Context;Landroid/content/res/XmlResourceParser;)V
    .locals 22
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "parser"    # Landroid/content/res/XmlResourceParser;

    move-object/from16 v7, p0

    .line 793
    move-object/from16 v8, p2

    const/4 v0, 0x0

    .line 794
    .local v0, "inKey":Z
    const/4 v1, 0x0

    .line 795
    .local v1, "inRow":Z
    const/4 v9, 0x0

    .line 796
    .local v9, "leftMostKey":Z
    const/4 v2, 0x0

    .line 797
    .local v2, "row":I
    const/4 v3, 0x0

    .line 798
    .local v3, "x":I
    const/4 v4, 0x0

    .line 799
    .local v4, "y":I
    const/4 v5, 0x0

    .line 800
    .local v5, "key":Landroid/inputmethodservice/Keyboard$Key;
    const/4 v6, 0x0

    .line 801
    .local v6, "currentRow":Landroid/inputmethodservice/Keyboard$Row;
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    .line 802
    .local v10, "res":Landroid/content/res/Resources;
    const/4 v11, 0x0

    move v15, v1

    move/from16 v16, v2

    move/from16 v17, v3

    move v12, v4

    move-object v13, v5

    move-object v14, v6

    move v1, v0

    move v0, v11

    .end local v2    # "row":I
    .end local v3    # "x":I
    .end local v4    # "y":I
    .end local v5    # "key":Landroid/inputmethodservice/Keyboard$Key;
    .end local v6    # "currentRow":Landroid/inputmethodservice/Keyboard$Row;
    .local v0, "skipRow":Z
    .local v1, "inKey":Z
    .local v12, "y":I
    .local v13, "key":Landroid/inputmethodservice/Keyboard$Key;
    .local v14, "currentRow":Landroid/inputmethodservice/Keyboard$Row;
    .local v15, "inRow":Z
    .local v16, "row":I
    .local v17, "x":I
    :goto_0
    move/from16 v18, v0

    .line 806
    .end local v0    # "skipRow":Z
    .local v18, "skipRow":Z
    :try_start_0
    invoke-interface/range {p2 .. p2}, Landroid/content/res/XmlResourceParser;->next()I

    move-result v0

    move v6, v0

    .local v6, "event":I
    const/4 v5, 0x1

    if-eq v0, v5, :cond_d

    .line 807
    const/4 v0, 0x2

    if-ne v6, v0, :cond_9

    .line 808
    invoke-interface/range {p2 .. p2}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v0

    .line 809
    .local v0, "tag":Ljava/lang/String;
    const-string v2, "Row"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_5

    if-eqz v2, :cond_2

    .line 810
    const/4 v2, 0x1

    .line 811
    .end local v15    # "inRow":Z
    .local v2, "inRow":Z
    const/16 v17, 0x0

    .line 812
    :try_start_1
    invoke-virtual {v7, v10, v8}, Landroid/inputmethodservice/Keyboard;->createRowFromXml(Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;)Landroid/inputmethodservice/Keyboard$Row;

    move-result-object v3

    move-object v14, v3

    .line 813
    iget-object v3, v7, Landroid/inputmethodservice/Keyboard;->rows:Ljava/util/ArrayList;

    invoke-virtual {v3, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 814
    iget v3, v14, Landroid/inputmethodservice/Keyboard$Row;->mode:I

    if-eqz v3, :cond_0

    iget v3, v14, Landroid/inputmethodservice/Keyboard$Row;->mode:I

    iget v4, v7, Landroid/inputmethodservice/Keyboard;->mKeyboardMode:I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    if-eq v3, v4, :cond_0

    goto :goto_1

    :cond_0
    move v5, v11

    :goto_1
    move v3, v5

    .line 815
    .end local v18    # "skipRow":Z
    .local v3, "skipRow":Z
    if-eqz v3, :cond_1

    .line 816
    :try_start_2
    invoke-direct {v7, v8}, Landroid/inputmethodservice/Keyboard;->skipToEndOfRow(Landroid/content/res/XmlResourceParser;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 817
    const/4 v2, 0x0

    goto :goto_2

    .line 857
    .end local v0    # "tag":Ljava/lang/String;
    .end local v6    # "event":I
    :catch_0
    move-exception v0

    move v15, v2

    move/from16 v18, v3

    goto/16 :goto_9

    .line 840
    .end local v2    # "inRow":Z
    .end local v3    # "skipRow":Z
    .local v0, "skipRow":Z
    .restart local v15    # "inRow":Z
    .local v21, "event":I
    :cond_1
    :goto_2
    move v15, v2

    move v0, v3

    move/from16 v21, v6

    goto/16 :goto_7

    .line 857
    .end local v0    # "skipRow":Z
    .end local v15    # "inRow":Z
    .end local v21    # "event":I
    .restart local v2    # "inRow":Z
    .restart local v18    # "skipRow":Z
    :catch_1
    move-exception v0

    move v15, v2

    goto/16 :goto_9

    .line 819
    .end local v2    # "inRow":Z
    .local v0, "tag":Ljava/lang/String;
    .restart local v6    # "event":I
    .restart local v15    # "inRow":Z
    :cond_2
    :try_start_3
    const-string v2, "Key"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_5

    if-eqz v2, :cond_7

    .line 820
    const/16 v19, 0x1

    .line 821
    .end local v1    # "inKey":Z
    .local v19, "inKey":Z
    move-object v1, v7

    move-object v2, v10

    move-object v3, v14

    move/from16 v4, v17

    move/from16 v20, v5

    move v5, v12

    move/from16 v21, v6

    move-object v6, v8

    .end local v6    # "event":I
    .restart local v21    # "event":I
    :try_start_4
    invoke-virtual/range {v1 .. v6}, Landroid/inputmethodservice/Keyboard;->createKeyFromXml(Landroid/content/res/Resources;Landroid/inputmethodservice/Keyboard$Row;IILandroid/content/res/XmlResourceParser;)Landroid/inputmethodservice/Keyboard$Key;

    move-result-object v1
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3

    .line 822
    .end local v13    # "key":Landroid/inputmethodservice/Keyboard$Key;
    .local v1, "key":Landroid/inputmethodservice/Keyboard$Key;
    :try_start_5
    iget-object v2, v7, Landroid/inputmethodservice/Keyboard;->mKeys:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 823
    iget-object v2, v1, Landroid/inputmethodservice/Keyboard$Key;->codes:[I

    aget v2, v2, v11

    const/4 v3, -0x1

    if-ne v2, v3, :cond_5

    .line 825
    move v2, v11

    .local v2, "i":I
    :goto_3
    iget-object v3, v7, Landroid/inputmethodservice/Keyboard;->mShiftKeys:[Landroid/inputmethodservice/Keyboard$Key;

    array-length v3, v3

    if-ge v2, v3, :cond_4

    .line 826
    iget-object v3, v7, Landroid/inputmethodservice/Keyboard;->mShiftKeys:[Landroid/inputmethodservice/Keyboard$Key;

    aget-object v3, v3, v2

    if-nez v3, :cond_3

    .line 827
    iget-object v3, v7, Landroid/inputmethodservice/Keyboard;->mShiftKeys:[Landroid/inputmethodservice/Keyboard$Key;

    aput-object v1, v3, v2

    .line 828
    iget-object v3, v7, Landroid/inputmethodservice/Keyboard;->mShiftKeyIndices:[I

    iget-object v4, v7, Landroid/inputmethodservice/Keyboard;->mKeys:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    aput v4, v3, v2

    .line 829
    goto :goto_4

    .line 825
    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 832
    .end local v2    # "i":I
    :cond_4
    :goto_4
    iget-object v2, v7, Landroid/inputmethodservice/Keyboard;->mModifierKeys:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_5

    .line 833
    :cond_5
    iget-object v2, v1, Landroid/inputmethodservice/Keyboard$Key;->codes:[I

    aget v2, v2, v11

    const/4 v3, -0x6

    if-ne v2, v3, :cond_6

    .line 834
    iget-object v2, v7, Landroid/inputmethodservice/Keyboard;->mModifierKeys:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 836
    :cond_6
    :goto_5
    iget-object v2, v14, Landroid/inputmethodservice/Keyboard$Row;->mKeys:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2

    .line 840
    move-object v13, v1

    move/from16 v0, v18

    move/from16 v1, v19

    goto :goto_7

    .line 857
    .end local v0    # "tag":Ljava/lang/String;
    .end local v21    # "event":I
    :catch_2
    move-exception v0

    move-object v13, v1

    goto :goto_6

    .end local v1    # "key":Landroid/inputmethodservice/Keyboard$Key;
    .restart local v13    # "key":Landroid/inputmethodservice/Keyboard$Key;
    :catch_3
    move-exception v0

    .end local v19    # "inKey":Z
    .local v1, "inKey":Z
    :goto_6
    move/from16 v1, v19

    goto :goto_9

    .line 837
    .restart local v0    # "tag":Ljava/lang/String;
    .restart local v6    # "event":I
    :cond_7
    move/from16 v21, v6

    .end local v6    # "event":I
    .restart local v21    # "event":I
    :try_start_6
    const-string v2, "Keyboard"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 838
    invoke-direct {v7, v10, v8}, Landroid/inputmethodservice/Keyboard;->parseKeyboardAttributes(Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;)V

    .line 840
    .end local v0    # "tag":Ljava/lang/String;
    :cond_8
    move/from16 v0, v18

    .end local v18    # "skipRow":Z
    .local v0, "skipRow":Z
    :goto_7
    goto/16 :goto_0

    .end local v0    # "skipRow":Z
    .end local v21    # "event":I
    .restart local v6    # "event":I
    .restart local v18    # "skipRow":Z
    :cond_9
    move/from16 v21, v6

    .end local v6    # "event":I
    .restart local v21    # "event":I
    const/4 v0, 0x3

    move/from16 v2, v21

    if-ne v2, v0, :cond_c

    .line 841
    .end local v21    # "event":I
    .local v2, "event":I
    if-eqz v1, :cond_b

    .line 842
    const/4 v1, 0x0

    .line 843
    iget v0, v13, Landroid/inputmethodservice/Keyboard$Key;->gap:I

    iget v3, v13, Landroid/inputmethodservice/Keyboard$Key;->width:I
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_5

    add-int/2addr v0, v3

    add-int v3, v17, v0

    .line 844
    .end local v17    # "x":I
    .local v3, "x":I
    :try_start_7
    iget v0, v7, Landroid/inputmethodservice/Keyboard;->mTotalWidth:I

    if-le v3, v0, :cond_a

    .line 845
    iput v3, v7, Landroid/inputmethodservice/Keyboard;->mTotalWidth:I
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_4

    .line 802
    .end local v2    # "event":I
    :cond_a
    move/from16 v17, v3

    goto :goto_8

    .line 857
    :catch_4
    move-exception v0

    move/from16 v17, v3

    goto :goto_9

    .line 847
    .end local v3    # "x":I
    .restart local v2    # "event":I
    .restart local v17    # "x":I
    :cond_b
    if-eqz v15, :cond_c

    .line 848
    const/4 v15, 0x0

    .line 849
    :try_start_8
    iget v0, v14, Landroid/inputmethodservice/Keyboard$Row;->verticalGap:I

    add-int/2addr v12, v0

    .line 850
    iget v0, v14, Landroid/inputmethodservice/Keyboard$Row;->defaultHeight:I
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_5

    add-int/2addr v12, v0

    .line 851
    add-int/lit8 v16, v16, 0x1

    .line 802
    .end local v2    # "event":I
    .end local v18    # "skipRow":Z
    .restart local v0    # "skipRow":Z
    :cond_c
    :goto_8
    move/from16 v0, v18

    goto/16 :goto_0

    .line 860
    .end local v0    # "skipRow":Z
    .restart local v18    # "skipRow":Z
    :cond_d
    goto :goto_a

    .line 857
    :catch_5
    move-exception v0

    .line 858
    .local v0, "e":Ljava/lang/Exception;
    :goto_9
    const-string v2, "Keyboard"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Parse error:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 859
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 861
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_a
    iget v0, v7, Landroid/inputmethodservice/Keyboard;->mDefaultVerticalGap:I

    sub-int v0, v12, v0

    iput v0, v7, Landroid/inputmethodservice/Keyboard;->mTotalHeight:I

    .line 862
    return-void
.end method

.method private parseKeyboardAttributes(Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;)V
    .locals 5
    .param p1, "res"    # Landroid/content/res/Resources;
    .param p2, "parser"    # Landroid/content/res/XmlResourceParser;

    .line 876
    invoke-static {p2}, Landroid/util/Xml;->asAttributeSet(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/AttributeSet;

    move-result-object v0

    sget-object v1, Lcom/android/internal/R$styleable;->Keyboard:[I

    invoke-virtual {p1, v0, v1}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 879
    .local v0, "a":Landroid/content/res/TypedArray;
    iget v1, p0, Landroid/inputmethodservice/Keyboard;->mDisplayWidth:I

    iget v2, p0, Landroid/inputmethodservice/Keyboard;->mDisplayWidth:I

    div-int/lit8 v2, v2, 0xa

    const/4 v3, 0x0

    invoke-static {v0, v3, v1, v2}, Landroid/inputmethodservice/Keyboard;->getDimensionOrFraction(Landroid/content/res/TypedArray;III)I

    move-result v1

    iput v1, p0, Landroid/inputmethodservice/Keyboard;->mDefaultWidth:I

    .line 882
    iget v1, p0, Landroid/inputmethodservice/Keyboard;->mDisplayHeight:I

    const/4 v2, 0x1

    const/16 v4, 0x32

    invoke-static {v0, v2, v1, v4}, Landroid/inputmethodservice/Keyboard;->getDimensionOrFraction(Landroid/content/res/TypedArray;III)I

    move-result v1

    iput v1, p0, Landroid/inputmethodservice/Keyboard;->mDefaultHeight:I

    .line 885
    iget v1, p0, Landroid/inputmethodservice/Keyboard;->mDisplayWidth:I

    const/4 v2, 0x2

    invoke-static {v0, v2, v1, v3}, Landroid/inputmethodservice/Keyboard;->getDimensionOrFraction(Landroid/content/res/TypedArray;III)I

    move-result v1

    iput v1, p0, Landroid/inputmethodservice/Keyboard;->mDefaultHorizontalGap:I

    .line 888
    iget v1, p0, Landroid/inputmethodservice/Keyboard;->mDisplayHeight:I

    const/4 v2, 0x3

    invoke-static {v0, v2, v1, v3}, Landroid/inputmethodservice/Keyboard;->getDimensionOrFraction(Landroid/content/res/TypedArray;III)I

    move-result v1

    iput v1, p0, Landroid/inputmethodservice/Keyboard;->mDefaultVerticalGap:I

    .line 891
    iget v1, p0, Landroid/inputmethodservice/Keyboard;->mDefaultWidth:I

    int-to-float v1, v1

    sget v2, Landroid/inputmethodservice/Keyboard;->SEARCH_DISTANCE:F

    mul-float/2addr v1, v2

    float-to-int v1, v1

    iput v1, p0, Landroid/inputmethodservice/Keyboard;->mProximityThreshold:I

    .line 892
    iget v1, p0, Landroid/inputmethodservice/Keyboard;->mProximityThreshold:I

    iget v2, p0, Landroid/inputmethodservice/Keyboard;->mProximityThreshold:I

    mul-int/2addr v1, v2

    iput v1, p0, Landroid/inputmethodservice/Keyboard;->mProximityThreshold:I

    .line 893
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 894
    return-void
.end method

.method private skipToEndOfRow(Landroid/content/res/XmlResourceParser;)V
    .locals 3
    .param p1, "parser"    # Landroid/content/res/XmlResourceParser;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 867
    :cond_0
    invoke-interface {p1}, Landroid/content/res/XmlResourceParser;->next()I

    move-result v0

    move v1, v0

    .local v1, "event":I
    const/4 v2, 0x1

    if-eq v0, v2, :cond_1

    .line 868
    const/4 v0, 0x3

    if-ne v1, v0, :cond_0

    .line 869
    invoke-interface {p1}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v2, "Row"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 870
    nop

    .line 873
    :cond_1
    return-void
.end method


# virtual methods
.method protected createKeyFromXml(Landroid/content/res/Resources;Landroid/inputmethodservice/Keyboard$Row;IILandroid/content/res/XmlResourceParser;)Landroid/inputmethodservice/Keyboard$Key;
    .locals 7
    .param p1, "res"    # Landroid/content/res/Resources;
    .param p2, "parent"    # Landroid/inputmethodservice/Keyboard$Row;
    .param p3, "x"    # I
    .param p4, "y"    # I
    .param p5, "parser"    # Landroid/content/res/XmlResourceParser;

    .line 789
    new-instance v6, Landroid/inputmethodservice/Keyboard$Key;

    move-object v0, v6

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    move-object v5, p5

    invoke-direct/range {v0 .. v5}, Landroid/inputmethodservice/Keyboard$Key;-><init>(Landroid/content/res/Resources;Landroid/inputmethodservice/Keyboard$Row;IILandroid/content/res/XmlResourceParser;)V

    return-object v6
.end method

.method protected createRowFromXml(Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;)Landroid/inputmethodservice/Keyboard$Row;
    .locals 1
    .param p1, "res"    # Landroid/content/res/Resources;
    .param p2, "parser"    # Landroid/content/res/XmlResourceParser;

    .line 784
    new-instance v0, Landroid/inputmethodservice/Keyboard$Row;

    invoke-direct {v0, p1, p0, p2}, Landroid/inputmethodservice/Keyboard$Row;-><init>(Landroid/content/res/Resources;Landroid/inputmethodservice/Keyboard;Landroid/content/res/XmlResourceParser;)V

    return-object v0
.end method

.method public getHeight()I
    .locals 1

    .line 702
    iget v0, p0, Landroid/inputmethodservice/Keyboard;->mTotalHeight:I

    return v0
.end method

.method protected getHorizontalGap()I
    .locals 1

    .line 666
    iget v0, p0, Landroid/inputmethodservice/Keyboard;->mDefaultHorizontalGap:I

    return v0
.end method

.method protected getKeyHeight()I
    .locals 1

    .line 682
    iget v0, p0, Landroid/inputmethodservice/Keyboard;->mDefaultHeight:I

    return v0
.end method

.method protected getKeyWidth()I
    .locals 1

    .line 690
    iget v0, p0, Landroid/inputmethodservice/Keyboard;->mDefaultWidth:I

    return v0
.end method

.method public getKeys()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/inputmethodservice/Keyboard$Key;",
            ">;"
        }
    .end annotation

    .line 658
    iget-object v0, p0, Landroid/inputmethodservice/Keyboard;->mKeys:Ljava/util/List;

    return-object v0
.end method

.method public getMinWidth()I
    .locals 1

    .line 706
    iget v0, p0, Landroid/inputmethodservice/Keyboard;->mTotalWidth:I

    return v0
.end method

.method public getModifierKeys()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/inputmethodservice/Keyboard$Key;",
            ">;"
        }
    .end annotation

    .line 662
    iget-object v0, p0, Landroid/inputmethodservice/Keyboard;->mModifierKeys:Ljava/util/List;

    return-object v0
.end method

.method public getNearestKeys(II)[I
    .locals 2
    .param p1, "x"    # I
    .param p2, "y"    # I

    .line 773
    iget-object v0, p0, Landroid/inputmethodservice/Keyboard;->mGridNeighbors:[[I

    if-nez v0, :cond_0

    invoke-direct {p0}, Landroid/inputmethodservice/Keyboard;->computeNearestNeighbors()V

    .line 774
    :cond_0
    if-ltz p1, :cond_1

    invoke-virtual {p0}, Landroid/inputmethodservice/Keyboard;->getMinWidth()I

    move-result v0

    if-ge p1, v0, :cond_1

    if-ltz p2, :cond_1

    invoke-virtual {p0}, Landroid/inputmethodservice/Keyboard;->getHeight()I

    move-result v0

    if-ge p2, v0, :cond_1

    .line 775
    iget v0, p0, Landroid/inputmethodservice/Keyboard;->mCellHeight:I

    div-int v0, p2, v0

    mul-int/lit8 v0, v0, 0xa

    iget v1, p0, Landroid/inputmethodservice/Keyboard;->mCellWidth:I

    div-int v1, p1, v1

    add-int/2addr v0, v1

    .line 776
    .local v0, "index":I
    const/16 v1, 0x32

    if-ge v0, v1, :cond_1

    .line 777
    iget-object v1, p0, Landroid/inputmethodservice/Keyboard;->mGridNeighbors:[[I

    aget-object v1, v1, v0

    return-object v1

    .line 780
    .end local v0    # "index":I
    :cond_1
    const/4 v0, 0x0

    new-array v0, v0, [I

    return-object v0
.end method

.method public getShiftKeyIndex()I
    .locals 2

    .line 734
    iget-object v0, p0, Landroid/inputmethodservice/Keyboard;->mShiftKeyIndices:[I

    const/4 v1, 0x0

    aget v0, v0, v1

    return v0
.end method

.method public getShiftKeyIndices()[I
    .locals 1

    .line 730
    iget-object v0, p0, Landroid/inputmethodservice/Keyboard;->mShiftKeyIndices:[I

    return-object v0
.end method

.method protected getVerticalGap()I
    .locals 1

    .line 674
    iget v0, p0, Landroid/inputmethodservice/Keyboard;->mDefaultVerticalGap:I

    return v0
.end method

.method public isShifted()Z
    .locals 1

    .line 723
    iget-boolean v0, p0, Landroid/inputmethodservice/Keyboard;->mShifted:Z

    return v0
.end method

.method final resize(II)V
    .locals 13
    .param p1, "newWidth"    # I
    .param p2, "newHeight"    # I

    .line 627
    iget-object v0, p0, Landroid/inputmethodservice/Keyboard;->rows:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 628
    .local v0, "numRows":I
    const/4 v1, 0x0

    move v2, v1

    .local v2, "rowIndex":I
    :goto_0
    if-ge v2, v0, :cond_3

    .line 629
    iget-object v3, p0, Landroid/inputmethodservice/Keyboard;->rows:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/inputmethodservice/Keyboard$Row;

    .line 630
    .local v3, "row":Landroid/inputmethodservice/Keyboard$Row;
    iget-object v4, v3, Landroid/inputmethodservice/Keyboard$Row;->mKeys:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    .line 631
    .local v4, "numKeys":I
    const/4 v5, 0x0

    .line 632
    .local v5, "totalGap":I
    const/4 v6, 0x0

    .line 633
    .local v6, "totalWidth":I
    move v7, v6

    move v6, v5

    move v5, v1

    .local v5, "keyIndex":I
    .local v6, "totalGap":I
    .local v7, "totalWidth":I
    :goto_1
    if-ge v5, v4, :cond_1

    .line 634
    iget-object v8, v3, Landroid/inputmethodservice/Keyboard$Row;->mKeys:Ljava/util/ArrayList;

    invoke-virtual {v8, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/inputmethodservice/Keyboard$Key;

    .line 635
    .local v8, "key":Landroid/inputmethodservice/Keyboard$Key;
    if-lez v5, :cond_0

    .line 636
    iget v9, v8, Landroid/inputmethodservice/Keyboard$Key;->gap:I

    add-int/2addr v6, v9

    .line 638
    :cond_0
    iget v9, v8, Landroid/inputmethodservice/Keyboard$Key;->width:I

    add-int/2addr v7, v9

    .line 633
    .end local v8    # "key":Landroid/inputmethodservice/Keyboard$Key;
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 640
    .end local v5    # "keyIndex":I
    :cond_1
    add-int v5, v6, v7

    if-le v5, p1, :cond_2

    .line 641
    const/4 v5, 0x0

    .line 642
    .local v5, "x":I
    sub-int v8, p1, v6

    int-to-float v8, v8

    int-to-float v9, v7

    div-float/2addr v8, v9

    .line 643
    .local v8, "scaleFactor":F
    move v9, v5

    move v5, v1

    .local v5, "keyIndex":I
    .local v9, "x":I
    :goto_2
    if-ge v5, v4, :cond_2

    .line 644
    iget-object v10, v3, Landroid/inputmethodservice/Keyboard$Row;->mKeys:Ljava/util/ArrayList;

    invoke-virtual {v10, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/inputmethodservice/Keyboard$Key;

    .line 645
    .local v10, "key":Landroid/inputmethodservice/Keyboard$Key;
    iget v11, v10, Landroid/inputmethodservice/Keyboard$Key;->width:I

    int-to-float v11, v11

    mul-float/2addr v11, v8

    float-to-int v11, v11

    iput v11, v10, Landroid/inputmethodservice/Keyboard$Key;->width:I

    .line 646
    iput v9, v10, Landroid/inputmethodservice/Keyboard$Key;->x:I

    .line 647
    iget v11, v10, Landroid/inputmethodservice/Keyboard$Key;->width:I

    iget v12, v10, Landroid/inputmethodservice/Keyboard$Key;->gap:I

    add-int/2addr v11, v12

    add-int/2addr v9, v11

    .line 643
    .end local v10    # "key":Landroid/inputmethodservice/Keyboard$Key;
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    .line 628
    .end local v3    # "row":Landroid/inputmethodservice/Keyboard$Row;
    .end local v4    # "numKeys":I
    .end local v5    # "keyIndex":I
    .end local v6    # "totalGap":I
    .end local v7    # "totalWidth":I
    .end local v8    # "scaleFactor":F
    .end local v9    # "x":I
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 651
    .end local v2    # "rowIndex":I
    :cond_3
    iput p1, p0, Landroid/inputmethodservice/Keyboard;->mTotalWidth:I

    .line 655
    return-void
.end method

.method protected setHorizontalGap(I)V
    .locals 0
    .param p1, "gap"    # I

    .line 670
    iput p1, p0, Landroid/inputmethodservice/Keyboard;->mDefaultHorizontalGap:I

    .line 671
    return-void
.end method

.method protected setKeyHeight(I)V
    .locals 0
    .param p1, "height"    # I

    .line 686
    iput p1, p0, Landroid/inputmethodservice/Keyboard;->mDefaultHeight:I

    .line 687
    return-void
.end method

.method protected setKeyWidth(I)V
    .locals 0
    .param p1, "width"    # I

    .line 694
    iput p1, p0, Landroid/inputmethodservice/Keyboard;->mDefaultWidth:I

    .line 695
    return-void
.end method

.method public setShifted(Z)Z
    .locals 5
    .param p1, "shiftState"    # Z

    .line 710
    iget-object v0, p0, Landroid/inputmethodservice/Keyboard;->mShiftKeys:[Landroid/inputmethodservice/Keyboard$Key;

    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_1

    aget-object v4, v0, v3

    .line 711
    .local v4, "shiftKey":Landroid/inputmethodservice/Keyboard$Key;
    if-eqz v4, :cond_0

    .line 712
    iput-boolean p1, v4, Landroid/inputmethodservice/Keyboard$Key;->on:Z

    .line 710
    .end local v4    # "shiftKey":Landroid/inputmethodservice/Keyboard$Key;
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 715
    :cond_1
    iget-boolean v0, p0, Landroid/inputmethodservice/Keyboard;->mShifted:Z

    if-eq v0, p1, :cond_2

    .line 716
    iput-boolean p1, p0, Landroid/inputmethodservice/Keyboard;->mShifted:Z

    .line 717
    const/4 v0, 0x1

    return v0

    .line 719
    :cond_2
    return v2
.end method

.method protected setVerticalGap(I)V
    .locals 0
    .param p1, "gap"    # I

    .line 678
    iput p1, p0, Landroid/inputmethodservice/Keyboard;->mDefaultVerticalGap:I

    .line 679
    return-void
.end method
