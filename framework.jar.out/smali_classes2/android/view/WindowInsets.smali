.class public final Landroid/view/WindowInsets;
.super Ljava/lang/Object;
.source "WindowInsets.java"


# static fields
.field public static final CONSUMED:Landroid/view/WindowInsets;

.field private static final EMPTY_RECT:Landroid/graphics/Rect;


# instance fields
.field private mAlwaysConsumeNavBar:Z

.field private mDisplayCutout:Landroid/view/DisplayCutout;

.field private mDisplayCutoutConsumed:Z

.field private mIsRound:Z

.field private mStableInsets:Landroid/graphics/Rect;

.field private mStableInsetsConsumed:Z

.field private mSystemWindowInsets:Landroid/graphics/Rect;

.field private mSystemWindowInsetsConsumed:Z

.field private mTempRect:Landroid/graphics/Rect;

.field private mWindowDecorInsets:Landroid/graphics/Rect;

.field private mWindowDecorInsetsConsumed:Z


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .line 64
    new-instance v0, Landroid/graphics/Rect;

    const/4 v1, 0x0

    invoke-direct {v0, v1, v1, v1, v1}, Landroid/graphics/Rect;-><init>(IIII)V

    sput-object v0, Landroid/view/WindowInsets;->EMPTY_RECT:Landroid/graphics/Rect;

    .line 75
    new-instance v0, Landroid/view/WindowInsets;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v2, v0

    invoke-direct/range {v2 .. v8}, Landroid/view/WindowInsets;-><init>(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;ZZLandroid/view/DisplayCutout;)V

    sput-object v0, Landroid/view/WindowInsets;->CONSUMED:Landroid/view/WindowInsets;

    .line 76
    return-void
.end method

.method public constructor <init>(Landroid/graphics/Rect;)V
    .locals 7
    .param p1, "systemWindowInsets"    # Landroid/graphics/Rect;

    .line 119
    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v6}, Landroid/view/WindowInsets;-><init>(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;ZZLandroid/view/DisplayCutout;)V

    .line 120
    return-void
.end method

.method public constructor <init>(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;ZZLandroid/view/DisplayCutout;)V
    .locals 3
    .param p1, "systemWindowInsets"    # Landroid/graphics/Rect;
    .param p2, "windowDecorInsets"    # Landroid/graphics/Rect;
    .param p3, "stableInsets"    # Landroid/graphics/Rect;
    .param p4, "isRound"    # Z
    .param p5, "alwaysConsumeNavBar"    # Z
    .param p6, "displayCutout"    # Landroid/view/DisplayCutout;

    .line 80
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/view/WindowInsets;->mSystemWindowInsetsConsumed:Z

    .line 60
    iput-boolean v0, p0, Landroid/view/WindowInsets;->mWindowDecorInsetsConsumed:Z

    .line 61
    iput-boolean v0, p0, Landroid/view/WindowInsets;->mStableInsetsConsumed:Z

    .line 62
    iput-boolean v0, p0, Landroid/view/WindowInsets;->mDisplayCutoutConsumed:Z

    .line 81
    const/4 v1, 0x1

    if-nez p1, :cond_0

    move v2, v1

    goto :goto_0

    :cond_0
    move v2, v0

    :goto_0
    iput-boolean v2, p0, Landroid/view/WindowInsets;->mSystemWindowInsetsConsumed:Z

    .line 82
    iget-boolean v2, p0, Landroid/view/WindowInsets;->mSystemWindowInsetsConsumed:Z

    if-eqz v2, :cond_1

    .line 83
    sget-object v2, Landroid/view/WindowInsets;->EMPTY_RECT:Landroid/graphics/Rect;

    goto :goto_1

    :cond_1
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2, p1}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    :goto_1
    iput-object v2, p0, Landroid/view/WindowInsets;->mSystemWindowInsets:Landroid/graphics/Rect;

    .line 85
    if-nez p2, :cond_2

    move v2, v1

    goto :goto_2

    :cond_2
    move v2, v0

    :goto_2
    iput-boolean v2, p0, Landroid/view/WindowInsets;->mWindowDecorInsetsConsumed:Z

    .line 86
    iget-boolean v2, p0, Landroid/view/WindowInsets;->mWindowDecorInsetsConsumed:Z

    if-eqz v2, :cond_3

    sget-object v2, Landroid/view/WindowInsets;->EMPTY_RECT:Landroid/graphics/Rect;

    goto :goto_3

    :cond_3
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2, p2}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    :goto_3
    iput-object v2, p0, Landroid/view/WindowInsets;->mWindowDecorInsets:Landroid/graphics/Rect;

    .line 88
    if-nez p3, :cond_4

    move v2, v1

    goto :goto_4

    :cond_4
    move v2, v0

    :goto_4
    iput-boolean v2, p0, Landroid/view/WindowInsets;->mStableInsetsConsumed:Z

    .line 89
    iget-boolean v2, p0, Landroid/view/WindowInsets;->mStableInsetsConsumed:Z

    if-eqz v2, :cond_5

    sget-object v2, Landroid/view/WindowInsets;->EMPTY_RECT:Landroid/graphics/Rect;

    goto :goto_5

    :cond_5
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2, p3}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    :goto_5
    iput-object v2, p0, Landroid/view/WindowInsets;->mStableInsets:Landroid/graphics/Rect;

    .line 91
    iput-boolean p4, p0, Landroid/view/WindowInsets;->mIsRound:Z

    .line 92
    iput-boolean p5, p0, Landroid/view/WindowInsets;->mAlwaysConsumeNavBar:Z

    .line 94
    if-nez p6, :cond_6

    move v0, v1

    nop

    :cond_6
    iput-boolean v0, p0, Landroid/view/WindowInsets;->mDisplayCutoutConsumed:Z

    .line 95
    iget-boolean v0, p0, Landroid/view/WindowInsets;->mDisplayCutoutConsumed:Z

    if-nez v0, :cond_8

    invoke-virtual {p6}, Landroid/view/DisplayCutout;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_7

    goto :goto_6

    .line 96
    :cond_7
    move-object v0, p6

    goto :goto_7

    :cond_8
    :goto_6
    const/4 v0, 0x0

    :goto_7
    iput-object v0, p0, Landroid/view/WindowInsets;->mDisplayCutout:Landroid/view/DisplayCutout;

    .line 97
    return-void
.end method

.method public constructor <init>(Landroid/view/WindowInsets;)V
    .locals 1
    .param p1, "src"    # Landroid/view/WindowInsets;

    .line 104
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/view/WindowInsets;->mSystemWindowInsetsConsumed:Z

    .line 60
    iput-boolean v0, p0, Landroid/view/WindowInsets;->mWindowDecorInsetsConsumed:Z

    .line 61
    iput-boolean v0, p0, Landroid/view/WindowInsets;->mStableInsetsConsumed:Z

    .line 62
    iput-boolean v0, p0, Landroid/view/WindowInsets;->mDisplayCutoutConsumed:Z

    .line 105
    iget-object v0, p1, Landroid/view/WindowInsets;->mSystemWindowInsets:Landroid/graphics/Rect;

    iput-object v0, p0, Landroid/view/WindowInsets;->mSystemWindowInsets:Landroid/graphics/Rect;

    .line 106
    iget-object v0, p1, Landroid/view/WindowInsets;->mWindowDecorInsets:Landroid/graphics/Rect;

    iput-object v0, p0, Landroid/view/WindowInsets;->mWindowDecorInsets:Landroid/graphics/Rect;

    .line 107
    iget-object v0, p1, Landroid/view/WindowInsets;->mStableInsets:Landroid/graphics/Rect;

    iput-object v0, p0, Landroid/view/WindowInsets;->mStableInsets:Landroid/graphics/Rect;

    .line 108
    iget-boolean v0, p1, Landroid/view/WindowInsets;->mSystemWindowInsetsConsumed:Z

    iput-boolean v0, p0, Landroid/view/WindowInsets;->mSystemWindowInsetsConsumed:Z

    .line 109
    iget-boolean v0, p1, Landroid/view/WindowInsets;->mWindowDecorInsetsConsumed:Z

    iput-boolean v0, p0, Landroid/view/WindowInsets;->mWindowDecorInsetsConsumed:Z

    .line 110
    iget-boolean v0, p1, Landroid/view/WindowInsets;->mStableInsetsConsumed:Z

    iput-boolean v0, p0, Landroid/view/WindowInsets;->mStableInsetsConsumed:Z

    .line 111
    iget-boolean v0, p1, Landroid/view/WindowInsets;->mIsRound:Z

    iput-boolean v0, p0, Landroid/view/WindowInsets;->mIsRound:Z

    .line 112
    iget-boolean v0, p1, Landroid/view/WindowInsets;->mAlwaysConsumeNavBar:Z

    iput-boolean v0, p0, Landroid/view/WindowInsets;->mAlwaysConsumeNavBar:Z

    .line 113
    iget-object v0, p1, Landroid/view/WindowInsets;->mDisplayCutout:Landroid/view/DisplayCutout;

    iput-object v0, p0, Landroid/view/WindowInsets;->mDisplayCutout:Landroid/view/DisplayCutout;

    .line 114
    iget-boolean v0, p1, Landroid/view/WindowInsets;->mDisplayCutoutConsumed:Z

    iput-boolean v0, p0, Landroid/view/WindowInsets;->mDisplayCutoutConsumed:Z

    .line 115
    return-void
.end method

.method private static insetInsets(Landroid/graphics/Rect;IIII)Landroid/graphics/Rect;
    .locals 5
    .param p0, "insets"    # Landroid/graphics/Rect;
    .param p1, "left"    # I
    .param p2, "top"    # I
    .param p3, "right"    # I
    .param p4, "bottom"    # I

    .line 633
    iget v0, p0, Landroid/graphics/Rect;->left:I

    sub-int/2addr v0, p1

    const/4 v1, 0x0

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 634
    .local v0, "newLeft":I
    iget v2, p0, Landroid/graphics/Rect;->top:I

    sub-int/2addr v2, p2

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 635
    .local v2, "newTop":I
    iget v3, p0, Landroid/graphics/Rect;->right:I

    sub-int/2addr v3, p3

    invoke-static {v1, v3}, Ljava/lang/Math;->max(II)I

    move-result v3

    .line 636
    .local v3, "newRight":I
    iget v4, p0, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v4, p4

    invoke-static {v1, v4}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 637
    .local v1, "newBottom":I
    if-ne v0, p1, :cond_0

    if-ne v2, p2, :cond_0

    if-ne v3, p3, :cond_0

    if-ne v1, p4, :cond_0

    .line 638
    return-object p0

    .line 640
    :cond_0
    new-instance v4, Landroid/graphics/Rect;

    invoke-direct {v4, v0, v2, v3, v1}, Landroid/graphics/Rect;-><init>(IIII)V

    return-object v4
.end method


# virtual methods
.method public consumeDisplayCutout()Landroid/view/WindowInsets;
    .locals 2

    .line 304
    new-instance v0, Landroid/view/WindowInsets;

    invoke-direct {v0, p0}, Landroid/view/WindowInsets;-><init>(Landroid/view/WindowInsets;)V

    .line 305
    .local v0, "result":Landroid/view/WindowInsets;
    const/4 v1, 0x0

    iput-object v1, v0, Landroid/view/WindowInsets;->mDisplayCutout:Landroid/view/DisplayCutout;

    .line 306
    const/4 v1, 0x1

    iput-boolean v1, v0, Landroid/view/WindowInsets;->mDisplayCutoutConsumed:Z

    .line 307
    return-object v0
.end method

.method public consumeStableInsets()Landroid/view/WindowInsets;
    .locals 2

    .line 527
    new-instance v0, Landroid/view/WindowInsets;

    invoke-direct {v0, p0}, Landroid/view/WindowInsets;-><init>(Landroid/view/WindowInsets;)V

    .line 528
    .local v0, "result":Landroid/view/WindowInsets;
    sget-object v1, Landroid/view/WindowInsets;->EMPTY_RECT:Landroid/graphics/Rect;

    iput-object v1, v0, Landroid/view/WindowInsets;->mStableInsets:Landroid/graphics/Rect;

    .line 529
    const/4 v1, 0x1

    iput-boolean v1, v0, Landroid/view/WindowInsets;->mStableInsetsConsumed:Z

    .line 530
    return-object v0
.end method

.method public consumeSystemWindowInsets()Landroid/view/WindowInsets;
    .locals 2

    .line 349
    new-instance v0, Landroid/view/WindowInsets;

    invoke-direct {v0, p0}, Landroid/view/WindowInsets;-><init>(Landroid/view/WindowInsets;)V

    .line 350
    .local v0, "result":Landroid/view/WindowInsets;
    sget-object v1, Landroid/view/WindowInsets;->EMPTY_RECT:Landroid/graphics/Rect;

    iput-object v1, v0, Landroid/view/WindowInsets;->mSystemWindowInsets:Landroid/graphics/Rect;

    .line 351
    const/4 v1, 0x1

    iput-boolean v1, v0, Landroid/view/WindowInsets;->mSystemWindowInsetsConsumed:Z

    .line 352
    return-object v0
.end method

.method public consumeSystemWindowInsets(ZZZZ)Landroid/view/WindowInsets;
    .locals 6
    .param p1, "left"    # Z
    .param p2, "top"    # Z
    .param p3, "right"    # Z
    .param p4, "bottom"    # Z

    .line 367
    if-nez p1, :cond_1

    if-nez p2, :cond_1

    if-nez p3, :cond_1

    if-eqz p4, :cond_0

    goto :goto_0

    .line 376
    :cond_0
    return-object p0

    .line 368
    :cond_1
    :goto_0
    new-instance v0, Landroid/view/WindowInsets;

    invoke-direct {v0, p0}, Landroid/view/WindowInsets;-><init>(Landroid/view/WindowInsets;)V

    .line 369
    .local v0, "result":Landroid/view/WindowInsets;
    new-instance v1, Landroid/graphics/Rect;

    .line 370
    const/4 v2, 0x0

    if-eqz p1, :cond_2

    .line 371
    move v3, v2

    goto :goto_1

    .line 370
    :cond_2
    iget-object v3, p0, Landroid/view/WindowInsets;->mSystemWindowInsets:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->left:I

    .line 371
    :goto_1
    if-eqz p2, :cond_3

    .line 372
    move v4, v2

    goto :goto_2

    .line 371
    :cond_3
    iget-object v4, p0, Landroid/view/WindowInsets;->mSystemWindowInsets:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->top:I

    .line 372
    :goto_2
    if-eqz p3, :cond_4

    .line 373
    move v5, v2

    goto :goto_3

    .line 372
    :cond_4
    iget-object v5, p0, Landroid/view/WindowInsets;->mSystemWindowInsets:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->right:I

    .line 373
    :goto_3
    if-eqz p4, :cond_5

    goto :goto_4

    :cond_5
    iget-object v2, p0, Landroid/view/WindowInsets;->mSystemWindowInsets:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    :goto_4
    invoke-direct {v1, v3, v4, v5, v2}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v1, v0, Landroid/view/WindowInsets;->mSystemWindowInsets:Landroid/graphics/Rect;

    .line 374
    return-object v0
.end method

.method public consumeWindowDecorInsets()Landroid/view/WindowInsets;
    .locals 3

    .line 414
    new-instance v0, Landroid/view/WindowInsets;

    invoke-direct {v0, p0}, Landroid/view/WindowInsets;-><init>(Landroid/view/WindowInsets;)V

    .line 415
    .local v0, "result":Landroid/view/WindowInsets;
    iget-object v1, v0, Landroid/view/WindowInsets;->mWindowDecorInsets:Landroid/graphics/Rect;

    const/4 v2, 0x0

    invoke-virtual {v1, v2, v2, v2, v2}, Landroid/graphics/Rect;->set(IIII)V

    .line 416
    const/4 v1, 0x1

    iput-boolean v1, v0, Landroid/view/WindowInsets;->mWindowDecorInsetsConsumed:Z

    .line 417
    return-object v0
.end method

.method public consumeWindowDecorInsets(ZZZZ)Landroid/view/WindowInsets;
    .locals 6
    .param p1, "left"    # Z
    .param p2, "top"    # Z
    .param p3, "right"    # Z
    .param p4, "bottom"    # Z

    .line 425
    if-nez p1, :cond_1

    if-nez p2, :cond_1

    if-nez p3, :cond_1

    if-eqz p4, :cond_0

    goto :goto_0

    .line 433
    :cond_0
    return-object p0

    .line 426
    :cond_1
    :goto_0
    new-instance v0, Landroid/view/WindowInsets;

    invoke-direct {v0, p0}, Landroid/view/WindowInsets;-><init>(Landroid/view/WindowInsets;)V

    .line 427
    .local v0, "result":Landroid/view/WindowInsets;
    new-instance v1, Landroid/graphics/Rect;

    const/4 v2, 0x0

    if-eqz p1, :cond_2

    .line 428
    move v3, v2

    goto :goto_1

    .line 427
    :cond_2
    iget-object v3, p0, Landroid/view/WindowInsets;->mWindowDecorInsets:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->left:I

    .line 428
    :goto_1
    if-eqz p2, :cond_3

    .line 429
    move v4, v2

    goto :goto_2

    .line 428
    :cond_3
    iget-object v4, p0, Landroid/view/WindowInsets;->mWindowDecorInsets:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->top:I

    .line 429
    :goto_2
    if-eqz p3, :cond_4

    .line 430
    move v5, v2

    goto :goto_3

    .line 429
    :cond_4
    iget-object v5, p0, Landroid/view/WindowInsets;->mWindowDecorInsets:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->right:I

    .line 430
    :goto_3
    if-eqz p4, :cond_5

    goto :goto_4

    :cond_5
    iget-object v2, p0, Landroid/view/WindowInsets;->mWindowDecorInsets:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    :goto_4
    invoke-direct {v1, v3, v4, v5, v2}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v1, v0, Landroid/view/WindowInsets;->mWindowDecorInsets:Landroid/graphics/Rect;

    .line 431
    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "o"    # Ljava/lang/Object;

    .line 610
    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    .line 611
    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_3

    instance-of v2, p1, Landroid/view/WindowInsets;

    if-nez v2, :cond_1

    goto :goto_1

    .line 612
    :cond_1
    move-object v2, p1

    check-cast v2, Landroid/view/WindowInsets;

    .line 613
    .local v2, "that":Landroid/view/WindowInsets;
    iget-boolean v3, p0, Landroid/view/WindowInsets;->mIsRound:Z

    iget-boolean v4, v2, Landroid/view/WindowInsets;->mIsRound:Z

    if-ne v3, v4, :cond_2

    iget-boolean v3, p0, Landroid/view/WindowInsets;->mAlwaysConsumeNavBar:Z

    iget-boolean v4, v2, Landroid/view/WindowInsets;->mAlwaysConsumeNavBar:Z

    if-ne v3, v4, :cond_2

    iget-boolean v3, p0, Landroid/view/WindowInsets;->mSystemWindowInsetsConsumed:Z

    iget-boolean v4, v2, Landroid/view/WindowInsets;->mSystemWindowInsetsConsumed:Z

    if-ne v3, v4, :cond_2

    iget-boolean v3, p0, Landroid/view/WindowInsets;->mWindowDecorInsetsConsumed:Z

    iget-boolean v4, v2, Landroid/view/WindowInsets;->mWindowDecorInsetsConsumed:Z

    if-ne v3, v4, :cond_2

    iget-boolean v3, p0, Landroid/view/WindowInsets;->mStableInsetsConsumed:Z

    iget-boolean v4, v2, Landroid/view/WindowInsets;->mStableInsetsConsumed:Z

    if-ne v3, v4, :cond_2

    iget-boolean v3, p0, Landroid/view/WindowInsets;->mDisplayCutoutConsumed:Z

    iget-boolean v4, v2, Landroid/view/WindowInsets;->mDisplayCutoutConsumed:Z

    if-ne v3, v4, :cond_2

    iget-object v3, p0, Landroid/view/WindowInsets;->mSystemWindowInsets:Landroid/graphics/Rect;

    iget-object v4, v2, Landroid/view/WindowInsets;->mSystemWindowInsets:Landroid/graphics/Rect;

    .line 619
    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Landroid/view/WindowInsets;->mWindowDecorInsets:Landroid/graphics/Rect;

    iget-object v4, v2, Landroid/view/WindowInsets;->mWindowDecorInsets:Landroid/graphics/Rect;

    .line 620
    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Landroid/view/WindowInsets;->mStableInsets:Landroid/graphics/Rect;

    iget-object v4, v2, Landroid/view/WindowInsets;->mStableInsets:Landroid/graphics/Rect;

    .line 621
    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Landroid/view/WindowInsets;->mDisplayCutout:Landroid/view/DisplayCutout;

    iget-object v4, v2, Landroid/view/WindowInsets;->mDisplayCutout:Landroid/view/DisplayCutout;

    .line 622
    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    goto :goto_0

    .line 613
    :cond_2
    move v0, v1

    :goto_0
    return v0

    .line 611
    .end local v2    # "that":Landroid/view/WindowInsets;
    :cond_3
    :goto_1
    return v1
.end method

.method public getDisplayCutout()Landroid/view/DisplayCutout;
    .locals 1

    .line 295
    iget-object v0, p0, Landroid/view/WindowInsets;->mDisplayCutout:Landroid/view/DisplayCutout;

    return-object v0
.end method

.method public getStableInsetBottom()I
    .locals 1

    .line 502
    iget-object v0, p0, Landroid/view/WindowInsets;->mStableInsets:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    return v0
.end method

.method public getStableInsetLeft()I
    .locals 1

    .line 472
    iget-object v0, p0, Landroid/view/WindowInsets;->mStableInsets:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    return v0
.end method

.method public getStableInsetRight()I
    .locals 1

    .line 487
    iget-object v0, p0, Landroid/view/WindowInsets;->mStableInsets:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->right:I

    return v0
.end method

.method public getStableInsetTop()I
    .locals 1

    .line 457
    iget-object v0, p0, Landroid/view/WindowInsets;->mStableInsets:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->top:I

    return v0
.end method

.method public getSystemWindowInsetBottom()I
    .locals 1

    .line 189
    iget-object v0, p0, Landroid/view/WindowInsets;->mSystemWindowInsets:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    return v0
.end method

.method public getSystemWindowInsetLeft()I
    .locals 1

    .line 150
    iget-object v0, p0, Landroid/view/WindowInsets;->mSystemWindowInsets:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    return v0
.end method

.method public getSystemWindowInsetRight()I
    .locals 1

    .line 176
    iget-object v0, p0, Landroid/view/WindowInsets;->mSystemWindowInsets:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->right:I

    return v0
.end method

.method public getSystemWindowInsetTop()I
    .locals 1

    .line 163
    iget-object v0, p0, Landroid/view/WindowInsets;->mSystemWindowInsets:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->top:I

    return v0
.end method

.method public getSystemWindowInsets()Landroid/graphics/Rect;
    .locals 2

    .line 128
    iget-object v0, p0, Landroid/view/WindowInsets;->mTempRect:Landroid/graphics/Rect;

    if-nez v0, :cond_0

    .line 129
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/view/WindowInsets;->mTempRect:Landroid/graphics/Rect;

    .line 131
    :cond_0
    iget-object v0, p0, Landroid/view/WindowInsets;->mSystemWindowInsets:Landroid/graphics/Rect;

    if-eqz v0, :cond_1

    .line 132
    iget-object v0, p0, Landroid/view/WindowInsets;->mTempRect:Landroid/graphics/Rect;

    iget-object v1, p0, Landroid/view/WindowInsets;->mSystemWindowInsets:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    goto :goto_0

    .line 135
    :cond_1
    iget-object v0, p0, Landroid/view/WindowInsets;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->setEmpty()V

    .line 137
    :goto_0
    iget-object v0, p0, Landroid/view/WindowInsets;->mTempRect:Landroid/graphics/Rect;

    return-object v0
.end method

.method public getWindowDecorInsetBottom()I
    .locals 1

    .line 245
    iget-object v0, p0, Landroid/view/WindowInsets;->mWindowDecorInsets:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    return v0
.end method

.method public getWindowDecorInsetLeft()I
    .locals 1

    .line 203
    iget-object v0, p0, Landroid/view/WindowInsets;->mWindowDecorInsets:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    return v0
.end method

.method public getWindowDecorInsetRight()I
    .locals 1

    .line 231
    iget-object v0, p0, Landroid/view/WindowInsets;->mWindowDecorInsets:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->right:I

    return v0
.end method

.method public getWindowDecorInsetTop()I
    .locals 1

    .line 217
    iget-object v0, p0, Landroid/view/WindowInsets;->mWindowDecorInsets:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->top:I

    return v0
.end method

.method public hasInsets()Z
    .locals 1

    .line 283
    invoke-virtual {p0}, Landroid/view/WindowInsets;->hasSystemWindowInsets()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Landroid/view/WindowInsets;->hasWindowDecorInsets()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Landroid/view/WindowInsets;->hasStableInsets()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Landroid/view/WindowInsets;->mDisplayCutout:Landroid/view/DisplayCutout;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public hasStableInsets()Z
    .locals 1

    .line 517
    iget-object v0, p0, Landroid/view/WindowInsets;->mStableInsets:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->top:I

    if-nez v0, :cond_1

    iget-object v0, p0, Landroid/view/WindowInsets;->mStableInsets:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    if-nez v0, :cond_1

    iget-object v0, p0, Landroid/view/WindowInsets;->mStableInsets:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->right:I

    if-nez v0, :cond_1

    iget-object v0, p0, Landroid/view/WindowInsets;->mStableInsets:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public hasSystemWindowInsets()Z
    .locals 1

    .line 258
    iget-object v0, p0, Landroid/view/WindowInsets;->mSystemWindowInsets:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    if-nez v0, :cond_1

    iget-object v0, p0, Landroid/view/WindowInsets;->mSystemWindowInsets:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->top:I

    if-nez v0, :cond_1

    iget-object v0, p0, Landroid/view/WindowInsets;->mSystemWindowInsets:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->right:I

    if-nez v0, :cond_1

    iget-object v0, p0, Landroid/view/WindowInsets;->mSystemWindowInsets:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public hasWindowDecorInsets()Z
    .locals 1

    .line 273
    iget-object v0, p0, Landroid/view/WindowInsets;->mWindowDecorInsets:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    if-nez v0, :cond_1

    iget-object v0, p0, Landroid/view/WindowInsets;->mWindowDecorInsets:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->top:I

    if-nez v0, :cond_1

    iget-object v0, p0, Landroid/view/WindowInsets;->mWindowDecorInsets:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->right:I

    if-nez v0, :cond_1

    iget-object v0, p0, Landroid/view/WindowInsets;->mWindowDecorInsets:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public hashCode()I
    .locals 3

    .line 627
    const/16 v0, 0xa

    new-array v0, v0, [Ljava/lang/Object;

    iget-object v1, p0, Landroid/view/WindowInsets;->mSystemWindowInsets:Landroid/graphics/Rect;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v1, p0, Landroid/view/WindowInsets;->mWindowDecorInsets:Landroid/graphics/Rect;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget-object v1, p0, Landroid/view/WindowInsets;->mStableInsets:Landroid/graphics/Rect;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    iget-boolean v1, p0, Landroid/view/WindowInsets;->mIsRound:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/4 v2, 0x3

    aput-object v1, v0, v2

    iget-object v1, p0, Landroid/view/WindowInsets;->mDisplayCutout:Landroid/view/DisplayCutout;

    const/4 v2, 0x4

    aput-object v1, v0, v2

    iget-boolean v1, p0, Landroid/view/WindowInsets;->mAlwaysConsumeNavBar:Z

    .line 628
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/4 v2, 0x5

    aput-object v1, v0, v2

    iget-boolean v1, p0, Landroid/view/WindowInsets;->mSystemWindowInsetsConsumed:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/4 v2, 0x6

    aput-object v1, v0, v2

    iget-boolean v1, p0, Landroid/view/WindowInsets;->mWindowDecorInsetsConsumed:Z

    .line 629
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/4 v2, 0x7

    aput-object v1, v0, v2

    iget-boolean v1, p0, Landroid/view/WindowInsets;->mStableInsetsConsumed:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/16 v2, 0x8

    aput-object v1, v0, v2

    iget-boolean v1, p0, Landroid/view/WindowInsets;->mDisplayCutoutConsumed:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/16 v2, 0x9

    aput-object v1, v0, v2

    .line 627
    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public inset(IIII)Landroid/view/WindowInsets;
    .locals 2
    .param p1, "left"    # I
    .param p2, "top"    # I
    .param p3, "right"    # I
    .param p4, "bottom"    # I

    .line 582
    invoke-static {p1}, Lcom/android/internal/util/Preconditions;->checkArgumentNonnegative(I)I

    .line 583
    invoke-static {p2}, Lcom/android/internal/util/Preconditions;->checkArgumentNonnegative(I)I

    .line 584
    invoke-static {p3}, Lcom/android/internal/util/Preconditions;->checkArgumentNonnegative(I)I

    .line 585
    invoke-static {p4}, Lcom/android/internal/util/Preconditions;->checkArgumentNonnegative(I)I

    .line 587
    new-instance v0, Landroid/view/WindowInsets;

    invoke-direct {v0, p0}, Landroid/view/WindowInsets;-><init>(Landroid/view/WindowInsets;)V

    .line 588
    .local v0, "result":Landroid/view/WindowInsets;
    iget-boolean v1, v0, Landroid/view/WindowInsets;->mSystemWindowInsetsConsumed:Z

    if-nez v1, :cond_0

    .line 589
    iget-object v1, v0, Landroid/view/WindowInsets;->mSystemWindowInsets:Landroid/graphics/Rect;

    .line 590
    invoke-static {v1, p1, p2, p3, p4}, Landroid/view/WindowInsets;->insetInsets(Landroid/graphics/Rect;IIII)Landroid/graphics/Rect;

    move-result-object v1

    iput-object v1, v0, Landroid/view/WindowInsets;->mSystemWindowInsets:Landroid/graphics/Rect;

    .line 592
    :cond_0
    iget-boolean v1, v0, Landroid/view/WindowInsets;->mWindowDecorInsetsConsumed:Z

    if-nez v1, :cond_1

    .line 593
    iget-object v1, v0, Landroid/view/WindowInsets;->mWindowDecorInsets:Landroid/graphics/Rect;

    .line 594
    invoke-static {v1, p1, p2, p3, p4}, Landroid/view/WindowInsets;->insetInsets(Landroid/graphics/Rect;IIII)Landroid/graphics/Rect;

    move-result-object v1

    iput-object v1, v0, Landroid/view/WindowInsets;->mWindowDecorInsets:Landroid/graphics/Rect;

    .line 596
    :cond_1
    iget-boolean v1, v0, Landroid/view/WindowInsets;->mStableInsetsConsumed:Z

    if-nez v1, :cond_2

    .line 597
    iget-object v1, v0, Landroid/view/WindowInsets;->mStableInsets:Landroid/graphics/Rect;

    invoke-static {v1, p1, p2, p3, p4}, Landroid/view/WindowInsets;->insetInsets(Landroid/graphics/Rect;IIII)Landroid/graphics/Rect;

    move-result-object v1

    iput-object v1, v0, Landroid/view/WindowInsets;->mStableInsets:Landroid/graphics/Rect;

    .line 599
    :cond_2
    iget-object v1, p0, Landroid/view/WindowInsets;->mDisplayCutout:Landroid/view/DisplayCutout;

    if-eqz v1, :cond_3

    .line 600
    iget-object v1, v0, Landroid/view/WindowInsets;->mDisplayCutout:Landroid/view/DisplayCutout;

    invoke-virtual {v1, p1, p2, p3, p4}, Landroid/view/DisplayCutout;->inset(IIII)Landroid/view/DisplayCutout;

    move-result-object v1

    iput-object v1, v0, Landroid/view/WindowInsets;->mDisplayCutout:Landroid/view/DisplayCutout;

    .line 601
    iget-object v1, v0, Landroid/view/WindowInsets;->mDisplayCutout:Landroid/view/DisplayCutout;

    invoke-virtual {v1}, Landroid/view/DisplayCutout;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 602
    const/4 v1, 0x0

    iput-object v1, v0, Landroid/view/WindowInsets;->mDisplayCutout:Landroid/view/DisplayCutout;

    .line 605
    :cond_3
    return-object v0
.end method

.method public inset(Landroid/graphics/Rect;)Landroid/view/WindowInsets;
    .locals 4
    .param p1, "r"    # Landroid/graphics/Rect;

    .line 557
    iget v0, p1, Landroid/graphics/Rect;->left:I

    iget v1, p1, Landroid/graphics/Rect;->top:I

    iget v2, p1, Landroid/graphics/Rect;->right:I

    iget v3, p1, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {p0, v0, v1, v2, v3}, Landroid/view/WindowInsets;->inset(IIII)Landroid/view/WindowInsets;

    move-result-object v0

    return-object v0
.end method

.method public isConsumed()Z
    .locals 1

    .line 325
    iget-boolean v0, p0, Landroid/view/WindowInsets;->mSystemWindowInsetsConsumed:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Landroid/view/WindowInsets;->mWindowDecorInsetsConsumed:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Landroid/view/WindowInsets;->mStableInsetsConsumed:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Landroid/view/WindowInsets;->mDisplayCutoutConsumed:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isRound()Z
    .locals 1

    .line 340
    iget-boolean v0, p0, Landroid/view/WindowInsets;->mIsRound:Z

    return v0
.end method

.method isSystemWindowInsetsConsumed()Z
    .locals 1

    .line 647
    iget-boolean v0, p0, Landroid/view/WindowInsets;->mSystemWindowInsetsConsumed:Z

    return v0
.end method

.method public replaceSystemWindowInsets(IIII)Landroid/view/WindowInsets;
    .locals 2
    .param p1, "left"    # I
    .param p2, "top"    # I
    .param p3, "right"    # I
    .param p4, "bottom"    # I

    .line 391
    new-instance v0, Landroid/view/WindowInsets;

    invoke-direct {v0, p0}, Landroid/view/WindowInsets;-><init>(Landroid/view/WindowInsets;)V

    .line 392
    .local v0, "result":Landroid/view/WindowInsets;
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1, p1, p2, p3, p4}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v1, v0, Landroid/view/WindowInsets;->mSystemWindowInsets:Landroid/graphics/Rect;

    .line 393
    return-object v0
.end method

.method public replaceSystemWindowInsets(Landroid/graphics/Rect;)Landroid/view/WindowInsets;
    .locals 2
    .param p1, "systemWindowInsets"    # Landroid/graphics/Rect;

    .line 405
    new-instance v0, Landroid/view/WindowInsets;

    invoke-direct {v0, p0}, Landroid/view/WindowInsets;-><init>(Landroid/view/WindowInsets;)V

    .line 406
    .local v0, "result":Landroid/view/WindowInsets;
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1, p1}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    iput-object v1, v0, Landroid/view/WindowInsets;->mSystemWindowInsets:Landroid/graphics/Rect;

    .line 407
    return-object v0
.end method

.method public replaceWindowDecorInsets(IIII)Landroid/view/WindowInsets;
    .locals 2
    .param p1, "left"    # I
    .param p2, "top"    # I
    .param p3, "right"    # I
    .param p4, "bottom"    # I

    .line 440
    new-instance v0, Landroid/view/WindowInsets;

    invoke-direct {v0, p0}, Landroid/view/WindowInsets;-><init>(Landroid/view/WindowInsets;)V

    .line 441
    .local v0, "result":Landroid/view/WindowInsets;
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1, p1, p2, p3, p4}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v1, v0, Landroid/view/WindowInsets;->mWindowDecorInsets:Landroid/graphics/Rect;

    .line 442
    return-object v0
.end method

.method public shouldAlwaysConsumeNavBar()Z
    .locals 1

    .line 537
    iget-boolean v0, p0, Landroid/view/WindowInsets;->mAlwaysConsumeNavBar:Z

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 542
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "WindowInsets{systemWindowInsets="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroid/view/WindowInsets;->mSystemWindowInsets:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " windowDecorInsets="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroid/view/WindowInsets;->mWindowDecorInsets:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " stableInsets="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroid/view/WindowInsets;->mStableInsets:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 545
    iget-object v1, p0, Landroid/view/WindowInsets;->mDisplayCutout:Landroid/view/DisplayCutout;

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " cutout="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Landroid/view/WindowInsets;->mDisplayCutout:Landroid/view/DisplayCutout;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_0
    const-string v1, ""

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 546
    invoke-virtual {p0}, Landroid/view/WindowInsets;->isRound()Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, " round"

    goto :goto_1

    :cond_1
    const-string v1, ""

    :goto_1
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 542
    return-object v0
.end method
