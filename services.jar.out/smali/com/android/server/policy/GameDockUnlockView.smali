.class public Lcom/android/server/policy/GameDockUnlockView;
.super Landroid/view/View;
.source "GameDockUnlockView.java"


# static fields
.field private static final SIZE_ARROW_WIDTH:I = 0x3c

.field private static final SIZE_TEXT:F = 48.0f

.field private static final SPACE_ARROW_AND_TEXT:I = 0xf

.field private static final TIME_REFRESH_INTERVAL:I = 0x1

.field private static final TIME_REFRESH_START_INTERVAL:I = 0x14

.field private static final TIME_UNLOCK_AINM:I = 0x12c


# instance fields
.field private mArrowBitmap:Landroid/graphics/Bitmap;

.field private mArrowDstRect:Landroid/graphics/Rect;

.field private mCurrentProgress:I

.field private mCurrentRefreshInterval:I

.field private mIsNeedRefresh:Z

.field private mPaint:Landroid/graphics/Paint;

.field private mSrcBitmap:Landroid/graphics/Bitmap;

.field private mText:Ljava/lang/String;

.field private mViewHeight:I

.field private mViewWidth:I

.field private mXformode:Landroid/graphics/PorterDuffXfermode;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 44
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/server/policy/GameDockUnlockView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 45
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 48
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/server/policy/GameDockUnlockView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 49
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .line 52
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 36
    const/16 v0, 0x14

    iput v0, p0, Lcom/android/server/policy/GameDockUnlockView;->mCurrentRefreshInterval:I

    .line 41
    const-string/jumbo v0, "\u4efb\u610f\u6ed1\u52a8\u89e3\u9501\u6302\u673a"

    iput-object v0, p0, Lcom/android/server/policy/GameDockUnlockView;->mText:Ljava/lang/String;

    .line 53
    invoke-direct {p0}, Lcom/android/server/policy/GameDockUnlockView;->init()V

    .line 54
    return-void
.end method

.method private init()V
    .locals 6

    .line 73
    invoke-virtual {p0}, Lcom/android/server/policy/GameDockUnlockView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x307006a

    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/policy/GameDockUnlockView;->mArrowBitmap:Landroid/graphics/Bitmap;

    .line 74
    invoke-direct {p0}, Lcom/android/server/policy/GameDockUnlockView;->initPaintProperty()V

    .line 75
    new-instance v0, Landroid/graphics/PorterDuffXfermode;

    sget-object v1, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v0, v1}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    iput-object v0, p0, Lcom/android/server/policy/GameDockUnlockView;->mXformode:Landroid/graphics/PorterDuffXfermode;

    .line 76
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 77
    .local v0, "rect":Landroid/graphics/Rect;
    iget-object v1, p0, Lcom/android/server/policy/GameDockUnlockView;->mPaint:Landroid/graphics/Paint;

    iget-object v2, p0, Lcom/android/server/policy/GameDockUnlockView;->mText:Ljava/lang/String;

    iget-object v3, p0, Lcom/android/server/policy/GameDockUnlockView;->mText:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v4, v3, v0}, Landroid/graphics/Paint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    .line 78
    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v1

    iput v1, p0, Lcom/android/server/policy/GameDockUnlockView;->mViewHeight:I

    .line 79
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v1

    add-int/lit8 v1, v1, 0xf

    const/16 v2, 0x3c

    add-int/2addr v1, v2

    iput v1, p0, Lcom/android/server/policy/GameDockUnlockView;->mViewWidth:I

    .line 80
    iget v1, p0, Lcom/android/server/policy/GameDockUnlockView;->mViewWidth:I

    iget v3, p0, Lcom/android/server/policy/GameDockUnlockView;->mViewHeight:I

    sget-object v5, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v1, v3, v5}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/policy/GameDockUnlockView;->mSrcBitmap:Landroid/graphics/Bitmap;

    .line 81
    new-instance v1, Landroid/graphics/Rect;

    iget v3, p0, Lcom/android/server/policy/GameDockUnlockView;->mViewHeight:I

    add-int/lit8 v3, v3, 0x5

    invoke-direct {v1, v4, v4, v2, v3}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v1, p0, Lcom/android/server/policy/GameDockUnlockView;->mArrowDstRect:Landroid/graphics/Rect;

    .line 82
    return-void
.end method

.method private initPaintProperty()V
    .locals 2

    .line 85
    new-instance v0, Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/android/server/policy/GameDockUnlockView;->mPaint:Landroid/graphics/Paint;

    .line 86
    iget-object v0, p0, Lcom/android/server/policy/GameDockUnlockView;->mPaint:Landroid/graphics/Paint;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 87
    iget-object v0, p0, Lcom/android/server/policy/GameDockUnlockView;->mPaint:Landroid/graphics/Paint;

    const/high16 v1, 0x42400000    # 48.0f

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 88
    iget-object v0, p0, Lcom/android/server/policy/GameDockUnlockView;->mPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL_AND_STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 89
    iget-object v0, p0, Lcom/android/server/policy/GameDockUnlockView;->mPaint:Landroid/graphics/Paint;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 90
    return-void
.end method


# virtual methods
.method protected onAttachedToWindow()V
    .locals 1

    .line 63
    invoke-super {p0}, Landroid/view/View;->onAttachedToWindow()V

    .line 64
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/policy/GameDockUnlockView;->mIsNeedRefresh:Z

    .line 65
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    .line 68
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/policy/GameDockUnlockView;->mIsNeedRefresh:Z

    .line 69
    invoke-super {p0}, Landroid/view/View;->onDetachedFromWindow()V

    .line 70
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 7
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .line 94
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 95
    iget-boolean v0, p0, Lcom/android/server/policy/GameDockUnlockView;->mIsNeedRefresh:Z

    if-nez v0, :cond_0

    .line 96
    return-void

    .line 98
    :cond_0
    new-instance v0, Landroid/graphics/Canvas;

    iget-object v1, p0, Lcom/android/server/policy/GameDockUnlockView;->mSrcBitmap:Landroid/graphics/Bitmap;

    invoke-direct {v0, v1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 99
    .local v0, "srcCanvas":Landroid/graphics/Canvas;
    iget-object v1, p0, Lcom/android/server/policy/GameDockUnlockView;->mArrowBitmap:Landroid/graphics/Bitmap;

    iget-object v2, p0, Lcom/android/server/policy/GameDockUnlockView;->mArrowDstRect:Landroid/graphics/Rect;

    iget-object v3, p0, Lcom/android/server/policy/GameDockUnlockView;->mPaint:Landroid/graphics/Paint;

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v4, v2, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 100
    iget-object v1, p0, Lcom/android/server/policy/GameDockUnlockView;->mArrowBitmap:Landroid/graphics/Bitmap;

    iget v2, p0, Lcom/android/server/policy/GameDockUnlockView;->mViewHeight:I

    int-to-float v2, v2

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3, v2, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 101
    iget-object v1, p0, Lcom/android/server/policy/GameDockUnlockView;->mText:Ljava/lang/String;

    const/high16 v2, 0x42960000    # 75.0f

    iget v5, p0, Lcom/android/server/policy/GameDockUnlockView;->mViewHeight:I

    add-int/lit8 v5, v5, -0x4

    int-to-float v5, v5

    iget-object v6, p0, Lcom/android/server/policy/GameDockUnlockView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v1, v2, v5, v6}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 103
    iget-object v1, p0, Lcom/android/server/policy/GameDockUnlockView;->mPaint:Landroid/graphics/Paint;

    iget-object v2, p0, Lcom/android/server/policy/GameDockUnlockView;->mXformode:Landroid/graphics/PorterDuffXfermode;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 104
    iget-object v1, p0, Lcom/android/server/policy/GameDockUnlockView;->mPaint:Landroid/graphics/Paint;

    const-string v2, "#7fffffff"

    invoke-static {v2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 105
    new-instance v1, Landroid/graphics/RectF;

    iget v2, p0, Lcom/android/server/policy/GameDockUnlockView;->mCurrentProgress:I

    int-to-float v2, v2

    iget v5, p0, Lcom/android/server/policy/GameDockUnlockView;->mViewHeight:I

    int-to-float v5, v5

    invoke-direct {v1, v3, v3, v2, v5}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 106
    .local v1, "rectF":Landroid/graphics/RectF;
    iget-object v2, p0, Lcom/android/server/policy/GameDockUnlockView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 107
    iget-object v2, p0, Lcom/android/server/policy/GameDockUnlockView;->mSrcBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {p1, v2, v3, v3, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 108
    invoke-direct {p0}, Lcom/android/server/policy/GameDockUnlockView;->initPaintProperty()V

    .line 109
    iget v2, p0, Lcom/android/server/policy/GameDockUnlockView;->mCurrentProgress:I

    iget v3, p0, Lcom/android/server/policy/GameDockUnlockView;->mViewWidth:I

    const/4 v4, 0x0

    if-ge v2, v3, :cond_3

    .line 110
    iget v2, p0, Lcom/android/server/policy/GameDockUnlockView;->mCurrentProgress:I

    const/4 v3, 0x1

    if-nez v2, :cond_1

    .line 112
    const-wide/16 v4, 0x3e8

    invoke-virtual {p0, v4, v5}, Lcom/android/server/policy/GameDockUnlockView;->postInvalidateDelayed(J)V

    .line 114
    iput v3, p0, Lcom/android/server/policy/GameDockUnlockView;->mCurrentProgress:I

    .line 115
    const/16 v2, 0x14

    iput v2, p0, Lcom/android/server/policy/GameDockUnlockView;->mCurrentRefreshInterval:I

    goto :goto_0

    .line 117
    :cond_1
    iget v2, p0, Lcom/android/server/policy/GameDockUnlockView;->mCurrentProgress:I

    iget v5, p0, Lcom/android/server/policy/GameDockUnlockView;->mViewWidth:I

    div-int/lit8 v5, v5, 0x3c

    add-int/2addr v2, v5

    iput v2, p0, Lcom/android/server/policy/GameDockUnlockView;->mCurrentProgress:I

    .line 118
    iget v2, p0, Lcom/android/server/policy/GameDockUnlockView;->mCurrentRefreshInterval:I

    sub-int/2addr v2, v3

    iput v2, p0, Lcom/android/server/policy/GameDockUnlockView;->mCurrentRefreshInterval:I

    .line 119
    iget v2, p0, Lcom/android/server/policy/GameDockUnlockView;->mCurrentRefreshInterval:I

    if-gez v2, :cond_2

    .line 120
    iput v4, p0, Lcom/android/server/policy/GameDockUnlockView;->mCurrentRefreshInterval:I

    .line 122
    :cond_2
    iget v2, p0, Lcom/android/server/policy/GameDockUnlockView;->mCurrentRefreshInterval:I

    int-to-long v2, v2

    invoke-virtual {p0, v2, v3}, Lcom/android/server/policy/GameDockUnlockView;->postInvalidateDelayed(J)V

    goto :goto_0

    .line 125
    :cond_3
    iput v4, p0, Lcom/android/server/policy/GameDockUnlockView;->mCurrentProgress:I

    .line 127
    invoke-virtual {p0}, Lcom/android/server/policy/GameDockUnlockView;->postInvalidate()V

    .line 129
    :goto_0
    return-void
.end method

.method protected onMeasure(II)V
    .locals 2
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .line 58
    iget v0, p0, Lcom/android/server/policy/GameDockUnlockView;->mViewWidth:I

    iget v1, p0, Lcom/android/server/policy/GameDockUnlockView;->mViewHeight:I

    invoke-virtual {p0, v0, v1}, Lcom/android/server/policy/GameDockUnlockView;->setMeasuredDimension(II)V

    .line 60
    return-void
.end method
