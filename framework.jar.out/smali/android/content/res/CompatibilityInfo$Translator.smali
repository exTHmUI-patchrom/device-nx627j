.class public Landroid/content/res/CompatibilityInfo$Translator;
.super Ljava/lang/Object;
.source "CompatibilityInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/content/res/CompatibilityInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "Translator"
.end annotation


# instance fields
.field public final applicationInvertedScale:F

.field public final applicationScale:F

.field private mContentInsetsBuffer:Landroid/graphics/Rect;

.field private mTouchableAreaBuffer:Landroid/graphics/Region;

.field private mVisibleInsetsBuffer:Landroid/graphics/Rect;

.field final synthetic this$0:Landroid/content/res/CompatibilityInfo;


# direct methods
.method constructor <init>(Landroid/content/res/CompatibilityInfo;)V
    .locals 2
    .param p1, "this$0"    # Landroid/content/res/CompatibilityInfo;

    .line 338
    iget v0, p1, Landroid/content/res/CompatibilityInfo;->applicationScale:F

    iget v1, p1, Landroid/content/res/CompatibilityInfo;->applicationInvertedScale:F

    invoke-direct {p0, p1, v0, v1}, Landroid/content/res/CompatibilityInfo$Translator;-><init>(Landroid/content/res/CompatibilityInfo;FF)V

    .line 340
    return-void
.end method

.method constructor <init>(Landroid/content/res/CompatibilityInfo;FF)V
    .locals 1
    .param p1, "this$0"    # Landroid/content/res/CompatibilityInfo;
    .param p2, "applicationScale"    # F
    .param p3, "applicationInvertedScale"    # F

    .line 332
    iput-object p1, p0, Landroid/content/res/CompatibilityInfo$Translator;->this$0:Landroid/content/res/CompatibilityInfo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 328
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/content/res/CompatibilityInfo$Translator;->mContentInsetsBuffer:Landroid/graphics/Rect;

    .line 329
    iput-object v0, p0, Landroid/content/res/CompatibilityInfo$Translator;->mVisibleInsetsBuffer:Landroid/graphics/Rect;

    .line 330
    iput-object v0, p0, Landroid/content/res/CompatibilityInfo$Translator;->mTouchableAreaBuffer:Landroid/graphics/Region;

    .line 333
    iput p2, p0, Landroid/content/res/CompatibilityInfo$Translator;->applicationScale:F

    .line 334
    iput p3, p0, Landroid/content/res/CompatibilityInfo$Translator;->applicationInvertedScale:F

    .line 335
    return-void
.end method


# virtual methods
.method public getTranslatedContentInsets(Landroid/graphics/Rect;)Landroid/graphics/Rect;
    .locals 1
    .param p1, "contentInsets"    # Landroid/graphics/Rect;

    .line 435
    iget-object v0, p0, Landroid/content/res/CompatibilityInfo$Translator;->mContentInsetsBuffer:Landroid/graphics/Rect;

    if-nez v0, :cond_0

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/content/res/CompatibilityInfo$Translator;->mContentInsetsBuffer:Landroid/graphics/Rect;

    .line 436
    :cond_0
    iget-object v0, p0, Landroid/content/res/CompatibilityInfo$Translator;->mContentInsetsBuffer:Landroid/graphics/Rect;

    invoke-virtual {v0, p1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 437
    iget-object v0, p0, Landroid/content/res/CompatibilityInfo$Translator;->mContentInsetsBuffer:Landroid/graphics/Rect;

    invoke-virtual {p0, v0}, Landroid/content/res/CompatibilityInfo$Translator;->translateRectInAppWindowToScreen(Landroid/graphics/Rect;)V

    .line 438
    iget-object v0, p0, Landroid/content/res/CompatibilityInfo$Translator;->mContentInsetsBuffer:Landroid/graphics/Rect;

    return-object v0
.end method

.method public getTranslatedTouchableArea(Landroid/graphics/Region;)Landroid/graphics/Region;
    .locals 2
    .param p1, "touchableArea"    # Landroid/graphics/Region;

    .line 457
    iget-object v0, p0, Landroid/content/res/CompatibilityInfo$Translator;->mTouchableAreaBuffer:Landroid/graphics/Region;

    if-nez v0, :cond_0

    new-instance v0, Landroid/graphics/Region;

    invoke-direct {v0}, Landroid/graphics/Region;-><init>()V

    iput-object v0, p0, Landroid/content/res/CompatibilityInfo$Translator;->mTouchableAreaBuffer:Landroid/graphics/Region;

    .line 458
    :cond_0
    iget-object v0, p0, Landroid/content/res/CompatibilityInfo$Translator;->mTouchableAreaBuffer:Landroid/graphics/Region;

    invoke-virtual {v0, p1}, Landroid/graphics/Region;->set(Landroid/graphics/Region;)Z

    .line 459
    iget-object v0, p0, Landroid/content/res/CompatibilityInfo$Translator;->mTouchableAreaBuffer:Landroid/graphics/Region;

    iget v1, p0, Landroid/content/res/CompatibilityInfo$Translator;->applicationScale:F

    invoke-virtual {v0, v1}, Landroid/graphics/Region;->scale(F)V

    .line 460
    iget-object v0, p0, Landroid/content/res/CompatibilityInfo$Translator;->mTouchableAreaBuffer:Landroid/graphics/Region;

    return-object v0
.end method

.method public getTranslatedVisibleInsets(Landroid/graphics/Rect;)Landroid/graphics/Rect;
    .locals 1
    .param p1, "visibleInsets"    # Landroid/graphics/Rect;

    .line 446
    iget-object v0, p0, Landroid/content/res/CompatibilityInfo$Translator;->mVisibleInsetsBuffer:Landroid/graphics/Rect;

    if-nez v0, :cond_0

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/content/res/CompatibilityInfo$Translator;->mVisibleInsetsBuffer:Landroid/graphics/Rect;

    .line 447
    :cond_0
    iget-object v0, p0, Landroid/content/res/CompatibilityInfo$Translator;->mVisibleInsetsBuffer:Landroid/graphics/Rect;

    invoke-virtual {v0, p1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 448
    iget-object v0, p0, Landroid/content/res/CompatibilityInfo$Translator;->mVisibleInsetsBuffer:Landroid/graphics/Rect;

    invoke-virtual {p0, v0}, Landroid/content/res/CompatibilityInfo$Translator;->translateRectInAppWindowToScreen(Landroid/graphics/Rect;)V

    .line 449
    iget-object v0, p0, Landroid/content/res/CompatibilityInfo$Translator;->mVisibleInsetsBuffer:Landroid/graphics/Rect;

    return-object v0
.end method

.method public translateCanvas(Landroid/graphics/Canvas;)V
    .locals 2
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .line 360
    iget v0, p0, Landroid/content/res/CompatibilityInfo$Translator;->applicationScale:F

    const/high16 v1, 0x3fc00000    # 1.5f

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    .line 376
    const v0, 0x3b2b5601

    .line 377
    .local v0, "tinyOffset":F
    const v1, 0x3b2b5601

    invoke-virtual {p1, v1, v1}, Landroid/graphics/Canvas;->translate(FF)V

    .line 379
    .end local v0    # "tinyOffset":F
    :cond_0
    iget v0, p0, Landroid/content/res/CompatibilityInfo$Translator;->applicationScale:F

    iget v1, p0, Landroid/content/res/CompatibilityInfo$Translator;->applicationScale:F

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->scale(FF)V

    .line 380
    return-void
.end method

.method public translateEventInScreenToAppWindow(Landroid/view/MotionEvent;)V
    .locals 1
    .param p1, "event"    # Landroid/view/MotionEvent;

    .line 386
    iget v0, p0, Landroid/content/res/CompatibilityInfo$Translator;->applicationInvertedScale:F

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->scale(F)V

    .line 387
    return-void
.end method

.method public translateLayoutParamsInAppWindowToScreen(Landroid/view/WindowManager$LayoutParams;)V
    .locals 1
    .param p1, "params"    # Landroid/view/WindowManager$LayoutParams;

    .line 427
    iget v0, p0, Landroid/content/res/CompatibilityInfo$Translator;->applicationScale:F

    invoke-virtual {p1, v0}, Landroid/view/WindowManager$LayoutParams;->scale(F)V

    .line 428
    return-void
.end method

.method public translatePointInScreenToAppWindow(Landroid/graphics/PointF;)V
    .locals 2
    .param p1, "point"    # Landroid/graphics/PointF;

    .line 415
    iget v0, p0, Landroid/content/res/CompatibilityInfo$Translator;->applicationInvertedScale:F

    .line 416
    .local v0, "scale":F
    const/high16 v1, 0x3f800000    # 1.0f

    cmpl-float v1, v0, v1

    if-eqz v1, :cond_0

    .line 417
    iget v1, p1, Landroid/graphics/PointF;->x:F

    mul-float/2addr v1, v0

    iput v1, p1, Landroid/graphics/PointF;->x:F

    .line 418
    iget v1, p1, Landroid/graphics/PointF;->y:F

    mul-float/2addr v1, v0

    iput v1, p1, Landroid/graphics/PointF;->y:F

    .line 420
    :cond_0
    return-void
.end method

.method public translateRectInAppWindowToScreen(Landroid/graphics/Rect;)V
    .locals 1
    .param p1, "rect"    # Landroid/graphics/Rect;

    .line 401
    iget v0, p0, Landroid/content/res/CompatibilityInfo$Translator;->applicationScale:F

    invoke-virtual {p1, v0}, Landroid/graphics/Rect;->scale(F)V

    .line 402
    return-void
.end method

.method public translateRectInScreenToAppWinFrame(Landroid/graphics/Rect;)V
    .locals 1
    .param p1, "rect"    # Landroid/graphics/Rect;

    .line 346
    iget v0, p0, Landroid/content/res/CompatibilityInfo$Translator;->applicationInvertedScale:F

    invoke-virtual {p1, v0}, Landroid/graphics/Rect;->scale(F)V

    .line 347
    return-void
.end method

.method public translateRectInScreenToAppWindow(Landroid/graphics/Rect;)V
    .locals 1
    .param p1, "rect"    # Landroid/graphics/Rect;

    .line 408
    iget v0, p0, Landroid/content/res/CompatibilityInfo$Translator;->applicationInvertedScale:F

    invoke-virtual {p1, v0}, Landroid/graphics/Rect;->scale(F)V

    .line 409
    return-void
.end method

.method public translateRegionInWindowToScreen(Landroid/graphics/Region;)V
    .locals 1
    .param p1, "transparentRegion"    # Landroid/graphics/Region;

    .line 353
    iget v0, p0, Landroid/content/res/CompatibilityInfo$Translator;->applicationScale:F

    invoke-virtual {p1, v0}, Landroid/graphics/Region;->scale(F)V

    .line 354
    return-void
.end method

.method public translateWindowLayout(Landroid/view/WindowManager$LayoutParams;)V
    .locals 1
    .param p1, "params"    # Landroid/view/WindowManager$LayoutParams;

    .line 394
    iget v0, p0, Landroid/content/res/CompatibilityInfo$Translator;->applicationScale:F

    invoke-virtual {p1, v0}, Landroid/view/WindowManager$LayoutParams;->scale(F)V

    .line 395
    return-void
.end method
