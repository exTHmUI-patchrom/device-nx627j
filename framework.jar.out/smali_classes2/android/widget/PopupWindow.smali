.class public Landroid/widget/PopupWindow;
.super Ljava/lang/Object;
.source "PopupWindow.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/widget/PopupWindow$PopupBackgroundView;,
        Landroid/widget/PopupWindow$PopupDecorView;,
        Landroid/widget/PopupWindow$OnDismissListener;
    }
.end annotation


# static fields
.field private static final ABOVE_ANCHOR_STATE_SET:[I

.field private static final ANIMATION_STYLE_DEFAULT:I = -0x1

.field private static final DEFAULT_ANCHORED_GRAVITY:I = 0x800033

.field public static final INPUT_METHOD_FROM_FOCUSABLE:I = 0x0

.field public static final INPUT_METHOD_NEEDED:I = 0x1

.field public static final INPUT_METHOD_NOT_NEEDED:I = 0x2


# instance fields
.field private mAboveAnchor:Z

.field private mAboveAnchorBackgroundDrawable:Landroid/graphics/drawable/Drawable;

.field private mAllowScrollingAnchorParent:Z

.field private mAnchor:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private mAnchorRoot:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private mAnchorXoff:I

.field private mAnchorYoff:I

.field private mAnchoredGravity:I

.field private mAnimationStyle:I

.field private mAttachedInDecor:Z

.field private mAttachedInDecorSet:Z

.field private mBackground:Landroid/graphics/drawable/Drawable;

.field private mBackgroundView:Landroid/view/View;

.field private mBelowAnchorBackgroundDrawable:Landroid/graphics/drawable/Drawable;

.field private mClipToScreen:Z

.field private mClippingEnabled:Z

.field private mContentView:Landroid/view/View;

.field private mContext:Landroid/content/Context;

.field private mDecorView:Landroid/widget/PopupWindow$PopupDecorView;

.field private mElevation:F

.field private mEnterTransition:Landroid/transition/Transition;

.field private mEpicenterBounds:Landroid/graphics/Rect;

.field private mExitTransition:Landroid/transition/Transition;

.field private mFocusable:Z

.field private mGravity:I

.field private mHeight:I

.field private mHeightMode:I

.field private mIgnoreCheekPress:Z

.field private mInputMethodMode:I

.field private mIsAnchorRootAttached:Z

.field private mIsDropdown:Z

.field private mIsShowing:Z

.field private mIsTransitioningToDismiss:Z

.field private mLastHeight:I

.field private mLastWidth:I

.field private mLayoutInScreen:Z

.field private mLayoutInsetDecor:Z

.field private mNotTouchModal:Z

.field private final mOnAnchorDetachedListener:Landroid/view/View$OnAttachStateChangeListener;

.field private final mOnAnchorRootDetachedListener:Landroid/view/View$OnAttachStateChangeListener;

.field private mOnDismissListener:Landroid/widget/PopupWindow$OnDismissListener;

.field private final mOnLayoutChangeListener:Landroid/view/View$OnLayoutChangeListener;

.field private final mOnScrollChangedListener:Landroid/view/ViewTreeObserver$OnScrollChangedListener;

.field private mOutsideTouchable:Z

.field private mOverlapAnchor:Z

.field private mParentRootView:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private mPopupViewInitialLayoutDirectionInherited:Z

.field private mSoftInputMode:I

.field private mSplitTouchEnabled:I

.field private final mTempRect:Landroid/graphics/Rect;

.field private final mTmpAppLocation:[I

.field private final mTmpDrawingLocation:[I

.field private final mTmpScreenLocation:[I

.field private mTouchInterceptor:Landroid/view/View$OnTouchListener;

.field private mTouchable:Z

.field private mWidth:I

.field private mWidthMode:I

.field private mWindowLayoutType:I

.field private mWindowManager:Landroid/view/WindowManager;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 211
    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    const v2, 0x10100aa

    aput v2, v0, v1

    sput-object v0, Landroid/widget/PopupWindow;->ABOVE_ANCHOR_STATE_SET:[I

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 337
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, v1, v0, v0}, Landroid/widget/PopupWindow;-><init>(Landroid/view/View;II)V

    .line 338
    return-void
.end method

.method public constructor <init>(II)V
    .locals 1
    .param p1, "width"    # I
    .param p2, "height"    # I

    .line 364
    const/4 v0, 0x0

    invoke-direct {p0, v0, p1, p2}, Landroid/widget/PopupWindow;-><init>(Landroid/view/View;II)V

    .line 365
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 263
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/widget/PopupWindow;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 264
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 272
    const v0, 0x1010076

    invoke-direct {p0, p1, p2, v0}, Landroid/widget/PopupWindow;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 273
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .line 281
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Landroid/widget/PopupWindow;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 282
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I
    .param p4, "defStyleRes"    # I

    .line 289
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 139
    const/4 v0, 0x2

    new-array v1, v0, [I

    iput-object v1, p0, Landroid/widget/PopupWindow;->mTmpDrawingLocation:[I

    .line 140
    new-array v1, v0, [I

    iput-object v1, p0, Landroid/widget/PopupWindow;->mTmpScreenLocation:[I

    .line 141
    new-array v1, v0, [I

    iput-object v1, p0, Landroid/widget/PopupWindow;->mTmpAppLocation:[I

    .line 142
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Landroid/widget/PopupWindow;->mTempRect:Landroid/graphics/Rect;

    .line 167
    const/4 v1, 0x0

    iput v1, p0, Landroid/widget/PopupWindow;->mInputMethodMode:I

    .line 168
    const/4 v2, 0x1

    iput v2, p0, Landroid/widget/PopupWindow;->mSoftInputMode:I

    .line 170
    iput-boolean v2, p0, Landroid/widget/PopupWindow;->mTouchable:Z

    .line 171
    iput-boolean v1, p0, Landroid/widget/PopupWindow;->mOutsideTouchable:Z

    .line 172
    iput-boolean v2, p0, Landroid/widget/PopupWindow;->mClippingEnabled:Z

    .line 173
    const/4 v3, -0x1

    iput v3, p0, Landroid/widget/PopupWindow;->mSplitTouchEnabled:I

    .line 176
    iput-boolean v2, p0, Landroid/widget/PopupWindow;->mAllowScrollingAnchorParent:Z

    .line 177
    iput-boolean v1, p0, Landroid/widget/PopupWindow;->mLayoutInsetDecor:Z

    .line 179
    iput-boolean v2, p0, Landroid/widget/PopupWindow;->mAttachedInDecor:Z

    .line 180
    iput-boolean v1, p0, Landroid/widget/PopupWindow;->mAttachedInDecorSet:Z

    .line 185
    const/4 v4, -0x2

    iput v4, p0, Landroid/widget/PopupWindow;->mWidth:I

    .line 188
    iput v4, p0, Landroid/widget/PopupWindow;->mHeight:I

    .line 202
    const/16 v4, 0x3e8

    iput v4, p0, Landroid/widget/PopupWindow;->mWindowLayoutType:I

    .line 205
    iput-boolean v1, p0, Landroid/widget/PopupWindow;->mIgnoreCheekPress:Z

    .line 207
    iput v3, p0, Landroid/widget/PopupWindow;->mAnimationStyle:I

    .line 209
    iput v1, p0, Landroid/widget/PopupWindow;->mGravity:I

    .line 215
    new-instance v4, Landroid/widget/PopupWindow$1;

    invoke-direct {v4, p0}, Landroid/widget/PopupWindow$1;-><init>(Landroid/widget/PopupWindow;)V

    iput-object v4, p0, Landroid/widget/PopupWindow;->mOnAnchorDetachedListener:Landroid/view/View$OnAttachStateChangeListener;

    .line 230
    new-instance v4, Landroid/widget/PopupWindow$2;

    invoke-direct {v4, p0}, Landroid/widget/PopupWindow$2;-><init>(Landroid/widget/PopupWindow;)V

    iput-object v4, p0, Landroid/widget/PopupWindow;->mOnAnchorRootDetachedListener:Landroid/view/View$OnAttachStateChangeListener;

    .line 245
    new-instance v4, Landroid/widget/-$$Lambda$PopupWindow$nV1HS3Nc6Ck5JRIbIHe3mkyHWzc;

    invoke-direct {v4, p0}, Landroid/widget/-$$Lambda$PopupWindow$nV1HS3Nc6Ck5JRIbIHe3mkyHWzc;-><init>(Landroid/widget/PopupWindow;)V

    iput-object v4, p0, Landroid/widget/PopupWindow;->mOnScrollChangedListener:Landroid/view/ViewTreeObserver$OnScrollChangedListener;

    .line 247
    new-instance v4, Landroid/widget/-$$Lambda$PopupWindow$8Gc2stI5cSJZbuKX7X4Qr_vU2nI;

    invoke-direct {v4, p0}, Landroid/widget/-$$Lambda$PopupWindow$8Gc2stI5cSJZbuKX7X4Qr_vU2nI;-><init>(Landroid/widget/PopupWindow;)V

    iput-object v4, p0, Landroid/widget/PopupWindow;->mOnLayoutChangeListener:Landroid/view/View$OnLayoutChangeListener;

    .line 290
    iput-object p1, p0, Landroid/widget/PopupWindow;->mContext:Landroid/content/Context;

    .line 291
    const-string/jumbo v4, "window"

    invoke-virtual {p1, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/WindowManager;

    iput-object v4, p0, Landroid/widget/PopupWindow;->mWindowManager:Landroid/view/WindowManager;

    .line 293
    sget-object v4, Lcom/android/internal/R$styleable;->PopupWindow:[I

    invoke-virtual {p1, p2, v4, p3, p4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v4

    .line 295
    .local v4, "a":Landroid/content/res/TypedArray;
    invoke-virtual {v4, v1}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    .line 296
    .local v5, "bg":Landroid/graphics/drawable/Drawable;
    const/4 v6, 0x3

    const/4 v7, 0x0

    invoke-virtual {v4, v6, v7}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v6

    iput v6, p0, Landroid/widget/PopupWindow;->mElevation:F

    .line 297
    invoke-virtual {v4, v0, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    iput-boolean v0, p0, Landroid/widget/PopupWindow;->mOverlapAnchor:Z

    .line 302
    invoke-virtual {v4, v2}, Landroid/content/res/TypedArray;->hasValueOrEmpty(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 303
    invoke-virtual {v4, v2, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v0

    .line 304
    .local v0, "animStyle":I
    const v2, 0x10302fc

    if-ne v0, v2, :cond_0

    .line 305
    iput v3, p0, Landroid/widget/PopupWindow;->mAnimationStyle:I

    goto :goto_0

    .line 307
    :cond_0
    iput v0, p0, Landroid/widget/PopupWindow;->mAnimationStyle:I

    .line 309
    .end local v0    # "animStyle":I
    :goto_0
    goto :goto_1

    .line 310
    :cond_1
    iput v3, p0, Landroid/widget/PopupWindow;->mAnimationStyle:I

    .line 313
    :goto_1
    const/4 v0, 0x4

    invoke-virtual {v4, v0, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v0

    invoke-direct {p0, v0}, Landroid/widget/PopupWindow;->getTransition(I)Landroid/transition/Transition;

    move-result-object v0

    .line 316
    .local v0, "enterTransition":Landroid/transition/Transition;
    const/4 v2, 0x5

    invoke-virtual {v4, v2}, Landroid/content/res/TypedArray;->hasValueOrEmpty(I)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 317
    invoke-virtual {v4, v2, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    invoke-direct {p0, v1}, Landroid/widget/PopupWindow;->getTransition(I)Landroid/transition/Transition;

    move-result-object v1

    .line 317
    .local v1, "exitTransition":Landroid/transition/Transition;
    goto :goto_2

    .line 320
    .end local v1    # "exitTransition":Landroid/transition/Transition;
    :cond_2
    if-nez v0, :cond_3

    const/4 v1, 0x0

    goto :goto_2

    :cond_3
    invoke-virtual {v0}, Landroid/transition/Transition;->clone()Landroid/transition/Transition;

    move-result-object v1

    .line 323
    .restart local v1    # "exitTransition":Landroid/transition/Transition;
    :goto_2
    invoke-virtual {v4}, Landroid/content/res/TypedArray;->recycle()V

    .line 325
    invoke-virtual {p0, v0}, Landroid/widget/PopupWindow;->setEnterTransition(Landroid/transition/Transition;)V

    .line 326
    invoke-virtual {p0, v1}, Landroid/widget/PopupWindow;->setExitTransition(Landroid/transition/Transition;)V

    .line 327
    invoke-virtual {p0, v5}, Landroid/widget/PopupWindow;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 328
    return-void
.end method

.method public constructor <init>(Landroid/view/View;)V
    .locals 1
    .param p1, "contentView"    # Landroid/view/View;

    .line 350
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, v0}, Landroid/widget/PopupWindow;-><init>(Landroid/view/View;II)V

    .line 351
    return-void
.end method

.method public constructor <init>(Landroid/view/View;II)V
    .locals 1
    .param p1, "contentView"    # Landroid/view/View;
    .param p2, "width"    # I
    .param p3, "height"    # I

    .line 380
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Landroid/widget/PopupWindow;-><init>(Landroid/view/View;IIZ)V

    .line 381
    return-void
.end method

.method public constructor <init>(Landroid/view/View;IIZ)V
    .locals 3
    .param p1, "contentView"    # Landroid/view/View;
    .param p2, "width"    # I
    .param p3, "height"    # I
    .param p4, "focusable"    # Z

    .line 395
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 139
    const/4 v0, 0x2

    new-array v1, v0, [I

    iput-object v1, p0, Landroid/widget/PopupWindow;->mTmpDrawingLocation:[I

    .line 140
    new-array v1, v0, [I

    iput-object v1, p0, Landroid/widget/PopupWindow;->mTmpScreenLocation:[I

    .line 141
    new-array v0, v0, [I

    iput-object v0, p0, Landroid/widget/PopupWindow;->mTmpAppLocation:[I

    .line 142
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/widget/PopupWindow;->mTempRect:Landroid/graphics/Rect;

    .line 167
    const/4 v0, 0x0

    iput v0, p0, Landroid/widget/PopupWindow;->mInputMethodMode:I

    .line 168
    const/4 v1, 0x1

    iput v1, p0, Landroid/widget/PopupWindow;->mSoftInputMode:I

    .line 170
    iput-boolean v1, p0, Landroid/widget/PopupWindow;->mTouchable:Z

    .line 171
    iput-boolean v0, p0, Landroid/widget/PopupWindow;->mOutsideTouchable:Z

    .line 172
    iput-boolean v1, p0, Landroid/widget/PopupWindow;->mClippingEnabled:Z

    .line 173
    const/4 v2, -0x1

    iput v2, p0, Landroid/widget/PopupWindow;->mSplitTouchEnabled:I

    .line 176
    iput-boolean v1, p0, Landroid/widget/PopupWindow;->mAllowScrollingAnchorParent:Z

    .line 177
    iput-boolean v0, p0, Landroid/widget/PopupWindow;->mLayoutInsetDecor:Z

    .line 179
    iput-boolean v1, p0, Landroid/widget/PopupWindow;->mAttachedInDecor:Z

    .line 180
    iput-boolean v0, p0, Landroid/widget/PopupWindow;->mAttachedInDecorSet:Z

    .line 185
    const/4 v1, -0x2

    iput v1, p0, Landroid/widget/PopupWindow;->mWidth:I

    .line 188
    iput v1, p0, Landroid/widget/PopupWindow;->mHeight:I

    .line 202
    const/16 v1, 0x3e8

    iput v1, p0, Landroid/widget/PopupWindow;->mWindowLayoutType:I

    .line 205
    iput-boolean v0, p0, Landroid/widget/PopupWindow;->mIgnoreCheekPress:Z

    .line 207
    iput v2, p0, Landroid/widget/PopupWindow;->mAnimationStyle:I

    .line 209
    iput v0, p0, Landroid/widget/PopupWindow;->mGravity:I

    .line 215
    new-instance v0, Landroid/widget/PopupWindow$1;

    invoke-direct {v0, p0}, Landroid/widget/PopupWindow$1;-><init>(Landroid/widget/PopupWindow;)V

    iput-object v0, p0, Landroid/widget/PopupWindow;->mOnAnchorDetachedListener:Landroid/view/View$OnAttachStateChangeListener;

    .line 230
    new-instance v0, Landroid/widget/PopupWindow$2;

    invoke-direct {v0, p0}, Landroid/widget/PopupWindow$2;-><init>(Landroid/widget/PopupWindow;)V

    iput-object v0, p0, Landroid/widget/PopupWindow;->mOnAnchorRootDetachedListener:Landroid/view/View$OnAttachStateChangeListener;

    .line 245
    new-instance v0, Landroid/widget/-$$Lambda$PopupWindow$nV1HS3Nc6Ck5JRIbIHe3mkyHWzc;

    invoke-direct {v0, p0}, Landroid/widget/-$$Lambda$PopupWindow$nV1HS3Nc6Ck5JRIbIHe3mkyHWzc;-><init>(Landroid/widget/PopupWindow;)V

    iput-object v0, p0, Landroid/widget/PopupWindow;->mOnScrollChangedListener:Landroid/view/ViewTreeObserver$OnScrollChangedListener;

    .line 247
    new-instance v0, Landroid/widget/-$$Lambda$PopupWindow$8Gc2stI5cSJZbuKX7X4Qr_vU2nI;

    invoke-direct {v0, p0}, Landroid/widget/-$$Lambda$PopupWindow$8Gc2stI5cSJZbuKX7X4Qr_vU2nI;-><init>(Landroid/widget/PopupWindow;)V

    iput-object v0, p0, Landroid/widget/PopupWindow;->mOnLayoutChangeListener:Landroid/view/View$OnLayoutChangeListener;

    .line 396
    if-eqz p1, :cond_0

    .line 397
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/PopupWindow;->mContext:Landroid/content/Context;

    .line 398
    iget-object v0, p0, Landroid/widget/PopupWindow;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "window"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    iput-object v0, p0, Landroid/widget/PopupWindow;->mWindowManager:Landroid/view/WindowManager;

    .line 401
    :cond_0
    invoke-virtual {p0, p1}, Landroid/widget/PopupWindow;->setContentView(Landroid/view/View;)V

    .line 402
    invoke-virtual {p0, p2}, Landroid/widget/PopupWindow;->setWidth(I)V

    .line 403
    invoke-virtual {p0, p3}, Landroid/widget/PopupWindow;->setHeight(I)V

    .line 404
    invoke-virtual {p0, p4}, Landroid/widget/PopupWindow;->setFocusable(Z)V

    .line 405
    return-void
.end method

.method static synthetic access$000(Landroid/widget/PopupWindow;)V
    .locals 0
    .param p0, "x0"    # Landroid/widget/PopupWindow;

    .line 106
    invoke-direct {p0}, Landroid/widget/PopupWindow;->alignToAnchor()V

    return-void
.end method

.method static synthetic access$102(Landroid/widget/PopupWindow;Z)Z
    .locals 0
    .param p0, "x0"    # Landroid/widget/PopupWindow;
    .param p1, "x1"    # Z

    .line 106
    iput-boolean p1, p0, Landroid/widget/PopupWindow;->mIsAnchorRootAttached:Z

    return p1
.end method

.method static synthetic access$200(Landroid/widget/PopupWindow;Landroid/view/View;Landroid/view/ViewGroup;Landroid/view/View;)V
    .locals 0
    .param p0, "x0"    # Landroid/widget/PopupWindow;
    .param p1, "x1"    # Landroid/view/View;
    .param p2, "x2"    # Landroid/view/ViewGroup;
    .param p3, "x3"    # Landroid/view/View;

    .line 106
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/PopupWindow;->dismissImmediate(Landroid/view/View;Landroid/view/ViewGroup;Landroid/view/View;)V

    return-void
.end method

.method static synthetic access$300(Landroid/widget/PopupWindow;)Landroid/view/View$OnTouchListener;
    .locals 1
    .param p0, "x0"    # Landroid/widget/PopupWindow;

    .line 106
    iget-object v0, p0, Landroid/widget/PopupWindow;->mTouchInterceptor:Landroid/view/View$OnTouchListener;

    return-object v0
.end method

.method static synthetic access$600(Landroid/widget/PopupWindow;)Ljava/lang/ref/WeakReference;
    .locals 1
    .param p0, "x0"    # Landroid/widget/PopupWindow;

    .line 106
    iget-object v0, p0, Landroid/widget/PopupWindow;->mParentRootView:Ljava/lang/ref/WeakReference;

    return-object v0
.end method

.method static synthetic access$700(Landroid/widget/PopupWindow;)Z
    .locals 1
    .param p0, "x0"    # Landroid/widget/PopupWindow;

    .line 106
    iget-boolean v0, p0, Landroid/widget/PopupWindow;->mAboveAnchor:Z

    return v0
.end method

.method static synthetic access$800()[I
    .locals 1

    .line 106
    sget-object v0, Landroid/widget/PopupWindow;->ABOVE_ANCHOR_STATE_SET:[I

    return-object v0
.end method

.method private alignToAnchor()V
    .locals 11

    .line 2349
    iget-object v0, p0, Landroid/widget/PopupWindow;->mAnchor:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/PopupWindow;->mAnchor:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 2350
    .local v0, "anchor":Landroid/view/View;
    :goto_0
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/view/View;->isAttachedToWindow()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Landroid/widget/PopupWindow;->hasDecorView()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2351
    invoke-virtual {p0}, Landroid/widget/PopupWindow;->getDecorViewLayoutParams()Landroid/view/WindowManager$LayoutParams;

    move-result-object v10

    .line 2353
    .local v10, "p":Landroid/view/WindowManager$LayoutParams;
    iget v4, p0, Landroid/widget/PopupWindow;->mAnchorXoff:I

    iget v5, p0, Landroid/widget/PopupWindow;->mAnchorYoff:I

    iget v6, v10, Landroid/view/WindowManager$LayoutParams;->width:I

    iget v7, v10, Landroid/view/WindowManager$LayoutParams;->height:I

    iget v8, p0, Landroid/widget/PopupWindow;->mAnchoredGravity:I

    const/4 v9, 0x0

    move-object v1, p0

    move-object v2, v0

    move-object v3, v10

    invoke-virtual/range {v1 .. v9}, Landroid/widget/PopupWindow;->findDropDownPosition(Landroid/view/View;Landroid/view/WindowManager$LayoutParams;IIIIIZ)Z

    move-result v1

    invoke-virtual {p0, v1}, Landroid/widget/PopupWindow;->updateAboveAnchor(Z)V

    .line 2355
    iget v3, v10, Landroid/view/WindowManager$LayoutParams;->x:I

    iget v4, v10, Landroid/view/WindowManager$LayoutParams;->y:I

    const/4 v5, -0x1

    const/4 v6, -0x1

    const/4 v7, 0x1

    move-object v2, p0

    invoke-virtual/range {v2 .. v7}, Landroid/widget/PopupWindow;->update(IIIIZ)V

    .line 2357
    .end local v10    # "p":Landroid/view/WindowManager$LayoutParams;
    :cond_1
    return-void
.end method

.method private computeAnimationResource()I
    .locals 2

    .line 1556
    iget v0, p0, Landroid/widget/PopupWindow;->mAnimationStyle:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_2

    .line 1557
    iget-boolean v0, p0, Landroid/widget/PopupWindow;->mIsDropdown:Z

    if-eqz v0, :cond_1

    .line 1558
    iget-boolean v0, p0, Landroid/widget/PopupWindow;->mAboveAnchor:Z

    if-eqz v0, :cond_0

    .line 1559
    const v0, 0x10302f0

    goto :goto_0

    .line 1560
    :cond_0
    const v0, 0x10302ef

    .line 1558
    :goto_0
    return v0

    .line 1562
    :cond_1
    const/4 v0, 0x0

    return v0

    .line 1564
    :cond_2
    iget v0, p0, Landroid/widget/PopupWindow;->mAnimationStyle:I

    return v0
.end method

.method private computeFlags(I)I
    .locals 3
    .param p1, "curFlags"    # I

    .line 1509
    const v0, -0x868219

    and-int/2addr p1, v0

    .line 1517
    iget-boolean v0, p0, Landroid/widget/PopupWindow;->mIgnoreCheekPress:Z

    if-eqz v0, :cond_0

    .line 1518
    const v0, 0x8000

    or-int/2addr p1, v0

    .line 1520
    :cond_0
    iget-boolean v0, p0, Landroid/widget/PopupWindow;->mFocusable:Z

    const/high16 v1, 0x20000

    if-nez v0, :cond_1

    .line 1521
    or-int/lit8 p1, p1, 0x8

    .line 1522
    iget v0, p0, Landroid/widget/PopupWindow;->mInputMethodMode:I

    const/4 v2, 0x1

    if-ne v0, v2, :cond_2

    .line 1523
    or-int/2addr p1, v1

    goto :goto_0

    .line 1525
    :cond_1
    iget v0, p0, Landroid/widget/PopupWindow;->mInputMethodMode:I

    const/4 v2, 0x2

    if-ne v0, v2, :cond_2

    .line 1526
    or-int/2addr p1, v1

    .line 1528
    :cond_2
    :goto_0
    iget-boolean v0, p0, Landroid/widget/PopupWindow;->mTouchable:Z

    if-nez v0, :cond_3

    .line 1529
    or-int/lit8 p1, p1, 0x10

    .line 1531
    :cond_3
    iget-boolean v0, p0, Landroid/widget/PopupWindow;->mOutsideTouchable:Z

    if-eqz v0, :cond_4

    .line 1532
    const/high16 v0, 0x40000

    or-int/2addr p1, v0

    .line 1534
    :cond_4
    iget-boolean v0, p0, Landroid/widget/PopupWindow;->mClippingEnabled:Z

    if-eqz v0, :cond_5

    iget-boolean v0, p0, Landroid/widget/PopupWindow;->mClipToScreen:Z

    if-eqz v0, :cond_6

    .line 1535
    :cond_5
    or-int/lit16 p1, p1, 0x200

    .line 1537
    :cond_6
    invoke-virtual {p0}, Landroid/widget/PopupWindow;->isSplitTouchEnabled()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 1538
    const/high16 v0, 0x800000

    or-int/2addr p1, v0

    .line 1540
    :cond_7
    iget-boolean v0, p0, Landroid/widget/PopupWindow;->mLayoutInScreen:Z

    if-eqz v0, :cond_8

    .line 1541
    or-int/lit16 p1, p1, 0x100

    .line 1543
    :cond_8
    iget-boolean v0, p0, Landroid/widget/PopupWindow;->mLayoutInsetDecor:Z

    if-eqz v0, :cond_9

    .line 1544
    const/high16 v0, 0x10000

    or-int/2addr p1, v0

    .line 1546
    :cond_9
    iget-boolean v0, p0, Landroid/widget/PopupWindow;->mNotTouchModal:Z

    if-eqz v0, :cond_a

    .line 1547
    or-int/lit8 p1, p1, 0x20

    .line 1549
    :cond_a
    iget-boolean v0, p0, Landroid/widget/PopupWindow;->mAttachedInDecor:Z

    if-eqz v0, :cond_b

    .line 1550
    const/high16 v0, 0x40000000    # 2.0f

    or-int/2addr p1, v0

    .line 1552
    :cond_b
    return p1
.end method

.method private computeGravity()I
    .locals 2

    .line 1451
    iget v0, p0, Landroid/widget/PopupWindow;->mGravity:I

    if-nez v0, :cond_0

    const v0, 0x800033

    goto :goto_0

    :cond_0
    iget v0, p0, Landroid/widget/PopupWindow;->mGravity:I

    .line 1452
    .local v0, "gravity":I
    :goto_0
    iget-boolean v1, p0, Landroid/widget/PopupWindow;->mIsDropdown:Z

    if-eqz v1, :cond_2

    iget-boolean v1, p0, Landroid/widget/PopupWindow;->mClipToScreen:Z

    if-nez v1, :cond_1

    iget-boolean v1, p0, Landroid/widget/PopupWindow;->mClippingEnabled:Z

    if-eqz v1, :cond_2

    .line 1453
    :cond_1
    const/high16 v1, 0x10000000

    or-int/2addr v0, v1

    .line 1455
    :cond_2
    return v0
.end method

.method private createBackgroundView(Landroid/view/View;)Landroid/widget/PopupWindow$PopupBackgroundView;
    .locals 5
    .param p1, "contentView"    # Landroid/view/View;

    .line 1377
    iget-object v0, p0, Landroid/widget/PopupWindow;->mContentView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 1379
    .local v0, "layoutParams":Landroid/view/ViewGroup$LayoutParams;
    const/4 v1, -0x1

    if-eqz v0, :cond_0

    iget v2, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    const/4 v3, -0x2

    if-ne v2, v3, :cond_0

    .line 1380
    const/4 v2, -0x2

    .local v2, "height":I
    goto :goto_0

    .line 1382
    .end local v2    # "height":I
    :cond_0
    move v2, v1

    .line 1385
    .restart local v2    # "height":I
    :goto_0
    new-instance v3, Landroid/widget/PopupWindow$PopupBackgroundView;

    iget-object v4, p0, Landroid/widget/PopupWindow;->mContext:Landroid/content/Context;

    invoke-direct {v3, p0, v4}, Landroid/widget/PopupWindow$PopupBackgroundView;-><init>(Landroid/widget/PopupWindow;Landroid/content/Context;)V

    .line 1386
    .local v3, "backgroundView":Landroid/widget/PopupWindow$PopupBackgroundView;
    new-instance v4, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v4, v1, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    move-object v1, v4

    .line 1388
    .local v1, "listParams":Landroid/widget/FrameLayout$LayoutParams;
    invoke-virtual {v3, p1, v1}, Landroid/widget/PopupWindow$PopupBackgroundView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1390
    return-object v3
.end method

.method private createDecorView(Landroid/view/View;)Landroid/widget/PopupWindow$PopupDecorView;
    .locals 5
    .param p1, "contentView"    # Landroid/view/View;

    .line 1400
    iget-object v0, p0, Landroid/widget/PopupWindow;->mContentView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 1402
    .local v0, "layoutParams":Landroid/view/ViewGroup$LayoutParams;
    const/4 v1, -0x1

    if-eqz v0, :cond_0

    iget v2, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    const/4 v3, -0x2

    if-ne v2, v3, :cond_0

    .line 1403
    const/4 v2, -0x2

    .local v2, "height":I
    goto :goto_0

    .line 1405
    .end local v2    # "height":I
    :cond_0
    move v2, v1

    .line 1408
    .restart local v2    # "height":I
    :goto_0
    new-instance v3, Landroid/widget/PopupWindow$PopupDecorView;

    iget-object v4, p0, Landroid/widget/PopupWindow;->mContext:Landroid/content/Context;

    invoke-direct {v3, p0, v4}, Landroid/widget/PopupWindow$PopupDecorView;-><init>(Landroid/widget/PopupWindow;Landroid/content/Context;)V

    .line 1409
    .local v3, "decorView":Landroid/widget/PopupWindow$PopupDecorView;
    invoke-virtual {v3, p1, v1, v2}, Landroid/widget/PopupWindow$PopupDecorView;->addView(Landroid/view/View;II)V

    .line 1410
    const/4 v1, 0x0

    invoke-virtual {v3, v1}, Landroid/widget/PopupWindow$PopupDecorView;->setClipChildren(Z)V

    .line 1411
    invoke-virtual {v3, v1}, Landroid/widget/PopupWindow$PopupDecorView;->setClipToPadding(Z)V

    .line 1413
    return-object v3
.end method

.method private dismissImmediate(Landroid/view/View;Landroid/view/ViewGroup;Landroid/view/View;)V
    .locals 1
    .param p1, "decorView"    # Landroid/view/View;
    .param p2, "contentHolder"    # Landroid/view/ViewGroup;
    .param p3, "contentView"    # Landroid/view/View;

    .line 1986
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1987
    iget-object v0, p0, Landroid/widget/PopupWindow;->mWindowManager:Landroid/view/WindowManager;

    invoke-interface {v0, p1}, Landroid/view/WindowManager;->removeViewImmediate(Landroid/view/View;)V

    .line 1990
    :cond_0
    if-eqz p2, :cond_1

    .line 1991
    invoke-virtual {p2, p3}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 1996
    :cond_1
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/widget/PopupWindow;->mDecorView:Landroid/widget/PopupWindow$PopupDecorView;

    .line 1997
    iput-object v0, p0, Landroid/widget/PopupWindow;->mBackgroundView:Landroid/view/View;

    .line 1998
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/widget/PopupWindow;->mIsTransitioningToDismiss:Z

    .line 1999
    return-void
.end method

.method private getAppRootView(Landroid/view/View;)Landroid/view/View;
    .locals 2
    .param p1, "anchor"    # Landroid/view/View;

    .line 2360
    invoke-static {}, Landroid/view/WindowManagerGlobal;->getInstance()Landroid/view/WindowManagerGlobal;

    move-result-object v0

    .line 2361
    invoke-virtual {p1}, Landroid/view/View;->getApplicationWindowToken()Landroid/os/IBinder;

    move-result-object v1

    .line 2360
    invoke-virtual {v0, v1}, Landroid/view/WindowManagerGlobal;->getWindowView(Landroid/os/IBinder;)Landroid/view/View;

    move-result-object v0

    .line 2362
    .local v0, "appWindowView":Landroid/view/View;
    if-eqz v0, :cond_0

    .line 2363
    return-object v0

    .line 2365
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v1

    return-object v1
.end method

.method private getTransition(I)Landroid/transition/Transition;
    .locals 3
    .param p1, "resId"    # I

    .line 474
    if-eqz p1, :cond_1

    const/high16 v0, 0x10f0000

    if-eq p1, v0, :cond_1

    .line 475
    iget-object v0, p0, Landroid/widget/PopupWindow;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/transition/TransitionInflater;->from(Landroid/content/Context;)Landroid/transition/TransitionInflater;

    move-result-object v0

    .line 476
    .local v0, "inflater":Landroid/transition/TransitionInflater;
    invoke-virtual {v0, p1}, Landroid/transition/TransitionInflater;->inflateTransition(I)Landroid/transition/Transition;

    move-result-object v1

    .line 477
    .local v1, "transition":Landroid/transition/Transition;
    if-eqz v1, :cond_1

    .line 478
    instance-of v2, v1, Landroid/transition/TransitionSet;

    if-eqz v2, :cond_0

    move-object v2, v1

    check-cast v2, Landroid/transition/TransitionSet;

    .line 479
    invoke-virtual {v2}, Landroid/transition/TransitionSet;->getTransitionCount()I

    move-result v2

    if-nez v2, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    .line 480
    .local v2, "isEmpty":Z
    :goto_0
    if-nez v2, :cond_1

    .line 481
    return-object v1

    .line 485
    .end local v0    # "inflater":Landroid/transition/TransitionInflater;
    .end local v1    # "transition":Landroid/transition/Transition;
    .end local v2    # "isEmpty":Z
    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method private invokePopup(Landroid/view/WindowManager$LayoutParams;)V
    .locals 2
    .param p1, "p"    # Landroid/view/WindowManager$LayoutParams;

    .line 1425
    iget-object v0, p0, Landroid/widget/PopupWindow;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_0

    .line 1426
    iget-object v0, p0, Landroid/widget/PopupWindow;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Landroid/view/WindowManager$LayoutParams;->packageName:Ljava/lang/String;

    .line 1429
    :cond_0
    iget-object v0, p0, Landroid/widget/PopupWindow;->mDecorView:Landroid/widget/PopupWindow$PopupDecorView;

    .line 1430
    .local v0, "decorView":Landroid/widget/PopupWindow$PopupDecorView;
    iget-boolean v1, p0, Landroid/widget/PopupWindow;->mLayoutInsetDecor:Z

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow$PopupDecorView;->setFitsSystemWindows(Z)V

    .line 1432
    invoke-direct {p0}, Landroid/widget/PopupWindow;->setLayoutDirectionFromAnchor()V

    .line 1434
    iget-object v1, p0, Landroid/widget/PopupWindow;->mWindowManager:Landroid/view/WindowManager;

    invoke-interface {v1, v0, p1}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1436
    iget-object v1, p0, Landroid/widget/PopupWindow;->mEnterTransition:Landroid/transition/Transition;

    if-eqz v1, :cond_1

    .line 1437
    iget-object v1, p0, Landroid/widget/PopupWindow;->mEnterTransition:Landroid/transition/Transition;

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow$PopupDecorView;->requestEnterTransition(Landroid/transition/Transition;)V

    .line 1439
    :cond_1
    return-void
.end method

.method public static synthetic lambda$nV1HS3Nc6Ck5JRIbIHe3mkyHWzc(Landroid/widget/PopupWindow;)V
    .locals 0

    invoke-direct {p0}, Landroid/widget/PopupWindow;->alignToAnchor()V

    return-void
.end method

.method public static synthetic lambda$new$0(Landroid/widget/PopupWindow;Landroid/view/View;IIIIIIII)V
    .locals 0
    .param p1, "v"    # Landroid/view/View;
    .param p2, "left"    # I
    .param p3, "top"    # I
    .param p4, "right"    # I
    .param p5, "bottom"    # I
    .param p6, "oldLeft"    # I
    .param p7, "oldTop"    # I
    .param p8, "oldRight"    # I
    .param p9, "oldBottom"    # I

    .line 248
    invoke-direct {p0}, Landroid/widget/PopupWindow;->alignToAnchor()V

    return-void
.end method

.method private positionInDisplayHorizontal(Landroid/view/WindowManager$LayoutParams;IIIIIZ)Z
    .locals 5
    .param p1, "outParams"    # Landroid/view/WindowManager$LayoutParams;
    .param p2, "width"    # I
    .param p3, "drawingLocationX"    # I
    .param p4, "screenLocationX"    # I
    .param p5, "displayFrameLeft"    # I
    .param p6, "displayFrameRight"    # I
    .param p7, "canResize"    # Z

    .line 1754
    const/4 v0, 0x1

    .line 1757
    .local v0, "fitsInDisplay":Z
    sub-int v1, p4, p3

    .line 1758
    .local v1, "winOffsetX":I
    iget v2, p1, Landroid/view/WindowManager$LayoutParams;->x:I

    add-int/2addr v2, v1

    iput v2, p1, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 1760
    iget v2, p1, Landroid/view/WindowManager$LayoutParams;->x:I

    add-int/2addr v2, p2

    .line 1761
    .local v2, "right":I
    if-le v2, p6, :cond_0

    .line 1763
    iget v3, p1, Landroid/view/WindowManager$LayoutParams;->x:I

    sub-int v4, v2, p6

    sub-int/2addr v3, v4

    iput v3, p1, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 1766
    :cond_0
    iget v3, p1, Landroid/view/WindowManager$LayoutParams;->x:I

    if-ge v3, p5, :cond_2

    .line 1769
    iput p5, p1, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 1771
    sub-int v3, p6, p5

    .line 1772
    .local v3, "displayFrameWidth":I
    if-eqz p7, :cond_1

    if-le p2, v3, :cond_1

    .line 1773
    iput v3, p1, Landroid/view/WindowManager$LayoutParams;->width:I

    goto :goto_0

    .line 1775
    :cond_1
    const/4 v0, 0x0

    .line 1779
    .end local v3    # "displayFrameWidth":I
    :cond_2
    :goto_0
    iget v3, p1, Landroid/view/WindowManager$LayoutParams;->x:I

    sub-int/2addr v3, v1

    iput v3, p1, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 1781
    return v0
.end method

.method private positionInDisplayVertical(Landroid/view/WindowManager$LayoutParams;IIIIIZ)Z
    .locals 5
    .param p1, "outParams"    # Landroid/view/WindowManager$LayoutParams;
    .param p2, "height"    # I
    .param p3, "drawingLocationY"    # I
    .param p4, "screenLocationY"    # I
    .param p5, "displayFrameTop"    # I
    .param p6, "displayFrameBottom"    # I
    .param p7, "canResize"    # Z

    .line 1703
    const/4 v0, 0x1

    .line 1705
    .local v0, "fitsInDisplay":Z
    sub-int v1, p4, p3

    .line 1706
    .local v1, "winOffsetY":I
    iget v2, p1, Landroid/view/WindowManager$LayoutParams;->y:I

    add-int/2addr v2, v1

    iput v2, p1, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 1707
    iput p2, p1, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 1709
    iget v2, p1, Landroid/view/WindowManager$LayoutParams;->y:I

    add-int/2addr v2, p2

    .line 1710
    .local v2, "bottom":I
    if-le v2, p6, :cond_0

    .line 1712
    iget v3, p1, Landroid/view/WindowManager$LayoutParams;->y:I

    sub-int v4, v2, p6

    sub-int/2addr v3, v4

    iput v3, p1, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 1715
    :cond_0
    iget v3, p1, Landroid/view/WindowManager$LayoutParams;->y:I

    if-ge v3, p5, :cond_2

    .line 1718
    iput p5, p1, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 1720
    sub-int v3, p6, p5

    .line 1721
    .local v3, "displayFrameHeight":I
    if-eqz p7, :cond_1

    if-le p2, v3, :cond_1

    .line 1722
    iput v3, p1, Landroid/view/WindowManager$LayoutParams;->height:I

    goto :goto_0

    .line 1724
    :cond_1
    const/4 v0, 0x0

    .line 1728
    .end local v3    # "displayFrameHeight":I
    :cond_2
    :goto_0
    iget v3, p1, Landroid/view/WindowManager$LayoutParams;->y:I

    sub-int/2addr v3, v1

    iput v3, p1, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 1730
    return v0
.end method

.method private preparePopup(Landroid/view/WindowManager$LayoutParams;)V
    .locals 3
    .param p1, "p"    # Landroid/view/WindowManager$LayoutParams;

    .line 1332
    iget-object v0, p0, Landroid/widget/PopupWindow;->mContentView:Landroid/view/View;

    if-eqz v0, :cond_4

    iget-object v0, p0, Landroid/widget/PopupWindow;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_4

    iget-object v0, p0, Landroid/widget/PopupWindow;->mWindowManager:Landroid/view/WindowManager;

    if-eqz v0, :cond_4

    .line 1337
    iget-object v0, p1, Landroid/view/WindowManager$LayoutParams;->accessibilityTitle:Ljava/lang/CharSequence;

    if-nez v0, :cond_0

    .line 1338
    iget-object v0, p0, Landroid/widget/PopupWindow;->mContext:Landroid/content/Context;

    const v1, 0x1040555

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Landroid/view/WindowManager$LayoutParams;->accessibilityTitle:Ljava/lang/CharSequence;

    .line 1343
    :cond_0
    iget-object v0, p0, Landroid/widget/PopupWindow;->mDecorView:Landroid/widget/PopupWindow$PopupDecorView;

    if-eqz v0, :cond_1

    .line 1344
    iget-object v0, p0, Landroid/widget/PopupWindow;->mDecorView:Landroid/widget/PopupWindow$PopupDecorView;

    invoke-virtual {v0}, Landroid/widget/PopupWindow$PopupDecorView;->cancelTransitions()V

    .line 1349
    :cond_1
    iget-object v0, p0, Landroid/widget/PopupWindow;->mBackground:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_2

    .line 1350
    iget-object v0, p0, Landroid/widget/PopupWindow;->mContentView:Landroid/view/View;

    invoke-direct {p0, v0}, Landroid/widget/PopupWindow;->createBackgroundView(Landroid/view/View;)Landroid/widget/PopupWindow$PopupBackgroundView;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/PopupWindow;->mBackgroundView:Landroid/view/View;

    .line 1351
    iget-object v0, p0, Landroid/widget/PopupWindow;->mBackgroundView:Landroid/view/View;

    iget-object v1, p0, Landroid/widget/PopupWindow;->mBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 1353
    :cond_2
    iget-object v0, p0, Landroid/widget/PopupWindow;->mContentView:Landroid/view/View;

    iput-object v0, p0, Landroid/widget/PopupWindow;->mBackgroundView:Landroid/view/View;

    .line 1356
    :goto_0
    iget-object v0, p0, Landroid/widget/PopupWindow;->mBackgroundView:Landroid/view/View;

    invoke-direct {p0, v0}, Landroid/widget/PopupWindow;->createDecorView(Landroid/view/View;)Landroid/widget/PopupWindow$PopupDecorView;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/PopupWindow;->mDecorView:Landroid/widget/PopupWindow$PopupDecorView;

    .line 1357
    iget-object v0, p0, Landroid/widget/PopupWindow;->mDecorView:Landroid/widget/PopupWindow$PopupDecorView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow$PopupDecorView;->setIsRootNamespace(Z)V

    .line 1360
    iget-object v0, p0, Landroid/widget/PopupWindow;->mBackgroundView:Landroid/view/View;

    iget v2, p0, Landroid/widget/PopupWindow;->mElevation:F

    invoke-virtual {v0, v2}, Landroid/view/View;->setElevation(F)V

    .line 1364
    iget-object v0, p0, Landroid/widget/PopupWindow;->mBackgroundView:Landroid/view/View;

    invoke-virtual {p1, v0, v1, v1}, Landroid/view/WindowManager$LayoutParams;->setSurfaceInsets(Landroid/view/View;ZZ)V

    .line 1366
    iget-object v0, p0, Landroid/widget/PopupWindow;->mContentView:Landroid/view/View;

    .line 1367
    invoke-virtual {v0}, Landroid/view/View;->getRawLayoutDirection()I

    move-result v0

    const/4 v2, 0x2

    if-ne v0, v2, :cond_3

    goto :goto_1

    :cond_3
    const/4 v1, 0x0

    :goto_1
    iput-boolean v1, p0, Landroid/widget/PopupWindow;->mPopupViewInitialLayoutDirectionInherited:Z

    .line 1368
    return-void

    .line 1333
    :cond_4
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "You must specify a valid content view by calling setContentView() before attempting to show the popup."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private setLayoutDirectionFromAnchor()V
    .locals 3

    .line 1442
    iget-object v0, p0, Landroid/widget/PopupWindow;->mAnchor:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_0

    .line 1443
    iget-object v0, p0, Landroid/widget/PopupWindow;->mAnchor:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 1444
    .local v0, "anchor":Landroid/view/View;
    if-eqz v0, :cond_0

    iget-boolean v1, p0, Landroid/widget/PopupWindow;->mPopupViewInitialLayoutDirectionInherited:Z

    if-eqz v1, :cond_0

    .line 1445
    iget-object v1, p0, Landroid/widget/PopupWindow;->mDecorView:Landroid/widget/PopupWindow$PopupDecorView;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutDirection()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/PopupWindow$PopupDecorView;->setLayoutDirection(I)V

    .line 1448
    .end local v0    # "anchor":Landroid/view/View;
    :cond_0
    return-void
.end method

.method private tryFitHorizontal(Landroid/view/WindowManager$LayoutParams;IIIIIIIZ)Z
    .locals 13
    .param p1, "outParams"    # Landroid/view/WindowManager$LayoutParams;
    .param p2, "xOffset"    # I
    .param p3, "width"    # I
    .param p4, "anchorWidth"    # I
    .param p5, "drawingLocationX"    # I
    .param p6, "screenLocationX"    # I
    .param p7, "displayFrameLeft"    # I
    .param p8, "displayFrameRight"    # I
    .param p9, "allowResize"    # Z

    .line 1736
    sub-int v8, p6, p5

    .line 1737
    .local v8, "winOffsetX":I
    move-object v9, p1

    iget v0, v9, Landroid/view/WindowManager$LayoutParams;->x:I

    add-int v10, v0, v8

    .line 1738
    .local v10, "anchorLeftInScreen":I
    sub-int v11, p8, v10

    .line 1739
    .local v11, "spaceRight":I
    const/4 v12, 0x1

    if-ltz v10, :cond_0

    move/from16 v7, p3

    if-gt v7, v11, :cond_1

    .line 1740
    return v12

    .line 1743
    :cond_0
    move/from16 v7, p3

    :cond_1
    move-object v0, p0

    move-object v1, v9

    move v2, v7

    move/from16 v3, p5

    move/from16 v4, p6

    move/from16 v5, p7

    move/from16 v6, p8

    move/from16 v7, p9

    invoke-direct/range {v0 .. v7}, Landroid/widget/PopupWindow;->positionInDisplayHorizontal(Landroid/view/WindowManager$LayoutParams;IIIIIZ)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1745
    return v12

    .line 1748
    :cond_2
    const/4 v0, 0x0

    return v0
.end method

.method private tryFitVertical(Landroid/view/WindowManager$LayoutParams;IIIIIIIZ)Z
    .locals 15
    .param p1, "outParams"    # Landroid/view/WindowManager$LayoutParams;
    .param p2, "yOffset"    # I
    .param p3, "height"    # I
    .param p4, "anchorHeight"    # I
    .param p5, "drawingLocationY"    # I
    .param p6, "screenLocationY"    # I
    .param p7, "displayFrameTop"    # I
    .param p8, "displayFrameBottom"    # I
    .param p9, "allowResize"    # Z

    move-object/from16 v8, p1

    move/from16 v9, p3

    .line 1674
    sub-int v10, p6, p5

    .line 1675
    .local v10, "winOffsetY":I
    iget v0, v8, Landroid/view/WindowManager$LayoutParams;->y:I

    add-int v11, v0, v10

    .line 1676
    .local v11, "anchorTopInScreen":I
    sub-int v7, p8, v11

    .line 1677
    .local v7, "spaceBelow":I
    const/4 v12, 0x1

    if-ltz v11, :cond_0

    if-gt v9, v7, :cond_0

    .line 1678
    return v12

    .line 1681
    :cond_0
    sub-int v0, v11, p4

    sub-int v6, v0, p7

    .line 1682
    .local v6, "spaceAbove":I
    if-gt v9, v6, :cond_2

    .line 1684
    move-object v5, p0

    iget-boolean v0, v5, Landroid/widget/PopupWindow;->mOverlapAnchor:Z

    if-eqz v0, :cond_1

    .line 1685
    add-int v0, p2, p4

    .end local p2    # "yOffset":I
    .local v0, "yOffset":I
    goto :goto_0

    .line 1687
    .end local v0    # "yOffset":I
    .restart local p2    # "yOffset":I
    :cond_1
    move/from16 v0, p2

    .end local p2    # "yOffset":I
    .restart local v0    # "yOffset":I
    :goto_0
    sub-int v1, p5, v9

    add-int/2addr v1, v0

    iput v1, v8, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 1689
    return v12

    .line 1692
    .end local v0    # "yOffset":I
    .restart local p2    # "yOffset":I
    :cond_2
    move-object v5, p0

    move-object v0, v5

    move-object v1, v8

    move v2, v9

    move/from16 v3, p5

    move/from16 v4, p6

    move/from16 v5, p7

    move v13, v6

    move/from16 v6, p8

    .end local v6    # "spaceAbove":I
    .local v13, "spaceAbove":I
    move v14, v7

    move/from16 v7, p9

    .end local v7    # "spaceBelow":I
    .local v14, "spaceBelow":I
    invoke-direct/range {v0 .. v7}, Landroid/widget/PopupWindow;->positionInDisplayVertical(Landroid/view/WindowManager$LayoutParams;IIIIIZ)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1694
    return v12

    .line 1697
    :cond_3
    const/4 v0, 0x0

    return v0
.end method

.method private update(Landroid/view/View;ZIIII)V
    .locals 25
    .param p1, "anchor"    # Landroid/view/View;
    .param p2, "updateLocation"    # Z
    .param p3, "xoff"    # I
    .param p4, "yoff"    # I
    .param p5, "width"    # I
    .param p6, "height"    # I

    move-object/from16 v9, p0

    move-object/from16 v10, p1

    move/from16 v11, p3

    move/from16 v12, p4

    .line 2241
    invoke-virtual/range {p0 .. p0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_c

    invoke-virtual/range {p0 .. p0}, Landroid/widget/PopupWindow;->hasContentView()Z

    move-result v0

    if-nez v0, :cond_0

    goto/16 :goto_9

    .line 2245
    :cond_0
    iget-object v13, v9, Landroid/widget/PopupWindow;->mAnchor:Ljava/lang/ref/WeakReference;

    .line 2246
    .local v13, "oldAnchor":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Landroid/view/View;>;"
    iget v14, v9, Landroid/widget/PopupWindow;->mAnchoredGravity:I

    .line 2248
    .local v14, "gravity":I
    const/16 v16, 0x1

    if-eqz p2, :cond_2

    iget v0, v9, Landroid/widget/PopupWindow;->mAnchorXoff:I

    if-ne v0, v11, :cond_1

    iget v0, v9, Landroid/widget/PopupWindow;->mAnchorYoff:I

    if-eq v0, v12, :cond_2

    :cond_1
    move/from16 v0, v16

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    move/from16 v17, v0

    .line 2249
    .local v17, "needsUpdate":Z
    if-eqz v13, :cond_4

    invoke-virtual {v13}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-ne v0, v10, :cond_4

    if-eqz v17, :cond_3

    iget-boolean v0, v9, Landroid/widget/PopupWindow;->mIsDropdown:Z

    if-nez v0, :cond_3

    goto :goto_1

    .line 2251
    :cond_3
    if-eqz v17, :cond_5

    .line 2253
    iput v11, v9, Landroid/widget/PopupWindow;->mAnchorXoff:I

    .line 2254
    iput v12, v9, Landroid/widget/PopupWindow;->mAnchorYoff:I

    goto :goto_2

    .line 2250
    :cond_4
    :goto_1
    invoke-virtual {v9, v10, v11, v12, v14}, Landroid/widget/PopupWindow;->attachToAnchor(Landroid/view/View;III)V

    .line 2257
    :cond_5
    :goto_2
    invoke-virtual/range {p0 .. p0}, Landroid/widget/PopupWindow;->getDecorViewLayoutParams()Landroid/view/WindowManager$LayoutParams;

    move-result-object v8

    .line 2258
    .local v8, "p":Landroid/view/WindowManager$LayoutParams;
    iget v7, v8, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 2259
    .local v7, "oldGravity":I
    iget v6, v8, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 2260
    .local v6, "oldWidth":I
    iget v5, v8, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 2261
    .local v5, "oldHeight":I
    iget v4, v8, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 2262
    .local v4, "oldX":I
    iget v3, v8, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 2266
    .local v3, "oldY":I
    if-gez p5, :cond_6

    .line 2267
    iget v0, v9, Landroid/widget/PopupWindow;->mWidth:I

    .line 2269
    .end local p5    # "width":I
    .local v0, "width":I
    move/from16 v18, v0

    goto :goto_3

    .end local v0    # "width":I
    .restart local p5    # "width":I
    :cond_6
    move/from16 v18, p5

    .end local p5    # "width":I
    .local v18, "width":I
    :goto_3
    if-gez p6, :cond_7

    .line 2270
    iget v0, v9, Landroid/widget/PopupWindow;->mHeight:I

    .line 2273
    .end local p6    # "height":I
    .local v0, "height":I
    move/from16 v19, v0

    goto :goto_4

    .end local v0    # "height":I
    .restart local p6    # "height":I
    :cond_7
    move/from16 v19, p6

    .end local p6    # "height":I
    .local v19, "height":I
    :goto_4
    iget v2, v9, Landroid/widget/PopupWindow;->mAnchorXoff:I

    iget v1, v9, Landroid/widget/PopupWindow;->mAnchorYoff:I

    iget-boolean v0, v9, Landroid/widget/PopupWindow;->mAllowScrollingAnchorParent:Z

    move/from16 v20, v0

    move-object v0, v9

    move/from16 v21, v1

    move-object v1, v10

    move/from16 v22, v2

    move-object v2, v8

    move v15, v3

    move/from16 v3, v22

    .end local v3    # "oldY":I
    .local v15, "oldY":I
    move v10, v4

    move/from16 v4, v21

    .end local v4    # "oldX":I
    .local v10, "oldX":I
    move v11, v5

    move/from16 v5, v18

    .end local v5    # "oldHeight":I
    .local v11, "oldHeight":I
    move v12, v6

    move/from16 v6, v19

    .end local v6    # "oldWidth":I
    .local v12, "oldWidth":I
    move-object/from16 v23, v13

    move v13, v7

    move v7, v14

    .end local v7    # "oldGravity":I
    .local v13, "oldGravity":I
    .local v23, "oldAnchor":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Landroid/view/View;>;"
    move/from16 v24, v14

    move-object v14, v8

    move/from16 v8, v20

    .end local v8    # "p":Landroid/view/WindowManager$LayoutParams;
    .local v14, "p":Landroid/view/WindowManager$LayoutParams;
    .local v24, "gravity":I
    invoke-virtual/range {v0 .. v8}, Landroid/widget/PopupWindow;->findDropDownPosition(Landroid/view/View;Landroid/view/WindowManager$LayoutParams;IIIIIZ)Z

    move-result v6

    .line 2275
    .local v6, "aboveAnchor":Z
    invoke-virtual {v9, v6}, Landroid/widget/PopupWindow;->updateAboveAnchor(Z)V

    .line 2277
    iget v0, v14, Landroid/view/WindowManager$LayoutParams;->gravity:I

    if-ne v13, v0, :cond_9

    iget v0, v14, Landroid/view/WindowManager$LayoutParams;->x:I

    if-ne v10, v0, :cond_9

    iget v0, v14, Landroid/view/WindowManager$LayoutParams;->y:I

    if-ne v15, v0, :cond_9

    iget v0, v14, Landroid/view/WindowManager$LayoutParams;->width:I

    if-ne v12, v0, :cond_9

    iget v0, v14, Landroid/view/WindowManager$LayoutParams;->height:I

    if-eq v11, v0, :cond_8

    goto :goto_5

    :cond_8
    const/4 v5, 0x0

    goto :goto_6

    :cond_9
    :goto_5
    move/from16 v5, v16

    .line 2284
    .local v5, "paramsChanged":Z
    :goto_6
    if-gez v18, :cond_a

    move/from16 v3, v18

    goto :goto_7

    :cond_a
    iget v0, v14, Landroid/view/WindowManager$LayoutParams;->width:I

    move v3, v0

    .line 2285
    .local v3, "newWidth":I
    :goto_7
    if-gez v19, :cond_b

    move/from16 v4, v19

    goto :goto_8

    :cond_b
    iget v0, v14, Landroid/view/WindowManager$LayoutParams;->height:I

    move v4, v0

    .line 2286
    .local v4, "newHeight":I
    :goto_8
    iget v1, v14, Landroid/view/WindowManager$LayoutParams;->x:I

    iget v2, v14, Landroid/view/WindowManager$LayoutParams;->y:I

    move-object v0, v9

    invoke-virtual/range {v0 .. v5}, Landroid/widget/PopupWindow;->update(IIIIZ)V

    .line 2287
    return-void

    .line 2242
    .end local v3    # "newWidth":I
    .end local v4    # "newHeight":I
    .end local v5    # "paramsChanged":Z
    .end local v6    # "aboveAnchor":Z
    .end local v10    # "oldX":I
    .end local v11    # "oldHeight":I
    .end local v12    # "oldWidth":I
    .end local v13    # "oldGravity":I
    .end local v14    # "p":Landroid/view/WindowManager$LayoutParams;
    .end local v15    # "oldY":I
    .end local v17    # "needsUpdate":Z
    .end local v18    # "width":I
    .end local v19    # "height":I
    .end local v23    # "oldAnchor":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Landroid/view/View;>;"
    .end local v24    # "gravity":I
    .restart local p5    # "width":I
    .restart local p6    # "height":I
    :cond_c
    :goto_9
    return-void
.end method


# virtual methods
.method protected attachToAnchor(Landroid/view/View;III)V
    .locals 3
    .param p1, "anchor"    # Landroid/view/View;
    .param p2, "xoff"    # I
    .param p3, "yoff"    # I
    .param p4, "gravity"    # I

    .line 2321
    invoke-virtual {p0}, Landroid/widget/PopupWindow;->detachFromAnchor()V

    .line 2323
    invoke-virtual {p1}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    .line 2324
    .local v0, "vto":Landroid/view/ViewTreeObserver;
    if-eqz v0, :cond_0

    .line 2325
    iget-object v1, p0, Landroid/widget/PopupWindow;->mOnScrollChangedListener:Landroid/view/ViewTreeObserver$OnScrollChangedListener;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnScrollChangedListener(Landroid/view/ViewTreeObserver$OnScrollChangedListener;)V

    .line 2327
    :cond_0
    iget-object v1, p0, Landroid/widget/PopupWindow;->mOnAnchorDetachedListener:Landroid/view/View$OnAttachStateChangeListener;

    invoke-virtual {p1, v1}, Landroid/view/View;->addOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    .line 2329
    invoke-virtual {p1}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v1

    .line 2330
    .local v1, "anchorRoot":Landroid/view/View;
    iget-object v2, p0, Landroid/widget/PopupWindow;->mOnAnchorRootDetachedListener:Landroid/view/View$OnAttachStateChangeListener;

    invoke-virtual {v1, v2}, Landroid/view/View;->addOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    .line 2331
    iget-object v2, p0, Landroid/widget/PopupWindow;->mOnLayoutChangeListener:Landroid/view/View$OnLayoutChangeListener;

    invoke-virtual {v1, v2}, Landroid/view/View;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    .line 2333
    new-instance v2, Ljava/lang/ref/WeakReference;

    invoke-direct {v2, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v2, p0, Landroid/widget/PopupWindow;->mAnchor:Ljava/lang/ref/WeakReference;

    .line 2334
    new-instance v2, Ljava/lang/ref/WeakReference;

    invoke-direct {v2, v1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v2, p0, Landroid/widget/PopupWindow;->mAnchorRoot:Ljava/lang/ref/WeakReference;

    .line 2335
    invoke-virtual {v1}, Landroid/view/View;->isAttachedToWindow()Z

    move-result v2

    iput-boolean v2, p0, Landroid/widget/PopupWindow;->mIsAnchorRootAttached:Z

    .line 2336
    iget-object v2, p0, Landroid/widget/PopupWindow;->mAnchorRoot:Ljava/lang/ref/WeakReference;

    iput-object v2, p0, Landroid/widget/PopupWindow;->mParentRootView:Ljava/lang/ref/WeakReference;

    .line 2338
    iput p2, p0, Landroid/widget/PopupWindow;->mAnchorXoff:I

    .line 2339
    iput p3, p0, Landroid/widget/PopupWindow;->mAnchorYoff:I

    .line 2340
    iput p4, p0, Landroid/widget/PopupWindow;->mAnchoredGravity:I

    .line 2341
    return-void
.end method

.method protected final createPopupLayoutParams(Landroid/os/IBinder;)Landroid/view/WindowManager$LayoutParams;
    .locals 3
    .param p1, "token"    # Landroid/os/IBinder;

    .line 1468
    new-instance v0, Landroid/view/WindowManager$LayoutParams;

    invoke-direct {v0}, Landroid/view/WindowManager$LayoutParams;-><init>()V

    .line 1474
    .local v0, "p":Landroid/view/WindowManager$LayoutParams;
    invoke-direct {p0}, Landroid/widget/PopupWindow;->computeGravity()I

    move-result v1

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 1475
    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    invoke-direct {p0, v1}, Landroid/widget/PopupWindow;->computeFlags(I)I

    move-result v1

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 1476
    iget v1, p0, Landroid/widget/PopupWindow;->mWindowLayoutType:I

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    .line 1477
    iput-object p1, v0, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    .line 1478
    iget v1, p0, Landroid/widget/PopupWindow;->mSoftInputMode:I

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->softInputMode:I

    .line 1479
    invoke-direct {p0}, Landroid/widget/PopupWindow;->computeAnimationResource()I

    move-result v1

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    .line 1481
    iget-object v1, p0, Landroid/widget/PopupWindow;->mBackground:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_0

    .line 1482
    iget-object v1, p0, Landroid/widget/PopupWindow;->mBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getOpacity()I

    move-result v1

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->format:I

    goto :goto_0

    .line 1484
    :cond_0
    const/4 v1, -0x3

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->format:I

    .line 1487
    :goto_0
    iget v1, p0, Landroid/widget/PopupWindow;->mHeightMode:I

    if-gez v1, :cond_1

    .line 1488
    iget v1, p0, Landroid/widget/PopupWindow;->mHeightMode:I

    iput v1, p0, Landroid/widget/PopupWindow;->mLastHeight:I

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->height:I

    goto :goto_1

    .line 1490
    :cond_1
    iget v1, p0, Landroid/widget/PopupWindow;->mHeight:I

    iput v1, p0, Landroid/widget/PopupWindow;->mLastHeight:I

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 1493
    :goto_1
    iget v1, p0, Landroid/widget/PopupWindow;->mWidthMode:I

    if-gez v1, :cond_2

    .line 1494
    iget v1, p0, Landroid/widget/PopupWindow;->mWidthMode:I

    iput v1, p0, Landroid/widget/PopupWindow;->mLastWidth:I

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    goto :goto_2

    .line 1496
    :cond_2
    iget v1, p0, Landroid/widget/PopupWindow;->mWidth:I

    iput v1, p0, Landroid/widget/PopupWindow;->mLastWidth:I

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 1499
    :goto_2
    const v1, 0x18000

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    .line 1503
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "PopupWindow:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    .line 1505
    return-object v0
.end method

.method protected detachFromAnchor()V
    .locals 4

    .line 2301
    invoke-virtual {p0}, Landroid/widget/PopupWindow;->getAnchor()Landroid/view/View;

    move-result-object v0

    .line 2302
    .local v0, "anchor":Landroid/view/View;
    if-eqz v0, :cond_0

    .line 2303
    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v1

    .line 2304
    .local v1, "vto":Landroid/view/ViewTreeObserver;
    iget-object v2, p0, Landroid/widget/PopupWindow;->mOnScrollChangedListener:Landroid/view/ViewTreeObserver$OnScrollChangedListener;

    invoke-virtual {v1, v2}, Landroid/view/ViewTreeObserver;->removeOnScrollChangedListener(Landroid/view/ViewTreeObserver$OnScrollChangedListener;)V

    .line 2305
    iget-object v2, p0, Landroid/widget/PopupWindow;->mOnAnchorDetachedListener:Landroid/view/View$OnAttachStateChangeListener;

    invoke-virtual {v0, v2}, Landroid/view/View;->removeOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    .line 2308
    .end local v1    # "vto":Landroid/view/ViewTreeObserver;
    :cond_0
    iget-object v1, p0, Landroid/widget/PopupWindow;->mAnchorRoot:Ljava/lang/ref/WeakReference;

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    iget-object v1, p0, Landroid/widget/PopupWindow;->mAnchorRoot:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    goto :goto_0

    :cond_1
    move-object v1, v2

    .line 2309
    .local v1, "anchorRoot":Landroid/view/View;
    :goto_0
    if-eqz v1, :cond_2

    .line 2310
    iget-object v3, p0, Landroid/widget/PopupWindow;->mOnAnchorRootDetachedListener:Landroid/view/View$OnAttachStateChangeListener;

    invoke-virtual {v1, v3}, Landroid/view/View;->removeOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    .line 2311
    iget-object v3, p0, Landroid/widget/PopupWindow;->mOnLayoutChangeListener:Landroid/view/View$OnLayoutChangeListener;

    invoke-virtual {v1, v3}, Landroid/view/View;->removeOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    .line 2314
    :cond_2
    iput-object v2, p0, Landroid/widget/PopupWindow;->mAnchor:Ljava/lang/ref/WeakReference;

    .line 2315
    iput-object v2, p0, Landroid/widget/PopupWindow;->mAnchorRoot:Ljava/lang/ref/WeakReference;

    .line 2316
    const/4 v2, 0x0

    iput-boolean v2, p0, Landroid/widget/PopupWindow;->mIsAnchorRootAttached:Z

    .line 2317
    return-void
.end method

.method public dismiss()V
    .locals 9

    .line 1880
    invoke-virtual {p0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-virtual {p0}, Landroid/widget/PopupWindow;->isTransitioningToDismiss()Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_2

    .line 1884
    :cond_0
    iget-object v0, p0, Landroid/widget/PopupWindow;->mDecorView:Landroid/widget/PopupWindow$PopupDecorView;

    .line 1885
    .local v0, "decorView":Landroid/widget/PopupWindow$PopupDecorView;
    iget-object v1, p0, Landroid/widget/PopupWindow;->mContentView:Landroid/view/View;

    .line 1888
    .local v1, "contentView":Landroid/view/View;
    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    .line 1889
    .local v2, "contentParent":Landroid/view/ViewParent;
    instance-of v3, v2, Landroid/view/ViewGroup;

    const/4 v4, 0x0

    if-eqz v3, :cond_1

    .line 1890
    move-object v3, v2

    check-cast v3, Landroid/view/ViewGroup;

    .local v3, "contentHolder":Landroid/view/ViewGroup;
    goto :goto_0

    .line 1892
    .end local v3    # "contentHolder":Landroid/view/ViewGroup;
    :cond_1
    move-object v3, v4

    .line 1896
    .restart local v3    # "contentHolder":Landroid/view/ViewGroup;
    :goto_0
    invoke-virtual {v0}, Landroid/widget/PopupWindow$PopupDecorView;->cancelTransitions()V

    .line 1898
    const/4 v5, 0x0

    iput-boolean v5, p0, Landroid/widget/PopupWindow;->mIsShowing:Z

    .line 1899
    const/4 v5, 0x1

    iput-boolean v5, p0, Landroid/widget/PopupWindow;->mIsTransitioningToDismiss:Z

    .line 1906
    iget-object v5, p0, Landroid/widget/PopupWindow;->mExitTransition:Landroid/transition/Transition;

    .line 1907
    .local v5, "exitTransition":Landroid/transition/Transition;
    if-eqz v5, :cond_4

    invoke-virtual {v0}, Landroid/widget/PopupWindow$PopupDecorView;->isLaidOut()Z

    move-result v6

    if-eqz v6, :cond_4

    iget-boolean v6, p0, Landroid/widget/PopupWindow;->mIsAnchorRootAttached:Z

    if-nez v6, :cond_2

    iget-object v6, p0, Landroid/widget/PopupWindow;->mAnchorRoot:Ljava/lang/ref/WeakReference;

    if-nez v6, :cond_4

    .line 1910
    :cond_2
    invoke-virtual {v0}, Landroid/widget/PopupWindow$PopupDecorView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    check-cast v6, Landroid/view/WindowManager$LayoutParams;

    .line 1911
    .local v6, "p":Landroid/view/WindowManager$LayoutParams;
    iget v7, v6, Landroid/view/WindowManager$LayoutParams;->flags:I

    or-int/lit8 v7, v7, 0x10

    iput v7, v6, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 1912
    iget v7, v6, Landroid/view/WindowManager$LayoutParams;->flags:I

    or-int/lit8 v7, v7, 0x8

    iput v7, v6, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 1913
    iget v7, v6, Landroid/view/WindowManager$LayoutParams;->flags:I

    const v8, -0x20001

    and-int/2addr v7, v8

    iput v7, v6, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 1914
    iget-object v7, p0, Landroid/widget/PopupWindow;->mWindowManager:Landroid/view/WindowManager;

    invoke-interface {v7, v0, v6}, Landroid/view/WindowManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1916
    iget-object v7, p0, Landroid/widget/PopupWindow;->mAnchorRoot:Ljava/lang/ref/WeakReference;

    if-eqz v7, :cond_3

    iget-object v4, p0, Landroid/widget/PopupWindow;->mAnchorRoot:Ljava/lang/ref/WeakReference;

    invoke-virtual {v4}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/View;

    nop

    .line 1917
    .local v4, "anchorRoot":Landroid/view/View;
    :cond_3
    invoke-virtual {p0}, Landroid/widget/PopupWindow;->getTransitionEpicenter()Landroid/graphics/Rect;

    move-result-object v7

    .line 1922
    .local v7, "epicenter":Landroid/graphics/Rect;
    new-instance v8, Landroid/widget/PopupWindow$3;

    invoke-direct {v8, p0, v0, v3, v1}, Landroid/widget/PopupWindow$3;-><init>(Landroid/widget/PopupWindow;Landroid/widget/PopupWindow$PopupDecorView;Landroid/view/ViewGroup;Landroid/view/View;)V

    invoke-virtual {v0, v5, v4, v7, v8}, Landroid/widget/PopupWindow$PopupDecorView;->startExitTransition(Landroid/transition/Transition;Landroid/view/View;Landroid/graphics/Rect;Landroid/transition/Transition$TransitionListener;)V

    .line 1929
    .end local v4    # "anchorRoot":Landroid/view/View;
    .end local v6    # "p":Landroid/view/WindowManager$LayoutParams;
    .end local v7    # "epicenter":Landroid/graphics/Rect;
    goto :goto_1

    .line 1930
    :cond_4
    invoke-direct {p0, v0, v3, v1}, Landroid/widget/PopupWindow;->dismissImmediate(Landroid/view/View;Landroid/view/ViewGroup;Landroid/view/View;)V

    .line 1934
    :goto_1
    invoke-virtual {p0}, Landroid/widget/PopupWindow;->detachFromAnchor()V

    .line 1936
    iget-object v4, p0, Landroid/widget/PopupWindow;->mOnDismissListener:Landroid/widget/PopupWindow$OnDismissListener;

    if-eqz v4, :cond_5

    .line 1937
    iget-object v4, p0, Landroid/widget/PopupWindow;->mOnDismissListener:Landroid/widget/PopupWindow$OnDismissListener;

    invoke-interface {v4}, Landroid/widget/PopupWindow$OnDismissListener;->onDismiss()V

    .line 1939
    :cond_5
    return-void

    .line 1881
    .end local v0    # "decorView":Landroid/widget/PopupWindow$PopupDecorView;
    .end local v1    # "contentView":Landroid/view/View;
    .end local v2    # "contentParent":Landroid/view/ViewParent;
    .end local v3    # "contentHolder":Landroid/view/ViewGroup;
    .end local v5    # "exitTransition":Landroid/transition/Transition;
    :cond_6
    :goto_2
    return-void
.end method

.method protected findDropDownPosition(Landroid/view/View;Landroid/view/WindowManager$LayoutParams;IIIIIZ)Z
    .locals 34
    .param p1, "anchor"    # Landroid/view/View;
    .param p2, "outParams"    # Landroid/view/WindowManager$LayoutParams;
    .param p3, "xOffset"    # I
    .param p4, "yOffset"    # I
    .param p5, "width"    # I
    .param p6, "height"    # I
    .param p7, "gravity"    # I
    .param p8, "allowScroll"    # Z

    move-object/from16 v10, p0

    move-object/from16 v11, p1

    move-object/from16 v12, p2

    .line 1588
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getHeight()I

    move-result v13

    .line 1589
    .local v13, "anchorHeight":I
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getWidth()I

    move-result v14

    .line 1590
    .local v14, "anchorWidth":I
    iget-boolean v0, v10, Landroid/widget/PopupWindow;->mOverlapAnchor:Z

    if-eqz v0, :cond_0

    .line 1591
    sub-int v0, p4, v13

    .line 1595
    .end local p4    # "yOffset":I
    .local v0, "yOffset":I
    move v15, v0

    goto :goto_0

    .end local v0    # "yOffset":I
    .restart local p4    # "yOffset":I
    :cond_0
    move/from16 v15, p4

    .end local p4    # "yOffset":I
    .local v15, "yOffset":I
    :goto_0
    iget-object v9, v10, Landroid/widget/PopupWindow;->mTmpAppLocation:[I

    .line 1596
    .local v9, "appScreenLocation":[I
    invoke-direct/range {p0 .. p1}, Landroid/widget/PopupWindow;->getAppRootView(Landroid/view/View;)Landroid/view/View;

    move-result-object v8

    .line 1597
    .local v8, "appRootView":Landroid/view/View;
    invoke-virtual {v8, v9}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 1599
    iget-object v7, v10, Landroid/widget/PopupWindow;->mTmpScreenLocation:[I

    .line 1600
    .local v7, "screenLocation":[I
    invoke-virtual {v11, v7}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 1602
    iget-object v6, v10, Landroid/widget/PopupWindow;->mTmpDrawingLocation:[I

    .line 1603
    .local v6, "drawingLocation":[I
    const/16 v16, 0x0

    aget v0, v7, v16

    aget v1, v9, v16

    sub-int/2addr v0, v1

    aput v0, v6, v16

    .line 1604
    const/4 v5, 0x1

    aget v0, v7, v5

    aget v1, v9, v5

    sub-int/2addr v0, v1

    aput v0, v6, v5

    .line 1605
    aget v0, v6, v16

    add-int v0, v0, p3

    iput v0, v12, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 1606
    aget v0, v6, v5

    add-int/2addr v0, v13

    add-int/2addr v0, v15

    iput v0, v12, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 1608
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    move-object v4, v0

    .line 1609
    .local v4, "displayFrame":Landroid/graphics/Rect;
    invoke-virtual {v8, v4}, Landroid/view/View;->getWindowVisibleDisplayFrame(Landroid/graphics/Rect;)V

    .line 1610
    const/4 v0, -0x1

    move/from16 v1, p5

    if-ne v1, v0, :cond_1

    .line 1611
    iget v2, v4, Landroid/graphics/Rect;->right:I

    iget v3, v4, Landroid/graphics/Rect;->left:I

    sub-int v1, v2, v3

    .line 1613
    .end local p5    # "width":I
    .local v3, "width":I
    :cond_1
    move v3, v1

    move/from16 v1, p6

    if-ne v1, v0, :cond_2

    .line 1614
    iget v0, v4, Landroid/graphics/Rect;->bottom:I

    iget v2, v4, Landroid/graphics/Rect;->top:I

    sub-int/2addr v0, v2

    .line 1618
    .end local p6    # "height":I
    .local v0, "height":I
    move v2, v0

    goto :goto_1

    .end local v0    # "height":I
    .restart local p6    # "height":I
    :cond_2
    move v2, v1

    .end local p6    # "height":I
    .local v2, "height":I
    :goto_1
    invoke-direct/range {p0 .. p0}, Landroid/widget/PopupWindow;->computeGravity()I

    move-result v0

    iput v0, v12, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 1619
    iput v3, v12, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 1620
    iput v2, v12, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 1624
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getLayoutDirection()I

    move-result v0

    move/from16 v1, p7

    invoke-static {v1, v0}, Landroid/view/Gravity;->getAbsoluteGravity(II)I

    move-result v0

    and-int/lit8 v0, v0, 0x7

    .line 1626
    .local v0, "hgrav":I
    move-object/from16 v17, v9

    const/4 v9, 0x5

    .end local v9    # "appScreenLocation":[I
    .local v17, "appScreenLocation":[I
    if-ne v0, v9, :cond_3

    .line 1627
    iget v9, v12, Landroid/view/WindowManager$LayoutParams;->x:I

    sub-int v19, v3, v14

    sub-int v9, v9, v19

    iput v9, v12, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 1631
    :cond_3
    aget v9, v6, v5

    aget v19, v7, v5

    move-object/from16 v20, v7

    iget v7, v4, Landroid/graphics/Rect;->top:I

    .end local v7    # "screenLocation":[I
    .local v20, "screenLocation":[I
    move-object/from16 v21, v8

    iget v8, v4, Landroid/graphics/Rect;->bottom:I

    .end local v8    # "appRootView":Landroid/view/View;
    .local v21, "appRootView":Landroid/view/View;
    const/16 v22, 0x0

    move/from16 v23, v0

    move-object v0, v10

    .end local v0    # "hgrav":I
    .local v23, "hgrav":I
    move-object v1, v12

    move/from16 v24, v2

    move v2, v15

    .end local v2    # "height":I
    .local v24, "height":I
    move/from16 v25, v3

    move/from16 v3, v24

    .end local v3    # "width":I
    .local v25, "width":I
    move-object v11, v4

    move v4, v13

    .end local v4    # "displayFrame":Landroid/graphics/Rect;
    .local v11, "displayFrame":Landroid/graphics/Rect;
    move v5, v9

    move-object/from16 v28, v6

    move/from16 v6, v19

    .end local v6    # "drawingLocation":[I
    .local v28, "drawingLocation":[I
    move-object/from16 v9, v20

    .end local v20    # "screenLocation":[I
    .local v9, "screenLocation":[I
    move-object/from16 v19, v21

    .end local v21    # "appRootView":Landroid/view/View;
    .local v19, "appRootView":Landroid/view/View;
    move/from16 v29, v13

    move-object v13, v9

    move/from16 v9, v22

    .end local v9    # "screenLocation":[I
    .local v13, "screenLocation":[I
    .local v29, "anchorHeight":I
    invoke-direct/range {v0 .. v9}, Landroid/widget/PopupWindow;->tryFitVertical(Landroid/view/WindowManager$LayoutParams;IIIIIIIZ)Z

    move-result v18

    .line 1636
    .local v18, "fitsVertical":Z
    aget v5, v28, v16

    aget v6, v13, v16

    iget v7, v11, Landroid/graphics/Rect;->left:I

    iget v8, v11, Landroid/graphics/Rect;->right:I

    const/4 v9, 0x0

    move/from16 v2, p3

    move/from16 v3, v25

    move v4, v14

    invoke-direct/range {v0 .. v9}, Landroid/widget/PopupWindow;->tryFitHorizontal(Landroid/view/WindowManager$LayoutParams;IIIIIIIZ)Z

    move-result v20

    .line 1641
    .local v20, "fitsHorizontal":Z
    if-eqz v18, :cond_5

    if-nez v20, :cond_4

    goto :goto_2

    .line 1668
    :cond_4
    move/from16 v31, v23

    const/16 v32, 0x1

    goto/16 :goto_4

    .line 1642
    :cond_5
    :goto_2
    move-object v9, v11

    move-object/from16 v11, p1

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getScrollX()I

    move-result v8

    .line 1643
    .end local v11    # "displayFrame":Landroid/graphics/Rect;
    .local v8, "scrollX":I
    .local v9, "displayFrame":Landroid/graphics/Rect;
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getScrollY()I

    move-result v7

    .line 1644
    .local v7, "scrollY":I
    new-instance v0, Landroid/graphics/Rect;

    add-int v3, v8, v25

    add-int v3, v3, p3

    add-int v2, v7, v24

    add-int v2, v2, v29

    add-int/2addr v2, v15

    invoke-direct {v0, v8, v7, v3, v2}, Landroid/graphics/Rect;-><init>(IIII)V

    move-object v6, v0

    .line 1646
    .local v6, "r":Landroid/graphics/Rect;
    if-eqz p8, :cond_7

    const/4 v5, 0x1

    invoke-virtual {v11, v6, v5}, Landroid/view/View;->requestRectangleOnScreen(Landroid/graphics/Rect;Z)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 1648
    invoke-virtual {v11, v13}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 1649
    aget v0, v13, v16

    aget v1, v17, v16

    sub-int/2addr v0, v1

    aput v0, v28, v16

    .line 1650
    aget v0, v13, v5

    aget v1, v17, v5

    sub-int/2addr v0, v1

    aput v0, v28, v5

    .line 1651
    aget v0, v28, v16

    add-int v0, v0, p3

    iput v0, v12, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 1652
    aget v0, v28, v5

    add-int v0, v0, v29

    add-int/2addr v0, v15

    iput v0, v12, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 1655
    move/from16 v4, v23

    const/4 v0, 0x5

    if-ne v4, v0, :cond_8

    .line 1656
    .end local v23    # "hgrav":I
    .local v4, "hgrav":I
    iget v0, v12, Landroid/view/WindowManager$LayoutParams;->x:I

    sub-int v3, v25, v14

    sub-int/2addr v0, v3

    iput v0, v12, Landroid/view/WindowManager$LayoutParams;->x:I

    goto :goto_3

    .line 1661
    .end local v4    # "hgrav":I
    .restart local v23    # "hgrav":I
    :cond_6
    move/from16 v4, v23

    goto :goto_3

    :cond_7
    move/from16 v4, v23

    const/4 v5, 0x1

    .end local v23    # "hgrav":I
    .restart local v4    # "hgrav":I
    :cond_8
    :goto_3
    aget v22, v28, v5

    aget v23, v13, v5

    iget v3, v9, Landroid/graphics/Rect;->top:I

    iget v2, v9, Landroid/graphics/Rect;->bottom:I

    iget-boolean v1, v10, Landroid/widget/PopupWindow;->mClipToScreen:Z

    move-object v0, v10

    move/from16 v26, v1

    move-object v1, v12

    move/from16 v27, v2

    move v2, v15

    move/from16 v30, v3

    move/from16 v3, v24

    move/from16 v31, v4

    move/from16 v4, v29

    .end local v4    # "hgrav":I
    .local v31, "hgrav":I
    move/from16 v32, v5

    move/from16 v5, v22

    move-object/from16 v22, v6

    move/from16 v6, v23

    .end local v6    # "r":Landroid/graphics/Rect;
    .local v22, "r":Landroid/graphics/Rect;
    move/from16 v23, v7

    move/from16 v7, v30

    .end local v7    # "scrollY":I
    .local v23, "scrollY":I
    move/from16 v30, v8

    move/from16 v8, v27

    .end local v8    # "scrollX":I
    .local v30, "scrollX":I
    move-object v11, v9

    move/from16 v9, v26

    .end local v9    # "displayFrame":Landroid/graphics/Rect;
    .restart local v11    # "displayFrame":Landroid/graphics/Rect;
    invoke-direct/range {v0 .. v9}, Landroid/widget/PopupWindow;->tryFitVertical(Landroid/view/WindowManager$LayoutParams;IIIIIIIZ)Z

    .line 1663
    aget v5, v28, v16

    aget v6, v13, v16

    iget v7, v11, Landroid/graphics/Rect;->left:I

    iget v8, v11, Landroid/graphics/Rect;->right:I

    iget-boolean v9, v10, Landroid/widget/PopupWindow;->mClipToScreen:Z

    move/from16 v2, p3

    move/from16 v3, v25

    move v4, v14

    invoke-direct/range {v0 .. v9}, Landroid/widget/PopupWindow;->tryFitHorizontal(Landroid/view/WindowManager$LayoutParams;IIIIIIIZ)Z

    .line 1668
    .end local v22    # "r":Landroid/graphics/Rect;
    .end local v23    # "scrollY":I
    .end local v30    # "scrollX":I
    :goto_4
    iget v0, v12, Landroid/view/WindowManager$LayoutParams;->y:I

    aget v1, v28, v32

    if-ge v0, v1, :cond_9

    goto :goto_5

    :cond_9
    move/from16 v32, v16

    :goto_5
    return v32
.end method

.method protected final getAllowScrollingAnchorParent()Z
    .locals 1

    .line 864
    iget-boolean v0, p0, Landroid/widget/PopupWindow;->mAllowScrollingAnchorParent:Z

    return v0
.end method

.method protected getAnchor()Landroid/view/View;
    .locals 1

    .line 2345
    iget-object v0, p0, Landroid/widget/PopupWindow;->mAnchor:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/PopupWindow;->mAnchor:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public getAnimationStyle()I
    .locals 1

    .line 574
    iget v0, p0, Landroid/widget/PopupWindow;->mAnimationStyle:I

    return v0
.end method

.method public getBackground()Landroid/graphics/drawable/Drawable;
    .locals 1

    .line 496
    iget-object v0, p0, Landroid/widget/PopupWindow;->mBackground:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public getContentView()Landroid/view/View;
    .locals 1

    .line 617
    iget-object v0, p0, Landroid/widget/PopupWindow;->mContentView:Landroid/view/View;

    return-object v0
.end method

.method protected getDecorViewLayoutParams()Landroid/view/WindowManager$LayoutParams;
    .locals 1

    .line 2201
    iget-object v0, p0, Landroid/widget/PopupWindow;->mDecorView:Landroid/widget/PopupWindow$PopupDecorView;

    invoke-virtual {v0}, Landroid/widget/PopupWindow$PopupDecorView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager$LayoutParams;

    return-object v0
.end method

.method public getElevation()F
    .locals 1

    .line 554
    iget v0, p0, Landroid/widget/PopupWindow;->mElevation:F

    return v0
.end method

.method public getEnterTransition()Landroid/transition/Transition;
    .locals 1

    .line 427
    iget-object v0, p0, Landroid/widget/PopupWindow;->mEnterTransition:Landroid/transition/Transition;

    return-object v0
.end method

.method public getExitTransition()Landroid/transition/Transition;
    .locals 1

    .line 451
    iget-object v0, p0, Landroid/widget/PopupWindow;->mExitTransition:Landroid/transition/Transition;

    return-object v0
.end method

.method public getHeight()I
    .locals 1

    .line 1044
    iget v0, p0, Landroid/widget/PopupWindow;->mHeight:I

    return v0
.end method

.method public getInputMethodMode()I
    .locals 1

    .line 705
    iget v0, p0, Landroid/widget/PopupWindow;->mInputMethodMode:I

    return v0
.end method

.method public getMaxAvailableHeight(Landroid/view/View;)I
    .locals 1
    .param p1, "anchor"    # Landroid/view/View;

    .line 1795
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/widget/PopupWindow;->getMaxAvailableHeight(Landroid/view/View;I)I

    move-result v0

    return v0
.end method

.method public getMaxAvailableHeight(Landroid/view/View;I)I
    .locals 1
    .param p1, "anchor"    # Landroid/view/View;
    .param p2, "yOffset"    # I

    .line 1810
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Landroid/widget/PopupWindow;->getMaxAvailableHeight(Landroid/view/View;IZ)I

    move-result v0

    return v0
.end method

.method public getMaxAvailableHeight(Landroid/view/View;IZ)I
    .locals 10
    .param p1, "anchor"    # Landroid/view/View;
    .param p2, "yOffset"    # I
    .param p3, "ignoreBottomDecorations"    # Z

    .line 1830
    const/4 v0, 0x0

    .line 1831
    .local v0, "displayFrame":Landroid/graphics/Rect;
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    .line 1833
    .local v1, "visibleDisplayFrame":Landroid/graphics/Rect;
    invoke-direct {p0, p1}, Landroid/widget/PopupWindow;->getAppRootView(Landroid/view/View;)Landroid/view/View;

    move-result-object v2

    .line 1834
    .local v2, "appView":Landroid/view/View;
    invoke-virtual {v2, v1}, Landroid/view/View;->getWindowVisibleDisplayFrame(Landroid/graphics/Rect;)V

    .line 1835
    if-eqz p3, :cond_0

    .line 1840
    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    move-object v0, v3

    .line 1841
    invoke-virtual {p1, v0}, Landroid/view/View;->getWindowDisplayFrame(Landroid/graphics/Rect;)V

    .line 1842
    iget v3, v1, Landroid/graphics/Rect;->top:I

    iput v3, v0, Landroid/graphics/Rect;->top:I

    .line 1843
    iget v3, v1, Landroid/graphics/Rect;->right:I

    iput v3, v0, Landroid/graphics/Rect;->right:I

    .line 1844
    iget v3, v1, Landroid/graphics/Rect;->left:I

    iput v3, v0, Landroid/graphics/Rect;->left:I

    goto :goto_0

    .line 1846
    :cond_0
    move-object v0, v1

    .line 1849
    :goto_0
    iget-object v3, p0, Landroid/widget/PopupWindow;->mTmpDrawingLocation:[I

    .line 1850
    .local v3, "anchorPos":[I
    invoke-virtual {p1, v3}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 1852
    iget v4, v0, Landroid/graphics/Rect;->bottom:I

    .line 1855
    .local v4, "bottomEdge":I
    iget-boolean v5, p0, Landroid/widget/PopupWindow;->mOverlapAnchor:Z

    const/4 v6, 0x1

    if-eqz v5, :cond_1

    .line 1856
    aget v5, v3, v6

    sub-int v5, v4, v5

    sub-int/2addr v5, p2

    .local v5, "distanceToBottom":I
    goto :goto_1

    .line 1858
    .end local v5    # "distanceToBottom":I
    :cond_1
    aget v5, v3, v6

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v7

    add-int/2addr v5, v7

    sub-int v5, v4, v5

    sub-int/2addr v5, p2

    .line 1860
    .restart local v5    # "distanceToBottom":I
    :goto_1
    aget v6, v3, v6

    iget v7, v0, Landroid/graphics/Rect;->top:I

    sub-int/2addr v6, v7

    add-int/2addr v6, p2

    .line 1863
    .local v6, "distanceToTop":I
    invoke-static {v5, v6}, Ljava/lang/Math;->max(II)I

    move-result v7

    .line 1864
    .local v7, "returnedHeight":I
    iget-object v8, p0, Landroid/widget/PopupWindow;->mBackground:Landroid/graphics/drawable/Drawable;

    if-eqz v8, :cond_2

    .line 1865
    iget-object v8, p0, Landroid/widget/PopupWindow;->mBackground:Landroid/graphics/drawable/Drawable;

    iget-object v9, p0, Landroid/widget/PopupWindow;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v8, v9}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    .line 1866
    iget-object v8, p0, Landroid/widget/PopupWindow;->mTempRect:Landroid/graphics/Rect;

    iget v8, v8, Landroid/graphics/Rect;->top:I

    iget-object v9, p0, Landroid/widget/PopupWindow;->mTempRect:Landroid/graphics/Rect;

    iget v9, v9, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v8, v9

    sub-int/2addr v7, v8

    .line 1869
    :cond_2
    return v7
.end method

.method protected final getOnDismissListener()Landroid/widget/PopupWindow$OnDismissListener;
    .locals 1

    .line 2012
    iget-object v0, p0, Landroid/widget/PopupWindow;->mOnDismissListener:Landroid/widget/PopupWindow$OnDismissListener;

    return-object v0
.end method

.method public getOverlapAnchor()Z
    .locals 1

    .line 1122
    iget-boolean v0, p0, Landroid/widget/PopupWindow;->mOverlapAnchor:Z

    return v0
.end method

.method public getSoftInputMode()I
    .locals 1

    .line 747
    iget v0, p0, Landroid/widget/PopupWindow;->mSoftInputMode:I

    return v0
.end method

.method protected final getTransitionEpicenter()Landroid/graphics/Rect;
    .locals 8

    .line 1954
    iget-object v0, p0, Landroid/widget/PopupWindow;->mAnchor:Ljava/lang/ref/WeakReference;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/PopupWindow;->mAnchor:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    goto :goto_0

    :cond_0
    move-object v0, v1

    .line 1955
    .local v0, "anchor":Landroid/view/View;
    :goto_0
    iget-object v2, p0, Landroid/widget/PopupWindow;->mDecorView:Landroid/widget/PopupWindow$PopupDecorView;

    .line 1956
    .local v2, "decor":Landroid/view/View;
    if-eqz v0, :cond_3

    if-nez v2, :cond_1

    goto :goto_1

    .line 1960
    :cond_1
    invoke-virtual {v0}, Landroid/view/View;->getLocationOnScreen()[I

    move-result-object v1

    .line 1961
    .local v1, "anchorLocation":[I
    iget-object v3, p0, Landroid/widget/PopupWindow;->mDecorView:Landroid/widget/PopupWindow$PopupDecorView;

    invoke-virtual {v3}, Landroid/widget/PopupWindow$PopupDecorView;->getLocationOnScreen()[I

    move-result-object v3

    .line 1964
    .local v3, "popupLocation":[I
    new-instance v4, Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v5

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v6

    const/4 v7, 0x0

    invoke-direct {v4, v7, v7, v5, v6}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 1965
    .local v4, "bounds":Landroid/graphics/Rect;
    aget v5, v1, v7

    aget v6, v3, v7

    sub-int/2addr v5, v6

    const/4 v6, 0x1

    aget v7, v1, v6

    aget v6, v3, v6

    sub-int/2addr v7, v6

    invoke-virtual {v4, v5, v7}, Landroid/graphics/Rect;->offset(II)V

    .line 1968
    iget-object v5, p0, Landroid/widget/PopupWindow;->mEpicenterBounds:Landroid/graphics/Rect;

    if-eqz v5, :cond_2

    .line 1969
    iget v5, v4, Landroid/graphics/Rect;->left:I

    .line 1970
    .local v5, "offsetX":I
    iget v6, v4, Landroid/graphics/Rect;->top:I

    .line 1971
    .local v6, "offsetY":I
    iget-object v7, p0, Landroid/widget/PopupWindow;->mEpicenterBounds:Landroid/graphics/Rect;

    invoke-virtual {v4, v7}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 1972
    invoke-virtual {v4, v5, v6}, Landroid/graphics/Rect;->offset(II)V

    .line 1975
    .end local v5    # "offsetX":I
    .end local v6    # "offsetY":I
    :cond_2
    return-object v4

    .line 1957
    .end local v1    # "anchorLocation":[I
    .end local v3    # "popupLocation":[I
    .end local v4    # "bounds":Landroid/graphics/Rect;
    :cond_3
    :goto_1
    return-object v1
.end method

.method public getWidth()I
    .locals 1

    .line 1076
    iget v0, p0, Landroid/widget/PopupWindow;->mWidth:I

    return v0
.end method

.method public getWindowLayoutType()I
    .locals 1

    .line 991
    iget v0, p0, Landroid/widget/PopupWindow;->mWindowLayoutType:I

    return v0
.end method

.method protected hasContentView()Z
    .locals 1

    .line 2191
    iget-object v0, p0, Landroid/widget/PopupWindow;->mContentView:Landroid/view/View;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method protected hasDecorView()Z
    .locals 1

    .line 2196
    iget-object v0, p0, Landroid/widget/PopupWindow;->mDecorView:Landroid/widget/PopupWindow$PopupDecorView;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isAboveAnchor()Z
    .locals 1

    .line 1321
    iget-boolean v0, p0, Landroid/widget/PopupWindow;->mAboveAnchor:Z

    return v0
.end method

.method public isAttachedInDecor()Z
    .locals 1

    .line 931
    iget-boolean v0, p0, Landroid/widget/PopupWindow;->mAttachedInDecor:Z

    return v0
.end method

.method public isClippingEnabled()Z
    .locals 1

    .line 821
    iget-boolean v0, p0, Landroid/widget/PopupWindow;->mClippingEnabled:Z

    return v0
.end method

.method public isFocusable()Z
    .locals 1

    .line 676
    iget-boolean v0, p0, Landroid/widget/PopupWindow;->mFocusable:Z

    return v0
.end method

.method public isLayoutInScreenEnabled()Z
    .locals 1

    .line 906
    iget-boolean v0, p0, Landroid/widget/PopupWindow;->mLayoutInScreen:Z

    return v0
.end method

.method protected final isLayoutInsetDecor()Z
    .locals 1

    .line 969
    iget-boolean v0, p0, Landroid/widget/PopupWindow;->mLayoutInsetDecor:Z

    return v0
.end method

.method public isOutsideTouchable()Z
    .locals 1

    .line 789
    iget-boolean v0, p0, Landroid/widget/PopupWindow;->mOutsideTouchable:Z

    return v0
.end method

.method public isShowing()Z
    .locals 1

    .line 1131
    iget-boolean v0, p0, Landroid/widget/PopupWindow;->mIsShowing:Z

    return v0
.end method

.method public isSplitTouchEnabled()Z
    .locals 4

    .line 875
    iget v0, p0, Landroid/widget/PopupWindow;->mSplitTouchEnabled:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-gez v0, :cond_1

    iget-object v0, p0, Landroid/widget/PopupWindow;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_1

    .line 876
    iget-object v0, p0, Landroid/widget/PopupWindow;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const/16 v3, 0xb

    if-lt v0, v3, :cond_0

    move v1, v2

    nop

    :cond_0
    return v1

    .line 878
    :cond_1
    iget v0, p0, Landroid/widget/PopupWindow;->mSplitTouchEnabled:I

    if-ne v0, v2, :cond_2

    move v1, v2

    nop

    :cond_2
    return v1
.end method

.method public isTouchable()Z
    .locals 1

    .line 758
    iget-boolean v0, p0, Landroid/widget/PopupWindow;->mTouchable:Z

    return v0
.end method

.method protected final isTransitioningToDismiss()Z
    .locals 1

    .line 1151
    iget-boolean v0, p0, Landroid/widget/PopupWindow;->mIsTransitioningToDismiss:Z

    return v0
.end method

.method setAllowScrollingAnchorParent(Z)V
    .locals 0
    .param p1, "enabled"    # Z

    .line 859
    iput-boolean p1, p0, Landroid/widget/PopupWindow;->mAllowScrollingAnchorParent:Z

    .line 860
    return-void
.end method

.method public setAnimationStyle(I)V
    .locals 0
    .param p1, "animationStyle"    # I

    .line 606
    iput p1, p0, Landroid/widget/PopupWindow;->mAnimationStyle:I

    .line 607
    return-void
.end method

.method public setAttachedInDecor(Z)V
    .locals 1
    .param p1, "enabled"    # Z

    .line 947
    iput-boolean p1, p0, Landroid/widget/PopupWindow;->mAttachedInDecor:Z

    .line 948
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/widget/PopupWindow;->mAttachedInDecorSet:Z

    .line 949
    return-void
.end method

.method public setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 5
    .param p1, "background"    # Landroid/graphics/drawable/Drawable;

    .line 508
    iput-object p1, p0, Landroid/widget/PopupWindow;->mBackground:Landroid/graphics/drawable/Drawable;

    .line 519
    iget-object v0, p0, Landroid/widget/PopupWindow;->mBackground:Landroid/graphics/drawable/Drawable;

    instance-of v0, v0, Landroid/graphics/drawable/StateListDrawable;

    if-eqz v0, :cond_3

    .line 520
    iget-object v0, p0, Landroid/widget/PopupWindow;->mBackground:Landroid/graphics/drawable/Drawable;

    check-cast v0, Landroid/graphics/drawable/StateListDrawable;

    .line 523
    .local v0, "stateList":Landroid/graphics/drawable/StateListDrawable;
    sget-object v1, Landroid/widget/PopupWindow;->ABOVE_ANCHOR_STATE_SET:[I

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/StateListDrawable;->getStateDrawableIndex([I)I

    move-result v1

    .line 527
    .local v1, "aboveAnchorStateIndex":I
    invoke-virtual {v0}, Landroid/graphics/drawable/StateListDrawable;->getStateCount()I

    move-result v2

    .line 528
    .local v2, "count":I
    const/4 v3, -0x1

    .line 529
    .local v3, "belowAnchorStateIndex":I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    if-ge v4, v2, :cond_1

    .line 530
    if-eq v4, v1, :cond_0

    .line 531
    move v3, v4

    .line 532
    goto :goto_1

    .line 529
    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 538
    .end local v4    # "i":I
    :cond_1
    :goto_1
    const/4 v4, -0x1

    if-eq v1, v4, :cond_2

    if-eq v3, v4, :cond_2

    .line 539
    invoke-virtual {v0, v1}, Landroid/graphics/drawable/StateListDrawable;->getStateDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    iput-object v4, p0, Landroid/widget/PopupWindow;->mAboveAnchorBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    .line 540
    invoke-virtual {v0, v3}, Landroid/graphics/drawable/StateListDrawable;->getStateDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    iput-object v4, p0, Landroid/widget/PopupWindow;->mBelowAnchorBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    goto :goto_2

    .line 542
    :cond_2
    const/4 v4, 0x0

    iput-object v4, p0, Landroid/widget/PopupWindow;->mBelowAnchorBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    .line 543
    iput-object v4, p0, Landroid/widget/PopupWindow;->mAboveAnchorBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    .line 546
    .end local v0    # "stateList":Landroid/graphics/drawable/StateListDrawable;
    .end local v1    # "aboveAnchorStateIndex":I
    .end local v2    # "count":I
    .end local v3    # "belowAnchorStateIndex":I
    :cond_3
    :goto_2
    return-void
.end method

.method public setClipToScreenEnabled(Z)V
    .locals 0
    .param p1, "enabled"    # Z

    .line 849
    iput-boolean p1, p0, Landroid/widget/PopupWindow;->mClipToScreen:Z

    .line 850
    return-void
.end method

.method public setClippingEnabled(Z)V
    .locals 0
    .param p1, "enabled"    # Z

    .line 839
    iput-boolean p1, p0, Landroid/widget/PopupWindow;->mClippingEnabled:Z

    .line 840
    return-void
.end method

.method public setContentView(Landroid/view/View;)V
    .locals 2
    .param p1, "contentView"    # Landroid/view/View;

    .line 632
    invoke-virtual {p0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 633
    return-void

    .line 636
    :cond_0
    iput-object p1, p0, Landroid/widget/PopupWindow;->mContentView:Landroid/view/View;

    .line 638
    iget-object v0, p0, Landroid/widget/PopupWindow;->mContext:Landroid/content/Context;

    if-nez v0, :cond_1

    iget-object v0, p0, Landroid/widget/PopupWindow;->mContentView:Landroid/view/View;

    if-eqz v0, :cond_1

    .line 639
    iget-object v0, p0, Landroid/widget/PopupWindow;->mContentView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/PopupWindow;->mContext:Landroid/content/Context;

    .line 642
    :cond_1
    iget-object v0, p0, Landroid/widget/PopupWindow;->mWindowManager:Landroid/view/WindowManager;

    if-nez v0, :cond_2

    iget-object v0, p0, Landroid/widget/PopupWindow;->mContentView:Landroid/view/View;

    if-eqz v0, :cond_2

    .line 643
    iget-object v0, p0, Landroid/widget/PopupWindow;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "window"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    iput-object v0, p0, Landroid/widget/PopupWindow;->mWindowManager:Landroid/view/WindowManager;

    .line 650
    :cond_2
    iget-object v0, p0, Landroid/widget/PopupWindow;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_4

    iget-boolean v0, p0, Landroid/widget/PopupWindow;->mAttachedInDecorSet:Z

    if-nez v0, :cond_4

    .line 654
    iget-object v0, p0, Landroid/widget/PopupWindow;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const/16 v1, 0x16

    if-lt v0, v1, :cond_3

    const/4 v0, 0x1

    goto :goto_0

    :cond_3
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0, v0}, Landroid/widget/PopupWindow;->setAttachedInDecor(Z)V

    .line 658
    :cond_4
    return-void
.end method

.method protected final setDropDown(Z)V
    .locals 0
    .param p1, "isDropDown"    # Z

    .line 1141
    iput-boolean p1, p0, Landroid/widget/PopupWindow;->mIsDropdown:Z

    .line 1142
    return-void
.end method

.method public setElevation(F)V
    .locals 0
    .param p1, "elevation"    # F

    .line 565
    iput p1, p0, Landroid/widget/PopupWindow;->mElevation:F

    .line 566
    return-void
.end method

.method public setEnterTransition(Landroid/transition/Transition;)V
    .locals 0
    .param p1, "enterTransition"    # Landroid/transition/Transition;

    .line 415
    iput-object p1, p0, Landroid/widget/PopupWindow;->mEnterTransition:Landroid/transition/Transition;

    .line 416
    return-void
.end method

.method public setEpicenterBounds(Landroid/graphics/Rect;)V
    .locals 0
    .param p1, "bounds"    # Landroid/graphics/Rect;

    .line 470
    iput-object p1, p0, Landroid/widget/PopupWindow;->mEpicenterBounds:Landroid/graphics/Rect;

    .line 471
    return-void
.end method

.method public setExitTransition(Landroid/transition/Transition;)V
    .locals 0
    .param p1, "exitTransition"    # Landroid/transition/Transition;

    .line 438
    iput-object p1, p0, Landroid/widget/PopupWindow;->mExitTransition:Landroid/transition/Transition;

    .line 439
    return-void
.end method

.method public setFocusable(Z)V
    .locals 0
    .param p1, "focusable"    # Z

    .line 696
    iput-boolean p1, p0, Landroid/widget/PopupWindow;->mFocusable:Z

    .line 697
    return-void
.end method

.method public setHeight(I)V
    .locals 0
    .param p1, "height"    # I

    .line 1062
    iput p1, p0, Landroid/widget/PopupWindow;->mHeight:I

    .line 1063
    return-void
.end method

.method public setIgnoreCheekPress()V
    .locals 1

    .line 589
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/widget/PopupWindow;->mIgnoreCheekPress:Z

    .line 590
    return-void
.end method

.method public setInputMethodMode(I)V
    .locals 0
    .param p1, "mode"    # I

    .line 722
    iput p1, p0, Landroid/widget/PopupWindow;->mInputMethodMode:I

    .line 723
    return-void
.end method

.method public setLayoutInScreenEnabled(Z)V
    .locals 0
    .param p1, "enabled"    # Z

    .line 918
    iput-boolean p1, p0, Landroid/widget/PopupWindow;->mLayoutInScreen:Z

    .line 919
    return-void
.end method

.method public setLayoutInsetDecor(Z)V
    .locals 0
    .param p1, "enabled"    # Z

    .line 964
    iput-boolean p1, p0, Landroid/widget/PopupWindow;->mLayoutInsetDecor:Z

    .line 965
    return-void
.end method

.method public setOnDismissListener(Landroid/widget/PopupWindow$OnDismissListener;)V
    .locals 0
    .param p1, "onDismissListener"    # Landroid/widget/PopupWindow$OnDismissListener;

    .line 2007
    iput-object p1, p0, Landroid/widget/PopupWindow;->mOnDismissListener:Landroid/widget/PopupWindow$OnDismissListener;

    .line 2008
    return-void
.end method

.method public setOutsideTouchable(Z)V
    .locals 0
    .param p1, "touchable"    # Z

    .line 810
    iput-boolean p1, p0, Landroid/widget/PopupWindow;->mOutsideTouchable:Z

    .line 811
    return-void
.end method

.method public setOverlapAnchor(Z)V
    .locals 0
    .param p1, "overlapAnchor"    # Z

    .line 1110
    iput-boolean p1, p0, Landroid/widget/PopupWindow;->mOverlapAnchor:Z

    .line 1111
    return-void
.end method

.method protected final setShowing(Z)V
    .locals 0
    .param p1, "isShowing"    # Z

    .line 1136
    iput-boolean p1, p0, Landroid/widget/PopupWindow;->mIsShowing:Z

    .line 1137
    return-void
.end method

.method public setSoftInputMode(I)V
    .locals 0
    .param p1, "mode"    # I

    .line 736
    iput p1, p0, Landroid/widget/PopupWindow;->mSoftInputMode:I

    .line 737
    return-void
.end method

.method public setSplitTouchEnabled(Z)V
    .locals 0
    .param p1, "enabled"    # Z

    .line 895
    iput p1, p0, Landroid/widget/PopupWindow;->mSplitTouchEnabled:I

    .line 896
    return-void
.end method

.method public setTouchInterceptor(Landroid/view/View$OnTouchListener;)V
    .locals 0
    .param p1, "l"    # Landroid/view/View$OnTouchListener;

    .line 665
    iput-object p1, p0, Landroid/widget/PopupWindow;->mTouchInterceptor:Landroid/view/View$OnTouchListener;

    .line 666
    return-void
.end method

.method public setTouchModal(Z)V
    .locals 1
    .param p1, "touchModal"    # Z

    .line 1000
    xor-int/lit8 v0, p1, 0x1

    iput-boolean v0, p0, Landroid/widget/PopupWindow;->mNotTouchModal:Z

    .line 1001
    return-void
.end method

.method public setTouchable(Z)V
    .locals 0
    .param p1, "touchable"    # Z

    .line 777
    iput-boolean p1, p0, Landroid/widget/PopupWindow;->mTouchable:Z

    .line 778
    return-void
.end method

.method protected final setTransitioningToDismiss(Z)V
    .locals 0
    .param p1, "transitioningToDismiss"    # Z

    .line 1146
    iput-boolean p1, p0, Landroid/widget/PopupWindow;->mIsTransitioningToDismiss:Z

    .line 1147
    return-void
.end method

.method public setWidth(I)V
    .locals 0
    .param p1, "width"    # I

    .line 1094
    iput p1, p0, Landroid/widget/PopupWindow;->mWidth:I

    .line 1095
    return-void
.end method

.method public setWindowLayoutMode(II)V
    .locals 0
    .param p1, "widthSpec"    # I
    .param p2, "heightSpec"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1029
    iput p1, p0, Landroid/widget/PopupWindow;->mWidthMode:I

    .line 1030
    iput p2, p0, Landroid/widget/PopupWindow;->mHeightMode:I

    .line 1031
    return-void
.end method

.method public setWindowLayoutType(I)V
    .locals 0
    .param p1, "layoutType"    # I

    .line 982
    iput p1, p0, Landroid/widget/PopupWindow;->mWindowLayoutType:I

    .line 983
    return-void
.end method

.method public showAsDropDown(Landroid/view/View;)V
    .locals 1
    .param p1, "anchor"    # Landroid/view/View;

    .line 1219
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, v0}, Landroid/widget/PopupWindow;->showAsDropDown(Landroid/view/View;II)V

    .line 1220
    return-void
.end method

.method public showAsDropDown(Landroid/view/View;II)V
    .locals 1
    .param p1, "anchor"    # Landroid/view/View;
    .param p2, "xoff"    # I
    .param p3, "yoff"    # I

    .line 1240
    const v0, 0x800033

    invoke-virtual {p0, p1, p2, p3, v0}, Landroid/widget/PopupWindow;->showAsDropDown(Landroid/view/View;III)V

    .line 1241
    return-void
.end method

.method public showAsDropDown(Landroid/view/View;III)V
    .locals 10
    .param p1, "anchor"    # Landroid/view/View;
    .param p2, "xoff"    # I
    .param p3, "yoff"    # I
    .param p4, "gravity"    # I

    .line 1264
    invoke-virtual {p0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {p0}, Landroid/widget/PopupWindow;->hasContentView()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_1

    .line 1268
    :cond_0
    iget-object v0, p0, Landroid/widget/PopupWindow;->mDecorView:Landroid/widget/PopupWindow$PopupDecorView;

    invoke-static {v0}, Landroid/transition/TransitionManager;->endTransitions(Landroid/view/ViewGroup;)V

    .line 1270
    invoke-virtual {p0, p1, p2, p3, p4}, Landroid/widget/PopupWindow;->attachToAnchor(Landroid/view/View;III)V

    .line 1272
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/widget/PopupWindow;->mIsShowing:Z

    .line 1273
    iput-boolean v0, p0, Landroid/widget/PopupWindow;->mIsDropdown:Z

    .line 1275
    nop

    .line 1276
    invoke-virtual {p1}, Landroid/view/View;->getApplicationWindowToken()Landroid/os/IBinder;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/widget/PopupWindow;->createPopupLayoutParams(Landroid/os/IBinder;)Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    .line 1277
    .local v0, "p":Landroid/view/WindowManager$LayoutParams;
    invoke-direct {p0, v0}, Landroid/widget/PopupWindow;->preparePopup(Landroid/view/WindowManager$LayoutParams;)V

    .line 1279
    iget v6, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    iget v7, v0, Landroid/view/WindowManager$LayoutParams;->height:I

    iget-boolean v9, p0, Landroid/widget/PopupWindow;->mAllowScrollingAnchorParent:Z

    move-object v1, p0

    move-object v2, p1

    move-object v3, v0

    move v4, p2

    move v5, p3

    move v8, p4

    invoke-virtual/range {v1 .. v9}, Landroid/widget/PopupWindow;->findDropDownPosition(Landroid/view/View;Landroid/view/WindowManager$LayoutParams;IIIIIZ)Z

    move-result v1

    .line 1281
    .local v1, "aboveAnchor":Z
    invoke-virtual {p0, v1}, Landroid/widget/PopupWindow;->updateAboveAnchor(Z)V

    .line 1282
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Landroid/view/View;->getAccessibilityViewId()I

    move-result v2

    int-to-long v2, v2

    goto :goto_0

    :cond_1
    const-wide/16 v2, -0x1

    :goto_0
    iput-wide v2, v0, Landroid/view/WindowManager$LayoutParams;->accessibilityIdOfAnchor:J

    .line 1284
    invoke-direct {p0, v0}, Landroid/widget/PopupWindow;->invokePopup(Landroid/view/WindowManager$LayoutParams;)V

    .line 1285
    return-void

    .line 1265
    .end local v0    # "p":Landroid/view/WindowManager$LayoutParams;
    .end local v1    # "aboveAnchor":Z
    :cond_2
    :goto_1
    return-void
.end method

.method public showAtLocation(Landroid/os/IBinder;III)V
    .locals 1
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "gravity"    # I
    .param p3, "x"    # I
    .param p4, "y"    # I

    .line 1185
    invoke-virtual {p0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Landroid/widget/PopupWindow;->mContentView:Landroid/view/View;

    if-nez v0, :cond_0

    goto :goto_0

    .line 1189
    :cond_0
    iget-object v0, p0, Landroid/widget/PopupWindow;->mDecorView:Landroid/widget/PopupWindow$PopupDecorView;

    invoke-static {v0}, Landroid/transition/TransitionManager;->endTransitions(Landroid/view/ViewGroup;)V

    .line 1191
    invoke-virtual {p0}, Landroid/widget/PopupWindow;->detachFromAnchor()V

    .line 1193
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/widget/PopupWindow;->mIsShowing:Z

    .line 1194
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/widget/PopupWindow;->mIsDropdown:Z

    .line 1195
    iput p2, p0, Landroid/widget/PopupWindow;->mGravity:I

    .line 1197
    invoke-virtual {p0, p1}, Landroid/widget/PopupWindow;->createPopupLayoutParams(Landroid/os/IBinder;)Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    .line 1198
    .local v0, "p":Landroid/view/WindowManager$LayoutParams;
    invoke-direct {p0, v0}, Landroid/widget/PopupWindow;->preparePopup(Landroid/view/WindowManager$LayoutParams;)V

    .line 1200
    iput p3, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 1201
    iput p4, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 1203
    invoke-direct {p0, v0}, Landroid/widget/PopupWindow;->invokePopup(Landroid/view/WindowManager$LayoutParams;)V

    .line 1204
    return-void

    .line 1186
    .end local v0    # "p":Landroid/view/WindowManager$LayoutParams;
    :cond_1
    :goto_0
    return-void
.end method

.method public showAtLocation(Landroid/view/View;III)V
    .locals 2
    .param p1, "parent"    # Landroid/view/View;
    .param p2, "gravity"    # I
    .param p3, "x"    # I
    .param p4, "y"    # I

    .line 1169
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Landroid/widget/PopupWindow;->mParentRootView:Ljava/lang/ref/WeakReference;

    .line 1170
    invoke-virtual {p1}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v0

    invoke-virtual {p0, v0, p2, p3, p4}, Landroid/widget/PopupWindow;->showAtLocation(Landroid/os/IBinder;III)V

    .line 1171
    return-void
.end method

.method public update()V
    .locals 6

    .line 2030
    invoke-virtual {p0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-virtual {p0}, Landroid/widget/PopupWindow;->hasContentView()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_1

    .line 2034
    :cond_0
    invoke-virtual {p0}, Landroid/widget/PopupWindow;->getDecorViewLayoutParams()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    .line 2036
    .local v0, "p":Landroid/view/WindowManager$LayoutParams;
    const/4 v1, 0x0

    .line 2038
    .local v1, "update":Z
    invoke-direct {p0}, Landroid/widget/PopupWindow;->computeAnimationResource()I

    move-result v2

    .line 2039
    .local v2, "newAnim":I
    iget v3, v0, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    if-eq v2, v3, :cond_1

    .line 2040
    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    .line 2041
    const/4 v1, 0x1

    .line 2044
    :cond_1
    iget v3, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    invoke-direct {p0, v3}, Landroid/widget/PopupWindow;->computeFlags(I)I

    move-result v3

    .line 2045
    .local v3, "newFlags":I
    iget v4, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    if-eq v3, v4, :cond_2

    .line 2046
    iput v3, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 2047
    const/4 v1, 0x1

    .line 2050
    :cond_2
    invoke-direct {p0}, Landroid/widget/PopupWindow;->computeGravity()I

    move-result v4

    .line 2051
    .local v4, "newGravity":I
    iget v5, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    if-eq v4, v5, :cond_3

    .line 2052
    iput v4, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 2053
    const/4 v1, 0x1

    .line 2056
    :cond_3
    if-eqz v1, :cond_5

    .line 2057
    iget-object v5, p0, Landroid/widget/PopupWindow;->mAnchor:Ljava/lang/ref/WeakReference;

    if-eqz v5, :cond_4

    iget-object v5, p0, Landroid/widget/PopupWindow;->mAnchor:Ljava/lang/ref/WeakReference;

    invoke-virtual {v5}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/view/View;

    goto :goto_0

    :cond_4
    const/4 v5, 0x0

    :goto_0
    invoke-virtual {p0, v5, v0}, Landroid/widget/PopupWindow;->update(Landroid/view/View;Landroid/view/WindowManager$LayoutParams;)V

    .line 2059
    :cond_5
    return-void

    .line 2031
    .end local v0    # "p":Landroid/view/WindowManager$LayoutParams;
    .end local v1    # "update":Z
    .end local v2    # "newAnim":I
    .end local v3    # "newFlags":I
    .end local v4    # "newGravity":I
    :cond_6
    :goto_1
    return-void
.end method

.method public update(II)V
    .locals 7
    .param p1, "width"    # I
    .param p2, "height"    # I

    .line 2077
    invoke-virtual {p0}, Landroid/widget/PopupWindow;->getDecorViewLayoutParams()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    .line 2078
    .local v0, "p":Landroid/view/WindowManager$LayoutParams;
    iget v2, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    iget v3, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    const/4 v6, 0x0

    move-object v1, p0

    move v4, p1

    move v5, p2

    invoke-virtual/range {v1 .. v6}, Landroid/widget/PopupWindow;->update(IIIIZ)V

    .line 2079
    return-void
.end method

.method public update(IIII)V
    .locals 6
    .param p1, "x"    # I
    .param p2, "y"    # I
    .param p3, "width"    # I
    .param p4, "height"    # I

    .line 2094
    const/4 v5, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    invoke-virtual/range {v0 .. v5}, Landroid/widget/PopupWindow;->update(IIIIZ)V

    .line 2095
    return-void
.end method

.method public update(IIIIZ)V
    .locals 17
    .param p1, "x"    # I
    .param p2, "y"    # I
    .param p3, "width"    # I
    .param p4, "height"    # I
    .param p5, "force"    # Z

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    move/from16 v4, p4

    .line 2113
    if-ltz v3, :cond_0

    .line 2114
    iput v3, v0, Landroid/widget/PopupWindow;->mLastWidth:I

    .line 2115
    invoke-virtual {v0, v3}, Landroid/widget/PopupWindow;->setWidth(I)V

    .line 2118
    :cond_0
    if-ltz v4, :cond_1

    .line 2119
    iput v4, v0, Landroid/widget/PopupWindow;->mLastHeight:I

    .line 2120
    invoke-virtual {v0, v4}, Landroid/widget/PopupWindow;->setHeight(I)V

    .line 2123
    :cond_1
    invoke-virtual/range {p0 .. p0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v5

    if-eqz v5, :cond_f

    invoke-virtual/range {p0 .. p0}, Landroid/widget/PopupWindow;->hasContentView()Z

    move-result v5

    if-nez v5, :cond_2

    goto/16 :goto_2

    .line 2127
    :cond_2
    invoke-virtual/range {p0 .. p0}, Landroid/widget/PopupWindow;->getDecorViewLayoutParams()Landroid/view/WindowManager$LayoutParams;

    move-result-object v5

    .line 2129
    .local v5, "p":Landroid/view/WindowManager$LayoutParams;
    move/from16 v6, p5

    .line 2131
    .local v6, "update":Z
    iget v7, v0, Landroid/widget/PopupWindow;->mWidthMode:I

    if-gez v7, :cond_3

    iget v7, v0, Landroid/widget/PopupWindow;->mWidthMode:I

    goto :goto_0

    :cond_3
    iget v7, v0, Landroid/widget/PopupWindow;->mLastWidth:I

    .line 2132
    .local v7, "finalWidth":I
    :goto_0
    const/4 v8, -0x1

    if-eq v3, v8, :cond_4

    iget v9, v5, Landroid/view/WindowManager$LayoutParams;->width:I

    if-eq v9, v7, :cond_4

    .line 2133
    iput v7, v0, Landroid/widget/PopupWindow;->mLastWidth:I

    iput v7, v5, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 2134
    const/4 v6, 0x1

    .line 2137
    :cond_4
    iget v9, v0, Landroid/widget/PopupWindow;->mHeightMode:I

    if-gez v9, :cond_5

    iget v9, v0, Landroid/widget/PopupWindow;->mHeightMode:I

    goto :goto_1

    :cond_5
    iget v9, v0, Landroid/widget/PopupWindow;->mLastHeight:I

    .line 2138
    .local v9, "finalHeight":I
    :goto_1
    if-eq v4, v8, :cond_6

    iget v8, v5, Landroid/view/WindowManager$LayoutParams;->height:I

    if-eq v8, v9, :cond_6

    .line 2139
    iput v9, v0, Landroid/widget/PopupWindow;->mLastHeight:I

    iput v9, v5, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 2140
    const/4 v6, 0x1

    .line 2143
    :cond_6
    iget v8, v5, Landroid/view/WindowManager$LayoutParams;->x:I

    if-eq v8, v1, :cond_7

    .line 2144
    iput v1, v5, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 2145
    const/4 v6, 0x1

    .line 2148
    :cond_7
    iget v8, v5, Landroid/view/WindowManager$LayoutParams;->y:I

    if-eq v8, v2, :cond_8

    .line 2149
    iput v2, v5, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 2150
    const/4 v6, 0x1

    .line 2153
    :cond_8
    invoke-direct/range {p0 .. p0}, Landroid/widget/PopupWindow;->computeAnimationResource()I

    move-result v8

    .line 2154
    .local v8, "newAnim":I
    iget v10, v5, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    if-eq v8, v10, :cond_9

    .line 2155
    iput v8, v5, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    .line 2156
    const/4 v6, 0x1

    .line 2159
    :cond_9
    iget v10, v5, Landroid/view/WindowManager$LayoutParams;->flags:I

    invoke-direct {v0, v10}, Landroid/widget/PopupWindow;->computeFlags(I)I

    move-result v10

    .line 2160
    .local v10, "newFlags":I
    iget v11, v5, Landroid/view/WindowManager$LayoutParams;->flags:I

    if-eq v10, v11, :cond_a

    .line 2161
    iput v10, v5, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 2162
    const/4 v6, 0x1

    .line 2165
    :cond_a
    invoke-direct/range {p0 .. p0}, Landroid/widget/PopupWindow;->computeGravity()I

    move-result v11

    .line 2166
    .local v11, "newGravity":I
    iget v12, v5, Landroid/view/WindowManager$LayoutParams;->gravity:I

    if-eq v11, v12, :cond_b

    .line 2167
    iput v11, v5, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 2168
    const/4 v6, 0x1

    .line 2171
    :cond_b
    const/4 v12, 0x0

    .line 2172
    .local v12, "anchor":Landroid/view/View;
    const/4 v13, -0x1

    .line 2174
    .local v13, "newAccessibilityIdOfAnchor":I
    iget-object v14, v0, Landroid/widget/PopupWindow;->mAnchor:Ljava/lang/ref/WeakReference;

    if-eqz v14, :cond_c

    iget-object v14, v0, Landroid/widget/PopupWindow;->mAnchor:Ljava/lang/ref/WeakReference;

    invoke-virtual {v14}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v14

    if-eqz v14, :cond_c

    .line 2175
    iget-object v14, v0, Landroid/widget/PopupWindow;->mAnchor:Ljava/lang/ref/WeakReference;

    invoke-virtual {v14}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v14

    move-object v12, v14

    check-cast v12, Landroid/view/View;

    .line 2176
    invoke-virtual {v12}, Landroid/view/View;->getAccessibilityViewId()I

    move-result v13

    .line 2179
    :cond_c
    int-to-long v14, v13

    iget-wide v1, v5, Landroid/view/WindowManager$LayoutParams;->accessibilityIdOfAnchor:J

    cmp-long v1, v14, v1

    if-eqz v1, :cond_d

    .line 2180
    int-to-long v1, v13

    iput-wide v1, v5, Landroid/view/WindowManager$LayoutParams;->accessibilityIdOfAnchor:J

    .line 2181
    const/4 v6, 0x1

    .line 2184
    :cond_d
    if-eqz v6, :cond_e

    .line 2185
    invoke-virtual {v0, v12, v5}, Landroid/widget/PopupWindow;->update(Landroid/view/View;Landroid/view/WindowManager$LayoutParams;)V

    .line 2187
    :cond_e
    return-void

    .line 2124
    .end local v5    # "p":Landroid/view/WindowManager$LayoutParams;
    .end local v6    # "update":Z
    .end local v7    # "finalWidth":I
    .end local v8    # "newAnim":I
    .end local v9    # "finalHeight":I
    .end local v10    # "newFlags":I
    .end local v11    # "newGravity":I
    .end local v12    # "anchor":Landroid/view/View;
    .end local v13    # "newAccessibilityIdOfAnchor":I
    :cond_f
    :goto_2
    return-void
.end method

.method public update(Landroid/view/View;II)V
    .locals 7
    .param p1, "anchor"    # Landroid/view/View;
    .param p2, "width"    # I
    .param p3, "height"    # I

    .line 2215
    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move v5, p2

    move v6, p3

    invoke-direct/range {v0 .. v6}, Landroid/widget/PopupWindow;->update(Landroid/view/View;ZIIII)V

    .line 2216
    return-void
.end method

.method public update(Landroid/view/View;IIII)V
    .locals 7
    .param p1, "anchor"    # Landroid/view/View;
    .param p2, "xoff"    # I
    .param p3, "yoff"    # I
    .param p4, "width"    # I
    .param p5, "height"    # I

    .line 2235
    const/4 v2, 0x1

    move-object v0, p0

    move-object v1, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    invoke-direct/range {v0 .. v6}, Landroid/widget/PopupWindow;->update(Landroid/view/View;ZIIII)V

    .line 2236
    return-void
.end method

.method protected update(Landroid/view/View;Landroid/view/WindowManager$LayoutParams;)V
    .locals 2
    .param p1, "anchor"    # Landroid/view/View;
    .param p2, "params"    # Landroid/view/WindowManager$LayoutParams;

    .line 2063
    invoke-direct {p0}, Landroid/widget/PopupWindow;->setLayoutDirectionFromAnchor()V

    .line 2064
    iget-object v0, p0, Landroid/widget/PopupWindow;->mWindowManager:Landroid/view/WindowManager;

    iget-object v1, p0, Landroid/widget/PopupWindow;->mDecorView:Landroid/widget/PopupWindow$PopupDecorView;

    invoke-interface {v0, v1, p2}, Landroid/view/WindowManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 2065
    return-void
.end method

.method protected final updateAboveAnchor(Z)V
    .locals 2
    .param p1, "aboveAnchor"    # Z

    .line 1289
    iget-boolean v0, p0, Landroid/widget/PopupWindow;->mAboveAnchor:Z

    if-eq p1, v0, :cond_2

    .line 1290
    iput-boolean p1, p0, Landroid/widget/PopupWindow;->mAboveAnchor:Z

    .line 1292
    iget-object v0, p0, Landroid/widget/PopupWindow;->mBackground:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_2

    iget-object v0, p0, Landroid/widget/PopupWindow;->mBackgroundView:Landroid/view/View;

    if-eqz v0, :cond_2

    .line 1296
    iget-object v0, p0, Landroid/widget/PopupWindow;->mAboveAnchorBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_1

    .line 1297
    iget-boolean v0, p0, Landroid/widget/PopupWindow;->mAboveAnchor:Z

    if-eqz v0, :cond_0

    .line 1298
    iget-object v0, p0, Landroid/widget/PopupWindow;->mBackgroundView:Landroid/view/View;

    iget-object v1, p0, Landroid/widget/PopupWindow;->mAboveAnchorBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 1300
    :cond_0
    iget-object v0, p0, Landroid/widget/PopupWindow;->mBackgroundView:Landroid/view/View;

    iget-object v1, p0, Landroid/widget/PopupWindow;->mBelowAnchorBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 1303
    :cond_1
    iget-object v0, p0, Landroid/widget/PopupWindow;->mBackgroundView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->refreshDrawableState()V

    .line 1307
    :cond_2
    :goto_0
    return-void
.end method
