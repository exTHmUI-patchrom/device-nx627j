.class public Landroid/view/ViewConfiguration;
.super Ljava/lang/Object;
.source "ViewConfiguration.java"


# static fields
.field private static final A11Y_SHORTCUT_KEY_TIMEOUT:I = 0xbb8

.field private static final A11Y_SHORTCUT_KEY_TIMEOUT_AFTER_CONFIRMATION:I = 0x3e8

.field private static final ACTION_MODE_HIDE_DURATION_DEFAULT:J = 0x7d0L

.field private static final DEFAULT_LONG_PRESS_TIMEOUT:I = 0x1f4

.field private static final DEFAULT_MULTI_PRESS_TIMEOUT:I = 0x12c

.field private static final DOUBLE_TAP_MIN_TIME:I = 0x28

.field private static final DOUBLE_TAP_SLOP:I = 0x64

.field private static final DOUBLE_TAP_TIMEOUT:I = 0x12c

.field private static final DOUBLE_TAP_TOUCH_SLOP:I = 0x8

.field private static final EDGE_SLOP:I = 0xc

.field private static final FADING_EDGE_LENGTH:I = 0xc

.field private static final GLOBAL_ACTIONS_KEY_TIMEOUT:I = 0x1f4

.field private static final HAS_PERMANENT_MENU_KEY_AUTODETECT:I = 0x0

.field private static final HAS_PERMANENT_MENU_KEY_FALSE:I = 0x2

.field private static final HAS_PERMANENT_MENU_KEY_TRUE:I = 0x1

.field private static final HORIZONTAL_SCROLL_FACTOR:F = 64.0f

.field private static final HOVER_TAP_SLOP:I = 0x14

.field private static final HOVER_TAP_TIMEOUT:I = 0x96

.field private static final HOVER_TOOLTIP_HIDE_SHORT_TIMEOUT:I = 0xbb8

.field private static final HOVER_TOOLTIP_HIDE_TIMEOUT:I = 0x3a98

.field private static final HOVER_TOOLTIP_SHOW_TIMEOUT:I = 0x1f4

.field private static final JUMP_TAP_TIMEOUT:I = 0x1f4

.field private static final KEY_REPEAT_DELAY:I = 0x32

.field private static final LONG_PRESS_TOOLTIP_HIDE_TIMEOUT:I = 0x5dc

.field private static final MAXIMUM_DRAWING_CACHE_SIZE:I = 0x177000
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field private static final MAXIMUM_FLING_VELOCITY:I = 0x1f40

.field private static final MINIMUM_FLING_VELOCITY:I = 0x32

.field private static final MIN_SCROLLBAR_TOUCH_TARGET:I = 0x30

.field private static final OVERFLING_DISTANCE:I = 0x6

.field private static final OVERSCROLL_DISTANCE:I = 0x0

.field private static final PAGING_TOUCH_SLOP:I = 0x10

.field private static final PRESSED_STATE_DURATION:I = 0x40

.field private static final SCROLL_BAR_DEFAULT_DELAY:I = 0x12c

.field private static final SCROLL_BAR_FADE_DURATION:I = 0xfa

.field private static final SCROLL_BAR_SIZE:I = 0x4

.field private static final SCROLL_FRICTION:F = 0.015f

.field private static final SEND_RECURRING_ACCESSIBILITY_EVENTS_INTERVAL_MILLIS:J = 0x64L

.field private static final TAP_TIMEOUT:I = 0x64

.field private static final TOUCH_SLOP:I = 0x8

.field private static final VERTICAL_SCROLL_FACTOR:F = 64.0f

.field private static final WINDOW_TOUCH_SLOP:I = 0x10

.field private static final ZOOM_CONTROLS_TIMEOUT:I = 0xbb8

.field static final sConfigurations:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/view/ViewConfiguration;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final mDoubleTapSlop:I

.field private final mDoubleTapTouchSlop:I

.field private final mEdgeSlop:I

.field private final mFadingEdgeLength:I

.field private final mFadingMarqueeEnabled:Z

.field private final mGlobalActionsKeyTimeout:J

.field private final mHorizontalScrollFactor:F

.field private final mHoverSlop:I

.field private final mMaximumDrawingCacheSize:I

.field private final mMaximumFlingVelocity:I

.field private final mMinScrollbarTouchTarget:I

.field private final mMinimumFlingVelocity:I

.field private final mOverflingDistance:I

.field private final mOverscrollDistance:I

.field private final mPagingTouchSlop:I

.field private final mScrollbarSize:I

.field private final mShowMenuShortcutsWhenKeyboardPresent:Z

.field private final mTouchSlop:I

.field private final mVerticalScrollFactor:F

.field private final mWindowTouchSlop:I

.field private sHasPermanentMenuKey:Z

.field private sHasPermanentMenuKeySet:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 311
    new-instance v0, Landroid/util/SparseArray;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Landroid/util/SparseArray;-><init>(I)V

    sput-object v0, Landroid/view/ViewConfiguration;->sConfigurations:Landroid/util/SparseArray;

    return-void
.end method

.method public constructor <init>()V
    .locals 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 318
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 319
    const/16 v0, 0xc

    iput v0, p0, Landroid/view/ViewConfiguration;->mEdgeSlop:I

    .line 320
    iput v0, p0, Landroid/view/ViewConfiguration;->mFadingEdgeLength:I

    .line 321
    const/16 v0, 0x32

    iput v0, p0, Landroid/view/ViewConfiguration;->mMinimumFlingVelocity:I

    .line 322
    const/16 v0, 0x1f40

    iput v0, p0, Landroid/view/ViewConfiguration;->mMaximumFlingVelocity:I

    .line 323
    const/4 v0, 0x4

    iput v0, p0, Landroid/view/ViewConfiguration;->mScrollbarSize:I

    .line 324
    const/16 v1, 0x8

    iput v1, p0, Landroid/view/ViewConfiguration;->mTouchSlop:I

    .line 325
    iput v0, p0, Landroid/view/ViewConfiguration;->mHoverSlop:I

    .line 326
    const/16 v0, 0x30

    iput v0, p0, Landroid/view/ViewConfiguration;->mMinScrollbarTouchTarget:I

    .line 327
    iput v1, p0, Landroid/view/ViewConfiguration;->mDoubleTapTouchSlop:I

    .line 328
    const/16 v0, 0x10

    iput v0, p0, Landroid/view/ViewConfiguration;->mPagingTouchSlop:I

    .line 329
    const/16 v1, 0x64

    iput v1, p0, Landroid/view/ViewConfiguration;->mDoubleTapSlop:I

    .line 330
    iput v0, p0, Landroid/view/ViewConfiguration;->mWindowTouchSlop:I

    .line 332
    const v0, 0x177000

    iput v0, p0, Landroid/view/ViewConfiguration;->mMaximumDrawingCacheSize:I

    .line 333
    const/4 v0, 0x0

    iput v0, p0, Landroid/view/ViewConfiguration;->mOverscrollDistance:I

    .line 334
    const/4 v1, 0x6

    iput v1, p0, Landroid/view/ViewConfiguration;->mOverflingDistance:I

    .line 335
    const/4 v1, 0x1

    iput-boolean v1, p0, Landroid/view/ViewConfiguration;->mFadingMarqueeEnabled:Z

    .line 336
    const-wide/16 v1, 0x1f4

    iput-wide v1, p0, Landroid/view/ViewConfiguration;->mGlobalActionsKeyTimeout:J

    .line 337
    const/high16 v1, 0x42800000    # 64.0f

    iput v1, p0, Landroid/view/ViewConfiguration;->mHorizontalScrollFactor:F

    .line 338
    iput v1, p0, Landroid/view/ViewConfiguration;->mVerticalScrollFactor:F

    .line 339
    iput-boolean v0, p0, Landroid/view/ViewConfiguration;->mShowMenuShortcutsWhenKeyboardPresent:Z

    .line 340
    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 13
    .param p1, "context"    # Landroid/content/Context;

    .line 352
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 353
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 354
    .local v0, "res":Landroid/content/res/Resources;
    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    .line 355
    .local v1, "metrics":Landroid/util/DisplayMetrics;
    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    .line 356
    .local v2, "config":Landroid/content/res/Configuration;
    iget v3, v1, Landroid/util/DisplayMetrics;->density:F

    .line 358
    .local v3, "density":F
    const/4 v4, 0x4

    invoke-virtual {v2, v4}, Landroid/content/res/Configuration;->isLayoutSizeAtLeast(I)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 359
    const/high16 v5, 0x3fc00000    # 1.5f

    mul-float/2addr v5, v3

    .line 359
    .local v5, "sizeAndDensity":F
    goto :goto_0

    .line 361
    .end local v5    # "sizeAndDensity":F
    :cond_0
    move v5, v3

    .line 364
    .restart local v5    # "sizeAndDensity":F
    :goto_0
    const/high16 v6, 0x41400000    # 12.0f

    mul-float v7, v5, v6

    const/high16 v8, 0x3f000000    # 0.5f

    add-float/2addr v7, v8

    float-to-int v7, v7

    iput v7, p0, Landroid/view/ViewConfiguration;->mEdgeSlop:I

    .line 365
    mul-float/2addr v6, v5

    add-float/2addr v6, v8

    float-to-int v6, v6

    iput v6, p0, Landroid/view/ViewConfiguration;->mFadingEdgeLength:I

    .line 366
    const v6, 0x1050050

    invoke-virtual {v0, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v6

    iput v6, p0, Landroid/view/ViewConfiguration;->mScrollbarSize:I

    .line 368
    const/high16 v6, 0x42c80000    # 100.0f

    mul-float/2addr v6, v5

    add-float/2addr v6, v8

    float-to-int v6, v6

    iput v6, p0, Landroid/view/ViewConfiguration;->mDoubleTapSlop:I

    .line 369
    const/high16 v6, 0x41800000    # 16.0f

    mul-float/2addr v6, v5

    add-float/2addr v6, v8

    float-to-int v6, v6

    iput v6, p0, Landroid/view/ViewConfiguration;->mWindowTouchSlop:I

    .line 372
    const-string/jumbo v6, "window"

    invoke-virtual {p1, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/view/WindowManager;

    .line 373
    .local v6, "win":Landroid/view/WindowManager;
    invoke-interface {v6}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v7

    .line 374
    .local v7, "display":Landroid/view/Display;
    new-instance v9, Landroid/graphics/Point;

    invoke-direct {v9}, Landroid/graphics/Point;-><init>()V

    .line 375
    .local v9, "size":Landroid/graphics/Point;
    invoke-virtual {v7, v9}, Landroid/view/Display;->getRealSize(Landroid/graphics/Point;)V

    .line 376
    iget v10, v9, Landroid/graphics/Point;->x:I

    mul-int/2addr v4, v10

    iget v10, v9, Landroid/graphics/Point;->y:I

    mul-int/2addr v4, v10

    iput v4, p0, Landroid/view/ViewConfiguration;->mMaximumDrawingCacheSize:I

    .line 378
    const/4 v4, 0x0

    mul-float/2addr v4, v5

    add-float/2addr v4, v8

    float-to-int v4, v4

    iput v4, p0, Landroid/view/ViewConfiguration;->mOverscrollDistance:I

    .line 379
    const/high16 v4, 0x40c00000    # 6.0f

    mul-float/2addr v4, v5

    add-float/2addr v4, v8

    float-to-int v4, v4

    iput v4, p0, Landroid/view/ViewConfiguration;->mOverflingDistance:I

    .line 381
    iget-boolean v4, p0, Landroid/view/ViewConfiguration;->sHasPermanentMenuKeySet:Z

    if-nez v4, :cond_1

    .line 382
    const v4, 0x10e0085

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v4

    .line 385
    .local v4, "configVal":I
    const/4 v8, 0x0

    const/4 v10, 0x1

    packed-switch v4, :pswitch_data_0

    .line 388
    invoke-static {}, Landroid/view/WindowManagerGlobal;->getWindowManagerService()Landroid/view/IWindowManager;

    move-result-object v11

    goto :goto_1

    .line 404
    :pswitch_0
    iput-boolean v8, p0, Landroid/view/ViewConfiguration;->sHasPermanentMenuKey:Z

    .line 405
    iput-boolean v10, p0, Landroid/view/ViewConfiguration;->sHasPermanentMenuKeySet:Z

    .line 405
    .end local v4    # "configVal":I
    goto :goto_3

    .line 399
    .restart local v4    # "configVal":I
    :pswitch_1
    iput-boolean v10, p0, Landroid/view/ViewConfiguration;->sHasPermanentMenuKey:Z

    .line 400
    iput-boolean v10, p0, Landroid/view/ViewConfiguration;->sHasPermanentMenuKeySet:Z

    .line 401
    goto :goto_3

    .line 388
    :goto_1
    nop

    .line 390
    .local v11, "wm":Landroid/view/IWindowManager;
    :try_start_0
    invoke-interface {v11}, Landroid/view/IWindowManager;->hasNavigationBar()Z

    move-result v12

    xor-int/2addr v12, v10

    iput-boolean v12, p0, Landroid/view/ViewConfiguration;->sHasPermanentMenuKey:Z

    .line 391
    iput-boolean v10, p0, Landroid/view/ViewConfiguration;->sHasPermanentMenuKeySet:Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 394
    goto :goto_2

    .line 392
    :catch_0
    move-exception v10

    .line 393
    .local v10, "ex":Landroid/os/RemoteException;
    iput-boolean v8, p0, Landroid/view/ViewConfiguration;->sHasPermanentMenuKey:Z

    .line 396
    .end local v10    # "ex":Landroid/os/RemoteException;
    .end local v11    # "wm":Landroid/view/IWindowManager;
    :goto_2
    nop

    .line 410
    .end local v4    # "configVal":I
    :cond_1
    :goto_3
    const v4, 0x11200c8

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v4

    iput-boolean v4, p0, Landroid/view/ViewConfiguration;->mFadingMarqueeEnabled:Z

    .line 412
    const v4, 0x1050053

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    iput v4, p0, Landroid/view/ViewConfiguration;->mTouchSlop:I

    .line 414
    const v4, 0x1050052

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    iput v4, p0, Landroid/view/ViewConfiguration;->mHoverSlop:I

    .line 416
    const v4, 0x1050046

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    iput v4, p0, Landroid/view/ViewConfiguration;->mMinScrollbarTouchTarget:I

    .line 418
    iget v4, p0, Landroid/view/ViewConfiguration;->mTouchSlop:I

    mul-int/lit8 v4, v4, 0x2

    iput v4, p0, Landroid/view/ViewConfiguration;->mPagingTouchSlop:I

    .line 420
    iget v4, p0, Landroid/view/ViewConfiguration;->mTouchSlop:I

    iput v4, p0, Landroid/view/ViewConfiguration;->mDoubleTapTouchSlop:I

    .line 422
    const v4, 0x1050055

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    iput v4, p0, Landroid/view/ViewConfiguration;->mMinimumFlingVelocity:I

    .line 424
    const v4, 0x1050054

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    iput v4, p0, Landroid/view/ViewConfiguration;->mMaximumFlingVelocity:I

    .line 426
    const v4, 0x10e004b

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v4

    int-to-long v10, v4

    iput-wide v10, p0, Landroid/view/ViewConfiguration;->mGlobalActionsKeyTimeout:J

    .line 429
    const v4, 0x1050041

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    int-to-float v4, v4

    iput v4, p0, Landroid/view/ViewConfiguration;->mHorizontalScrollFactor:F

    .line 431
    const v4, 0x1050051

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    int-to-float v4, v4

    iput v4, p0, Landroid/view/ViewConfiguration;->mVerticalScrollFactor:F

    .line 434
    const v4, 0x11200a2

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v4

    iput-boolean v4, p0, Landroid/view/ViewConfiguration;->mShowMenuShortcutsWhenKeyboardPresent:Z

    .line 437
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static get(Landroid/content/Context;)Landroid/view/ViewConfiguration;
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .line 447
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 448
    .local v0, "metrics":Landroid/util/DisplayMetrics;
    iget v1, v0, Landroid/util/DisplayMetrics;->density:F

    const/high16 v2, 0x42c80000    # 100.0f

    mul-float/2addr v2, v1

    float-to-int v1, v2

    .line 450
    .local v1, "density":I
    sget-object v2, Landroid/view/ViewConfiguration;->sConfigurations:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/ViewConfiguration;

    .line 451
    .local v2, "configuration":Landroid/view/ViewConfiguration;
    if-nez v2, :cond_0

    .line 452
    new-instance v3, Landroid/view/ViewConfiguration;

    invoke-direct {v3, p0}, Landroid/view/ViewConfiguration;-><init>(Landroid/content/Context;)V

    move-object v2, v3

    .line 453
    sget-object v3, Landroid/view/ViewConfiguration;->sConfigurations:Landroid/util/SparseArray;

    invoke-virtual {v3, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 456
    :cond_0
    return-object v2
.end method

.method public static getDefaultActionModeHideDuration()J
    .locals 2

    .line 899
    const-wide/16 v0, 0x7d0

    return-wide v0
.end method

.method public static getDoubleTapMinTime()I
    .locals 1

    .line 593
    const/16 v0, 0x28

    return v0
.end method

.method public static getDoubleTapSlop()I
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 686
    const/16 v0, 0x64

    return v0
.end method

.method public static getDoubleTapTimeout()I
    .locals 1

    .line 582
    const/16 v0, 0x12c

    return v0
.end method

.method public static getEdgeSlop()I
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 624
    const/16 v0, 0xc

    return v0
.end method

.method public static getFadingEdgeLength()I
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 507
    const/16 v0, 0xc

    return v0
.end method

.method public static getGlobalActionKeyTimeout()J
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 849
    const-wide/16 v0, 0x1f4

    return-wide v0
.end method

.method public static getHoverTapSlop()I
    .locals 1

    .line 613
    const/16 v0, 0x14

    return v0
.end method

.method public static getHoverTapTimeout()I
    .locals 1

    .line 603
    const/16 v0, 0x96

    return v0
.end method

.method public static getHoverTooltipHideShortTimeout()I
    .locals 1

    .line 971
    const/16 v0, 0xbb8

    return v0
.end method

.method public static getHoverTooltipHideTimeout()I
    .locals 1

    .line 961
    const/16 v0, 0x3a98

    return v0
.end method

.method public static getHoverTooltipShowTimeout()I
    .locals 1

    .line 951
    const/16 v0, 0x1f4

    return v0
.end method

.method public static getJumpTapTimeout()I
    .locals 1

    .line 573
    const/16 v0, 0x1f4

    return v0
.end method

.method public static getKeyRepeatDelay()I
    .locals 1

    .line 555
    const/16 v0, 0x32

    return v0
.end method

.method public static getKeyRepeatTimeout()I
    .locals 1

    .line 548
    invoke-static {}, Landroid/view/ViewConfiguration;->getLongPressTimeout()I

    move-result v0

    return v0
.end method

.method public static getLongPressTimeout()I
    .locals 2

    .line 530
    const-string/jumbo v0, "long_press_timeout"

    const/16 v1, 0x1f4

    invoke-static {v0, v1}, Landroid/app/AppGlobals;->getIntCoreSetting(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public static getLongPressTooltipHideTimeout()I
    .locals 1

    .line 942
    const/16 v0, 0x5dc

    return v0
.end method

.method public static getMaximumDrawingCacheSize()I
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 800
    const v0, 0x177000

    return v0
.end method

.method public static getMaximumFlingVelocity()I
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 754
    const/16 v0, 0x1f40

    return v0
.end method

.method public static getMinimumFlingVelocity()I
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 737
    const/16 v0, 0x32

    return v0
.end method

.method public static getMultiPressTimeout()I
    .locals 2

    .line 540
    const-string/jumbo v0, "multi_press_timeout"

    const/16 v1, 0x12c

    invoke-static {v0, v1}, Landroid/app/AppGlobals;->getIntCoreSetting(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public static getPressedStateDuration()I
    .locals 1

    .line 522
    const/16 v0, 0x40

    return v0
.end method

.method public static getScrollBarFadeDuration()I
    .locals 1

    .line 490
    const/16 v0, 0xfa

    return v0
.end method

.method public static getScrollBarSize()I
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 467
    const/4 v0, 0x4

    return v0
.end method

.method public static getScrollDefaultDelay()I
    .locals 1

    .line 497
    const/16 v0, 0x12c

    return v0
.end method

.method public static getScrollFriction()F
    .locals 1

    .line 892
    const v0, 0x3c75c28f    # 0.015f

    return v0
.end method

.method public static getSendRecurringAccessibilityEventsInterval()J
    .locals 2

    .line 707
    const-wide/16 v0, 0x64

    return-wide v0
.end method

.method public static getTapTimeout()I
    .locals 1

    .line 564
    const/16 v0, 0x64

    return v0
.end method

.method public static getTouchSlop()I
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 642
    const/16 v0, 0x8

    return v0
.end method

.method public static getWindowTouchSlop()I
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 719
    const/16 v0, 0x10

    return v0
.end method

.method public static getZoomControlsTimeout()J
    .locals 2

    .line 836
    const-wide/16 v0, 0xbb8

    return-wide v0
.end method


# virtual methods
.method public getAccessibilityShortcutKeyTimeout()J
    .locals 2

    .line 873
    const-wide/16 v0, 0xbb8

    return-wide v0
.end method

.method public getAccessibilityShortcutKeyTimeoutAfterConfirmation()J
    .locals 2

    .line 882
    const-wide/16 v0, 0x3e8

    return-wide v0
.end method

.method public getDeviceGlobalActionKeyTimeout()J
    .locals 2

    .line 861
    iget-wide v0, p0, Landroid/view/ViewConfiguration;->mGlobalActionsKeyTimeout:J

    return-wide v0
.end method

.method public getScaledDoubleTapSlop()I
    .locals 1

    .line 694
    iget v0, p0, Landroid/view/ViewConfiguration;->mDoubleTapSlop:I

    return v0
.end method

.method public getScaledDoubleTapTouchSlop()I
    .locals 1

    .line 666
    iget v0, p0, Landroid/view/ViewConfiguration;->mDoubleTapTouchSlop:I

    return v0
.end method

.method public getScaledEdgeSlop()I
    .locals 1

    .line 632
    iget v0, p0, Landroid/view/ViewConfiguration;->mEdgeSlop:I

    return v0
.end method

.method public getScaledFadingEdgeLength()I
    .locals 1

    .line 514
    iget v0, p0, Landroid/view/ViewConfiguration;->mFadingEdgeLength:I

    return v0
.end method

.method public getScaledHorizontalScrollFactor()F
    .locals 1

    .line 779
    iget v0, p0, Landroid/view/ViewConfiguration;->mHorizontalScrollFactor:F

    return v0
.end method

.method public getScaledHoverSlop()I
    .locals 1

    .line 657
    iget v0, p0, Landroid/view/ViewConfiguration;->mHoverSlop:I

    return v0
.end method

.method public getScaledMaximumDrawingCacheSize()I
    .locals 1

    .line 809
    iget v0, p0, Landroid/view/ViewConfiguration;->mMaximumDrawingCacheSize:I

    return v0
.end method

.method public getScaledMaximumFlingVelocity()I
    .locals 1

    .line 761
    iget v0, p0, Landroid/view/ViewConfiguration;->mMaximumFlingVelocity:I

    return v0
.end method

.method public getScaledMinScrollbarTouchTarget()I
    .locals 1

    .line 483
    iget v0, p0, Landroid/view/ViewConfiguration;->mMinScrollbarTouchTarget:I

    return v0
.end method

.method public getScaledMinimumFlingVelocity()I
    .locals 1

    .line 744
    iget v0, p0, Landroid/view/ViewConfiguration;->mMinimumFlingVelocity:I

    return v0
.end method

.method public getScaledOverflingDistance()I
    .locals 1

    .line 825
    iget v0, p0, Landroid/view/ViewConfiguration;->mOverflingDistance:I

    return v0
.end method

.method public getScaledOverscrollDistance()I
    .locals 1

    .line 817
    iget v0, p0, Landroid/view/ViewConfiguration;->mOverscrollDistance:I

    return v0
.end method

.method public getScaledPagingTouchSlop()I
    .locals 1

    .line 674
    iget v0, p0, Landroid/view/ViewConfiguration;->mPagingTouchSlop:I

    return v0
.end method

.method public getScaledScrollBarSize()I
    .locals 1

    .line 475
    iget v0, p0, Landroid/view/ViewConfiguration;->mScrollbarSize:I

    return v0
.end method

.method public getScaledScrollFactor()I
    .locals 1

    .line 771
    iget v0, p0, Landroid/view/ViewConfiguration;->mVerticalScrollFactor:F

    float-to-int v0, v0

    return v0
.end method

.method public getScaledTouchSlop()I
    .locals 1

    .line 649
    iget v0, p0, Landroid/view/ViewConfiguration;->mTouchSlop:I

    return v0
.end method

.method public getScaledVerticalScrollFactor()F
    .locals 1

    .line 787
    iget v0, p0, Landroid/view/ViewConfiguration;->mVerticalScrollFactor:F

    return v0
.end method

.method public getScaledWindowTouchSlop()I
    .locals 1

    .line 727
    iget v0, p0, Landroid/view/ViewConfiguration;->mWindowTouchSlop:I

    return v0
.end method

.method public hasPermanentMenuKey()Z
    .locals 1

    .line 915
    iget-boolean v0, p0, Landroid/view/ViewConfiguration;->sHasPermanentMenuKey:Z

    return v0
.end method

.method public isFadingMarqueeEnabled()Z
    .locals 1

    .line 932
    iget-boolean v0, p0, Landroid/view/ViewConfiguration;->mFadingMarqueeEnabled:Z

    return v0
.end method

.method public shouldShowMenuShortcutsWhenKeyboardPresent()Z
    .locals 1

    .line 924
    iget-boolean v0, p0, Landroid/view/ViewConfiguration;->mShowMenuShortcutsWhenKeyboardPresent:Z

    return v0
.end method
