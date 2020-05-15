.class public Landroid/inputmethodservice/KeyboardView;
.super Landroid/view/View;
.source "KeyboardView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/inputmethodservice/KeyboardView$SwipeTracker;,
        Landroid/inputmethodservice/KeyboardView$OnKeyboardActionListener;
    }
.end annotation


# static fields
.field private static final DEBOUNCE_TIME:I = 0x46

.field private static final DEBUG:Z = false

.field private static final DELAY_AFTER_PREVIEW:I = 0x46

.field private static final DELAY_BEFORE_PREVIEW:I = 0x0

.field private static final KEY_DELETE:[I

.field private static final LONGPRESS_TIMEOUT:I

.field private static final LONG_PRESSABLE_STATE_SET:[I

.field private static MAX_NEARBY_KEYS:I = 0x0

.field private static final MSG_LONGPRESS:I = 0x4

.field private static final MSG_REMOVE_PREVIEW:I = 0x2

.field private static final MSG_REPEAT:I = 0x3

.field private static final MSG_SHOW_PREVIEW:I = 0x1

.field private static final MULTITAP_INTERVAL:I = 0x320

.field private static final NOT_A_KEY:I = -0x1

.field private static final REPEAT_INTERVAL:I = 0x32

.field private static final REPEAT_START_DELAY:I = 0x190


# instance fields
.field private mAbortKey:Z

.field private mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

.field private mAudioManager:Landroid/media/AudioManager;

.field private mBackgroundDimAmount:F

.field private mBuffer:Landroid/graphics/Bitmap;

.field private mCanvas:Landroid/graphics/Canvas;

.field private mClipRegion:Landroid/graphics/Rect;

.field private final mCoordinates:[I

.field private mCurrentKey:I

.field private mCurrentKeyIndex:I

.field private mCurrentKeyTime:J

.field private mDirtyRect:Landroid/graphics/Rect;

.field private mDisambiguateSwipe:Z

.field private mDistances:[I

.field private mDownKey:I

.field private mDownTime:J

.field private mDrawPending:Z

.field private mGestureDetector:Landroid/view/GestureDetector;

.field mHandler:Landroid/os/Handler;

.field private mHeadsetRequiredToHearPasswordsAnnounced:Z

.field private mInMultiTap:Z

.field private mInvalidatedKey:Landroid/inputmethodservice/Keyboard$Key;

.field private mKeyBackground:Landroid/graphics/drawable/Drawable;

.field private mKeyIndices:[I

.field private mKeyTextColor:I

.field private mKeyTextSize:I

.field private mKeyboard:Landroid/inputmethodservice/Keyboard;

.field private mKeyboardActionListener:Landroid/inputmethodservice/KeyboardView$OnKeyboardActionListener;

.field private mKeyboardChanged:Z

.field private mKeys:[Landroid/inputmethodservice/Keyboard$Key;

.field private mLabelTextSize:I

.field private mLastCodeX:I

.field private mLastCodeY:I

.field private mLastKey:I

.field private mLastKeyTime:J

.field private mLastMoveTime:J

.field private mLastSentIndex:I

.field private mLastTapTime:J

.field private mLastX:I

.field private mLastY:I

.field private mMiniKeyboard:Landroid/inputmethodservice/KeyboardView;

.field private mMiniKeyboardCache:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Landroid/inputmethodservice/Keyboard$Key;",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private mMiniKeyboardContainer:Landroid/view/View;

.field private mMiniKeyboardOffsetX:I

.field private mMiniKeyboardOffsetY:I

.field private mMiniKeyboardOnScreen:Z

.field private mOldPointerCount:I

.field private mOldPointerX:F

.field private mOldPointerY:F

.field private mPadding:Landroid/graphics/Rect;

.field private mPaint:Landroid/graphics/Paint;

.field private mPopupKeyboard:Landroid/widget/PopupWindow;

.field private mPopupLayout:I

.field private mPopupParent:Landroid/view/View;

.field private mPopupPreviewX:I

.field private mPopupPreviewY:I

.field private mPopupX:I

.field private mPopupY:I

.field private mPossiblePoly:Z

.field private mPreviewCentered:Z

.field private mPreviewHeight:I

.field private mPreviewLabel:Ljava/lang/StringBuilder;

.field private mPreviewOffset:I

.field private mPreviewPopup:Landroid/widget/PopupWindow;

.field private mPreviewText:Landroid/widget/TextView;

.field private mPreviewTextSizeLarge:I

.field private mProximityCorrectOn:Z

.field private mProximityThreshold:I

.field private mRepeatKeyIndex:I

.field private mShadowColor:I

.field private mShadowRadius:F

.field private mShowPreview:Z

.field private mShowTouchPoints:Z

.field private mStartX:I

.field private mStartY:I

.field private mSwipeThreshold:I

.field private mSwipeTracker:Landroid/inputmethodservice/KeyboardView$SwipeTracker;

.field private mTapCount:I

.field private mVerticalCorrection:I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 131
    const/4 v0, 0x1

    new-array v1, v0, [I

    const/4 v2, 0x0

    const/4 v3, -0x5

    aput v3, v1, v2

    sput-object v1, Landroid/inputmethodservice/KeyboardView;->KEY_DELETE:[I

    .line 132
    new-array v0, v0, [I

    const v1, 0x101023c

    aput v1, v0, v2

    sput-object v0, Landroid/inputmethodservice/KeyboardView;->LONG_PRESSABLE_STATE_SET:[I

    .line 224
    invoke-static {}, Landroid/view/ViewConfiguration;->getLongPressTimeout()I

    move-result v0

    sput v0, Landroid/inputmethodservice/KeyboardView;->LONGPRESS_TIMEOUT:I

    .line 226
    const/16 v0, 0xc

    sput v0, Landroid/inputmethodservice/KeyboardView;->MAX_NEARBY_KEYS:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 257
    const v0, 0x1110057

    invoke-direct {p0, p1, p2, v0}, Landroid/inputmethodservice/KeyboardView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 258
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .line 261
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Landroid/inputmethodservice/KeyboardView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 262
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 17
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I
    .param p4, "defStyleRes"    # I

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 265
    invoke-direct/range {p0 .. p4}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 135
    const/4 v2, -0x1

    iput v2, v0, Landroid/inputmethodservice/KeyboardView;->mCurrentKeyIndex:I

    .line 149
    const/4 v3, 0x2

    new-array v4, v3, [I

    iput-object v4, v0, Landroid/inputmethodservice/KeyboardView;->mCoordinates:[I

    .line 176
    const/4 v4, 0x0

    iput-boolean v4, v0, Landroid/inputmethodservice/KeyboardView;->mPreviewCentered:Z

    .line 177
    const/4 v5, 0x1

    iput-boolean v5, v0, Landroid/inputmethodservice/KeyboardView;->mShowPreview:Z

    .line 178
    iput-boolean v5, v0, Landroid/inputmethodservice/KeyboardView;->mShowTouchPoints:Z

    .line 197
    iput v2, v0, Landroid/inputmethodservice/KeyboardView;->mCurrentKey:I

    .line 198
    iput v2, v0, Landroid/inputmethodservice/KeyboardView;->mDownKey:I

    .line 201
    const/16 v6, 0xc

    new-array v6, v6, [I

    iput-object v6, v0, Landroid/inputmethodservice/KeyboardView;->mKeyIndices:[I

    .line 205
    iput v2, v0, Landroid/inputmethodservice/KeyboardView;->mRepeatKeyIndex:I

    .line 209
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2, v4, v4, v4, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v2, v0, Landroid/inputmethodservice/KeyboardView;->mClipRegion:Landroid/graphics/Rect;

    .line 211
    new-instance v2, Landroid/inputmethodservice/KeyboardView$SwipeTracker;

    const/4 v6, 0x0

    invoke-direct {v2, v6}, Landroid/inputmethodservice/KeyboardView$SwipeTracker;-><init>(Landroid/inputmethodservice/KeyboardView$1;)V

    iput-object v2, v0, Landroid/inputmethodservice/KeyboardView;->mSwipeTracker:Landroid/inputmethodservice/KeyboardView$SwipeTracker;

    .line 216
    iput v5, v0, Landroid/inputmethodservice/KeyboardView;->mOldPointerCount:I

    .line 227
    sget v2, Landroid/inputmethodservice/KeyboardView;->MAX_NEARBY_KEYS:I

    new-array v2, v2, [I

    iput-object v2, v0, Landroid/inputmethodservice/KeyboardView;->mDistances:[I

    .line 235
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v5}, Ljava/lang/StringBuilder;-><init>(I)V

    iput-object v2, v0, Landroid/inputmethodservice/KeyboardView;->mPreviewLabel:Ljava/lang/StringBuilder;

    .line 240
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    iput-object v2, v0, Landroid/inputmethodservice/KeyboardView;->mDirtyRect:Landroid/graphics/Rect;

    .line 267
    sget-object v2, Landroid/R$styleable;->KeyboardView:[I

    move-object/from16 v7, p2

    move/from16 v8, p3

    move/from16 v9, p4

    invoke-virtual {v1, v7, v2, v8, v9}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v2

    .line 270
    .local v2, "a":Landroid/content/res/TypedArray;
    const-string/jumbo v10, "layout_inflater"

    .line 272
    invoke-virtual {v1, v10}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/view/LayoutInflater;

    .line 274
    .local v10, "inflate":Landroid/view/LayoutInflater;
    const/4 v11, 0x0

    .line 275
    .local v11, "previewLayout":I
    const/4 v12, 0x0

    .line 277
    .local v12, "keyTextSize":I
    invoke-virtual {v2}, Landroid/content/res/TypedArray;->getIndexCount()I

    move-result v13

    .line 279
    .local v13, "n":I
    move v14, v11

    move v11, v4

    .line 279
    .local v11, "i":I
    .local v14, "previewLayout":I
    :goto_0
    if-ge v11, v13, :cond_0

    .line 280
    invoke-virtual {v2, v11}, Landroid/content/res/TypedArray;->getIndex(I)I

    move-result v15

    .line 282
    .local v15, "attr":I
    packed-switch v15, :pswitch_data_0

    .line 282
    .end local v15    # "attr":I
    goto :goto_1

    .line 308
    .restart local v15    # "attr":I
    :pswitch_0
    invoke-virtual {v2, v15, v4}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v5

    iput v5, v0, Landroid/inputmethodservice/KeyboardView;->mPopupLayout:I

    .line 309
    goto :goto_1

    .line 287
    :pswitch_1
    invoke-virtual {v2, v15, v4}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v5

    iput v5, v0, Landroid/inputmethodservice/KeyboardView;->mVerticalCorrection:I

    .line 288
    goto :goto_1

    .line 296
    :pswitch_2
    const/16 v5, 0x50

    invoke-virtual {v2, v15, v5}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v5

    iput v5, v0, Landroid/inputmethodservice/KeyboardView;->mPreviewHeight:I

    .line 297
    goto :goto_1

    .line 293
    :pswitch_3
    invoke-virtual {v2, v15, v4}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v5

    iput v5, v0, Landroid/inputmethodservice/KeyboardView;->mPreviewOffset:I

    .line 294
    goto :goto_1

    .line 290
    :pswitch_4
    invoke-virtual {v2, v15, v4}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v5

    .line 291
    .end local v14    # "previewLayout":I
    .local v5, "previewLayout":I
    nop

    .line 279
    move v14, v5

    goto :goto_1

    .line 302
    .end local v5    # "previewLayout":I
    .restart local v14    # "previewLayout":I
    :pswitch_5
    const/high16 v5, -0x1000000

    invoke-virtual {v2, v15, v5}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v5

    iput v5, v0, Landroid/inputmethodservice/KeyboardView;->mKeyTextColor:I

    .line 303
    goto :goto_1

    .line 305
    :pswitch_6
    const/16 v5, 0xe

    invoke-virtual {v2, v15, v5}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v5

    iput v5, v0, Landroid/inputmethodservice/KeyboardView;->mLabelTextSize:I

    .line 306
    goto :goto_1

    .line 299
    :pswitch_7
    const/16 v5, 0x12

    invoke-virtual {v2, v15, v5}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v5

    iput v5, v0, Landroid/inputmethodservice/KeyboardView;->mKeyTextSize:I

    .line 300
    goto :goto_1

    .line 284
    :pswitch_8
    invoke-virtual {v2, v15}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    iput-object v5, v0, Landroid/inputmethodservice/KeyboardView;->mKeyBackground:Landroid/graphics/drawable/Drawable;

    .line 285
    goto :goto_1

    .line 314
    :pswitch_9
    const/4 v5, 0x0

    invoke-virtual {v2, v15, v5}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v5

    iput v5, v0, Landroid/inputmethodservice/KeyboardView;->mShadowRadius:F

    .line 314
    .end local v15    # "attr":I
    goto :goto_1

    .line 311
    .restart local v15    # "attr":I
    :pswitch_a
    invoke-virtual {v2, v15, v4}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v5

    iput v5, v0, Landroid/inputmethodservice/KeyboardView;->mShadowColor:I

    .line 312
    nop

    .line 279
    .end local v15    # "attr":I
    :goto_1
    add-int/lit8 v11, v11, 0x1

    const/4 v5, 0x1

    goto :goto_0

    .line 319
    .end local v11    # "i":I
    :cond_0
    iget-object v5, v0, Landroid/inputmethodservice/KeyboardView;->mContext:Landroid/content/Context;

    sget-object v11, Lcom/android/internal/R$styleable;->Theme:[I

    invoke-virtual {v5, v11}, Landroid/content/Context;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v2

    .line 321
    const/high16 v5, 0x3f000000    # 0.5f

    invoke-virtual {v2, v3, v5}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v3

    iput v3, v0, Landroid/inputmethodservice/KeyboardView;->mBackgroundDimAmount:F

    .line 323
    new-instance v3, Landroid/widget/PopupWindow;

    invoke-direct {v3, v1}, Landroid/widget/PopupWindow;-><init>(Landroid/content/Context;)V

    iput-object v3, v0, Landroid/inputmethodservice/KeyboardView;->mPreviewPopup:Landroid/widget/PopupWindow;

    .line 324
    if-eqz v14, :cond_1

    .line 325
    invoke-virtual {v10, v14, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, v0, Landroid/inputmethodservice/KeyboardView;->mPreviewText:Landroid/widget/TextView;

    .line 326
    iget-object v3, v0, Landroid/inputmethodservice/KeyboardView;->mPreviewText:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getTextSize()F

    move-result v3

    float-to-int v3, v3

    iput v3, v0, Landroid/inputmethodservice/KeyboardView;->mPreviewTextSizeLarge:I

    .line 327
    iget-object v3, v0, Landroid/inputmethodservice/KeyboardView;->mPreviewPopup:Landroid/widget/PopupWindow;

    iget-object v5, v0, Landroid/inputmethodservice/KeyboardView;->mPreviewText:Landroid/widget/TextView;

    invoke-virtual {v3, v5}, Landroid/widget/PopupWindow;->setContentView(Landroid/view/View;)V

    .line 328
    iget-object v3, v0, Landroid/inputmethodservice/KeyboardView;->mPreviewPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v3, v6}, Landroid/widget/PopupWindow;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_2

    .line 330
    :cond_1
    iput-boolean v4, v0, Landroid/inputmethodservice/KeyboardView;->mShowPreview:Z

    .line 333
    :goto_2
    iget-object v3, v0, Landroid/inputmethodservice/KeyboardView;->mPreviewPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v3, v4}, Landroid/widget/PopupWindow;->setTouchable(Z)V

    .line 335
    new-instance v3, Landroid/widget/PopupWindow;

    invoke-direct {v3, v1}, Landroid/widget/PopupWindow;-><init>(Landroid/content/Context;)V

    iput-object v3, v0, Landroid/inputmethodservice/KeyboardView;->mPopupKeyboard:Landroid/widget/PopupWindow;

    .line 336
    iget-object v3, v0, Landroid/inputmethodservice/KeyboardView;->mPopupKeyboard:Landroid/widget/PopupWindow;

    invoke-virtual {v3, v6}, Landroid/widget/PopupWindow;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 339
    iput-object v0, v0, Landroid/inputmethodservice/KeyboardView;->mPopupParent:Landroid/view/View;

    .line 342
    new-instance v3, Landroid/graphics/Paint;

    invoke-direct {v3}, Landroid/graphics/Paint;-><init>()V

    iput-object v3, v0, Landroid/inputmethodservice/KeyboardView;->mPaint:Landroid/graphics/Paint;

    .line 343
    iget-object v3, v0, Landroid/inputmethodservice/KeyboardView;->mPaint:Landroid/graphics/Paint;

    const/4 v5, 0x1

    invoke-virtual {v3, v5}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 344
    iget-object v3, v0, Landroid/inputmethodservice/KeyboardView;->mPaint:Landroid/graphics/Paint;

    int-to-float v5, v12

    invoke-virtual {v3, v5}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 345
    iget-object v3, v0, Landroid/inputmethodservice/KeyboardView;->mPaint:Landroid/graphics/Paint;

    sget-object v5, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v3, v5}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 346
    iget-object v3, v0, Landroid/inputmethodservice/KeyboardView;->mPaint:Landroid/graphics/Paint;

    const/16 v5, 0xff

    invoke-virtual {v3, v5}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 348
    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3, v4, v4, v4, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v3, v0, Landroid/inputmethodservice/KeyboardView;->mPadding:Landroid/graphics/Rect;

    .line 349
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    iput-object v3, v0, Landroid/inputmethodservice/KeyboardView;->mMiniKeyboardCache:Ljava/util/Map;

    .line 350
    iget-object v3, v0, Landroid/inputmethodservice/KeyboardView;->mKeyBackground:Landroid/graphics/drawable/Drawable;

    iget-object v4, v0, Landroid/inputmethodservice/KeyboardView;->mPadding:Landroid/graphics/Rect;

    invoke-virtual {v3, v4}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    .line 352
    const/high16 v3, 0x43fa0000    # 500.0f

    invoke-virtual/range {p0 .. p0}, Landroid/inputmethodservice/KeyboardView;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v4

    iget v4, v4, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v3, v4

    float-to-int v3, v3

    iput v3, v0, Landroid/inputmethodservice/KeyboardView;->mSwipeThreshold:I

    .line 353
    invoke-virtual/range {p0 .. p0}, Landroid/inputmethodservice/KeyboardView;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x11200c0

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v3

    iput-boolean v3, v0, Landroid/inputmethodservice/KeyboardView;->mDisambiguateSwipe:Z

    .line 356
    invoke-static/range {p1 .. p1}, Landroid/view/accessibility/AccessibilityManager;->getInstance(Landroid/content/Context;)Landroid/view/accessibility/AccessibilityManager;

    move-result-object v3

    iput-object v3, v0, Landroid/inputmethodservice/KeyboardView;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    .line 357
    const-string v3, "audio"

    invoke-virtual {v1, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/media/AudioManager;

    iput-object v3, v0, Landroid/inputmethodservice/KeyboardView;->mAudioManager:Landroid/media/AudioManager;

    .line 359
    invoke-direct/range {p0 .. p0}, Landroid/inputmethodservice/KeyboardView;->resetMultiTap()V

    .line 360
    return-void

    nop

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method static synthetic access$100(Landroid/inputmethodservice/KeyboardView;I)V
    .locals 0
    .param p0, "x0"    # Landroid/inputmethodservice/KeyboardView;
    .param p1, "x1"    # I

    .line 68
    invoke-direct {p0, p1}, Landroid/inputmethodservice/KeyboardView;->showKey(I)V

    return-void
.end method

.method static synthetic access$1000(Landroid/inputmethodservice/KeyboardView;)I
    .locals 1
    .param p0, "x0"    # Landroid/inputmethodservice/KeyboardView;

    .line 68
    iget v0, p0, Landroid/inputmethodservice/KeyboardView;->mStartX:I

    return v0
.end method

.method static synthetic access$1100(Landroid/inputmethodservice/KeyboardView;)I
    .locals 1
    .param p0, "x0"    # Landroid/inputmethodservice/KeyboardView;

    .line 68
    iget v0, p0, Landroid/inputmethodservice/KeyboardView;->mStartY:I

    return v0
.end method

.method static synthetic access$1200(Landroid/inputmethodservice/KeyboardView;IIIJ)V
    .locals 0
    .param p0, "x0"    # Landroid/inputmethodservice/KeyboardView;
    .param p1, "x1"    # I
    .param p2, "x2"    # I
    .param p3, "x3"    # I
    .param p4, "x4"    # J

    .line 68
    invoke-direct/range {p0 .. p5}, Landroid/inputmethodservice/KeyboardView;->detectAndSendKey(IIIJ)V

    return-void
.end method

.method static synthetic access$1300(Landroid/inputmethodservice/KeyboardView;)Landroid/inputmethodservice/KeyboardView$OnKeyboardActionListener;
    .locals 1
    .param p0, "x0"    # Landroid/inputmethodservice/KeyboardView;

    .line 68
    iget-object v0, p0, Landroid/inputmethodservice/KeyboardView;->mKeyboardActionListener:Landroid/inputmethodservice/KeyboardView$OnKeyboardActionListener;

    return-object v0
.end method

.method static synthetic access$1400(Landroid/inputmethodservice/KeyboardView;)V
    .locals 0
    .param p0, "x0"    # Landroid/inputmethodservice/KeyboardView;

    .line 68
    invoke-direct {p0}, Landroid/inputmethodservice/KeyboardView;->dismissPopupKeyboard()V

    return-void
.end method

.method static synthetic access$200(Landroid/inputmethodservice/KeyboardView;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Landroid/inputmethodservice/KeyboardView;

    .line 68
    iget-object v0, p0, Landroid/inputmethodservice/KeyboardView;->mPreviewText:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$300(Landroid/inputmethodservice/KeyboardView;)Z
    .locals 1
    .param p0, "x0"    # Landroid/inputmethodservice/KeyboardView;

    .line 68
    invoke-direct {p0}, Landroid/inputmethodservice/KeyboardView;->repeatKey()Z

    move-result v0

    return v0
.end method

.method static synthetic access$400(Landroid/inputmethodservice/KeyboardView;Landroid/view/MotionEvent;)Z
    .locals 1
    .param p0, "x0"    # Landroid/inputmethodservice/KeyboardView;
    .param p1, "x1"    # Landroid/view/MotionEvent;

    .line 68
    invoke-direct {p0, p1}, Landroid/inputmethodservice/KeyboardView;->openPopupIfRequired(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$500(Landroid/inputmethodservice/KeyboardView;)Z
    .locals 1
    .param p0, "x0"    # Landroid/inputmethodservice/KeyboardView;

    .line 68
    iget-boolean v0, p0, Landroid/inputmethodservice/KeyboardView;->mPossiblePoly:Z

    return v0
.end method

.method static synthetic access$600(Landroid/inputmethodservice/KeyboardView;)Landroid/inputmethodservice/KeyboardView$SwipeTracker;
    .locals 1
    .param p0, "x0"    # Landroid/inputmethodservice/KeyboardView;

    .line 68
    iget-object v0, p0, Landroid/inputmethodservice/KeyboardView;->mSwipeTracker:Landroid/inputmethodservice/KeyboardView$SwipeTracker;

    return-object v0
.end method

.method static synthetic access$700(Landroid/inputmethodservice/KeyboardView;)I
    .locals 1
    .param p0, "x0"    # Landroid/inputmethodservice/KeyboardView;

    .line 68
    iget v0, p0, Landroid/inputmethodservice/KeyboardView;->mSwipeThreshold:I

    return v0
.end method

.method static synthetic access$800(Landroid/inputmethodservice/KeyboardView;)Z
    .locals 1
    .param p0, "x0"    # Landroid/inputmethodservice/KeyboardView;

    .line 68
    iget-boolean v0, p0, Landroid/inputmethodservice/KeyboardView;->mDisambiguateSwipe:Z

    return v0
.end method

.method static synthetic access$900(Landroid/inputmethodservice/KeyboardView;)I
    .locals 1
    .param p0, "x0"    # Landroid/inputmethodservice/KeyboardView;

    .line 68
    iget v0, p0, Landroid/inputmethodservice/KeyboardView;->mDownKey:I

    return v0
.end method

.method private adjustCase(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .locals 2
    .param p1, "label"    # Ljava/lang/CharSequence;

    .line 588
    iget-object v0, p0, Landroid/inputmethodservice/KeyboardView;->mKeyboard:Landroid/inputmethodservice/Keyboard;

    invoke-virtual {v0}, Landroid/inputmethodservice/Keyboard;->isShifted()Z

    move-result v0

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    const/4 v1, 0x3

    if-ge v0, v1, :cond_0

    const/4 v0, 0x0

    .line 589
    invoke-interface {p1, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    invoke-static {v0}, Ljava/lang/Character;->isLowerCase(C)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 590
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object p1

    .line 592
    :cond_0
    return-object p1
.end method

.method private checkMultiTap(JI)V
    .locals 8
    .param p1, "eventTime"    # J
    .param p3, "keyIndex"    # I

    .line 1432
    const/4 v0, -0x1

    if-ne p3, v0, :cond_0

    return-void

    .line 1433
    :cond_0
    iget-object v1, p0, Landroid/inputmethodservice/KeyboardView;->mKeys:[Landroid/inputmethodservice/Keyboard$Key;

    aget-object v1, v1, p3

    .line 1434
    .local v1, "key":Landroid/inputmethodservice/Keyboard$Key;
    iget-object v2, v1, Landroid/inputmethodservice/Keyboard$Key;->codes:[I

    array-length v2, v2

    const-wide/16 v3, 0x320

    const/4 v5, 0x1

    if-le v2, v5, :cond_2

    .line 1435
    iput-boolean v5, p0, Landroid/inputmethodservice/KeyboardView;->mInMultiTap:Z

    .line 1436
    iget-wide v6, p0, Landroid/inputmethodservice/KeyboardView;->mLastTapTime:J

    add-long/2addr v6, v3

    cmp-long v2, p1, v6

    if-gez v2, :cond_1

    iget v2, p0, Landroid/inputmethodservice/KeyboardView;->mLastSentIndex:I

    if-ne p3, v2, :cond_1

    .line 1438
    iget v0, p0, Landroid/inputmethodservice/KeyboardView;->mTapCount:I

    add-int/2addr v0, v5

    iget-object v2, v1, Landroid/inputmethodservice/Keyboard$Key;->codes:[I

    array-length v2, v2

    rem-int/2addr v0, v2

    iput v0, p0, Landroid/inputmethodservice/KeyboardView;->mTapCount:I

    .line 1439
    return-void

    .line 1441
    :cond_1
    iput v0, p0, Landroid/inputmethodservice/KeyboardView;->mTapCount:I

    .line 1442
    return-void

    .line 1445
    :cond_2
    iget-wide v5, p0, Landroid/inputmethodservice/KeyboardView;->mLastTapTime:J

    add-long/2addr v5, v3

    cmp-long v0, p1, v5

    if-gtz v0, :cond_3

    iget v0, p0, Landroid/inputmethodservice/KeyboardView;->mLastSentIndex:I

    if-eq p3, v0, :cond_4

    .line 1446
    :cond_3
    invoke-direct {p0}, Landroid/inputmethodservice/KeyboardView;->resetMultiTap()V

    .line 1448
    :cond_4
    return-void
.end method

.method private computeProximityThreshold(Landroid/inputmethodservice/Keyboard;)V
    .locals 7
    .param p1, "keyboard"    # Landroid/inputmethodservice/Keyboard;

    .line 616
    if-nez p1, :cond_0

    return-void

    .line 617
    :cond_0
    iget-object v0, p0, Landroid/inputmethodservice/KeyboardView;->mKeys:[Landroid/inputmethodservice/Keyboard$Key;

    .line 618
    .local v0, "keys":[Landroid/inputmethodservice/Keyboard$Key;
    if-nez v0, :cond_1

    return-void

    .line 619
    :cond_1
    array-length v1, v0

    .line 620
    .local v1, "length":I
    const/4 v2, 0x0

    .line 621
    .local v2, "dimensionSum":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v1, :cond_2

    .line 622
    aget-object v4, v0, v3

    .line 623
    .local v4, "key":Landroid/inputmethodservice/Keyboard$Key;
    iget v5, v4, Landroid/inputmethodservice/Keyboard$Key;->width:I

    iget v6, v4, Landroid/inputmethodservice/Keyboard$Key;->height:I

    invoke-static {v5, v6}, Ljava/lang/Math;->min(II)I

    move-result v5

    iget v6, v4, Landroid/inputmethodservice/Keyboard$Key;->gap:I

    add-int/2addr v5, v6

    add-int/2addr v2, v5

    .line 621
    .end local v4    # "key":Landroid/inputmethodservice/Keyboard$Key;
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 625
    .end local v3    # "i":I
    :cond_2
    if-ltz v2, :cond_4

    if-nez v1, :cond_3

    goto :goto_1

    .line 626
    :cond_3
    int-to-float v3, v2

    const v4, 0x3fb33333    # 1.4f

    mul-float/2addr v3, v4

    int-to-float v4, v1

    div-float/2addr v3, v4

    float-to-int v3, v3

    iput v3, p0, Landroid/inputmethodservice/KeyboardView;->mProximityThreshold:I

    .line 627
    iget v3, p0, Landroid/inputmethodservice/KeyboardView;->mProximityThreshold:I

    iget v4, p0, Landroid/inputmethodservice/KeyboardView;->mProximityThreshold:I

    mul-int/2addr v3, v4

    iput v3, p0, Landroid/inputmethodservice/KeyboardView;->mProximityThreshold:I

    .line 628
    return-void

    .line 625
    :cond_4
    :goto_1
    return-void
.end method

.method private detectAndSendKey(IIIJ)V
    .locals 6
    .param p1, "index"    # I
    .param p2, "x"    # I
    .param p3, "y"    # I
    .param p4, "eventTime"    # J

    .line 817
    const/4 v0, -0x1

    if-eq p1, v0, :cond_3

    iget-object v1, p0, Landroid/inputmethodservice/KeyboardView;->mKeys:[Landroid/inputmethodservice/Keyboard$Key;

    array-length v1, v1

    if-ge p1, v1, :cond_3

    .line 818
    iget-object v1, p0, Landroid/inputmethodservice/KeyboardView;->mKeys:[Landroid/inputmethodservice/Keyboard$Key;

    aget-object v1, v1, p1

    .line 819
    .local v1, "key":Landroid/inputmethodservice/Keyboard$Key;
    iget-object v2, v1, Landroid/inputmethodservice/Keyboard$Key;->text:Ljava/lang/CharSequence;

    if-eqz v2, :cond_0

    .line 820
    iget-object v2, p0, Landroid/inputmethodservice/KeyboardView;->mKeyboardActionListener:Landroid/inputmethodservice/KeyboardView$OnKeyboardActionListener;

    iget-object v3, v1, Landroid/inputmethodservice/Keyboard$Key;->text:Ljava/lang/CharSequence;

    invoke-interface {v2, v3}, Landroid/inputmethodservice/KeyboardView$OnKeyboardActionListener;->onText(Ljava/lang/CharSequence;)V

    .line 821
    iget-object v2, p0, Landroid/inputmethodservice/KeyboardView;->mKeyboardActionListener:Landroid/inputmethodservice/KeyboardView$OnKeyboardActionListener;

    invoke-interface {v2, v0}, Landroid/inputmethodservice/KeyboardView$OnKeyboardActionListener;->onRelease(I)V

    goto :goto_1

    .line 823
    :cond_0
    iget-object v2, v1, Landroid/inputmethodservice/Keyboard$Key;->codes:[I

    const/4 v3, 0x0

    aget v2, v2, v3

    .line 825
    .local v2, "code":I
    sget v4, Landroid/inputmethodservice/KeyboardView;->MAX_NEARBY_KEYS:I

    new-array v4, v4, [I

    .line 826
    .local v4, "codes":[I
    invoke-static {v4, v0}, Ljava/util/Arrays;->fill([II)V

    .line 827
    invoke-direct {p0, p2, p3, v4}, Landroid/inputmethodservice/KeyboardView;->getKeyIndices(II[I)I

    .line 829
    iget-boolean v5, p0, Landroid/inputmethodservice/KeyboardView;->mInMultiTap:Z

    if-eqz v5, :cond_2

    .line 830
    iget v5, p0, Landroid/inputmethodservice/KeyboardView;->mTapCount:I

    if-eq v5, v0, :cond_1

    .line 831
    iget-object v0, p0, Landroid/inputmethodservice/KeyboardView;->mKeyboardActionListener:Landroid/inputmethodservice/KeyboardView$OnKeyboardActionListener;

    const/4 v3, -0x5

    sget-object v5, Landroid/inputmethodservice/KeyboardView;->KEY_DELETE:[I

    invoke-interface {v0, v3, v5}, Landroid/inputmethodservice/KeyboardView$OnKeyboardActionListener;->onKey(I[I)V

    goto :goto_0

    .line 833
    :cond_1
    iput v3, p0, Landroid/inputmethodservice/KeyboardView;->mTapCount:I

    .line 835
    :goto_0
    iget-object v0, v1, Landroid/inputmethodservice/Keyboard$Key;->codes:[I

    iget v3, p0, Landroid/inputmethodservice/KeyboardView;->mTapCount:I

    aget v2, v0, v3

    .line 837
    :cond_2
    iget-object v0, p0, Landroid/inputmethodservice/KeyboardView;->mKeyboardActionListener:Landroid/inputmethodservice/KeyboardView$OnKeyboardActionListener;

    invoke-interface {v0, v2, v4}, Landroid/inputmethodservice/KeyboardView$OnKeyboardActionListener;->onKey(I[I)V

    .line 838
    iget-object v0, p0, Landroid/inputmethodservice/KeyboardView;->mKeyboardActionListener:Landroid/inputmethodservice/KeyboardView$OnKeyboardActionListener;

    invoke-interface {v0, v2}, Landroid/inputmethodservice/KeyboardView$OnKeyboardActionListener;->onRelease(I)V

    .line 840
    .end local v2    # "code":I
    .end local v4    # "codes":[I
    :goto_1
    iput p1, p0, Landroid/inputmethodservice/KeyboardView;->mLastSentIndex:I

    .line 841
    iput-wide p4, p0, Landroid/inputmethodservice/KeyboardView;->mLastTapTime:J

    .line 843
    .end local v1    # "key":Landroid/inputmethodservice/Keyboard$Key;
    :cond_3
    return-void
.end method

.method private dismissPopupKeyboard()V
    .locals 1

    .line 1409
    iget-object v0, p0, Landroid/inputmethodservice/KeyboardView;->mPopupKeyboard:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1410
    iget-object v0, p0, Landroid/inputmethodservice/KeyboardView;->mPopupKeyboard:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    .line 1411
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/inputmethodservice/KeyboardView;->mMiniKeyboardOnScreen:Z

    .line 1412
    invoke-virtual {p0}, Landroid/inputmethodservice/KeyboardView;->invalidateAllKeys()V

    .line 1414
    :cond_0
    return-void
.end method

.method private getKeyIndices(II[I)I
    .locals 18
    .param p1, "x"    # I
    .param p2, "y"    # I
    .param p3, "allKeys"    # [I

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    .line 766
    move-object/from16 v3, p3

    iget-object v4, v0, Landroid/inputmethodservice/KeyboardView;->mKeys:[Landroid/inputmethodservice/Keyboard$Key;

    .line 767
    .local v4, "keys":[Landroid/inputmethodservice/Keyboard$Key;
    const/4 v5, -0x1

    .line 768
    .local v5, "primaryIndex":I
    const/4 v6, -0x1

    .line 769
    .local v6, "closestKey":I
    iget v7, v0, Landroid/inputmethodservice/KeyboardView;->mProximityThreshold:I

    add-int/lit8 v7, v7, 0x1

    .line 770
    .local v7, "closestKeyDist":I
    iget-object v8, v0, Landroid/inputmethodservice/KeyboardView;->mDistances:[I

    const v9, 0x7fffffff

    invoke-static {v8, v9}, Ljava/util/Arrays;->fill([II)V

    .line 771
    iget-object v8, v0, Landroid/inputmethodservice/KeyboardView;->mKeyboard:Landroid/inputmethodservice/Keyboard;

    invoke-virtual {v8, v1, v2}, Landroid/inputmethodservice/Keyboard;->getNearestKeys(II)[I

    move-result-object v8

    .line 772
    .local v8, "nearestKeyIndices":[I
    array-length v9, v8

    .line 773
    .local v9, "keyCount":I
    move v11, v7

    move v7, v6

    move v6, v5

    const/4 v5, 0x0

    .local v5, "i":I
    .local v6, "primaryIndex":I
    .local v7, "closestKey":I
    .local v11, "closestKeyDist":I
    :goto_0
    if-ge v5, v9, :cond_8

    .line 774
    aget v12, v8, v5

    aget-object v12, v4, v12

    .line 775
    .local v12, "key":Landroid/inputmethodservice/Keyboard$Key;
    const/4 v13, 0x0

    .line 776
    .local v13, "dist":I
    invoke-virtual {v12, v1, v2}, Landroid/inputmethodservice/Keyboard$Key;->isInside(II)Z

    move-result v14

    .line 777
    .local v14, "isInside":Z
    if-eqz v14, :cond_0

    .line 778
    aget v6, v8, v5

    .line 781
    :cond_0
    iget-boolean v15, v0, Landroid/inputmethodservice/KeyboardView;->mProximityCorrectOn:Z

    if-eqz v15, :cond_1

    .line 782
    invoke-virtual {v12, v1, v2}, Landroid/inputmethodservice/Keyboard$Key;->squaredDistanceFrom(II)I

    move-result v15

    move v13, v15

    iget v10, v0, Landroid/inputmethodservice/KeyboardView;->mProximityThreshold:I

    if-lt v15, v10, :cond_2

    :cond_1
    if-eqz v14, :cond_7

    :cond_2
    iget-object v10, v12, Landroid/inputmethodservice/Keyboard$Key;->codes:[I

    const/4 v15, 0x0

    aget v10, v10, v15

    const/16 v15, 0x20

    if-le v10, v15, :cond_7

    .line 786
    iget-object v10, v12, Landroid/inputmethodservice/Keyboard$Key;->codes:[I

    array-length v10, v10

    .line 787
    .local v10, "nCodes":I
    if-ge v13, v11, :cond_3

    .line 788
    move v11, v13

    .line 789
    aget v7, v8, v5

    .line 792
    :cond_3
    if-nez v3, :cond_4

    .line 773
    .end local v10    # "nCodes":I
    .end local v12    # "key":Landroid/inputmethodservice/Keyboard$Key;
    .end local v13    # "dist":I
    .end local v14    # "isInside":Z
    move-object/from16 v16, v4

    move/from16 v17, v6

    goto :goto_3

    .line 794
    .restart local v10    # "nCodes":I
    .restart local v12    # "key":Landroid/inputmethodservice/Keyboard$Key;
    .restart local v13    # "dist":I
    .restart local v14    # "isInside":Z
    :cond_4
    const/4 v15, 0x0

    .local v15, "j":I
    :goto_1
    iget-object v1, v0, Landroid/inputmethodservice/KeyboardView;->mDistances:[I

    array-length v1, v1

    if-ge v15, v1, :cond_7

    .line 795
    iget-object v1, v0, Landroid/inputmethodservice/KeyboardView;->mDistances:[I

    aget v1, v1, v15

    if-le v1, v13, :cond_6

    .line 797
    iget-object v1, v0, Landroid/inputmethodservice/KeyboardView;->mDistances:[I

    iget-object v2, v0, Landroid/inputmethodservice/KeyboardView;->mDistances:[I

    move-object/from16 v16, v4

    add-int v4, v15, v10

    .end local v4    # "keys":[Landroid/inputmethodservice/Keyboard$Key;
    .local v16, "keys":[Landroid/inputmethodservice/Keyboard$Key;
    move/from16 v17, v6

    iget-object v6, v0, Landroid/inputmethodservice/KeyboardView;->mDistances:[I

    .end local v6    # "primaryIndex":I
    .local v17, "primaryIndex":I
    array-length v6, v6

    sub-int/2addr v6, v15

    sub-int/2addr v6, v10

    invoke-static {v1, v15, v2, v4, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 799
    add-int v1, v15, v10

    array-length v2, v3

    sub-int/2addr v2, v15

    sub-int/2addr v2, v10

    invoke-static {v3, v15, v3, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 801
    const/4 v1, 0x0

    .local v1, "c":I
    :goto_2
    if-ge v1, v10, :cond_5

    .line 802
    add-int v2, v15, v1

    iget-object v4, v12, Landroid/inputmethodservice/Keyboard$Key;->codes:[I

    aget v4, v4, v1

    aput v4, v3, v2

    .line 803
    iget-object v2, v0, Landroid/inputmethodservice/KeyboardView;->mDistances:[I

    add-int v4, v15, v1

    aput v13, v2, v4

    .line 801
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 805
    .end local v1    # "c":I
    :cond_5
    goto :goto_3

    .line 794
    .end local v16    # "keys":[Landroid/inputmethodservice/Keyboard$Key;
    .end local v17    # "primaryIndex":I
    .restart local v4    # "keys":[Landroid/inputmethodservice/Keyboard$Key;
    .restart local v6    # "primaryIndex":I
    :cond_6
    move-object/from16 v16, v4

    move/from16 v17, v6

    .end local v4    # "keys":[Landroid/inputmethodservice/Keyboard$Key;
    .end local v6    # "primaryIndex":I
    .restart local v16    # "keys":[Landroid/inputmethodservice/Keyboard$Key;
    .restart local v17    # "primaryIndex":I
    add-int/lit8 v15, v15, 0x1

    move/from16 v1, p1

    move/from16 v2, p2

    goto :goto_1

    .line 773
    .end local v10    # "nCodes":I
    .end local v12    # "key":Landroid/inputmethodservice/Keyboard$Key;
    .end local v13    # "dist":I
    .end local v14    # "isInside":Z
    .end local v15    # "j":I
    .end local v16    # "keys":[Landroid/inputmethodservice/Keyboard$Key;
    .end local v17    # "primaryIndex":I
    .restart local v4    # "keys":[Landroid/inputmethodservice/Keyboard$Key;
    .restart local v6    # "primaryIndex":I
    :cond_7
    move-object/from16 v16, v4

    move/from16 v17, v6

    .end local v4    # "keys":[Landroid/inputmethodservice/Keyboard$Key;
    .end local v6    # "primaryIndex":I
    .restart local v16    # "keys":[Landroid/inputmethodservice/Keyboard$Key;
    .restart local v17    # "primaryIndex":I
    :goto_3
    add-int/lit8 v5, v5, 0x1

    move-object/from16 v4, v16

    move/from16 v6, v17

    move/from16 v1, p1

    move/from16 v2, p2

    goto/16 :goto_0

    .line 810
    .end local v5    # "i":I
    .end local v16    # "keys":[Landroid/inputmethodservice/Keyboard$Key;
    .end local v17    # "primaryIndex":I
    .restart local v4    # "keys":[Landroid/inputmethodservice/Keyboard$Key;
    .restart local v6    # "primaryIndex":I
    :cond_8
    move-object/from16 v16, v4

    .end local v4    # "keys":[Landroid/inputmethodservice/Keyboard$Key;
    .restart local v16    # "keys":[Landroid/inputmethodservice/Keyboard$Key;
    const/4 v1, -0x1

    if-ne v6, v1, :cond_9

    .line 811
    move v6, v7

    .line 813
    :cond_9
    return v6
.end method

.method private getPreviewText(Landroid/inputmethodservice/Keyboard$Key;)Ljava/lang/CharSequence;
    .locals 4
    .param p1, "key"    # Landroid/inputmethodservice/Keyboard$Key;

    .line 849
    iget-boolean v0, p0, Landroid/inputmethodservice/KeyboardView;->mInMultiTap:Z

    if-eqz v0, :cond_1

    .line 851
    iget-object v0, p0, Landroid/inputmethodservice/KeyboardView;->mPreviewLabel:Ljava/lang/StringBuilder;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 852
    iget-object v0, p0, Landroid/inputmethodservice/KeyboardView;->mPreviewLabel:Ljava/lang/StringBuilder;

    iget-object v2, p1, Landroid/inputmethodservice/Keyboard$Key;->codes:[I

    iget v3, p0, Landroid/inputmethodservice/KeyboardView;->mTapCount:I

    if-gez v3, :cond_0

    goto :goto_0

    :cond_0
    iget v1, p0, Landroid/inputmethodservice/KeyboardView;->mTapCount:I

    :goto_0
    aget v1, v2, v1

    int-to-char v1, v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 853
    iget-object v0, p0, Landroid/inputmethodservice/KeyboardView;->mPreviewLabel:Ljava/lang/StringBuilder;

    invoke-direct {p0, v0}, Landroid/inputmethodservice/KeyboardView;->adjustCase(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0

    .line 855
    :cond_1
    iget-object v0, p1, Landroid/inputmethodservice/Keyboard$Key;->label:Ljava/lang/CharSequence;

    invoke-direct {p0, v0}, Landroid/inputmethodservice/KeyboardView;->adjustCase(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method private initGestureDetector()V
    .locals 3

    .line 393
    iget-object v0, p0, Landroid/inputmethodservice/KeyboardView;->mGestureDetector:Landroid/view/GestureDetector;

    if-nez v0, :cond_0

    .line 394
    new-instance v0, Landroid/view/GestureDetector;

    invoke-virtual {p0}, Landroid/inputmethodservice/KeyboardView;->getContext()Landroid/content/Context;

    move-result-object v1

    new-instance v2, Landroid/inputmethodservice/KeyboardView$2;

    invoke-direct {v2, p0}, Landroid/inputmethodservice/KeyboardView$2;-><init>(Landroid/inputmethodservice/KeyboardView;)V

    invoke-direct {v0, v1, v2}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object v0, p0, Landroid/inputmethodservice/KeyboardView;->mGestureDetector:Landroid/view/GestureDetector;

    .line 446
    iget-object v0, p0, Landroid/inputmethodservice/KeyboardView;->mGestureDetector:Landroid/view/GestureDetector;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/GestureDetector;->setIsLongpressEnabled(Z)V

    .line 448
    :cond_0
    return-void
.end method

.method private onBufferDraw()V
    .locals 24

    .line 650
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/inputmethodservice/KeyboardView;->mBuffer:Landroid/graphics/Bitmap;

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_0

    iget-boolean v1, v0, Landroid/inputmethodservice/KeyboardView;->mKeyboardChanged:Z

    if-eqz v1, :cond_3

    .line 651
    :cond_0
    iget-object v1, v0, Landroid/inputmethodservice/KeyboardView;->mBuffer:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_1

    iget-boolean v1, v0, Landroid/inputmethodservice/KeyboardView;->mKeyboardChanged:Z

    if-eqz v1, :cond_2

    iget-object v1, v0, Landroid/inputmethodservice/KeyboardView;->mBuffer:Landroid/graphics/Bitmap;

    .line 652
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    invoke-virtual/range {p0 .. p0}, Landroid/inputmethodservice/KeyboardView;->getWidth()I

    move-result v4

    if-ne v1, v4, :cond_1

    iget-object v1, v0, Landroid/inputmethodservice/KeyboardView;->mBuffer:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    invoke-virtual/range {p0 .. p0}, Landroid/inputmethodservice/KeyboardView;->getHeight()I

    move-result v4

    if-eq v1, v4, :cond_2

    .line 654
    :cond_1
    invoke-virtual/range {p0 .. p0}, Landroid/inputmethodservice/KeyboardView;->getWidth()I

    move-result v1

    invoke-static {v2, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 655
    .local v1, "width":I
    invoke-virtual/range {p0 .. p0}, Landroid/inputmethodservice/KeyboardView;->getHeight()I

    move-result v4

    invoke-static {v2, v4}, Ljava/lang/Math;->max(II)I

    move-result v4

    .line 656
    .local v4, "height":I
    sget-object v5, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v1, v4, v5}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v5

    iput-object v5, v0, Landroid/inputmethodservice/KeyboardView;->mBuffer:Landroid/graphics/Bitmap;

    .line 657
    new-instance v5, Landroid/graphics/Canvas;

    iget-object v6, v0, Landroid/inputmethodservice/KeyboardView;->mBuffer:Landroid/graphics/Bitmap;

    invoke-direct {v5, v6}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    iput-object v5, v0, Landroid/inputmethodservice/KeyboardView;->mCanvas:Landroid/graphics/Canvas;

    .line 659
    .end local v1    # "width":I
    .end local v4    # "height":I
    :cond_2
    invoke-virtual/range {p0 .. p0}, Landroid/inputmethodservice/KeyboardView;->invalidateAllKeys()V

    .line 660
    iput-boolean v3, v0, Landroid/inputmethodservice/KeyboardView;->mKeyboardChanged:Z

    .line 663
    :cond_3
    iget-object v1, v0, Landroid/inputmethodservice/KeyboardView;->mKeyboard:Landroid/inputmethodservice/Keyboard;

    if-nez v1, :cond_4

    return-void

    .line 665
    :cond_4
    iget-object v1, v0, Landroid/inputmethodservice/KeyboardView;->mCanvas:Landroid/graphics/Canvas;

    invoke-virtual {v1}, Landroid/graphics/Canvas;->save()I

    .line 666
    iget-object v1, v0, Landroid/inputmethodservice/KeyboardView;->mCanvas:Landroid/graphics/Canvas;

    .line 667
    .local v1, "canvas":Landroid/graphics/Canvas;
    iget-object v4, v0, Landroid/inputmethodservice/KeyboardView;->mDirtyRect:Landroid/graphics/Rect;

    invoke-virtual {v1, v4}, Landroid/graphics/Canvas;->clipRect(Landroid/graphics/Rect;)Z

    .line 669
    iget-object v10, v0, Landroid/inputmethodservice/KeyboardView;->mPaint:Landroid/graphics/Paint;

    .line 670
    .local v10, "paint":Landroid/graphics/Paint;
    iget-object v11, v0, Landroid/inputmethodservice/KeyboardView;->mKeyBackground:Landroid/graphics/drawable/Drawable;

    .line 671
    .local v11, "keyBackground":Landroid/graphics/drawable/Drawable;
    iget-object v12, v0, Landroid/inputmethodservice/KeyboardView;->mClipRegion:Landroid/graphics/Rect;

    .line 672
    .local v12, "clipRegion":Landroid/graphics/Rect;
    iget-object v13, v0, Landroid/inputmethodservice/KeyboardView;->mPadding:Landroid/graphics/Rect;

    .line 673
    .local v13, "padding":Landroid/graphics/Rect;
    iget v14, v0, Landroid/inputmethodservice/KeyboardView;->mPaddingLeft:I

    .line 674
    .local v14, "kbdPaddingLeft":I
    iget v15, v0, Landroid/inputmethodservice/KeyboardView;->mPaddingTop:I

    .line 675
    .local v15, "kbdPaddingTop":I
    iget-object v9, v0, Landroid/inputmethodservice/KeyboardView;->mKeys:[Landroid/inputmethodservice/Keyboard$Key;

    .line 676
    .local v9, "keys":[Landroid/inputmethodservice/Keyboard$Key;
    iget-object v8, v0, Landroid/inputmethodservice/KeyboardView;->mInvalidatedKey:Landroid/inputmethodservice/Keyboard$Key;

    .line 678
    .local v8, "invalidKey":Landroid/inputmethodservice/Keyboard$Key;
    iget v4, v0, Landroid/inputmethodservice/KeyboardView;->mKeyTextColor:I

    invoke-virtual {v10, v4}, Landroid/graphics/Paint;->setColor(I)V

    .line 679
    const/4 v4, 0x0

    .line 680
    .local v4, "drawSingleKey":Z
    if-eqz v8, :cond_5

    invoke-virtual {v1, v12}, Landroid/graphics/Canvas;->getClipBounds(Landroid/graphics/Rect;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 682
    iget v5, v8, Landroid/inputmethodservice/Keyboard$Key;->x:I

    add-int/2addr v5, v14

    sub-int/2addr v5, v2

    iget v6, v12, Landroid/graphics/Rect;->left:I

    if-gt v5, v6, :cond_5

    iget v5, v8, Landroid/inputmethodservice/Keyboard$Key;->y:I

    add-int/2addr v5, v15

    sub-int/2addr v5, v2

    iget v6, v12, Landroid/graphics/Rect;->top:I

    if-gt v5, v6, :cond_5

    iget v5, v8, Landroid/inputmethodservice/Keyboard$Key;->x:I

    iget v6, v8, Landroid/inputmethodservice/Keyboard$Key;->width:I

    add-int/2addr v5, v6

    add-int/2addr v5, v14

    add-int/2addr v5, v2

    iget v6, v12, Landroid/graphics/Rect;->right:I

    if-lt v5, v6, :cond_5

    iget v5, v8, Landroid/inputmethodservice/Keyboard$Key;->y:I

    iget v6, v8, Landroid/inputmethodservice/Keyboard$Key;->height:I

    add-int/2addr v5, v6

    add-int/2addr v5, v15

    add-int/2addr v5, v2

    iget v6, v12, Landroid/graphics/Rect;->bottom:I

    if-lt v5, v6, :cond_5

    .line 686
    const/4 v4, 0x1

    .line 689
    .end local v4    # "drawSingleKey":Z
    .local v16, "drawSingleKey":Z
    :cond_5
    move/from16 v16, v4

    sget-object v4, Landroid/graphics/PorterDuff$Mode;->CLEAR:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v1, v3, v4}, Landroid/graphics/Canvas;->drawColor(ILandroid/graphics/PorterDuff$Mode;)V

    .line 690
    array-length v7, v9

    .line 691
    .local v7, "keyCount":I
    move v4, v3

    .local v4, "i":I
    :goto_0
    if-ge v4, v7, :cond_d

    .line 692
    aget-object v6, v9, v4

    .line 693
    .local v6, "key":Landroid/inputmethodservice/Keyboard$Key;
    if-eqz v16, :cond_6

    if-eq v8, v6, :cond_6

    .line 694
    nop

    .line 691
    move/from16 v19, v7

    move-object/from16 v22, v8

    move-object/from16 v23, v9

    goto/16 :goto_6

    .line 696
    :cond_6
    invoke-virtual {v6}, Landroid/inputmethodservice/Keyboard$Key;->getCurrentDrawableState()[I

    move-result-object v5

    .line 697
    .local v5, "drawableState":[I
    invoke-virtual {v11, v5}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 700
    iget-object v2, v6, Landroid/inputmethodservice/Keyboard$Key;->label:Ljava/lang/CharSequence;

    if-nez v2, :cond_7

    const/16 v17, 0x0

    goto :goto_1

    :cond_7
    iget-object v2, v6, Landroid/inputmethodservice/Keyboard$Key;->label:Ljava/lang/CharSequence;

    invoke-direct {v0, v2}, Landroid/inputmethodservice/KeyboardView;->adjustCase(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v17, v2

    :goto_1
    move-object/from16 v2, v17

    .line 702
    .local v2, "label":Ljava/lang/String;
    invoke-virtual {v11}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v3

    .line 703
    .local v3, "bounds":Landroid/graphics/Rect;
    move-object/from16 v18, v5

    iget v5, v6, Landroid/inputmethodservice/Keyboard$Key;->width:I

    .end local v5    # "drawableState":[I
    .local v18, "drawableState":[I
    move/from16 v19, v7

    iget v7, v3, Landroid/graphics/Rect;->right:I

    .end local v7    # "keyCount":I
    .local v19, "keyCount":I
    if-ne v5, v7, :cond_9

    iget v5, v6, Landroid/inputmethodservice/Keyboard$Key;->height:I

    iget v7, v3, Landroid/graphics/Rect;->bottom:I

    if-eq v5, v7, :cond_8

    goto :goto_2

    .line 707
    :cond_8
    move-object/from16 v20, v3

    goto :goto_3

    .line 705
    :cond_9
    :goto_2
    iget v5, v6, Landroid/inputmethodservice/Keyboard$Key;->width:I

    iget v7, v6, Landroid/inputmethodservice/Keyboard$Key;->height:I

    move-object/from16 v20, v3

    const/4 v3, 0x0

    invoke-virtual {v11, v3, v3, v5, v7}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 707
    .end local v3    # "bounds":Landroid/graphics/Rect;
    .local v20, "bounds":Landroid/graphics/Rect;
    :goto_3
    iget v3, v6, Landroid/inputmethodservice/Keyboard$Key;->x:I

    add-int/2addr v3, v14

    int-to-float v3, v3

    iget v5, v6, Landroid/inputmethodservice/Keyboard$Key;->y:I

    add-int/2addr v5, v15

    int-to-float v5, v5

    invoke-virtual {v1, v3, v5}, Landroid/graphics/Canvas;->translate(FF)V

    .line 708
    invoke-virtual {v11, v1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 710
    const/4 v3, 0x2

    if-eqz v2, :cond_b

    .line 712
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v5

    const/4 v7, 0x1

    if-le v5, v7, :cond_a

    iget-object v5, v6, Landroid/inputmethodservice/Keyboard$Key;->codes:[I

    array-length v5, v5

    if-ge v5, v3, :cond_a

    .line 713
    iget v5, v0, Landroid/inputmethodservice/KeyboardView;->mLabelTextSize:I

    int-to-float v5, v5

    invoke-virtual {v10, v5}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 714
    sget-object v5, Landroid/graphics/Typeface;->DEFAULT_BOLD:Landroid/graphics/Typeface;

    invoke-virtual {v10, v5}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    goto :goto_4

    .line 716
    :cond_a
    iget v5, v0, Landroid/inputmethodservice/KeyboardView;->mKeyTextSize:I

    int-to-float v5, v5

    invoke-virtual {v10, v5}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 717
    sget-object v5, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    invoke-virtual {v10, v5}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 720
    :goto_4
    iget v5, v0, Landroid/inputmethodservice/KeyboardView;->mShadowRadius:F

    iget v7, v0, Landroid/inputmethodservice/KeyboardView;->mShadowColor:I

    const/4 v3, 0x0

    invoke-virtual {v10, v5, v3, v3, v7}, Landroid/graphics/Paint;->setShadowLayer(FFFI)V

    .line 722
    iget v5, v6, Landroid/inputmethodservice/Keyboard$Key;->width:I

    iget v7, v13, Landroid/graphics/Rect;->left:I

    sub-int/2addr v5, v7

    iget v7, v13, Landroid/graphics/Rect;->right:I

    sub-int/2addr v5, v7

    const/4 v7, 0x2

    div-int/2addr v5, v7

    iget v3, v13, Landroid/graphics/Rect;->left:I

    add-int/2addr v5, v3

    int-to-float v3, v5

    iget v5, v6, Landroid/inputmethodservice/Keyboard$Key;->height:I

    iget v7, v13, Landroid/graphics/Rect;->top:I

    sub-int/2addr v5, v7

    iget v7, v13, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v5, v7

    const/4 v7, 0x2

    div-int/2addr v5, v7

    int-to-float v5, v5

    .line 726
    invoke-virtual {v10}, Landroid/graphics/Paint;->getTextSize()F

    move-result v7

    invoke-virtual {v10}, Landroid/graphics/Paint;->descent()F

    move-result v17

    sub-float v7, v7, v17

    const/high16 v17, 0x40000000    # 2.0f

    div-float v7, v7, v17

    add-float/2addr v5, v7

    iget v7, v13, Landroid/graphics/Rect;->top:I

    int-to-float v7, v7

    add-float/2addr v5, v7

    .line 722
    invoke-virtual {v1, v2, v3, v5, v10}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 729
    const/4 v3, 0x0

    const/4 v5, 0x0

    invoke-virtual {v10, v5, v5, v5, v3}, Landroid/graphics/Paint;->setShadowLayer(FFFI)V

    .line 741
    move-object/from16 v21, v2

    move-object/from16 v22, v8

    move-object/from16 v23, v9

    goto :goto_5

    .line 730
    :cond_b
    iget-object v3, v6, Landroid/inputmethodservice/Keyboard$Key;->icon:Landroid/graphics/drawable/Drawable;

    if-eqz v3, :cond_c

    .line 731
    iget v3, v6, Landroid/inputmethodservice/Keyboard$Key;->width:I

    iget v5, v13, Landroid/graphics/Rect;->left:I

    sub-int/2addr v3, v5

    iget v5, v13, Landroid/graphics/Rect;->right:I

    sub-int/2addr v3, v5

    iget-object v5, v6, Landroid/inputmethodservice/Keyboard$Key;->icon:Landroid/graphics/drawable/Drawable;

    .line 732
    invoke-virtual {v5}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v5

    sub-int/2addr v3, v5

    const/4 v5, 0x2

    div-int/2addr v3, v5

    iget v5, v13, Landroid/graphics/Rect;->left:I

    add-int/2addr v3, v5

    .line 733
    .local v3, "drawableX":I
    iget v5, v6, Landroid/inputmethodservice/Keyboard$Key;->height:I

    iget v7, v13, Landroid/graphics/Rect;->top:I

    sub-int/2addr v5, v7

    iget v7, v13, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v5, v7

    iget-object v7, v6, Landroid/inputmethodservice/Keyboard$Key;->icon:Landroid/graphics/drawable/Drawable;

    .line 734
    invoke-virtual {v7}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v7

    sub-int/2addr v5, v7

    const/4 v7, 0x2

    div-int/2addr v5, v7

    iget v7, v13, Landroid/graphics/Rect;->top:I

    add-int/2addr v5, v7

    .line 735
    .local v5, "drawableY":I
    int-to-float v7, v3

    move-object/from16 v21, v2

    int-to-float v2, v5

    .end local v2    # "label":Ljava/lang/String;
    .local v21, "label":Ljava/lang/String;
    invoke-virtual {v1, v7, v2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 736
    iget-object v2, v6, Landroid/inputmethodservice/Keyboard$Key;->icon:Landroid/graphics/drawable/Drawable;

    iget-object v7, v6, Landroid/inputmethodservice/Keyboard$Key;->icon:Landroid/graphics/drawable/Drawable;

    .line 737
    invoke-virtual {v7}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v7

    move-object/from16 v22, v8

    iget-object v8, v6, Landroid/inputmethodservice/Keyboard$Key;->icon:Landroid/graphics/drawable/Drawable;

    .end local v8    # "invalidKey":Landroid/inputmethodservice/Keyboard$Key;
    .local v22, "invalidKey":Landroid/inputmethodservice/Keyboard$Key;
    invoke-virtual {v8}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v8

    .line 736
    move-object/from16 v23, v9

    const/4 v9, 0x0

    invoke-virtual {v2, v9, v9, v7, v8}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 738
    .end local v9    # "keys":[Landroid/inputmethodservice/Keyboard$Key;
    .local v23, "keys":[Landroid/inputmethodservice/Keyboard$Key;
    iget-object v2, v6, Landroid/inputmethodservice/Keyboard$Key;->icon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2, v1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 739
    neg-int v2, v3

    int-to-float v2, v2

    neg-int v7, v5

    int-to-float v7, v7

    invoke-virtual {v1, v2, v7}, Landroid/graphics/Canvas;->translate(FF)V

    .end local v3    # "drawableX":I
    .end local v5    # "drawableY":I
    goto :goto_5

    .line 741
    .end local v21    # "label":Ljava/lang/String;
    .end local v22    # "invalidKey":Landroid/inputmethodservice/Keyboard$Key;
    .end local v23    # "keys":[Landroid/inputmethodservice/Keyboard$Key;
    .restart local v2    # "label":Ljava/lang/String;
    .restart local v8    # "invalidKey":Landroid/inputmethodservice/Keyboard$Key;
    .restart local v9    # "keys":[Landroid/inputmethodservice/Keyboard$Key;
    :cond_c
    move-object/from16 v21, v2

    move-object/from16 v22, v8

    move-object/from16 v23, v9

    .end local v2    # "label":Ljava/lang/String;
    .end local v8    # "invalidKey":Landroid/inputmethodservice/Keyboard$Key;
    .end local v9    # "keys":[Landroid/inputmethodservice/Keyboard$Key;
    .restart local v21    # "label":Ljava/lang/String;
    .restart local v22    # "invalidKey":Landroid/inputmethodservice/Keyboard$Key;
    .restart local v23    # "keys":[Landroid/inputmethodservice/Keyboard$Key;
    :goto_5
    iget v2, v6, Landroid/inputmethodservice/Keyboard$Key;->x:I

    neg-int v2, v2

    sub-int/2addr v2, v14

    int-to-float v2, v2

    iget v3, v6, Landroid/inputmethodservice/Keyboard$Key;->y:I

    neg-int v3, v3

    sub-int/2addr v3, v15

    int-to-float v3, v3

    invoke-virtual {v1, v2, v3}, Landroid/graphics/Canvas;->translate(FF)V

    .line 691
    .end local v6    # "key":Landroid/inputmethodservice/Keyboard$Key;
    .end local v18    # "drawableState":[I
    .end local v20    # "bounds":Landroid/graphics/Rect;
    .end local v21    # "label":Ljava/lang/String;
    :goto_6
    add-int/lit8 v4, v4, 0x1

    move/from16 v7, v19

    move-object/from16 v8, v22

    move-object/from16 v9, v23

    const/4 v2, 0x1

    const/4 v3, 0x0

    goto/16 :goto_0

    .line 743
    .end local v4    # "i":I
    .end local v19    # "keyCount":I
    .end local v22    # "invalidKey":Landroid/inputmethodservice/Keyboard$Key;
    .end local v23    # "keys":[Landroid/inputmethodservice/Keyboard$Key;
    .restart local v7    # "keyCount":I
    .restart local v8    # "invalidKey":Landroid/inputmethodservice/Keyboard$Key;
    .restart local v9    # "keys":[Landroid/inputmethodservice/Keyboard$Key;
    :cond_d
    move/from16 v19, v7

    move-object/from16 v22, v8

    move-object/from16 v23, v9

    .end local v7    # "keyCount":I
    .end local v8    # "invalidKey":Landroid/inputmethodservice/Keyboard$Key;
    .end local v9    # "keys":[Landroid/inputmethodservice/Keyboard$Key;
    .restart local v19    # "keyCount":I
    .restart local v22    # "invalidKey":Landroid/inputmethodservice/Keyboard$Key;
    .restart local v23    # "keys":[Landroid/inputmethodservice/Keyboard$Key;
    const/4 v2, 0x0

    iput-object v2, v0, Landroid/inputmethodservice/KeyboardView;->mInvalidatedKey:Landroid/inputmethodservice/Keyboard$Key;

    .line 745
    iget-boolean v2, v0, Landroid/inputmethodservice/KeyboardView;->mMiniKeyboardOnScreen:Z

    if-eqz v2, :cond_e

    .line 746
    iget v2, v0, Landroid/inputmethodservice/KeyboardView;->mBackgroundDimAmount:F

    const/high16 v3, 0x437f0000    # 255.0f

    mul-float/2addr v2, v3

    float-to-int v2, v2

    shl-int/lit8 v2, v2, 0x18

    invoke-virtual {v10, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 747
    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {p0 .. p0}, Landroid/inputmethodservice/KeyboardView;->getWidth()I

    move-result v2

    int-to-float v7, v2

    invoke-virtual/range {p0 .. p0}, Landroid/inputmethodservice/KeyboardView;->getHeight()I

    move-result v2

    int-to-float v8, v2

    move-object v4, v1

    move/from16 v2, v19

    .end local v19    # "keyCount":I
    .local v2, "keyCount":I
    move-object/from16 v3, v22

    .end local v22    # "invalidKey":Landroid/inputmethodservice/Keyboard$Key;
    .local v3, "invalidKey":Landroid/inputmethodservice/Keyboard$Key;
    move-object/from16 v17, v23

    move-object v9, v10

    .end local v23    # "keys":[Landroid/inputmethodservice/Keyboard$Key;
    .local v17, "keys":[Landroid/inputmethodservice/Keyboard$Key;
    invoke-virtual/range {v4 .. v9}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    goto :goto_7

    .line 760
    .end local v2    # "keyCount":I
    .end local v3    # "invalidKey":Landroid/inputmethodservice/Keyboard$Key;
    .end local v17    # "keys":[Landroid/inputmethodservice/Keyboard$Key;
    .restart local v19    # "keyCount":I
    .restart local v22    # "invalidKey":Landroid/inputmethodservice/Keyboard$Key;
    .restart local v23    # "keys":[Landroid/inputmethodservice/Keyboard$Key;
    :cond_e
    move/from16 v2, v19

    move-object/from16 v3, v22

    move-object/from16 v17, v23

    .end local v19    # "keyCount":I
    .end local v22    # "invalidKey":Landroid/inputmethodservice/Keyboard$Key;
    .end local v23    # "keys":[Landroid/inputmethodservice/Keyboard$Key;
    .restart local v2    # "keyCount":I
    .restart local v3    # "invalidKey":Landroid/inputmethodservice/Keyboard$Key;
    .restart local v17    # "keys":[Landroid/inputmethodservice/Keyboard$Key;
    :goto_7
    iget-object v4, v0, Landroid/inputmethodservice/KeyboardView;->mCanvas:Landroid/graphics/Canvas;

    invoke-virtual {v4}, Landroid/graphics/Canvas;->restore()V

    .line 761
    const/4 v4, 0x0

    iput-boolean v4, v0, Landroid/inputmethodservice/KeyboardView;->mDrawPending:Z

    .line 762
    iget-object v4, v0, Landroid/inputmethodservice/KeyboardView;->mDirtyRect:Landroid/graphics/Rect;

    invoke-virtual {v4}, Landroid/graphics/Rect;->setEmpty()V

    .line 763
    return-void
.end method

.method private onModifiedTouchEvent(Landroid/view/MotionEvent;Z)Z
    .locals 16
    .param p1, "me"    # Landroid/view/MotionEvent;
    .param p2, "possiblePoly"    # Z

    move-object/from16 v6, p0

    move-object/from16 v7, p1

    .line 1219
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    float-to-int v0, v0

    iget v1, v6, Landroid/inputmethodservice/KeyboardView;->mPaddingLeft:I

    sub-int/2addr v0, v1

    .line 1220
    .local v0, "touchX":I
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    float-to-int v1, v1

    iget v2, v6, Landroid/inputmethodservice/KeyboardView;->mPaddingTop:I

    sub-int/2addr v1, v2

    .line 1221
    .local v1, "touchY":I
    iget v2, v6, Landroid/inputmethodservice/KeyboardView;->mVerticalCorrection:I

    neg-int v2, v2

    if-lt v1, v2, :cond_0

    .line 1222
    iget v2, v6, Landroid/inputmethodservice/KeyboardView;->mVerticalCorrection:I

    add-int/2addr v1, v2

    .line 1223
    :cond_0
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v8

    .line 1224
    .local v8, "action":I
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v9

    .line 1225
    .local v9, "eventTime":J
    const/4 v2, 0x0

    invoke-direct {v6, v0, v1, v2}, Landroid/inputmethodservice/KeyboardView;->getKeyIndices(II[I)I

    move-result v11

    .line 1226
    .local v11, "keyIndex":I
    move/from16 v12, p2

    iput-boolean v12, v6, Landroid/inputmethodservice/KeyboardView;->mPossiblePoly:Z

    .line 1229
    if-nez v8, :cond_1

    iget-object v2, v6, Landroid/inputmethodservice/KeyboardView;->mSwipeTracker:Landroid/inputmethodservice/KeyboardView$SwipeTracker;

    invoke-virtual {v2}, Landroid/inputmethodservice/KeyboardView$SwipeTracker;->clear()V

    .line 1230
    :cond_1
    iget-object v2, v6, Landroid/inputmethodservice/KeyboardView;->mSwipeTracker:Landroid/inputmethodservice/KeyboardView$SwipeTracker;

    invoke-virtual {v2, v7}, Landroid/inputmethodservice/KeyboardView$SwipeTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 1233
    iget-boolean v2, v6, Landroid/inputmethodservice/KeyboardView;->mAbortKey:Z

    const/4 v3, 0x3

    const/4 v13, 0x1

    if-eqz v2, :cond_2

    if-eqz v8, :cond_2

    if-eq v8, v3, :cond_2

    .line 1235
    return v13

    .line 1238
    :cond_2
    iget-object v2, v6, Landroid/inputmethodservice/KeyboardView;->mGestureDetector:Landroid/view/GestureDetector;

    invoke-virtual {v2, v7}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v2

    const/4 v4, 0x4

    const/4 v14, -0x1

    if-eqz v2, :cond_3

    .line 1239
    invoke-direct {v6, v14}, Landroid/inputmethodservice/KeyboardView;->showPreview(I)V

    .line 1240
    iget-object v2, v6, Landroid/inputmethodservice/KeyboardView;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 1241
    iget-object v2, v6, Landroid/inputmethodservice/KeyboardView;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v4}, Landroid/os/Handler;->removeMessages(I)V

    .line 1242
    return v13

    .line 1247
    :cond_3
    iget-boolean v2, v6, Landroid/inputmethodservice/KeyboardView;->mMiniKeyboardOnScreen:Z

    if-eqz v2, :cond_4

    if-eq v8, v3, :cond_4

    .line 1248
    return v13

    .line 1251
    :cond_4
    packed-switch v8, :pswitch_data_0

    goto/16 :goto_2

    .line 1348
    :pswitch_0
    invoke-direct/range {p0 .. p0}, Landroid/inputmethodservice/KeyboardView;->removeMessages()V

    .line 1349
    invoke-direct/range {p0 .. p0}, Landroid/inputmethodservice/KeyboardView;->dismissPopupKeyboard()V

    .line 1350
    iput-boolean v13, v6, Landroid/inputmethodservice/KeyboardView;->mAbortKey:Z

    .line 1351
    invoke-direct {v6, v14}, Landroid/inputmethodservice/KeyboardView;->showPreview(I)V

    .line 1352
    iget v2, v6, Landroid/inputmethodservice/KeyboardView;->mCurrentKey:I

    invoke-virtual {v6, v2}, Landroid/inputmethodservice/KeyboardView;->invalidateKey(I)V

    goto/16 :goto_2

    .line 1287
    :pswitch_1
    const/4 v2, 0x0

    .line 1288
    .local v2, "continueLongPress":Z
    if-eq v11, v14, :cond_7

    .line 1289
    iget v5, v6, Landroid/inputmethodservice/KeyboardView;->mCurrentKey:I

    if-ne v5, v14, :cond_5

    .line 1290
    iput v11, v6, Landroid/inputmethodservice/KeyboardView;->mCurrentKey:I

    .line 1291
    iget-wide v3, v6, Landroid/inputmethodservice/KeyboardView;->mDownTime:J

    sub-long v3, v9, v3

    iput-wide v3, v6, Landroid/inputmethodservice/KeyboardView;->mCurrentKeyTime:J

    goto :goto_0

    .line 1293
    :cond_5
    iget v5, v6, Landroid/inputmethodservice/KeyboardView;->mCurrentKey:I

    if-ne v11, v5, :cond_6

    .line 1294
    iget-wide v3, v6, Landroid/inputmethodservice/KeyboardView;->mCurrentKeyTime:J

    iget-wide v13, v6, Landroid/inputmethodservice/KeyboardView;->mLastMoveTime:J

    sub-long v13, v9, v13

    add-long/2addr v3, v13

    iput-wide v3, v6, Landroid/inputmethodservice/KeyboardView;->mCurrentKeyTime:J

    .line 1295
    const/4 v2, 0x1

    goto :goto_0

    .line 1296
    :cond_6
    iget v5, v6, Landroid/inputmethodservice/KeyboardView;->mRepeatKeyIndex:I

    const/4 v13, -0x1

    if-ne v5, v13, :cond_7

    .line 1297
    invoke-direct/range {p0 .. p0}, Landroid/inputmethodservice/KeyboardView;->resetMultiTap()V

    .line 1298
    iget v5, v6, Landroid/inputmethodservice/KeyboardView;->mCurrentKey:I

    iput v5, v6, Landroid/inputmethodservice/KeyboardView;->mLastKey:I

    .line 1299
    iget v5, v6, Landroid/inputmethodservice/KeyboardView;->mLastX:I

    iput v5, v6, Landroid/inputmethodservice/KeyboardView;->mLastCodeX:I

    .line 1300
    iget v5, v6, Landroid/inputmethodservice/KeyboardView;->mLastY:I

    iput v5, v6, Landroid/inputmethodservice/KeyboardView;->mLastCodeY:I

    .line 1301
    iget-wide v13, v6, Landroid/inputmethodservice/KeyboardView;->mCurrentKeyTime:J

    add-long/2addr v13, v9

    iget-wide v3, v6, Landroid/inputmethodservice/KeyboardView;->mLastMoveTime:J

    sub-long/2addr v13, v3

    iput-wide v13, v6, Landroid/inputmethodservice/KeyboardView;->mLastKeyTime:J

    .line 1303
    iput v11, v6, Landroid/inputmethodservice/KeyboardView;->mCurrentKey:I

    .line 1304
    const-wide/16 v3, 0x0

    iput-wide v3, v6, Landroid/inputmethodservice/KeyboardView;->mCurrentKeyTime:J

    .line 1308
    :cond_7
    :goto_0
    if-nez v2, :cond_8

    .line 1310
    iget-object v3, v6, Landroid/inputmethodservice/KeyboardView;->mHandler:Landroid/os/Handler;

    const/4 v4, 0x4

    invoke-virtual {v3, v4}, Landroid/os/Handler;->removeMessages(I)V

    .line 1312
    const/4 v3, -0x1

    if-eq v11, v3, :cond_8

    .line 1313
    iget-object v3, v6, Landroid/inputmethodservice/KeyboardView;->mHandler:Landroid/os/Handler;

    invoke-virtual {v3, v4, v7}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    .line 1314
    .local v3, "msg":Landroid/os/Message;
    iget-object v4, v6, Landroid/inputmethodservice/KeyboardView;->mHandler:Landroid/os/Handler;

    sget v5, Landroid/inputmethodservice/KeyboardView;->LONGPRESS_TIMEOUT:I

    int-to-long v13, v5

    invoke-virtual {v4, v3, v13, v14}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 1317
    .end local v3    # "msg":Landroid/os/Message;
    :cond_8
    iget v3, v6, Landroid/inputmethodservice/KeyboardView;->mCurrentKey:I

    invoke-direct {v6, v3}, Landroid/inputmethodservice/KeyboardView;->showPreview(I)V

    .line 1318
    iput-wide v9, v6, Landroid/inputmethodservice/KeyboardView;->mLastMoveTime:J

    .line 1319
    goto/16 :goto_2

    .line 1322
    .end local v2    # "continueLongPress":Z
    :pswitch_2
    invoke-direct/range {p0 .. p0}, Landroid/inputmethodservice/KeyboardView;->removeMessages()V

    .line 1323
    iget v2, v6, Landroid/inputmethodservice/KeyboardView;->mCurrentKey:I

    if-ne v11, v2, :cond_9

    .line 1324
    iget-wide v2, v6, Landroid/inputmethodservice/KeyboardView;->mCurrentKeyTime:J

    iget-wide v4, v6, Landroid/inputmethodservice/KeyboardView;->mLastMoveTime:J

    sub-long v4, v9, v4

    add-long/2addr v2, v4

    iput-wide v2, v6, Landroid/inputmethodservice/KeyboardView;->mCurrentKeyTime:J

    goto :goto_1

    .line 1326
    :cond_9
    invoke-direct/range {p0 .. p0}, Landroid/inputmethodservice/KeyboardView;->resetMultiTap()V

    .line 1327
    iget v2, v6, Landroid/inputmethodservice/KeyboardView;->mCurrentKey:I

    iput v2, v6, Landroid/inputmethodservice/KeyboardView;->mLastKey:I

    .line 1328
    iget-wide v2, v6, Landroid/inputmethodservice/KeyboardView;->mCurrentKeyTime:J

    add-long/2addr v2, v9

    iget-wide v4, v6, Landroid/inputmethodservice/KeyboardView;->mLastMoveTime:J

    sub-long/2addr v2, v4

    iput-wide v2, v6, Landroid/inputmethodservice/KeyboardView;->mLastKeyTime:J

    .line 1329
    iput v11, v6, Landroid/inputmethodservice/KeyboardView;->mCurrentKey:I

    .line 1330
    const-wide/16 v2, 0x0

    iput-wide v2, v6, Landroid/inputmethodservice/KeyboardView;->mCurrentKeyTime:J

    .line 1332
    :goto_1
    iget-wide v2, v6, Landroid/inputmethodservice/KeyboardView;->mCurrentKeyTime:J

    iget-wide v4, v6, Landroid/inputmethodservice/KeyboardView;->mLastKeyTime:J

    cmp-long v2, v2, v4

    if-gez v2, :cond_a

    iget-wide v2, v6, Landroid/inputmethodservice/KeyboardView;->mCurrentKeyTime:J

    const-wide/16 v4, 0x46

    cmp-long v2, v2, v4

    if-gez v2, :cond_a

    iget v2, v6, Landroid/inputmethodservice/KeyboardView;->mLastKey:I

    const/4 v3, -0x1

    if-eq v2, v3, :cond_a

    .line 1334
    iget v2, v6, Landroid/inputmethodservice/KeyboardView;->mLastKey:I

    iput v2, v6, Landroid/inputmethodservice/KeyboardView;->mCurrentKey:I

    .line 1335
    iget v0, v6, Landroid/inputmethodservice/KeyboardView;->mLastCodeX:I

    .line 1336
    iget v1, v6, Landroid/inputmethodservice/KeyboardView;->mLastCodeY:I

    .line 1338
    .end local v0    # "touchX":I
    .end local v1    # "touchY":I
    .local v13, "touchX":I
    .local v14, "touchY":I
    :cond_a
    move v13, v0

    move v14, v1

    const/4 v0, -0x1

    invoke-direct {v6, v0}, Landroid/inputmethodservice/KeyboardView;->showPreview(I)V

    .line 1339
    iget-object v1, v6, Landroid/inputmethodservice/KeyboardView;->mKeyIndices:[I

    invoke-static {v1, v0}, Ljava/util/Arrays;->fill([II)V

    .line 1341
    iget v1, v6, Landroid/inputmethodservice/KeyboardView;->mRepeatKeyIndex:I

    if-ne v1, v0, :cond_b

    iget-boolean v0, v6, Landroid/inputmethodservice/KeyboardView;->mMiniKeyboardOnScreen:Z

    if-nez v0, :cond_b

    iget-boolean v0, v6, Landroid/inputmethodservice/KeyboardView;->mAbortKey:Z

    if-nez v0, :cond_b

    .line 1342
    iget v1, v6, Landroid/inputmethodservice/KeyboardView;->mCurrentKey:I

    move-object v0, v6

    move v2, v13

    move v3, v14

    move-wide v4, v9

    invoke-direct/range {v0 .. v5}, Landroid/inputmethodservice/KeyboardView;->detectAndSendKey(IIIJ)V

    .line 1344
    :cond_b
    invoke-virtual {v6, v11}, Landroid/inputmethodservice/KeyboardView;->invalidateKey(I)V

    .line 1345
    const/4 v0, -0x1

    iput v0, v6, Landroid/inputmethodservice/KeyboardView;->mRepeatKeyIndex:I

    .line 1346
    goto/16 :goto_3

    .line 1253
    .end local v13    # "touchX":I
    .end local v14    # "touchY":I
    .restart local v0    # "touchX":I
    .restart local v1    # "touchY":I
    :pswitch_3
    const/4 v2, 0x0

    iput-boolean v2, v6, Landroid/inputmethodservice/KeyboardView;->mAbortKey:Z

    .line 1254
    iput v0, v6, Landroid/inputmethodservice/KeyboardView;->mStartX:I

    .line 1255
    iput v1, v6, Landroid/inputmethodservice/KeyboardView;->mStartY:I

    .line 1256
    iput v0, v6, Landroid/inputmethodservice/KeyboardView;->mLastCodeX:I

    .line 1257
    iput v1, v6, Landroid/inputmethodservice/KeyboardView;->mLastCodeY:I

    .line 1258
    const-wide/16 v3, 0x0

    iput-wide v3, v6, Landroid/inputmethodservice/KeyboardView;->mLastKeyTime:J

    .line 1259
    iput-wide v3, v6, Landroid/inputmethodservice/KeyboardView;->mCurrentKeyTime:J

    .line 1260
    const/4 v3, -0x1

    iput v3, v6, Landroid/inputmethodservice/KeyboardView;->mLastKey:I

    .line 1261
    iput v11, v6, Landroid/inputmethodservice/KeyboardView;->mCurrentKey:I

    .line 1262
    iput v11, v6, Landroid/inputmethodservice/KeyboardView;->mDownKey:I

    .line 1263
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v3

    iput-wide v3, v6, Landroid/inputmethodservice/KeyboardView;->mDownTime:J

    .line 1264
    iget-wide v3, v6, Landroid/inputmethodservice/KeyboardView;->mDownTime:J

    iput-wide v3, v6, Landroid/inputmethodservice/KeyboardView;->mLastMoveTime:J

    .line 1265
    invoke-direct {v6, v9, v10, v11}, Landroid/inputmethodservice/KeyboardView;->checkMultiTap(JI)V

    .line 1266
    iget-object v3, v6, Landroid/inputmethodservice/KeyboardView;->mKeyboardActionListener:Landroid/inputmethodservice/KeyboardView$OnKeyboardActionListener;

    const/4 v4, -0x1

    if-eq v11, v4, :cond_c

    .line 1267
    iget-object v4, v6, Landroid/inputmethodservice/KeyboardView;->mKeys:[Landroid/inputmethodservice/Keyboard$Key;

    aget-object v4, v4, v11

    iget-object v4, v4, Landroid/inputmethodservice/Keyboard$Key;->codes:[I

    aget v2, v4, v2

    nop

    .line 1266
    :cond_c
    invoke-interface {v3, v2}, Landroid/inputmethodservice/KeyboardView$OnKeyboardActionListener;->onPress(I)V

    .line 1268
    iget v2, v6, Landroid/inputmethodservice/KeyboardView;->mCurrentKey:I

    if-ltz v2, :cond_d

    iget-object v2, v6, Landroid/inputmethodservice/KeyboardView;->mKeys:[Landroid/inputmethodservice/Keyboard$Key;

    iget v3, v6, Landroid/inputmethodservice/KeyboardView;->mCurrentKey:I

    aget-object v2, v2, v3

    iget-boolean v2, v2, Landroid/inputmethodservice/Keyboard$Key;->repeatable:Z

    if-eqz v2, :cond_d

    .line 1269
    iget v2, v6, Landroid/inputmethodservice/KeyboardView;->mCurrentKey:I

    iput v2, v6, Landroid/inputmethodservice/KeyboardView;->mRepeatKeyIndex:I

    .line 1270
    iget-object v2, v6, Landroid/inputmethodservice/KeyboardView;->mHandler:Landroid/os/Handler;

    const/4 v3, 0x3

    invoke-virtual {v2, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    .line 1271
    .local v2, "msg":Landroid/os/Message;
    iget-object v3, v6, Landroid/inputmethodservice/KeyboardView;->mHandler:Landroid/os/Handler;

    const-wide/16 v4, 0x190

    invoke-virtual {v3, v2, v4, v5}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 1272
    invoke-direct/range {p0 .. p0}, Landroid/inputmethodservice/KeyboardView;->repeatKey()Z

    .line 1274
    iget-boolean v3, v6, Landroid/inputmethodservice/KeyboardView;->mAbortKey:Z

    if-eqz v3, :cond_d

    .line 1275
    const/4 v3, -0x1

    iput v3, v6, Landroid/inputmethodservice/KeyboardView;->mRepeatKeyIndex:I

    .line 1276
    goto :goto_2

    .line 1279
    .end local v2    # "msg":Landroid/os/Message;
    :cond_d
    const/4 v3, -0x1

    iget v2, v6, Landroid/inputmethodservice/KeyboardView;->mCurrentKey:I

    if-eq v2, v3, :cond_e

    .line 1280
    iget-object v2, v6, Landroid/inputmethodservice/KeyboardView;->mHandler:Landroid/os/Handler;

    const/4 v3, 0x4

    invoke-virtual {v2, v3, v7}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    .line 1281
    .restart local v2    # "msg":Landroid/os/Message;
    iget-object v3, v6, Landroid/inputmethodservice/KeyboardView;->mHandler:Landroid/os/Handler;

    sget v4, Landroid/inputmethodservice/KeyboardView;->LONGPRESS_TIMEOUT:I

    int-to-long v4, v4

    invoke-virtual {v3, v2, v4, v5}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 1283
    .end local v2    # "msg":Landroid/os/Message;
    :cond_e
    invoke-direct {v6, v11}, Landroid/inputmethodservice/KeyboardView;->showPreview(I)V

    .line 1284
    nop

    .line 1355
    :goto_2
    move v13, v0

    move v14, v1

    .end local v0    # "touchX":I
    .end local v1    # "touchY":I
    .restart local v13    # "touchX":I
    .restart local v14    # "touchY":I
    :goto_3
    iput v13, v6, Landroid/inputmethodservice/KeyboardView;->mLastX:I

    .line 1356
    iput v14, v6, Landroid/inputmethodservice/KeyboardView;->mLastY:I

    .line 1357
    const/4 v0, 0x1

    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private openPopupIfRequired(Landroid/view/MotionEvent;)Z
    .locals 3
    .param p1, "me"    # Landroid/view/MotionEvent;

    .line 1057
    iget v0, p0, Landroid/inputmethodservice/KeyboardView;->mPopupLayout:I

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 1058
    return v1

    .line 1060
    :cond_0
    iget v0, p0, Landroid/inputmethodservice/KeyboardView;->mCurrentKey:I

    if-ltz v0, :cond_3

    iget v0, p0, Landroid/inputmethodservice/KeyboardView;->mCurrentKey:I

    iget-object v2, p0, Landroid/inputmethodservice/KeyboardView;->mKeys:[Landroid/inputmethodservice/Keyboard$Key;

    array-length v2, v2

    if-lt v0, v2, :cond_1

    goto :goto_0

    .line 1064
    :cond_1
    iget-object v0, p0, Landroid/inputmethodservice/KeyboardView;->mKeys:[Landroid/inputmethodservice/Keyboard$Key;

    iget v1, p0, Landroid/inputmethodservice/KeyboardView;->mCurrentKey:I

    aget-object v0, v0, v1

    .line 1065
    .local v0, "popupKey":Landroid/inputmethodservice/Keyboard$Key;
    invoke-virtual {p0, v0}, Landroid/inputmethodservice/KeyboardView;->onLongPress(Landroid/inputmethodservice/Keyboard$Key;)Z

    move-result v1

    .line 1066
    .local v1, "result":Z
    if-eqz v1, :cond_2

    .line 1067
    const/4 v2, 0x1

    iput-boolean v2, p0, Landroid/inputmethodservice/KeyboardView;->mAbortKey:Z

    .line 1068
    const/4 v2, -0x1

    invoke-direct {p0, v2}, Landroid/inputmethodservice/KeyboardView;->showPreview(I)V

    .line 1070
    :cond_2
    return v1

    .line 1061
    .end local v0    # "popupKey":Landroid/inputmethodservice/Keyboard$Key;
    .end local v1    # "result":Z
    :cond_3
    :goto_0
    return v1
.end method

.method private removeMessages()V
    .locals 2

    .line 1395
    iget-object v0, p0, Landroid/inputmethodservice/KeyboardView;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 1396
    iget-object v0, p0, Landroid/inputmethodservice/KeyboardView;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 1397
    iget-object v0, p0, Landroid/inputmethodservice/KeyboardView;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 1398
    iget-object v0, p0, Landroid/inputmethodservice/KeyboardView;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 1400
    :cond_0
    return-void
.end method

.method private repeatKey()Z
    .locals 7

    .line 1361
    iget-object v0, p0, Landroid/inputmethodservice/KeyboardView;->mKeys:[Landroid/inputmethodservice/Keyboard$Key;

    iget v1, p0, Landroid/inputmethodservice/KeyboardView;->mRepeatKeyIndex:I

    aget-object v0, v0, v1

    .line 1362
    .local v0, "key":Landroid/inputmethodservice/Keyboard$Key;
    iget v2, p0, Landroid/inputmethodservice/KeyboardView;->mCurrentKey:I

    iget v3, v0, Landroid/inputmethodservice/Keyboard$Key;->x:I

    iget v4, v0, Landroid/inputmethodservice/Keyboard$Key;->y:I

    iget-wide v5, p0, Landroid/inputmethodservice/KeyboardView;->mLastTapTime:J

    move-object v1, p0

    invoke-direct/range {v1 .. v6}, Landroid/inputmethodservice/KeyboardView;->detectAndSendKey(IIIJ)V

    .line 1363
    const/4 v1, 0x1

    return v1
.end method

.method private resetMultiTap()V
    .locals 3

    .line 1425
    const/4 v0, -0x1

    iput v0, p0, Landroid/inputmethodservice/KeyboardView;->mLastSentIndex:I

    .line 1426
    const/4 v0, 0x0

    iput v0, p0, Landroid/inputmethodservice/KeyboardView;->mTapCount:I

    .line 1427
    const-wide/16 v1, -0x1

    iput-wide v1, p0, Landroid/inputmethodservice/KeyboardView;->mLastTapTime:J

    .line 1428
    iput-boolean v0, p0, Landroid/inputmethodservice/KeyboardView;->mInMultiTap:Z

    .line 1429
    return-void
.end method

.method private sendAccessibilityEventForUnicodeCharacter(II)V
    .locals 3
    .param p1, "eventType"    # I
    .param p2, "code"    # I

    .line 988
    iget-object v0, p0, Landroid/inputmethodservice/KeyboardView;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 989
    invoke-static {p1}, Landroid/view/accessibility/AccessibilityEvent;->obtain(I)Landroid/view/accessibility/AccessibilityEvent;

    move-result-object v0

    .line 990
    .local v0, "event":Landroid/view/accessibility/AccessibilityEvent;
    invoke-virtual {p0, v0}, Landroid/inputmethodservice/KeyboardView;->onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 992
    const/16 v1, 0xa

    if-eq p2, v1, :cond_0

    packed-switch p2, :pswitch_data_0

    .line 1015
    int-to-char v1, p2

    invoke-static {v1}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 1009
    :pswitch_0
    iget-object v1, p0, Landroid/inputmethodservice/KeyboardView;->mContext:Landroid/content/Context;

    const v2, 0x10402b9

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 1010
    .local v1, "text":Ljava/lang/String;
    goto :goto_0

    .line 1006
    .end local v1    # "text":Ljava/lang/String;
    :pswitch_1
    iget-object v1, p0, Landroid/inputmethodservice/KeyboardView;->mContext:Landroid/content/Context;

    const v2, 0x10402b8

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 1007
    .restart local v1    # "text":Ljava/lang/String;
    goto :goto_0

    .line 997
    .end local v1    # "text":Ljava/lang/String;
    :pswitch_2
    iget-object v1, p0, Landroid/inputmethodservice/KeyboardView;->mContext:Landroid/content/Context;

    const v2, 0x10402b4

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 998
    .restart local v1    # "text":Ljava/lang/String;
    goto :goto_0

    .line 1003
    .end local v1    # "text":Ljava/lang/String;
    :pswitch_3
    iget-object v1, p0, Landroid/inputmethodservice/KeyboardView;->mContext:Landroid/content/Context;

    const v2, 0x10402b6

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 1004
    .restart local v1    # "text":Ljava/lang/String;
    goto :goto_0

    .line 1000
    .end local v1    # "text":Ljava/lang/String;
    :pswitch_4
    iget-object v1, p0, Landroid/inputmethodservice/KeyboardView;->mContext:Landroid/content/Context;

    const v2, 0x10402b5

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 1001
    .restart local v1    # "text":Ljava/lang/String;
    goto :goto_0

    .line 994
    .end local v1    # "text":Ljava/lang/String;
    :pswitch_5
    iget-object v1, p0, Landroid/inputmethodservice/KeyboardView;->mContext:Landroid/content/Context;

    const v2, 0x10402b3

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 995
    .restart local v1    # "text":Ljava/lang/String;
    goto :goto_0

    .line 1012
    .end local v1    # "text":Ljava/lang/String;
    :cond_0
    iget-object v1, p0, Landroid/inputmethodservice/KeyboardView;->mContext:Landroid/content/Context;

    const v2, 0x10402b7

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 1013
    .restart local v1    # "text":Ljava/lang/String;
    nop

    .line 1015
    :goto_0
    nop

    .line 1017
    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityEvent;->getText()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1018
    iget-object v2, p0, Landroid/inputmethodservice/KeyboardView;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {v2, v0}, Landroid/view/accessibility/AccessibilityManager;->sendAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 1020
    .end local v0    # "event":Landroid/view/accessibility/AccessibilityEvent;
    .end local v1    # "text":Ljava/lang/String;
    :cond_1
    return-void

    :pswitch_data_0
    .packed-switch -0x6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private showKey(I)V
    .locals 14
    .param p1, "keyIndex"    # I

    .line 914
    iget-object v0, p0, Landroid/inputmethodservice/KeyboardView;->mPreviewPopup:Landroid/widget/PopupWindow;

    .line 915
    .local v0, "previewPopup":Landroid/widget/PopupWindow;
    iget-object v1, p0, Landroid/inputmethodservice/KeyboardView;->mKeys:[Landroid/inputmethodservice/Keyboard$Key;

    .line 916
    .local v1, "keys":[Landroid/inputmethodservice/Keyboard$Key;
    if-ltz p1, :cond_a

    iget-object v2, p0, Landroid/inputmethodservice/KeyboardView;->mKeys:[Landroid/inputmethodservice/Keyboard$Key;

    array-length v2, v2

    if-lt p1, v2, :cond_0

    goto/16 :goto_6

    .line 917
    :cond_0
    aget-object v2, v1, p1

    .line 918
    .local v2, "key":Landroid/inputmethodservice/Keyboard$Key;
    iget-object v3, v2, Landroid/inputmethodservice/Keyboard$Key;->icon:Landroid/graphics/drawable/Drawable;

    const/4 v4, 0x2

    const/4 v5, 0x1

    const/4 v6, 0x0

    const/4 v7, 0x0

    if-eqz v3, :cond_2

    .line 919
    iget-object v3, p0, Landroid/inputmethodservice/KeyboardView;->mPreviewText:Landroid/widget/TextView;

    .line 920
    iget-object v8, v2, Landroid/inputmethodservice/Keyboard$Key;->iconPreview:Landroid/graphics/drawable/Drawable;

    if-eqz v8, :cond_1

    iget-object v8, v2, Landroid/inputmethodservice/Keyboard$Key;->iconPreview:Landroid/graphics/drawable/Drawable;

    goto :goto_0

    :cond_1
    iget-object v8, v2, Landroid/inputmethodservice/Keyboard$Key;->icon:Landroid/graphics/drawable/Drawable;

    .line 919
    :goto_0
    invoke-virtual {v3, v6, v6, v6, v8}, Landroid/widget/TextView;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 921
    iget-object v3, p0, Landroid/inputmethodservice/KeyboardView;->mPreviewText:Landroid/widget/TextView;

    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 923
    :cond_2
    iget-object v3, p0, Landroid/inputmethodservice/KeyboardView;->mPreviewText:Landroid/widget/TextView;

    invoke-virtual {v3, v6, v6, v6, v6}, Landroid/widget/TextView;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 924
    iget-object v3, p0, Landroid/inputmethodservice/KeyboardView;->mPreviewText:Landroid/widget/TextView;

    invoke-direct {p0, v2}, Landroid/inputmethodservice/KeyboardView;->getPreviewText(Landroid/inputmethodservice/Keyboard$Key;)Ljava/lang/CharSequence;

    move-result-object v6

    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 925
    iget-object v3, v2, Landroid/inputmethodservice/Keyboard$Key;->label:Ljava/lang/CharSequence;

    invoke-interface {v3}, Ljava/lang/CharSequence;->length()I

    move-result v3

    if-le v3, v5, :cond_3

    iget-object v3, v2, Landroid/inputmethodservice/Keyboard$Key;->codes:[I

    array-length v3, v3

    if-ge v3, v4, :cond_3

    .line 926
    iget-object v3, p0, Landroid/inputmethodservice/KeyboardView;->mPreviewText:Landroid/widget/TextView;

    iget v6, p0, Landroid/inputmethodservice/KeyboardView;->mKeyTextSize:I

    int-to-float v6, v6

    invoke-virtual {v3, v7, v6}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 927
    iget-object v3, p0, Landroid/inputmethodservice/KeyboardView;->mPreviewText:Landroid/widget/TextView;

    sget-object v6, Landroid/graphics/Typeface;->DEFAULT_BOLD:Landroid/graphics/Typeface;

    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    goto :goto_1

    .line 929
    :cond_3
    iget-object v3, p0, Landroid/inputmethodservice/KeyboardView;->mPreviewText:Landroid/widget/TextView;

    iget v6, p0, Landroid/inputmethodservice/KeyboardView;->mPreviewTextSizeLarge:I

    int-to-float v6, v6

    invoke-virtual {v3, v7, v6}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 930
    iget-object v3, p0, Landroid/inputmethodservice/KeyboardView;->mPreviewText:Landroid/widget/TextView;

    sget-object v6, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 933
    :goto_1
    iget-object v3, p0, Landroid/inputmethodservice/KeyboardView;->mPreviewText:Landroid/widget/TextView;

    invoke-static {v7, v7}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v6

    .line 934
    invoke-static {v7, v7}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v8

    .line 933
    invoke-virtual {v3, v6, v8}, Landroid/widget/TextView;->measure(II)V

    .line 935
    iget-object v3, p0, Landroid/inputmethodservice/KeyboardView;->mPreviewText:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result v3

    iget v6, v2, Landroid/inputmethodservice/Keyboard$Key;->width:I

    iget-object v8, p0, Landroid/inputmethodservice/KeyboardView;->mPreviewText:Landroid/widget/TextView;

    .line 936
    invoke-virtual {v8}, Landroid/widget/TextView;->getPaddingLeft()I

    move-result v8

    add-int/2addr v6, v8

    iget-object v8, p0, Landroid/inputmethodservice/KeyboardView;->mPreviewText:Landroid/widget/TextView;

    invoke-virtual {v8}, Landroid/widget/TextView;->getPaddingRight()I

    move-result v8

    add-int/2addr v6, v8

    .line 935
    invoke-static {v3, v6}, Ljava/lang/Math;->max(II)I

    move-result v3

    .line 937
    .local v3, "popupWidth":I
    iget v6, p0, Landroid/inputmethodservice/KeyboardView;->mPreviewHeight:I

    .line 938
    .local v6, "popupHeight":I
    iget-object v8, p0, Landroid/inputmethodservice/KeyboardView;->mPreviewText:Landroid/widget/TextView;

    invoke-virtual {v8}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v8

    .line 939
    .local v8, "lp":Landroid/view/ViewGroup$LayoutParams;
    if-eqz v8, :cond_4

    .line 940
    iput v3, v8, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 941
    iput v6, v8, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 943
    :cond_4
    iget-boolean v9, p0, Landroid/inputmethodservice/KeyboardView;->mPreviewCentered:Z

    if-nez v9, :cond_5

    .line 944
    iget v9, v2, Landroid/inputmethodservice/Keyboard$Key;->x:I

    iget-object v10, p0, Landroid/inputmethodservice/KeyboardView;->mPreviewText:Landroid/widget/TextView;

    invoke-virtual {v10}, Landroid/widget/TextView;->getPaddingLeft()I

    move-result v10

    sub-int/2addr v9, v10

    iget v10, p0, Landroid/inputmethodservice/KeyboardView;->mPaddingLeft:I

    add-int/2addr v9, v10

    iput v9, p0, Landroid/inputmethodservice/KeyboardView;->mPopupPreviewX:I

    .line 945
    iget v9, v2, Landroid/inputmethodservice/Keyboard$Key;->y:I

    sub-int/2addr v9, v6

    iget v10, p0, Landroid/inputmethodservice/KeyboardView;->mPreviewOffset:I

    add-int/2addr v9, v10

    iput v9, p0, Landroid/inputmethodservice/KeyboardView;->mPopupPreviewY:I

    goto :goto_2

    .line 948
    :cond_5
    iget-object v9, p0, Landroid/inputmethodservice/KeyboardView;->mPreviewText:Landroid/widget/TextView;

    invoke-virtual {v9}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result v9

    div-int/2addr v9, v4

    rsub-int v9, v9, 0xa0

    iput v9, p0, Landroid/inputmethodservice/KeyboardView;->mPopupPreviewX:I

    .line 949
    iget-object v9, p0, Landroid/inputmethodservice/KeyboardView;->mPreviewText:Landroid/widget/TextView;

    invoke-virtual {v9}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v9

    neg-int v9, v9

    iput v9, p0, Landroid/inputmethodservice/KeyboardView;->mPopupPreviewY:I

    .line 951
    :goto_2
    iget-object v9, p0, Landroid/inputmethodservice/KeyboardView;->mHandler:Landroid/os/Handler;

    invoke-virtual {v9, v4}, Landroid/os/Handler;->removeMessages(I)V

    .line 952
    iget-object v9, p0, Landroid/inputmethodservice/KeyboardView;->mCoordinates:[I

    invoke-virtual {p0, v9}, Landroid/inputmethodservice/KeyboardView;->getLocationInWindow([I)V

    .line 953
    iget-object v9, p0, Landroid/inputmethodservice/KeyboardView;->mCoordinates:[I

    aget v10, v9, v7

    iget v11, p0, Landroid/inputmethodservice/KeyboardView;->mMiniKeyboardOffsetX:I

    add-int/2addr v10, v11

    aput v10, v9, v7

    .line 954
    iget-object v9, p0, Landroid/inputmethodservice/KeyboardView;->mCoordinates:[I

    aget v10, v9, v5

    iget v11, p0, Landroid/inputmethodservice/KeyboardView;->mMiniKeyboardOffsetY:I

    add-int/2addr v10, v11

    aput v10, v9, v5

    .line 957
    iget-object v9, p0, Landroid/inputmethodservice/KeyboardView;->mPreviewText:Landroid/widget/TextView;

    invoke-virtual {v9}, Landroid/widget/TextView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v9

    .line 958
    iget v10, v2, Landroid/inputmethodservice/Keyboard$Key;->popupResId:I

    if-eqz v10, :cond_6

    sget-object v10, Landroid/inputmethodservice/KeyboardView;->LONG_PRESSABLE_STATE_SET:[I

    goto :goto_3

    :cond_6
    sget-object v10, Landroid/inputmethodservice/KeyboardView;->EMPTY_STATE_SET:[I

    .line 957
    :goto_3
    invoke-virtual {v9, v10}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 959
    iget v9, p0, Landroid/inputmethodservice/KeyboardView;->mPopupPreviewX:I

    iget-object v10, p0, Landroid/inputmethodservice/KeyboardView;->mCoordinates:[I

    aget v10, v10, v7

    add-int/2addr v9, v10

    iput v9, p0, Landroid/inputmethodservice/KeyboardView;->mPopupPreviewX:I

    .line 960
    iget v9, p0, Landroid/inputmethodservice/KeyboardView;->mPopupPreviewY:I

    iget-object v10, p0, Landroid/inputmethodservice/KeyboardView;->mCoordinates:[I

    aget v10, v10, v5

    add-int/2addr v9, v10

    iput v9, p0, Landroid/inputmethodservice/KeyboardView;->mPopupPreviewY:I

    .line 963
    iget-object v9, p0, Landroid/inputmethodservice/KeyboardView;->mCoordinates:[I

    invoke-virtual {p0, v9}, Landroid/inputmethodservice/KeyboardView;->getLocationOnScreen([I)V

    .line 964
    iget v9, p0, Landroid/inputmethodservice/KeyboardView;->mPopupPreviewY:I

    iget-object v10, p0, Landroid/inputmethodservice/KeyboardView;->mCoordinates:[I

    aget v5, v10, v5

    add-int/2addr v9, v5

    if-gez v9, :cond_8

    .line 967
    iget v5, v2, Landroid/inputmethodservice/Keyboard$Key;->x:I

    iget v9, v2, Landroid/inputmethodservice/Keyboard$Key;->width:I

    add-int/2addr v5, v9

    invoke-virtual {p0}, Landroid/inputmethodservice/KeyboardView;->getWidth()I

    move-result v9

    div-int/2addr v9, v4

    const-wide/high16 v10, 0x4004000000000000L    # 2.5

    if-gt v5, v9, :cond_7

    .line 968
    iget v4, p0, Landroid/inputmethodservice/KeyboardView;->mPopupPreviewX:I

    iget v5, v2, Landroid/inputmethodservice/Keyboard$Key;->width:I

    int-to-double v12, v5

    mul-double/2addr v12, v10

    double-to-int v5, v12

    add-int/2addr v4, v5

    iput v4, p0, Landroid/inputmethodservice/KeyboardView;->mPopupPreviewX:I

    goto :goto_4

    .line 970
    :cond_7
    iget v4, p0, Landroid/inputmethodservice/KeyboardView;->mPopupPreviewX:I

    iget v5, v2, Landroid/inputmethodservice/Keyboard$Key;->width:I

    int-to-double v12, v5

    mul-double/2addr v12, v10

    double-to-int v5, v12

    sub-int/2addr v4, v5

    iput v4, p0, Landroid/inputmethodservice/KeyboardView;->mPopupPreviewX:I

    .line 972
    :goto_4
    iget v4, p0, Landroid/inputmethodservice/KeyboardView;->mPopupPreviewY:I

    add-int/2addr v4, v6

    iput v4, p0, Landroid/inputmethodservice/KeyboardView;->mPopupPreviewY:I

    .line 975
    :cond_8
    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v4

    if-eqz v4, :cond_9

    .line 976
    iget v4, p0, Landroid/inputmethodservice/KeyboardView;->mPopupPreviewX:I

    iget v5, p0, Landroid/inputmethodservice/KeyboardView;->mPopupPreviewY:I

    invoke-virtual {v0, v4, v5, v3, v6}, Landroid/widget/PopupWindow;->update(IIII)V

    goto :goto_5

    .line 979
    :cond_9
    invoke-virtual {v0, v3}, Landroid/widget/PopupWindow;->setWidth(I)V

    .line 980
    invoke-virtual {v0, v6}, Landroid/widget/PopupWindow;->setHeight(I)V

    .line 981
    iget-object v4, p0, Landroid/inputmethodservice/KeyboardView;->mPopupParent:Landroid/view/View;

    iget v5, p0, Landroid/inputmethodservice/KeyboardView;->mPopupPreviewX:I

    iget v9, p0, Landroid/inputmethodservice/KeyboardView;->mPopupPreviewY:I

    invoke-virtual {v0, v4, v7, v5, v9}, Landroid/widget/PopupWindow;->showAtLocation(Landroid/view/View;III)V

    .line 984
    :goto_5
    iget-object v4, p0, Landroid/inputmethodservice/KeyboardView;->mPreviewText:Landroid/widget/TextView;

    invoke-virtual {v4, v7}, Landroid/widget/TextView;->setVisibility(I)V

    .line 985
    return-void

    .line 916
    .end local v2    # "key":Landroid/inputmethodservice/Keyboard$Key;
    .end local v3    # "popupWidth":I
    .end local v6    # "popupHeight":I
    .end local v8    # "lp":Landroid/view/ViewGroup$LayoutParams;
    :cond_a
    :goto_6
    return-void
.end method

.method private showPreview(I)V
    .locals 10
    .param p1, "keyIndex"    # I

    .line 860
    iget v0, p0, Landroid/inputmethodservice/KeyboardView;->mCurrentKeyIndex:I

    .line 861
    .local v0, "oldKeyIndex":I
    iget-object v1, p0, Landroid/inputmethodservice/KeyboardView;->mPreviewPopup:Landroid/widget/PopupWindow;

    .line 863
    .local v1, "previewPopup":Landroid/widget/PopupWindow;
    iput p1, p0, Landroid/inputmethodservice/KeyboardView;->mCurrentKeyIndex:I

    .line 865
    iget-object v2, p0, Landroid/inputmethodservice/KeyboardView;->mKeys:[Landroid/inputmethodservice/Keyboard$Key;

    .line 866
    .local v2, "keys":[Landroid/inputmethodservice/Keyboard$Key;
    iget v3, p0, Landroid/inputmethodservice/KeyboardView;->mCurrentKeyIndex:I

    const/4 v4, 0x1

    const/4 v5, 0x0

    const/4 v6, -0x1

    if-eq v0, v3, :cond_2

    .line 867
    if-eq v0, v6, :cond_1

    array-length v3, v2

    if-le v3, v0, :cond_1

    .line 868
    aget-object v3, v2, v0

    .line 869
    .local v3, "oldKey":Landroid/inputmethodservice/Keyboard$Key;
    iget v7, p0, Landroid/inputmethodservice/KeyboardView;->mCurrentKeyIndex:I

    if-ne v7, v6, :cond_0

    move v7, v4

    goto :goto_0

    :cond_0
    move v7, v5

    :goto_0
    invoke-virtual {v3, v7}, Landroid/inputmethodservice/Keyboard$Key;->onReleased(Z)V

    .line 870
    invoke-virtual {p0, v0}, Landroid/inputmethodservice/KeyboardView;->invalidateKey(I)V

    .line 871
    iget-object v7, v3, Landroid/inputmethodservice/Keyboard$Key;->codes:[I

    aget v7, v7, v5

    .line 872
    .local v7, "keyCode":I
    const/16 v8, 0x100

    invoke-direct {p0, v8, v7}, Landroid/inputmethodservice/KeyboardView;->sendAccessibilityEventForUnicodeCharacter(II)V

    .line 875
    const/high16 v8, 0x10000

    invoke-direct {p0, v8, v7}, Landroid/inputmethodservice/KeyboardView;->sendAccessibilityEventForUnicodeCharacter(II)V

    .line 878
    .end local v3    # "oldKey":Landroid/inputmethodservice/Keyboard$Key;
    .end local v7    # "keyCode":I
    :cond_1
    iget v3, p0, Landroid/inputmethodservice/KeyboardView;->mCurrentKeyIndex:I

    if-eq v3, v6, :cond_2

    array-length v3, v2

    iget v7, p0, Landroid/inputmethodservice/KeyboardView;->mCurrentKeyIndex:I

    if-le v3, v7, :cond_2

    .line 879
    iget v3, p0, Landroid/inputmethodservice/KeyboardView;->mCurrentKeyIndex:I

    aget-object v3, v2, v3

    .line 880
    .local v3, "newKey":Landroid/inputmethodservice/Keyboard$Key;
    invoke-virtual {v3}, Landroid/inputmethodservice/Keyboard$Key;->onPressed()V

    .line 881
    iget v7, p0, Landroid/inputmethodservice/KeyboardView;->mCurrentKeyIndex:I

    invoke-virtual {p0, v7}, Landroid/inputmethodservice/KeyboardView;->invalidateKey(I)V

    .line 882
    iget-object v7, v3, Landroid/inputmethodservice/Keyboard$Key;->codes:[I

    aget v7, v7, v5

    .line 883
    .restart local v7    # "keyCode":I
    const/16 v8, 0x80

    invoke-direct {p0, v8, v7}, Landroid/inputmethodservice/KeyboardView;->sendAccessibilityEventForUnicodeCharacter(II)V

    .line 886
    const v8, 0x8000

    invoke-direct {p0, v8, v7}, Landroid/inputmethodservice/KeyboardView;->sendAccessibilityEventForUnicodeCharacter(II)V

    .line 891
    .end local v3    # "newKey":Landroid/inputmethodservice/Keyboard$Key;
    .end local v7    # "keyCode":I
    :cond_2
    iget v3, p0, Landroid/inputmethodservice/KeyboardView;->mCurrentKeyIndex:I

    if-eq v0, v3, :cond_5

    iget-boolean v3, p0, Landroid/inputmethodservice/KeyboardView;->mShowPreview:Z

    if-eqz v3, :cond_5

    .line 892
    iget-object v3, p0, Landroid/inputmethodservice/KeyboardView;->mHandler:Landroid/os/Handler;

    invoke-virtual {v3, v4}, Landroid/os/Handler;->removeMessages(I)V

    .line 893
    invoke-virtual {v1}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 894
    if-ne p1, v6, :cond_3

    .line 895
    iget-object v3, p0, Landroid/inputmethodservice/KeyboardView;->mHandler:Landroid/os/Handler;

    iget-object v7, p0, Landroid/inputmethodservice/KeyboardView;->mHandler:Landroid/os/Handler;

    const/4 v8, 0x2

    .line 896
    invoke-virtual {v7, v8}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v7

    const-wide/16 v8, 0x46

    .line 895
    invoke-virtual {v3, v7, v8, v9}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 900
    :cond_3
    if-eq p1, v6, :cond_5

    .line 901
    invoke-virtual {v1}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v3

    if-eqz v3, :cond_4

    iget-object v3, p0, Landroid/inputmethodservice/KeyboardView;->mPreviewText:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getVisibility()I

    move-result v3

    if-nez v3, :cond_4

    .line 903
    invoke-direct {p0, p1}, Landroid/inputmethodservice/KeyboardView;->showKey(I)V

    goto :goto_1

    .line 905
    :cond_4
    iget-object v3, p0, Landroid/inputmethodservice/KeyboardView;->mHandler:Landroid/os/Handler;

    iget-object v6, p0, Landroid/inputmethodservice/KeyboardView;->mHandler:Landroid/os/Handler;

    .line 906
    invoke-virtual {v6, v4, p1, v5}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v4

    const-wide/16 v5, 0x0

    .line 905
    invoke-virtual {v3, v4, v5, v6}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 911
    :cond_5
    :goto_1
    return-void
.end method


# virtual methods
.method public closing()V
    .locals 1

    .line 1383
    iget-object v0, p0, Landroid/inputmethodservice/KeyboardView;->mPreviewPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1384
    iget-object v0, p0, Landroid/inputmethodservice/KeyboardView;->mPreviewPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    .line 1386
    :cond_0
    invoke-direct {p0}, Landroid/inputmethodservice/KeyboardView;->removeMessages()V

    .line 1388
    invoke-direct {p0}, Landroid/inputmethodservice/KeyboardView;->dismissPopupKeyboard()V

    .line 1389
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/inputmethodservice/KeyboardView;->mBuffer:Landroid/graphics/Bitmap;

    .line 1390
    iput-object v0, p0, Landroid/inputmethodservice/KeyboardView;->mCanvas:Landroid/graphics/Canvas;

    .line 1391
    iget-object v0, p0, Landroid/inputmethodservice/KeyboardView;->mMiniKeyboardCache:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 1392
    return-void
.end method

.method public getKeyboard()Landroid/inputmethodservice/Keyboard;
    .locals 1

    .line 495
    iget-object v0, p0, Landroid/inputmethodservice/KeyboardView;->mKeyboard:Landroid/inputmethodservice/Keyboard;

    return-object v0
.end method

.method protected getOnKeyboardActionListener()Landroid/inputmethodservice/KeyboardView$OnKeyboardActionListener;
    .locals 1

    .line 459
    iget-object v0, p0, Landroid/inputmethodservice/KeyboardView;->mKeyboardActionListener:Landroid/inputmethodservice/KeyboardView$OnKeyboardActionListener;

    return-object v0
.end method

.method public handleBack()Z
    .locals 1

    .line 1417
    iget-object v0, p0, Landroid/inputmethodservice/KeyboardView;->mPopupKeyboard:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1418
    invoke-direct {p0}, Landroid/inputmethodservice/KeyboardView;->dismissPopupKeyboard()V

    .line 1419
    const/4 v0, 0x1

    return v0

    .line 1421
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public invalidateAllKeys()V
    .locals 4

    .line 1029
    iget-object v0, p0, Landroid/inputmethodservice/KeyboardView;->mDirtyRect:Landroid/graphics/Rect;

    invoke-virtual {p0}, Landroid/inputmethodservice/KeyboardView;->getWidth()I

    move-result v1

    invoke-virtual {p0}, Landroid/inputmethodservice/KeyboardView;->getHeight()I

    move-result v2

    const/4 v3, 0x0

    invoke-virtual {v0, v3, v3, v1, v2}, Landroid/graphics/Rect;->union(IIII)V

    .line 1030
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/inputmethodservice/KeyboardView;->mDrawPending:Z

    .line 1031
    invoke-virtual {p0}, Landroid/inputmethodservice/KeyboardView;->invalidate()V

    .line 1032
    return-void
.end method

.method public invalidateKey(I)V
    .locals 7
    .param p1, "keyIndex"    # I

    .line 1042
    iget-object v0, p0, Landroid/inputmethodservice/KeyboardView;->mKeys:[Landroid/inputmethodservice/Keyboard$Key;

    if-nez v0, :cond_0

    return-void

    .line 1043
    :cond_0
    if-ltz p1, :cond_2

    iget-object v0, p0, Landroid/inputmethodservice/KeyboardView;->mKeys:[Landroid/inputmethodservice/Keyboard$Key;

    array-length v0, v0

    if-lt p1, v0, :cond_1

    goto :goto_0

    .line 1046
    :cond_1
    iget-object v0, p0, Landroid/inputmethodservice/KeyboardView;->mKeys:[Landroid/inputmethodservice/Keyboard$Key;

    aget-object v0, v0, p1

    .line 1047
    .local v0, "key":Landroid/inputmethodservice/Keyboard$Key;
    iput-object v0, p0, Landroid/inputmethodservice/KeyboardView;->mInvalidatedKey:Landroid/inputmethodservice/Keyboard$Key;

    .line 1048
    iget-object v1, p0, Landroid/inputmethodservice/KeyboardView;->mDirtyRect:Landroid/graphics/Rect;

    iget v2, v0, Landroid/inputmethodservice/Keyboard$Key;->x:I

    iget v3, p0, Landroid/inputmethodservice/KeyboardView;->mPaddingLeft:I

    add-int/2addr v2, v3

    iget v3, v0, Landroid/inputmethodservice/Keyboard$Key;->y:I

    iget v4, p0, Landroid/inputmethodservice/KeyboardView;->mPaddingTop:I

    add-int/2addr v3, v4

    iget v4, v0, Landroid/inputmethodservice/Keyboard$Key;->x:I

    iget v5, v0, Landroid/inputmethodservice/Keyboard$Key;->width:I

    add-int/2addr v4, v5

    iget v5, p0, Landroid/inputmethodservice/KeyboardView;->mPaddingLeft:I

    add-int/2addr v4, v5

    iget v5, v0, Landroid/inputmethodservice/Keyboard$Key;->y:I

    iget v6, v0, Landroid/inputmethodservice/Keyboard$Key;->height:I

    add-int/2addr v5, v6

    iget v6, p0, Landroid/inputmethodservice/KeyboardView;->mPaddingTop:I

    add-int/2addr v5, v6

    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/graphics/Rect;->union(IIII)V

    .line 1050
    invoke-direct {p0}, Landroid/inputmethodservice/KeyboardView;->onBufferDraw()V

    .line 1051
    iget v1, v0, Landroid/inputmethodservice/Keyboard$Key;->x:I

    iget v2, p0, Landroid/inputmethodservice/KeyboardView;->mPaddingLeft:I

    add-int/2addr v1, v2

    iget v2, v0, Landroid/inputmethodservice/Keyboard$Key;->y:I

    iget v3, p0, Landroid/inputmethodservice/KeyboardView;->mPaddingTop:I

    add-int/2addr v2, v3

    iget v3, v0, Landroid/inputmethodservice/Keyboard$Key;->x:I

    iget v4, v0, Landroid/inputmethodservice/Keyboard$Key;->width:I

    add-int/2addr v3, v4

    iget v4, p0, Landroid/inputmethodservice/KeyboardView;->mPaddingLeft:I

    add-int/2addr v3, v4

    iget v4, v0, Landroid/inputmethodservice/Keyboard$Key;->y:I

    iget v5, v0, Landroid/inputmethodservice/Keyboard$Key;->height:I

    add-int/2addr v4, v5

    iget v5, p0, Landroid/inputmethodservice/KeyboardView;->mPaddingTop:I

    add-int/2addr v4, v5

    invoke-virtual {p0, v1, v2, v3, v4}, Landroid/inputmethodservice/KeyboardView;->invalidate(IIII)V

    .line 1053
    return-void

    .line 1044
    .end local v0    # "key":Landroid/inputmethodservice/Keyboard$Key;
    :cond_2
    :goto_0
    return-void
.end method

.method public isPreviewEnabled()Z
    .locals 1

    .line 544
    iget-boolean v0, p0, Landroid/inputmethodservice/KeyboardView;->mShowPreview:Z

    return v0
.end method

.method public isProximityCorrectionEnabled()Z
    .locals 1

    .line 576
    iget-boolean v0, p0, Landroid/inputmethodservice/KeyboardView;->mProximityCorrectOn:Z

    return v0
.end method

.method public isShifted()Z
    .locals 1

    .line 522
    iget-object v0, p0, Landroid/inputmethodservice/KeyboardView;->mKeyboard:Landroid/inputmethodservice/Keyboard;

    if-eqz v0, :cond_0

    .line 523
    iget-object v0, p0, Landroid/inputmethodservice/KeyboardView;->mKeyboard:Landroid/inputmethodservice/Keyboard;

    invoke-virtual {v0}, Landroid/inputmethodservice/Keyboard;->isShifted()Z

    move-result v0

    return v0

    .line 525
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method protected onAttachedToWindow()V
    .locals 1

    .line 364
    invoke-super {p0}, Landroid/view/View;->onAttachedToWindow()V

    .line 365
    invoke-direct {p0}, Landroid/inputmethodservice/KeyboardView;->initGestureDetector()V

    .line 366
    iget-object v0, p0, Landroid/inputmethodservice/KeyboardView;->mHandler:Landroid/os/Handler;

    if-nez v0, :cond_0

    .line 367
    new-instance v0, Landroid/inputmethodservice/KeyboardView$1;

    invoke-direct {v0, p0}, Landroid/inputmethodservice/KeyboardView$1;-><init>(Landroid/inputmethodservice/KeyboardView;)V

    iput-object v0, p0, Landroid/inputmethodservice/KeyboardView;->mHandler:Landroid/os/Handler;

    .line 390
    :cond_0
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 0
    .param p1, "v"    # Landroid/view/View;

    .line 584
    invoke-direct {p0}, Landroid/inputmethodservice/KeyboardView;->dismissPopupKeyboard()V

    .line 585
    return-void
.end method

.method public onDetachedFromWindow()V
    .locals 0

    .line 1404
    invoke-super {p0}, Landroid/view/View;->onDetachedFromWindow()V

    .line 1405
    invoke-virtual {p0}, Landroid/inputmethodservice/KeyboardView;->closing()V

    .line 1406
    return-void
.end method

.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 3
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .line 642
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 643
    iget-boolean v0, p0, Landroid/inputmethodservice/KeyboardView;->mDrawPending:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/inputmethodservice/KeyboardView;->mBuffer:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Landroid/inputmethodservice/KeyboardView;->mKeyboardChanged:Z

    if-eqz v0, :cond_1

    .line 644
    :cond_0
    invoke-direct {p0}, Landroid/inputmethodservice/KeyboardView;->onBufferDraw()V

    .line 646
    :cond_1
    iget-object v0, p0, Landroid/inputmethodservice/KeyboardView;->mBuffer:Landroid/graphics/Bitmap;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {p1, v0, v2, v2, v1}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 647
    return-void
.end method

.method public onHoverEvent(Landroid/view/MotionEvent;)Z
    .locals 3
    .param p1, "event"    # Landroid/view/MotionEvent;

    .line 1158
    iget-object v0, p0, Landroid/inputmethodservice/KeyboardView;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->isTouchExplorationEnabled()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v0

    if-ne v0, v1, :cond_1

    .line 1159
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 1160
    .local v0, "action":I
    const/4 v2, 0x7

    if-eq v0, v2, :cond_0

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 1168
    :pswitch_0
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->setAction(I)V

    goto :goto_0

    .line 1162
    :pswitch_1
    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->setAction(I)V

    .line 1163
    goto :goto_0

    .line 1165
    :cond_0
    const/4 v1, 0x2

    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->setAction(I)V

    .line 1166
    nop

    .line 1171
    :goto_0
    invoke-virtual {p0, p1}, Landroid/inputmethodservice/KeyboardView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    return v1

    .line 1173
    .end local v0    # "action":I
    :cond_1
    return v1

    :pswitch_data_0
    .packed-switch 0x9
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method protected onLongPress(Landroid/inputmethodservice/Keyboard$Key;)Z
    .locals 11
    .param p1, "popupKey"    # Landroid/inputmethodservice/Keyboard$Key;

    .line 1081
    iget v6, p1, Landroid/inputmethodservice/Keyboard$Key;->popupResId:I

    .line 1083
    .local v6, "popupKeyboardId":I
    const/4 v7, 0x0

    if-eqz v6, :cond_4

    .line 1084
    iget-object v0, p0, Landroid/inputmethodservice/KeyboardView;->mMiniKeyboardCache:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    iput-object v0, p0, Landroid/inputmethodservice/KeyboardView;->mMiniKeyboardContainer:Landroid/view/View;

    .line 1085
    iget-object v0, p0, Landroid/inputmethodservice/KeyboardView;->mMiniKeyboardContainer:Landroid/view/View;

    const v1, 0x1020026

    if-nez v0, :cond_2

    .line 1086
    invoke-virtual {p0}, Landroid/inputmethodservice/KeyboardView;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string/jumbo v2, "layout_inflater"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    move-object v8, v0

    check-cast v8, Landroid/view/LayoutInflater;

    .line 1088
    .local v8, "inflater":Landroid/view/LayoutInflater;
    iget v0, p0, Landroid/inputmethodservice/KeyboardView;->mPopupLayout:I

    const/4 v2, 0x0

    invoke-virtual {v8, v0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Landroid/inputmethodservice/KeyboardView;->mMiniKeyboardContainer:Landroid/view/View;

    .line 1089
    iget-object v0, p0, Landroid/inputmethodservice/KeyboardView;->mMiniKeyboardContainer:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/inputmethodservice/KeyboardView;

    iput-object v0, p0, Landroid/inputmethodservice/KeyboardView;->mMiniKeyboard:Landroid/inputmethodservice/KeyboardView;

    .line 1091
    iget-object v0, p0, Landroid/inputmethodservice/KeyboardView;->mMiniKeyboardContainer:Landroid/view/View;

    const v1, 0x1020027

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    .line 1093
    .local v9, "closeButton":Landroid/view/View;
    if-eqz v9, :cond_0

    invoke-virtual {v9, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1094
    :cond_0
    iget-object v0, p0, Landroid/inputmethodservice/KeyboardView;->mMiniKeyboard:Landroid/inputmethodservice/KeyboardView;

    new-instance v1, Landroid/inputmethodservice/KeyboardView$3;

    invoke-direct {v1, p0}, Landroid/inputmethodservice/KeyboardView$3;-><init>(Landroid/inputmethodservice/KeyboardView;)V

    invoke-virtual {v0, v1}, Landroid/inputmethodservice/KeyboardView;->setOnKeyboardActionListener(Landroid/inputmethodservice/KeyboardView$OnKeyboardActionListener;)V

    .line 1118
    iget-object v0, p1, Landroid/inputmethodservice/Keyboard$Key;->popupCharacters:Ljava/lang/CharSequence;

    if-eqz v0, :cond_1

    .line 1119
    new-instance v10, Landroid/inputmethodservice/Keyboard;

    invoke-virtual {p0}, Landroid/inputmethodservice/KeyboardView;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v3, p1, Landroid/inputmethodservice/Keyboard$Key;->popupCharacters:Ljava/lang/CharSequence;

    const/4 v4, -0x1

    .line 1120
    invoke-virtual {p0}, Landroid/inputmethodservice/KeyboardView;->getPaddingLeft()I

    move-result v0

    invoke-virtual {p0}, Landroid/inputmethodservice/KeyboardView;->getPaddingRight()I

    move-result v2

    add-int v5, v0, v2

    move-object v0, v10

    move v2, v6

    invoke-direct/range {v0 .. v5}, Landroid/inputmethodservice/Keyboard;-><init>(Landroid/content/Context;ILjava/lang/CharSequence;II)V

    .line 1120
    .local v0, "keyboard":Landroid/inputmethodservice/Keyboard;
    goto :goto_0

    .line 1122
    .end local v0    # "keyboard":Landroid/inputmethodservice/Keyboard;
    :cond_1
    new-instance v0, Landroid/inputmethodservice/Keyboard;

    invoke-virtual {p0}, Landroid/inputmethodservice/KeyboardView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, v6}, Landroid/inputmethodservice/Keyboard;-><init>(Landroid/content/Context;I)V

    .line 1124
    .restart local v0    # "keyboard":Landroid/inputmethodservice/Keyboard;
    :goto_0
    iget-object v1, p0, Landroid/inputmethodservice/KeyboardView;->mMiniKeyboard:Landroid/inputmethodservice/KeyboardView;

    invoke-virtual {v1, v0}, Landroid/inputmethodservice/KeyboardView;->setKeyboard(Landroid/inputmethodservice/Keyboard;)V

    .line 1125
    iget-object v1, p0, Landroid/inputmethodservice/KeyboardView;->mMiniKeyboard:Landroid/inputmethodservice/KeyboardView;

    invoke-virtual {v1, p0}, Landroid/inputmethodservice/KeyboardView;->setPopupParent(Landroid/view/View;)V

    .line 1126
    iget-object v1, p0, Landroid/inputmethodservice/KeyboardView;->mMiniKeyboardContainer:Landroid/view/View;

    .line 1127
    invoke-virtual {p0}, Landroid/inputmethodservice/KeyboardView;->getWidth()I

    move-result v2

    const/high16 v3, -0x80000000

    invoke-static {v2, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    .line 1128
    invoke-virtual {p0}, Landroid/inputmethodservice/KeyboardView;->getHeight()I

    move-result v4

    invoke-static {v4, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    .line 1126
    invoke-virtual {v1, v2, v3}, Landroid/view/View;->measure(II)V

    .line 1130
    iget-object v1, p0, Landroid/inputmethodservice/KeyboardView;->mMiniKeyboardCache:Ljava/util/Map;

    iget-object v2, p0, Landroid/inputmethodservice/KeyboardView;->mMiniKeyboardContainer:Landroid/view/View;

    invoke-interface {v1, p1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1131
    .end local v0    # "keyboard":Landroid/inputmethodservice/Keyboard;
    .end local v8    # "inflater":Landroid/view/LayoutInflater;
    .end local v9    # "closeButton":Landroid/view/View;
    goto :goto_1

    .line 1132
    :cond_2
    iget-object v0, p0, Landroid/inputmethodservice/KeyboardView;->mMiniKeyboardContainer:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/inputmethodservice/KeyboardView;

    iput-object v0, p0, Landroid/inputmethodservice/KeyboardView;->mMiniKeyboard:Landroid/inputmethodservice/KeyboardView;

    .line 1135
    :goto_1
    iget-object v0, p0, Landroid/inputmethodservice/KeyboardView;->mCoordinates:[I

    invoke-virtual {p0, v0}, Landroid/inputmethodservice/KeyboardView;->getLocationInWindow([I)V

    .line 1136
    iget v0, p1, Landroid/inputmethodservice/Keyboard$Key;->x:I

    iget v1, p0, Landroid/inputmethodservice/KeyboardView;->mPaddingLeft:I

    add-int/2addr v0, v1

    iput v0, p0, Landroid/inputmethodservice/KeyboardView;->mPopupX:I

    .line 1137
    iget v0, p1, Landroid/inputmethodservice/Keyboard$Key;->y:I

    iget v1, p0, Landroid/inputmethodservice/KeyboardView;->mPaddingTop:I

    add-int/2addr v0, v1

    iput v0, p0, Landroid/inputmethodservice/KeyboardView;->mPopupY:I

    .line 1138
    iget v0, p0, Landroid/inputmethodservice/KeyboardView;->mPopupX:I

    iget v1, p1, Landroid/inputmethodservice/Keyboard$Key;->width:I

    add-int/2addr v0, v1

    iget-object v1, p0, Landroid/inputmethodservice/KeyboardView;->mMiniKeyboardContainer:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    sub-int/2addr v0, v1

    iput v0, p0, Landroid/inputmethodservice/KeyboardView;->mPopupX:I

    .line 1139
    iget v0, p0, Landroid/inputmethodservice/KeyboardView;->mPopupY:I

    iget-object v1, p0, Landroid/inputmethodservice/KeyboardView;->mMiniKeyboardContainer:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    sub-int/2addr v0, v1

    iput v0, p0, Landroid/inputmethodservice/KeyboardView;->mPopupY:I

    .line 1140
    iget v0, p0, Landroid/inputmethodservice/KeyboardView;->mPopupX:I

    iget-object v1, p0, Landroid/inputmethodservice/KeyboardView;->mMiniKeyboardContainer:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getPaddingRight()I

    move-result v1

    add-int/2addr v0, v1

    iget-object v1, p0, Landroid/inputmethodservice/KeyboardView;->mCoordinates:[I

    aget v1, v1, v7

    add-int/2addr v0, v1

    .line 1141
    .local v0, "x":I
    iget v1, p0, Landroid/inputmethodservice/KeyboardView;->mPopupY:I

    iget-object v2, p0, Landroid/inputmethodservice/KeyboardView;->mMiniKeyboardContainer:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getPaddingBottom()I

    move-result v2

    add-int/2addr v1, v2

    iget-object v2, p0, Landroid/inputmethodservice/KeyboardView;->mCoordinates:[I

    const/4 v3, 0x1

    aget v2, v2, v3

    add-int/2addr v1, v2

    .line 1142
    .local v1, "y":I
    iget-object v2, p0, Landroid/inputmethodservice/KeyboardView;->mMiniKeyboard:Landroid/inputmethodservice/KeyboardView;

    if-gez v0, :cond_3

    move v4, v7

    goto :goto_2

    :cond_3
    move v4, v0

    :goto_2
    invoke-virtual {v2, v4, v1}, Landroid/inputmethodservice/KeyboardView;->setPopupOffset(II)V

    .line 1143
    iget-object v2, p0, Landroid/inputmethodservice/KeyboardView;->mMiniKeyboard:Landroid/inputmethodservice/KeyboardView;

    invoke-virtual {p0}, Landroid/inputmethodservice/KeyboardView;->isShifted()Z

    move-result v4

    invoke-virtual {v2, v4}, Landroid/inputmethodservice/KeyboardView;->setShifted(Z)Z

    .line 1144
    iget-object v2, p0, Landroid/inputmethodservice/KeyboardView;->mPopupKeyboard:Landroid/widget/PopupWindow;

    iget-object v4, p0, Landroid/inputmethodservice/KeyboardView;->mMiniKeyboardContainer:Landroid/view/View;

    invoke-virtual {v2, v4}, Landroid/widget/PopupWindow;->setContentView(Landroid/view/View;)V

    .line 1145
    iget-object v2, p0, Landroid/inputmethodservice/KeyboardView;->mPopupKeyboard:Landroid/widget/PopupWindow;

    iget-object v4, p0, Landroid/inputmethodservice/KeyboardView;->mMiniKeyboardContainer:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getMeasuredWidth()I

    move-result v4

    invoke-virtual {v2, v4}, Landroid/widget/PopupWindow;->setWidth(I)V

    .line 1146
    iget-object v2, p0, Landroid/inputmethodservice/KeyboardView;->mPopupKeyboard:Landroid/widget/PopupWindow;

    iget-object v4, p0, Landroid/inputmethodservice/KeyboardView;->mMiniKeyboardContainer:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getMeasuredHeight()I

    move-result v4

    invoke-virtual {v2, v4}, Landroid/widget/PopupWindow;->setHeight(I)V

    .line 1147
    iget-object v2, p0, Landroid/inputmethodservice/KeyboardView;->mPopupKeyboard:Landroid/widget/PopupWindow;

    invoke-virtual {v2, p0, v7, v0, v1}, Landroid/widget/PopupWindow;->showAtLocation(Landroid/view/View;III)V

    .line 1148
    iput-boolean v3, p0, Landroid/inputmethodservice/KeyboardView;->mMiniKeyboardOnScreen:Z

    .line 1150
    invoke-virtual {p0}, Landroid/inputmethodservice/KeyboardView;->invalidateAllKeys()V

    .line 1151
    return v3

    .line 1153
    .end local v0    # "x":I
    .end local v1    # "y":I
    :cond_4
    return v7
.end method

.method public onMeasure(II)V
    .locals 3
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .line 598
    iget-object v0, p0, Landroid/inputmethodservice/KeyboardView;->mKeyboard:Landroid/inputmethodservice/Keyboard;

    if-nez v0, :cond_0

    .line 599
    iget v0, p0, Landroid/inputmethodservice/KeyboardView;->mPaddingLeft:I

    iget v1, p0, Landroid/inputmethodservice/KeyboardView;->mPaddingRight:I

    add-int/2addr v0, v1

    iget v1, p0, Landroid/inputmethodservice/KeyboardView;->mPaddingTop:I

    iget v2, p0, Landroid/inputmethodservice/KeyboardView;->mPaddingBottom:I

    add-int/2addr v1, v2

    invoke-virtual {p0, v0, v1}, Landroid/inputmethodservice/KeyboardView;->setMeasuredDimension(II)V

    goto :goto_0

    .line 601
    :cond_0
    iget-object v0, p0, Landroid/inputmethodservice/KeyboardView;->mKeyboard:Landroid/inputmethodservice/Keyboard;

    invoke-virtual {v0}, Landroid/inputmethodservice/Keyboard;->getMinWidth()I

    move-result v0

    iget v1, p0, Landroid/inputmethodservice/KeyboardView;->mPaddingLeft:I

    add-int/2addr v0, v1

    iget v1, p0, Landroid/inputmethodservice/KeyboardView;->mPaddingRight:I

    add-int/2addr v0, v1

    .line 602
    .local v0, "width":I
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    add-int/lit8 v2, v0, 0xa

    if-ge v1, v2, :cond_1

    .line 603
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    .line 605
    :cond_1
    iget-object v1, p0, Landroid/inputmethodservice/KeyboardView;->mKeyboard:Landroid/inputmethodservice/Keyboard;

    invoke-virtual {v1}, Landroid/inputmethodservice/Keyboard;->getHeight()I

    move-result v1

    iget v2, p0, Landroid/inputmethodservice/KeyboardView;->mPaddingTop:I

    add-int/2addr v1, v2

    iget v2, p0, Landroid/inputmethodservice/KeyboardView;->mPaddingBottom:I

    add-int/2addr v1, v2

    invoke-virtual {p0, v0, v1}, Landroid/inputmethodservice/KeyboardView;->setMeasuredDimension(II)V

    .line 607
    .end local v0    # "width":I
    :goto_0
    return-void
.end method

.method public onSizeChanged(IIII)V
    .locals 1
    .param p1, "w"    # I
    .param p2, "h"    # I
    .param p3, "oldw"    # I
    .param p4, "oldh"    # I

    .line 632
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/View;->onSizeChanged(IIII)V

    .line 633
    iget-object v0, p0, Landroid/inputmethodservice/KeyboardView;->mKeyboard:Landroid/inputmethodservice/Keyboard;

    if-eqz v0, :cond_0

    .line 634
    iget-object v0, p0, Landroid/inputmethodservice/KeyboardView;->mKeyboard:Landroid/inputmethodservice/Keyboard;

    invoke-virtual {v0, p1, p2}, Landroid/inputmethodservice/Keyboard;->resize(II)V

    .line 637
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/inputmethodservice/KeyboardView;->mBuffer:Landroid/graphics/Bitmap;

    .line 638
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 18
    .param p1, "me"    # Landroid/view/MotionEvent;

    move-object/from16 v0, p0

    .line 1180
    move-object/from16 v1, p1

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v2

    .line 1181
    .local v2, "pointerCount":I
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v3

    .line 1182
    .local v3, "action":I
    const/4 v4, 0x0

    .line 1183
    .local v4, "result":Z
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v13

    .line 1185
    .local v13, "now":J
    iget v5, v0, Landroid/inputmethodservice/KeyboardView;->mOldPointerCount:I

    const/4 v15, 0x0

    const/4 v12, 0x1

    if-eq v2, v5, :cond_2

    .line 1186
    if-ne v2, v12, :cond_1

    .line 1188
    const/4 v9, 0x0

    .line 1189
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v10

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v11

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getMetaState()I

    move-result v16

    .line 1188
    move-wide v5, v13

    move-wide v7, v13

    move/from16 v12, v16

    invoke-static/range {v5 .. v12}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    move-result-object v5

    .line 1190
    .local v5, "down":Landroid/view/MotionEvent;
    invoke-direct {v0, v5, v15}, Landroid/inputmethodservice/KeyboardView;->onModifiedTouchEvent(Landroid/view/MotionEvent;Z)Z

    move-result v4

    .line 1191
    invoke-virtual {v5}, Landroid/view/MotionEvent;->recycle()V

    .line 1193
    const/4 v15, 0x1

    if-ne v3, v15, :cond_0

    .line 1194
    invoke-direct {v0, v1, v15}, Landroid/inputmethodservice/KeyboardView;->onModifiedTouchEvent(Landroid/view/MotionEvent;Z)Z

    move-result v4

    .line 1196
    .end local v5    # "down":Landroid/view/MotionEvent;
    :cond_0
    goto :goto_0

    .line 1198
    :cond_1
    move v15, v12

    const/4 v9, 0x1

    iget v10, v0, Landroid/inputmethodservice/KeyboardView;->mOldPointerX:F

    iget v11, v0, Landroid/inputmethodservice/KeyboardView;->mOldPointerY:F

    .line 1199
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getMetaState()I

    move-result v12

    .line 1198
    move-wide v5, v13

    move-wide v7, v13

    invoke-static/range {v5 .. v12}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    move-result-object v5

    .line 1200
    .local v5, "up":Landroid/view/MotionEvent;
    invoke-direct {v0, v5, v15}, Landroid/inputmethodservice/KeyboardView;->onModifiedTouchEvent(Landroid/view/MotionEvent;Z)Z

    move-result v4

    .line 1201
    invoke-virtual {v5}, Landroid/view/MotionEvent;->recycle()V

    .line 1202
    .end local v5    # "up":Landroid/view/MotionEvent;
    goto :goto_0

    .line 1204
    :cond_2
    move v5, v12

    if-ne v2, v5, :cond_3

    .line 1205
    invoke-direct {v0, v1, v15}, Landroid/inputmethodservice/KeyboardView;->onModifiedTouchEvent(Landroid/view/MotionEvent;Z)Z

    move-result v4

    .line 1206
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v5

    iput v5, v0, Landroid/inputmethodservice/KeyboardView;->mOldPointerX:F

    .line 1207
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v5

    iput v5, v0, Landroid/inputmethodservice/KeyboardView;->mOldPointerY:F

    goto :goto_0

    .line 1210
    :cond_3
    const/4 v4, 0x1

    .line 1213
    :goto_0
    iput v2, v0, Landroid/inputmethodservice/KeyboardView;->mOldPointerCount:I

    .line 1215
    return v4
.end method

.method public setKeyboard(Landroid/inputmethodservice/Keyboard;)V
    .locals 3
    .param p1, "keyboard"    # Landroid/inputmethodservice/Keyboard;

    .line 470
    iget-object v0, p0, Landroid/inputmethodservice/KeyboardView;->mKeyboard:Landroid/inputmethodservice/Keyboard;

    if-eqz v0, :cond_0

    .line 471
    const/4 v0, -0x1

    invoke-direct {p0, v0}, Landroid/inputmethodservice/KeyboardView;->showPreview(I)V

    .line 474
    :cond_0
    invoke-direct {p0}, Landroid/inputmethodservice/KeyboardView;->removeMessages()V

    .line 475
    iput-object p1, p0, Landroid/inputmethodservice/KeyboardView;->mKeyboard:Landroid/inputmethodservice/Keyboard;

    .line 476
    iget-object v0, p0, Landroid/inputmethodservice/KeyboardView;->mKeyboard:Landroid/inputmethodservice/Keyboard;

    invoke-virtual {v0}, Landroid/inputmethodservice/Keyboard;->getKeys()Ljava/util/List;

    move-result-object v0

    .line 477
    .local v0, "keys":Ljava/util/List;, "Ljava/util/List<Landroid/inputmethodservice/Keyboard$Key;>;"
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    new-array v1, v1, [Landroid/inputmethodservice/Keyboard$Key;

    invoke-interface {v0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Landroid/inputmethodservice/Keyboard$Key;

    iput-object v1, p0, Landroid/inputmethodservice/KeyboardView;->mKeys:[Landroid/inputmethodservice/Keyboard$Key;

    .line 478
    invoke-virtual {p0}, Landroid/inputmethodservice/KeyboardView;->requestLayout()V

    .line 480
    const/4 v1, 0x1

    iput-boolean v1, p0, Landroid/inputmethodservice/KeyboardView;->mKeyboardChanged:Z

    .line 481
    invoke-virtual {p0}, Landroid/inputmethodservice/KeyboardView;->invalidateAllKeys()V

    .line 482
    invoke-direct {p0, p1}, Landroid/inputmethodservice/KeyboardView;->computeProximityThreshold(Landroid/inputmethodservice/Keyboard;)V

    .line 483
    iget-object v2, p0, Landroid/inputmethodservice/KeyboardView;->mMiniKeyboardCache:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->clear()V

    .line 486
    iput-boolean v1, p0, Landroid/inputmethodservice/KeyboardView;->mAbortKey:Z

    .line 487
    return-void
.end method

.method public setOnKeyboardActionListener(Landroid/inputmethodservice/KeyboardView$OnKeyboardActionListener;)V
    .locals 0
    .param p1, "listener"    # Landroid/inputmethodservice/KeyboardView$OnKeyboardActionListener;

    .line 451
    iput-object p1, p0, Landroid/inputmethodservice/KeyboardView;->mKeyboardActionListener:Landroid/inputmethodservice/KeyboardView$OnKeyboardActionListener;

    .line 452
    return-void
.end method

.method public setPopupOffset(II)V
    .locals 1
    .param p1, "x"    # I
    .param p2, "y"    # I

    .line 555
    iput p1, p0, Landroid/inputmethodservice/KeyboardView;->mMiniKeyboardOffsetX:I

    .line 556
    iput p2, p0, Landroid/inputmethodservice/KeyboardView;->mMiniKeyboardOffsetY:I

    .line 557
    iget-object v0, p0, Landroid/inputmethodservice/KeyboardView;->mPreviewPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 558
    iget-object v0, p0, Landroid/inputmethodservice/KeyboardView;->mPreviewPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    .line 560
    :cond_0
    return-void
.end method

.method public setPopupParent(Landroid/view/View;)V
    .locals 0
    .param p1, "v"    # Landroid/view/View;

    .line 551
    iput-object p1, p0, Landroid/inputmethodservice/KeyboardView;->mPopupParent:Landroid/view/View;

    .line 552
    return-void
.end method

.method public setPreviewEnabled(Z)V
    .locals 0
    .param p1, "previewEnabled"    # Z

    .line 535
    iput-boolean p1, p0, Landroid/inputmethodservice/KeyboardView;->mShowPreview:Z

    .line 536
    return-void
.end method

.method public setProximityCorrectionEnabled(Z)V
    .locals 0
    .param p1, "enabled"    # Z

    .line 569
    iput-boolean p1, p0, Landroid/inputmethodservice/KeyboardView;->mProximityCorrectOn:Z

    .line 570
    return-void
.end method

.method public setShifted(Z)Z
    .locals 1
    .param p1, "shifted"    # Z

    .line 505
    iget-object v0, p0, Landroid/inputmethodservice/KeyboardView;->mKeyboard:Landroid/inputmethodservice/Keyboard;

    if-eqz v0, :cond_0

    .line 506
    iget-object v0, p0, Landroid/inputmethodservice/KeyboardView;->mKeyboard:Landroid/inputmethodservice/Keyboard;

    invoke-virtual {v0, p1}, Landroid/inputmethodservice/Keyboard;->setShifted(Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 508
    invoke-virtual {p0}, Landroid/inputmethodservice/KeyboardView;->invalidateAllKeys()V

    .line 509
    const/4 v0, 0x1

    return v0

    .line 512
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public setVerticalCorrection(I)V
    .locals 0
    .param p1, "verticalOffset"    # I

    .line 549
    return-void
.end method

.method protected swipeDown()V
    .locals 1

    .line 1379
    iget-object v0, p0, Landroid/inputmethodservice/KeyboardView;->mKeyboardActionListener:Landroid/inputmethodservice/KeyboardView$OnKeyboardActionListener;

    invoke-interface {v0}, Landroid/inputmethodservice/KeyboardView$OnKeyboardActionListener;->swipeDown()V

    .line 1380
    return-void
.end method

.method protected swipeLeft()V
    .locals 1

    .line 1371
    iget-object v0, p0, Landroid/inputmethodservice/KeyboardView;->mKeyboardActionListener:Landroid/inputmethodservice/KeyboardView$OnKeyboardActionListener;

    invoke-interface {v0}, Landroid/inputmethodservice/KeyboardView$OnKeyboardActionListener;->swipeLeft()V

    .line 1372
    return-void
.end method

.method protected swipeRight()V
    .locals 1

    .line 1367
    iget-object v0, p0, Landroid/inputmethodservice/KeyboardView;->mKeyboardActionListener:Landroid/inputmethodservice/KeyboardView$OnKeyboardActionListener;

    invoke-interface {v0}, Landroid/inputmethodservice/KeyboardView$OnKeyboardActionListener;->swipeRight()V

    .line 1368
    return-void
.end method

.method protected swipeUp()V
    .locals 1

    .line 1375
    iget-object v0, p0, Landroid/inputmethodservice/KeyboardView;->mKeyboardActionListener:Landroid/inputmethodservice/KeyboardView$OnKeyboardActionListener;

    invoke-interface {v0}, Landroid/inputmethodservice/KeyboardView$OnKeyboardActionListener;->swipeUp()V

    .line 1376
    return-void
.end method
