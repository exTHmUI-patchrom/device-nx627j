.class public Lcom/android/internal/policy/DecorView;
.super Landroid/widget/FrameLayout;
.source "DecorView.java"

# interfaces
.implements Lcom/android/internal/view/RootViewSurfaceTaker;
.implements Landroid/view/WindowCallbacks;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/policy/DecorView$ActionModeCallback2Wrapper;,
        Lcom/android/internal/policy/DecorView$ColorViewAttributes;,
        Lcom/android/internal/policy/DecorView$ColorViewState;
    }
.end annotation


# static fields
.field private static final DEBUG_MEASURE:Z = false

.field private static final DECOR_SHADOW_FOCUSED_HEIGHT_IN_DIP:I = 0x14

.field private static final DECOR_SHADOW_UNFOCUSED_HEIGHT_IN_DIP:I = 0x5

.field public static final NAVIGATION_BAR_COLOR_VIEW_ATTRIBUTES:Lcom/android/internal/policy/DecorView$ColorViewAttributes;

.field private static final NUBIA_PIP_OUTLINE_PROVIDER:Landroid/view/ViewOutlineProvider;

.field private static final PIP_OUTLINE_PROVIDER:Landroid/view/ViewOutlineProvider;

.field public static final STATUS_BAR_COLOR_VIEW_ATTRIBUTES:Lcom/android/internal/policy/DecorView$ColorViewAttributes;

.field private static final SWEEP_OPEN_MENU:Z = false

.field private static final TAG:Ljava/lang/String; = "DecorView"


# instance fields
.field private IS_SMART_RECOGNITION_ON:Z

.field private IS_SUPPORT_RECOGNITION:Z

.field private mAllowUpdateElevation:Z

.field private mApplyFloatingHorizontalInsets:Z

.field private mApplyFloatingVerticalInsets:Z

.field private mAvailableWidth:F

.field private mBackdropFrameRenderer:Lcom/android/internal/policy/BackdropFrameRenderer;

.field private final mBackgroundFallback:Lcom/android/internal/widget/BackgroundFallback;

.field private final mBackgroundPadding:Landroid/graphics/Rect;

.field private final mBarEnterExitDuration:I

.field private mCaptionBackgroundDrawable:Landroid/graphics/drawable/Drawable;

.field private mChanging:Z

.field mContentRoot:Landroid/view/ViewGroup;

.field mDecorCaptionView:Lcom/android/internal/widget/DecorCaptionView;

.field mDefaultOpacity:I

.field private mDownY:I

.field private final mDrawingBounds:Landroid/graphics/Rect;

.field private mElevationAdjustedForStack:Z

.field private mFadeAnim:Landroid/animation/ObjectAnimator;

.field private final mFeatureId:I

.field private mFloatingActionMode:Landroid/view/ActionMode;

.field private mFloatingActionModeOriginatingView:Landroid/view/View;

.field private final mFloatingInsets:Landroid/graphics/Rect;

.field private mFloatingToolbar:Lcom/android/internal/widget/FloatingToolbar;

.field private mFloatingToolbarPreDrawListener:Landroid/view/ViewTreeObserver$OnPreDrawListener;

.field final mForceWindowDrawsStatusBarBackground:Z

.field private final mFrameOffsets:Landroid/graphics/Rect;

.field private final mFramePadding:Landroid/graphics/Rect;

.field private mHasCaption:Z

.field private final mHideInterpolator:Landroid/view/animation/Interpolator;

.field private final mHorizontalResizeShadowPaint:Landroid/graphics/Paint;

.field public mIsFreeformMode:Z

.field private mIsInPictureInPictureMode:Z

.field public mIsQQ:Z

.field public mIsWeixin:Z

.field public mIsWeixinHomeUI:Z

.field private mLastBackgroundDrawableCb:Landroid/graphics/drawable/Drawable$Callback;

.field private mLastBottomInset:I

.field private mLastHasBottomStableInset:Z

.field private mLastHasLeftStableInset:Z

.field private mLastHasRightStableInset:Z

.field private mLastHasTopStableInset:Z

.field private mLastLeftInset:I

.field private mLastOutlineProvider:Landroid/view/ViewOutlineProvider;

.field private mLastRightInset:I

.field private mLastShouldAlwaysConsumeNavBar:Z

.field private mLastTopInset:I

.field private mLastWindowFlags:I

.field mLogTag:Ljava/lang/String;

.field private mMenuBackground:Landroid/graphics/drawable/Drawable;

.field private final mNavigationColorViewState:Lcom/android/internal/policy/DecorView$ColorViewState;

.field private mNavigationGuard:Landroid/view/View;

.field private mNubiaTextExtractor:Landroid/widget/NubiaTextExtractor;

.field private mOutsets:Landroid/graphics/Rect;

.field private mPackageName:Ljava/lang/String;

.field private mPipEditText:Landroid/widget/EditText;

.field mPrimaryActionMode:Landroid/view/ActionMode;

.field private mPrimaryActionModePopup:Landroid/widget/PopupWindow;

.field private mPrimaryActionModeView:Lcom/android/internal/widget/ActionBarContextView;

.field private mQQExtraView:Landroid/view/View;

.field private mResizeMode:I

.field private final mResizeShadowSize:I

.field private mResizingBackgroundDrawable:Landroid/graphics/drawable/Drawable;

.field private mRootScrollY:I

.field private final mSemiTransparentStatusBarColor:I

.field private final mShowInterpolator:Landroid/view/animation/Interpolator;

.field private mShowPrimaryActionModePopup:Ljava/lang/Runnable;

.field private mShowStatusBarBackgroundPicture:Z

.field private final mStatusColorViewState:Lcom/android/internal/policy/DecorView$ColorViewState;

.field private mStatusGuard:Landroid/view/View;

.field private mTempRect:Landroid/graphics/Rect;

.field private mUserCaptionBackgroundDrawable:Landroid/graphics/drawable/Drawable;

.field private final mVerticalResizeShadowPaint:Landroid/graphics/Paint;

.field private mViewOptimizeInfo:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mWatchingForMenu:Z

.field private mWeixinContentRoot:Landroid/view/View;

.field private mWeixinStartDecorCaptionView:Lcom/android/internal/widget/DecorCaptionView;

.field private mWindow:Lcom/android/internal/policy/PhoneWindow;

.field private mWindowResizeCallbacksAdded:Z


# direct methods
.method static constructor <clinit>()V
    .locals 21

    .line 142
    new-instance v10, Lcom/android/internal/policy/DecorView$ColorViewAttributes;

    const-string v6, "android:status:background"

    const/4 v1, 0x4

    const/high16 v2, 0x4000000

    const/16 v3, 0x30

    const/4 v4, 0x3

    const/4 v5, 0x5

    const v7, 0x102002f

    const/16 v8, 0x400

    const/4 v9, 0x0

    move-object v0, v10

    invoke-direct/range {v0 .. v9}, Lcom/android/internal/policy/DecorView$ColorViewAttributes;-><init>(IIIIILjava/lang/String;IILcom/android/internal/policy/DecorView$1;)V

    sput-object v10, Lcom/android/internal/policy/DecorView;->STATUS_BAR_COLOR_VIEW_ATTRIBUTES:Lcom/android/internal/policy/DecorView$ColorViewAttributes;

    .line 149
    new-instance v0, Lcom/android/internal/policy/DecorView$ColorViewAttributes;

    const-string v17, "android:navigation:background"

    const/4 v12, 0x2

    const/high16 v13, 0x8000000

    const/16 v14, 0x50

    const/4 v15, 0x5

    const/16 v16, 0x3

    const v18, 0x1020030

    const/16 v19, 0x0

    const/16 v20, 0x0

    move-object v11, v0

    invoke-direct/range {v11 .. v20}, Lcom/android/internal/policy/DecorView$ColorViewAttributes;-><init>(IIIIILjava/lang/String;IILcom/android/internal/policy/DecorView$1;)V

    sput-object v0, Lcom/android/internal/policy/DecorView;->NAVIGATION_BAR_COLOR_VIEW_ATTRIBUTES:Lcom/android/internal/policy/DecorView$ColorViewAttributes;

    .line 159
    new-instance v0, Lcom/android/internal/policy/DecorView$1;

    invoke-direct {v0}, Lcom/android/internal/policy/DecorView$1;-><init>()V

    sput-object v0, Lcom/android/internal/policy/DecorView;->PIP_OUTLINE_PROVIDER:Landroid/view/ViewOutlineProvider;

    .line 278
    new-instance v0, Lcom/android/internal/policy/DecorView$2;

    invoke-direct {v0}, Lcom/android/internal/policy/DecorView$2;-><init>()V

    sput-object v0, Lcom/android/internal/policy/DecorView;->NUBIA_PIP_OUTLINE_PROVIDER:Landroid/view/ViewOutlineProvider;

    return-void
.end method

.method constructor <init>(Landroid/content/Context;ILcom/android/internal/policy/PhoneWindow;Landroid/view/WindowManager$LayoutParams;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "featureId"    # I
    .param p3, "window"    # Lcom/android/internal/policy/PhoneWindow;
    .param p4, "params"    # Landroid/view/WindowManager$LayoutParams;

    .line 307
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 170
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/policy/DecorView;->mAllowUpdateElevation:Z

    .line 172
    iput-boolean v0, p0, Lcom/android/internal/policy/DecorView;->mElevationAdjustedForStack:Z

    .line 180
    const/4 v1, -0x1

    iput v1, p0, Lcom/android/internal/policy/DecorView;->mDefaultOpacity:I

    .line 185
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    iput-object v2, p0, Lcom/android/internal/policy/DecorView;->mDrawingBounds:Landroid/graphics/Rect;

    .line 187
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    iput-object v2, p0, Lcom/android/internal/policy/DecorView;->mBackgroundPadding:Landroid/graphics/Rect;

    .line 189
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    iput-object v2, p0, Lcom/android/internal/policy/DecorView;->mFramePadding:Landroid/graphics/Rect;

    .line 191
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    iput-object v2, p0, Lcom/android/internal/policy/DecorView;->mFrameOffsets:Landroid/graphics/Rect;

    .line 193
    iput-boolean v0, p0, Lcom/android/internal/policy/DecorView;->mHasCaption:Z

    .line 216
    new-instance v2, Lcom/android/internal/policy/DecorView$ColorViewState;

    sget-object v3, Lcom/android/internal/policy/DecorView;->STATUS_BAR_COLOR_VIEW_ATTRIBUTES:Lcom/android/internal/policy/DecorView$ColorViewAttributes;

    invoke-direct {v2, v3}, Lcom/android/internal/policy/DecorView$ColorViewState;-><init>(Lcom/android/internal/policy/DecorView$ColorViewAttributes;)V

    iput-object v2, p0, Lcom/android/internal/policy/DecorView;->mStatusColorViewState:Lcom/android/internal/policy/DecorView$ColorViewState;

    .line 218
    new-instance v2, Lcom/android/internal/policy/DecorView$ColorViewState;

    sget-object v3, Lcom/android/internal/policy/DecorView;->NAVIGATION_BAR_COLOR_VIEW_ATTRIBUTES:Lcom/android/internal/policy/DecorView$ColorViewAttributes;

    invoke-direct {v2, v3}, Lcom/android/internal/policy/DecorView$ColorViewState;-><init>(Lcom/android/internal/policy/DecorView$ColorViewAttributes;)V

    iput-object v2, p0, Lcom/android/internal/policy/DecorView;->mNavigationColorViewState:Lcom/android/internal/policy/DecorView$ColorViewState;

    .line 227
    new-instance v2, Lcom/android/internal/widget/BackgroundFallback;

    invoke-direct {v2}, Lcom/android/internal/widget/BackgroundFallback;-><init>()V

    iput-object v2, p0, Lcom/android/internal/policy/DecorView;->mBackgroundFallback:Lcom/android/internal/widget/BackgroundFallback;

    .line 229
    iput v0, p0, Lcom/android/internal/policy/DecorView;->mLastTopInset:I

    .line 230
    iput v0, p0, Lcom/android/internal/policy/DecorView;->mLastBottomInset:I

    .line 231
    iput v0, p0, Lcom/android/internal/policy/DecorView;->mLastRightInset:I

    .line 232
    iput v0, p0, Lcom/android/internal/policy/DecorView;->mLastLeftInset:I

    .line 233
    iput-boolean v0, p0, Lcom/android/internal/policy/DecorView;->mLastHasTopStableInset:Z

    .line 234
    iput-boolean v0, p0, Lcom/android/internal/policy/DecorView;->mLastHasBottomStableInset:Z

    .line 235
    iput-boolean v0, p0, Lcom/android/internal/policy/DecorView;->mLastHasRightStableInset:Z

    .line 236
    iput-boolean v0, p0, Lcom/android/internal/policy/DecorView;->mLastHasLeftStableInset:Z

    .line 237
    iput v0, p0, Lcom/android/internal/policy/DecorView;->mLastWindowFlags:I

    .line 238
    iput-boolean v0, p0, Lcom/android/internal/policy/DecorView;->mLastShouldAlwaysConsumeNavBar:Z

    .line 240
    iput v0, p0, Lcom/android/internal/policy/DecorView;->mRootScrollY:I

    .line 247
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    iput-object v2, p0, Lcom/android/internal/policy/DecorView;->mOutsets:Landroid/graphics/Rect;

    .line 254
    iput-boolean v0, p0, Lcom/android/internal/policy/DecorView;->mWindowResizeCallbacksAdded:Z

    .line 255
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/android/internal/policy/DecorView;->mLastBackgroundDrawableCb:Landroid/graphics/drawable/Drawable$Callback;

    .line 256
    iput-object v2, p0, Lcom/android/internal/policy/DecorView;->mBackdropFrameRenderer:Lcom/android/internal/policy/BackdropFrameRenderer;

    .line 263
    const-string v3, "DecorView"

    iput-object v3, p0, Lcom/android/internal/policy/DecorView;->mLogTag:Ljava/lang/String;

    .line 264
    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    iput-object v3, p0, Lcom/android/internal/policy/DecorView;->mFloatingInsets:Landroid/graphics/Rect;

    .line 265
    iput-boolean v0, p0, Lcom/android/internal/policy/DecorView;->mApplyFloatingVerticalInsets:Z

    .line 266
    iput-boolean v0, p0, Lcom/android/internal/policy/DecorView;->mApplyFloatingHorizontalInsets:Z

    .line 270
    iput-boolean v0, p0, Lcom/android/internal/policy/DecorView;->mIsFreeformMode:Z

    .line 271
    iput-boolean v0, p0, Lcom/android/internal/policy/DecorView;->mIsWeixin:Z

    .line 272
    iput-boolean v0, p0, Lcom/android/internal/policy/DecorView;->mIsWeixinHomeUI:Z

    .line 273
    iput-boolean v0, p0, Lcom/android/internal/policy/DecorView;->mIsQQ:Z

    .line 286
    iput v1, p0, Lcom/android/internal/policy/DecorView;->mResizeMode:I

    .line 288
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    iput-object v1, p0, Lcom/android/internal/policy/DecorView;->mVerticalResizeShadowPaint:Landroid/graphics/Paint;

    .line 289
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    iput-object v1, p0, Lcom/android/internal/policy/DecorView;->mHorizontalResizeShadowPaint:Landroid/graphics/Paint;

    .line 292
    iput-boolean v0, p0, Lcom/android/internal/policy/DecorView;->mShowStatusBarBackgroundPicture:Z

    .line 296
    iput-object v2, p0, Lcom/android/internal/policy/DecorView;->mViewOptimizeInfo:Ljava/util/List;

    .line 300
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/internal/policy/DecorView;->IS_SMART_RECOGNITION_ON:Z

    .line 301
    iput-object v2, p0, Lcom/android/internal/policy/DecorView;->mNubiaTextExtractor:Landroid/widget/NubiaTextExtractor;

    .line 302
    iput-boolean v0, p0, Lcom/android/internal/policy/DecorView;->IS_SUPPORT_RECOGNITION:Z

    .line 308
    iput p2, p0, Lcom/android/internal/policy/DecorView;->mFeatureId:I

    .line 310
    const v3, 0x10c000e

    invoke-static {p1, v3}, Landroid/view/animation/AnimationUtils;->loadInterpolator(Landroid/content/Context;I)Landroid/view/animation/Interpolator;

    move-result-object v3

    iput-object v3, p0, Lcom/android/internal/policy/DecorView;->mShowInterpolator:Landroid/view/animation/Interpolator;

    .line 312
    const v3, 0x10c000f

    invoke-static {p1, v3}, Landroid/view/animation/AnimationUtils;->loadInterpolator(Landroid/content/Context;I)Landroid/view/animation/Interpolator;

    move-result-object v3

    iput-object v3, p0, Lcom/android/internal/policy/DecorView;->mHideInterpolator:Landroid/view/animation/Interpolator;

    .line 315
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x10e00e8

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v3

    iput v3, p0, Lcom/android/internal/policy/DecorView;->mBarEnterExitDuration:I

    .line 317
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x1120073

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 319
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v3

    iget v3, v3, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const/16 v4, 0x18

    if-lt v3, v4, :cond_0

    move v0, v1

    nop

    :cond_0
    iput-boolean v0, p0, Lcom/android/internal/policy/DecorView;->mForceWindowDrawsStatusBarBackground:Z

    .line 320
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v3, 0x1060155

    invoke-virtual {v0, v3, v2}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v0

    iput v0, p0, Lcom/android/internal/policy/DecorView;->mSemiTransparentStatusBarColor:I

    .line 323
    invoke-direct {p0}, Lcom/android/internal/policy/DecorView;->updateAvailableWidth()V

    .line 325
    invoke-virtual {p0, p3}, Lcom/android/internal/policy/DecorView;->setWindow(Lcom/android/internal/policy/PhoneWindow;)V

    .line 327
    invoke-virtual {p0, p4}, Lcom/android/internal/policy/DecorView;->updateLogTag(Landroid/view/WindowManager$LayoutParams;)V

    .line 329
    invoke-static {}, Landroid/app/ActivityThread;->currentPackageName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/policy/DecorView;->mPackageName:Ljava/lang/String;

    .line 330
    const-string v0, "com.tencent.mm"

    iget-object v2, p0, Lcom/android/internal/policy/DecorView;->mPackageName:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 331
    iput-boolean v1, p0, Lcom/android/internal/policy/DecorView;->mIsWeixin:Z

    .line 333
    :cond_1
    const-string v0, "com.tencent.mobileqq"

    iget-object v2, p0, Lcom/android/internal/policy/DecorView;->mPackageName:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 334
    iput-boolean v1, p0, Lcom/android/internal/policy/DecorView;->mIsQQ:Z

    .line 338
    :cond_2
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x1050188

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/internal/policy/DecorView;->mResizeShadowSize:I

    .line 340
    invoke-direct {p0}, Lcom/android/internal/policy/DecorView;->initResizingPaints()V

    .line 342
    invoke-direct {p0}, Lcom/android/internal/policy/DecorView;->initIsSupportRecognition()V

    .line 343
    iget-boolean v0, p0, Lcom/android/internal/policy/DecorView;->IS_SUPPORT_RECOGNITION:Z

    if-eqz v0, :cond_3

    .line 344
    iget-object v0, p0, Lcom/android/internal/policy/DecorView;->mNubiaTextExtractor:Landroid/widget/NubiaTextExtractor;

    if-nez v0, :cond_3

    .line 345
    new-instance v0, Landroid/widget/NubiaTextExtractor;

    invoke-direct {v0, p1, p0}, Landroid/widget/NubiaTextExtractor;-><init>(Landroid/content/Context;Landroid/widget/FrameLayout;)V

    iput-object v0, p0, Lcom/android/internal/policy/DecorView;->mNubiaTextExtractor:Landroid/widget/NubiaTextExtractor;

    .line 349
    :cond_3
    return-void
.end method

.method static synthetic access$100(Lcom/android/internal/policy/DecorView;)Lcom/android/internal/widget/ActionBarContextView;
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/policy/DecorView;

    .line 130
    iget-object v0, p0, Lcom/android/internal/policy/DecorView;->mPrimaryActionModeView:Lcom/android/internal/widget/ActionBarContextView;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/android/internal/policy/DecorView;)Lcom/android/internal/policy/PhoneWindow;
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/policy/DecorView;

    .line 130
    iget-object v0, p0, Lcom/android/internal/policy/DecorView;->mWindow:Lcom/android/internal/policy/PhoneWindow;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/internal/policy/DecorView;)Landroid/widget/PopupWindow;
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/policy/DecorView;

    .line 130
    iget-object v0, p0, Lcom/android/internal/policy/DecorView;->mPrimaryActionModePopup:Landroid/widget/PopupWindow;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/internal/policy/DecorView;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/policy/DecorView;

    .line 130
    invoke-direct {p0}, Lcom/android/internal/policy/DecorView;->endOnGoingFadeAnimation()V

    return-void
.end method

.method static synthetic access$400(Lcom/android/internal/policy/DecorView;)Landroid/animation/ObjectAnimator;
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/policy/DecorView;

    .line 130
    iget-object v0, p0, Lcom/android/internal/policy/DecorView;->mFadeAnim:Landroid/animation/ObjectAnimator;

    return-object v0
.end method

.method static synthetic access$402(Lcom/android/internal/policy/DecorView;Landroid/animation/ObjectAnimator;)Landroid/animation/ObjectAnimator;
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/policy/DecorView;
    .param p1, "x1"    # Landroid/animation/ObjectAnimator;

    .line 130
    iput-object p1, p0, Lcom/android/internal/policy/DecorView;->mFadeAnim:Landroid/animation/ObjectAnimator;

    return-object p1
.end method

.method static synthetic access$500(Lcom/android/internal/policy/DecorView;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/policy/DecorView;

    .line 130
    invoke-direct {p0}, Lcom/android/internal/policy/DecorView;->findEditView()V

    return-void
.end method

.method static synthetic access$600(Lcom/android/internal/policy/DecorView;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/policy/DecorView;

    .line 130
    iget-object v0, p0, Lcom/android/internal/policy/DecorView;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/internal/policy/DecorView;)Landroid/view/ActionMode;
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/policy/DecorView;

    .line 130
    iget-object v0, p0, Lcom/android/internal/policy/DecorView;->mFloatingActionMode:Landroid/view/ActionMode;

    return-object v0
.end method

.method static synthetic access$702(Lcom/android/internal/policy/DecorView;Landroid/view/ActionMode;)Landroid/view/ActionMode;
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/policy/DecorView;
    .param p1, "x1"    # Landroid/view/ActionMode;

    .line 130
    iput-object p1, p0, Lcom/android/internal/policy/DecorView;->mFloatingActionMode:Landroid/view/ActionMode;

    return-object p1
.end method

.method static synthetic access$800(Lcom/android/internal/policy/DecorView;)Ljava/lang/Runnable;
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/policy/DecorView;

    .line 130
    iget-object v0, p0, Lcom/android/internal/policy/DecorView;->mShowPrimaryActionModePopup:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/internal/policy/DecorView;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/policy/DecorView;

    .line 130
    invoke-direct {p0}, Lcom/android/internal/policy/DecorView;->cleanupFloatingActionModeViews()V

    return-void
.end method

.method private calculateStatusBarColor()I
    .locals 3

    .line 1292
    iget-object v0, p0, Lcom/android/internal/policy/DecorView;->mWindow:Lcom/android/internal/policy/PhoneWindow;

    invoke-virtual {v0}, Lcom/android/internal/policy/PhoneWindow;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    iget v1, p0, Lcom/android/internal/policy/DecorView;->mSemiTransparentStatusBarColor:I

    iget-object v2, p0, Lcom/android/internal/policy/DecorView;->mWindow:Lcom/android/internal/policy/PhoneWindow;

    iget v2, v2, Lcom/android/internal/policy/PhoneWindow;->mStatusBarColor:I

    invoke-static {v0, v1, v2}, Lcom/android/internal/policy/DecorView;->calculateStatusBarColor(III)I

    move-result v0

    return v0
.end method

.method public static calculateStatusBarColor(III)I
    .locals 1
    .param p0, "flags"    # I
    .param p1, "semiTransparentStatusBarColor"    # I
    .param p2, "statusBarColor"    # I

    .line 1298
    const/high16 v0, 0x4000000

    and-int/2addr v0, p0

    if-eqz v0, :cond_0

    move v0, p1

    goto :goto_0

    .line 1299
    :cond_0
    const/high16 v0, -0x80000000

    and-int/2addr v0, p0

    if-eqz v0, :cond_1

    .line 1298
    move v0, p2

    goto :goto_0

    .line 1300
    :cond_1
    const/high16 v0, -0x1000000

    .line 1298
    :goto_0
    return v0
.end method

.method private checkEditTextInput()V
    .locals 3

    .line 2293
    new-instance v0, Lcom/android/internal/policy/DecorView$7;

    invoke-direct {v0, p0}, Lcom/android/internal/policy/DecorView$7;-><init>(Lcom/android/internal/policy/DecorView;)V

    const-wide/16 v1, 0xc8

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/internal/policy/DecorView;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 2299
    return-void
.end method

.method private cleanupFloatingActionModeViews()V
    .locals 3

    .line 1028
    iget-object v0, p0, Lcom/android/internal/policy/DecorView;->mFloatingToolbar:Lcom/android/internal/widget/FloatingToolbar;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 1029
    iget-object v0, p0, Lcom/android/internal/policy/DecorView;->mFloatingToolbar:Lcom/android/internal/widget/FloatingToolbar;

    invoke-virtual {v0}, Lcom/android/internal/widget/FloatingToolbar;->dismiss()V

    .line 1030
    iput-object v1, p0, Lcom/android/internal/policy/DecorView;->mFloatingToolbar:Lcom/android/internal/widget/FloatingToolbar;

    .line 1032
    :cond_0
    iget-object v0, p0, Lcom/android/internal/policy/DecorView;->mFloatingActionModeOriginatingView:Landroid/view/View;

    if-eqz v0, :cond_2

    .line 1033
    iget-object v0, p0, Lcom/android/internal/policy/DecorView;->mFloatingToolbarPreDrawListener:Landroid/view/ViewTreeObserver$OnPreDrawListener;

    if-eqz v0, :cond_1

    .line 1034
    iget-object v0, p0, Lcom/android/internal/policy/DecorView;->mFloatingActionModeOriginatingView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    iget-object v2, p0, Lcom/android/internal/policy/DecorView;->mFloatingToolbarPreDrawListener:Landroid/view/ViewTreeObserver$OnPreDrawListener;

    .line 1035
    invoke-virtual {v0, v2}, Landroid/view/ViewTreeObserver;->removeOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 1036
    iput-object v1, p0, Lcom/android/internal/policy/DecorView;->mFloatingToolbarPreDrawListener:Landroid/view/ViewTreeObserver$OnPreDrawListener;

    .line 1038
    :cond_1
    iput-object v1, p0, Lcom/android/internal/policy/DecorView;->mFloatingActionModeOriginatingView:Landroid/view/View;

    .line 1040
    :cond_2
    return-void
.end method

.method private cleanupPrimaryActionMode()V
    .locals 1

    .line 1018
    iget-object v0, p0, Lcom/android/internal/policy/DecorView;->mPrimaryActionMode:Landroid/view/ActionMode;

    if-eqz v0, :cond_0

    .line 1019
    iget-object v0, p0, Lcom/android/internal/policy/DecorView;->mPrimaryActionMode:Landroid/view/ActionMode;

    invoke-virtual {v0}, Landroid/view/ActionMode;->finish()V

    .line 1020
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/policy/DecorView;->mPrimaryActionMode:Landroid/view/ActionMode;

    .line 1022
    :cond_0
    iget-object v0, p0, Lcom/android/internal/policy/DecorView;->mPrimaryActionModeView:Lcom/android/internal/widget/ActionBarContextView;

    if-eqz v0, :cond_1

    .line 1023
    iget-object v0, p0, Lcom/android/internal/policy/DecorView;->mPrimaryActionModeView:Lcom/android/internal/widget/ActionBarContextView;

    invoke-virtual {v0}, Lcom/android/internal/widget/ActionBarContextView;->killMode()V

    .line 1025
    :cond_1
    return-void
.end method

.method private createActionMode(ILandroid/view/ActionMode$Callback2;Landroid/view/View;)Landroid/view/ActionMode;
    .locals 1
    .param p1, "type"    # I
    .param p2, "callback"    # Landroid/view/ActionMode$Callback2;
    .param p3, "originatingView"    # Landroid/view/View;

    .line 1889
    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    .line 1892
    invoke-direct {p0, p2}, Lcom/android/internal/policy/DecorView;->createStandaloneActionMode(Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode;

    move-result-object v0

    return-object v0

    .line 1894
    :cond_0
    invoke-direct {p0, p3, p2}, Lcom/android/internal/policy/DecorView;->createFloatingActionMode(Landroid/view/View;Landroid/view/ActionMode$Callback2;)Landroid/view/ActionMode;

    move-result-object v0

    return-object v0
.end method

.method private createDecorCaptionView(Landroid/view/LayoutInflater;Z)Lcom/android/internal/widget/DecorCaptionView;
    .locals 7
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "onInit"    # Z

    .line 2341
    const/4 v0, 0x0

    .line 2342
    .local v0, "decorCaptionView":Lcom/android/internal/widget/DecorCaptionView;
    invoke-virtual {p0}, Lcom/android/internal/policy/DecorView;->getChildCount()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    .local v1, "i":I
    :goto_0
    if-ltz v1, :cond_1

    if-nez v0, :cond_1

    .line 2343
    invoke-virtual {p0, v1}, Lcom/android/internal/policy/DecorView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 2344
    .local v3, "view":Landroid/view/View;
    instance-of v4, v3, Lcom/android/internal/widget/DecorCaptionView;

    if-eqz v4, :cond_0

    .line 2346
    move-object v0, v3

    check-cast v0, Lcom/android/internal/widget/DecorCaptionView;

    .line 2347
    invoke-virtual {p0, v1}, Lcom/android/internal/policy/DecorView;->removeViewAt(I)V

    .line 2342
    .end local v3    # "view":Landroid/view/View;
    :cond_0
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 2350
    .end local v1    # "i":I
    :cond_1
    iget-object v1, p0, Lcom/android/internal/policy/DecorView;->mWindow:Lcom/android/internal/policy/PhoneWindow;

    invoke-virtual {v1}, Lcom/android/internal/policy/PhoneWindow;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    .line 2351
    .local v1, "attrs":Landroid/view/WindowManager$LayoutParams;
    iget v3, v1, Landroid/view/WindowManager$LayoutParams;->type:I

    const/4 v4, 0x0

    if-eq v3, v2, :cond_3

    iget v3, v1, Landroid/view/WindowManager$LayoutParams;->type:I

    const/4 v5, 0x2

    if-eq v3, v5, :cond_3

    iget v3, v1, Landroid/view/WindowManager$LayoutParams;->type:I

    const/4 v5, 0x4

    if-ne v3, v5, :cond_2

    goto :goto_1

    :cond_2
    move v3, v4

    goto :goto_2

    :cond_3
    :goto_1
    move v3, v2

    .line 2353
    .local v3, "isApplication":Z
    :goto_2
    invoke-virtual {p0}, Lcom/android/internal/policy/DecorView;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v5

    iget-object v5, v5, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    .line 2357
    .local v5, "winConfig":Landroid/app/WindowConfiguration;
    invoke-direct {p0}, Lcom/android/internal/policy/DecorView;->isFreeformMode()Z

    .line 2358
    iget-object v6, p0, Lcom/android/internal/policy/DecorView;->mWindow:Lcom/android/internal/policy/PhoneWindow;

    invoke-virtual {v6}, Lcom/android/internal/policy/PhoneWindow;->isFloating()Z

    move-result v6

    if-nez v6, :cond_8

    if-eqz v3, :cond_8

    iget-boolean v6, p0, Lcom/android/internal/policy/DecorView;->mIsWeixin:Z

    if-nez v6, :cond_4

    iget-boolean v6, p0, Lcom/android/internal/policy/DecorView;->mIsFreeformMode:Z

    if-nez v6, :cond_5

    :cond_4
    iget-boolean v6, p0, Lcom/android/internal/policy/DecorView;->mIsWeixin:Z

    if-eqz v6, :cond_8

    if-nez p2, :cond_8

    .line 2360
    :cond_5
    if-nez v0, :cond_6

    .line 2361
    invoke-direct {p0, p1}, Lcom/android/internal/policy/DecorView;->inflateDecorCaptionView(Landroid/view/LayoutInflater;)Lcom/android/internal/widget/DecorCaptionView;

    move-result-object v0

    .line 2363
    :cond_6
    iget-boolean v6, p0, Lcom/android/internal/policy/DecorView;->mIsWeixin:Z

    if-eqz v6, :cond_7

    .line 2364
    iget-object v2, p0, Lcom/android/internal/policy/DecorView;->mWindow:Lcom/android/internal/policy/PhoneWindow;

    iget-boolean v4, p0, Lcom/android/internal/policy/DecorView;->mIsFreeformMode:Z

    invoke-virtual {v0, v2, v4}, Lcom/android/internal/widget/DecorCaptionView;->setPhoneWindow(Lcom/android/internal/policy/PhoneWindow;Z)V

    .line 2365
    iget-boolean v2, p0, Lcom/android/internal/policy/DecorView;->mIsFreeformMode:Z

    invoke-virtual {p0, v2}, Lcom/android/internal/policy/DecorView;->enableCaption(Z)V

    .line 2366
    return-object v0

    .line 2368
    :cond_7
    iget-object v6, p0, Lcom/android/internal/policy/DecorView;->mWindow:Lcom/android/internal/policy/PhoneWindow;

    invoke-virtual {v0, v6, v2}, Lcom/android/internal/widget/DecorCaptionView;->setPhoneWindow(Lcom/android/internal/policy/PhoneWindow;Z)V

    goto :goto_3

    .line 2373
    :cond_8
    iget-object v6, p0, Lcom/android/internal/policy/DecorView;->mWindow:Lcom/android/internal/policy/PhoneWindow;

    invoke-virtual {v6}, Lcom/android/internal/policy/PhoneWindow;->isFloating()Z

    move-result v6

    if-nez v6, :cond_a

    if-eqz v3, :cond_a

    invoke-virtual {v5}, Landroid/app/WindowConfiguration;->hasWindowDecorCaption()Z

    move-result v6

    if-eqz v6, :cond_a

    .line 2376
    if-nez v0, :cond_9

    .line 2377
    invoke-direct {p0, p1}, Lcom/android/internal/policy/DecorView;->inflateDecorCaptionView(Landroid/view/LayoutInflater;)Lcom/android/internal/widget/DecorCaptionView;

    move-result-object v0

    .line 2379
    :cond_9
    iget-object v6, p0, Lcom/android/internal/policy/DecorView;->mWindow:Lcom/android/internal/policy/PhoneWindow;

    invoke-virtual {v0, v6, v2}, Lcom/android/internal/widget/DecorCaptionView;->setPhoneWindow(Lcom/android/internal/policy/PhoneWindow;Z)V

    goto :goto_3

    .line 2381
    :cond_a
    const/4 v0, 0x0

    .line 2385
    :goto_3
    if-eqz v0, :cond_b

    goto :goto_4

    :cond_b
    move v2, v4

    :goto_4
    invoke-virtual {p0, v2}, Lcom/android/internal/policy/DecorView;->enableCaption(Z)V

    .line 2386
    return-object v0
.end method

.method private createFloatingActionMode(Landroid/view/View;Landroid/view/ActionMode$Callback2;)Landroid/view/ActionMode;
    .locals 3
    .param p1, "originatingView"    # Landroid/view/View;
    .param p2, "callback"    # Landroid/view/ActionMode$Callback2;

    .line 2041
    iget-object v0, p0, Lcom/android/internal/policy/DecorView;->mFloatingActionMode:Landroid/view/ActionMode;

    if-eqz v0, :cond_0

    .line 2042
    iget-object v0, p0, Lcom/android/internal/policy/DecorView;->mFloatingActionMode:Landroid/view/ActionMode;

    invoke-virtual {v0}, Landroid/view/ActionMode;->finish()V

    .line 2044
    :cond_0
    invoke-direct {p0}, Lcom/android/internal/policy/DecorView;->cleanupFloatingActionModeViews()V

    .line 2045
    new-instance v0, Lcom/android/internal/widget/FloatingToolbar;

    iget-object v1, p0, Lcom/android/internal/policy/DecorView;->mWindow:Lcom/android/internal/policy/PhoneWindow;

    invoke-direct {v0, v1}, Lcom/android/internal/widget/FloatingToolbar;-><init>(Landroid/view/Window;)V

    iput-object v0, p0, Lcom/android/internal/policy/DecorView;->mFloatingToolbar:Lcom/android/internal/widget/FloatingToolbar;

    .line 2046
    new-instance v0, Lcom/android/internal/view/FloatingActionMode;

    iget-object v1, p0, Lcom/android/internal/policy/DecorView;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/internal/policy/DecorView;->mFloatingToolbar:Lcom/android/internal/widget/FloatingToolbar;

    invoke-direct {v0, v1, p2, p1, v2}, Lcom/android/internal/view/FloatingActionMode;-><init>(Landroid/content/Context;Landroid/view/ActionMode$Callback2;Landroid/view/View;Lcom/android/internal/widget/FloatingToolbar;)V

    .line 2048
    .local v0, "mode":Lcom/android/internal/view/FloatingActionMode;
    iput-object p1, p0, Lcom/android/internal/policy/DecorView;->mFloatingActionModeOriginatingView:Landroid/view/View;

    .line 2049
    new-instance v1, Lcom/android/internal/policy/DecorView$6;

    invoke-direct {v1, p0, v0}, Lcom/android/internal/policy/DecorView$6;-><init>(Lcom/android/internal/policy/DecorView;Lcom/android/internal/view/FloatingActionMode;)V

    iput-object v1, p0, Lcom/android/internal/policy/DecorView;->mFloatingToolbarPreDrawListener:Landroid/view/ViewTreeObserver$OnPreDrawListener;

    .line 2057
    return-object v0
.end method

.method private createStandaloneActionMode(Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode;
    .locals 9
    .param p1, "callback"    # Landroid/view/ActionMode$Callback;

    .line 1907
    invoke-direct {p0}, Lcom/android/internal/policy/DecorView;->endOnGoingFadeAnimation()V

    .line 1908
    invoke-direct {p0}, Lcom/android/internal/policy/DecorView;->cleanupPrimaryActionMode()V

    .line 1915
    iget-object v0, p0, Lcom/android/internal/policy/DecorView;->mPrimaryActionModeView:Lcom/android/internal/widget/ActionBarContextView;

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/policy/DecorView;->mPrimaryActionModeView:Lcom/android/internal/widget/ActionBarContextView;

    invoke-virtual {v0}, Lcom/android/internal/widget/ActionBarContextView;->isAttachedToWindow()Z

    move-result v0

    if-nez v0, :cond_3

    .line 1916
    :cond_0
    iget-object v0, p0, Lcom/android/internal/policy/DecorView;->mWindow:Lcom/android/internal/policy/PhoneWindow;

    invoke-virtual {v0}, Lcom/android/internal/policy/PhoneWindow;->isFloating()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1918
    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    .line 1919
    .local v0, "outValue":Landroid/util/TypedValue;
    iget-object v4, p0, Lcom/android/internal/policy/DecorView;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v4

    .line 1920
    .local v4, "baseTheme":Landroid/content/res/Resources$Theme;
    const v5, 0x1010431

    invoke-virtual {v4, v5, v0, v3}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 1923
    iget v5, v0, Landroid/util/TypedValue;->resourceId:I

    if-eqz v5, :cond_1

    .line 1924
    iget-object v5, p0, Lcom/android/internal/policy/DecorView;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/Resources;->newTheme()Landroid/content/res/Resources$Theme;

    move-result-object v5

    .line 1925
    .local v5, "actionBarTheme":Landroid/content/res/Resources$Theme;
    invoke-virtual {v5, v4}, Landroid/content/res/Resources$Theme;->setTo(Landroid/content/res/Resources$Theme;)V

    .line 1926
    iget v6, v0, Landroid/util/TypedValue;->resourceId:I

    invoke-virtual {v5, v6, v3}, Landroid/content/res/Resources$Theme;->applyStyle(IZ)V

    .line 1928
    new-instance v6, Landroid/view/ContextThemeWrapper;

    iget-object v7, p0, Lcom/android/internal/policy/DecorView;->mContext:Landroid/content/Context;

    invoke-direct {v6, v7, v1}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    .line 1929
    .local v6, "actionBarContext":Landroid/content/Context;
    invoke-virtual {v6}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v7

    invoke-virtual {v7, v5}, Landroid/content/res/Resources$Theme;->setTo(Landroid/content/res/Resources$Theme;)V

    .line 1930
    .end local v5    # "actionBarTheme":Landroid/content/res/Resources$Theme;
    goto :goto_0

    .line 1931
    .end local v6    # "actionBarContext":Landroid/content/Context;
    :cond_1
    iget-object v6, p0, Lcom/android/internal/policy/DecorView;->mContext:Landroid/content/Context;

    .restart local v6    # "actionBarContext":Landroid/content/Context;
    :goto_0
    move-object v5, v6

    .line 1934
    .end local v6    # "actionBarContext":Landroid/content/Context;
    .local v5, "actionBarContext":Landroid/content/Context;
    new-instance v6, Lcom/android/internal/widget/ActionBarContextView;

    invoke-direct {v6, v5}, Lcom/android/internal/widget/ActionBarContextView;-><init>(Landroid/content/Context;)V

    iput-object v6, p0, Lcom/android/internal/policy/DecorView;->mPrimaryActionModeView:Lcom/android/internal/widget/ActionBarContextView;

    .line 1935
    new-instance v6, Landroid/widget/PopupWindow;

    const v7, 0x1110005

    invoke-direct {v6, v5, v2, v7}, Landroid/widget/PopupWindow;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    iput-object v6, p0, Lcom/android/internal/policy/DecorView;->mPrimaryActionModePopup:Landroid/widget/PopupWindow;

    .line 1937
    iget-object v6, p0, Lcom/android/internal/policy/DecorView;->mPrimaryActionModePopup:Landroid/widget/PopupWindow;

    const/4 v7, 0x2

    invoke-virtual {v6, v7}, Landroid/widget/PopupWindow;->setWindowLayoutType(I)V

    .line 1939
    iget-object v6, p0, Lcom/android/internal/policy/DecorView;->mPrimaryActionModePopup:Landroid/widget/PopupWindow;

    iget-object v7, p0, Lcom/android/internal/policy/DecorView;->mPrimaryActionModeView:Lcom/android/internal/widget/ActionBarContextView;

    invoke-virtual {v6, v7}, Landroid/widget/PopupWindow;->setContentView(Landroid/view/View;)V

    .line 1940
    iget-object v6, p0, Lcom/android/internal/policy/DecorView;->mPrimaryActionModePopup:Landroid/widget/PopupWindow;

    const/4 v7, -0x1

    invoke-virtual {v6, v7}, Landroid/widget/PopupWindow;->setWidth(I)V

    .line 1942
    invoke-virtual {v5}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v6

    const v7, 0x10102eb

    invoke-virtual {v6, v7, v0, v3}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 1944
    iget v6, v0, Landroid/util/TypedValue;->data:I

    .line 1945
    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v7

    .line 1944
    invoke-static {v6, v7}, Landroid/util/TypedValue;->complexToDimensionPixelSize(ILandroid/util/DisplayMetrics;)I

    move-result v6

    .line 1946
    .local v6, "height":I
    iget-object v7, p0, Lcom/android/internal/policy/DecorView;->mPrimaryActionModeView:Lcom/android/internal/widget/ActionBarContextView;

    invoke-virtual {v7, v6}, Lcom/android/internal/widget/ActionBarContextView;->setContentHeight(I)V

    .line 1947
    iget-object v7, p0, Lcom/android/internal/policy/DecorView;->mPrimaryActionModePopup:Landroid/widget/PopupWindow;

    const/4 v8, -0x2

    invoke-virtual {v7, v8}, Landroid/widget/PopupWindow;->setHeight(I)V

    .line 1948
    new-instance v7, Lcom/android/internal/policy/DecorView$4;

    invoke-direct {v7, p0}, Lcom/android/internal/policy/DecorView$4;-><init>(Lcom/android/internal/policy/DecorView;)V

    iput-object v7, p0, Lcom/android/internal/policy/DecorView;->mShowPrimaryActionModePopup:Ljava/lang/Runnable;

    .line 1977
    .end local v0    # "outValue":Landroid/util/TypedValue;
    .end local v4    # "baseTheme":Landroid/content/res/Resources$Theme;
    .end local v5    # "actionBarContext":Landroid/content/Context;
    .end local v6    # "height":I
    goto :goto_1

    .line 1978
    :cond_2
    const v0, 0x102018a

    invoke-virtual {p0, v0}, Lcom/android/internal/policy/DecorView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewStub;

    .line 1979
    .local v0, "stub":Landroid/view/ViewStub;
    if-eqz v0, :cond_3

    .line 1980
    invoke-virtual {v0}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/android/internal/widget/ActionBarContextView;

    iput-object v4, p0, Lcom/android/internal/policy/DecorView;->mPrimaryActionModeView:Lcom/android/internal/widget/ActionBarContextView;

    .line 1981
    iput-object v2, p0, Lcom/android/internal/policy/DecorView;->mPrimaryActionModePopup:Landroid/widget/PopupWindow;

    .line 1985
    .end local v0    # "stub":Landroid/view/ViewStub;
    :cond_3
    :goto_1
    iget-object v0, p0, Lcom/android/internal/policy/DecorView;->mPrimaryActionModeView:Lcom/android/internal/widget/ActionBarContextView;

    if-eqz v0, :cond_5

    .line 1986
    iget-object v0, p0, Lcom/android/internal/policy/DecorView;->mPrimaryActionModeView:Lcom/android/internal/widget/ActionBarContextView;

    invoke-virtual {v0}, Lcom/android/internal/widget/ActionBarContextView;->killMode()V

    .line 1987
    new-instance v0, Lcom/android/internal/view/StandaloneActionMode;

    iget-object v2, p0, Lcom/android/internal/policy/DecorView;->mPrimaryActionModeView:Lcom/android/internal/widget/ActionBarContextView;

    .line 1988
    invoke-virtual {v2}, Lcom/android/internal/widget/ActionBarContextView;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-object v4, p0, Lcom/android/internal/policy/DecorView;->mPrimaryActionModeView:Lcom/android/internal/widget/ActionBarContextView;

    iget-object v5, p0, Lcom/android/internal/policy/DecorView;->mPrimaryActionModePopup:Landroid/widget/PopupWindow;

    if-nez v5, :cond_4

    move v1, v3

    nop

    :cond_4
    invoke-direct {v0, v2, v4, p1, v1}, Lcom/android/internal/view/StandaloneActionMode;-><init>(Landroid/content/Context;Lcom/android/internal/widget/ActionBarContextView;Landroid/view/ActionMode$Callback;Z)V

    .line 1990
    .local v0, "mode":Landroid/view/ActionMode;
    return-object v0

    .line 1992
    .end local v0    # "mode":Landroid/view/ActionMode;
    :cond_5
    return-object v2
.end method

.method private dipToPx(F)F
    .locals 2
    .param p1, "dip"    # F

    .line 2716
    nop

    .line 2717
    invoke-virtual {p0}, Lcom/android/internal/policy/DecorView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 2716
    const/4 v1, 0x1

    invoke-static {v1, p1, v0}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v0

    return v0
.end method

.method private drawResizingShadowIfNeeded(Landroid/view/DisplayListCanvas;)V
    .locals 8
    .param p1, "canvas"    # Landroid/view/DisplayListCanvas;

    .line 2604
    iget v0, p0, Lcom/android/internal/policy/DecorView;->mResizeMode:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/android/internal/policy/DecorView;->mWindow:Lcom/android/internal/policy/PhoneWindow;

    iget-boolean v0, v0, Lcom/android/internal/policy/PhoneWindow;->mIsFloating:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/internal/policy/DecorView;->mWindow:Lcom/android/internal/policy/PhoneWindow;

    .line 2605
    invoke-virtual {v0}, Lcom/android/internal/policy/PhoneWindow;->isTranslucent()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/internal/policy/DecorView;->mWindow:Lcom/android/internal/policy/PhoneWindow;

    .line 2606
    invoke-virtual {v0}, Lcom/android/internal/policy/PhoneWindow;->isShowingWallpaper()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 2609
    :cond_0
    invoke-virtual {p1}, Landroid/view/DisplayListCanvas;->save()I

    .line 2610
    invoke-virtual {p0}, Lcom/android/internal/policy/DecorView;->getHeight()I

    move-result v0

    iget-object v1, p0, Lcom/android/internal/policy/DecorView;->mFrameOffsets:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v0, v1

    int-to-float v0, v0

    const/4 v1, 0x0

    invoke-virtual {p1, v1, v0}, Landroid/view/DisplayListCanvas;->translate(FF)V

    .line 2611
    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {p0}, Lcom/android/internal/policy/DecorView;->getWidth()I

    move-result v0

    int-to-float v5, v0

    iget v0, p0, Lcom/android/internal/policy/DecorView;->mResizeShadowSize:I

    int-to-float v6, v0

    iget-object v7, p0, Lcom/android/internal/policy/DecorView;->mHorizontalResizeShadowPaint:Landroid/graphics/Paint;

    move-object v2, p1

    invoke-virtual/range {v2 .. v7}, Landroid/view/DisplayListCanvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 2612
    invoke-virtual {p1}, Landroid/view/DisplayListCanvas;->restore()V

    .line 2613
    invoke-virtual {p1}, Landroid/view/DisplayListCanvas;->save()I

    .line 2614
    invoke-virtual {p0}, Lcom/android/internal/policy/DecorView;->getWidth()I

    move-result v0

    iget-object v2, p0, Lcom/android/internal/policy/DecorView;->mFrameOffsets:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->right:I

    sub-int/2addr v0, v2

    int-to-float v0, v0

    invoke-virtual {p1, v0, v1}, Landroid/view/DisplayListCanvas;->translate(FF)V

    .line 2615
    iget v0, p0, Lcom/android/internal/policy/DecorView;->mResizeShadowSize:I

    int-to-float v5, v0

    invoke-virtual {p0}, Lcom/android/internal/policy/DecorView;->getHeight()I

    move-result v0

    int-to-float v6, v0

    iget-object v7, p0, Lcom/android/internal/policy/DecorView;->mVerticalResizeShadowPaint:Landroid/graphics/Paint;

    move-object v2, p1

    invoke-virtual/range {v2 .. v7}, Landroid/view/DisplayListCanvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 2616
    invoke-virtual {p1}, Landroid/view/DisplayListCanvas;->restore()V

    .line 2617
    return-void

    .line 2607
    :cond_1
    :goto_0
    return-void
.end method

.method private drawableChanged()V
    .locals 7

    .line 1656
    iget-boolean v0, p0, Lcom/android/internal/policy/DecorView;->mChanging:Z

    if-eqz v0, :cond_0

    .line 1657
    return-void

    .line 1660
    :cond_0
    iget-object v0, p0, Lcom/android/internal/policy/DecorView;->mFramePadding:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    iget-object v1, p0, Lcom/android/internal/policy/DecorView;->mBackgroundPadding:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    add-int/2addr v0, v1

    iget-object v1, p0, Lcom/android/internal/policy/DecorView;->mFramePadding:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->top:I

    iget-object v2, p0, Lcom/android/internal/policy/DecorView;->mBackgroundPadding:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    add-int/2addr v1, v2

    iget-object v2, p0, Lcom/android/internal/policy/DecorView;->mFramePadding:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->right:I

    iget-object v3, p0, Lcom/android/internal/policy/DecorView;->mBackgroundPadding:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->right:I

    add-int/2addr v2, v3

    iget-object v3, p0, Lcom/android/internal/policy/DecorView;->mFramePadding:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->bottom:I

    iget-object v4, p0, Lcom/android/internal/policy/DecorView;->mBackgroundPadding:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v3, v4

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/android/internal/policy/DecorView;->setPadding(IIII)V

    .line 1664
    invoke-virtual {p0}, Lcom/android/internal/policy/DecorView;->requestLayout()V

    .line 1665
    invoke-virtual {p0}, Lcom/android/internal/policy/DecorView;->invalidate()V

    .line 1667
    const/4 v0, -0x1

    .line 1668
    .local v0, "opacity":I
    invoke-virtual {p0}, Lcom/android/internal/policy/DecorView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget-object v1, v1, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    .line 1669
    .local v1, "winConfig":Landroid/app/WindowConfiguration;
    invoke-virtual {v1}, Landroid/app/WindowConfiguration;->hasWindowShadow()Z

    move-result v2

    if-nez v2, :cond_8

    iget-boolean v2, p0, Lcom/android/internal/policy/DecorView;->mIsFreeformMode:Z

    if-eqz v2, :cond_1

    goto :goto_2

    .line 1682
    :cond_1
    invoke-virtual {p0}, Lcom/android/internal/policy/DecorView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 1683
    .local v2, "bg":Landroid/graphics/drawable/Drawable;
    invoke-virtual {p0}, Lcom/android/internal/policy/DecorView;->getForeground()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    .line 1684
    .local v3, "fg":Landroid/graphics/drawable/Drawable;
    if-eqz v2, :cond_9

    .line 1685
    if-nez v3, :cond_2

    .line 1686
    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getOpacity()I

    move-result v0

    goto :goto_3

    .line 1687
    :cond_2
    iget-object v4, p0, Lcom/android/internal/policy/DecorView;->mFramePadding:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->left:I

    if-gtz v4, :cond_7

    iget-object v4, p0, Lcom/android/internal/policy/DecorView;->mFramePadding:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->top:I

    if-gtz v4, :cond_7

    iget-object v4, p0, Lcom/android/internal/policy/DecorView;->mFramePadding:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->right:I

    if-gtz v4, :cond_7

    iget-object v4, p0, Lcom/android/internal/policy/DecorView;->mFramePadding:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->bottom:I

    if-gtz v4, :cond_7

    .line 1691
    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getOpacity()I

    move-result v4

    .line 1692
    .local v4, "fop":I
    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getOpacity()I

    move-result v5

    .line 1695
    .local v5, "bop":I
    const/4 v6, -0x1

    if-eq v4, v6, :cond_6

    if-ne v5, v6, :cond_3

    goto :goto_0

    .line 1697
    :cond_3
    if-nez v4, :cond_4

    .line 1698
    move v0, v5

    goto :goto_1

    .line 1699
    :cond_4
    if-nez v5, :cond_5

    .line 1700
    move v0, v4

    goto :goto_1

    .line 1702
    :cond_5
    invoke-static {v4, v5}, Landroid/graphics/drawable/Drawable;->resolveOpacity(II)I

    move-result v0

    .end local v4    # "fop":I
    .end local v5    # "bop":I
    goto :goto_1

    .line 1696
    .restart local v4    # "fop":I
    .restart local v5    # "bop":I
    :cond_6
    :goto_0
    const/4 v0, -0x1

    .line 1704
    .end local v4    # "fop":I
    .end local v5    # "bop":I
    :goto_1
    goto :goto_3

    .line 1710
    :cond_7
    const/4 v0, -0x3

    .end local v2    # "bg":Landroid/graphics/drawable/Drawable;
    .end local v3    # "fg":Landroid/graphics/drawable/Drawable;
    goto :goto_3

    .line 1675
    :cond_8
    :goto_2
    const/4 v0, -0x3

    .line 1720
    :cond_9
    :goto_3
    iput v0, p0, Lcom/android/internal/policy/DecorView;->mDefaultOpacity:I

    .line 1721
    iget v2, p0, Lcom/android/internal/policy/DecorView;->mFeatureId:I

    if-gez v2, :cond_a

    .line 1722
    iget-object v2, p0, Lcom/android/internal/policy/DecorView;->mWindow:Lcom/android/internal/policy/PhoneWindow;

    invoke-virtual {v2, v0}, Lcom/android/internal/policy/PhoneWindow;->setDefaultWindowFormat(I)V

    .line 1724
    :cond_a
    return-void
.end method

.method private endOnGoingFadeAnimation()V
    .locals 1

    .line 1996
    iget-object v0, p0, Lcom/android/internal/policy/DecorView;->mFadeAnim:Landroid/animation/ObjectAnimator;

    if-eqz v0, :cond_0

    .line 1997
    iget-object v0, p0, Lcom/android/internal/policy/DecorView;->mFadeAnim:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->end()V

    .line 1999
    :cond_0
    return-void
.end method

.method private static enforceNonTranslucentBackground(Landroid/graphics/drawable/Drawable;Z)Landroid/graphics/drawable/Drawable;
    .locals 7
    .param p0, "drawable"    # Landroid/graphics/drawable/Drawable;
    .param p1, "windowTranslucent"    # Z

    .line 2481
    if-nez p1, :cond_0

    instance-of v0, p0, Landroid/graphics/drawable/ColorDrawable;

    if-eqz v0, :cond_0

    .line 2482
    move-object v0, p0

    check-cast v0, Landroid/graphics/drawable/ColorDrawable;

    .line 2483
    .local v0, "colorDrawable":Landroid/graphics/drawable/ColorDrawable;
    invoke-virtual {v0}, Landroid/graphics/drawable/ColorDrawable;->getColor()I

    move-result v1

    .line 2484
    .local v1, "color":I
    invoke-static {v1}, Landroid/graphics/Color;->alpha(I)I

    move-result v2

    const/16 v3, 0xff

    if-eq v2, v3, :cond_0

    .line 2485
    invoke-virtual {v0}, Landroid/graphics/drawable/ColorDrawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable$ConstantState;->newDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 2486
    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    check-cast v2, Landroid/graphics/drawable/ColorDrawable;

    .line 2487
    .local v2, "copy":Landroid/graphics/drawable/ColorDrawable;
    nop

    .line 2488
    invoke-static {v1}, Landroid/graphics/Color;->red(I)I

    move-result v4

    invoke-static {v1}, Landroid/graphics/Color;->green(I)I

    move-result v5

    invoke-static {v1}, Landroid/graphics/Color;->blue(I)I

    move-result v6

    invoke-static {v3, v4, v5, v6}, Landroid/graphics/Color;->argb(IIII)I

    move-result v3

    .line 2487
    invoke-virtual {v2, v3}, Landroid/graphics/drawable/ColorDrawable;->setColor(I)V

    .line 2489
    return-object v2

    .line 2492
    .end local v0    # "colorDrawable":Landroid/graphics/drawable/ColorDrawable;
    .end local v1    # "color":I
    .end local v2    # "copy":Landroid/graphics/drawable/ColorDrawable;
    :cond_0
    return-object p0
.end method

.method private findEditView()V
    .locals 3

    .line 2281
    invoke-direct {p0, p0}, Lcom/android/internal/policy/DecorView;->findViewByType(Landroid/view/View;)V

    .line 2282
    iget-object v0, p0, Lcom/android/internal/policy/DecorView;->mPipEditText:Landroid/widget/EditText;

    if-eqz v0, :cond_0

    .line 2283
    iget-object v0, p0, Lcom/android/internal/policy/DecorView;->mPipEditText:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->requestFocus()Z

    .line 2284
    invoke-virtual {p0}, Lcom/android/internal/policy/DecorView;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "input_method"

    .line 2285
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 2286
    .local v0, "imm":Landroid/view/inputmethod/InputMethodManager;
    const/4 v1, 0x0

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->toggleSoftInput(II)V

    .line 2289
    .end local v0    # "imm":Landroid/view/inputmethod/InputMethodManager;
    :cond_0
    iget-object v0, p0, Lcom/android/internal/policy/DecorView;->mLogTag:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "game pip findEditView:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/internal/policy/DecorView;->mPipEditText:Landroid/widget/EditText;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2290
    return-void
.end method

.method private findViewByType(Landroid/view/View;)V
    .locals 3
    .param p1, "view"    # Landroid/view/View;

    .line 2266
    if-nez p1, :cond_0

    return-void

    .line 2267
    :cond_0
    instance-of v0, p1, Landroid/widget/EditText;

    if-eqz v0, :cond_1

    .line 2268
    invoke-virtual {p1}, Landroid/view/View;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "0,0-0,0"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 2269
    move-object v0, p1

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/android/internal/policy/DecorView;->mPipEditText:Landroid/widget/EditText;

    goto :goto_1

    .line 2271
    :cond_1
    instance-of v0, p1, Landroid/view/ViewGroup;

    if-eqz v0, :cond_2

    .line 2272
    move-object v0, p1

    check-cast v0, Landroid/view/ViewGroup;

    .line 2273
    .local v0, "group":Landroid/view/ViewGroup;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    if-ge v1, v2, :cond_2

    .line 2274
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 2275
    .local v2, "child":Landroid/view/View;
    invoke-direct {p0, v2}, Lcom/android/internal/policy/DecorView;->findViewByType(Landroid/view/View;)V

    .line 2273
    .end local v2    # "child":Landroid/view/View;
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 2278
    .end local v0    # "group":Landroid/view/ViewGroup;
    .end local v1    # "i":I
    :cond_2
    :goto_1
    return-void
.end method

.method public static getColorViewBottomInset(II)I
    .locals 1
    .param p0, "stableBottom"    # I
    .param p1, "systemBottom"    # I

    .line 1130
    invoke-static {p0, p1}, Ljava/lang/Math;->min(II)I

    move-result v0

    return v0
.end method

.method public static getColorViewLeftInset(II)I
    .locals 1
    .param p0, "stableLeft"    # I
    .param p1, "systemLeft"    # I

    .line 1138
    invoke-static {p0, p1}, Ljava/lang/Math;->min(II)I

    move-result v0

    return v0
.end method

.method public static getColorViewRightInset(II)I
    .locals 1
    .param p0, "stableRight"    # I
    .param p1, "systemRight"    # I

    .line 1134
    invoke-static {p0, p1}, Ljava/lang/Math;->min(II)I

    move-result v0

    return v0
.end method

.method public static getColorViewTopInset(II)I
    .locals 1
    .param p0, "stableTop"    # I
    .param p1, "systemTop"    # I

    .line 1126
    invoke-static {p0, p1}, Ljava/lang/Math;->min(II)I

    move-result v0

    return v0
.end method

.method private getCurrentColor(Lcom/android/internal/policy/DecorView$ColorViewState;)I
    .locals 1
    .param p1, "state"    # Lcom/android/internal/policy/DecorView$ColorViewState;

    .line 1304
    iget-boolean v0, p1, Lcom/android/internal/policy/DecorView$ColorViewState;->visible:Z

    if-eqz v0, :cond_0

    .line 1305
    iget v0, p1, Lcom/android/internal/policy/DecorView$ColorViewState;->color:I

    return v0

    .line 1307
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public static getNavBarSize(III)I
    .locals 1
    .param p0, "bottomInset"    # I
    .param p1, "rightInset"    # I
    .param p2, "leftInset"    # I

    .line 1150
    invoke-static {p0, p1}, Lcom/android/internal/policy/DecorView;->isNavBarToRightEdge(II)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, p1

    goto :goto_0

    .line 1151
    :cond_0
    invoke-static {p0, p2}, Lcom/android/internal/policy/DecorView;->isNavBarToLeftEdge(II)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1150
    move v0, p2

    goto :goto_0

    :cond_1
    move v0, p0

    :goto_0
    return v0
.end method

.method public static getNavigationBarRect(IILandroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;)V
    .locals 6
    .param p0, "canvasWidth"    # I
    .param p1, "canvasHeight"    # I
    .param p2, "stableInsets"    # Landroid/graphics/Rect;
    .param p3, "contentInsets"    # Landroid/graphics/Rect;
    .param p4, "outRect"    # Landroid/graphics/Rect;

    .line 1156
    iget v0, p2, Landroid/graphics/Rect;->bottom:I

    iget v1, p3, Landroid/graphics/Rect;->bottom:I

    invoke-static {v0, v1}, Lcom/android/internal/policy/DecorView;->getColorViewBottomInset(II)I

    move-result v0

    .line 1157
    .local v0, "bottomInset":I
    iget v1, p2, Landroid/graphics/Rect;->left:I

    iget v2, p3, Landroid/graphics/Rect;->left:I

    invoke-static {v1, v2}, Lcom/android/internal/policy/DecorView;->getColorViewLeftInset(II)I

    move-result v1

    .line 1158
    .local v1, "leftInset":I
    iget v2, p2, Landroid/graphics/Rect;->right:I

    iget v3, p3, Landroid/graphics/Rect;->right:I

    invoke-static {v2, v3}, Lcom/android/internal/policy/DecorView;->getColorViewLeftInset(II)I

    move-result v2

    .line 1159
    .local v2, "rightInset":I
    invoke-static {v0, v2, v1}, Lcom/android/internal/policy/DecorView;->getNavBarSize(III)I

    move-result v3

    .line 1160
    .local v3, "size":I
    invoke-static {v0, v2}, Lcom/android/internal/policy/DecorView;->isNavBarToRightEdge(II)Z

    move-result v4

    const/4 v5, 0x0

    if-eqz v4, :cond_0

    .line 1161
    sub-int v4, p0, v3

    invoke-virtual {p4, v4, v5, p0, p1}, Landroid/graphics/Rect;->set(IIII)V

    goto :goto_0

    .line 1162
    :cond_0
    invoke-static {v0, v1}, Lcom/android/internal/policy/DecorView;->isNavBarToLeftEdge(II)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 1163
    invoke-virtual {p4, v5, v5, v3, p1}, Landroid/graphics/Rect;->set(IIII)V

    goto :goto_0

    .line 1165
    :cond_1
    sub-int v4, p1, v3

    invoke-virtual {p4, v5, v4, p0, p1}, Landroid/graphics/Rect;->set(IIII)V

    .line 1167
    :goto_0
    return-void
.end method

.method public static getResizingBackgroundDrawable(Landroid/content/Context;IIZ)Landroid/graphics/drawable/Drawable;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "backgroundRes"    # I
    .param p2, "backgroundFallbackRes"    # I
    .param p3, "windowTranslucent"    # Z

    .line 2459
    if-eqz p1, :cond_0

    .line 2460
    invoke-virtual {p0, p1}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 2461
    .local v0, "drawable":Landroid/graphics/drawable/Drawable;
    if-eqz v0, :cond_0

    .line 2462
    invoke-static {v0, p3}, Lcom/android/internal/policy/DecorView;->enforceNonTranslucentBackground(Landroid/graphics/drawable/Drawable;Z)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    return-object v1

    .line 2466
    .end local v0    # "drawable":Landroid/graphics/drawable/Drawable;
    :cond_0
    if-eqz p2, :cond_1

    .line 2467
    invoke-virtual {p0, p2}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 2468
    .local v0, "fallbackDrawable":Landroid/graphics/drawable/Drawable;
    if-eqz v0, :cond_1

    .line 2469
    invoke-static {v0, p3}, Lcom/android/internal/policy/DecorView;->enforceNonTranslucentBackground(Landroid/graphics/drawable/Drawable;Z)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    return-object v1

    .line 2472
    .end local v0    # "fallbackDrawable":Landroid/graphics/drawable/Drawable;
    :cond_1
    new-instance v0, Landroid/graphics/drawable/ColorDrawable;

    const/high16 v1, -0x1000000

    invoke-direct {v0, v1}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    return-object v0
.end method

.method private static getTitleSuffix(Landroid/view/WindowManager$LayoutParams;)Ljava/lang/String;
    .locals 2
    .param p0, "params"    # Landroid/view/WindowManager$LayoutParams;

    .line 2731
    if-nez p0, :cond_0

    .line 2732
    const-string v0, ""

    return-object v0

    .line 2734
    :cond_0
    invoke-virtual {p0}, Landroid/view/WindowManager$LayoutParams;->getTitle()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "\\."

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 2735
    .local v0, "split":[Ljava/lang/String;
    array-length v1, v0

    if-lez v1, :cond_1

    .line 2736
    array-length v1, v0

    add-int/lit8 v1, v1, -0x1

    aget-object v1, v0, v1

    return-object v1

    .line 2738
    :cond_1
    const-string v1, ""

    return-object v1
.end method

.method private inflateDecorCaptionView(Landroid/view/LayoutInflater;)Lcom/android/internal/widget/DecorCaptionView;
    .locals 3
    .param p1, "inflater"    # Landroid/view/LayoutInflater;

    .line 2390
    invoke-virtual {p0}, Lcom/android/internal/policy/DecorView;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 2392
    .local v0, "context":Landroid/content/Context;
    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    .line 2393
    const v1, 0x1090056

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/internal/widget/DecorCaptionView;

    .line 2395
    .local v1, "view":Lcom/android/internal/widget/DecorCaptionView;
    invoke-direct {p0, v0, v1}, Lcom/android/internal/policy/DecorView;->setDecorCaptionShade(Landroid/content/Context;Lcom/android/internal/widget/DecorCaptionView;)V

    .line 2396
    return-object v1
.end method

.method private initIsSupportRecognition()V
    .locals 3

    .line 3025
    const-string v0, "ro.nubia.device.recognition_screen"

    const-string v1, "0"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 3026
    .local v0, "isSupport":Ljava/lang/String;
    const-string v1, "sys.nubia.cts.mode"

    const-string v2, "0"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 3027
    .local v1, "isCTS":Ljava/lang/String;
    const-string v2, "1"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "0"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    iput-boolean v2, p0, Lcom/android/internal/policy/DecorView;->IS_SUPPORT_RECOGNITION:Z

    .line 3028
    return-void
.end method

.method private initResizingPaints()V
    .locals 18

    .line 2590
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/policy/DecorView;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const/4 v2, 0x0

    const v3, 0x106012b

    invoke-virtual {v1, v3, v2}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v1

    .line 2592
    .local v1, "startColor":I
    iget-object v3, v0, Lcom/android/internal/policy/DecorView;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x106012a

    invoke-virtual {v3, v4, v2}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v2

    .line 2594
    .local v2, "endColor":I
    add-int v3, v1, v2

    const/4 v4, 0x2

    div-int/2addr v3, v4

    .line 2595
    .local v3, "middleColor":I
    iget-object v5, v0, Lcom/android/internal/policy/DecorView;->mHorizontalResizeShadowPaint:Landroid/graphics/Paint;

    new-instance v14, Landroid/graphics/LinearGradient;

    iget v6, v0, Lcom/android/internal/policy/DecorView;->mResizeShadowSize:I

    int-to-float v10, v6

    const/4 v15, 0x3

    new-array v11, v15, [I

    const/16 v16, 0x0

    aput v1, v11, v16

    const/16 v17, 0x1

    aput v3, v11, v17

    aput v2, v11, v4

    new-array v12, v15, [F

    fill-array-data v12, :array_0

    sget-object v13, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v6, v14

    invoke-direct/range {v6 .. v13}, Landroid/graphics/LinearGradient;-><init>(FFFF[I[FLandroid/graphics/Shader$TileMode;)V

    invoke-virtual {v5, v14}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 2598
    iget-object v5, v0, Lcom/android/internal/policy/DecorView;->mVerticalResizeShadowPaint:Landroid/graphics/Paint;

    new-instance v14, Landroid/graphics/LinearGradient;

    iget v6, v0, Lcom/android/internal/policy/DecorView;->mResizeShadowSize:I

    int-to-float v9, v6

    new-array v11, v15, [I

    aput v1, v11, v16

    aput v3, v11, v17

    aput v2, v11, v4

    new-array v12, v15, [F

    fill-array-data v12, :array_1

    sget-object v13, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    const/4 v10, 0x0

    move-object v6, v14

    invoke-direct/range {v6 .. v13}, Landroid/graphics/LinearGradient;-><init>(FFFF[I[FLandroid/graphics/Shader$TileMode;)V

    invoke-virtual {v5, v14}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 2601
    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x3e99999a    # 0.3f
        0x3f800000    # 1.0f
    .end array-data

    :array_1
    .array-data 4
        0x0
        0x3e99999a    # 0.3f
        0x3f800000    # 1.0f
    .end array-data
.end method

.method private initializeElevation()V
    .locals 1

    .line 2644
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/policy/DecorView;->mAllowUpdateElevation:Z

    .line 2645
    invoke-direct {p0}, Lcom/android/internal/policy/DecorView;->updateElevation()V

    .line 2646
    return-void
.end method

.method private isFreeformMode()Z
    .locals 2

    .line 2302
    iget-boolean v0, p0, Lcom/android/internal/policy/DecorView;->mIsWeixin:Z

    if-eqz v0, :cond_0

    .line 2303
    invoke-static {}, Landroid/view/NubiaInput;->getInstance()Landroid/view/NubiaInput;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/NubiaInput;->isInFreeformMode()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/internal/policy/DecorView;->mIsFreeformMode:Z

    .line 2304
    iget-boolean v0, p0, Lcom/android/internal/policy/DecorView;->mIsFreeformMode:Z

    return v0

    .line 2306
    :cond_0
    nop

    .line 2307
    invoke-virtual {p0}, Lcom/android/internal/policy/DecorView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget-object v0, v0, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {v0}, Landroid/app/WindowConfiguration;->getWindowingMode()I

    move-result v0

    .line 2308
    .local v0, "windowingMode":I
    const/4 v1, 0x5

    if-ne v0, v1, :cond_1

    const/4 v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    iput-boolean v1, p0, Lcom/android/internal/policy/DecorView;->mIsFreeformMode:Z

    .line 2309
    iget-boolean v1, p0, Lcom/android/internal/policy/DecorView;->mIsFreeformMode:Z

    return v1
.end method

.method public static isNavBarToLeftEdge(II)Z
    .locals 1
    .param p0, "bottomInset"    # I
    .param p1, "leftInset"    # I

    .line 1146
    if-nez p0, :cond_0

    if-lez p1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static isNavBarToRightEdge(II)Z
    .locals 1
    .param p0, "bottomInset"    # I
    .param p1, "rightInset"    # I

    .line 1142
    if-nez p0, :cond_0

    if-lez p1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private isOutOfBounds(II)Z
    .locals 1
    .param p1, "x"    # I
    .param p2, "y"    # I

    .line 548
    const/4 v0, -0x5

    if-lt p1, v0, :cond_1

    if-lt p2, v0, :cond_1

    invoke-virtual {p0}, Lcom/android/internal/policy/DecorView;->getWidth()I

    move-result v0

    add-int/lit8 v0, v0, 0x5

    if-gt p1, v0, :cond_1

    .line 549
    invoke-virtual {p0}, Lcom/android/internal/policy/DecorView;->getHeight()I

    move-result v0

    add-int/lit8 v0, v0, 0x5

    if-le p2, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    .line 548
    :goto_1
    return v0
.end method

.method private isOutOfInnerBounds(II)Z
    .locals 1
    .param p1, "x"    # I
    .param p2, "y"    # I

    .line 544
    if-ltz p1, :cond_1

    if-ltz p2, :cond_1

    invoke-virtual {p0}, Lcom/android/internal/policy/DecorView;->getWidth()I

    move-result v0

    if-gt p1, v0, :cond_1

    invoke-virtual {p0}, Lcom/android/internal/policy/DecorView;->getHeight()I

    move-result v0

    if-le p2, v0, :cond_0

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

.method private isResizing()Z
    .locals 1

    .line 2635
    iget-object v0, p0, Lcom/android/internal/policy/DecorView;->mBackdropFrameRenderer:Lcom/android/internal/policy/BackdropFrameRenderer;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private isThemeBlackApp()Z
    .locals 3

    .line 2975
    iget-object v0, p0, Lcom/android/internal/policy/DecorView;->mWindow:Lcom/android/internal/policy/PhoneWindow;

    invoke-virtual {v0}, Lcom/android/internal/policy/PhoneWindow;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    .line 2976
    .local v0, "name":Ljava/lang/String;
    iget-object v1, p0, Lcom/android/internal/policy/DecorView;->mPackageName:Ljava/lang/String;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/internal/policy/DecorView;->mPackageName:Ljava/lang/String;

    const-string v2, "com.android.settings"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "com.android.phone"

    iget-object v2, p0, Lcom/android/internal/policy/DecorView;->mPackageName:Ljava/lang/String;

    .line 2977
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "cn.nubia.mms"

    iget-object v2, p0, Lcom/android/internal/policy/DecorView;->mPackageName:Ljava/lang/String;

    .line 2978
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "cn.nubia.contacts"

    iget-object v2, p0, Lcom/android/internal/policy/DecorView;->mPackageName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    sget-object v1, Landroid/view/BlackThemeAppUtils;->BLACK_THEME_NAVI_LIST:Ljava/util/List;

    .line 2979
    invoke-interface {v1, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2980
    :cond_0
    const/4 v1, 0x1

    return v1

    .line 2982
    :cond_1
    const/4 v1, 0x0

    return v1
.end method

.method private loadBackgroundDrawablesIfNeeded()V
    .locals 4

    .line 2314
    iget-object v0, p0, Lcom/android/internal/policy/DecorView;->mResizingBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_2

    .line 2315
    invoke-virtual {p0}, Lcom/android/internal/policy/DecorView;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/policy/DecorView;->mWindow:Lcom/android/internal/policy/PhoneWindow;

    iget v1, v1, Lcom/android/internal/policy/PhoneWindow;->mBackgroundResource:I

    iget-object v2, p0, Lcom/android/internal/policy/DecorView;->mWindow:Lcom/android/internal/policy/PhoneWindow;

    iget v2, v2, Lcom/android/internal/policy/PhoneWindow;->mBackgroundFallbackResource:I

    iget-object v3, p0, Lcom/android/internal/policy/DecorView;->mWindow:Lcom/android/internal/policy/PhoneWindow;

    .line 2317
    invoke-virtual {v3}, Lcom/android/internal/policy/PhoneWindow;->isTranslucent()Z

    move-result v3

    if-nez v3, :cond_1

    iget-object v3, p0, Lcom/android/internal/policy/DecorView;->mWindow:Lcom/android/internal/policy/PhoneWindow;

    invoke-virtual {v3}, Lcom/android/internal/policy/PhoneWindow;->isShowingWallpaper()Z

    move-result v3

    if-eqz v3, :cond_0

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v3, 0x1

    .line 2315
    :goto_1
    invoke-static {v0, v1, v2, v3}, Lcom/android/internal/policy/DecorView;->getResizingBackgroundDrawable(Landroid/content/Context;IIZ)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/policy/DecorView;->mResizingBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    .line 2318
    iget-object v0, p0, Lcom/android/internal/policy/DecorView;->mResizingBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_2

    .line 2321
    iget-object v0, p0, Lcom/android/internal/policy/DecorView;->mLogTag:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to find background drawable for PhoneWindow="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/internal/policy/DecorView;->mWindow:Lcom/android/internal/policy/PhoneWindow;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2324
    :cond_2
    iget-object v0, p0, Lcom/android/internal/policy/DecorView;->mCaptionBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_3

    .line 2325
    invoke-virtual {p0}, Lcom/android/internal/policy/DecorView;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x108025d

    invoke-virtual {v0, v1}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/policy/DecorView;->mCaptionBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    .line 2328
    :cond_3
    iget-object v0, p0, Lcom/android/internal/policy/DecorView;->mResizingBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_4

    .line 2329
    iget-object v0, p0, Lcom/android/internal/policy/DecorView;->mResizingBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getCallback()Landroid/graphics/drawable/Drawable$Callback;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/policy/DecorView;->mLastBackgroundDrawableCb:Landroid/graphics/drawable/Drawable$Callback;

    .line 2330
    iget-object v0, p0, Lcom/android/internal/policy/DecorView;->mResizingBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 2332
    :cond_4
    return-void
.end method

.method private releaseThreadedRenderer()V
    .locals 3

    .line 2621
    iget-object v0, p0, Lcom/android/internal/policy/DecorView;->mResizingBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/policy/DecorView;->mLastBackgroundDrawableCb:Landroid/graphics/drawable/Drawable$Callback;

    if-eqz v0, :cond_0

    .line 2622
    iget-object v0, p0, Lcom/android/internal/policy/DecorView;->mResizingBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    iget-object v2, p0, Lcom/android/internal/policy/DecorView;->mLastBackgroundDrawableCb:Landroid/graphics/drawable/Drawable$Callback;

    invoke-virtual {v0, v2}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 2623
    iput-object v1, p0, Lcom/android/internal/policy/DecorView;->mLastBackgroundDrawableCb:Landroid/graphics/drawable/Drawable$Callback;

    .line 2626
    :cond_0
    iget-object v0, p0, Lcom/android/internal/policy/DecorView;->mBackdropFrameRenderer:Lcom/android/internal/policy/BackdropFrameRenderer;

    if-eqz v0, :cond_1

    .line 2627
    iget-object v0, p0, Lcom/android/internal/policy/DecorView;->mBackdropFrameRenderer:Lcom/android/internal/policy/BackdropFrameRenderer;

    invoke-virtual {v0}, Lcom/android/internal/policy/BackdropFrameRenderer;->releaseRenderer()V

    .line 2628
    iput-object v1, p0, Lcom/android/internal/policy/DecorView;->mBackdropFrameRenderer:Lcom/android/internal/policy/BackdropFrameRenderer;

    .line 2630
    invoke-direct {p0}, Lcom/android/internal/policy/DecorView;->updateElevation()V

    .line 2632
    :cond_1
    return-void
.end method

.method private static setColor(Landroid/view/View;IIZZ)V
    .locals 11
    .param p0, "v"    # Landroid/view/View;
    .param p1, "color"    # I
    .param p2, "dividerColor"    # I
    .param p3, "verticalBar"    # Z
    .param p4, "seascape"    # Z

    .line 1457
    if-eqz p2, :cond_5

    .line 1458
    invoke-virtual {p0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/Pair;

    .line 1459
    .local v0, "dir":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Boolean;Ljava/lang/Boolean;>;"
    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    iget-object v3, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-ne v3, p3, :cond_1

    iget-object v3, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eq v3, p4, :cond_0

    goto :goto_0

    .line 1471
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    check-cast v3, Landroid/graphics/drawable/LayerDrawable;

    .line 1472
    .local v3, "d":Landroid/graphics/drawable/LayerDrawable;
    invoke-virtual {v3, v1}, Landroid/graphics/drawable/LayerDrawable;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    check-cast v1, Landroid/graphics/drawable/InsetDrawable;

    .line 1473
    .local v1, "inset":Landroid/graphics/drawable/InsetDrawable;
    invoke-virtual {v1}, Landroid/graphics/drawable/InsetDrawable;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v4

    check-cast v4, Landroid/graphics/drawable/ColorDrawable;

    invoke-virtual {v4, p1}, Landroid/graphics/drawable/ColorDrawable;->setColor(I)V

    .line 1474
    invoke-virtual {v3, v2}, Landroid/graphics/drawable/LayerDrawable;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    check-cast v2, Landroid/graphics/drawable/ColorDrawable;

    invoke-virtual {v2, p2}, Landroid/graphics/drawable/ColorDrawable;->setColor(I)V

    .end local v0    # "dir":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Boolean;Ljava/lang/Boolean;>;"
    .end local v1    # "inset":Landroid/graphics/drawable/InsetDrawable;
    .end local v3    # "d":Landroid/graphics/drawable/LayerDrawable;
    goto :goto_4

    .line 1460
    .restart local v0    # "dir":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Boolean;Ljava/lang/Boolean;>;"
    :cond_1
    :goto_0
    const/high16 v3, 0x3f800000    # 1.0f

    .line 1462
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v4

    .line 1461
    invoke-static {v2, v3, v4}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v3

    .line 1460
    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v3

    .line 1464
    .local v3, "size":I
    new-instance v10, Landroid/graphics/drawable/InsetDrawable;

    new-instance v5, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v5, p1}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    .line 1465
    if-eqz p3, :cond_2

    if-nez p4, :cond_2

    .line 1466
    move v6, v3

    goto :goto_1

    .line 1465
    :cond_2
    nop

    .line 1466
    move v6, v2

    :goto_1
    if-nez p3, :cond_3

    .line 1467
    move v7, v3

    goto :goto_2

    .line 1466
    :cond_3
    nop

    .line 1467
    move v7, v2

    :goto_2
    if-eqz p3, :cond_4

    if-eqz p4, :cond_4

    move v8, v3

    goto :goto_3

    :cond_4
    move v8, v2

    :goto_3
    const/4 v9, 0x0

    move-object v4, v10

    invoke-direct/range {v4 .. v9}, Landroid/graphics/drawable/InsetDrawable;-><init>(Landroid/graphics/drawable/Drawable;IIII)V

    .line 1468
    .local v4, "d":Landroid/graphics/drawable/InsetDrawable;
    new-instance v5, Landroid/graphics/drawable/LayerDrawable;

    const/4 v6, 0x2

    new-array v6, v6, [Landroid/graphics/drawable/Drawable;

    new-instance v7, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v7, p2}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    aput-object v7, v6, v2

    aput-object v4, v6, v1

    invoke-direct {v5, v6}, Landroid/graphics/drawable/LayerDrawable;-><init>([Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {p0, v5}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 1469
    new-instance v1, Landroid/util/Pair;

    invoke-static {p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-static {p4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-direct {v1, v2, v5}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {p0, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 1470
    .end local v3    # "size":I
    .end local v4    # "d":Landroid/graphics/drawable/InsetDrawable;
    nop

    .line 1476
    .end local v0    # "dir":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Boolean;Ljava/lang/Boolean;>;"
    :goto_4
    goto :goto_5

    .line 1477
    :cond_5
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 1478
    invoke-virtual {p0, p1}, Landroid/view/View;->setBackgroundColor(I)V

    .line 1480
    :goto_5
    return-void
.end method

.method private setDarkDecorCaptionShade(Lcom/android/internal/widget/DecorCaptionView;)V
    .locals 2
    .param p1, "view"    # Lcom/android/internal/widget/DecorCaptionView;

    .line 2447
    const v0, 0x10202f9

    invoke-virtual {p1, v0}, Lcom/android/internal/widget/DecorCaptionView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const v1, 0x1080261

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    .line 2449
    const v0, 0x1020204

    invoke-virtual {p1, v0}, Lcom/android/internal/widget/DecorCaptionView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const v1, 0x108025f

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    .line 2451
    return-void
.end method

.method private setDecorCaptionShade(Landroid/content/Context;Lcom/android/internal/widget/DecorCaptionView;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "view"    # Lcom/android/internal/widget/DecorCaptionView;

    .line 2402
    const v0, 0x10202f9

    invoke-virtual {p2, v0}, Lcom/android/internal/widget/DecorCaptionView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const v1, 0x30700a4

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    .line 2404
    const v0, 0x1020204

    invoke-virtual {p2, v0}, Lcom/android/internal/widget/DecorCaptionView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const v1, 0x30700a3

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    .line 2406
    return-void
.end method

.method private setGamePipOutlineProvider(Z)V
    .locals 0
    .param p1, "normal"    # Z

    .line 2263
    return-void
.end method

.method private setHandledActionMode(Landroid/view/ActionMode;)V
    .locals 2
    .param p1, "mode"    # Landroid/view/ActionMode;

    .line 1899
    invoke-virtual {p1}, Landroid/view/ActionMode;->getType()I

    move-result v0

    if-nez v0, :cond_0

    .line 1900
    invoke-direct {p0, p1}, Lcom/android/internal/policy/DecorView;->setHandledPrimaryActionMode(Landroid/view/ActionMode;)V

    goto :goto_0

    .line 1901
    :cond_0
    invoke-virtual {p1}, Landroid/view/ActionMode;->getType()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 1902
    invoke-direct {p0, p1}, Lcom/android/internal/policy/DecorView;->setHandledFloatingActionMode(Landroid/view/ActionMode;)V

    .line 1904
    :cond_1
    :goto_0
    return-void
.end method

.method private setHandledFloatingActionMode(Landroid/view/ActionMode;)V
    .locals 2
    .param p1, "mode"    # Landroid/view/ActionMode;

    .line 2061
    iput-object p1, p0, Lcom/android/internal/policy/DecorView;->mFloatingActionMode:Landroid/view/ActionMode;

    .line 2062
    iget-object v0, p0, Lcom/android/internal/policy/DecorView;->mFloatingActionMode:Landroid/view/ActionMode;

    invoke-virtual {v0}, Landroid/view/ActionMode;->invalidate()V

    .line 2063
    iget-object v0, p0, Lcom/android/internal/policy/DecorView;->mFloatingActionModeOriginatingView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/policy/DecorView;->mFloatingToolbarPreDrawListener:Landroid/view/ViewTreeObserver$OnPreDrawListener;

    .line 2064
    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 2065
    return-void
.end method

.method private setHandledPrimaryActionMode(Landroid/view/ActionMode;)V
    .locals 3
    .param p1, "mode"    # Landroid/view/ActionMode;

    .line 2002
    invoke-direct {p0}, Lcom/android/internal/policy/DecorView;->endOnGoingFadeAnimation()V

    .line 2003
    iput-object p1, p0, Lcom/android/internal/policy/DecorView;->mPrimaryActionMode:Landroid/view/ActionMode;

    .line 2004
    iget-object v0, p0, Lcom/android/internal/policy/DecorView;->mPrimaryActionMode:Landroid/view/ActionMode;

    invoke-virtual {v0}, Landroid/view/ActionMode;->invalidate()V

    .line 2005
    iget-object v0, p0, Lcom/android/internal/policy/DecorView;->mPrimaryActionModeView:Lcom/android/internal/widget/ActionBarContextView;

    iget-object v1, p0, Lcom/android/internal/policy/DecorView;->mPrimaryActionMode:Landroid/view/ActionMode;

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/ActionBarContextView;->initForMode(Landroid/view/ActionMode;)V

    .line 2006
    iget-object v0, p0, Lcom/android/internal/policy/DecorView;->mPrimaryActionModePopup:Landroid/widget/PopupWindow;

    if-eqz v0, :cond_0

    .line 2007
    iget-object v0, p0, Lcom/android/internal/policy/DecorView;->mShowPrimaryActionModePopup:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/android/internal/policy/DecorView;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 2009
    :cond_0
    invoke-virtual {p0}, Lcom/android/internal/policy/DecorView;->shouldAnimatePrimaryActionModeView()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2010
    iget-object v0, p0, Lcom/android/internal/policy/DecorView;->mPrimaryActionModeView:Lcom/android/internal/widget/ActionBarContextView;

    sget-object v1, Landroid/view/View;->ALPHA:Landroid/util/Property;

    const/4 v2, 0x2

    new-array v2, v2, [F

    fill-array-data v2, :array_0

    invoke-static {v0, v1, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/policy/DecorView;->mFadeAnim:Landroid/animation/ObjectAnimator;

    .line 2011
    iget-object v0, p0, Lcom/android/internal/policy/DecorView;->mFadeAnim:Landroid/animation/ObjectAnimator;

    new-instance v1, Lcom/android/internal/policy/DecorView$5;

    invoke-direct {v1, p0}, Lcom/android/internal/policy/DecorView$5;-><init>(Lcom/android/internal/policy/DecorView;)V

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 2023
    iget-object v0, p0, Lcom/android/internal/policy/DecorView;->mFadeAnim:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    goto :goto_0

    .line 2025
    :cond_1
    iget-object v0, p0, Lcom/android/internal/policy/DecorView;->mPrimaryActionModeView:Lcom/android/internal/widget/ActionBarContextView;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/ActionBarContextView;->setAlpha(F)V

    .line 2026
    iget-object v0, p0, Lcom/android/internal/policy/DecorView;->mPrimaryActionModeView:Lcom/android/internal/widget/ActionBarContextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/ActionBarContextView;->setVisibility(I)V

    .line 2029
    :goto_0
    iget-object v0, p0, Lcom/android/internal/policy/DecorView;->mPrimaryActionModeView:Lcom/android/internal/widget/ActionBarContextView;

    const/16 v1, 0x20

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/ActionBarContextView;->sendAccessibilityEvent(I)V

    .line 2031
    return-void

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method private setLightDecorCaptionShade(Lcom/android/internal/widget/DecorCaptionView;)V
    .locals 2
    .param p1, "view"    # Lcom/android/internal/widget/DecorCaptionView;

    .line 2440
    const v0, 0x10202f9

    invoke-virtual {p1, v0}, Lcom/android/internal/widget/DecorCaptionView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const v1, 0x1080262

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    .line 2442
    const v0, 0x1020204

    invoke-virtual {p1, v0}, Lcom/android/internal/widget/DecorCaptionView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const v1, 0x1080260

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    .line 2444
    return-void
.end method

.method private showContextMenuForChildInternal(Landroid/view/View;FF)Z
    .locals 6
    .param p1, "originalView"    # Landroid/view/View;
    .param p2, "x"    # F
    .param p3, "y"    # F

    .line 914
    iget-object v0, p0, Lcom/android/internal/policy/DecorView;->mWindow:Lcom/android/internal/policy/PhoneWindow;

    iget-object v0, v0, Lcom/android/internal/policy/PhoneWindow;->mContextMenuHelper:Lcom/android/internal/view/menu/MenuHelper;

    if-eqz v0, :cond_0

    .line 915
    iget-object v0, p0, Lcom/android/internal/policy/DecorView;->mWindow:Lcom/android/internal/policy/PhoneWindow;

    iget-object v0, v0, Lcom/android/internal/policy/PhoneWindow;->mContextMenuHelper:Lcom/android/internal/view/menu/MenuHelper;

    invoke-interface {v0}, Lcom/android/internal/view/menu/MenuHelper;->dismiss()V

    .line 916
    iget-object v0, p0, Lcom/android/internal/policy/DecorView;->mWindow:Lcom/android/internal/policy/PhoneWindow;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/android/internal/policy/PhoneWindow;->mContextMenuHelper:Lcom/android/internal/view/menu/MenuHelper;

    .line 920
    :cond_0
    iget-object v0, p0, Lcom/android/internal/policy/DecorView;->mWindow:Lcom/android/internal/policy/PhoneWindow;

    iget-object v0, v0, Lcom/android/internal/policy/PhoneWindow;->mContextMenuCallback:Lcom/android/internal/policy/PhoneWindow$PhoneWindowMenuCallback;

    .line 921
    .local v0, "callback":Lcom/android/internal/policy/PhoneWindow$PhoneWindowMenuCallback;
    iget-object v1, p0, Lcom/android/internal/policy/DecorView;->mWindow:Lcom/android/internal/policy/PhoneWindow;

    iget-object v1, v1, Lcom/android/internal/policy/PhoneWindow;->mContextMenu:Lcom/android/internal/view/menu/ContextMenuBuilder;

    if-nez v1, :cond_1

    .line 922
    iget-object v1, p0, Lcom/android/internal/policy/DecorView;->mWindow:Lcom/android/internal/policy/PhoneWindow;

    new-instance v2, Lcom/android/internal/view/menu/ContextMenuBuilder;

    invoke-virtual {p0}, Lcom/android/internal/policy/DecorView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/android/internal/view/menu/ContextMenuBuilder;-><init>(Landroid/content/Context;)V

    iput-object v2, v1, Lcom/android/internal/policy/PhoneWindow;->mContextMenu:Lcom/android/internal/view/menu/ContextMenuBuilder;

    .line 923
    iget-object v1, p0, Lcom/android/internal/policy/DecorView;->mWindow:Lcom/android/internal/policy/PhoneWindow;

    iget-object v1, v1, Lcom/android/internal/policy/PhoneWindow;->mContextMenu:Lcom/android/internal/view/menu/ContextMenuBuilder;

    invoke-virtual {v1, v0}, Lcom/android/internal/view/menu/ContextMenuBuilder;->setCallback(Lcom/android/internal/view/menu/MenuBuilder$Callback;)V

    goto :goto_0

    .line 925
    :cond_1
    iget-object v1, p0, Lcom/android/internal/policy/DecorView;->mWindow:Lcom/android/internal/policy/PhoneWindow;

    iget-object v1, v1, Lcom/android/internal/policy/PhoneWindow;->mContextMenu:Lcom/android/internal/view/menu/ContextMenuBuilder;

    invoke-virtual {v1}, Lcom/android/internal/view/menu/ContextMenuBuilder;->clearAll()V

    .line 929
    :goto_0
    invoke-static {p2}, Ljava/lang/Float;->isNaN(F)Z

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-nez v1, :cond_2

    invoke-static {p3}, Ljava/lang/Float;->isNaN(F)Z

    move-result v1

    if-nez v1, :cond_2

    move v1, v3

    goto :goto_1

    :cond_2
    move v1, v2

    .line 930
    .local v1, "isPopup":Z
    :goto_1
    if-eqz v1, :cond_3

    .line 931
    iget-object v4, p0, Lcom/android/internal/policy/DecorView;->mWindow:Lcom/android/internal/policy/PhoneWindow;

    iget-object v4, v4, Lcom/android/internal/policy/PhoneWindow;->mContextMenu:Lcom/android/internal/view/menu/ContextMenuBuilder;

    invoke-virtual {p0}, Lcom/android/internal/policy/DecorView;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v4, v5, p1, p2, p3}, Lcom/android/internal/view/menu/ContextMenuBuilder;->showPopup(Landroid/content/Context;Landroid/view/View;FF)Lcom/android/internal/view/menu/MenuPopupHelper;

    move-result-object v4

    .local v4, "helper":Lcom/android/internal/view/menu/MenuHelper;
    goto :goto_2

    .line 933
    .end local v4    # "helper":Lcom/android/internal/view/menu/MenuHelper;
    :cond_3
    iget-object v4, p0, Lcom/android/internal/policy/DecorView;->mWindow:Lcom/android/internal/policy/PhoneWindow;

    iget-object v4, v4, Lcom/android/internal/policy/PhoneWindow;->mContextMenu:Lcom/android/internal/view/menu/ContextMenuBuilder;

    invoke-virtual {p1}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v5

    invoke-virtual {v4, p1, v5}, Lcom/android/internal/view/menu/ContextMenuBuilder;->showDialog(Landroid/view/View;Landroid/os/IBinder;)Lcom/android/internal/view/menu/MenuDialogHelper;

    move-result-object v4

    .line 936
    .restart local v4    # "helper":Lcom/android/internal/view/menu/MenuHelper;
    :goto_2
    if-eqz v4, :cond_5

    .line 940
    if-nez v1, :cond_4

    move v5, v3

    goto :goto_3

    :cond_4
    move v5, v2

    :goto_3
    invoke-virtual {v0, v5}, Lcom/android/internal/policy/PhoneWindow$PhoneWindowMenuCallback;->setShowDialogForSubmenu(Z)V

    .line 941
    invoke-interface {v4, v0}, Lcom/android/internal/view/menu/MenuHelper;->setPresenterCallback(Lcom/android/internal/view/menu/MenuPresenter$Callback;)V

    .line 944
    :cond_5
    iget-object v5, p0, Lcom/android/internal/policy/DecorView;->mWindow:Lcom/android/internal/policy/PhoneWindow;

    iput-object v4, v5, Lcom/android/internal/policy/PhoneWindow;->mContextMenuHelper:Lcom/android/internal/view/menu/MenuHelper;

    .line 945
    if-eqz v4, :cond_6

    move v2, v3

    nop

    :cond_6
    return v2
.end method

.method private startActionMode(Landroid/view/View;Landroid/view/ActionMode$Callback;I)Landroid/view/ActionMode;
    .locals 4
    .param p1, "originatingView"    # Landroid/view/View;
    .param p2, "callback"    # Landroid/view/ActionMode$Callback;
    .param p3, "type"    # I

    .line 972
    new-instance v0, Lcom/android/internal/policy/DecorView$ActionModeCallback2Wrapper;

    invoke-direct {v0, p0, p2}, Lcom/android/internal/policy/DecorView$ActionModeCallback2Wrapper;-><init>(Lcom/android/internal/policy/DecorView;Landroid/view/ActionMode$Callback;)V

    .line 973
    .local v0, "wrappedCallback":Landroid/view/ActionMode$Callback2;
    const/4 v1, 0x0

    .line 974
    .local v1, "mode":Landroid/view/ActionMode;
    iget-object v2, p0, Lcom/android/internal/policy/DecorView;->mWindow:Lcom/android/internal/policy/PhoneWindow;

    invoke-virtual {v2}, Lcom/android/internal/policy/PhoneWindow;->getCallback()Landroid/view/Window$Callback;

    move-result-object v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/internal/policy/DecorView;->mWindow:Lcom/android/internal/policy/PhoneWindow;

    invoke-virtual {v2}, Lcom/android/internal/policy/PhoneWindow;->isDestroyed()Z

    move-result v2

    if-nez v2, :cond_0

    .line 976
    :try_start_0
    iget-object v2, p0, Lcom/android/internal/policy/DecorView;->mWindow:Lcom/android/internal/policy/PhoneWindow;

    invoke-virtual {v2}, Lcom/android/internal/policy/PhoneWindow;->getCallback()Landroid/view/Window$Callback;

    move-result-object v2

    invoke-interface {v2, v0, p3}, Landroid/view/Window$Callback;->onWindowStartingActionMode(Landroid/view/ActionMode$Callback;I)Landroid/view/ActionMode;

    move-result-object v2
    :try_end_0
    .catch Ljava/lang/AbstractMethodError; {:try_start_0 .. :try_end_0} :catch_0

    move-object v1, v2

    .line 987
    goto :goto_0

    .line 977
    :catch_0
    move-exception v2

    .line 979
    .local v2, "ame":Ljava/lang/AbstractMethodError;
    if-nez p3, :cond_0

    .line 981
    :try_start_1
    iget-object v3, p0, Lcom/android/internal/policy/DecorView;->mWindow:Lcom/android/internal/policy/PhoneWindow;

    invoke-virtual {v3}, Lcom/android/internal/policy/PhoneWindow;->getCallback()Landroid/view/Window$Callback;

    move-result-object v3

    invoke-interface {v3, v0}, Landroid/view/Window$Callback;->onWindowStartingActionMode(Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode;

    move-result-object v3
    :try_end_1
    .catch Ljava/lang/AbstractMethodError; {:try_start_1 .. :try_end_1} :catch_1

    move-object v1, v3

    .line 985
    goto :goto_0

    .line 983
    :catch_1
    move-exception v3

    .line 989
    .end local v2    # "ame":Ljava/lang/AbstractMethodError;
    :cond_0
    :goto_0
    if-eqz v1, :cond_3

    .line 990
    invoke-virtual {v1}, Landroid/view/ActionMode;->getType()I

    move-result v2

    if-nez v2, :cond_1

    .line 991
    invoke-direct {p0}, Lcom/android/internal/policy/DecorView;->cleanupPrimaryActionMode()V

    .line 992
    iput-object v1, p0, Lcom/android/internal/policy/DecorView;->mPrimaryActionMode:Landroid/view/ActionMode;

    goto :goto_1

    .line 993
    :cond_1
    invoke-virtual {v1}, Landroid/view/ActionMode;->getType()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_5

    .line 994
    iget-object v2, p0, Lcom/android/internal/policy/DecorView;->mFloatingActionMode:Landroid/view/ActionMode;

    if-eqz v2, :cond_2

    .line 995
    iget-object v2, p0, Lcom/android/internal/policy/DecorView;->mFloatingActionMode:Landroid/view/ActionMode;

    invoke-virtual {v2}, Landroid/view/ActionMode;->finish()V

    .line 997
    :cond_2
    iput-object v1, p0, Lcom/android/internal/policy/DecorView;->mFloatingActionMode:Landroid/view/ActionMode;

    goto :goto_1

    .line 1000
    :cond_3
    invoke-direct {p0, p3, v0, p1}, Lcom/android/internal/policy/DecorView;->createActionMode(ILandroid/view/ActionMode$Callback2;Landroid/view/View;)Landroid/view/ActionMode;

    move-result-object v1

    .line 1001
    if-eqz v1, :cond_4

    invoke-virtual {v1}, Landroid/view/ActionMode;->getMenu()Landroid/view/Menu;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/view/ActionMode$Callback2;->onCreateActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 1002
    invoke-direct {p0, v1}, Lcom/android/internal/policy/DecorView;->setHandledActionMode(Landroid/view/ActionMode;)V

    goto :goto_1

    .line 1004
    :cond_4
    const/4 v1, 0x0

    .line 1007
    :cond_5
    :goto_1
    if-eqz v1, :cond_6

    iget-object v2, p0, Lcom/android/internal/policy/DecorView;->mWindow:Lcom/android/internal/policy/PhoneWindow;

    invoke-virtual {v2}, Lcom/android/internal/policy/PhoneWindow;->getCallback()Landroid/view/Window$Callback;

    move-result-object v2

    if-eqz v2, :cond_6

    iget-object v2, p0, Lcom/android/internal/policy/DecorView;->mWindow:Lcom/android/internal/policy/PhoneWindow;

    invoke-virtual {v2}, Lcom/android/internal/policy/PhoneWindow;->isDestroyed()Z

    move-result v2

    if-nez v2, :cond_6

    .line 1009
    :try_start_2
    iget-object v2, p0, Lcom/android/internal/policy/DecorView;->mWindow:Lcom/android/internal/policy/PhoneWindow;

    invoke-virtual {v2}, Lcom/android/internal/policy/PhoneWindow;->getCallback()Landroid/view/Window$Callback;

    move-result-object v2

    invoke-interface {v2, v1}, Landroid/view/Window$Callback;->onActionModeStarted(Landroid/view/ActionMode;)V
    :try_end_2
    .catch Ljava/lang/AbstractMethodError; {:try_start_2 .. :try_end_2} :catch_2

    .line 1012
    goto :goto_2

    .line 1010
    :catch_2
    move-exception v2

    .line 1014
    :cond_6
    :goto_2
    return-object v1
.end method

.method private updateAvailableWidth()V
    .locals 4

    .line 2747
    invoke-virtual {p0}, Lcom/android/internal/policy/DecorView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 2748
    .local v0, "res":Landroid/content/res/Resources;
    nop

    .line 2749
    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v1, v1, Landroid/content/res/Configuration;->screenWidthDp:I

    int-to-float v1, v1

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    .line 2748
    const/4 v3, 0x1

    invoke-static {v3, v1, v2}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v1

    iput v1, p0, Lcom/android/internal/policy/DecorView;->mAvailableWidth:F

    .line 2750
    return-void
.end method

.method private updateColorViewInt(Lcom/android/internal/policy/DecorView$ColorViewState;IIIIZZIZZ)V
    .locals 27
    .param p1, "state"    # Lcom/android/internal/policy/DecorView$ColorViewState;
    .param p2, "sysUiVis"    # I
    .param p3, "color"    # I
    .param p4, "dividerColor"    # I
    .param p5, "size"    # I
    .param p6, "verticalBar"    # Z
    .param p7, "seascape"    # Z
    .param p8, "sideMargin"    # I
    .param p9, "animate"    # Z
    .param p10, "force"    # Z

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p3

    move/from16 v3, p4

    move/from16 v4, p6

    move/from16 v5, p7

    move/from16 v6, p8

    .line 1327
    move/from16 v7, p10

    iget-object v8, v1, Lcom/android/internal/policy/DecorView$ColorViewState;->attributes:Lcom/android/internal/policy/DecorView$ColorViewAttributes;

    iget-object v9, v0, Lcom/android/internal/policy/DecorView;->mWindow:Lcom/android/internal/policy/PhoneWindow;

    invoke-virtual {v9}, Lcom/android/internal/policy/PhoneWindow;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v9

    iget v9, v9, Landroid/view/WindowManager$LayoutParams;->flags:I

    move/from16 v10, p2

    invoke-virtual {v8, v10, v9, v7}, Lcom/android/internal/policy/DecorView$ColorViewAttributes;->isPresent(IIZ)Z

    move-result v8

    iput-boolean v8, v1, Lcom/android/internal/policy/DecorView$ColorViewState;->present:Z

    .line 1328
    iget-object v8, v1, Lcom/android/internal/policy/DecorView$ColorViewState;->attributes:Lcom/android/internal/policy/DecorView$ColorViewAttributes;

    iget-boolean v9, v1, Lcom/android/internal/policy/DecorView$ColorViewState;->present:Z

    iget-object v11, v0, Lcom/android/internal/policy/DecorView;->mWindow:Lcom/android/internal/policy/PhoneWindow;

    .line 1329
    invoke-virtual {v11}, Lcom/android/internal/policy/PhoneWindow;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v11

    iget v11, v11, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 1328
    invoke-virtual {v8, v9, v2, v11, v7}, Lcom/android/internal/policy/DecorView$ColorViewAttributes;->isVisible(ZIIZ)Z

    move-result v8

    .line 1330
    .local v8, "show":Z
    if-eqz v8, :cond_0

    invoke-direct/range {p0 .. p0}, Lcom/android/internal/policy/DecorView;->isResizing()Z

    move-result v12

    if-nez v12, :cond_0

    if-lez p5, :cond_0

    const/4 v13, 0x1

    goto :goto_0

    :cond_0
    const/4 v13, 0x0

    .line 1332
    .local v13, "showView":Z
    :goto_0
    const/4 v14, 0x0

    .line 1333
    .local v14, "visibilityChanged":Z
    iget-object v15, v1, Lcom/android/internal/policy/DecorView$ColorViewState;->view:Landroid/view/View;

    .line 1335
    .local v15, "view":Landroid/view/View;
    const/16 v16, -0x1

    if-eqz v4, :cond_1

    move/from16 v17, v16

    goto :goto_1

    :cond_1
    move/from16 v17, p5

    :goto_1
    move/from16 v18, v17

    .line 1336
    .local v18, "resolvedHeight":I
    if-eqz v4, :cond_2

    move/from16 v16, p5

    nop

    :cond_2
    move/from16 v19, v16

    .line 1337
    .local v19, "resolvedWidth":I
    if-eqz v4, :cond_4

    .line 1338
    if-eqz v5, :cond_3

    iget-object v9, v1, Lcom/android/internal/policy/DecorView$ColorViewState;->attributes:Lcom/android/internal/policy/DecorView$ColorViewAttributes;

    iget v9, v9, Lcom/android/internal/policy/DecorView$ColorViewAttributes;->seascapeGravity:I

    goto :goto_2

    :cond_3
    iget-object v9, v1, Lcom/android/internal/policy/DecorView$ColorViewState;->attributes:Lcom/android/internal/policy/DecorView$ColorViewAttributes;

    iget v9, v9, Lcom/android/internal/policy/DecorView$ColorViewAttributes;->horizontalGravity:I

    goto :goto_2

    .line 1339
    :cond_4
    iget-object v9, v1, Lcom/android/internal/policy/DecorView$ColorViewState;->attributes:Lcom/android/internal/policy/DecorView$ColorViewAttributes;

    iget v9, v9, Lcom/android/internal/policy/DecorView$ColorViewAttributes;->verticalGravity:I

    .line 1341
    .local v9, "resolvedGravity":I
    :goto_2
    const/high16 v16, -0x1000000

    if-nez v15, :cond_b

    .line 1342
    if-eqz v13, :cond_a

    .line 1343
    new-instance v11, Landroid/view/View;

    iget-object v7, v0, Lcom/android/internal/policy/DecorView;->mContext:Landroid/content/Context;

    invoke-direct {v11, v7}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    move-object v15, v11

    iput-object v11, v1, Lcom/android/internal/policy/DecorView$ColorViewState;->view:Landroid/view/View;

    .line 1348
    const-string v7, "android:navigation:background"

    iget-object v11, v1, Lcom/android/internal/policy/DecorView$ColorViewState;->attributes:Lcom/android/internal/policy/DecorView$ColorViewAttributes;

    iget-object v11, v11, Lcom/android/internal/policy/DecorView$ColorViewAttributes;->transitionName:Ljava/lang/String;

    invoke-virtual {v7, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_7

    .line 1349
    iget-object v7, v0, Lcom/android/internal/policy/DecorView;->mWindow:Lcom/android/internal/policy/PhoneWindow;

    iget-boolean v7, v7, Lcom/android/internal/policy/PhoneWindow;->mForcedNavigationBarColorOfNubia:Z

    if-eqz v7, :cond_5

    iget-object v7, v0, Lcom/android/internal/policy/DecorView;->mWindow:Lcom/android/internal/policy/PhoneWindow;

    iget v7, v7, Lcom/android/internal/policy/PhoneWindow;->mNavigationBarColorOfNubia:I

    and-int v7, v7, v16

    if-eqz v7, :cond_5

    .line 1350
    iget-object v7, v0, Lcom/android/internal/policy/DecorView;->mWindow:Lcom/android/internal/policy/PhoneWindow;

    iget v7, v7, Lcom/android/internal/policy/PhoneWindow;->mNavigationBarColorOfNubia:I

    invoke-static {v15, v7, v3, v4, v5}, Lcom/android/internal/policy/DecorView;->setColor(Landroid/view/View;IIZZ)V

    goto :goto_3

    .line 1352
    :cond_5
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/policy/DecorView;->isThemeBlackApp()Z

    move-result v7

    if-eqz v7, :cond_6

    .line 1353
    const v7, 0x307006d

    invoke-virtual {v15, v7}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_3

    .line 1355
    :cond_6
    iget-object v7, v0, Lcom/android/internal/policy/DecorView;->mPackageName:Ljava/lang/String;

    if-eqz v7, :cond_8

    .line 1356
    const v7, 0x307006c

    invoke-virtual {v15, v7}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_3

    .line 1360
    :cond_7
    invoke-virtual {v15, v2}, Landroid/view/View;->setBackgroundColor(I)V

    .line 1361
    iget-boolean v7, v0, Lcom/android/internal/policy/DecorView;->mShowStatusBarBackgroundPicture:Z

    if-eqz v7, :cond_8

    .line 1362
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/policy/DecorView;->getContext()Landroid/content/Context;

    move-result-object v7

    const v11, 0x3070139

    invoke-virtual {v7, v11}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    invoke-virtual {v15, v7}, Landroid/view/View;->setForeground(Landroid/graphics/drawable/Drawable;)V

    .line 1367
    :cond_8
    :goto_3
    iget-object v7, v1, Lcom/android/internal/policy/DecorView$ColorViewState;->attributes:Lcom/android/internal/policy/DecorView$ColorViewAttributes;

    iget-object v7, v7, Lcom/android/internal/policy/DecorView$ColorViewAttributes;->transitionName:Ljava/lang/String;

    invoke-virtual {v15, v7}, Landroid/view/View;->setTransitionName(Ljava/lang/String;)V

    .line 1368
    iget-object v7, v1, Lcom/android/internal/policy/DecorView$ColorViewState;->attributes:Lcom/android/internal/policy/DecorView$ColorViewAttributes;

    iget v7, v7, Lcom/android/internal/policy/DecorView$ColorViewAttributes;->id:I

    invoke-virtual {v15, v7}, Landroid/view/View;->setId(I)V

    .line 1369
    const/4 v14, 0x1

    .line 1370
    const/4 v7, 0x4

    invoke-virtual {v15, v7}, Landroid/view/View;->setVisibility(I)V

    .line 1371
    const/4 v11, 0x0

    iput v11, v1, Lcom/android/internal/policy/DecorView$ColorViewState;->targetVisibility:I

    .line 1373
    new-instance v11, Landroid/widget/FrameLayout$LayoutParams;

    move/from16 v7, v18

    move/from16 v10, v19

    invoke-direct {v11, v10, v7, v9}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    .line 1375
    .end local v18    # "resolvedHeight":I
    .end local v19    # "resolvedWidth":I
    .local v7, "resolvedHeight":I
    .local v10, "resolvedWidth":I
    .local v11, "lp":Landroid/widget/FrameLayout$LayoutParams;
    if-eqz v5, :cond_9

    .line 1376
    iput v6, v11, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    goto :goto_4

    .line 1378
    :cond_9
    iput v6, v11, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    .line 1380
    :goto_4
    invoke-virtual {v0, v15, v11}, Lcom/android/internal/policy/DecorView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1381
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/policy/DecorView;->updateColorViewTranslations()V

    .line 1382
    .end local v11    # "lp":Landroid/widget/FrameLayout$LayoutParams;
    goto/16 :goto_b

    .line 1425
    .end local v7    # "resolvedHeight":I
    .end local v10    # "resolvedWidth":I
    .restart local v18    # "resolvedHeight":I
    .restart local v19    # "resolvedWidth":I
    :cond_a
    move/from16 v7, v18

    move/from16 v10, v19

    .end local v18    # "resolvedHeight":I
    .end local v19    # "resolvedWidth":I
    .restart local v7    # "resolvedHeight":I
    .restart local v10    # "resolvedWidth":I
    goto/16 :goto_b

    .line 1384
    .end local v7    # "resolvedHeight":I
    .end local v10    # "resolvedWidth":I
    .restart local v18    # "resolvedHeight":I
    .restart local v19    # "resolvedWidth":I
    :cond_b
    move/from16 v7, v18

    move/from16 v10, v19

    .end local v18    # "resolvedHeight":I
    .end local v19    # "resolvedWidth":I
    .restart local v7    # "resolvedHeight":I
    .restart local v10    # "resolvedWidth":I
    if-eqz v13, :cond_c

    const/4 v11, 0x0

    goto :goto_5

    :cond_c
    const/4 v11, 0x4

    .line 1385
    .local v11, "vis":I
    :goto_5
    iget v6, v1, Lcom/android/internal/policy/DecorView$ColorViewState;->targetVisibility:I

    if-eq v6, v11, :cond_d

    const/16 v20, 0x1

    goto :goto_6

    :cond_d
    const/16 v20, 0x0

    :goto_6
    move/from16 v14, v20

    .line 1386
    iput v11, v1, Lcom/android/internal/policy/DecorView$ColorViewState;->targetVisibility:I

    .line 1387
    invoke-virtual {v15}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    check-cast v6, Landroid/widget/FrameLayout$LayoutParams;

    .line 1388
    .local v6, "lp":Landroid/widget/FrameLayout$LayoutParams;
    if-eqz v5, :cond_e

    const/16 v17, 0x0

    goto :goto_7

    :cond_e
    move/from16 v17, p8

    :goto_7
    move/from16 v21, v17

    .line 1389
    .local v21, "rightMargin":I
    if-eqz v5, :cond_f

    move/from16 v17, p8

    goto :goto_8

    :cond_f
    const/16 v17, 0x0

    :goto_8
    move/from16 v22, v17

    .line 1390
    .local v22, "leftMargin":I
    move/from16 v23, v11

    iget v11, v6, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .end local v11    # "vis":I
    .local v23, "vis":I
    if-ne v11, v7, :cond_11

    iget v11, v6, Landroid/widget/FrameLayout$LayoutParams;->width:I

    if-ne v11, v10, :cond_11

    iget v11, v6, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    if-ne v11, v9, :cond_11

    iget v11, v6, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    move/from16 v12, v21

    if-ne v11, v12, :cond_10

    .end local v21    # "rightMargin":I
    .local v12, "rightMargin":I
    iget v11, v6, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    move/from16 v24, v14

    move/from16 v14, v22

    if-eq v11, v14, :cond_12

    .end local v22    # "leftMargin":I
    .local v14, "leftMargin":I
    .local v24, "visibilityChanged":Z
    goto :goto_9

    .line 1393
    .end local v24    # "visibilityChanged":Z
    .local v14, "visibilityChanged":Z
    .restart local v22    # "leftMargin":I
    :cond_10
    move/from16 v24, v14

    move/from16 v14, v22

    .end local v22    # "leftMargin":I
    .local v14, "leftMargin":I
    .restart local v24    # "visibilityChanged":Z
    goto :goto_9

    .end local v12    # "rightMargin":I
    .end local v24    # "visibilityChanged":Z
    .local v14, "visibilityChanged":Z
    .restart local v21    # "rightMargin":I
    .restart local v22    # "leftMargin":I
    :cond_11
    move/from16 v24, v14

    move/from16 v12, v21

    move/from16 v14, v22

    .end local v21    # "rightMargin":I
    .end local v22    # "leftMargin":I
    .restart local v12    # "rightMargin":I
    .local v14, "leftMargin":I
    .restart local v24    # "visibilityChanged":Z
    :goto_9
    iput v7, v6, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 1394
    iput v10, v6, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 1395
    iput v9, v6, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 1396
    iput v12, v6, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    .line 1397
    iput v14, v6, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    .line 1398
    invoke-virtual {v15, v6}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1400
    :cond_12
    if-eqz v13, :cond_16

    .line 1405
    const-string v11, "android:navigation:background"

    move-object/from16 v25, v6

    iget-object v6, v1, Lcom/android/internal/policy/DecorView$ColorViewState;->attributes:Lcom/android/internal/policy/DecorView$ColorViewAttributes;

    .end local v6    # "lp":Landroid/widget/FrameLayout$LayoutParams;
    .local v25, "lp":Landroid/widget/FrameLayout$LayoutParams;
    iget-object v6, v6, Lcom/android/internal/policy/DecorView$ColorViewAttributes;->transitionName:Ljava/lang/String;

    invoke-virtual {v11, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_15

    .line 1406
    iget-object v6, v0, Lcom/android/internal/policy/DecorView;->mWindow:Lcom/android/internal/policy/PhoneWindow;

    iget-boolean v6, v6, Lcom/android/internal/policy/PhoneWindow;->mForcedNavigationBarColorOfNubia:Z

    if-eqz v6, :cond_13

    iget-object v6, v0, Lcom/android/internal/policy/DecorView;->mWindow:Lcom/android/internal/policy/PhoneWindow;

    iget v6, v6, Lcom/android/internal/policy/PhoneWindow;->mNavigationBarColorOfNubia:I

    and-int v6, v6, v16

    if-eqz v6, :cond_13

    .line 1407
    iget-object v6, v0, Lcom/android/internal/policy/DecorView;->mWindow:Lcom/android/internal/policy/PhoneWindow;

    iget v6, v6, Lcom/android/internal/policy/PhoneWindow;->mNavigationBarColorOfNubia:I

    invoke-static {v15, v6, v3, v4, v5}, Lcom/android/internal/policy/DecorView;->setColor(Landroid/view/View;IIZZ)V

    goto :goto_a

    .line 1409
    :cond_13
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/policy/DecorView;->isThemeBlackApp()Z

    move-result v6

    if-eqz v6, :cond_14

    .line 1410
    const v6, 0x307006d

    invoke-virtual {v15, v6}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_a

    .line 1412
    :cond_14
    iget-object v6, v0, Lcom/android/internal/policy/DecorView;->mPackageName:Ljava/lang/String;

    if-eqz v6, :cond_16

    .line 1413
    const v6, 0x307006c

    invoke-virtual {v15, v6}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_a

    .line 1417
    :cond_15
    invoke-virtual {v15, v2}, Landroid/view/View;->setBackgroundColor(I)V

    .line 1418
    iget-boolean v6, v0, Lcom/android/internal/policy/DecorView;->mShowStatusBarBackgroundPicture:Z

    if-eqz v6, :cond_16

    .line 1419
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/policy/DecorView;->getContext()Landroid/content/Context;

    move-result-object v6

    const v11, 0x3070139

    invoke-virtual {v6, v11}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    invoke-virtual {v15, v6}, Landroid/view/View;->setForeground(Landroid/graphics/drawable/Drawable;)V

    .line 1425
    .end local v12    # "rightMargin":I
    .end local v14    # "leftMargin":I
    .end local v23    # "vis":I
    .end local v25    # "lp":Landroid/widget/FrameLayout$LayoutParams;
    :cond_16
    :goto_a
    move/from16 v14, v24

    .end local v24    # "visibilityChanged":Z
    .local v14, "visibilityChanged":Z
    :goto_b
    if-eqz v14, :cond_1b

    .line 1426
    invoke-virtual {v15}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/ViewPropertyAnimator;->cancel()V

    .line 1427
    if-eqz p9, :cond_19

    invoke-direct/range {p0 .. p0}, Lcom/android/internal/policy/DecorView;->isResizing()Z

    move-result v12

    if-nez v12, :cond_19

    .line 1428
    const/4 v12, 0x0

    if-eqz v13, :cond_18

    .line 1429
    invoke-virtual {v15}, Landroid/view/View;->getVisibility()I

    move-result v16

    if-eqz v16, :cond_17

    .line 1430
    const/4 v6, 0x0

    invoke-virtual {v15, v6}, Landroid/view/View;->setVisibility(I)V

    .line 1431
    invoke-virtual {v15, v12}, Landroid/view/View;->setAlpha(F)V

    .line 1433
    :cond_17
    invoke-virtual {v15}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v6

    const/high16 v12, 0x3f800000    # 1.0f

    invoke-virtual {v6, v12}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v6

    iget-object v12, v0, Lcom/android/internal/policy/DecorView;->mShowInterpolator:Landroid/view/animation/Interpolator;

    invoke-virtual {v6, v12}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v6

    iget v12, v0, Lcom/android/internal/policy/DecorView;->mBarEnterExitDuration:I

    int-to-long v3, v12

    .line 1434
    invoke-virtual {v6, v3, v4}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    goto :goto_d

    .line 1436
    :cond_18
    invoke-virtual {v15}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    invoke-virtual {v3, v12}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    iget-object v4, v0, Lcom/android/internal/policy/DecorView;->mHideInterpolator:Landroid/view/animation/Interpolator;

    invoke-virtual {v3, v4}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    iget v4, v0, Lcom/android/internal/policy/DecorView;->mBarEnterExitDuration:I

    int-to-long v4, v4

    .line 1437
    invoke-virtual {v3, v4, v5}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    new-instance v4, Lcom/android/internal/policy/DecorView$3;

    invoke-direct {v4, v0, v1}, Lcom/android/internal/policy/DecorView$3;-><init>(Lcom/android/internal/policy/DecorView;Lcom/android/internal/policy/DecorView$ColorViewState;)V

    .line 1438
    invoke-virtual {v3, v4}, Landroid/view/ViewPropertyAnimator;->withEndAction(Ljava/lang/Runnable;)Landroid/view/ViewPropertyAnimator;

    goto :goto_d

    .line 1447
    :cond_19
    const/4 v6, 0x0

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-virtual {v15, v3}, Landroid/view/View;->setAlpha(F)V

    .line 1448
    if-eqz v13, :cond_1a

    goto :goto_c

    :cond_1a
    const/4 v6, 0x4

    :goto_c
    invoke-virtual {v15, v6}, Landroid/view/View;->setVisibility(I)V

    .line 1451
    :cond_1b
    :goto_d
    iput-boolean v8, v1, Lcom/android/internal/policy/DecorView$ColorViewState;->visible:Z

    .line 1452
    iput v2, v1, Lcom/android/internal/policy/DecorView$ColorViewState;->color:I

    .line 1453
    return-void
.end method

.method private updateColorViewTranslations()V
    .locals 4

    .line 1485
    iget v0, p0, Lcom/android/internal/policy/DecorView;->mRootScrollY:I

    .line 1486
    .local v0, "rootScrollY":I
    iget-object v1, p0, Lcom/android/internal/policy/DecorView;->mStatusColorViewState:Lcom/android/internal/policy/DecorView$ColorViewState;

    iget-object v1, v1, Lcom/android/internal/policy/DecorView$ColorViewState;->view:Landroid/view/View;

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    .line 1487
    iget-object v1, p0, Lcom/android/internal/policy/DecorView;->mStatusColorViewState:Lcom/android/internal/policy/DecorView$ColorViewState;

    iget-object v1, v1, Lcom/android/internal/policy/DecorView$ColorViewState;->view:Landroid/view/View;

    if-lez v0, :cond_0

    int-to-float v3, v0

    goto :goto_0

    :cond_0
    move v3, v2

    :goto_0
    invoke-virtual {v1, v3}, Landroid/view/View;->setTranslationY(F)V

    .line 1489
    :cond_1
    iget-object v1, p0, Lcom/android/internal/policy/DecorView;->mNavigationColorViewState:Lcom/android/internal/policy/DecorView$ColorViewState;

    iget-object v1, v1, Lcom/android/internal/policy/DecorView$ColorViewState;->view:Landroid/view/View;

    if-eqz v1, :cond_3

    .line 1490
    iget-object v1, p0, Lcom/android/internal/policy/DecorView;->mNavigationColorViewState:Lcom/android/internal/policy/DecorView$ColorViewState;

    iget-object v1, v1, Lcom/android/internal/policy/DecorView$ColorViewState;->view:Landroid/view/View;

    if-gez v0, :cond_2

    int-to-float v2, v0

    nop

    :cond_2
    invoke-virtual {v1, v2}, Landroid/view/View;->setTranslationY(F)V

    .line 1492
    :cond_3
    return-void
.end method

.method private updateElevation()V
    .locals 8

    .line 2649
    const/4 v0, 0x0

    .line 2650
    .local v0, "elevation":F
    iget-boolean v1, p0, Lcom/android/internal/policy/DecorView;->mElevationAdjustedForStack:Z

    .line 2653
    .local v1, "wasAdjustedForStack":Z
    nop

    .line 2654
    invoke-virtual {p0}, Lcom/android/internal/policy/DecorView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    iget-object v2, v2, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {v2}, Landroid/app/WindowConfiguration;->getWindowingMode()I

    move-result v2

    .line 2655
    .local v2, "windowingMode":I
    const/4 v3, 0x0

    const/4 v4, 0x1

    const/high16 v5, 0x40a00000    # 5.0f

    const/4 v6, 0x5

    if-eq v2, v6, :cond_0

    .line 2657
    invoke-direct {p0}, Lcom/android/internal/policy/DecorView;->isFreeformMode()Z

    move-result v6

    if-eqz v6, :cond_4

    .line 2659
    :cond_0
    invoke-direct {p0}, Lcom/android/internal/policy/DecorView;->isResizing()Z

    move-result v6

    if-nez v6, :cond_4

    .line 2660
    invoke-virtual {p0}, Lcom/android/internal/policy/DecorView;->hasWindowFocus()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 2661
    const/high16 v5, 0x41a00000    # 20.0f

    nop

    :cond_1
    move v0, v5

    .line 2666
    iget-boolean v5, p0, Lcom/android/internal/policy/DecorView;->mAllowUpdateElevation:Z

    if-nez v5, :cond_2

    .line 2667
    const/high16 v0, 0x41a00000    # 20.0f

    .line 2670
    :cond_2
    invoke-direct {p0, v0}, Lcom/android/internal/policy/DecorView;->dipToPx(F)F

    move-result v0

    .line 2671
    iput-boolean v4, p0, Lcom/android/internal/policy/DecorView;->mElevationAdjustedForStack:Z

    .line 2673
    iget-object v4, p0, Lcom/android/internal/policy/DecorView;->mWindow:Lcom/android/internal/policy/PhoneWindow;

    invoke-virtual {v4}, Lcom/android/internal/policy/PhoneWindow;->getContext()Landroid/content/Context;

    move-result-object v4

    if-eqz v4, :cond_6

    .line 2674
    iget-object v4, p0, Lcom/android/internal/policy/DecorView;->mWindow:Lcom/android/internal/policy/PhoneWindow;

    invoke-virtual {v4}, Lcom/android/internal/policy/PhoneWindow;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    .line 2675
    .local v4, "activityName":Ljava/lang/String;
    iget-object v5, p0, Lcom/android/internal/policy/DecorView;->mLogTag:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "updateElevation "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2676
    const-string v5, "offline.ui"

    invoke-virtual {v4, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 2677
    iput-boolean v3, p0, Lcom/android/internal/policy/DecorView;->mElevationAdjustedForStack:Z

    .line 2679
    .end local v4    # "activityName":Ljava/lang/String;
    :cond_3
    goto :goto_0

    .line 2681
    :cond_4
    const/4 v6, 0x2

    if-ne v2, v6, :cond_5

    .line 2682
    invoke-direct {p0, v5}, Lcom/android/internal/policy/DecorView;->dipToPx(F)F

    move-result v0

    .line 2683
    iput-boolean v4, p0, Lcom/android/internal/policy/DecorView;->mElevationAdjustedForStack:Z

    goto :goto_0

    .line 2685
    :cond_5
    iput-boolean v3, p0, Lcom/android/internal/policy/DecorView;->mElevationAdjustedForStack:Z

    .line 2689
    :cond_6
    :goto_0
    iget-boolean v3, p0, Lcom/android/internal/policy/DecorView;->mIsFreeformMode:Z

    if-eqz v3, :cond_7

    .line 2690
    return-void

    .line 2696
    :cond_7
    if-nez v1, :cond_8

    iget-boolean v3, p0, Lcom/android/internal/policy/DecorView;->mElevationAdjustedForStack:Z

    if-eqz v3, :cond_9

    .line 2697
    :cond_8
    invoke-virtual {p0}, Lcom/android/internal/policy/DecorView;->getElevation()F

    move-result v3

    cmpl-float v3, v3, v0

    if-eqz v3, :cond_9

    .line 2698
    iget-object v3, p0, Lcom/android/internal/policy/DecorView;->mWindow:Lcom/android/internal/policy/PhoneWindow;

    invoke-virtual {v3, v0}, Lcom/android/internal/policy/PhoneWindow;->setElevation(F)V

    .line 2700
    :cond_9
    return-void
.end method

.method private updateNavigationGuard(Landroid/view/WindowInsets;)Landroid/view/WindowInsets;
    .locals 6
    .param p1, "insets"    # Landroid/view/WindowInsets;

    .line 1568
    iget-object v0, p0, Lcom/android/internal/policy/DecorView;->mWindow:Lcom/android/internal/policy/PhoneWindow;

    invoke-virtual {v0}, Lcom/android/internal/policy/PhoneWindow;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v1, 0x7db

    if-ne v0, v1, :cond_4

    iget-object v0, p0, Lcom/android/internal/policy/DecorView;->mWindow:Lcom/android/internal/policy/PhoneWindow;

    .line 1569
    invoke-virtual {v0}, Lcom/android/internal/policy/PhoneWindow;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    const/high16 v1, 0x2000000

    and-int/2addr v0, v1

    if-nez v0, :cond_4

    .line 1571
    iget-object v0, p0, Lcom/android/internal/policy/DecorView;->mWindow:Lcom/android/internal/policy/PhoneWindow;

    iget-object v0, v0, Lcom/android/internal/policy/PhoneWindow;->mContentParent:Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    .line 1572
    iget-object v0, p0, Lcom/android/internal/policy/DecorView;->mWindow:Lcom/android/internal/policy/PhoneWindow;

    iget-object v0, v0, Lcom/android/internal/policy/PhoneWindow;->mContentParent:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    instance-of v0, v0, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz v0, :cond_0

    .line 1573
    iget-object v0, p0, Lcom/android/internal/policy/DecorView;->mWindow:Lcom/android/internal/policy/PhoneWindow;

    iget-object v0, v0, Lcom/android/internal/policy/PhoneWindow;->mContentParent:Landroid/view/ViewGroup;

    .line 1574
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 1575
    .local v0, "mlp":Landroid/view/ViewGroup$MarginLayoutParams;
    invoke-virtual {p1}, Landroid/view/WindowInsets;->getSystemWindowInsetBottom()I

    move-result v1

    iput v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    .line 1576
    iget-object v1, p0, Lcom/android/internal/policy/DecorView;->mWindow:Lcom/android/internal/policy/PhoneWindow;

    iget-object v1, v1, Lcom/android/internal/policy/PhoneWindow;->mContentParent:Landroid/view/ViewGroup;

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1580
    .end local v0    # "mlp":Landroid/view/ViewGroup$MarginLayoutParams;
    :cond_0
    iget-object v0, p0, Lcom/android/internal/policy/DecorView;->mNavigationGuard:Landroid/view/View;

    if-nez v0, :cond_3

    .line 1581
    new-instance v0, Landroid/view/View;

    iget-object v1, p0, Lcom/android/internal/policy/DecorView;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/internal/policy/DecorView;->mNavigationGuard:Landroid/view/View;

    .line 1587
    invoke-direct {p0}, Lcom/android/internal/policy/DecorView;->isThemeBlackApp()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1588
    iget-object v0, p0, Lcom/android/internal/policy/DecorView;->mNavigationGuard:Landroid/view/View;

    const v1, 0x307006d

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_0

    .line 1590
    :cond_1
    iget-object v0, p0, Lcom/android/internal/policy/DecorView;->mPackageName:Ljava/lang/String;

    if-eqz v0, :cond_2

    .line 1591
    iget-object v0, p0, Lcom/android/internal/policy/DecorView;->mNavigationGuard:Landroid/view/View;

    const v1, 0x307006c

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    .line 1594
    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/android/internal/policy/DecorView;->mNavigationGuard:Landroid/view/View;

    iget-object v1, p0, Lcom/android/internal/policy/DecorView;->mNavigationColorViewState:Lcom/android/internal/policy/DecorView$ColorViewState;

    iget-object v1, v1, Lcom/android/internal/policy/DecorView$ColorViewState;->view:Landroid/view/View;

    invoke-virtual {p0, v1}, Lcom/android/internal/policy/DecorView;->indexOfChild(Landroid/view/View;)I

    move-result v1

    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v3, -0x1

    .line 1596
    invoke-virtual {p1}, Landroid/view/WindowInsets;->getSystemWindowInsetBottom()I

    move-result v4

    const v5, 0x800053

    invoke-direct {v2, v3, v4, v5}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    .line 1594
    invoke-virtual {p0, v0, v1, v2}, Lcom/android/internal/policy/DecorView;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    goto :goto_1

    .line 1599
    :cond_3
    iget-object v0, p0, Lcom/android/internal/policy/DecorView;->mNavigationGuard:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    .line 1600
    .local v0, "lp":Landroid/widget/FrameLayout$LayoutParams;
    invoke-virtual {p1}, Landroid/view/WindowInsets;->getSystemWindowInsetBottom()I

    move-result v1

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 1601
    iget-object v1, p0, Lcom/android/internal/policy/DecorView;->mNavigationGuard:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1603
    .end local v0    # "lp":Landroid/widget/FrameLayout$LayoutParams;
    :goto_1
    invoke-virtual {p0}, Lcom/android/internal/policy/DecorView;->updateNavigationGuardColor()V

    .line 1604
    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-virtual {p1, v1, v1, v1, v0}, Landroid/view/WindowInsets;->consumeSystemWindowInsets(ZZZZ)Landroid/view/WindowInsets;

    move-result-object p1

    .line 1607
    :cond_4
    return-object p1
.end method

.method private updateStatusGuard(Landroid/view/WindowInsets;)Landroid/view/WindowInsets;
    .locals 12
    .param p1, "insets"    # Landroid/view/WindowInsets;

    .line 1495
    const/4 v0, 0x0

    .line 1497
    .local v0, "showStatusGuard":Z
    iget-object v1, p0, Lcom/android/internal/policy/DecorView;->mPrimaryActionModeView:Lcom/android/internal/widget/ActionBarContextView;

    const/4 v2, 0x0

    if-eqz v1, :cond_9

    .line 1498
    iget-object v1, p0, Lcom/android/internal/policy/DecorView;->mPrimaryActionModeView:Lcom/android/internal/widget/ActionBarContextView;

    invoke-virtual {v1}, Lcom/android/internal/widget/ActionBarContextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    instance-of v1, v1, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz v1, :cond_9

    .line 1500
    iget-object v1, p0, Lcom/android/internal/policy/DecorView;->mPrimaryActionModeView:Lcom/android/internal/widget/ActionBarContextView;

    .line 1501
    invoke-virtual {v1}, Lcom/android/internal/widget/ActionBarContextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 1502
    .local v1, "mlp":Landroid/view/ViewGroup$MarginLayoutParams;
    const/4 v3, 0x0

    .line 1503
    .local v3, "mlpChanged":Z
    iget-object v4, p0, Lcom/android/internal/policy/DecorView;->mPrimaryActionModeView:Lcom/android/internal/widget/ActionBarContextView;

    invoke-virtual {v4}, Lcom/android/internal/widget/ActionBarContextView;->isShown()Z

    move-result v4

    if-eqz v4, :cond_7

    .line 1504
    iget-object v4, p0, Lcom/android/internal/policy/DecorView;->mTempRect:Landroid/graphics/Rect;

    if-nez v4, :cond_0

    .line 1505
    new-instance v4, Landroid/graphics/Rect;

    invoke-direct {v4}, Landroid/graphics/Rect;-><init>()V

    iput-object v4, p0, Lcom/android/internal/policy/DecorView;->mTempRect:Landroid/graphics/Rect;

    .line 1507
    :cond_0
    iget-object v4, p0, Lcom/android/internal/policy/DecorView;->mTempRect:Landroid/graphics/Rect;

    .line 1511
    .local v4, "rect":Landroid/graphics/Rect;
    iget-object v5, p0, Lcom/android/internal/policy/DecorView;->mWindow:Lcom/android/internal/policy/PhoneWindow;

    iget-object v5, v5, Lcom/android/internal/policy/PhoneWindow;->mContentParent:Landroid/view/ViewGroup;

    invoke-virtual {v5, p1, v4}, Landroid/view/ViewGroup;->computeSystemWindowInsets(Landroid/view/WindowInsets;Landroid/graphics/Rect;)Landroid/view/WindowInsets;

    .line 1512
    iget v5, v4, Landroid/graphics/Rect;->top:I

    if-nez v5, :cond_1

    invoke-virtual {p1}, Landroid/view/WindowInsets;->getSystemWindowInsetTop()I

    move-result v5

    goto :goto_0

    :cond_1
    move v5, v2

    .line 1513
    .local v5, "newMargin":I
    :goto_0
    iget v6, v1, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    if-eq v6, v5, :cond_3

    .line 1514
    const/4 v3, 0x1

    .line 1515
    invoke-virtual {p1}, Landroid/view/WindowInsets;->getSystemWindowInsetTop()I

    move-result v6

    iput v6, v1, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 1517
    iget-object v6, p0, Lcom/android/internal/policy/DecorView;->mStatusGuard:Landroid/view/View;

    if-nez v6, :cond_2

    .line 1518
    new-instance v6, Landroid/view/View;

    iget-object v7, p0, Lcom/android/internal/policy/DecorView;->mContext:Landroid/content/Context;

    invoke-direct {v6, v7}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    iput-object v6, p0, Lcom/android/internal/policy/DecorView;->mStatusGuard:Landroid/view/View;

    .line 1519
    iget-object v6, p0, Lcom/android/internal/policy/DecorView;->mStatusGuard:Landroid/view/View;

    iget-object v7, p0, Lcom/android/internal/policy/DecorView;->mContext:Landroid/content/Context;

    const v8, 0x1060079

    invoke-virtual {v7, v8}, Landroid/content/Context;->getColor(I)I

    move-result v7

    invoke-virtual {v6, v7}, Landroid/view/View;->setBackgroundColor(I)V

    .line 1521
    iget-object v6, p0, Lcom/android/internal/policy/DecorView;->mStatusGuard:Landroid/view/View;

    iget-object v7, p0, Lcom/android/internal/policy/DecorView;->mStatusColorViewState:Lcom/android/internal/policy/DecorView$ColorViewState;

    iget-object v7, v7, Lcom/android/internal/policy/DecorView$ColorViewState;->view:Landroid/view/View;

    invoke-virtual {p0, v7}, Lcom/android/internal/policy/DecorView;->indexOfChild(Landroid/view/View;)I

    move-result v7

    new-instance v8, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v9, -0x1

    iget v10, v1, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    const v11, 0x800033

    invoke-direct {v8, v9, v10, v11}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    invoke-virtual {p0, v6, v7, v8}, Lcom/android/internal/policy/DecorView;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    goto :goto_1

    .line 1525
    :cond_2
    iget-object v6, p0, Lcom/android/internal/policy/DecorView;->mStatusGuard:Landroid/view/View;

    .line 1526
    invoke-virtual {v6}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    check-cast v6, Landroid/widget/FrameLayout$LayoutParams;

    .line 1527
    .local v6, "lp":Landroid/widget/FrameLayout$LayoutParams;
    iget v7, v6, Landroid/widget/FrameLayout$LayoutParams;->height:I

    iget v8, v1, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    if-eq v7, v8, :cond_3

    .line 1528
    iget v7, v1, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    iput v7, v6, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 1529
    iget-object v7, p0, Lcom/android/internal/policy/DecorView;->mStatusGuard:Landroid/view/View;

    invoke-virtual {v7, v6}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1536
    .end local v6    # "lp":Landroid/widget/FrameLayout$LayoutParams;
    :cond_3
    :goto_1
    iget-object v6, p0, Lcom/android/internal/policy/DecorView;->mStatusGuard:Landroid/view/View;

    const/4 v7, 0x1

    if-eqz v6, :cond_4

    move v6, v7

    goto :goto_2

    :cond_4
    move v6, v2

    :goto_2
    move v0, v6

    .line 1542
    iget-object v6, p0, Lcom/android/internal/policy/DecorView;->mWindow:Lcom/android/internal/policy/PhoneWindow;

    invoke-virtual {v6}, Lcom/android/internal/policy/PhoneWindow;->getLocalFeaturesPrivate()I

    move-result v6

    and-int/lit16 v6, v6, 0x400

    if-nez v6, :cond_5

    goto :goto_3

    :cond_5
    move v7, v2

    :goto_3
    move v6, v7

    .line 1544
    .local v6, "nonOverlay":Z
    if-eqz v6, :cond_6

    if-eqz v0, :cond_6

    .line 1545
    invoke-virtual {p1}, Landroid/view/WindowInsets;->getSystemWindowInsetTop()I

    move-result v7

    invoke-virtual {p1, v2, v7, v2, v2}, Landroid/view/WindowInsets;->inset(IIII)Landroid/view/WindowInsets;

    move-result-object p1

    .line 1547
    .end local v4    # "rect":Landroid/graphics/Rect;
    .end local v5    # "newMargin":I
    .end local v6    # "nonOverlay":Z
    :cond_6
    goto :goto_4

    .line 1549
    :cond_7
    iget v4, v1, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    if-eqz v4, :cond_8

    .line 1550
    const/4 v3, 0x1

    .line 1551
    iput v2, v1, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 1554
    :cond_8
    :goto_4
    if-eqz v3, :cond_9

    .line 1555
    iget-object v4, p0, Lcom/android/internal/policy/DecorView;->mPrimaryActionModeView:Lcom/android/internal/widget/ActionBarContextView;

    invoke-virtual {v4, v1}, Lcom/android/internal/widget/ActionBarContextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1559
    .end local v1    # "mlp":Landroid/view/ViewGroup$MarginLayoutParams;
    .end local v3    # "mlpChanged":Z
    :cond_9
    iget-object v1, p0, Lcom/android/internal/policy/DecorView;->mStatusGuard:Landroid/view/View;

    if-eqz v1, :cond_b

    .line 1560
    iget-object v1, p0, Lcom/android/internal/policy/DecorView;->mStatusGuard:Landroid/view/View;

    if-eqz v0, :cond_a

    goto :goto_5

    :cond_a
    const/16 v2, 0x8

    :goto_5
    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 1562
    :cond_b
    return-object p1
.end method


# virtual methods
.method public addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V
    .locals 7
    .param p1, "child"    # Landroid/view/View;
    .param p2, "index"    # I
    .param p3, "params"    # Landroid/view/ViewGroup$LayoutParams;

    .line 2181
    const-string v0, ""

    .line 2182
    .local v0, "name":Ljava/lang/String;
    iget-boolean v1, p0, Lcom/android/internal/policy/DecorView;->mIsWeixin:Z

    if-eqz v1, :cond_1

    .line 2183
    iget-object v1, p0, Lcom/android/internal/policy/DecorView;->mWindow:Lcom/android/internal/policy/PhoneWindow;

    invoke-virtual {v1}, Lcom/android/internal/policy/PhoneWindow;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    .line 2184
    const-string v1, "com.tencent.mm.ui.LauncherUI"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "com.tencent.mm.plugin.account.ui.Login"

    .line 2185
    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2186
    :cond_0
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/internal/policy/DecorView;->mIsWeixinHomeUI:Z

    .line 2194
    :cond_1
    iget-boolean v1, p0, Lcom/android/internal/policy/DecorView;->mIsWeixinHomeUI:Z

    const/4 v2, 0x0

    const/4 v3, -0x1

    if-eqz v1, :cond_3

    instance-of v1, p1, Landroid/widget/LinearLayout;

    if-eqz v1, :cond_3

    .line 2195
    invoke-virtual {p1}, Landroid/view/View;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v4, "DecorCaptionView"

    invoke-virtual {v1, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 2196
    invoke-direct {p0}, Lcom/android/internal/policy/DecorView;->isFreeformMode()Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/android/internal/policy/DecorView;->mWeixinStartDecorCaptionView:Lcom/android/internal/widget/DecorCaptionView;

    if-nez v1, :cond_3

    .line 2198
    const-string v1, "weixinStartContentRoot"

    invoke-virtual {p1, v1}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 2200
    iget-object v1, p0, Lcom/android/internal/policy/DecorView;->mWindow:Lcom/android/internal/policy/PhoneWindow;

    invoke-virtual {v1}, Lcom/android/internal/policy/PhoneWindow;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v1

    .line 2201
    .local v1, "inflater":Landroid/view/LayoutInflater;
    invoke-direct {p0, v1, v2}, Lcom/android/internal/policy/DecorView;->createDecorCaptionView(Landroid/view/LayoutInflater;Z)Lcom/android/internal/widget/DecorCaptionView;

    move-result-object v4

    iput-object v4, p0, Lcom/android/internal/policy/DecorView;->mWeixinStartDecorCaptionView:Lcom/android/internal/widget/DecorCaptionView;

    .line 2202
    iget-object v4, p0, Lcom/android/internal/policy/DecorView;->mLogTag:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "addView weixin start root "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v6, p0, Lcom/android/internal/policy/DecorView;->mIsFreeformMode:Z

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v6, " "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/view/View;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2203
    iget-object v4, p0, Lcom/android/internal/policy/DecorView;->mWeixinStartDecorCaptionView:Lcom/android/internal/widget/DecorCaptionView;

    if-eqz v4, :cond_3

    .line 2204
    iget-object v4, p0, Lcom/android/internal/policy/DecorView;->mWeixinStartDecorCaptionView:Lcom/android/internal/widget/DecorCaptionView;

    invoke-virtual {v4}, Lcom/android/internal/widget/DecorCaptionView;->getParent()Landroid/view/ViewParent;

    move-result-object v4

    if-nez v4, :cond_2

    .line 2205
    iget-object v4, p0, Lcom/android/internal/policy/DecorView;->mWeixinStartDecorCaptionView:Lcom/android/internal/widget/DecorCaptionView;

    new-instance v5, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v5, v3, v3}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v4, v2, v5}, Lcom/android/internal/policy/DecorView;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 2208
    :cond_2
    iget-object v2, p0, Lcom/android/internal/policy/DecorView;->mContentRoot:Landroid/view/ViewGroup;

    invoke-virtual {p0, v2}, Lcom/android/internal/policy/DecorView;->removeView(Landroid/view/View;)V

    .line 2209
    iget-object v2, p0, Lcom/android/internal/policy/DecorView;->mWeixinStartDecorCaptionView:Lcom/android/internal/widget/DecorCaptionView;

    new-instance v4, Landroid/view/ViewGroup$MarginLayoutParams;

    invoke-direct {v4, v3, v3}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(II)V

    invoke-virtual {v2, p1, v4}, Lcom/android/internal/widget/DecorCaptionView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 2211
    return-void

    .line 2215
    .end local v1    # "inflater":Landroid/view/LayoutInflater;
    :cond_3
    iget-boolean v1, p0, Lcom/android/internal/policy/DecorView;->mIsWeixin:Z

    if-eqz v1, :cond_7

    invoke-virtual {p1}, Landroid/view/View;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v4, "com.tencent.mm.ui.HomeUI"

    invoke-virtual {v1, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 2216
    invoke-virtual {p1}, Landroid/view/View;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v4, "com.tencent.mm.ui.widget"

    invoke-virtual {v1, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_7

    const-string v1, "com.tencent.mm.ui.conversation.BizConversationUI"

    .line 2217
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7

    .line 2218
    :cond_4
    const-string v1, "weixinContentRoot"

    invoke-virtual {p1, v1}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 2219
    iput-object p1, p0, Lcom/android/internal/policy/DecorView;->mWeixinContentRoot:Landroid/view/View;

    .line 2221
    iget-object v1, p0, Lcom/android/internal/policy/DecorView;->mWindow:Lcom/android/internal/policy/PhoneWindow;

    invoke-virtual {v1}, Lcom/android/internal/policy/PhoneWindow;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v1

    .line 2222
    .restart local v1    # "inflater":Landroid/view/LayoutInflater;
    invoke-direct {p0, v1, v2}, Lcom/android/internal/policy/DecorView;->createDecorCaptionView(Landroid/view/LayoutInflater;Z)Lcom/android/internal/widget/DecorCaptionView;

    move-result-object v4

    iput-object v4, p0, Lcom/android/internal/policy/DecorView;->mDecorCaptionView:Lcom/android/internal/widget/DecorCaptionView;

    .line 2223
    iget-object v4, p0, Lcom/android/internal/policy/DecorView;->mLogTag:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "addView weixin root "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v6, p0, Lcom/android/internal/policy/DecorView;->mIsFreeformMode:Z

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v6, " "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/view/View;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2224
    iget-object v4, p0, Lcom/android/internal/policy/DecorView;->mDecorCaptionView:Lcom/android/internal/widget/DecorCaptionView;

    if-eqz v4, :cond_7

    invoke-direct {p0}, Lcom/android/internal/policy/DecorView;->isFreeformMode()Z

    move-result v4

    if-nez v4, :cond_7

    .line 2225
    iget-object v4, p0, Lcom/android/internal/policy/DecorView;->mDecorCaptionView:Lcom/android/internal/widget/DecorCaptionView;

    invoke-virtual {v4}, Lcom/android/internal/widget/DecorCaptionView;->getParent()Landroid/view/ViewParent;

    move-result-object v4

    if-nez v4, :cond_5

    .line 2226
    iget-object v4, p0, Lcom/android/internal/policy/DecorView;->mDecorCaptionView:Lcom/android/internal/widget/DecorCaptionView;

    new-instance v5, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v5, v3, v3}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v4, v3, v5}, Lcom/android/internal/policy/DecorView;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 2229
    :cond_5
    iget-object v4, p0, Lcom/android/internal/policy/DecorView;->mContentRoot:Landroid/view/ViewGroup;

    invoke-virtual {p0, v4}, Lcom/android/internal/policy/DecorView;->removeView(Landroid/view/View;)V

    .line 2230
    iget-object v4, p0, Lcom/android/internal/policy/DecorView;->mDecorCaptionView:Lcom/android/internal/widget/DecorCaptionView;

    new-instance v5, Landroid/view/ViewGroup$MarginLayoutParams;

    invoke-direct {v5, v3, v3}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(II)V

    invoke-virtual {v4, p1, v5}, Lcom/android/internal/widget/DecorCaptionView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 2232
    iget-object v3, p0, Lcom/android/internal/policy/DecorView;->mWeixinStartDecorCaptionView:Lcom/android/internal/widget/DecorCaptionView;

    if-eqz v3, :cond_6

    iget-object v3, p0, Lcom/android/internal/policy/DecorView;->mDecorCaptionView:Lcom/android/internal/widget/DecorCaptionView;

    invoke-virtual {v3}, Lcom/android/internal/widget/DecorCaptionView;->isCaptionShowing()Z

    move-result v3

    if-eqz v3, :cond_6

    .line 2233
    iget-object v3, p0, Lcom/android/internal/policy/DecorView;->mWeixinStartDecorCaptionView:Lcom/android/internal/widget/DecorCaptionView;

    invoke-virtual {v3, v2}, Lcom/android/internal/widget/DecorCaptionView;->onConfigurationChanged(Z)V

    .line 2234
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/android/internal/policy/DecorView;->mWeixinStartDecorCaptionView:Lcom/android/internal/widget/DecorCaptionView;

    .line 2236
    :cond_6
    return-void

    .line 2240
    .end local v1    # "inflater":Landroid/view/LayoutInflater;
    :cond_7
    iget-boolean v1, p0, Lcom/android/internal/policy/DecorView;->mIsQQ:Z

    if-eqz v1, :cond_8

    invoke-virtual {p1}, Landroid/view/View;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "android.view.View"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 2241
    iget-object v1, p0, Lcom/android/internal/policy/DecorView;->mLogTag:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "addView qqExtra "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, p0, Lcom/android/internal/policy/DecorView;->mIsFreeformMode:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2242
    const-string v1, "qqExtra"

    invoke-virtual {p1, v1}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 2243
    iput-object p1, p0, Lcom/android/internal/policy/DecorView;->mQQExtraView:Landroid/view/View;

    .line 2245
    :cond_8
    invoke-super {p0, p1, p2, p3}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 2246
    return-void
.end method

.method clearContentView()V
    .locals 3

    .line 2496
    iget-object v0, p0, Lcom/android/internal/policy/DecorView;->mDecorCaptionView:Lcom/android/internal/widget/DecorCaptionView;

    if-eqz v0, :cond_0

    .line 2497
    iget-object v0, p0, Lcom/android/internal/policy/DecorView;->mDecorCaptionView:Lcom/android/internal/widget/DecorCaptionView;

    invoke-virtual {v0}, Lcom/android/internal/widget/DecorCaptionView;->removeContentView()V

    goto :goto_1

    .line 2501
    :cond_0
    invoke-virtual {p0}, Lcom/android/internal/policy/DecorView;->getChildCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_2

    .line 2502
    invoke-virtual {p0, v0}, Lcom/android/internal/policy/DecorView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 2503
    .local v1, "v":Landroid/view/View;
    iget-object v2, p0, Lcom/android/internal/policy/DecorView;->mStatusColorViewState:Lcom/android/internal/policy/DecorView$ColorViewState;

    iget-object v2, v2, Lcom/android/internal/policy/DecorView$ColorViewState;->view:Landroid/view/View;

    if-eq v1, v2, :cond_1

    iget-object v2, p0, Lcom/android/internal/policy/DecorView;->mNavigationColorViewState:Lcom/android/internal/policy/DecorView$ColorViewState;

    iget-object v2, v2, Lcom/android/internal/policy/DecorView$ColorViewState;->view:Landroid/view/View;

    if-eq v1, v2, :cond_1

    iget-object v2, p0, Lcom/android/internal/policy/DecorView;->mStatusGuard:Landroid/view/View;

    if-eq v1, v2, :cond_1

    iget-object v2, p0, Lcom/android/internal/policy/DecorView;->mNavigationGuard:Landroid/view/View;

    if-eq v1, v2, :cond_1

    .line 2505
    invoke-virtual {p0, v0}, Lcom/android/internal/policy/DecorView;->removeViewAt(I)V

    .line 2501
    .end local v1    # "v":Landroid/view/View;
    :cond_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 2509
    .end local v0    # "i":I
    :cond_2
    :goto_1
    return-void
.end method

.method public dispatchGenericMotionEvent(Landroid/view/MotionEvent;)Z
    .locals 2
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .line 488
    iget-object v0, p0, Lcom/android/internal/policy/DecorView;->mWindow:Lcom/android/internal/policy/PhoneWindow;

    invoke-virtual {v0}, Lcom/android/internal/policy/PhoneWindow;->getCallback()Landroid/view/Window$Callback;

    move-result-object v0

    .line 489
    .local v0, "cb":Landroid/view/Window$Callback;
    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/android/internal/policy/DecorView;->mWindow:Lcom/android/internal/policy/PhoneWindow;

    invoke-virtual {v1}, Lcom/android/internal/policy/PhoneWindow;->isDestroyed()Z

    move-result v1

    if-nez v1, :cond_0

    iget v1, p0, Lcom/android/internal/policy/DecorView;->mFeatureId:I

    if-gez v1, :cond_0

    .line 490
    invoke-interface {v0, p1}, Landroid/view/Window$Callback;->dispatchGenericMotionEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    goto :goto_0

    :cond_0
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchGenericMotionEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    .line 489
    :goto_0
    return v1
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 7
    .param p1, "event"    # Landroid/view/KeyEvent;

    .line 386
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    .line 387
    .local v0, "keyCode":I
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v1

    .line 388
    .local v1, "action":I
    const/4 v2, 0x0

    const/4 v3, 0x1

    if-nez v1, :cond_0

    move v4, v3

    goto :goto_0

    :cond_0
    move v4, v2

    .line 390
    .local v4, "isDown":Z
    :goto_0
    if-eqz v4, :cond_2

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v5

    if-nez v5, :cond_2

    .line 393
    iget-object v5, p0, Lcom/android/internal/policy/DecorView;->mWindow:Lcom/android/internal/policy/PhoneWindow;

    iget v5, v5, Lcom/android/internal/policy/PhoneWindow;->mPanelChordingKey:I

    if-lez v5, :cond_1

    iget-object v5, p0, Lcom/android/internal/policy/DecorView;->mWindow:Lcom/android/internal/policy/PhoneWindow;

    iget v5, v5, Lcom/android/internal/policy/PhoneWindow;->mPanelChordingKey:I

    if-eq v5, v0, :cond_1

    .line 394
    invoke-virtual {p0, p1}, Lcom/android/internal/policy/DecorView;->dispatchKeyShortcutEvent(Landroid/view/KeyEvent;)Z

    move-result v5

    .line 395
    .local v5, "handled":Z
    if-eqz v5, :cond_1

    .line 396
    return v3

    .line 402
    .end local v5    # "handled":Z
    :cond_1
    iget-object v5, p0, Lcom/android/internal/policy/DecorView;->mWindow:Lcom/android/internal/policy/PhoneWindow;

    iget-object v5, v5, Lcom/android/internal/policy/PhoneWindow;->mPreparedPanel:Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;

    if-eqz v5, :cond_2

    iget-object v5, p0, Lcom/android/internal/policy/DecorView;->mWindow:Lcom/android/internal/policy/PhoneWindow;

    iget-object v5, v5, Lcom/android/internal/policy/PhoneWindow;->mPreparedPanel:Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;

    iget-boolean v5, v5, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->isOpen:Z

    if-eqz v5, :cond_2

    .line 403
    iget-object v5, p0, Lcom/android/internal/policy/DecorView;->mWindow:Lcom/android/internal/policy/PhoneWindow;

    iget-object v6, p0, Lcom/android/internal/policy/DecorView;->mWindow:Lcom/android/internal/policy/PhoneWindow;

    iget-object v6, v6, Lcom/android/internal/policy/PhoneWindow;->mPreparedPanel:Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;

    invoke-virtual {v5, v6, v0, p1, v2}, Lcom/android/internal/policy/PhoneWindow;->performPanelShortcut(Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;ILandroid/view/KeyEvent;I)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 404
    return v3

    .line 409
    :cond_2
    iget-object v2, p0, Lcom/android/internal/policy/DecorView;->mWindow:Lcom/android/internal/policy/PhoneWindow;

    invoke-virtual {v2}, Lcom/android/internal/policy/PhoneWindow;->isDestroyed()Z

    move-result v2

    if-nez v2, :cond_4

    .line 410
    iget-object v2, p0, Lcom/android/internal/policy/DecorView;->mWindow:Lcom/android/internal/policy/PhoneWindow;

    invoke-virtual {v2}, Lcom/android/internal/policy/PhoneWindow;->getCallback()Landroid/view/Window$Callback;

    move-result-object v2

    .line 411
    .local v2, "cb":Landroid/view/Window$Callback;
    if-eqz v2, :cond_3

    iget v5, p0, Lcom/android/internal/policy/DecorView;->mFeatureId:I

    if-gez v5, :cond_3

    invoke-interface {v2, p1}, Landroid/view/Window$Callback;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v5

    goto :goto_1

    .line 412
    :cond_3
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v5

    .line 413
    .restart local v5    # "handled":Z
    :goto_1
    if-eqz v5, :cond_4

    .line 414
    return v3

    .line 418
    .end local v2    # "cb":Landroid/view/Window$Callback;
    .end local v5    # "handled":Z
    :cond_4
    if-eqz v4, :cond_5

    iget-object v2, p0, Lcom/android/internal/policy/DecorView;->mWindow:Lcom/android/internal/policy/PhoneWindow;

    iget v3, p0, Lcom/android/internal/policy/DecorView;->mFeatureId:I

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v5

    invoke-virtual {v2, v3, v5, p1}, Lcom/android/internal/policy/PhoneWindow;->onKeyDown(IILandroid/view/KeyEvent;)Z

    move-result v2

    goto :goto_2

    .line 419
    :cond_5
    iget-object v2, p0, Lcom/android/internal/policy/DecorView;->mWindow:Lcom/android/internal/policy/PhoneWindow;

    iget v3, p0, Lcom/android/internal/policy/DecorView;->mFeatureId:I

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v5

    invoke-virtual {v2, v3, v5, p1}, Lcom/android/internal/policy/PhoneWindow;->onKeyUp(IILandroid/view/KeyEvent;)Z

    move-result v2

    .line 418
    :goto_2
    return v2
.end method

.method public dispatchKeyShortcutEvent(Landroid/view/KeyEvent;)Z
    .locals 7
    .param p1, "ev"    # Landroid/view/KeyEvent;

    .line 426
    iget-object v0, p0, Lcom/android/internal/policy/DecorView;->mWindow:Lcom/android/internal/policy/PhoneWindow;

    iget-object v0, v0, Lcom/android/internal/policy/PhoneWindow;->mPreparedPanel:Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    .line 427
    iget-object v0, p0, Lcom/android/internal/policy/DecorView;->mWindow:Lcom/android/internal/policy/PhoneWindow;

    iget-object v2, p0, Lcom/android/internal/policy/DecorView;->mWindow:Lcom/android/internal/policy/PhoneWindow;

    iget-object v2, v2, Lcom/android/internal/policy/PhoneWindow;->mPreparedPanel:Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v3

    invoke-virtual {v0, v2, v3, p1, v1}, Lcom/android/internal/policy/PhoneWindow;->performPanelShortcut(Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;ILandroid/view/KeyEvent;I)Z

    move-result v0

    .line 429
    .local v0, "handled":Z
    if-eqz v0, :cond_1

    .line 430
    iget-object v2, p0, Lcom/android/internal/policy/DecorView;->mWindow:Lcom/android/internal/policy/PhoneWindow;

    iget-object v2, v2, Lcom/android/internal/policy/PhoneWindow;->mPreparedPanel:Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;

    if-eqz v2, :cond_0

    .line 431
    iget-object v2, p0, Lcom/android/internal/policy/DecorView;->mWindow:Lcom/android/internal/policy/PhoneWindow;

    iget-object v2, v2, Lcom/android/internal/policy/PhoneWindow;->mPreparedPanel:Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;

    iput-boolean v1, v2, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->isHandled:Z

    .line 433
    :cond_0
    return v1

    .line 438
    .end local v0    # "handled":Z
    :cond_1
    iget-object v0, p0, Lcom/android/internal/policy/DecorView;->mWindow:Lcom/android/internal/policy/PhoneWindow;

    invoke-virtual {v0}, Lcom/android/internal/policy/PhoneWindow;->getCallback()Landroid/view/Window$Callback;

    move-result-object v0

    .line 439
    .local v0, "cb":Landroid/view/Window$Callback;
    if-eqz v0, :cond_2

    iget-object v2, p0, Lcom/android/internal/policy/DecorView;->mWindow:Lcom/android/internal/policy/PhoneWindow;

    invoke-virtual {v2}, Lcom/android/internal/policy/PhoneWindow;->isDestroyed()Z

    move-result v2

    if-nez v2, :cond_2

    iget v2, p0, Lcom/android/internal/policy/DecorView;->mFeatureId:I

    if-gez v2, :cond_2

    .line 440
    invoke-interface {v0, p1}, Landroid/view/Window$Callback;->dispatchKeyShortcutEvent(Landroid/view/KeyEvent;)Z

    move-result v2

    goto :goto_0

    :cond_2
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchKeyShortcutEvent(Landroid/view/KeyEvent;)Z

    move-result v2

    .line 441
    .local v2, "handled":Z
    :goto_0
    if-eqz v2, :cond_3

    .line 442
    return v1

    .line 449
    :cond_3
    iget-object v3, p0, Lcom/android/internal/policy/DecorView;->mWindow:Lcom/android/internal/policy/PhoneWindow;

    .line 450
    const/4 v4, 0x0

    invoke-virtual {v3, v4, v4}, Lcom/android/internal/policy/PhoneWindow;->getPanelState(IZ)Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;

    move-result-object v3

    .line 451
    .local v3, "st":Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;
    if-eqz v3, :cond_4

    iget-object v5, p0, Lcom/android/internal/policy/DecorView;->mWindow:Lcom/android/internal/policy/PhoneWindow;

    iget-object v5, v5, Lcom/android/internal/policy/PhoneWindow;->mPreparedPanel:Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;

    if-nez v5, :cond_4

    .line 452
    iget-object v5, p0, Lcom/android/internal/policy/DecorView;->mWindow:Lcom/android/internal/policy/PhoneWindow;

    invoke-virtual {v5, v3, p1}, Lcom/android/internal/policy/PhoneWindow;->preparePanel(Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;Landroid/view/KeyEvent;)Z

    .line 453
    iget-object v5, p0, Lcom/android/internal/policy/DecorView;->mWindow:Lcom/android/internal/policy/PhoneWindow;

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v6

    invoke-virtual {v5, v3, v6, p1, v1}, Lcom/android/internal/policy/PhoneWindow;->performPanelShortcut(Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;ILandroid/view/KeyEvent;I)Z

    move-result v2

    .line 455
    iput-boolean v4, v3, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->isPrepared:Z

    .line 456
    if-eqz v2, :cond_4

    .line 457
    return v1

    .line 460
    :cond_4
    return v4
.end method

.method public dispatchPointerCaptureChanged(Z)V
    .locals 1
    .param p1, "hasCapture"    # Z

    .line 2773
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchPointerCaptureChanged(Z)V

    .line 2774
    iget-object v0, p0, Lcom/android/internal/policy/DecorView;->mWindow:Lcom/android/internal/policy/PhoneWindow;

    invoke-virtual {v0}, Lcom/android/internal/policy/PhoneWindow;->isDestroyed()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/policy/DecorView;->mWindow:Lcom/android/internal/policy/PhoneWindow;

    invoke-virtual {v0}, Lcom/android/internal/policy/PhoneWindow;->getCallback()Landroid/view/Window$Callback;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2775
    iget-object v0, p0, Lcom/android/internal/policy/DecorView;->mWindow:Lcom/android/internal/policy/PhoneWindow;

    invoke-virtual {v0}, Lcom/android/internal/policy/PhoneWindow;->getCallback()Landroid/view/Window$Callback;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/view/Window$Callback;->onPointerCaptureChanged(Z)V

    .line 2777
    :cond_0
    return-void
.end method

.method public dispatchPopulateAccessibilityEventInternal(Landroid/view/accessibility/AccessibilityEvent;)Z
    .locals 2
    .param p1, "event"    # Landroid/view/accessibility/AccessibilityEvent;

    .line 676
    iget-object v0, p0, Lcom/android/internal/policy/DecorView;->mWindow:Lcom/android/internal/policy/PhoneWindow;

    invoke-virtual {v0}, Lcom/android/internal/policy/PhoneWindow;->getCallback()Landroid/view/Window$Callback;

    move-result-object v0

    .line 677
    .local v0, "cb":Landroid/view/Window$Callback;
    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/android/internal/policy/DecorView;->mWindow:Lcom/android/internal/policy/PhoneWindow;

    invoke-virtual {v1}, Lcom/android/internal/policy/PhoneWindow;->isDestroyed()Z

    move-result v1

    if-nez v1, :cond_0

    .line 678
    invoke-interface {v0, p1}, Landroid/view/Window$Callback;->dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 679
    const/4 v1, 0x1

    return v1

    .line 682
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchPopulateAccessibilityEventInternal(Landroid/view/accessibility/AccessibilityEvent;)Z

    move-result v1

    return v1
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .line 466
    iget-boolean v0, p0, Lcom/android/internal/policy/DecorView;->IS_SUPPORT_RECOGNITION:Z

    if-eqz v0, :cond_0

    .line 467
    iget-object v0, p0, Lcom/android/internal/policy/DecorView;->mNubiaTextExtractor:Landroid/widget/NubiaTextExtractor;

    if-eqz v0, :cond_0

    .line 468
    iget-boolean v0, p0, Lcom/android/internal/policy/DecorView;->IS_SMART_RECOGNITION_ON:Z

    if-eqz v0, :cond_0

    .line 469
    iget-object v0, p0, Lcom/android/internal/policy/DecorView;->mNubiaTextExtractor:Landroid/widget/NubiaTextExtractor;

    invoke-virtual {v0, p1}, Landroid/widget/NubiaTextExtractor;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    .line 474
    :cond_0
    iget-object v0, p0, Lcom/android/internal/policy/DecorView;->mWindow:Lcom/android/internal/policy/PhoneWindow;

    invoke-virtual {v0}, Lcom/android/internal/policy/PhoneWindow;->getCallback()Landroid/view/Window$Callback;

    move-result-object v0

    .line 475
    .local v0, "cb":Landroid/view/Window$Callback;
    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/android/internal/policy/DecorView;->mWindow:Lcom/android/internal/policy/PhoneWindow;

    invoke-virtual {v1}, Lcom/android/internal/policy/PhoneWindow;->isDestroyed()Z

    move-result v1

    if-nez v1, :cond_1

    iget v1, p0, Lcom/android/internal/policy/DecorView;->mFeatureId:I

    if-gez v1, :cond_1

    .line 476
    invoke-interface {v0, p1}, Landroid/view/Window$Callback;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    goto :goto_0

    :cond_1
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    .line 475
    :goto_0
    return v1
.end method

.method public dispatchTrackballEvent(Landroid/view/MotionEvent;)Z
    .locals 2
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .line 481
    iget-object v0, p0, Lcom/android/internal/policy/DecorView;->mWindow:Lcom/android/internal/policy/PhoneWindow;

    invoke-virtual {v0}, Lcom/android/internal/policy/PhoneWindow;->getCallback()Landroid/view/Window$Callback;

    move-result-object v0

    .line 482
    .local v0, "cb":Landroid/view/Window$Callback;
    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/android/internal/policy/DecorView;->mWindow:Lcom/android/internal/policy/PhoneWindow;

    invoke-virtual {v1}, Lcom/android/internal/policy/PhoneWindow;->isDestroyed()Z

    move-result v1

    if-nez v1, :cond_0

    iget v1, p0, Lcom/android/internal/policy/DecorView;->mFeatureId:I

    if-gez v1, :cond_0

    .line 483
    invoke-interface {v0, p1}, Landroid/view/Window$Callback;->dispatchTrackballEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    goto :goto_0

    :cond_0
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchTrackballEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    .line 482
    :goto_0
    return v1
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 1
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .line 894
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->draw(Landroid/graphics/Canvas;)V

    .line 896
    iget-object v0, p0, Lcom/android/internal/policy/DecorView;->mMenuBackground:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 897
    iget-object v0, p0, Lcom/android/internal/policy/DecorView;->mMenuBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 899
    :cond_0
    return-void
.end method

.method enableCaption(Z)V
    .locals 1
    .param p1, "attachedAndVisible"    # Z

    .line 2073
    iget-boolean v0, p0, Lcom/android/internal/policy/DecorView;->mHasCaption:Z

    if-eq v0, p1, :cond_0

    .line 2074
    iput-boolean p1, p0, Lcom/android/internal/policy/DecorView;->mHasCaption:Z

    .line 2075
    invoke-virtual {p0}, Lcom/android/internal/policy/DecorView;->getForeground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2076
    invoke-direct {p0}, Lcom/android/internal/policy/DecorView;->drawableChanged()V

    .line 2079
    :cond_0
    return-void
.end method

.method finishChanging()V
    .locals 1

    .line 1047
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/policy/DecorView;->mChanging:Z

    .line 1048
    invoke-direct {p0}, Lcom/android/internal/policy/DecorView;->drawableChanged()V

    .line 1049
    return-void
.end method

.method public gatherTransparentRegion(Landroid/graphics/Region;)Z
    .locals 4
    .param p1, "region"    # Landroid/graphics/Region;

    .line 358
    iget-object v0, p0, Lcom/android/internal/policy/DecorView;->mStatusColorViewState:Lcom/android/internal/policy/DecorView$ColorViewState;

    invoke-virtual {p0, v0, p1}, Lcom/android/internal/policy/DecorView;->gatherTransparentRegion(Lcom/android/internal/policy/DecorView$ColorViewState;Landroid/graphics/Region;)Z

    move-result v0

    .line 359
    .local v0, "statusOpaque":Z
    iget-object v1, p0, Lcom/android/internal/policy/DecorView;->mNavigationColorViewState:Lcom/android/internal/policy/DecorView$ColorViewState;

    invoke-virtual {p0, v1, p1}, Lcom/android/internal/policy/DecorView;->gatherTransparentRegion(Lcom/android/internal/policy/DecorView$ColorViewState;Landroid/graphics/Region;)Z

    move-result v1

    .line 360
    .local v1, "navOpaque":Z
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->gatherTransparentRegion(Landroid/graphics/Region;)Z

    move-result v2

    .line 363
    .local v2, "decorOpaque":Z
    if-nez v0, :cond_1

    if-nez v1, :cond_1

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v3, 0x1

    :goto_1
    return v3
.end method

.method gatherTransparentRegion(Lcom/android/internal/policy/DecorView$ColorViewState;Landroid/graphics/Region;)Z
    .locals 1
    .param p1, "colorViewState"    # Lcom/android/internal/policy/DecorView$ColorViewState;
    .param p2, "region"    # Landroid/graphics/Region;

    .line 367
    iget-object v0, p1, Lcom/android/internal/policy/DecorView$ColorViewState;->view:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-boolean v0, p1, Lcom/android/internal/policy/DecorView$ColorViewState;->visible:Z

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/android/internal/policy/DecorView;->isResizing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 371
    iget-object v0, p1, Lcom/android/internal/policy/DecorView$ColorViewState;->view:Landroid/view/View;

    invoke-virtual {v0, p2}, Landroid/view/View;->gatherTransparentRegion(Landroid/graphics/Region;)Z

    move-result v0

    return v0

    .line 373
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public getAccessibilityViewId()I
    .locals 1

    .line 2781
    const v0, 0x7ffffffe

    return v0
.end method

.method public getActivityName()Ljava/lang/String;
    .locals 1

    .line 2767
    iget-object v0, p0, Lcom/android/internal/policy/DecorView;->mWindow:Lcom/android/internal/policy/PhoneWindow;

    invoke-virtual {v0}, Lcom/android/internal/policy/PhoneWindow;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method getCaptionHeight()I
    .locals 1

    .line 2707
    invoke-virtual {p0}, Lcom/android/internal/policy/DecorView;->isShowingCaption()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/policy/DecorView;->mDecorCaptionView:Lcom/android/internal/widget/DecorCaptionView;

    invoke-virtual {v0}, Lcom/android/internal/widget/DecorCaptionView;->getCaptionHeight()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public getCurrentActivityName()Ljava/lang/String;
    .locals 1

    .line 3034
    iget-object v0, p0, Lcom/android/internal/policy/DecorView;->mWindow:Lcom/android/internal/policy/PhoneWindow;

    invoke-virtual {v0}, Lcom/android/internal/policy/PhoneWindow;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getResources()Landroid/content/res/Resources;
    .locals 1

    .line 2094
    invoke-virtual {p0}, Lcom/android/internal/policy/DecorView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    return-object v0
.end method

.method public getViewOptimizeInfo()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 2992
    iget-object v0, p0, Lcom/android/internal/policy/DecorView;->mViewOptimizeInfo:Ljava/util/List;

    return-object v0
.end method

.method isShowingCaption()Z
    .locals 1

    .line 2703
    iget-object v0, p0, Lcom/android/internal/policy/DecorView;->mDecorCaptionView:Lcom/android/internal/widget/DecorCaptionView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/policy/DecorView;->mDecorCaptionView:Lcom/android/internal/widget/DecorCaptionView;

    invoke-virtual {v0}, Lcom/android/internal/widget/DecorCaptionView;->isCaptionShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isSmartRecognitionOn()Z
    .locals 1

    .line 3002
    iget-boolean v0, p0, Lcom/android/internal/policy/DecorView;->IS_SMART_RECOGNITION_ON:Z

    return v0
.end method

.method public isSupportRecognition()Z
    .locals 1

    .line 3021
    iget-boolean v0, p0, Lcom/android/internal/policy/DecorView;->IS_SUPPORT_RECOGNITION:Z

    return v0
.end method

.method public isTransitionGroup()Z
    .locals 1

    .line 1122
    const/4 v0, 0x0

    return v0
.end method

.method public onApplyWindowInsets(Landroid/view/WindowInsets;)Landroid/view/WindowInsets;
    .locals 5
    .param p1, "insets"    # Landroid/view/WindowInsets;

    .line 1090
    iget-object v0, p0, Lcom/android/internal/policy/DecorView;->mWindow:Lcom/android/internal/policy/PhoneWindow;

    invoke-virtual {v0}, Lcom/android/internal/policy/PhoneWindow;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    .line 1091
    .local v0, "attrs":Landroid/view/WindowManager$LayoutParams;
    iget-object v1, p0, Lcom/android/internal/policy/DecorView;->mFloatingInsets:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->setEmpty()V

    .line 1092
    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    and-int/lit16 v1, v1, 0x100

    if-nez v1, :cond_1

    .line 1097
    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->height:I

    const/4 v2, -0x2

    const/4 v3, 0x0

    if-ne v1, v2, :cond_0

    .line 1098
    iget-object v1, p0, Lcom/android/internal/policy/DecorView;->mFloatingInsets:Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/view/WindowInsets;->getSystemWindowInsetTop()I

    move-result v4

    iput v4, v1, Landroid/graphics/Rect;->top:I

    .line 1099
    iget-object v1, p0, Lcom/android/internal/policy/DecorView;->mFloatingInsets:Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/view/WindowInsets;->getSystemWindowInsetBottom()I

    move-result v4

    iput v4, v1, Landroid/graphics/Rect;->bottom:I

    .line 1100
    invoke-virtual {p1}, Landroid/view/WindowInsets;->getSystemWindowInsetTop()I

    move-result v1

    .line 1101
    invoke-virtual {p1}, Landroid/view/WindowInsets;->getSystemWindowInsetBottom()I

    move-result v4

    .line 1100
    invoke-virtual {p1, v3, v1, v3, v4}, Landroid/view/WindowInsets;->inset(IIII)Landroid/view/WindowInsets;

    move-result-object p1

    .line 1103
    :cond_0
    iget-object v1, p0, Lcom/android/internal/policy/DecorView;->mWindow:Lcom/android/internal/policy/PhoneWindow;

    invoke-virtual {v1}, Lcom/android/internal/policy/PhoneWindow;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    iget v1, v1, Landroid/view/WindowManager$LayoutParams;->width:I

    if-ne v1, v2, :cond_1

    .line 1104
    iget-object v1, p0, Lcom/android/internal/policy/DecorView;->mFloatingInsets:Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/view/WindowInsets;->getSystemWindowInsetTop()I

    move-result v2

    iput v2, v1, Landroid/graphics/Rect;->left:I

    .line 1105
    iget-object v1, p0, Lcom/android/internal/policy/DecorView;->mFloatingInsets:Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/view/WindowInsets;->getSystemWindowInsetBottom()I

    move-result v2

    iput v2, v1, Landroid/graphics/Rect;->right:I

    .line 1106
    invoke-virtual {p1}, Landroid/view/WindowInsets;->getSystemWindowInsetLeft()I

    move-result v1

    .line 1107
    invoke-virtual {p1}, Landroid/view/WindowInsets;->getSystemWindowInsetRight()I

    move-result v2

    .line 1106
    invoke-virtual {p1, v1, v3, v2, v3}, Landroid/view/WindowInsets;->inset(IIII)Landroid/view/WindowInsets;

    move-result-object p1

    .line 1110
    :cond_1
    iget-object v1, p0, Lcom/android/internal/policy/DecorView;->mFrameOffsets:Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/view/WindowInsets;->getSystemWindowInsets()Landroid/graphics/Rect;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 1111
    const/4 v1, 0x1

    invoke-virtual {p0, p1, v1}, Lcom/android/internal/policy/DecorView;->updateColorViews(Landroid/view/WindowInsets;Z)Landroid/view/WindowInsets;

    move-result-object p1

    .line 1112
    invoke-direct {p0, p1}, Lcom/android/internal/policy/DecorView;->updateStatusGuard(Landroid/view/WindowInsets;)Landroid/view/WindowInsets;

    move-result-object p1

    .line 1113
    invoke-direct {p0, p1}, Lcom/android/internal/policy/DecorView;->updateNavigationGuard(Landroid/view/WindowInsets;)Landroid/view/WindowInsets;

    move-result-object p1

    .line 1114
    invoke-virtual {p0}, Lcom/android/internal/policy/DecorView;->getForeground()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 1115
    invoke-direct {p0}, Lcom/android/internal/policy/DecorView;->drawableChanged()V

    .line 1117
    :cond_2
    return-object p1
.end method

.method protected onAttachedToWindow()V
    .locals 3

    .line 1768
    invoke-super {p0}, Landroid/widget/FrameLayout;->onAttachedToWindow()V

    .line 1770
    iget-object v0, p0, Lcom/android/internal/policy/DecorView;->mWindow:Lcom/android/internal/policy/PhoneWindow;

    invoke-virtual {v0}, Lcom/android/internal/policy/PhoneWindow;->getCallback()Landroid/view/Window$Callback;

    move-result-object v0

    .line 1771
    .local v0, "cb":Landroid/view/Window$Callback;
    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/android/internal/policy/DecorView;->mWindow:Lcom/android/internal/policy/PhoneWindow;

    invoke-virtual {v1}, Lcom/android/internal/policy/PhoneWindow;->isDestroyed()Z

    move-result v1

    if-nez v1, :cond_0

    iget v1, p0, Lcom/android/internal/policy/DecorView;->mFeatureId:I

    if-gez v1, :cond_0

    .line 1772
    invoke-interface {v0}, Landroid/view/Window$Callback;->onAttachedToWindow()V

    .line 1775
    :cond_0
    iget v1, p0, Lcom/android/internal/policy/DecorView;->mFeatureId:I

    const/4 v2, -0x1

    if-ne v1, v2, :cond_1

    .line 1783
    iget-object v1, p0, Lcom/android/internal/policy/DecorView;->mWindow:Lcom/android/internal/policy/PhoneWindow;

    invoke-virtual {v1}, Lcom/android/internal/policy/PhoneWindow;->openPanelsAfterRestore()V

    .line 1786
    :cond_1
    iget-boolean v1, p0, Lcom/android/internal/policy/DecorView;->mWindowResizeCallbacksAdded:Z

    if-nez v1, :cond_2

    .line 1789
    invoke-virtual {p0}, Lcom/android/internal/policy/DecorView;->getViewRootImpl()Landroid/view/ViewRootImpl;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/view/ViewRootImpl;->addWindowCallbacks(Landroid/view/WindowCallbacks;)V

    .line 1790
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/internal/policy/DecorView;->mWindowResizeCallbacksAdded:Z

    goto :goto_0

    .line 1791
    :cond_2
    iget-object v1, p0, Lcom/android/internal/policy/DecorView;->mBackdropFrameRenderer:Lcom/android/internal/policy/BackdropFrameRenderer;

    if-eqz v1, :cond_3

    .line 1794
    iget-object v1, p0, Lcom/android/internal/policy/DecorView;->mBackdropFrameRenderer:Lcom/android/internal/policy/BackdropFrameRenderer;

    invoke-virtual {v1}, Lcom/android/internal/policy/BackdropFrameRenderer;->onConfigurationChange()V

    .line 1796
    :cond_3
    :goto_0
    iget-object v1, p0, Lcom/android/internal/policy/DecorView;->mWindow:Lcom/android/internal/policy/PhoneWindow;

    invoke-virtual {p0}, Lcom/android/internal/policy/DecorView;->getViewRootImpl()Landroid/view/ViewRootImpl;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/internal/policy/PhoneWindow;->onViewRootImplSet(Landroid/view/ViewRootImpl;)V

    .line 1799
    iget-boolean v1, p0, Lcom/android/internal/policy/DecorView;->IS_SUPPORT_RECOGNITION:Z

    if-eqz v1, :cond_4

    .line 1800
    iget-object v1, p0, Lcom/android/internal/policy/DecorView;->mNubiaTextExtractor:Landroid/widget/NubiaTextExtractor;

    if-eqz v1, :cond_4

    .line 1801
    iget-object v1, p0, Lcom/android/internal/policy/DecorView;->mNubiaTextExtractor:Landroid/widget/NubiaTextExtractor;

    iget-object v2, p0, Lcom/android/internal/policy/DecorView;->mWindow:Lcom/android/internal/policy/PhoneWindow;

    invoke-virtual {v2}, Lcom/android/internal/policy/PhoneWindow;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v2

    iget v2, v2, Landroid/view/WindowManager$LayoutParams;->type:I

    invoke-virtual {v1, v2}, Landroid/widget/NubiaTextExtractor;->onAttachedToWindow(I)V

    .line 1805
    :cond_4
    return-void
.end method

.method public onCloseSystemDialogs(Ljava/lang/String;)V
    .locals 1
    .param p1, "reason"    # Ljava/lang/String;

    .line 1855
    iget v0, p0, Lcom/android/internal/policy/DecorView;->mFeatureId:I

    if-ltz v0, :cond_0

    .line 1856
    iget-object v0, p0, Lcom/android/internal/policy/DecorView;->mWindow:Lcom/android/internal/policy/PhoneWindow;

    invoke-virtual {v0}, Lcom/android/internal/policy/PhoneWindow;->closeAllPanels()V

    .line 1858
    :cond_0
    return-void
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 8
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .line 2099
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 2101
    nop

    .line 2103
    invoke-direct {p0}, Lcom/android/internal/policy/DecorView;->isFreeformMode()Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_1

    iget-object v0, p1, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    .line 2105
    invoke-virtual {v0}, Landroid/app/WindowConfiguration;->hasWindowDecorCaption()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    move v0, v2

    goto :goto_1

    :cond_1
    :goto_0
    move v0, v1

    .line 2107
    .local v0, "displayWindowDecor":Z
    :goto_1
    iget-boolean v3, p0, Lcom/android/internal/policy/DecorView;->mIsWeixinHomeUI:Z

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/android/internal/policy/DecorView;->mWeixinStartDecorCaptionView:Lcom/android/internal/widget/DecorCaptionView;

    if-eqz v3, :cond_2

    .line 2108
    iget-object v3, p0, Lcom/android/internal/policy/DecorView;->mWeixinStartDecorCaptionView:Lcom/android/internal/widget/DecorCaptionView;

    invoke-virtual {v3, v0}, Lcom/android/internal/widget/DecorCaptionView;->onConfigurationChanged(Z)V

    .line 2109
    invoke-virtual {p0, v0}, Lcom/android/internal/policy/DecorView;->enableCaption(Z)V

    goto :goto_2

    .line 2112
    :cond_2
    iget-object v3, p0, Lcom/android/internal/policy/DecorView;->mDecorCaptionView:Lcom/android/internal/widget/DecorCaptionView;

    if-nez v3, :cond_5

    if-eqz v0, :cond_5

    .line 2114
    iget-object v3, p0, Lcom/android/internal/policy/DecorView;->mWindow:Lcom/android/internal/policy/PhoneWindow;

    invoke-virtual {v3}, Lcom/android/internal/policy/PhoneWindow;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v3

    .line 2119
    .local v3, "inflater":Landroid/view/LayoutInflater;
    invoke-direct {p0, v3, v2}, Lcom/android/internal/policy/DecorView;->createDecorCaptionView(Landroid/view/LayoutInflater;Z)Lcom/android/internal/widget/DecorCaptionView;

    move-result-object v4

    iput-object v4, p0, Lcom/android/internal/policy/DecorView;->mDecorCaptionView:Lcom/android/internal/widget/DecorCaptionView;

    .line 2121
    iget-object v4, p0, Lcom/android/internal/policy/DecorView;->mDecorCaptionView:Lcom/android/internal/widget/DecorCaptionView;

    if-eqz v4, :cond_4

    .line 2122
    iget-object v4, p0, Lcom/android/internal/policy/DecorView;->mDecorCaptionView:Lcom/android/internal/widget/DecorCaptionView;

    invoke-virtual {v4}, Lcom/android/internal/widget/DecorCaptionView;->getParent()Landroid/view/ViewParent;

    move-result-object v4

    const/4 v5, -0x1

    if-nez v4, :cond_3

    .line 2123
    iget-object v4, p0, Lcom/android/internal/policy/DecorView;->mDecorCaptionView:Lcom/android/internal/widget/DecorCaptionView;

    new-instance v6, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v6, v5, v5}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v4, v2, v6}, Lcom/android/internal/policy/DecorView;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 2126
    :cond_3
    iget-object v4, p0, Lcom/android/internal/policy/DecorView;->mContentRoot:Landroid/view/ViewGroup;

    invoke-virtual {p0, v4}, Lcom/android/internal/policy/DecorView;->removeView(Landroid/view/View;)V

    .line 2127
    iget-object v4, p0, Lcom/android/internal/policy/DecorView;->mDecorCaptionView:Lcom/android/internal/widget/DecorCaptionView;

    iget-object v6, p0, Lcom/android/internal/policy/DecorView;->mContentRoot:Landroid/view/ViewGroup;

    new-instance v7, Landroid/view/ViewGroup$MarginLayoutParams;

    invoke-direct {v7, v5, v5}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(II)V

    invoke-virtual {v4, v6, v7}, Lcom/android/internal/widget/DecorCaptionView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 2130
    .end local v3    # "inflater":Landroid/view/LayoutInflater;
    :cond_4
    goto :goto_2

    :cond_5
    iget-object v3, p0, Lcom/android/internal/policy/DecorView;->mDecorCaptionView:Lcom/android/internal/widget/DecorCaptionView;

    if-eqz v3, :cond_6

    .line 2132
    iget-object v3, p0, Lcom/android/internal/policy/DecorView;->mDecorCaptionView:Lcom/android/internal/widget/DecorCaptionView;

    invoke-virtual {v3, v0}, Lcom/android/internal/widget/DecorCaptionView;->onConfigurationChanged(Z)V

    .line 2133
    invoke-virtual {p0, v0}, Lcom/android/internal/policy/DecorView;->enableCaption(Z)V

    .line 2136
    :cond_6
    :goto_2
    iget-boolean v3, p0, Lcom/android/internal/policy/DecorView;->mIsFreeformMode:Z

    if-eqz v3, :cond_7

    .line 2137
    invoke-direct {p0, v2}, Lcom/android/internal/policy/DecorView;->setGamePipOutlineProvider(Z)V

    goto :goto_3

    .line 2139
    :cond_7
    invoke-direct {p0, v1}, Lcom/android/internal/policy/DecorView;->setGamePipOutlineProvider(Z)V

    .line 2142
    :goto_3
    invoke-direct {p0}, Lcom/android/internal/policy/DecorView;->updateAvailableWidth()V

    .line 2143
    invoke-direct {p0}, Lcom/android/internal/policy/DecorView;->initializeElevation()V

    .line 2144
    return-void
.end method

.method public onContentDrawn(IIII)Z
    .locals 1
    .param p1, "offsetX"    # I
    .param p2, "offsetY"    # I
    .param p3, "sizeX"    # I
    .param p4, "sizeY"    # I

    .line 2566
    iget-object v0, p0, Lcom/android/internal/policy/DecorView;->mBackdropFrameRenderer:Lcom/android/internal/policy/BackdropFrameRenderer;

    if-nez v0, :cond_0

    .line 2567
    const/4 v0, 0x0

    return v0

    .line 2569
    :cond_0
    iget-object v0, p0, Lcom/android/internal/policy/DecorView;->mBackdropFrameRenderer:Lcom/android/internal/policy/BackdropFrameRenderer;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/android/internal/policy/BackdropFrameRenderer;->onContentDrawn(IIII)Z

    move-result v0

    return v0
.end method

.method protected onDetachedFromWindow()V
    .locals 4

    .line 1809
    invoke-super {p0}, Landroid/widget/FrameLayout;->onDetachedFromWindow()V

    .line 1811
    iget-object v0, p0, Lcom/android/internal/policy/DecorView;->mWindow:Lcom/android/internal/policy/PhoneWindow;

    invoke-virtual {v0}, Lcom/android/internal/policy/PhoneWindow;->getCallback()Landroid/view/Window$Callback;

    move-result-object v0

    .line 1812
    .local v0, "cb":Landroid/view/Window$Callback;
    if-eqz v0, :cond_0

    iget v1, p0, Lcom/android/internal/policy/DecorView;->mFeatureId:I

    if-gez v1, :cond_0

    .line 1813
    invoke-interface {v0}, Landroid/view/Window$Callback;->onDetachedFromWindow()V

    .line 1816
    :cond_0
    iget-object v1, p0, Lcom/android/internal/policy/DecorView;->mWindow:Lcom/android/internal/policy/PhoneWindow;

    iget-object v1, v1, Lcom/android/internal/policy/PhoneWindow;->mDecorContentParent:Lcom/android/internal/widget/DecorContentParent;

    if-eqz v1, :cond_1

    .line 1817
    iget-object v1, p0, Lcom/android/internal/policy/DecorView;->mWindow:Lcom/android/internal/policy/PhoneWindow;

    iget-object v1, v1, Lcom/android/internal/policy/PhoneWindow;->mDecorContentParent:Lcom/android/internal/widget/DecorContentParent;

    invoke-interface {v1}, Lcom/android/internal/widget/DecorContentParent;->dismissPopups()V

    .line 1820
    :cond_1
    iget-object v1, p0, Lcom/android/internal/policy/DecorView;->mPrimaryActionModePopup:Landroid/widget/PopupWindow;

    const/4 v2, 0x0

    if-eqz v1, :cond_3

    .line 1821
    iget-object v1, p0, Lcom/android/internal/policy/DecorView;->mShowPrimaryActionModePopup:Ljava/lang/Runnable;

    invoke-virtual {p0, v1}, Lcom/android/internal/policy/DecorView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 1822
    iget-object v1, p0, Lcom/android/internal/policy/DecorView;->mPrimaryActionModePopup:Landroid/widget/PopupWindow;

    invoke-virtual {v1}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1823
    iget-object v1, p0, Lcom/android/internal/policy/DecorView;->mPrimaryActionModePopup:Landroid/widget/PopupWindow;

    invoke-virtual {v1}, Landroid/widget/PopupWindow;->dismiss()V

    .line 1825
    :cond_2
    iput-object v2, p0, Lcom/android/internal/policy/DecorView;->mPrimaryActionModePopup:Landroid/widget/PopupWindow;

    .line 1827
    :cond_3
    iget-object v1, p0, Lcom/android/internal/policy/DecorView;->mFloatingToolbar:Lcom/android/internal/widget/FloatingToolbar;

    if-eqz v1, :cond_4

    .line 1828
    iget-object v1, p0, Lcom/android/internal/policy/DecorView;->mFloatingToolbar:Lcom/android/internal/widget/FloatingToolbar;

    invoke-virtual {v1}, Lcom/android/internal/widget/FloatingToolbar;->dismiss()V

    .line 1829
    iput-object v2, p0, Lcom/android/internal/policy/DecorView;->mFloatingToolbar:Lcom/android/internal/widget/FloatingToolbar;

    .line 1833
    :cond_4
    iget-boolean v1, p0, Lcom/android/internal/policy/DecorView;->IS_SUPPORT_RECOGNITION:Z

    if-eqz v1, :cond_5

    .line 1834
    iget-object v1, p0, Lcom/android/internal/policy/DecorView;->mNubiaTextExtractor:Landroid/widget/NubiaTextExtractor;

    if-eqz v1, :cond_5

    .line 1835
    iget-object v1, p0, Lcom/android/internal/policy/DecorView;->mNubiaTextExtractor:Landroid/widget/NubiaTextExtractor;

    invoke-virtual {v1}, Landroid/widget/NubiaTextExtractor;->onDetachedFromWindow()V

    .line 1840
    :cond_5
    iget-object v1, p0, Lcom/android/internal/policy/DecorView;->mWindow:Lcom/android/internal/policy/PhoneWindow;

    const/4 v2, 0x0

    invoke-virtual {v1, v2, v2}, Lcom/android/internal/policy/PhoneWindow;->getPanelState(IZ)Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;

    move-result-object v1

    .line 1841
    .local v1, "st":Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;
    if-eqz v1, :cond_6

    iget-object v3, v1, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->menu:Lcom/android/internal/view/menu/MenuBuilder;

    if-eqz v3, :cond_6

    iget v3, p0, Lcom/android/internal/policy/DecorView;->mFeatureId:I

    if-gez v3, :cond_6

    .line 1842
    iget-object v3, v1, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->menu:Lcom/android/internal/view/menu/MenuBuilder;

    invoke-virtual {v3}, Lcom/android/internal/view/menu/MenuBuilder;->close()V

    .line 1845
    :cond_6
    invoke-direct {p0}, Lcom/android/internal/policy/DecorView;->releaseThreadedRenderer()V

    .line 1847
    iget-boolean v3, p0, Lcom/android/internal/policy/DecorView;->mWindowResizeCallbacksAdded:Z

    if-eqz v3, :cond_7

    .line 1848
    invoke-virtual {p0}, Lcom/android/internal/policy/DecorView;->getViewRootImpl()Landroid/view/ViewRootImpl;

    move-result-object v3

    invoke-virtual {v3, p0}, Landroid/view/ViewRootImpl;->removeWindowCallbacks(Landroid/view/WindowCallbacks;)V

    .line 1849
    iput-boolean v2, p0, Lcom/android/internal/policy/DecorView;->mWindowResizeCallbacksAdded:Z

    .line 1851
    :cond_7
    return-void
.end method

.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 7
    .param p1, "c"    # Landroid/graphics/Canvas;

    .line 378
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onDraw(Landroid/graphics/Canvas;)V

    .line 380
    iget-object v0, p0, Lcom/android/internal/policy/DecorView;->mBackgroundFallback:Lcom/android/internal/widget/BackgroundFallback;

    iget-object v2, p0, Lcom/android/internal/policy/DecorView;->mContentRoot:Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/android/internal/policy/DecorView;->mWindow:Lcom/android/internal/policy/PhoneWindow;

    iget-object v4, v1, Lcom/android/internal/policy/PhoneWindow;->mContentParent:Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/android/internal/policy/DecorView;->mStatusColorViewState:Lcom/android/internal/policy/DecorView$ColorViewState;

    iget-object v5, v1, Lcom/android/internal/policy/DecorView$ColorViewState;->view:Landroid/view/View;

    iget-object v1, p0, Lcom/android/internal/policy/DecorView;->mNavigationColorViewState:Lcom/android/internal/policy/DecorView$ColorViewState;

    iget-object v6, v1, Lcom/android/internal/policy/DecorView$ColorViewState;->view:Landroid/view/View;

    move-object v1, p0

    move-object v3, p1

    invoke-virtual/range {v0 .. v6}, Lcom/android/internal/widget/BackgroundFallback;->draw(Landroid/view/ViewGroup;Landroid/view/ViewGroup;Landroid/graphics/Canvas;Landroid/view/View;Landroid/view/View;Landroid/view/View;)V

    .line 382
    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 6
    .param p1, "event"    # Landroid/view/MotionEvent;

    .line 555
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x3

    if-ne v0, v3, :cond_0

    invoke-static {}, Lnubia/os/edge/EdgeFeatureConfig;->isSupportThreeFingers()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 556
    const-string v0, "persist.sys.gesture.capture"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 557
    return v2

    .line 561
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 562
    .local v0, "action":I
    iget-boolean v3, p0, Lcom/android/internal/policy/DecorView;->mHasCaption:Z

    if-eqz v3, :cond_1

    invoke-virtual {p0}, Lcom/android/internal/policy/DecorView;->isShowingCaption()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 571
    if-nez v0, :cond_1

    .line 572
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    float-to-int v3, v3

    .line 573
    .local v3, "x":I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    float-to-int v4, v4

    .line 574
    .local v4, "y":I
    invoke-direct {p0, v3, v4}, Lcom/android/internal/policy/DecorView;->isOutOfInnerBounds(II)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 575
    return v2

    .line 580
    .end local v3    # "x":I
    .end local v4    # "y":I
    :cond_1
    iget v3, p0, Lcom/android/internal/policy/DecorView;->mFeatureId:I

    if-ltz v3, :cond_2

    .line 581
    if-nez v0, :cond_2

    .line 582
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    float-to-int v3, v3

    .line 583
    .restart local v3    # "x":I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    float-to-int v4, v4

    .line 584
    .restart local v4    # "y":I
    invoke-direct {p0, v3, v4}, Lcom/android/internal/policy/DecorView;->isOutOfBounds(II)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 585
    iget-object v1, p0, Lcom/android/internal/policy/DecorView;->mWindow:Lcom/android/internal/policy/PhoneWindow;

    iget v5, p0, Lcom/android/internal/policy/DecorView;->mFeatureId:I

    invoke-virtual {v1, v5}, Lcom/android/internal/policy/PhoneWindow;->closePanel(I)V

    .line 586
    return v2

    .line 592
    .end local v3    # "x":I
    .end local v4    # "y":I
    :cond_2
    return v1
.end method

.method protected onLayout(ZIIII)V
    .locals 10
    .param p1, "changed"    # Z
    .param p2, "left"    # I
    .param p3, "top"    # I
    .param p4, "right"    # I
    .param p5, "bottom"    # I

    .line 847
    invoke-super/range {p0 .. p5}, Landroid/widget/FrameLayout;->onLayout(ZIIII)V

    .line 848
    iget-object v0, p0, Lcom/android/internal/policy/DecorView;->mOutsets:Landroid/graphics/Rect;

    invoke-virtual {p0, v0}, Lcom/android/internal/policy/DecorView;->getOutsets(Landroid/graphics/Rect;)V

    .line 849
    iget-object v0, p0, Lcom/android/internal/policy/DecorView;->mOutsets:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    if-lez v0, :cond_0

    .line 850
    iget-object v0, p0, Lcom/android/internal/policy/DecorView;->mOutsets:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    neg-int v0, v0

    invoke-virtual {p0, v0}, Lcom/android/internal/policy/DecorView;->offsetLeftAndRight(I)V

    .line 852
    :cond_0
    iget-object v0, p0, Lcom/android/internal/policy/DecorView;->mOutsets:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->top:I

    if-lez v0, :cond_1

    .line 853
    iget-object v0, p0, Lcom/android/internal/policy/DecorView;->mOutsets:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->top:I

    neg-int v0, v0

    invoke-virtual {p0, v0}, Lcom/android/internal/policy/DecorView;->offsetTopAndBottom(I)V

    .line 855
    :cond_1
    iget-boolean v0, p0, Lcom/android/internal/policy/DecorView;->mApplyFloatingVerticalInsets:Z

    if-eqz v0, :cond_2

    .line 856
    iget-object v0, p0, Lcom/android/internal/policy/DecorView;->mFloatingInsets:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->top:I

    invoke-virtual {p0, v0}, Lcom/android/internal/policy/DecorView;->offsetTopAndBottom(I)V

    .line 858
    :cond_2
    iget-boolean v0, p0, Lcom/android/internal/policy/DecorView;->mApplyFloatingHorizontalInsets:Z

    if-eqz v0, :cond_3

    .line 859
    iget-object v0, p0, Lcom/android/internal/policy/DecorView;->mFloatingInsets:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    invoke-virtual {p0, v0}, Lcom/android/internal/policy/DecorView;->offsetLeftAndRight(I)V

    .line 862
    :cond_3
    iget-boolean v0, p0, Lcom/android/internal/policy/DecorView;->mIsQQ:Z

    if-eqz v0, :cond_6

    .line 863
    invoke-virtual {p0}, Lcom/android/internal/policy/DecorView;->getChildCount()I

    move-result v0

    .line 864
    .local v0, "count":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_6

    .line 865
    invoke-virtual {p0, v1}, Lcom/android/internal/policy/DecorView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 866
    .local v2, "child":Landroid/view/View;
    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    move-result v3

    const/16 v4, 0x8

    if-eq v3, v4, :cond_5

    invoke-direct {p0}, Lcom/android/internal/policy/DecorView;->isFreeformMode()Z

    move-result v3

    if-eqz v3, :cond_5

    .line 867
    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 868
    invoke-virtual {v2}, Landroid/view/View;->getMeasuredWidth()I

    move-result v3

    .line 869
    .local v3, "width":I
    invoke-virtual {v2}, Landroid/view/View;->getMeasuredHeight()I

    move-result v4

    .line 870
    .local v4, "height":I
    const/4 v5, 0x0

    .line 871
    .local v5, "childLeft":I
    const/4 v6, 0x0

    .line 872
    .local v6, "childTop":I
    invoke-virtual {v2}, Landroid/view/View;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object v7

    .line 873
    .local v7, "desc":Ljava/lang/CharSequence;
    if-eqz v7, :cond_4

    const-string v8, "qqExtra"

    invoke-interface {v7}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_4

    .line 874
    add-int/lit8 v6, v6, 0x7e

    .line 876
    :cond_4
    add-int v8, v5, v3

    add-int v9, v6, v4

    invoke-virtual {v2, v5, v6, v8, v9}, Landroid/view/View;->layout(IIII)V

    .line 864
    .end local v2    # "child":Landroid/view/View;
    .end local v3    # "width":I
    .end local v4    # "height":I
    .end local v5    # "childLeft":I
    .end local v6    # "childTop":I
    .end local v7    # "desc":Ljava/lang/CharSequence;
    :cond_5
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 884
    .end local v0    # "count":I
    .end local v1    # "i":I
    :cond_6
    invoke-direct {p0}, Lcom/android/internal/policy/DecorView;->updateElevation()V

    .line 885
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/policy/DecorView;->mAllowUpdateElevation:Z

    .line 887
    if-eqz p1, :cond_7

    iget v1, p0, Lcom/android/internal/policy/DecorView;->mResizeMode:I

    if-ne v1, v0, :cond_7

    .line 888
    invoke-virtual {p0}, Lcom/android/internal/policy/DecorView;->getViewRootImpl()Landroid/view/ViewRootImpl;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewRootImpl;->requestInvalidateRootRenderNode()V

    .line 890
    :cond_7
    return-void
.end method

.method protected onMeasure(II)V
    .locals 17
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    move-object/from16 v0, p0

    .line 731
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/policy/DecorView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    .line 732
    .local v1, "metrics":Landroid/util/DisplayMetrics;
    nop

    .line 733
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/policy/DecorView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    iget v2, v2, Landroid/content/res/Configuration;->orientation:I

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-ne v2, v3, :cond_0

    move v2, v3

    goto :goto_0

    :cond_0
    move v2, v4

    .line 735
    .local v2, "isPortrait":Z
    :goto_0
    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v5

    .line 736
    .local v5, "widthMode":I
    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v6

    .line 738
    .local v6, "heightMode":I
    const/4 v7, 0x0

    .line 739
    .local v7, "fixedWidth":Z
    iput-boolean v4, v0, Lcom/android/internal/policy/DecorView;->mApplyFloatingHorizontalInsets:Z

    .line 740
    const/4 v8, 0x6

    const/4 v9, 0x5

    const/high16 v10, 0x40000000    # 2.0f

    const/high16 v11, -0x80000000

    if-ne v5, v11, :cond_5

    .line 741
    if-eqz v2, :cond_1

    iget-object v12, v0, Lcom/android/internal/policy/DecorView;->mWindow:Lcom/android/internal/policy/PhoneWindow;

    iget-object v12, v12, Lcom/android/internal/policy/PhoneWindow;->mFixedWidthMinor:Landroid/util/TypedValue;

    goto :goto_1

    :cond_1
    iget-object v12, v0, Lcom/android/internal/policy/DecorView;->mWindow:Lcom/android/internal/policy/PhoneWindow;

    iget-object v12, v12, Lcom/android/internal/policy/PhoneWindow;->mFixedWidthMajor:Landroid/util/TypedValue;

    .line 742
    .local v12, "tvw":Landroid/util/TypedValue;
    :goto_1
    if-eqz v12, :cond_5

    iget v13, v12, Landroid/util/TypedValue;->type:I

    if-eqz v13, :cond_5

    .line 744
    iget v13, v12, Landroid/util/TypedValue;->type:I

    if-ne v13, v9, :cond_2

    .line 745
    invoke-virtual {v12, v1}, Landroid/util/TypedValue;->getDimension(Landroid/util/DisplayMetrics;)F

    move-result v13

    float-to-int v13, v13

    .local v13, "w":I
    :goto_2
    goto :goto_3

    .line 746
    .end local v13    # "w":I
    :cond_2
    iget v13, v12, Landroid/util/TypedValue;->type:I

    if-ne v13, v8, :cond_3

    .line 747
    iget v13, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-float v13, v13

    iget v14, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-float v14, v14

    invoke-virtual {v12, v13, v14}, Landroid/util/TypedValue;->getFraction(FF)F

    move-result v13

    float-to-int v13, v13

    goto :goto_2

    .line 749
    :cond_3
    move v13, v4

    .line 752
    .restart local v13    # "w":I
    :goto_3
    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v14

    .line 753
    .local v14, "widthSize":I
    if-lez v13, :cond_4

    .line 754
    nop

    .line 755
    invoke-static {v13, v14}, Ljava/lang/Math;->min(II)I

    move-result v15

    .line 754
    invoke-static {v15, v10}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v15

    .line 756
    .end local p1    # "widthMeasureSpec":I
    .local v15, "widthMeasureSpec":I
    const/4 v7, 0x1

    goto :goto_4

    .line 758
    .end local v15    # "widthMeasureSpec":I
    .restart local p1    # "widthMeasureSpec":I
    :cond_4
    iget-object v15, v0, Lcom/android/internal/policy/DecorView;->mFloatingInsets:Landroid/graphics/Rect;

    iget v15, v15, Landroid/graphics/Rect;->left:I

    sub-int v15, v14, v15

    iget-object v10, v0, Lcom/android/internal/policy/DecorView;->mFloatingInsets:Landroid/graphics/Rect;

    iget v10, v10, Landroid/graphics/Rect;->right:I

    sub-int/2addr v15, v10

    invoke-static {v15, v11}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v10

    .line 761
    .end local p1    # "widthMeasureSpec":I
    .local v10, "widthMeasureSpec":I
    iput-boolean v3, v0, Lcom/android/internal/policy/DecorView;->mApplyFloatingHorizontalInsets:Z

    .line 766
    .end local v12    # "tvw":Landroid/util/TypedValue;
    .end local v13    # "w":I
    .end local v14    # "widthSize":I
    move v15, v10

    goto :goto_4

    .end local v10    # "widthMeasureSpec":I
    .restart local p1    # "widthMeasureSpec":I
    :cond_5
    move/from16 v15, p1

    .end local p1    # "widthMeasureSpec":I
    .restart local v15    # "widthMeasureSpec":I
    :goto_4
    iput-boolean v4, v0, Lcom/android/internal/policy/DecorView;->mApplyFloatingVerticalInsets:Z

    .line 767
    if-ne v6, v11, :cond_a

    .line 768
    if-eqz v2, :cond_6

    iget-object v10, v0, Lcom/android/internal/policy/DecorView;->mWindow:Lcom/android/internal/policy/PhoneWindow;

    iget-object v10, v10, Lcom/android/internal/policy/PhoneWindow;->mFixedHeightMajor:Landroid/util/TypedValue;

    goto :goto_5

    .line 769
    :cond_6
    iget-object v10, v0, Lcom/android/internal/policy/DecorView;->mWindow:Lcom/android/internal/policy/PhoneWindow;

    iget-object v10, v10, Lcom/android/internal/policy/PhoneWindow;->mFixedHeightMinor:Landroid/util/TypedValue;

    .line 770
    .local v10, "tvh":Landroid/util/TypedValue;
    :goto_5
    if-eqz v10, :cond_a

    iget v12, v10, Landroid/util/TypedValue;->type:I

    if-eqz v12, :cond_a

    .line 772
    iget v12, v10, Landroid/util/TypedValue;->type:I

    if-ne v12, v9, :cond_7

    .line 773
    invoke-virtual {v10, v1}, Landroid/util/TypedValue;->getDimension(Landroid/util/DisplayMetrics;)F

    move-result v12

    float-to-int v12, v12

    .local v12, "h":I
    :goto_6
    goto :goto_7

    .line 774
    .end local v12    # "h":I
    :cond_7
    iget v12, v10, Landroid/util/TypedValue;->type:I

    if-ne v12, v8, :cond_8

    .line 775
    iget v12, v1, Landroid/util/DisplayMetrics;->heightPixels:I

    int-to-float v12, v12

    iget v13, v1, Landroid/util/DisplayMetrics;->heightPixels:I

    int-to-float v13, v13

    invoke-virtual {v10, v12, v13}, Landroid/util/TypedValue;->getFraction(FF)F

    move-result v12

    float-to-int v12, v12

    goto :goto_6

    .line 777
    :cond_8
    move v12, v4

    .line 780
    .restart local v12    # "h":I
    :goto_7
    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v13

    .line 781
    .local v13, "heightSize":I
    if-lez v12, :cond_9

    .line 782
    nop

    .line 783
    invoke-static {v12, v13}, Ljava/lang/Math;->min(II)I

    move-result v3

    .line 782
    const/high16 v14, 0x40000000    # 2.0f

    invoke-static {v3, v14}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    .end local p2    # "heightMeasureSpec":I
    .local v3, "heightMeasureSpec":I
    goto :goto_8

    .line 784
    .end local v3    # "heightMeasureSpec":I
    .restart local p2    # "heightMeasureSpec":I
    :cond_9
    iget-object v14, v0, Lcom/android/internal/policy/DecorView;->mWindow:Lcom/android/internal/policy/PhoneWindow;

    invoke-virtual {v14}, Lcom/android/internal/policy/PhoneWindow;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v14

    iget v14, v14, Landroid/view/WindowManager$LayoutParams;->flags:I

    and-int/lit16 v14, v14, 0x100

    if-nez v14, :cond_a

    .line 785
    iget-object v14, v0, Lcom/android/internal/policy/DecorView;->mFloatingInsets:Landroid/graphics/Rect;

    iget v14, v14, Landroid/graphics/Rect;->top:I

    sub-int v14, v13, v14

    iget-object v4, v0, Lcom/android/internal/policy/DecorView;->mFloatingInsets:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v14, v4

    invoke-static {v14, v11}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v4

    .line 787
    .end local p2    # "heightMeasureSpec":I
    .local v4, "heightMeasureSpec":I
    iput-boolean v3, v0, Lcom/android/internal/policy/DecorView;->mApplyFloatingVerticalInsets:Z

    .line 792
    .end local v10    # "tvh":Landroid/util/TypedValue;
    .end local v12    # "h":I
    .end local v13    # "heightSize":I
    move v3, v4

    goto :goto_8

    .end local v4    # "heightMeasureSpec":I
    .restart local p2    # "heightMeasureSpec":I
    :cond_a
    move/from16 v3, p2

    .end local p2    # "heightMeasureSpec":I
    .restart local v3    # "heightMeasureSpec":I
    :goto_8
    iget-object v4, v0, Lcom/android/internal/policy/DecorView;->mOutsets:Landroid/graphics/Rect;

    invoke-virtual {v0, v4}, Lcom/android/internal/policy/DecorView;->getOutsets(Landroid/graphics/Rect;)V

    .line 793
    iget-object v4, v0, Lcom/android/internal/policy/DecorView;->mOutsets:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->top:I

    if-gtz v4, :cond_b

    iget-object v4, v0, Lcom/android/internal/policy/DecorView;->mOutsets:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->bottom:I

    if-lez v4, :cond_c

    .line 794
    :cond_b
    invoke-static {v3}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v4

    .line 795
    .local v4, "mode":I
    if-eqz v4, :cond_c

    .line 796
    invoke-static {v3}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v10

    .line 797
    .local v10, "height":I
    iget-object v12, v0, Lcom/android/internal/policy/DecorView;->mOutsets:Landroid/graphics/Rect;

    iget v12, v12, Landroid/graphics/Rect;->top:I

    add-int/2addr v12, v10

    iget-object v13, v0, Lcom/android/internal/policy/DecorView;->mOutsets:Landroid/graphics/Rect;

    iget v13, v13, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v12, v13

    invoke-static {v12, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    .line 801
    .end local v4    # "mode":I
    .end local v10    # "height":I
    :cond_c
    iget-object v4, v0, Lcom/android/internal/policy/DecorView;->mOutsets:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->left:I

    if-gtz v4, :cond_d

    iget-object v4, v0, Lcom/android/internal/policy/DecorView;->mOutsets:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->right:I

    if-lez v4, :cond_e

    .line 802
    :cond_d
    invoke-static {v15}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v4

    .line 803
    .restart local v4    # "mode":I
    if-eqz v4, :cond_e

    .line 804
    invoke-static {v15}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v10

    .line 805
    .local v10, "width":I
    iget-object v12, v0, Lcom/android/internal/policy/DecorView;->mOutsets:Landroid/graphics/Rect;

    iget v12, v12, Landroid/graphics/Rect;->left:I

    add-int/2addr v12, v10

    iget-object v13, v0, Lcom/android/internal/policy/DecorView;->mOutsets:Landroid/graphics/Rect;

    iget v13, v13, Landroid/graphics/Rect;->right:I

    add-int/2addr v12, v13

    invoke-static {v12, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v15

    .line 810
    .end local v4    # "mode":I
    .end local v10    # "width":I
    :cond_e
    invoke-super {v0, v15, v3}, Landroid/widget/FrameLayout;->onMeasure(II)V

    .line 812
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/policy/DecorView;->getMeasuredWidth()I

    move-result v4

    .line 813
    .local v4, "width":I
    const/4 v10, 0x0

    .line 815
    .local v10, "measure":Z
    const/high16 v12, 0x40000000    # 2.0f

    invoke-static {v4, v12}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v13

    .line 817
    .end local v15    # "widthMeasureSpec":I
    .local v13, "widthMeasureSpec":I
    if-nez v7, :cond_12

    if-ne v5, v11, :cond_12

    .line 818
    if-eqz v2, :cond_f

    iget-object v11, v0, Lcom/android/internal/policy/DecorView;->mWindow:Lcom/android/internal/policy/PhoneWindow;

    iget-object v11, v11, Lcom/android/internal/policy/PhoneWindow;->mMinWidthMinor:Landroid/util/TypedValue;

    goto :goto_9

    :cond_f
    iget-object v11, v0, Lcom/android/internal/policy/DecorView;->mWindow:Lcom/android/internal/policy/PhoneWindow;

    iget-object v11, v11, Lcom/android/internal/policy/PhoneWindow;->mMinWidthMajor:Landroid/util/TypedValue;

    .line 819
    .local v11, "tv":Landroid/util/TypedValue;
    :goto_9
    iget v12, v11, Landroid/util/TypedValue;->type:I

    if-eqz v12, :cond_12

    .line 821
    iget v12, v11, Landroid/util/TypedValue;->type:I

    if-ne v12, v9, :cond_10

    .line 822
    invoke-virtual {v11, v1}, Landroid/util/TypedValue;->getDimension(Landroid/util/DisplayMetrics;)F

    move-result v8

    float-to-int v8, v8

    .local v8, "min":I
    :goto_a
    goto :goto_b

    .line 823
    .end local v8    # "min":I
    :cond_10
    iget v9, v11, Landroid/util/TypedValue;->type:I

    if-ne v9, v8, :cond_11

    .line 824
    iget v8, v0, Lcom/android/internal/policy/DecorView;->mAvailableWidth:F

    iget v9, v0, Lcom/android/internal/policy/DecorView;->mAvailableWidth:F

    invoke-virtual {v11, v8, v9}, Landroid/util/TypedValue;->getFraction(FF)F

    move-result v8

    float-to-int v8, v8

    goto :goto_a

    .line 826
    :cond_11
    const/4 v8, 0x0

    .line 831
    .restart local v8    # "min":I
    :goto_b
    if-ge v4, v8, :cond_12

    .line 832
    const/high16 v9, 0x40000000    # 2.0f

    invoke-static {v8, v9}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v13

    .line 833
    const/4 v10, 0x1

    .line 840
    .end local v8    # "min":I
    .end local v11    # "tv":Landroid/util/TypedValue;
    :cond_12
    if-eqz v10, :cond_13

    .line 841
    invoke-super {v0, v13, v3}, Landroid/widget/FrameLayout;->onMeasure(II)V

    .line 843
    :cond_13
    return-void
.end method

.method public onPostDraw(Landroid/view/DisplayListCanvas;)V
    .locals 0
    .param p1, "canvas"    # Landroid/view/DisplayListCanvas;

    .line 2586
    invoke-direct {p0, p1}, Lcom/android/internal/policy/DecorView;->drawResizingShadowIfNeeded(Landroid/view/DisplayListCanvas;)V

    .line 2587
    return-void
.end method

.method public onRequestDraw(Z)V
    .locals 1
    .param p1, "reportNextDraw"    # Z

    .line 2574
    iget-object v0, p0, Lcom/android/internal/policy/DecorView;->mBackdropFrameRenderer:Lcom/android/internal/policy/BackdropFrameRenderer;

    if-eqz v0, :cond_0

    .line 2575
    iget-object v0, p0, Lcom/android/internal/policy/DecorView;->mBackdropFrameRenderer:Lcom/android/internal/policy/BackdropFrameRenderer;

    invoke-virtual {v0, p1}, Lcom/android/internal/policy/BackdropFrameRenderer;->onRequestDraw(Z)V

    goto :goto_0

    .line 2576
    :cond_0
    if-eqz p1, :cond_1

    .line 2578
    invoke-virtual {p0}, Lcom/android/internal/policy/DecorView;->isAttachedToWindow()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2579
    invoke-virtual {p0}, Lcom/android/internal/policy/DecorView;->getViewRootImpl()Landroid/view/ViewRootImpl;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewRootImpl;->reportDrawFinish()V

    .line 2582
    :cond_1
    :goto_0
    return-void
.end method

.method onResourcesLoaded(Landroid/view/LayoutInflater;I)V
    .locals 8
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "layoutResource"    # I

    .line 2147
    iget-object v0, p0, Lcom/android/internal/policy/DecorView;->mBackdropFrameRenderer:Lcom/android/internal/policy/BackdropFrameRenderer;

    if-eqz v0, :cond_0

    .line 2148
    invoke-direct {p0}, Lcom/android/internal/policy/DecorView;->loadBackgroundDrawablesIfNeeded()V

    .line 2149
    iget-object v1, p0, Lcom/android/internal/policy/DecorView;->mBackdropFrameRenderer:Lcom/android/internal/policy/BackdropFrameRenderer;

    iget-object v3, p0, Lcom/android/internal/policy/DecorView;->mResizingBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    iget-object v4, p0, Lcom/android/internal/policy/DecorView;->mCaptionBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    iget-object v5, p0, Lcom/android/internal/policy/DecorView;->mUserCaptionBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    iget-object v0, p0, Lcom/android/internal/policy/DecorView;->mStatusColorViewState:Lcom/android/internal/policy/DecorView$ColorViewState;

    .line 2151
    invoke-direct {p0, v0}, Lcom/android/internal/policy/DecorView;->getCurrentColor(Lcom/android/internal/policy/DecorView$ColorViewState;)I

    move-result v6

    iget-object v0, p0, Lcom/android/internal/policy/DecorView;->mNavigationColorViewState:Lcom/android/internal/policy/DecorView$ColorViewState;

    .line 2152
    invoke-direct {p0, v0}, Lcom/android/internal/policy/DecorView;->getCurrentColor(Lcom/android/internal/policy/DecorView$ColorViewState;)I

    move-result v7

    .line 2149
    move-object v2, p0

    invoke-virtual/range {v1 .. v7}, Lcom/android/internal/policy/BackdropFrameRenderer;->onResourcesLoaded(Lcom/android/internal/policy/DecorView;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;II)V

    .line 2159
    :cond_0
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/android/internal/policy/DecorView;->createDecorCaptionView(Landroid/view/LayoutInflater;Z)Lcom/android/internal/widget/DecorCaptionView;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/policy/DecorView;->mDecorCaptionView:Lcom/android/internal/widget/DecorCaptionView;

    .line 2161
    const/4 v0, 0x0

    invoke-virtual {p1, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 2162
    .local v0, "root":Landroid/view/View;
    iget-object v1, p0, Lcom/android/internal/policy/DecorView;->mDecorCaptionView:Lcom/android/internal/widget/DecorCaptionView;

    const/4 v2, -0x1

    if-eqz v1, :cond_2

    .line 2163
    iget-object v1, p0, Lcom/android/internal/policy/DecorView;->mDecorCaptionView:Lcom/android/internal/widget/DecorCaptionView;

    invoke-virtual {v1}, Lcom/android/internal/widget/DecorCaptionView;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    if-nez v1, :cond_1

    .line 2164
    iget-object v1, p0, Lcom/android/internal/policy/DecorView;->mDecorCaptionView:Lcom/android/internal/widget/DecorCaptionView;

    new-instance v3, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v3, v2, v2}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v1, v3}, Lcom/android/internal/policy/DecorView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 2167
    :cond_1
    iget-object v1, p0, Lcom/android/internal/policy/DecorView;->mDecorCaptionView:Lcom/android/internal/widget/DecorCaptionView;

    new-instance v3, Landroid/view/ViewGroup$MarginLayoutParams;

    invoke-direct {v3, v2, v2}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(II)V

    invoke-virtual {v1, v0, v3}, Lcom/android/internal/widget/DecorCaptionView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0

    .line 2172
    :cond_2
    const/4 v1, 0x0

    new-instance v3, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v3, v2, v2}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v0, v1, v3}, Lcom/android/internal/policy/DecorView;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 2174
    :goto_0
    move-object v1, v0

    check-cast v1, Landroid/view/ViewGroup;

    iput-object v1, p0, Lcom/android/internal/policy/DecorView;->mContentRoot:Landroid/view/ViewGroup;

    .line 2175
    invoke-direct {p0}, Lcom/android/internal/policy/DecorView;->initializeElevation()V

    .line 2176
    return-void
.end method

.method public onRootViewScrollYChanged(I)V
    .locals 0
    .param p1, "rootScrollY"    # I

    .line 1883
    iput p1, p0, Lcom/android/internal/policy/DecorView;->mRootScrollY:I

    .line 1884
    invoke-direct {p0}, Lcom/android/internal/policy/DecorView;->updateColorViewTranslations()V

    .line 1885
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "event"    # Landroid/view/MotionEvent;

    .line 540
    invoke-virtual {p0, p1}, Lcom/android/internal/policy/DecorView;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public onWindowDragResizeEnd()V
    .locals 2

    .line 2555
    invoke-direct {p0}, Lcom/android/internal/policy/DecorView;->releaseThreadedRenderer()V

    .line 2556
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/policy/DecorView;->updateColorViews(Landroid/view/WindowInsets;Z)Landroid/view/WindowInsets;

    .line 2558
    invoke-direct {p0, v0}, Lcom/android/internal/policy/DecorView;->setGamePipOutlineProvider(Z)V

    .line 2560
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/internal/policy/DecorView;->mResizeMode:I

    .line 2561
    invoke-virtual {p0}, Lcom/android/internal/policy/DecorView;->getViewRootImpl()Landroid/view/ViewRootImpl;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewRootImpl;->requestInvalidateRootRenderNode()V

    .line 2562
    return-void
.end method

.method public onWindowDragResizeStart(Landroid/graphics/Rect;ZLandroid/graphics/Rect;Landroid/graphics/Rect;I)V
    .locals 16
    .param p1, "initialBounds"    # Landroid/graphics/Rect;
    .param p2, "fullscreen"    # Z
    .param p3, "systemInsets"    # Landroid/graphics/Rect;
    .param p4, "stableInsets"    # Landroid/graphics/Rect;
    .param p5, "resizeMode"    # I

    move-object/from16 v13, p0

    .line 2522
    iget-object v0, v13, Lcom/android/internal/policy/DecorView;->mWindow:Lcom/android/internal/policy/PhoneWindow;

    invoke-virtual {v0}, Lcom/android/internal/policy/PhoneWindow;->isDestroyed()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2524
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/policy/DecorView;->releaseThreadedRenderer()V

    .line 2525
    return-void

    .line 2527
    :cond_0
    iget-object v0, v13, Lcom/android/internal/policy/DecorView;->mBackdropFrameRenderer:Lcom/android/internal/policy/BackdropFrameRenderer;

    if-eqz v0, :cond_1

    .line 2528
    return-void

    .line 2530
    :cond_1
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/policy/DecorView;->getThreadedRenderer()Landroid/view/ThreadedRenderer;

    move-result-object v14

    .line 2531
    .local v14, "renderer":Landroid/view/ThreadedRenderer;
    if-eqz v14, :cond_2

    .line 2532
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/policy/DecorView;->loadBackgroundDrawablesIfNeeded()V

    .line 2533
    new-instance v15, Lcom/android/internal/policy/BackdropFrameRenderer;

    iget-object v4, v13, Lcom/android/internal/policy/DecorView;->mResizingBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    iget-object v5, v13, Lcom/android/internal/policy/DecorView;->mCaptionBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    iget-object v6, v13, Lcom/android/internal/policy/DecorView;->mUserCaptionBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    iget-object v0, v13, Lcom/android/internal/policy/DecorView;->mStatusColorViewState:Lcom/android/internal/policy/DecorView$ColorViewState;

    .line 2535
    invoke-direct {v13, v0}, Lcom/android/internal/policy/DecorView;->getCurrentColor(Lcom/android/internal/policy/DecorView$ColorViewState;)I

    move-result v7

    iget-object v0, v13, Lcom/android/internal/policy/DecorView;->mNavigationColorViewState:Lcom/android/internal/policy/DecorView$ColorViewState;

    .line 2536
    invoke-direct {v13, v0}, Lcom/android/internal/policy/DecorView;->getCurrentColor(Lcom/android/internal/policy/DecorView$ColorViewState;)I

    move-result v8

    move-object v0, v15

    move-object v1, v13

    move-object v2, v14

    move-object/from16 v3, p1

    move/from16 v9, p2

    move-object/from16 v10, p3

    move-object/from16 v11, p4

    move/from16 v12, p5

    invoke-direct/range {v0 .. v12}, Lcom/android/internal/policy/BackdropFrameRenderer;-><init>(Lcom/android/internal/policy/DecorView;Landroid/view/ThreadedRenderer;Landroid/graphics/Rect;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;IIZLandroid/graphics/Rect;Landroid/graphics/Rect;I)V

    iput-object v15, v13, Lcom/android/internal/policy/DecorView;->mBackdropFrameRenderer:Lcom/android/internal/policy/BackdropFrameRenderer;

    .line 2542
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/policy/DecorView;->updateElevation()V

    .line 2544
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {v13, v0, v1}, Lcom/android/internal/policy/DecorView;->updateColorViews(Landroid/view/WindowInsets;Z)Landroid/view/WindowInsets;

    .line 2547
    :cond_2
    const/4 v0, 0x1

    invoke-direct {v13, v0}, Lcom/android/internal/policy/DecorView;->setGamePipOutlineProvider(Z)V

    .line 2549
    move/from16 v0, p5

    iput v0, v13, Lcom/android/internal/policy/DecorView;->mResizeMode:I

    .line 2550
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/policy/DecorView;->getViewRootImpl()Landroid/view/ViewRootImpl;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/ViewRootImpl;->requestInvalidateRootRenderNode()V

    .line 2551
    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .locals 4
    .param p1, "hasWindowFocus"    # Z

    .line 1728
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onWindowFocusChanged(Z)V

    .line 1732
    iget-object v0, p0, Lcom/android/internal/policy/DecorView;->mWindow:Lcom/android/internal/policy/PhoneWindow;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/internal/policy/PhoneWindow;->hasFeature(I)Z

    move-result v0

    if-eqz v0, :cond_0

    if-nez p1, :cond_0

    iget-object v0, p0, Lcom/android/internal/policy/DecorView;->mWindow:Lcom/android/internal/policy/PhoneWindow;

    iget v0, v0, Lcom/android/internal/policy/PhoneWindow;->mPanelChordingKey:I

    if-eqz v0, :cond_0

    .line 1734
    iget-object v0, p0, Lcom/android/internal/policy/DecorView;->mWindow:Lcom/android/internal/policy/PhoneWindow;

    invoke-virtual {v0, v1}, Lcom/android/internal/policy/PhoneWindow;->closePanel(I)V

    .line 1737
    :cond_0
    iget-object v0, p0, Lcom/android/internal/policy/DecorView;->mWindow:Lcom/android/internal/policy/PhoneWindow;

    invoke-virtual {v0}, Lcom/android/internal/policy/PhoneWindow;->getCallback()Landroid/view/Window$Callback;

    move-result-object v0

    .line 1738
    .local v0, "cb":Landroid/view/Window$Callback;
    if-eqz v0, :cond_1

    iget-object v2, p0, Lcom/android/internal/policy/DecorView;->mWindow:Lcom/android/internal/policy/PhoneWindow;

    invoke-virtual {v2}, Lcom/android/internal/policy/PhoneWindow;->isDestroyed()Z

    move-result v2

    if-nez v2, :cond_1

    iget v2, p0, Lcom/android/internal/policy/DecorView;->mFeatureId:I

    if-gez v2, :cond_1

    .line 1739
    invoke-interface {v0, p1}, Landroid/view/Window$Callback;->onWindowFocusChanged(Z)V

    .line 1742
    :cond_1
    iget-object v2, p0, Lcom/android/internal/policy/DecorView;->mPrimaryActionMode:Landroid/view/ActionMode;

    if-eqz v2, :cond_2

    .line 1743
    iget-object v2, p0, Lcom/android/internal/policy/DecorView;->mPrimaryActionMode:Landroid/view/ActionMode;

    invoke-virtual {v2, p1}, Landroid/view/ActionMode;->onWindowFocusChanged(Z)V

    .line 1745
    :cond_2
    iget-object v2, p0, Lcom/android/internal/policy/DecorView;->mFloatingActionMode:Landroid/view/ActionMode;

    if-eqz v2, :cond_3

    .line 1746
    iget-object v2, p0, Lcom/android/internal/policy/DecorView;->mFloatingActionMode:Landroid/view/ActionMode;

    invoke-virtual {v2, p1}, Landroid/view/ActionMode;->onWindowFocusChanged(Z)V

    .line 1749
    :cond_3
    if-eqz p1, :cond_4

    invoke-direct {p0}, Lcom/android/internal/policy/DecorView;->isFreeformMode()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 1750
    invoke-virtual {p0}, Lcom/android/internal/policy/DecorView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "nubia_pip_launch_from"

    invoke-static {v2, v3}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1752
    .local v2, "launchFrom":Ljava/lang/String;
    const-string v3, "notification"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 1753
    invoke-direct {p0}, Lcom/android/internal/policy/DecorView;->checkEditTextInput()V

    .line 1756
    .end local v2    # "launchFrom":Ljava/lang/String;
    :cond_4
    iget-boolean v2, p0, Lcom/android/internal/policy/DecorView;->mIsFreeformMode:Z

    if-eqz v2, :cond_5

    .line 1757
    invoke-direct {p0, v1}, Lcom/android/internal/policy/DecorView;->setGamePipOutlineProvider(Z)V

    goto :goto_0

    .line 1759
    :cond_5
    const/4 v1, 0x1

    invoke-direct {p0, v1}, Lcom/android/internal/policy/DecorView;->setGamePipOutlineProvider(Z)V

    .line 1763
    :goto_0
    invoke-direct {p0}, Lcom/android/internal/policy/DecorView;->updateElevation()V

    .line 1764
    return-void
.end method

.method public onWindowSizeIsChanging(Landroid/graphics/Rect;ZLandroid/graphics/Rect;Landroid/graphics/Rect;)V
    .locals 1
    .param p1, "newBounds"    # Landroid/graphics/Rect;
    .param p2, "fullscreen"    # Z
    .param p3, "systemInsets"    # Landroid/graphics/Rect;
    .param p4, "stableInsets"    # Landroid/graphics/Rect;

    .line 2514
    iget-object v0, p0, Lcom/android/internal/policy/DecorView;->mBackdropFrameRenderer:Lcom/android/internal/policy/BackdropFrameRenderer;

    if-eqz v0, :cond_0

    .line 2515
    iget-object v0, p0, Lcom/android/internal/policy/DecorView;->mBackdropFrameRenderer:Lcom/android/internal/policy/BackdropFrameRenderer;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/android/internal/policy/BackdropFrameRenderer;->setTargetRect(Landroid/graphics/Rect;ZLandroid/graphics/Rect;Landroid/graphics/Rect;)V

    .line 2517
    :cond_0
    return-void
.end method

.method public onWindowSystemUiVisibilityChanged(I)V
    .locals 2
    .param p1, "visible"    # I

    .line 1085
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/android/internal/policy/DecorView;->updateColorViews(Landroid/view/WindowInsets;Z)Landroid/view/WindowInsets;

    .line 1086
    return-void
.end method

.method public requestKeyboardShortcuts(Ljava/util/List;I)V
    .locals 3
    .param p2, "deviceId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/view/KeyboardShortcutGroup;",
            ">;I)V"
        }
    .end annotation

    .line 2757
    .local p1, "list":Ljava/util/List;, "Ljava/util/List<Landroid/view/KeyboardShortcutGroup;>;"
    iget-object v0, p0, Lcom/android/internal/policy/DecorView;->mWindow:Lcom/android/internal/policy/PhoneWindow;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v1}, Lcom/android/internal/policy/PhoneWindow;->getPanelState(IZ)Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;

    move-result-object v0

    .line 2758
    .local v0, "st":Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;
    if-eqz v0, :cond_0

    iget-object v1, v0, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->menu:Lcom/android/internal/view/menu/MenuBuilder;

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 2759
    .local v1, "menu":Landroid/view/Menu;
    :goto_0
    iget-object v2, p0, Lcom/android/internal/policy/DecorView;->mWindow:Lcom/android/internal/policy/PhoneWindow;

    invoke-virtual {v2}, Lcom/android/internal/policy/PhoneWindow;->isDestroyed()Z

    move-result v2

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/android/internal/policy/DecorView;->mWindow:Lcom/android/internal/policy/PhoneWindow;

    invoke-virtual {v2}, Lcom/android/internal/policy/PhoneWindow;->getCallback()Landroid/view/Window$Callback;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 2760
    iget-object v2, p0, Lcom/android/internal/policy/DecorView;->mWindow:Lcom/android/internal/policy/PhoneWindow;

    invoke-virtual {v2}, Lcom/android/internal/policy/PhoneWindow;->getCallback()Landroid/view/Window$Callback;

    move-result-object v2

    invoke-interface {v2, p1, v1, p2}, Landroid/view/Window$Callback;->onProvideKeyboardShortcuts(Ljava/util/List;Landroid/view/Menu;I)V

    .line 2762
    :cond_1
    return-void
.end method

.method public sendAccessibilityEvent(I)V
    .locals 2
    .param p1, "eventType"    # I

    .line 656
    iget-object v0, p0, Lcom/android/internal/policy/DecorView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/accessibility/AccessibilityManager;->getInstance(Landroid/content/Context;)Landroid/view/accessibility/AccessibilityManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 657
    return-void

    .line 663
    :cond_0
    iget v0, p0, Lcom/android/internal/policy/DecorView;->mFeatureId:I

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/android/internal/policy/DecorView;->mFeatureId:I

    const/4 v1, 0x6

    if-eq v0, v1, :cond_1

    iget v0, p0, Lcom/android/internal/policy/DecorView;->mFeatureId:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    iget v0, p0, Lcom/android/internal/policy/DecorView;->mFeatureId:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_2

    .line 667
    :cond_1
    invoke-virtual {p0}, Lcom/android/internal/policy/DecorView;->getChildCount()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    .line 668
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/internal/policy/DecorView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/View;->sendAccessibilityEvent(I)V

    goto :goto_0

    .line 670
    :cond_2
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->sendAccessibilityEvent(I)V

    .line 672
    :goto_0
    return-void
.end method

.method setBackgroundFallback(I)V
    .locals 2
    .param p1, "resId"    # I

    .line 352
    iget-object v0, p0, Lcom/android/internal/policy/DecorView;->mBackgroundFallback:Lcom/android/internal/widget/BackgroundFallback;

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/android/internal/policy/DecorView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v0, v1}, Lcom/android/internal/widget/BackgroundFallback;->setDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 353
    invoke-virtual {p0}, Lcom/android/internal/policy/DecorView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/internal/policy/DecorView;->mBackgroundFallback:Lcom/android/internal/widget/BackgroundFallback;

    invoke-virtual {v0}, Lcom/android/internal/widget/BackgroundFallback;->hasFallback()Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x1

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    :goto_1
    invoke-virtual {p0, v0}, Lcom/android/internal/policy/DecorView;->setWillNotDraw(Z)V

    .line 354
    return-void
.end method

.method protected setFrame(IIII)Z
    .locals 8
    .param p1, "l"    # I
    .param p2, "t"    # I
    .param p3, "r"    # I
    .param p4, "b"    # I

    .line 687
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/FrameLayout;->setFrame(IIII)Z

    move-result v0

    .line 688
    .local v0, "changed":Z
    if-eqz v0, :cond_1

    .line 689
    iget-object v1, p0, Lcom/android/internal/policy/DecorView;->mDrawingBounds:Landroid/graphics/Rect;

    .line 690
    .local v1, "drawingBounds":Landroid/graphics/Rect;
    invoke-virtual {p0, v1}, Lcom/android/internal/policy/DecorView;->getDrawingRect(Landroid/graphics/Rect;)V

    .line 692
    invoke-virtual {p0}, Lcom/android/internal/policy/DecorView;->getForeground()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 693
    .local v2, "fg":Landroid/graphics/drawable/Drawable;
    if-eqz v2, :cond_0

    .line 694
    iget-object v3, p0, Lcom/android/internal/policy/DecorView;->mFrameOffsets:Landroid/graphics/Rect;

    .line 695
    .local v3, "frameOffsets":Landroid/graphics/Rect;
    iget v4, v1, Landroid/graphics/Rect;->left:I

    iget v5, v3, Landroid/graphics/Rect;->left:I

    add-int/2addr v4, v5

    iput v4, v1, Landroid/graphics/Rect;->left:I

    .line 696
    iget v4, v1, Landroid/graphics/Rect;->top:I

    iget v5, v3, Landroid/graphics/Rect;->top:I

    add-int/2addr v4, v5

    iput v4, v1, Landroid/graphics/Rect;->top:I

    .line 697
    iget v4, v1, Landroid/graphics/Rect;->right:I

    iget v5, v3, Landroid/graphics/Rect;->right:I

    sub-int/2addr v4, v5

    iput v4, v1, Landroid/graphics/Rect;->right:I

    .line 698
    iget v4, v1, Landroid/graphics/Rect;->bottom:I

    iget v5, v3, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v4, v5

    iput v4, v1, Landroid/graphics/Rect;->bottom:I

    .line 699
    invoke-virtual {v2, v1}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 700
    iget-object v4, p0, Lcom/android/internal/policy/DecorView;->mFramePadding:Landroid/graphics/Rect;

    .line 701
    .local v4, "framePadding":Landroid/graphics/Rect;
    iget v5, v1, Landroid/graphics/Rect;->left:I

    iget v6, v4, Landroid/graphics/Rect;->left:I

    iget v7, v3, Landroid/graphics/Rect;->left:I

    sub-int/2addr v6, v7

    add-int/2addr v5, v6

    iput v5, v1, Landroid/graphics/Rect;->left:I

    .line 702
    iget v5, v1, Landroid/graphics/Rect;->top:I

    iget v6, v4, Landroid/graphics/Rect;->top:I

    iget v7, v3, Landroid/graphics/Rect;->top:I

    sub-int/2addr v6, v7

    add-int/2addr v5, v6

    iput v5, v1, Landroid/graphics/Rect;->top:I

    .line 703
    iget v5, v1, Landroid/graphics/Rect;->right:I

    iget v6, v4, Landroid/graphics/Rect;->right:I

    iget v7, v3, Landroid/graphics/Rect;->right:I

    sub-int/2addr v6, v7

    sub-int/2addr v5, v6

    iput v5, v1, Landroid/graphics/Rect;->right:I

    .line 704
    iget v5, v1, Landroid/graphics/Rect;->bottom:I

    iget v6, v4, Landroid/graphics/Rect;->bottom:I

    iget v7, v3, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v6, v7

    sub-int/2addr v5, v6

    iput v5, v1, Landroid/graphics/Rect;->bottom:I

    .line 707
    .end local v3    # "frameOffsets":Landroid/graphics/Rect;
    .end local v4    # "framePadding":Landroid/graphics/Rect;
    :cond_0
    invoke-virtual {p0}, Lcom/android/internal/policy/DecorView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    .line 708
    .local v3, "bg":Landroid/graphics/drawable/Drawable;
    if-eqz v3, :cond_1

    .line 709
    invoke-virtual {v3, v1}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 726
    .end local v1    # "drawingBounds":Landroid/graphics/Rect;
    .end local v2    # "fg":Landroid/graphics/drawable/Drawable;
    .end local v3    # "bg":Landroid/graphics/drawable/Drawable;
    :cond_1
    return v0
.end method

.method public setOutlineProvider(Landroid/view/ViewOutlineProvider;)V
    .locals 0
    .param p1, "provider"    # Landroid/view/ViewOutlineProvider;

    .line 1649
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->setOutlineProvider(Landroid/view/ViewOutlineProvider;)V

    .line 1652
    iput-object p1, p0, Lcom/android/internal/policy/DecorView;->mLastOutlineProvider:Landroid/view/ViewOutlineProvider;

    .line 1653
    return-void
.end method

.method public setSmartRecognition(I)V
    .locals 1
    .param p1, "isEnable"    # I

    .line 3010
    if-nez p1, :cond_0

    .line 3011
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/policy/DecorView;->IS_SMART_RECOGNITION_ON:Z

    goto :goto_0

    .line 3012
    :cond_0
    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    .line 3013
    iput-boolean v0, p0, Lcom/android/internal/policy/DecorView;->IS_SMART_RECOGNITION_ON:Z

    .line 3015
    :cond_1
    :goto_0
    return-void
.end method

.method public setSurfaceFormat(I)V
    .locals 1
    .param p1, "format"    # I

    .line 1873
    iget-object v0, p0, Lcom/android/internal/policy/DecorView;->mWindow:Lcom/android/internal/policy/PhoneWindow;

    invoke-virtual {v0, p1}, Lcom/android/internal/policy/PhoneWindow;->setFormat(I)V

    .line 1874
    return-void
.end method

.method public setSurfaceKeepScreenOn(Z)V
    .locals 2
    .param p1, "keepOn"    # Z

    .line 1877
    const/16 v0, 0x80

    if-eqz p1, :cond_0

    iget-object v1, p0, Lcom/android/internal/policy/DecorView;->mWindow:Lcom/android/internal/policy/PhoneWindow;

    invoke-virtual {v1, v0}, Lcom/android/internal/policy/PhoneWindow;->addFlags(I)V

    goto :goto_0

    .line 1878
    :cond_0
    iget-object v1, p0, Lcom/android/internal/policy/DecorView;->mWindow:Lcom/android/internal/policy/PhoneWindow;

    invoke-virtual {v1, v0}, Lcom/android/internal/policy/PhoneWindow;->clearFlags(I)V

    .line 1879
    :goto_0
    return-void
.end method

.method public setSurfaceType(I)V
    .locals 1
    .param p1, "type"    # I

    .line 1869
    iget-object v0, p0, Lcom/android/internal/policy/DecorView;->mWindow:Lcom/android/internal/policy/PhoneWindow;

    invoke-virtual {v0, p1}, Lcom/android/internal/policy/PhoneWindow;->setType(I)V

    .line 1870
    return-void
.end method

.method setUserCaptionBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .param p1, "drawable"    # Landroid/graphics/drawable/Drawable;

    .line 2724
    iput-object p1, p0, Lcom/android/internal/policy/DecorView;->mUserCaptionBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    .line 2725
    iget-object v0, p0, Lcom/android/internal/policy/DecorView;->mBackdropFrameRenderer:Lcom/android/internal/policy/BackdropFrameRenderer;

    if-eqz v0, :cond_0

    .line 2726
    iget-object v0, p0, Lcom/android/internal/policy/DecorView;->mBackdropFrameRenderer:Lcom/android/internal/policy/BackdropFrameRenderer;

    invoke-virtual {v0, p1}, Lcom/android/internal/policy/BackdropFrameRenderer;->setUserCaptionBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 2728
    :cond_0
    return-void
.end method

.method public setViewOptimizeInfo(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 2988
    .local p1, "viewOptimizeInfo":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iput-object p1, p0, Lcom/android/internal/policy/DecorView;->mViewOptimizeInfo:Ljava/util/List;

    .line 2989
    return-void
.end method

.method setWindow(Lcom/android/internal/policy/PhoneWindow;)V
    .locals 3
    .param p1, "phoneWindow"    # Lcom/android/internal/policy/PhoneWindow;

    .line 2082
    iput-object p1, p0, Lcom/android/internal/policy/DecorView;->mWindow:Lcom/android/internal/policy/PhoneWindow;

    .line 2083
    invoke-virtual {p0}, Lcom/android/internal/policy/DecorView;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 2084
    .local v0, "context":Landroid/content/Context;
    instance-of v1, v0, Lcom/android/internal/policy/DecorContext;

    if-eqz v1, :cond_0

    .line 2085
    move-object v1, v0

    check-cast v1, Lcom/android/internal/policy/DecorContext;

    .line 2086
    .local v1, "decorContext":Lcom/android/internal/policy/DecorContext;
    iget-object v2, p0, Lcom/android/internal/policy/DecorView;->mWindow:Lcom/android/internal/policy/PhoneWindow;

    invoke-virtual {v1, v2}, Lcom/android/internal/policy/DecorContext;->setPhoneWindow(Lcom/android/internal/policy/PhoneWindow;)V

    .line 2088
    .end local v1    # "decorContext":Lcom/android/internal/policy/DecorContext;
    :cond_0
    return-void
.end method

.method public setWindowBackground(Landroid/graphics/drawable/Drawable;)V
    .locals 5
    .param p1, "drawable"    # Landroid/graphics/drawable/Drawable;

    .line 1052
    invoke-virtual {p0}, Lcom/android/internal/policy/DecorView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eq v0, p1, :cond_6

    .line 1053
    invoke-virtual {p0, p1}, Lcom/android/internal/policy/DecorView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1054
    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p1, :cond_2

    .line 1055
    iget-object v2, p0, Lcom/android/internal/policy/DecorView;->mWindow:Lcom/android/internal/policy/PhoneWindow;

    .line 1056
    invoke-virtual {v2}, Lcom/android/internal/policy/PhoneWindow;->isTranslucent()Z

    move-result v2

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/android/internal/policy/DecorView;->mWindow:Lcom/android/internal/policy/PhoneWindow;

    invoke-virtual {v2}, Lcom/android/internal/policy/PhoneWindow;->isShowingWallpaper()Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    .line 1055
    :cond_0
    move v0, v1

    goto :goto_1

    .line 1056
    :cond_1
    :goto_0
    nop

    .line 1055
    :goto_1
    invoke-static {p1, v0}, Lcom/android/internal/policy/DecorView;->enforceNonTranslucentBackground(Landroid/graphics/drawable/Drawable;Z)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/policy/DecorView;->mResizingBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    goto :goto_4

    .line 1058
    :cond_2
    nop

    .line 1059
    invoke-virtual {p0}, Lcom/android/internal/policy/DecorView;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/android/internal/policy/DecorView;->mWindow:Lcom/android/internal/policy/PhoneWindow;

    iget v3, v3, Lcom/android/internal/policy/PhoneWindow;->mBackgroundFallbackResource:I

    iget-object v4, p0, Lcom/android/internal/policy/DecorView;->mWindow:Lcom/android/internal/policy/PhoneWindow;

    .line 1060
    invoke-virtual {v4}, Lcom/android/internal/policy/PhoneWindow;->isTranslucent()Z

    move-result v4

    if-nez v4, :cond_4

    iget-object v4, p0, Lcom/android/internal/policy/DecorView;->mWindow:Lcom/android/internal/policy/PhoneWindow;

    invoke-virtual {v4}, Lcom/android/internal/policy/PhoneWindow;->isShowingWallpaper()Z

    move-result v4

    if-eqz v4, :cond_3

    goto :goto_2

    .line 1058
    :cond_3
    move v0, v1

    goto :goto_3

    .line 1060
    :cond_4
    :goto_2
    nop

    .line 1058
    :goto_3
    invoke-static {v2, v1, v3, v0}, Lcom/android/internal/policy/DecorView;->getResizingBackgroundDrawable(Landroid/content/Context;IIZ)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/policy/DecorView;->mResizingBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    .line 1062
    :goto_4
    iget-object v0, p0, Lcom/android/internal/policy/DecorView;->mResizingBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_5

    .line 1063
    iget-object v0, p0, Lcom/android/internal/policy/DecorView;->mResizingBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    iget-object v1, p0, Lcom/android/internal/policy/DecorView;->mBackgroundPadding:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    goto :goto_5

    .line 1065
    :cond_5
    iget-object v0, p0, Lcom/android/internal/policy/DecorView;->mBackgroundPadding:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->setEmpty()V

    .line 1067
    :goto_5
    invoke-direct {p0}, Lcom/android/internal/policy/DecorView;->drawableChanged()V

    .line 1069
    :cond_6
    return-void
.end method

.method public setWindowFrame(Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .param p1, "drawable"    # Landroid/graphics/drawable/Drawable;

    .line 1072
    invoke-virtual {p0}, Lcom/android/internal/policy/DecorView;->getForeground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eq v0, p1, :cond_1

    .line 1073
    invoke-virtual {p0, p1}, Lcom/android/internal/policy/DecorView;->setForeground(Landroid/graphics/drawable/Drawable;)V

    .line 1074
    if-eqz p1, :cond_0

    .line 1075
    iget-object v0, p0, Lcom/android/internal/policy/DecorView;->mFramePadding:Landroid/graphics/Rect;

    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    goto :goto_0

    .line 1077
    :cond_0
    iget-object v0, p0, Lcom/android/internal/policy/DecorView;->mFramePadding:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->setEmpty()V

    .line 1079
    :goto_0
    invoke-direct {p0}, Lcom/android/internal/policy/DecorView;->drawableChanged()V

    .line 1081
    :cond_1
    return-void
.end method

.method shouldAnimatePrimaryActionModeView()Z
    .locals 1

    .line 2036
    invoke-virtual {p0}, Lcom/android/internal/policy/DecorView;->isLaidOut()Z

    move-result v0

    return v0
.end method

.method public showContextMenuForChild(Landroid/view/View;)Z
    .locals 1
    .param p1, "originalView"    # Landroid/view/View;

    .line 903
    const/high16 v0, 0x7fc00000    # Float.NaN

    invoke-direct {p0, p1, v0, v0}, Lcom/android/internal/policy/DecorView;->showContextMenuForChildInternal(Landroid/view/View;FF)Z

    move-result v0

    return v0
.end method

.method public showContextMenuForChild(Landroid/view/View;FF)Z
    .locals 1
    .param p1, "originalView"    # Landroid/view/View;
    .param p2, "x"    # F
    .param p3, "y"    # F

    .line 908
    invoke-direct {p0, p1, p2, p3}, Lcom/android/internal/policy/DecorView;->showContextMenuForChildInternal(Landroid/view/View;FF)Z

    move-result v0

    return v0
.end method

.method public showStatusBarBackgroundPicture(Z)V
    .locals 2
    .param p1, "showBackground"    # Z

    .line 2968
    iput-boolean p1, p0, Lcom/android/internal/policy/DecorView;->mShowStatusBarBackgroundPicture:Z

    .line 2969
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/android/internal/policy/DecorView;->updateColorViews(Landroid/view/WindowInsets;Z)Landroid/view/WindowInsets;

    .line 2970
    return-void
.end method

.method public startActionMode(Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode;
    .locals 1
    .param p1, "callback"    # Landroid/view/ActionMode$Callback;

    .line 962
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/android/internal/policy/DecorView;->startActionMode(Landroid/view/ActionMode$Callback;I)Landroid/view/ActionMode;

    move-result-object v0

    return-object v0
.end method

.method public startActionMode(Landroid/view/ActionMode$Callback;I)Landroid/view/ActionMode;
    .locals 1
    .param p1, "callback"    # Landroid/view/ActionMode$Callback;
    .param p2, "type"    # I

    .line 967
    invoke-direct {p0, p0, p1, p2}, Lcom/android/internal/policy/DecorView;->startActionMode(Landroid/view/View;Landroid/view/ActionMode$Callback;I)Landroid/view/ActionMode;

    move-result-object v0

    return-object v0
.end method

.method public startActionModeForChild(Landroid/view/View;Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode;
    .locals 1
    .param p1, "originalView"    # Landroid/view/View;
    .param p2, "callback"    # Landroid/view/ActionMode$Callback;

    .line 951
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/android/internal/policy/DecorView;->startActionModeForChild(Landroid/view/View;Landroid/view/ActionMode$Callback;I)Landroid/view/ActionMode;

    move-result-object v0

    return-object v0
.end method

.method public startActionModeForChild(Landroid/view/View;Landroid/view/ActionMode$Callback;I)Landroid/view/ActionMode;
    .locals 1
    .param p1, "child"    # Landroid/view/View;
    .param p2, "callback"    # Landroid/view/ActionMode$Callback;
    .param p3, "type"    # I

    .line 957
    invoke-direct {p0, p1, p2, p3}, Lcom/android/internal/policy/DecorView;->startActionMode(Landroid/view/View;Landroid/view/ActionMode$Callback;I)Landroid/view/ActionMode;

    move-result-object v0

    return-object v0
.end method

.method startChanging()V
    .locals 1

    .line 1043
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/policy/DecorView;->mChanging:Z

    .line 1044
    return-void
.end method

.method public superDispatchGenericMotionEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "event"    # Landroid/view/MotionEvent;

    .line 535
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchGenericMotionEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public superDispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 3
    .param p1, "event"    # Landroid/view/KeyEvent;

    .line 495
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x4

    if-ne v0, v2, :cond_2

    .line 496
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    .line 498
    .local v0, "action":I
    iget-object v2, p0, Lcom/android/internal/policy/DecorView;->mPrimaryActionMode:Landroid/view/ActionMode;

    if-eqz v2, :cond_1

    .line 499
    if-ne v0, v1, :cond_0

    .line 500
    iget-object v2, p0, Lcom/android/internal/policy/DecorView;->mPrimaryActionMode:Landroid/view/ActionMode;

    invoke-virtual {v2}, Landroid/view/ActionMode;->finish()V

    .line 502
    :cond_0
    return v1

    .line 505
    :cond_1
    iget-boolean v2, p0, Lcom/android/internal/policy/DecorView;->IS_SUPPORT_RECOGNITION:Z

    if-eqz v2, :cond_2

    .line 506
    if-ne v0, v1, :cond_2

    iget-object v2, p0, Lcom/android/internal/policy/DecorView;->mNubiaTextExtractor:Landroid/widget/NubiaTextExtractor;

    if-eqz v2, :cond_2

    .line 507
    iget-boolean v2, p0, Lcom/android/internal/policy/DecorView;->IS_SMART_RECOGNITION_ON:Z

    if-eqz v2, :cond_2

    .line 508
    iget-object v2, p0, Lcom/android/internal/policy/DecorView;->mNubiaTextExtractor:Landroid/widget/NubiaTextExtractor;

    invoke-virtual {v2}, Landroid/widget/NubiaTextExtractor;->handleBackKey()V

    .line 515
    .end local v0    # "action":I
    :cond_2
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 516
    return v1

    .line 519
    :cond_3
    invoke-virtual {p0}, Lcom/android/internal/policy/DecorView;->getViewRootImpl()Landroid/view/ViewRootImpl;

    move-result-object v0

    if-eqz v0, :cond_4

    invoke-virtual {p0}, Lcom/android/internal/policy/DecorView;->getViewRootImpl()Landroid/view/ViewRootImpl;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/ViewRootImpl;->dispatchUnhandledKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    if-eqz v0, :cond_4

    goto :goto_0

    :cond_4
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public superDispatchKeyShortcutEvent(Landroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "event"    # Landroid/view/KeyEvent;

    .line 523
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchKeyShortcutEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method public superDispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "event"    # Landroid/view/MotionEvent;

    .line 527
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public superDispatchTrackballEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "event"    # Landroid/view/MotionEvent;

    .line 531
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchTrackballEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 2786
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "DecorView@"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/internal/policy/DecorView;->mWindow:Lcom/android/internal/policy/PhoneWindow;

    .line 2787
    invoke-virtual {v1}, Lcom/android/internal/policy/PhoneWindow;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/policy/DecorView;->getTitleSuffix(Landroid/view/WindowManager$LayoutParams;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2786
    return-object v0
.end method

.method updateColorViews(Landroid/view/WindowInsets;Z)Landroid/view/WindowInsets;
    .locals 25
    .param p1, "insets"    # Landroid/view/WindowInsets;
    .param p2, "animate"    # Z

    move-object/from16 v11, p0

    move-object/from16 v12, p1

    .line 1170
    iget-object v0, v11, Lcom/android/internal/policy/DecorView;->mWindow:Lcom/android/internal/policy/PhoneWindow;

    invoke-virtual {v0}, Lcom/android/internal/policy/PhoneWindow;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v13

    .line 1171
    .local v13, "attrs":Landroid/view/WindowManager$LayoutParams;
    iget v0, v13, Landroid/view/WindowManager$LayoutParams;->systemUiVisibility:I

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/policy/DecorView;->getWindowSystemUiVisibility()I

    move-result v1

    or-int v14, v0, v1

    .line 1174
    .local v14, "sysUiVisibility":I
    iget-object v0, v11, Lcom/android/internal/policy/DecorView;->mWindow:Lcom/android/internal/policy/PhoneWindow;

    .line 1175
    invoke-virtual {v0}, Lcom/android/internal/policy/PhoneWindow;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    const/4 v15, 0x1

    const/4 v10, 0x0

    const/16 v1, 0x7db

    if-ne v0, v1, :cond_0

    move v0, v15

    goto :goto_0

    :cond_0
    move v0, v10

    :goto_0
    move/from16 v16, v0

    .line 1176
    .local v16, "isImeWindow":Z
    iget-object v0, v11, Lcom/android/internal/policy/DecorView;->mWindow:Lcom/android/internal/policy/PhoneWindow;

    iget-boolean v0, v0, Lcom/android/internal/policy/PhoneWindow;->mIsFloating:Z

    const/high16 v17, -0x80000000

    if-eqz v0, :cond_2

    if-eqz v16, :cond_1

    goto :goto_1

    .line 1243
    :cond_1
    move/from16 v23, v10

    goto/16 :goto_13

    .line 1177
    :cond_2
    :goto_1
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/policy/DecorView;->isLaidOut()Z

    move-result v0

    xor-int/2addr v0, v15

    .line 1178
    .local v0, "disallowAnimate":Z
    iget v1, v11, Lcom/android/internal/policy/DecorView;->mLastWindowFlags:I

    iget v2, v13, Landroid/view/WindowManager$LayoutParams;->flags:I

    xor-int/2addr v1, v2

    and-int v1, v1, v17

    if-eqz v1, :cond_3

    move v1, v15

    goto :goto_2

    :cond_3
    move v1, v10

    :goto_2
    or-int/2addr v0, v1

    .line 1180
    iget v1, v13, Landroid/view/WindowManager$LayoutParams;->flags:I

    iput v1, v11, Lcom/android/internal/policy/DecorView;->mLastWindowFlags:I

    .line 1182
    if-eqz v12, :cond_c

    .line 1183
    invoke-virtual/range {p1 .. p1}, Landroid/view/WindowInsets;->getStableInsetTop()I

    move-result v1

    .line 1184
    invoke-virtual/range {p1 .. p1}, Landroid/view/WindowInsets;->getSystemWindowInsetTop()I

    move-result v2

    .line 1183
    invoke-static {v1, v2}, Lcom/android/internal/policy/DecorView;->getColorViewTopInset(II)I

    move-result v1

    iput v1, v11, Lcom/android/internal/policy/DecorView;->mLastTopInset:I

    .line 1185
    invoke-virtual/range {p1 .. p1}, Landroid/view/WindowInsets;->getStableInsetBottom()I

    move-result v1

    .line 1186
    invoke-virtual/range {p1 .. p1}, Landroid/view/WindowInsets;->getSystemWindowInsetBottom()I

    move-result v2

    .line 1185
    invoke-static {v1, v2}, Lcom/android/internal/policy/DecorView;->getColorViewBottomInset(II)I

    move-result v1

    iput v1, v11, Lcom/android/internal/policy/DecorView;->mLastBottomInset:I

    .line 1187
    invoke-virtual/range {p1 .. p1}, Landroid/view/WindowInsets;->getStableInsetRight()I

    move-result v1

    .line 1188
    invoke-virtual/range {p1 .. p1}, Landroid/view/WindowInsets;->getSystemWindowInsetRight()I

    move-result v2

    .line 1187
    invoke-static {v1, v2}, Lcom/android/internal/policy/DecorView;->getColorViewRightInset(II)I

    move-result v1

    iput v1, v11, Lcom/android/internal/policy/DecorView;->mLastRightInset:I

    .line 1189
    invoke-virtual/range {p1 .. p1}, Landroid/view/WindowInsets;->getStableInsetLeft()I

    move-result v1

    .line 1190
    invoke-virtual/range {p1 .. p1}, Landroid/view/WindowInsets;->getSystemWindowInsetLeft()I

    move-result v2

    .line 1189
    invoke-static {v1, v2}, Lcom/android/internal/policy/DecorView;->getColorViewRightInset(II)I

    move-result v1

    iput v1, v11, Lcom/android/internal/policy/DecorView;->mLastLeftInset:I

    .line 1195
    invoke-virtual/range {p1 .. p1}, Landroid/view/WindowInsets;->getStableInsetTop()I

    move-result v1

    if-eqz v1, :cond_4

    move v1, v15

    goto :goto_3

    :cond_4
    move v1, v10

    .line 1196
    .local v1, "hasTopStableInset":Z
    :goto_3
    iget-boolean v2, v11, Lcom/android/internal/policy/DecorView;->mLastHasTopStableInset:Z

    if-eq v1, v2, :cond_5

    move v2, v15

    goto :goto_4

    :cond_5
    move v2, v10

    :goto_4
    or-int/2addr v0, v2

    .line 1197
    iput-boolean v1, v11, Lcom/android/internal/policy/DecorView;->mLastHasTopStableInset:Z

    .line 1199
    invoke-virtual/range {p1 .. p1}, Landroid/view/WindowInsets;->getStableInsetBottom()I

    move-result v2

    if-eqz v2, :cond_6

    move v2, v15

    goto :goto_5

    :cond_6
    move v2, v10

    .line 1200
    .local v2, "hasBottomStableInset":Z
    :goto_5
    iget-boolean v3, v11, Lcom/android/internal/policy/DecorView;->mLastHasBottomStableInset:Z

    if-eq v2, v3, :cond_7

    move v3, v15

    goto :goto_6

    :cond_7
    move v3, v10

    :goto_6
    or-int/2addr v0, v3

    .line 1201
    iput-boolean v2, v11, Lcom/android/internal/policy/DecorView;->mLastHasBottomStableInset:Z

    .line 1203
    invoke-virtual/range {p1 .. p1}, Landroid/view/WindowInsets;->getStableInsetRight()I

    move-result v3

    if-eqz v3, :cond_8

    move v3, v15

    goto :goto_7

    :cond_8
    move v3, v10

    .line 1204
    .local v3, "hasRightStableInset":Z
    :goto_7
    iget-boolean v4, v11, Lcom/android/internal/policy/DecorView;->mLastHasRightStableInset:Z

    if-eq v3, v4, :cond_9

    move v4, v15

    goto :goto_8

    :cond_9
    move v4, v10

    :goto_8
    or-int/2addr v0, v4

    .line 1205
    iput-boolean v3, v11, Lcom/android/internal/policy/DecorView;->mLastHasRightStableInset:Z

    .line 1207
    invoke-virtual/range {p1 .. p1}, Landroid/view/WindowInsets;->getStableInsetLeft()I

    move-result v4

    if-eqz v4, :cond_a

    move v4, v15

    goto :goto_9

    :cond_a
    move v4, v10

    .line 1208
    .local v4, "hasLeftStableInset":Z
    :goto_9
    iget-boolean v5, v11, Lcom/android/internal/policy/DecorView;->mLastHasLeftStableInset:Z

    if-eq v4, v5, :cond_b

    move v5, v15

    goto :goto_a

    :cond_b
    move v5, v10

    :goto_a
    or-int/2addr v0, v5

    .line 1209
    iput-boolean v4, v11, Lcom/android/internal/policy/DecorView;->mLastHasLeftStableInset:Z

    .line 1211
    invoke-virtual/range {p1 .. p1}, Landroid/view/WindowInsets;->shouldAlwaysConsumeNavBar()Z

    move-result v5

    iput-boolean v5, v11, Lcom/android/internal/policy/DecorView;->mLastShouldAlwaysConsumeNavBar:Z

    .line 1213
    const-string v5, "cn.nubia.launcher"

    iget-object v6, v11, Lcom/android/internal/policy/DecorView;->mPackageName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_c

    .line 1214
    iput-boolean v10, v11, Lcom/android/internal/policy/DecorView;->mLastShouldAlwaysConsumeNavBar:Z

    .line 1219
    .end local v1    # "hasTopStableInset":Z
    .end local v2    # "hasBottomStableInset":Z
    .end local v3    # "hasRightStableInset":Z
    .end local v4    # "hasLeftStableInset":Z
    :cond_c
    move/from16 v18, v0

    .end local v0    # "disallowAnimate":Z
    .local v18, "disallowAnimate":Z
    iget v0, v11, Lcom/android/internal/policy/DecorView;->mLastBottomInset:I

    iget v1, v11, Lcom/android/internal/policy/DecorView;->mLastRightInset:I

    invoke-static {v0, v1}, Lcom/android/internal/policy/DecorView;->isNavBarToRightEdge(II)Z

    move-result v19

    .line 1220
    .local v19, "navBarToRightEdge":Z
    iget v0, v11, Lcom/android/internal/policy/DecorView;->mLastBottomInset:I

    iget v1, v11, Lcom/android/internal/policy/DecorView;->mLastLeftInset:I

    invoke-static {v0, v1}, Lcom/android/internal/policy/DecorView;->isNavBarToLeftEdge(II)Z

    move-result v20

    .line 1221
    .local v20, "navBarToLeftEdge":Z
    iget v0, v11, Lcom/android/internal/policy/DecorView;->mLastBottomInset:I

    iget v1, v11, Lcom/android/internal/policy/DecorView;->mLastRightInset:I

    iget v2, v11, Lcom/android/internal/policy/DecorView;->mLastLeftInset:I

    invoke-static {v0, v1, v2}, Lcom/android/internal/policy/DecorView;->getNavBarSize(III)I

    move-result v21

    .line 1222
    .local v21, "navBarSize":I
    iget-object v1, v11, Lcom/android/internal/policy/DecorView;->mNavigationColorViewState:Lcom/android/internal/policy/DecorView$ColorViewState;

    iget-object v0, v11, Lcom/android/internal/policy/DecorView;->mWindow:Lcom/android/internal/policy/PhoneWindow;

    iget v3, v0, Lcom/android/internal/policy/PhoneWindow;->mNavigationBarColor:I

    iget-object v0, v11, Lcom/android/internal/policy/DecorView;->mWindow:Lcom/android/internal/policy/PhoneWindow;

    iget v4, v0, Lcom/android/internal/policy/PhoneWindow;->mNavigationBarDividerColor:I

    if-nez v19, :cond_e

    if-eqz v20, :cond_d

    goto :goto_b

    :cond_d
    move v6, v10

    goto :goto_c

    :cond_e
    :goto_b
    move v6, v15

    :goto_c
    const/4 v8, 0x0

    if-eqz p2, :cond_f

    if-nez v18, :cond_f

    move v9, v15

    goto :goto_d

    :cond_f
    move v9, v10

    :goto_d
    const/16 v22, 0x0

    move-object v0, v11

    move v2, v14

    move/from16 v5, v21

    move/from16 v7, v20

    move/from16 v23, v10

    move/from16 v10, v22

    invoke-direct/range {v0 .. v10}, Lcom/android/internal/policy/DecorView;->updateColorViewInt(Lcom/android/internal/policy/DecorView$ColorViewState;IIIIZZIZZ)V

    .line 1227
    if-eqz v19, :cond_10

    iget-object v0, v11, Lcom/android/internal/policy/DecorView;->mNavigationColorViewState:Lcom/android/internal/policy/DecorView$ColorViewState;

    iget-boolean v0, v0, Lcom/android/internal/policy/DecorView$ColorViewState;->present:Z

    if-eqz v0, :cond_10

    move v0, v15

    goto :goto_e

    :cond_10
    move/from16 v0, v23

    :goto_e
    move/from16 v22, v0

    .line 1229
    .local v22, "statusBarNeedsRightInset":Z
    if-eqz v20, :cond_11

    iget-object v0, v11, Lcom/android/internal/policy/DecorView;->mNavigationColorViewState:Lcom/android/internal/policy/DecorView$ColorViewState;

    iget-boolean v0, v0, Lcom/android/internal/policy/DecorView$ColorViewState;->present:Z

    if-eqz v0, :cond_11

    move v0, v15

    goto :goto_f

    :cond_11
    move/from16 v0, v23

    :goto_f
    move/from16 v24, v0

    .line 1231
    .local v24, "statusBarNeedsLeftInset":Z
    if-eqz v22, :cond_12

    iget v0, v11, Lcom/android/internal/policy/DecorView;->mLastRightInset:I

    .line 1232
    :goto_10
    move v8, v0

    goto :goto_11

    :cond_12
    if-eqz v24, :cond_13

    iget v0, v11, Lcom/android/internal/policy/DecorView;->mLastLeftInset:I

    goto :goto_10

    :cond_13
    move/from16 v8, v23

    .line 1233
    .local v8, "statusBarSideInset":I
    :goto_11
    iget-object v1, v11, Lcom/android/internal/policy/DecorView;->mStatusColorViewState:Lcom/android/internal/policy/DecorView$ColorViewState;

    .line 1234
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/policy/DecorView;->calculateStatusBarColor()I

    move-result v3

    const/4 v4, 0x0

    iget v5, v11, Lcom/android/internal/policy/DecorView;->mLastTopInset:I

    const/4 v6, 0x0

    if-eqz p2, :cond_14

    if-nez v18, :cond_14

    move v9, v15

    goto :goto_12

    :cond_14
    move/from16 v9, v23

    :goto_12
    iget-boolean v10, v11, Lcom/android/internal/policy/DecorView;->mForceWindowDrawsStatusBarBackground:Z

    .line 1233
    move-object v0, v11

    move v2, v14

    move/from16 v7, v24

    invoke-direct/range {v0 .. v10}, Lcom/android/internal/policy/DecorView;->updateColorViewInt(Lcom/android/internal/policy/DecorView$ColorViewState;IIIIZZIZZ)V

    .line 1243
    .end local v8    # "statusBarSideInset":I
    .end local v18    # "disallowAnimate":Z
    .end local v19    # "navBarToRightEdge":Z
    .end local v20    # "navBarToLeftEdge":Z
    .end local v21    # "navBarSize":I
    .end local v22    # "statusBarNeedsRightInset":Z
    .end local v24    # "statusBarNeedsLeftInset":Z
    :goto_13
    iget v0, v13, Landroid/view/WindowManager$LayoutParams;->flags:I

    and-int v0, v0, v17

    if-eqz v0, :cond_15

    and-int/lit16 v0, v14, 0x200

    if-nez v0, :cond_15

    and-int/lit8 v0, v14, 0x2

    if-eqz v0, :cond_16

    :cond_15
    iget-boolean v0, v11, Lcom/android/internal/policy/DecorView;->mLastShouldAlwaysConsumeNavBar:Z

    if-eqz v0, :cond_17

    :cond_16
    move v0, v15

    goto :goto_14

    :cond_17
    move/from16 v0, v23

    .line 1251
    .local v0, "consumingNavBar":Z
    :goto_14
    and-int/lit16 v1, v14, 0x400

    if-nez v1, :cond_18

    and-int v1, v14, v17

    if-nez v1, :cond_18

    iget v1, v13, Landroid/view/WindowManager$LayoutParams;->flags:I

    and-int/lit16 v1, v1, 0x100

    if-nez v1, :cond_18

    iget v1, v13, Landroid/view/WindowManager$LayoutParams;->flags:I

    const/high16 v2, 0x10000

    and-int/2addr v1, v2

    if-nez v1, :cond_18

    iget-boolean v1, v11, Lcom/android/internal/policy/DecorView;->mForceWindowDrawsStatusBarBackground:Z

    if-eqz v1, :cond_18

    iget v1, v11, Lcom/android/internal/policy/DecorView;->mLastTopInset:I

    if-eqz v1, :cond_18

    goto :goto_15

    :cond_18
    move/from16 v15, v23

    :goto_15
    move v1, v15

    .line 1258
    .local v1, "consumingStatusBar":Z
    if-eqz v1, :cond_19

    iget v10, v11, Lcom/android/internal/policy/DecorView;->mLastTopInset:I

    goto :goto_16

    :cond_19
    move/from16 v10, v23

    :goto_16
    move v2, v10

    .line 1259
    .local v2, "consumedTop":I
    if-eqz v0, :cond_1a

    iget v10, v11, Lcom/android/internal/policy/DecorView;->mLastRightInset:I

    goto :goto_17

    :cond_1a
    move/from16 v10, v23

    :goto_17
    move v3, v10

    .line 1260
    .local v3, "consumedRight":I
    if-eqz v0, :cond_1b

    iget v10, v11, Lcom/android/internal/policy/DecorView;->mLastBottomInset:I

    goto :goto_18

    :cond_1b
    move/from16 v10, v23

    :goto_18
    move v4, v10

    .line 1261
    .local v4, "consumedBottom":I
    if-eqz v0, :cond_1c

    iget v10, v11, Lcom/android/internal/policy/DecorView;->mLastLeftInset:I

    move/from16 v23, v10

    nop

    :cond_1c
    move/from16 v5, v23

    .line 1263
    .local v5, "consumedLeft":I
    iget-object v6, v11, Lcom/android/internal/policy/DecorView;->mContentRoot:Landroid/view/ViewGroup;

    if-eqz v6, :cond_1f

    iget-object v6, v11, Lcom/android/internal/policy/DecorView;->mContentRoot:Landroid/view/ViewGroup;

    .line 1264
    invoke-virtual {v6}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    instance-of v6, v6, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz v6, :cond_1f

    .line 1265
    iget-object v6, v11, Lcom/android/internal/policy/DecorView;->mContentRoot:Landroid/view/ViewGroup;

    invoke-virtual {v6}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    check-cast v6, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 1266
    .local v6, "lp":Landroid/view/ViewGroup$MarginLayoutParams;
    iget v7, v6, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    if-ne v7, v2, :cond_1d

    iget v7, v6, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    if-ne v7, v3, :cond_1d

    iget v7, v6, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    if-ne v7, v4, :cond_1d

    iget v7, v6, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    if-eq v7, v5, :cond_1e

    .line 1268
    :cond_1d
    iput v2, v6, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 1269
    iput v3, v6, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    .line 1270
    iput v4, v6, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    .line 1271
    iput v5, v6, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 1272
    iget-object v7, v11, Lcom/android/internal/policy/DecorView;->mContentRoot:Landroid/view/ViewGroup;

    invoke-virtual {v7, v6}, Landroid/view/ViewGroup;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1274
    if-nez v12, :cond_1e

    .line 1277
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/policy/DecorView;->requestApplyInsets()V

    .line 1280
    :cond_1e
    if-eqz v12, :cond_1f

    .line 1281
    invoke-virtual {v12, v5, v2, v3, v4}, Landroid/view/WindowInsets;->inset(IIII)Landroid/view/WindowInsets;

    move-result-object v6

    .line 1285
    .end local p1    # "insets":Landroid/view/WindowInsets;
    .local v6, "insets":Landroid/view/WindowInsets;
    move-object v12, v6

    .end local v6    # "insets":Landroid/view/WindowInsets;
    .local v12, "insets":Landroid/view/WindowInsets;
    :cond_1f
    if-eqz v12, :cond_20

    .line 1286
    invoke-virtual {v12}, Landroid/view/WindowInsets;->consumeStableInsets()Landroid/view/WindowInsets;

    move-result-object v12

    .line 1288
    :cond_20
    return-object v12
.end method

.method updateDecorCaptionShade()V
    .locals 2

    .line 2434
    iget-object v0, p0, Lcom/android/internal/policy/DecorView;->mDecorCaptionView:Lcom/android/internal/widget/DecorCaptionView;

    if-eqz v0, :cond_0

    .line 2435
    invoke-virtual {p0}, Lcom/android/internal/policy/DecorView;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/policy/DecorView;->mDecorCaptionView:Lcom/android/internal/widget/DecorCaptionView;

    invoke-direct {p0, v0, v1}, Lcom/android/internal/policy/DecorView;->setDecorCaptionShade(Landroid/content/Context;Lcom/android/internal/widget/DecorCaptionView;)V

    .line 2437
    :cond_0
    return-void
.end method

.method updateLogTag(Landroid/view/WindowManager$LayoutParams;)V
    .locals 2
    .param p1, "params"    # Landroid/view/WindowManager$LayoutParams;

    .line 2743
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "DecorView["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lcom/android/internal/policy/DecorView;->getTitleSuffix(Landroid/view/WindowManager$LayoutParams;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/policy/DecorView;->mLogTag:Ljava/lang/String;

    .line 2744
    return-void
.end method

.method updateNavigationGuardColor()V
    .locals 2

    .line 1611
    iget-object v0, p0, Lcom/android/internal/policy/DecorView;->mNavigationGuard:Landroid/view/View;

    if-eqz v0, :cond_1

    .line 1615
    iget-object v0, p0, Lcom/android/internal/policy/DecorView;->mNavigationGuard:Landroid/view/View;

    iget-object v1, p0, Lcom/android/internal/policy/DecorView;->mWindow:Lcom/android/internal/policy/PhoneWindow;

    invoke-virtual {v1}, Lcom/android/internal/policy/PhoneWindow;->getNavigationBarColor()I

    move-result v1

    if-nez v1, :cond_0

    .line 1616
    const/4 v1, 0x4

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 1615
    :goto_0
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1618
    :cond_1
    return-void
.end method

.method public updatePictureInPictureOutlineProvider(Z)V
    .locals 2
    .param p1, "isInPictureInPictureMode"    # Z

    .line 1626
    iget-boolean v0, p0, Lcom/android/internal/policy/DecorView;->mIsInPictureInPictureMode:Z

    if-ne v0, p1, :cond_0

    .line 1627
    return-void

    .line 1630
    :cond_0
    if-eqz p1, :cond_2

    .line 1631
    iget-object v0, p0, Lcom/android/internal/policy/DecorView;->mWindow:Lcom/android/internal/policy/PhoneWindow;

    .line 1632
    invoke-virtual {v0}, Lcom/android/internal/policy/PhoneWindow;->getWindowControllerCallback()Landroid/view/Window$WindowControllerCallback;

    move-result-object v0

    .line 1633
    .local v0, "callback":Landroid/view/Window$WindowControllerCallback;
    if-eqz v0, :cond_1

    invoke-interface {v0}, Landroid/view/Window$WindowControllerCallback;->isTaskRoot()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1636
    sget-object v1, Lcom/android/internal/policy/DecorView;->PIP_OUTLINE_PROVIDER:Landroid/view/ViewOutlineProvider;

    invoke-super {p0, v1}, Landroid/widget/FrameLayout;->setOutlineProvider(Landroid/view/ViewOutlineProvider;)V

    .line 1638
    .end local v0    # "callback":Landroid/view/Window$WindowControllerCallback;
    :cond_1
    goto :goto_0

    .line 1640
    :cond_2
    invoke-virtual {p0}, Lcom/android/internal/policy/DecorView;->getOutlineProvider()Landroid/view/ViewOutlineProvider;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/policy/DecorView;->mLastOutlineProvider:Landroid/view/ViewOutlineProvider;

    if-eq v0, v1, :cond_3

    .line 1641
    iget-object v0, p0, Lcom/android/internal/policy/DecorView;->mLastOutlineProvider:Landroid/view/ViewOutlineProvider;

    invoke-virtual {p0, v0}, Lcom/android/internal/policy/DecorView;->setOutlineProvider(Landroid/view/ViewOutlineProvider;)V

    .line 1644
    :cond_3
    :goto_0
    iput-boolean p1, p0, Lcom/android/internal/policy/DecorView;->mIsInPictureInPictureMode:Z

    .line 1645
    return-void
.end method

.method public willYouTakeTheInputQueue()Landroid/view/InputQueue$Callback;
    .locals 1

    .line 1865
    iget v0, p0, Lcom/android/internal/policy/DecorView;->mFeatureId:I

    if-gez v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/policy/DecorView;->mWindow:Lcom/android/internal/policy/PhoneWindow;

    iget-object v0, v0, Lcom/android/internal/policy/PhoneWindow;->mTakeInputQueueCallback:Landroid/view/InputQueue$Callback;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public willYouTakeTheSurface()Landroid/view/SurfaceHolder$Callback2;
    .locals 1

    .line 1861
    iget v0, p0, Lcom/android/internal/policy/DecorView;->mFeatureId:I

    if-gez v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/policy/DecorView;->mWindow:Lcom/android/internal/policy/PhoneWindow;

    iget-object v0, v0, Lcom/android/internal/policy/PhoneWindow;->mTakeSurfaceCallback:Landroid/view/SurfaceHolder$Callback2;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method
