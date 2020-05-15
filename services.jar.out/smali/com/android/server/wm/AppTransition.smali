.class public Lcom/android/server/wm/AppTransition;
.super Ljava/lang/Object;
.source "AppTransition.java"

# interfaces
.implements Lcom/android/internal/util/DumpUtils$Dump;


# static fields
.field private static final APP_STATE_IDLE:I = 0x0

.field private static final APP_STATE_READY:I = 0x1

.field private static final APP_STATE_RUNNING:I = 0x2

.field private static final APP_STATE_TIMEOUT:I = 0x3

.field private static final APP_TRANSITION_TIMEOUT_MS:J = 0x7d0L

.field private static final CLIP_REVEAL_TRANSLATION_Y_DP:I = 0x8

.field static final DEFAULT_APP_TRANSITION_DURATION:I = 0x150

.field private static final MAX_CLIP_REVEAL_TRANSITION_DURATION:I = 0x1a4

.field private static final NEXT_TRANSIT_TYPE_CLIP_REVEAL:I = 0x8

.field private static final NEXT_TRANSIT_TYPE_CUSTOM:I = 0x1

.field private static final NEXT_TRANSIT_TYPE_CUSTOM_IN_PLACE:I = 0x7

.field private static final NEXT_TRANSIT_TYPE_NONE:I = 0x0

.field private static final NEXT_TRANSIT_TYPE_OPEN_CROSS_PROFILE_APPS:I = 0x9

.field private static final NEXT_TRANSIT_TYPE_REMOTE:I = 0xa

.field private static final NEXT_TRANSIT_TYPE_SCALE_UP:I = 0x2

.field private static final NEXT_TRANSIT_TYPE_THUMBNAIL_ASPECT_SCALE_DOWN:I = 0x6

.field private static final NEXT_TRANSIT_TYPE_THUMBNAIL_ASPECT_SCALE_UP:I = 0x5

.field private static final NEXT_TRANSIT_TYPE_THUMBNAIL_SCALE_DOWN:I = 0x4

.field private static final NEXT_TRANSIT_TYPE_THUMBNAIL_SCALE_UP:I = 0x3

.field private static final RECENTS_THUMBNAIL_FADEIN_FRACTION:F = 0.5f

.field private static final RECENTS_THUMBNAIL_FADEOUT_FRACTION:F = 0.5f

.field private static final TAG:Ljava/lang/String; = "WindowManager"

.field private static final THUMBNAIL_APP_TRANSITION_DURATION:I = 0x150

.field private static final THUMBNAIL_DOCK_INTERPOLATOR:Landroid/view/animation/Interpolator;

.field private static final THUMBNAIL_TRANSITION_ENTER_SCALE_DOWN:I = 0x2

.field private static final THUMBNAIL_TRANSITION_ENTER_SCALE_UP:I = 0x0

.field private static final THUMBNAIL_TRANSITION_EXIT_SCALE_DOWN:I = 0x3

.field private static final THUMBNAIL_TRANSITION_EXIT_SCALE_UP:I = 0x1

.field static final TOUCH_RESPONSE_INTERPOLATOR:Landroid/view/animation/Interpolator;


# instance fields
.field private mAnimationFinishedCallback:Landroid/os/IRemoteCallback;

.field private mAppTransitionState:I

.field private final mClipHorizontalInterpolator:Landroid/view/animation/Interpolator;

.field private final mClipRevealTranslationY:I

.field private final mConfigShortAnimTime:I

.field private final mContext:Landroid/content/Context;

.field private mCurrentUserId:I

.field private final mDecelerateInterpolator:Landroid/view/animation/Interpolator;

.field private final mDefaultExecutor:Ljava/util/concurrent/ExecutorService;

.field private mDefaultNextAppTransitionAnimationSpec:Landroid/view/AppTransitionAnimationSpec;

.field private final mFastOutLinearInInterpolator:Landroid/view/animation/Interpolator;

.field private final mFastOutSlowInInterpolator:Landroid/view/animation/Interpolator;

.field private mFormHomeRect:Landroid/graphics/Rect;

.field private final mGridLayoutRecentsEnabled:Z

.field private mLastClipRevealMaxTranslation:I

.field private mLastClipRevealTransitionDuration:J

.field private mLastClosingApp:Ljava/lang/String;

.field private mLastHadClipReveal:Z

.field private mLastOpeningApp:Ljava/lang/String;

.field private mLastUsedAppTransition:I

.field private final mLinearOutSlowInInterpolator:Landroid/view/animation/Interpolator;

.field private final mListeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/server/wm/WindowManagerInternal$AppTransitionListener;",
            ">;"
        }
    .end annotation
.end field

.field private final mLowRamRecentsEnabled:Z

.field private mNextAppTransition:I

.field private final mNextAppTransitionAnimationsSpecs:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/view/AppTransitionAnimationSpec;",
            ">;"
        }
    .end annotation
.end field

.field private mNextAppTransitionAnimationsSpecsFuture:Landroid/view/IAppTransitionAnimationSpecsFuture;

.field private mNextAppTransitionAnimationsSpecsPending:Z

.field private mNextAppTransitionCallback:Landroid/os/IRemoteCallback;

.field private mNextAppTransitionEnter:I

.field private mNextAppTransitionExit:I

.field private mNextAppTransitionFlags:I

.field private mNextAppTransitionFutureCallback:Landroid/os/IRemoteCallback;

.field private mNextAppTransitionInPlace:I

.field private mNextAppTransitionInsets:Landroid/graphics/Rect;

.field private mNextAppTransitionPackage:Ljava/lang/String;

.field private mNextAppTransitionScaleUp:Z

.field private mNextAppTransitionType:I

.field private mRemoteAnimationController:Lcom/android/server/wm/RemoteAnimationController;

.field private final mService:Lcom/android/server/wm/WindowManagerService;

.field private final mThumbnailFadeInInterpolator:Landroid/view/animation/Interpolator;

.field private final mThumbnailFadeOutInterpolator:Landroid/view/animation/Interpolator;

.field private mTmpFromClipRect:Landroid/graphics/Rect;

.field private final mTmpRect:Landroid/graphics/Rect;

.field private mTmpToClipRect:Landroid/graphics/Rect;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 151
    new-instance v0, Landroid/view/animation/PathInterpolator;

    const/4 v1, 0x0

    const/high16 v2, 0x3f800000    # 1.0f

    const v3, 0x3e99999a    # 0.3f

    const v4, 0x3dcccccd    # 0.1f

    invoke-direct {v0, v3, v1, v4, v2}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    sput-object v0, Lcom/android/server/wm/AppTransition;->TOUCH_RESPONSE_INTERPOLATOR:Landroid/view/animation/Interpolator;

    .line 154
    new-instance v0, Landroid/view/animation/PathInterpolator;

    const v3, 0x3f59999a    # 0.85f

    invoke-direct {v0, v3, v1, v2, v2}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    sput-object v0, Lcom/android/server/wm/AppTransition;->THUMBNAIL_DOCK_INTERPOLATOR:Landroid/view/animation/Interpolator;

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Lcom/android/server/wm/WindowManagerService;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "service"    # Lcom/android/server/wm/WindowManagerService;

    .line 255
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 168
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransition:I

    .line 169
    const/4 v1, 0x0

    iput v1, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionFlags:I

    .line 170
    iput v0, p0, Lcom/android/server/wm/AppTransition;->mLastUsedAppTransition:I

    .line 192
    iput v1, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionType:I

    .line 211
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionAnimationsSpecs:Landroid/util/SparseArray;

    .line 217
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionInsets:Landroid/graphics/Rect;

    .line 219
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/AppTransition;->mTmpFromClipRect:Landroid/graphics/Rect;

    .line 220
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/AppTransition;->mTmpToClipRect:Landroid/graphics/Rect;

    .line 222
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/AppTransition;->mTmpRect:Landroid/graphics/Rect;

    .line 228
    iput v1, p0, Lcom/android/server/wm/AppTransition;->mAppTransitionState:I

    .line 237
    new-instance v0, Landroid/view/animation/PathInterpolator;

    const/4 v2, 0x0

    const v3, 0x3ecccccd    # 0.4f

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-direct {v0, v2, v2, v3, v4}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    iput-object v0, p0, Lcom/android/server/wm/AppTransition;->mClipHorizontalInterpolator:Landroid/view/animation/Interpolator;

    .line 241
    iput v1, p0, Lcom/android/server/wm/AppTransition;->mCurrentUserId:I

    .line 242
    const-wide/16 v0, 0x150

    iput-wide v0, p0, Lcom/android/server/wm/AppTransition;->mLastClipRevealTransitionDuration:J

    .line 244
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/AppTransition;->mListeners:Ljava/util/ArrayList;

    .line 245
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/wm/AppTransition;->mDefaultExecutor:Ljava/util/concurrent/ExecutorService;

    .line 2290
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/wm/AppTransition;->mFormHomeRect:Landroid/graphics/Rect;

    .line 256
    iput-object p1, p0, Lcom/android/server/wm/AppTransition;->mContext:Landroid/content/Context;

    .line 257
    iput-object p2, p0, Lcom/android/server/wm/AppTransition;->mService:Lcom/android/server/wm/WindowManagerService;

    .line 258
    const v0, 0x10c000e

    invoke-static {p1, v0}, Landroid/view/animation/AnimationUtils;->loadInterpolator(Landroid/content/Context;I)Landroid/view/animation/Interpolator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/wm/AppTransition;->mLinearOutSlowInInterpolator:Landroid/view/animation/Interpolator;

    .line 260
    const v0, 0x10c000f

    invoke-static {p1, v0}, Landroid/view/animation/AnimationUtils;->loadInterpolator(Landroid/content/Context;I)Landroid/view/animation/Interpolator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/wm/AppTransition;->mFastOutLinearInInterpolator:Landroid/view/animation/Interpolator;

    .line 262
    const v0, 0x10c000d

    invoke-static {p1, v0}, Landroid/view/animation/AnimationUtils;->loadInterpolator(Landroid/content/Context;I)Landroid/view/animation/Interpolator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/wm/AppTransition;->mFastOutSlowInInterpolator:Landroid/view/animation/Interpolator;

    .line 264
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const/high16 v1, 0x10e0000

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    iput v0, p0, Lcom/android/server/wm/AppTransition;->mConfigShortAnimTime:I

    .line 266
    const v0, 0x10c0003

    invoke-static {p1, v0}, Landroid/view/animation/AnimationUtils;->loadInterpolator(Landroid/content/Context;I)Landroid/view/animation/Interpolator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/wm/AppTransition;->mDecelerateInterpolator:Landroid/view/animation/Interpolator;

    .line 268
    new-instance v0, Lcom/android/server/wm/AppTransition$1;

    invoke-direct {v0, p0}, Lcom/android/server/wm/AppTransition$1;-><init>(Lcom/android/server/wm/AppTransition;)V

    iput-object v0, p0, Lcom/android/server/wm/AppTransition;->mThumbnailFadeInInterpolator:Landroid/view/animation/Interpolator;

    .line 280
    new-instance v0, Lcom/android/server/wm/AppTransition$2;

    invoke-direct {v0, p0}, Lcom/android/server/wm/AppTransition$2;-><init>(Lcom/android/server/wm/AppTransition;)V

    iput-object v0, p0, Lcom/android/server/wm/AppTransition;->mThumbnailFadeOutInterpolator:Landroid/view/animation/Interpolator;

    .line 291
    iget-object v0, p0, Lcom/android/server/wm/AppTransition;->mContext:Landroid/content/Context;

    .line 292
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    const/high16 v1, 0x41000000    # 8.0f

    mul-float/2addr v1, v0

    float-to-int v0, v1

    iput v0, p0, Lcom/android/server/wm/AppTransition;->mClipRevealTranslationY:I

    .line 298
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/wm/AppTransition;->mGridLayoutRecentsEnabled:Z

    .line 301
    invoke-static {}, Landroid/app/ActivityManager;->isLowRamDeviceStatic()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/wm/AppTransition;->mLowRamRecentsEnabled:Z

    .line 302
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/wm/AppTransition;)Landroid/view/animation/Interpolator;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wm/AppTransition;

    .line 139
    iget-object v0, p0, Lcom/android/server/wm/AppTransition;->mFastOutLinearInInterpolator:Landroid/view/animation/Interpolator;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/server/wm/AppTransition;)Landroid/view/animation/Interpolator;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wm/AppTransition;

    .line 139
    iget-object v0, p0, Lcom/android/server/wm/AppTransition;->mLinearOutSlowInInterpolator:Landroid/view/animation/Interpolator;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/server/wm/AppTransition;)Lcom/android/server/wm/WindowManagerService;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wm/AppTransition;

    .line 139
    iget-object v0, p0, Lcom/android/server/wm/AppTransition;->mService:Lcom/android/server/wm/WindowManagerService;

    return-object v0
.end method

.method private appStateToString()Ljava/lang/String;
    .locals 2

    .line 2050
    iget v0, p0, Lcom/android/server/wm/AppTransition;->mAppTransitionState:I

    packed-switch v0, :pswitch_data_0

    .line 2060
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "unknown state="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/wm/AppTransition;->mAppTransitionState:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 2058
    :pswitch_0
    const-string v0, "APP_STATE_TIMEOUT"

    return-object v0

    .line 2056
    :pswitch_1
    const-string v0, "APP_STATE_RUNNING"

    return-object v0

    .line 2054
    :pswitch_2
    const-string v0, "APP_STATE_READY"

    return-object v0

    .line 2052
    :pswitch_3
    const-string v0, "APP_STATE_IDLE"

    return-object v0

    nop

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static appTransitionToString(I)Ljava/lang/String;
    .locals 2
    .param p0, "transition"    # I

    .line 1976
    packed-switch p0, :pswitch_data_0

    .line 2044
    :pswitch_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "<UNKNOWN: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ">"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 2041
    :pswitch_1
    const-string v0, "TRANSIT_CRASHING_ACTIVITY_CLOSE"

    return-object v0

    .line 2038
    :pswitch_2
    const-string v0, "TRANSIT_TRANSLUCENT_ACTIVITY_CLOSE"

    return-object v0

    .line 2035
    :pswitch_3
    const-string v0, "TRANSIT_TRANSLUCENT_ACTIVITY_OPEN"

    return-object v0

    .line 2032
    :pswitch_4
    const-string v0, "TRANSIT_KEYGUARD_UNOCCLUDE"

    return-object v0

    .line 2029
    :pswitch_5
    const-string v0, "TRANSIT_KEYGUARD_OCCLUDE"

    return-object v0

    .line 2026
    :pswitch_6
    const-string v0, "TRANSIT_KEYGUARD_GOING_AWAY_ON_WALLPAPER"

    return-object v0

    .line 2023
    :pswitch_7
    const-string v0, "TRANSIT_KEYGUARD_GOING_AWAY"

    return-object v0

    .line 2020
    :pswitch_8
    const-string v0, "TRANSIT_DOCK_TASK_FROM_RECENTS"

    return-object v0

    .line 2017
    :pswitch_9
    const-string v0, "TRANSIT_ACTIVITY_RELAUNCH"

    return-object v0

    .line 2014
    :pswitch_a
    const-string v0, "TRANSIT_TASK_OPEN_BEHIND"

    return-object v0

    .line 2011
    :pswitch_b
    const-string v0, "TRANSIT_WALLPAPER_INTRA_CLOSE"

    return-object v0

    .line 2008
    :pswitch_c
    const-string v0, "TRANSIT_WALLPAPER_INTRA_OPEN"

    return-object v0

    .line 2005
    :pswitch_d
    const-string v0, "TRANSIT_WALLPAPER_OPEN"

    return-object v0

    .line 2002
    :pswitch_e
    const-string v0, "TRANSIT_WALLPAPER_CLOSE"

    return-object v0

    .line 1999
    :pswitch_f
    const-string v0, "TRANSIT_TASK_TO_BACK"

    return-object v0

    .line 1996
    :pswitch_10
    const-string v0, "TRANSIT_TASK_TO_FRONT"

    return-object v0

    .line 1993
    :pswitch_11
    const-string v0, "TRANSIT_TASK_CLOSE"

    return-object v0

    .line 1990
    :pswitch_12
    const-string v0, "TRANSIT_TASK_OPEN"

    return-object v0

    .line 1987
    :pswitch_13
    const-string v0, "TRANSIT_ACTIVITY_CLOSE"

    return-object v0

    .line 1984
    :pswitch_14
    const-string v0, "TRANSIT_ACTIVITY_OPEN"

    return-object v0

    .line 1981
    :pswitch_15
    const-string v0, "TRANSIT_NONE"

    return-object v0

    .line 1978
    :pswitch_16
    const-string v0, "TRANSIT_UNSET"

    return-object v0

    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_16
        :pswitch_15
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_0
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method private calculateClipRevealTransitionDuration(ZFFLandroid/graphics/Rect;)J
    .locals 3
    .param p1, "cutOff"    # Z
    .param p2, "translationX"    # F
    .param p3, "translationY"    # F
    .param p4, "displayFrame"    # Landroid/graphics/Rect;

    .line 797
    if-nez p1, :cond_0

    .line 798
    const-wide/16 v0, 0x150

    return-wide v0

    .line 800
    :cond_0
    invoke-static {p2}, Ljava/lang/Math;->abs(F)F

    move-result v0

    invoke-virtual {p4}, Landroid/graphics/Rect;->width()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v0, v1

    .line 801
    invoke-static {p3}, Ljava/lang/Math;->abs(F)F

    move-result v1

    invoke-virtual {p4}, Landroid/graphics/Rect;->height()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v1, v2

    .line 800
    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    move-result v0

    .line 802
    .local v0, "fraction":F
    const/high16 v1, 0x43a80000    # 336.0f

    const/high16 v2, 0x42a80000    # 84.0f

    mul-float/2addr v2, v0

    add-float/2addr v1, v2

    float-to-long v1, v1

    return-wide v1
.end method

.method private canOverridePendingAppTransition()Z
    .locals 2

    .line 1932
    invoke-virtual {p0}, Lcom/android/server/wm/AppTransition;->isTransitionSet()Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionType:I

    const/16 v1, 0xa

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private static computePivot(IF)F
    .locals 3
    .param p0, "startPos"    # I
    .param p1, "finalScale"    # F

    .line 670
    const/high16 v0, 0x3f800000    # 1.0f

    sub-float v0, p1, v0

    .line 671
    .local v0, "denom":F
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v1

    const v2, 0x38d1b717    # 1.0E-4f

    cmpg-float v1, v1, v2

    if-gez v1, :cond_0

    .line 672
    int-to-float v1, p0

    return v1

    .line 674
    :cond_0
    neg-int v1, p0

    int-to-float v1, v1

    div-float/2addr v1, v0

    return v1
.end method

.method private createAspectScaledThumbnailEnterFreeformAnimationLocked(Landroid/graphics/Rect;Landroid/graphics/Rect;I)Landroid/view/animation/Animation;
    .locals 2
    .param p1, "frame"    # Landroid/graphics/Rect;
    .param p2, "surfaceInsets"    # Landroid/graphics/Rect;
    .param p3, "taskId"    # I

    .line 1314
    iget-object v0, p0, Lcom/android/server/wm/AppTransition;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {p0, p3, v0}, Lcom/android/server/wm/AppTransition;->getNextAppTransitionStartRect(ILandroid/graphics/Rect;)V

    .line 1315
    iget-object v0, p0, Lcom/android/server/wm/AppTransition;->mTmpRect:Landroid/graphics/Rect;

    const/4 v1, 0x1

    invoke-direct {p0, v0, p1, p2, v1}, Lcom/android/server/wm/AppTransition;->createAspectScaledThumbnailFreeformAnimationLocked(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Z)Landroid/view/animation/AnimationSet;

    move-result-object v0

    return-object v0
.end method

.method private createAspectScaledThumbnailExitFreeformAnimationLocked(Landroid/graphics/Rect;Landroid/graphics/Rect;I)Landroid/view/animation/Animation;
    .locals 2
    .param p1, "frame"    # Landroid/graphics/Rect;
    .param p2, "surfaceInsets"    # Landroid/graphics/Rect;
    .param p3, "taskId"    # I

    .line 1321
    iget-object v0, p0, Lcom/android/server/wm/AppTransition;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {p0, p3, v0}, Lcom/android/server/wm/AppTransition;->getNextAppTransitionStartRect(ILandroid/graphics/Rect;)V

    .line 1322
    iget-object v0, p0, Lcom/android/server/wm/AppTransition;->mTmpRect:Landroid/graphics/Rect;

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, p2, v1}, Lcom/android/server/wm/AppTransition;->createAspectScaledThumbnailFreeformAnimationLocked(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Z)Landroid/view/animation/AnimationSet;

    move-result-object v0

    return-object v0
.end method

.method private createAspectScaledThumbnailFreeformAnimationLocked(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Z)Landroid/view/animation/AnimationSet;
    .locals 32
    .param p1, "sourceFrame"    # Landroid/graphics/Rect;
    .param p2, "destFrame"    # Landroid/graphics/Rect;
    .param p3, "surfaceInsets"    # Landroid/graphics/Rect;
    .param p4, "enter"    # Z

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    .line 1328
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Rect;->width()I

    move-result v5

    int-to-float v5, v5

    .line 1329
    .local v5, "sourceWidth":F
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Rect;->height()I

    move-result v6

    int-to-float v6, v6

    .line 1330
    .local v6, "sourceHeight":F
    invoke-virtual/range {p2 .. p2}, Landroid/graphics/Rect;->width()I

    move-result v7

    int-to-float v7, v7

    .line 1331
    .local v7, "destWidth":F
    invoke-virtual/range {p2 .. p2}, Landroid/graphics/Rect;->height()I

    move-result v8

    int-to-float v8, v8

    .line 1332
    .local v8, "destHeight":F
    if-eqz p4, :cond_0

    div-float v9, v5, v7

    :goto_0
    move v11, v9

    goto :goto_1

    :cond_0
    div-float v9, v7, v5

    goto :goto_0

    .line 1333
    .local v11, "scaleH":F
    :goto_1
    if-eqz p4, :cond_1

    div-float v9, v6, v8

    :goto_2
    move v13, v9

    goto :goto_3

    :cond_1
    div-float v9, v8, v6

    goto :goto_2

    .line 1334
    .local v13, "scaleV":F
    :goto_3
    new-instance v9, Landroid/view/animation/AnimationSet;

    const/4 v10, 0x1

    invoke-direct {v9, v10}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    .line 1335
    .local v9, "set":Landroid/view/animation/AnimationSet;
    const/4 v10, 0x0

    if-nez v3, :cond_2

    .line 1336
    move v12, v10

    goto :goto_4

    :cond_2
    iget v12, v3, Landroid/graphics/Rect;->left:I

    iget v14, v3, Landroid/graphics/Rect;->right:I

    add-int/2addr v12, v14

    :goto_4
    move v15, v12

    .line 1337
    .local v15, "surfaceInsetsH":I
    if-nez v3, :cond_3

    .line 1338
    goto :goto_5

    :cond_3
    iget v10, v3, Landroid/graphics/Rect;->top:I

    iget v12, v3, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v10, v12

    :goto_5
    move v14, v10

    .line 1341
    .local v14, "surfaceInsetsV":I
    if-eqz p4, :cond_4

    move v10, v7

    goto :goto_6

    :cond_4
    move v10, v5

    :goto_6
    int-to-float v12, v15

    add-float/2addr v10, v12

    const/high16 v12, 0x40000000    # 2.0f

    div-float v23, v10, v12

    .line 1342
    .local v23, "scaleHCenter":F
    if-eqz p4, :cond_5

    move v10, v8

    goto :goto_7

    :cond_5
    move v10, v6

    :goto_7
    int-to-float v3, v14

    add-float/2addr v10, v3

    div-float v3, v10, v12

    .line 1343
    .local v3, "scaleVCenter":F
    if-eqz p4, :cond_6

    .line 1344
    new-instance v17, Landroid/view/animation/ScaleAnimation;

    const/high16 v12, 0x3f800000    # 1.0f

    const/high16 v16, 0x3f800000    # 1.0f

    move-object/from16 v10, v17

    move/from16 v24, v14

    move/from16 v14, v16

    .end local v14    # "surfaceInsetsV":I
    .local v24, "surfaceInsetsV":I
    move/from16 v25, v15

    move/from16 v15, v23

    .end local v15    # "surfaceInsetsH":I
    .local v25, "surfaceInsetsH":I
    move/from16 v16, v3

    invoke-direct/range {v10 .. v16}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFFF)V

    goto :goto_8

    .line 1345
    .end local v24    # "surfaceInsetsV":I
    .end local v25    # "surfaceInsetsH":I
    .restart local v14    # "surfaceInsetsV":I
    .restart local v15    # "surfaceInsetsH":I
    :cond_6
    move/from16 v24, v14

    move/from16 v25, v15

    .end local v14    # "surfaceInsetsV":I
    .end local v15    # "surfaceInsetsH":I
    .restart local v24    # "surfaceInsetsV":I
    .restart local v25    # "surfaceInsetsH":I
    new-instance v10, Landroid/view/animation/ScaleAnimation;

    const/high16 v17, 0x3f800000    # 1.0f

    const/high16 v19, 0x3f800000    # 1.0f

    move-object/from16 v16, v10

    move/from16 v18, v11

    move/from16 v20, v13

    move/from16 v21, v23

    move/from16 v22, v3

    invoke-direct/range {v16 .. v22}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFFF)V

    .line 1346
    .local v10, "scale":Landroid/view/animation/ScaleAnimation;
    :goto_8
    iget v12, v1, Landroid/graphics/Rect;->left:I

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Rect;->width()I

    move-result v14

    div-int/lit8 v14, v14, 0x2

    add-int/2addr v12, v14

    .line 1347
    .local v12, "sourceHCenter":I
    iget v14, v1, Landroid/graphics/Rect;->top:I

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Rect;->height()I

    move-result v15

    div-int/lit8 v15, v15, 0x2

    add-int/2addr v14, v15

    .line 1348
    .local v14, "sourceVCenter":I
    iget v15, v2, Landroid/graphics/Rect;->left:I

    invoke-virtual/range {p2 .. p2}, Landroid/graphics/Rect;->width()I

    move-result v16

    div-int/lit8 v16, v16, 0x2

    add-int v15, v15, v16

    .line 1349
    .local v15, "destHCenter":I
    iget v1, v2, Landroid/graphics/Rect;->top:I

    invoke-virtual/range {p2 .. p2}, Landroid/graphics/Rect;->height()I

    move-result v16

    div-int/lit8 v16, v16, 0x2

    add-int v1, v1, v16

    .line 1350
    .local v1, "destVCenter":I
    if-eqz p4, :cond_7

    sub-int v16, v12, v15

    goto :goto_9

    :cond_7
    sub-int v16, v15, v12

    :goto_9
    move/from16 v26, v16

    .line 1351
    .local v26, "fromX":I
    if-eqz p4, :cond_8

    sub-int v16, v14, v1

    goto :goto_a

    :cond_8
    sub-int v16, v1, v14

    :goto_a
    move/from16 v27, v16

    .line 1352
    .local v27, "fromY":I
    move/from16 v28, v1

    .end local v1    # "destVCenter":I
    .local v28, "destVCenter":I
    if-eqz p4, :cond_9

    new-instance v1, Landroid/view/animation/TranslateAnimation;

    move/from16 v29, v3

    move/from16 v2, v26

    int-to-float v3, v2

    .end local v3    # "scaleVCenter":F
    .end local v26    # "fromX":I
    .local v2, "fromX":I
    .local v29, "scaleVCenter":F
    move/from16 v30, v5

    move/from16 v4, v27

    int-to-float v5, v4

    .end local v5    # "sourceWidth":F
    .end local v27    # "fromY":I
    .local v4, "fromY":I
    .local v30, "sourceWidth":F
    move/from16 v31, v6

    const/4 v6, 0x0

    invoke-direct {v1, v3, v6, v5, v6}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    .end local v6    # "sourceHeight":F
    .local v31, "sourceHeight":F
    goto :goto_b

    .line 1353
    .end local v2    # "fromX":I
    .end local v4    # "fromY":I
    .end local v29    # "scaleVCenter":F
    .end local v30    # "sourceWidth":F
    .end local v31    # "sourceHeight":F
    .restart local v3    # "scaleVCenter":F
    .restart local v5    # "sourceWidth":F
    .restart local v6    # "sourceHeight":F
    .restart local v26    # "fromX":I
    .restart local v27    # "fromY":I
    :cond_9
    move/from16 v29, v3

    move/from16 v30, v5

    move/from16 v31, v6

    move/from16 v2, v26

    move/from16 v4, v27

    const/4 v6, 0x0

    .end local v3    # "scaleVCenter":F
    .end local v5    # "sourceWidth":F
    .end local v6    # "sourceHeight":F
    .end local v26    # "fromX":I
    .end local v27    # "fromY":I
    .restart local v2    # "fromX":I
    .restart local v4    # "fromY":I
    .restart local v29    # "scaleVCenter":F
    .restart local v30    # "sourceWidth":F
    .restart local v31    # "sourceHeight":F
    new-instance v1, Landroid/view/animation/TranslateAnimation;

    int-to-float v3, v2

    int-to-float v5, v4

    invoke-direct {v1, v6, v3, v6, v5}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    .line 1354
    .local v1, "translation":Landroid/view/animation/TranslateAnimation;
    :goto_b
    invoke-virtual {v9, v10}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 1355
    invoke-virtual {v9, v1}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 1357
    iget-object v3, v0, Lcom/android/server/wm/AppTransition;->mAnimationFinishedCallback:Landroid/os/IRemoteCallback;

    .line 1358
    .local v3, "callback":Landroid/os/IRemoteCallback;
    if-eqz v3, :cond_a

    .line 1359
    new-instance v5, Lcom/android/server/wm/AppTransition$3;

    invoke-direct {v5, v0, v3}, Lcom/android/server/wm/AppTransition$3;-><init>(Lcom/android/server/wm/AppTransition;Landroid/os/IRemoteCallback;)V

    invoke-virtual {v9, v5}, Landroid/view/animation/AnimationSet;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 1372
    :cond_a
    return-object v9
.end method

.method private createClipRevealAnimationLocked(IZLandroid/graphics/Rect;Landroid/graphics/Rect;)Landroid/view/animation/Animation;
    .locals 33
    .param p1, "transit"    # I
    .param p2, "enter"    # Z
    .param p3, "appFrame"    # Landroid/graphics/Rect;
    .param p4, "displayFrame"    # Landroid/graphics/Rect;

    move-object/from16 v0, p0

    move/from16 v1, p1

    move-object/from16 v2, p3

    .line 809
    const/4 v3, 0x0

    if-eqz p2, :cond_6

    .line 810
    invoke-virtual/range {p3 .. p3}, Landroid/graphics/Rect;->width()I

    move-result v6

    .line 811
    .local v6, "appWidth":I
    invoke-virtual/range {p3 .. p3}, Landroid/graphics/Rect;->height()I

    move-result v14

    .line 815
    .local v14, "appHeight":I
    iget-object v7, v0, Lcom/android/server/wm/AppTransition;->mTmpRect:Landroid/graphics/Rect;

    invoke-direct {v0, v7}, Lcom/android/server/wm/AppTransition;->getDefaultNextAppTransitionStartRect(Landroid/graphics/Rect;)V

    .line 817
    const/4 v7, 0x0

    .line 818
    .local v7, "t":F
    if-lez v14, :cond_0

    .line 819
    iget-object v8, v0, Lcom/android/server/wm/AppTransition;->mTmpRect:Landroid/graphics/Rect;

    iget v8, v8, Landroid/graphics/Rect;->top:I

    int-to-float v8, v8

    invoke-virtual/range {p4 .. p4}, Landroid/graphics/Rect;->height()I

    move-result v9

    int-to-float v9, v9

    div-float v7, v8, v9

    .line 821
    .end local v7    # "t":F
    .local v15, "t":F
    :cond_0
    move v15, v7

    iget v7, v0, Lcom/android/server/wm/AppTransition;->mClipRevealTranslationY:I

    invoke-virtual/range {p4 .. p4}, Landroid/graphics/Rect;->height()I

    move-result v8

    int-to-float v8, v8

    const/high16 v9, 0x40e00000    # 7.0f

    div-float/2addr v8, v9

    mul-float/2addr v8, v15

    float-to-int v8, v8

    add-int/2addr v7, v8

    .line 822
    .local v7, "translationY":I
    const/4 v8, 0x0

    .line 823
    .local v8, "translationX":I
    move v9, v7

    .line 824
    .local v9, "translationYCorrection":I
    iget-object v10, v0, Lcom/android/server/wm/AppTransition;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {v10}, Landroid/graphics/Rect;->centerX()I

    move-result v16

    .line 825
    .local v16, "centerX":I
    iget-object v10, v0, Lcom/android/server/wm/AppTransition;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {v10}, Landroid/graphics/Rect;->centerY()I

    move-result v17

    .line 826
    .local v17, "centerY":I
    iget-object v10, v0, Lcom/android/server/wm/AppTransition;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {v10}, Landroid/graphics/Rect;->width()I

    move-result v10

    div-int/lit8 v18, v10, 0x2

    .line 827
    .local v18, "halfWidth":I
    iget-object v10, v0, Lcom/android/server/wm/AppTransition;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {v10}, Landroid/graphics/Rect;->height()I

    move-result v10

    div-int/lit8 v19, v10, 0x2

    .line 828
    .local v19, "halfHeight":I
    sub-int v10, v16, v18

    iget v11, v2, Landroid/graphics/Rect;->left:I

    sub-int/2addr v10, v11

    .line 829
    .local v10, "clipStartX":I
    sub-int v11, v17, v19

    iget v12, v2, Landroid/graphics/Rect;->top:I

    sub-int/2addr v11, v12

    .line 830
    .local v11, "clipStartY":I
    const/4 v12, 0x0

    .line 835
    .local v12, "cutOff":Z
    iget v13, v2, Landroid/graphics/Rect;->top:I

    sub-int v4, v17, v19

    if-le v13, v4, :cond_1

    .line 836
    sub-int v4, v17, v19

    iget v13, v2, Landroid/graphics/Rect;->top:I

    sub-int v7, v4, v13

    .line 837
    const/4 v4, 0x0

    .line 838
    .end local v9    # "translationYCorrection":I
    .local v4, "translationYCorrection":I
    const/4 v9, 0x0

    .line 839
    .end local v11    # "clipStartY":I
    .local v9, "clipStartY":I
    const/4 v12, 0x1

    .line 841
    move/from16 v22, v4

    move v4, v7

    move/from16 v21, v9

    goto :goto_0

    .end local v4    # "translationYCorrection":I
    .local v9, "translationYCorrection":I
    .restart local v11    # "clipStartY":I
    :cond_1
    move v4, v7

    move/from16 v22, v9

    move/from16 v21, v11

    .end local v7    # "translationY":I
    .end local v9    # "translationYCorrection":I
    .end local v11    # "clipStartY":I
    .local v4, "translationY":I
    .local v21, "clipStartY":I
    .local v22, "translationYCorrection":I
    :goto_0
    iget v7, v2, Landroid/graphics/Rect;->left:I

    sub-int v9, v16, v18

    if-le v7, v9, :cond_2

    .line 842
    sub-int v7, v16, v18

    iget v9, v2, Landroid/graphics/Rect;->left:I

    sub-int v8, v7, v9

    .line 843
    const/4 v10, 0x0

    .line 844
    const/4 v12, 0x1

    .line 846
    :cond_2
    iget v7, v2, Landroid/graphics/Rect;->right:I

    add-int v9, v16, v18

    if-ge v7, v9, :cond_3

    .line 847
    add-int v7, v16, v18

    iget v9, v2, Landroid/graphics/Rect;->right:I

    sub-int v8, v7, v9

    .line 848
    iget-object v7, v0, Lcom/android/server/wm/AppTransition;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {v7}, Landroid/graphics/Rect;->width()I

    move-result v7

    sub-int v10, v6, v7

    .line 849
    const/4 v12, 0x1

    .line 851
    .end local v8    # "translationX":I
    .end local v10    # "clipStartX":I
    .local v11, "clipStartX":I
    .local v12, "translationX":I
    .local v13, "cutOff":Z
    :cond_3
    move v11, v10

    move v13, v12

    move v12, v8

    int-to-float v7, v12

    int-to-float v8, v4

    move-object/from16 v10, p4

    invoke-direct {v0, v13, v7, v8, v10}, Lcom/android/server/wm/AppTransition;->calculateClipRevealTransitionDuration(ZFFLandroid/graphics/Rect;)J

    move-result-wide v8

    .line 855
    .local v8, "duration":J
    new-instance v7, Lcom/android/server/wm/animation/ClipRectLRAnimation;

    iget-object v5, v0, Lcom/android/server/wm/AppTransition;->mTmpRect:Landroid/graphics/Rect;

    .line 856
    invoke-virtual {v5}, Landroid/graphics/Rect;->width()I

    move-result v5

    add-int/2addr v5, v11

    const/4 v10, 0x0

    invoke-direct {v7, v11, v5, v10, v6}, Lcom/android/server/wm/animation/ClipRectLRAnimation;-><init>(IIII)V

    move-object v5, v7

    .line 857
    .local v5, "clipAnimLR":Landroid/view/animation/Animation;
    iget-object v7, v0, Lcom/android/server/wm/AppTransition;->mClipHorizontalInterpolator:Landroid/view/animation/Interpolator;

    invoke-virtual {v5, v7}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 858
    long-to-float v7, v8

    const/high16 v24, 0x40200000    # 2.5f

    div-float v7, v7, v24

    move/from16 v25, v11

    float-to-long v10, v7

    .end local v11    # "clipStartX":I
    .local v25, "clipStartX":I
    invoke-virtual {v5, v10, v11}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 860
    new-instance v7, Landroid/view/animation/TranslateAnimation;

    int-to-float v10, v12

    int-to-float v11, v4

    invoke-direct {v7, v10, v3, v11, v3}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    move-object v3, v7

    .line 861
    .local v3, "translate":Landroid/view/animation/TranslateAnimation;
    if-eqz v13, :cond_4

    sget-object v7, Lcom/android/server/wm/AppTransition;->TOUCH_RESPONSE_INTERPOLATOR:Landroid/view/animation/Interpolator;

    goto :goto_1

    .line 862
    :cond_4
    iget-object v7, v0, Lcom/android/server/wm/AppTransition;->mLinearOutSlowInInterpolator:Landroid/view/animation/Interpolator;

    .line 861
    :goto_1
    invoke-virtual {v3, v7}, Landroid/view/animation/TranslateAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 863
    invoke-virtual {v3, v8, v9}, Landroid/view/animation/TranslateAnimation;->setDuration(J)V

    .line 865
    new-instance v24, Lcom/android/server/wm/animation/ClipRectTBAnimation;

    iget-object v7, v0, Lcom/android/server/wm/AppTransition;->mTmpRect:Landroid/graphics/Rect;

    .line 866
    invoke-virtual {v7}, Landroid/graphics/Rect;->height()I

    move-result v7

    add-int v10, v21, v7

    const/4 v11, 0x0

    const/16 v26, 0x0

    iget-object v7, v0, Lcom/android/server/wm/AppTransition;->mLinearOutSlowInInterpolator:Landroid/view/animation/Interpolator;

    move-object/from16 v27, v7

    move-object/from16 v7, v24

    move-wide/from16 v28, v8

    move/from16 v8, v21

    .end local v8    # "duration":J
    .local v28, "duration":J
    move v9, v10

    move v10, v11

    move/from16 v23, v25

    move v11, v14

    .end local v25    # "clipStartX":I
    .local v23, "clipStartX":I
    move/from16 v30, v12

    move/from16 v12, v22

    .end local v12    # "translationX":I
    .local v30, "translationX":I
    move/from16 v25, v13

    move/from16 v13, v26

    .end local v13    # "cutOff":Z
    .local v25, "cutOff":Z
    move v2, v14

    move-object/from16 v14, v27

    .end local v14    # "appHeight":I
    .local v2, "appHeight":I
    invoke-direct/range {v7 .. v14}, Lcom/android/server/wm/animation/ClipRectTBAnimation;-><init>(IIIIIILandroid/view/animation/Interpolator;)V

    .line 870
    .local v7, "clipAnimTB":Landroid/view/animation/Animation;
    sget-object v8, Lcom/android/server/wm/AppTransition;->TOUCH_RESPONSE_INTERPOLATOR:Landroid/view/animation/Interpolator;

    invoke-virtual {v7, v8}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 871
    move-wide/from16 v8, v28

    invoke-virtual {v7, v8, v9}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 874
    .end local v28    # "duration":J
    .restart local v8    # "duration":J
    const-wide/16 v10, 0x4

    div-long v10, v8, v10

    .line 875
    .local v10, "alphaDuration":J
    new-instance v12, Landroid/view/animation/AlphaAnimation;

    const/high16 v13, 0x3f000000    # 0.5f

    const/high16 v14, 0x3f800000    # 1.0f

    invoke-direct {v12, v13, v14}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 876
    .local v12, "alpha":Landroid/view/animation/AlphaAnimation;
    invoke-virtual {v12, v10, v11}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    .line 877
    iget-object v13, v0, Lcom/android/server/wm/AppTransition;->mLinearOutSlowInInterpolator:Landroid/view/animation/Interpolator;

    invoke-virtual {v12, v13}, Landroid/view/animation/AlphaAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 879
    new-instance v13, Landroid/view/animation/AnimationSet;

    const/4 v14, 0x0

    invoke-direct {v13, v14}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    .line 880
    .local v13, "set":Landroid/view/animation/AnimationSet;
    invoke-virtual {v13, v5}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 881
    invoke-virtual {v13, v7}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 882
    invoke-virtual {v13, v3}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 883
    invoke-virtual {v13, v12}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 884
    const/4 v14, 0x1

    invoke-virtual {v13, v14}, Landroid/view/animation/AnimationSet;->setZAdjustment(I)V

    .line 885
    invoke-virtual {v13, v6, v2, v6, v2}, Landroid/view/animation/AnimationSet;->initialize(IIII)V

    .line 886
    move-object/from16 v20, v13

    .line 887
    .local v20, "anim":Landroid/view/animation/Animation;
    iput-boolean v14, v0, Lcom/android/server/wm/AppTransition;->mLastHadClipReveal:Z

    .line 888
    iput-wide v8, v0, Lcom/android/server/wm/AppTransition;->mLastClipRevealTransitionDuration:J

    .line 892
    if-eqz v25, :cond_5

    .line 893
    invoke-static {v4}, Ljava/lang/Math;->abs(I)I

    move-result v14

    move/from16 v31, v2

    move-object/from16 v32, v3

    move/from16 v2, v30

    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v3

    .end local v3    # "translate":Landroid/view/animation/TranslateAnimation;
    .end local v30    # "translationX":I
    .local v2, "translationX":I
    .local v31, "appHeight":I
    .local v32, "translate":Landroid/view/animation/TranslateAnimation;
    invoke-static {v14, v3}, Ljava/lang/Math;->max(II)I

    move-result v3

    goto :goto_2

    .end local v31    # "appHeight":I
    .end local v32    # "translate":Landroid/view/animation/TranslateAnimation;
    .local v2, "appHeight":I
    .restart local v3    # "translate":Landroid/view/animation/TranslateAnimation;
    .restart local v30    # "translationX":I
    :cond_5
    move/from16 v31, v2

    move-object/from16 v32, v3

    move/from16 v2, v30

    .end local v3    # "translate":Landroid/view/animation/TranslateAnimation;
    .end local v30    # "translationX":I
    .local v2, "translationX":I
    .restart local v31    # "appHeight":I
    .restart local v32    # "translate":Landroid/view/animation/TranslateAnimation;
    const/4 v3, 0x0

    :goto_2
    iput v3, v0, Lcom/android/server/wm/AppTransition;->mLastClipRevealMaxTranslation:I

    .line 894
    .end local v2    # "translationX":I
    .end local v4    # "translationY":I
    .end local v5    # "clipAnimLR":Landroid/view/animation/Animation;
    .end local v6    # "appWidth":I
    .end local v7    # "clipAnimTB":Landroid/view/animation/Animation;
    .end local v8    # "duration":J
    .end local v10    # "alphaDuration":J
    .end local v12    # "alpha":Landroid/view/animation/AlphaAnimation;
    .end local v13    # "set":Landroid/view/animation/AnimationSet;
    .end local v15    # "t":F
    .end local v16    # "centerX":I
    .end local v17    # "centerY":I
    .end local v18    # "halfWidth":I
    .end local v19    # "halfHeight":I
    .end local v21    # "clipStartY":I
    .end local v22    # "translationYCorrection":I
    .end local v23    # "clipStartX":I
    .end local v25    # "cutOff":Z
    .end local v31    # "appHeight":I
    .end local v32    # "translate":Landroid/view/animation/TranslateAnimation;
    nop

    .line 921
    move-object/from16 v2, v20

    goto :goto_6

    .line 896
    .end local v20    # "anim":Landroid/view/animation/Animation;
    :cond_6
    packed-switch v1, :pswitch_data_0

    .line 902
    const-wide/16 v4, 0x150

    goto :goto_3

    .line 899
    :pswitch_0
    iget v2, v0, Lcom/android/server/wm/AppTransition;->mConfigShortAnimTime:I

    int-to-long v4, v2

    .line 900
    .local v4, "duration":J
    nop

    .line 902
    :goto_3
    nop

    .line 905
    const/16 v2, 0xe

    if-eq v1, v2, :cond_8

    const/16 v2, 0xf

    if-ne v1, v2, :cond_7

    goto :goto_4

    .line 915
    :cond_7
    new-instance v2, Landroid/view/animation/AlphaAnimation;

    const/high16 v6, 0x3f800000    # 1.0f

    invoke-direct {v2, v6, v6}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    const/4 v3, 0x1

    goto :goto_5

    .line 911
    :cond_8
    :goto_4
    const/high16 v6, 0x3f800000    # 1.0f

    new-instance v2, Landroid/view/animation/AlphaAnimation;

    invoke-direct {v2, v6, v3}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 912
    .local v2, "anim":Landroid/view/animation/Animation;
    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/view/animation/Animation;->setDetachWallpaper(Z)V

    .line 915
    :goto_5
    nop

    .line 917
    iget-object v6, v0, Lcom/android/server/wm/AppTransition;->mDecelerateInterpolator:Landroid/view/animation/Interpolator;

    invoke-virtual {v2, v6}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 918
    invoke-virtual {v2, v4, v5}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 919
    invoke-virtual {v2, v3}, Landroid/view/animation/Animation;->setFillAfter(Z)V

    .line 921
    .end local v4    # "duration":J
    :goto_6
    return-object v2

    :pswitch_data_0
    .packed-switch 0x6
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private createCurvedMotion(FFFF)Landroid/view/animation/Animation;
    .locals 2
    .param p1, "fromX"    # F
    .param p2, "toX"    # F
    .param p3, "fromY"    # F
    .param p4, "toY"    # F

    .line 1135
    sub-float v0, p2, p1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    const/high16 v1, 0x3f800000    # 1.0f

    cmpg-float v0, v0, v1

    if-ltz v0, :cond_1

    iget v0, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransition:I

    const/16 v1, 0x13

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 1138
    :cond_0
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/server/wm/AppTransition;->createCurvedPath(FFFF)Landroid/graphics/Path;

    move-result-object v0

    .line 1139
    .local v0, "path":Landroid/graphics/Path;
    new-instance v1, Lcom/android/server/wm/animation/CurvedTranslateAnimation;

    invoke-direct {v1, v0}, Lcom/android/server/wm/animation/CurvedTranslateAnimation;-><init>(Landroid/graphics/Path;)V

    return-object v1

    .line 1136
    .end local v0    # "path":Landroid/graphics/Path;
    :cond_1
    :goto_0
    new-instance v0, Landroid/view/animation/TranslateAnimation;

    invoke-direct {v0, p1, p2, p3, p4}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    return-object v0
.end method

.method private createCurvedPath(FFFF)Landroid/graphics/Path;
    .locals 8
    .param p1, "fromX"    # F
    .param p2, "toX"    # F
    .param p3, "fromY"    # F
    .param p4, "toY"    # F

    .line 1144
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    .line 1145
    .local v0, "path":Landroid/graphics/Path;
    invoke-virtual {v0, p1, p3}, Landroid/graphics/Path;->moveTo(FF)V

    .line 1147
    cmpl-float v1, p3, p4

    const v2, 0x3dcccccd    # 0.1f

    const v3, 0x3f666666    # 0.9f

    if-lez v1, :cond_0

    .line 1149
    mul-float/2addr v3, p3

    mul-float/2addr v2, p4

    add-float v5, v3, v2

    move-object v1, v0

    move v2, p1

    move v3, p3

    move v4, p2

    move v6, p2

    move v7, p4

    invoke-virtual/range {v1 .. v7}, Landroid/graphics/Path;->cubicTo(FFFFFF)V

    goto :goto_0

    .line 1152
    :cond_0
    mul-float/2addr v2, p3

    mul-float/2addr v3, p4

    add-float v5, v2, v3

    move-object v1, v0

    move v2, p1

    move v3, p3

    move v4, p1

    move v6, p2

    move v7, p4

    invoke-virtual/range {v1 .. v7}, Landroid/graphics/Path;->cubicTo(FFFFFF)V

    .line 1154
    :goto_0
    return-object v0
.end method

.method private createRelaunchAnimation(Landroid/graphics/Rect;Landroid/graphics/Rect;)Landroid/view/animation/Animation;
    .locals 13
    .param p1, "containingFrame"    # Landroid/graphics/Rect;
    .param p2, "contentInsets"    # Landroid/graphics/Rect;

    .line 1487
    iget-object v0, p0, Lcom/android/server/wm/AppTransition;->mTmpFromClipRect:Landroid/graphics/Rect;

    invoke-direct {p0, v0}, Lcom/android/server/wm/AppTransition;->getDefaultNextAppTransitionStartRect(Landroid/graphics/Rect;)V

    .line 1488
    iget-object v0, p0, Lcom/android/server/wm/AppTransition;->mTmpFromClipRect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    .line 1489
    .local v0, "left":I
    iget-object v1, p0, Lcom/android/server/wm/AppTransition;->mTmpFromClipRect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->top:I

    .line 1490
    .local v1, "top":I
    iget-object v2, p0, Lcom/android/server/wm/AppTransition;->mTmpFromClipRect:Landroid/graphics/Rect;

    neg-int v3, v0

    neg-int v4, v1

    invoke-virtual {v2, v3, v4}, Landroid/graphics/Rect;->offset(II)V

    .line 1492
    iget-object v2, p0, Lcom/android/server/wm/AppTransition;->mTmpToClipRect:Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v3

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v4

    const/4 v5, 0x0

    invoke-virtual {v2, v5, v5, v3, v4}, Landroid/graphics/Rect;->set(IIII)V

    .line 1493
    new-instance v2, Landroid/view/animation/AnimationSet;

    const/4 v3, 0x1

    invoke-direct {v2, v3}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    .line 1494
    .local v2, "set":Landroid/view/animation/AnimationSet;
    iget-object v4, p0, Lcom/android/server/wm/AppTransition;->mTmpFromClipRect:Landroid/graphics/Rect;

    invoke-virtual {v4}, Landroid/graphics/Rect;->width()I

    move-result v4

    int-to-float v4, v4

    .line 1495
    .local v4, "fromWidth":F
    iget-object v5, p0, Lcom/android/server/wm/AppTransition;->mTmpToClipRect:Landroid/graphics/Rect;

    invoke-virtual {v5}, Landroid/graphics/Rect;->width()I

    move-result v5

    int-to-float v5, v5

    .line 1496
    .local v5, "toWidth":F
    iget-object v6, p0, Lcom/android/server/wm/AppTransition;->mTmpFromClipRect:Landroid/graphics/Rect;

    invoke-virtual {v6}, Landroid/graphics/Rect;->height()I

    move-result v6

    int-to-float v6, v6

    .line 1500
    .local v6, "fromHeight":F
    iget-object v7, p0, Lcom/android/server/wm/AppTransition;->mTmpToClipRect:Landroid/graphics/Rect;

    invoke-virtual {v7}, Landroid/graphics/Rect;->height()I

    move-result v7

    iget v8, p2, Landroid/graphics/Rect;->top:I

    sub-int/2addr v7, v8

    iget v8, p2, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v7, v8

    int-to-float v7, v7

    .line 1501
    .local v7, "toHeight":F
    const/4 v8, 0x0

    .line 1502
    .local v8, "translateAdjustment":I
    cmpg-float v9, v4, v5

    if-gtz v9, :cond_0

    cmpg-float v9, v6, v7

    if-gtz v9, :cond_0

    .line 1506
    new-instance v9, Landroid/view/animation/ClipRectAnimation;

    iget-object v10, p0, Lcom/android/server/wm/AppTransition;->mTmpFromClipRect:Landroid/graphics/Rect;

    iget-object v11, p0, Lcom/android/server/wm/AppTransition;->mTmpToClipRect:Landroid/graphics/Rect;

    invoke-direct {v9, v10, v11}, Landroid/view/animation/ClipRectAnimation;-><init>(Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    invoke-virtual {v2, v9}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    goto :goto_0

    .line 1510
    :cond_0
    new-instance v9, Landroid/view/animation/ScaleAnimation;

    div-float v10, v4, v5

    div-float v11, v6, v7

    const/high16 v12, 0x3f800000    # 1.0f

    invoke-direct {v9, v10, v12, v11, v12}, Landroid/view/animation/ScaleAnimation;-><init>(FFFF)V

    invoke-virtual {v2, v9}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 1514
    iget v9, p2, Landroid/graphics/Rect;->top:I

    int-to-float v9, v9

    mul-float/2addr v9, v6

    div-float/2addr v9, v7

    float-to-int v8, v9

    .line 1520
    :goto_0
    new-instance v9, Landroid/view/animation/TranslateAnimation;

    iget v10, p1, Landroid/graphics/Rect;->left:I

    sub-int v10, v0, v10

    int-to-float v10, v10

    iget v11, p1, Landroid/graphics/Rect;->top:I

    sub-int v11, v1, v11

    sub-int/2addr v11, v8

    int-to-float v11, v11

    const/4 v12, 0x0

    invoke-direct {v9, v10, v12, v11, v12}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    .line 1522
    .local v9, "translate":Landroid/view/animation/TranslateAnimation;
    invoke-virtual {v2, v9}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 1523
    const-wide/16 v10, 0x150

    invoke-virtual {v2, v10, v11}, Landroid/view/animation/AnimationSet;->setDuration(J)V

    .line 1524
    invoke-virtual {v2, v3}, Landroid/view/animation/AnimationSet;->setZAdjustment(I)V

    .line 1525
    return-object v2
.end method

.method private createScaleUpAnimationLocked(IZLandroid/graphics/Rect;)Landroid/view/animation/Animation;
    .locals 17
    .param p1, "transit"    # I
    .param p2, "enter"    # Z
    .param p3, "containingFrame"    # Landroid/graphics/Rect;

    move-object/from16 v0, p0

    move/from16 v1, p1

    .line 680
    iget-object v2, v0, Lcom/android/server/wm/AppTransition;->mTmpRect:Landroid/graphics/Rect;

    invoke-direct {v0, v2}, Lcom/android/server/wm/AppTransition;->getDefaultNextAppTransitionStartRect(Landroid/graphics/Rect;)V

    .line 681
    invoke-virtual/range {p3 .. p3}, Landroid/graphics/Rect;->width()I

    move-result v2

    .line 682
    .local v2, "appWidth":I
    invoke-virtual/range {p3 .. p3}, Landroid/graphics/Rect;->height()I

    move-result v3

    .line 683
    .local v3, "appHeight":I
    const/4 v4, 0x0

    const/4 v5, 0x1

    const/high16 v6, 0x3f800000    # 1.0f

    if-eqz p2, :cond_0

    .line 685
    iget-object v7, v0, Lcom/android/server/wm/AppTransition;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {v7}, Landroid/graphics/Rect;->width()I

    move-result v7

    int-to-float v7, v7

    int-to-float v8, v2

    div-float/2addr v7, v8

    .line 686
    .local v7, "scaleW":F
    iget-object v8, v0, Lcom/android/server/wm/AppTransition;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {v8}, Landroid/graphics/Rect;->height()I

    move-result v8

    int-to-float v8, v8

    int-to-float v9, v3

    div-float/2addr v8, v9

    .line 687
    .local v8, "scaleH":F
    new-instance v16, Landroid/view/animation/ScaleAnimation;

    const/high16 v11, 0x3f800000    # 1.0f

    const/high16 v13, 0x3f800000    # 1.0f

    iget-object v9, v0, Lcom/android/server/wm/AppTransition;->mTmpRect:Landroid/graphics/Rect;

    iget v9, v9, Landroid/graphics/Rect;->left:I

    .line 688
    invoke-static {v9, v7}, Lcom/android/server/wm/AppTransition;->computePivot(IF)F

    move-result v14

    iget-object v9, v0, Lcom/android/server/wm/AppTransition;->mTmpRect:Landroid/graphics/Rect;

    iget v9, v9, Landroid/graphics/Rect;->top:I

    .line 689
    invoke-static {v9, v8}, Lcom/android/server/wm/AppTransition;->computePivot(IF)F

    move-result v15

    move-object/from16 v9, v16

    move v10, v7

    move v12, v8

    invoke-direct/range {v9 .. v15}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFFF)V

    .line 690
    .local v9, "scale":Landroid/view/animation/Animation;
    iget-object v10, v0, Lcom/android/server/wm/AppTransition;->mDecelerateInterpolator:Landroid/view/animation/Interpolator;

    invoke-virtual {v9, v10}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 692
    new-instance v10, Landroid/view/animation/AlphaAnimation;

    invoke-direct {v10, v4, v6}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    move-object v4, v10

    .line 693
    .local v4, "alpha":Landroid/view/animation/Animation;
    iget-object v6, v0, Lcom/android/server/wm/AppTransition;->mThumbnailFadeOutInterpolator:Landroid/view/animation/Interpolator;

    invoke-virtual {v4, v6}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 695
    new-instance v6, Landroid/view/animation/AnimationSet;

    const/4 v10, 0x0

    invoke-direct {v6, v10}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    .line 696
    .local v6, "set":Landroid/view/animation/AnimationSet;
    invoke-virtual {v6, v9}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 697
    invoke-virtual {v6, v4}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 698
    invoke-virtual {v6, v5}, Landroid/view/animation/AnimationSet;->setDetachWallpaper(Z)V

    .line 699
    nop

    .end local v4    # "alpha":Landroid/view/animation/Animation;
    .end local v6    # "set":Landroid/view/animation/AnimationSet;
    .end local v7    # "scaleW":F
    .end local v8    # "scaleH":F
    .end local v9    # "scale":Landroid/view/animation/Animation;
    move-object v4, v6

    .line 700
    .local v4, "a":Landroid/view/animation/Animation;
    goto :goto_1

    .end local v4    # "a":Landroid/view/animation/Animation;
    :cond_0
    const/16 v7, 0xe

    if-eq v1, v7, :cond_2

    const/16 v7, 0xf

    if-ne v1, v7, :cond_1

    goto :goto_0

    .line 710
    :cond_1
    new-instance v4, Landroid/view/animation/AlphaAnimation;

    invoke-direct {v4, v6, v6}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    goto :goto_1

    .line 706
    :cond_2
    :goto_0
    new-instance v7, Landroid/view/animation/AlphaAnimation;

    invoke-direct {v7, v6, v4}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    move-object v4, v7

    .line 707
    .restart local v4    # "a":Landroid/view/animation/Animation;
    invoke-virtual {v4, v5}, Landroid/view/animation/Animation;->setDetachWallpaper(Z)V

    .line 710
    :goto_1
    nop

    .line 717
    packed-switch v1, :pswitch_data_0

    .line 723
    const-wide/16 v7, 0x150

    goto :goto_2

    .line 720
    :pswitch_0
    iget v6, v0, Lcom/android/server/wm/AppTransition;->mConfigShortAnimTime:I

    int-to-long v7, v6

    .line 721
    .local v7, "duration":J
    nop

    .line 723
    :goto_2
    nop

    .line 726
    invoke-virtual {v4, v7, v8}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 727
    invoke-virtual {v4, v5}, Landroid/view/animation/Animation;->setFillAfter(Z)V

    .line 728
    iget-object v5, v0, Lcom/android/server/wm/AppTransition;->mDecelerateInterpolator:Landroid/view/animation/Interpolator;

    invoke-virtual {v4, v5}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 729
    invoke-virtual {v4, v2, v3, v2, v3}, Landroid/view/animation/Animation;->initialize(IIII)V

    .line 730
    return-object v4

    nop

    :pswitch_data_0
    .packed-switch 0x6
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private fetchAppTransitionSpecsFromFuture()V
    .locals 3

    .line 1939
    iget-object v0, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionAnimationsSpecsFuture:Landroid/view/IAppTransitionAnimationSpecsFuture;

    if-eqz v0, :cond_0

    .line 1940
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionAnimationsSpecsPending:Z

    .line 1941
    iget-object v0, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionAnimationsSpecsFuture:Landroid/view/IAppTransitionAnimationSpecsFuture;

    .line 1943
    .local v0, "future":Landroid/view/IAppTransitionAnimationSpecsFuture;
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionAnimationsSpecsFuture:Landroid/view/IAppTransitionAnimationSpecsFuture;

    .line 1944
    iget-object v1, p0, Lcom/android/server/wm/AppTransition;->mDefaultExecutor:Ljava/util/concurrent/ExecutorService;

    new-instance v2, Lcom/android/server/wm/-$$Lambda$AppTransition$CyT0POoZKxhd7Ybm_eVYXG4NCrI;

    invoke-direct {v2, p0, v0}, Lcom/android/server/wm/-$$Lambda$AppTransition$CyT0POoZKxhd7Ybm_eVYXG4NCrI;-><init>(Lcom/android/server/wm/AppTransition;Landroid/view/IAppTransitionAnimationSpecsFuture;)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 1962
    .end local v0    # "future":Landroid/view/IAppTransitionAnimationSpecsFuture;
    :cond_0
    return-void
.end method

.method private getAspectScaleDuration()J
    .locals 2

    .line 1158
    iget v0, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransition:I

    const/16 v1, 0x13

    if-ne v0, v1, :cond_0

    .line 1159
    const-wide/16 v0, 0x1c5

    return-wide v0

    .line 1161
    :cond_0
    const-wide/16 v0, 0x150

    return-wide v0
.end method

.method private getAspectScaleInterpolator()Landroid/view/animation/Interpolator;
    .locals 2

    .line 1166
    iget v0, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransition:I

    const/16 v1, 0x13

    if-ne v0, v1, :cond_0

    .line 1167
    iget-object v0, p0, Lcom/android/server/wm/AppTransition;->mFastOutSlowInInterpolator:Landroid/view/animation/Interpolator;

    return-object v0

    .line 1169
    :cond_0
    sget-object v0, Lcom/android/server/wm/AppTransition;->TOUCH_RESPONSE_INTERPOLATOR:Landroid/view/animation/Interpolator;

    return-object v0
.end method

.method private getCachedAnimations(Landroid/view/WindowManager$LayoutParams;)Lcom/android/server/AttributeCache$Entry;
    .locals 5
    .param p1, "lp"    # Landroid/view/WindowManager$LayoutParams;

    .line 522
    if-eqz p1, :cond_2

    iget v0, p1, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    if-eqz v0, :cond_2

    .line 526
    iget-object v0, p1, Landroid/view/WindowManager$LayoutParams;->packageName:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p1, Landroid/view/WindowManager$LayoutParams;->packageName:Ljava/lang/String;

    goto :goto_0

    :cond_0
    const-string v0, "android"

    .line 527
    .local v0, "packageName":Ljava/lang/String;
    :goto_0
    iget v1, p1, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    .line 528
    .local v1, "resId":I
    const/high16 v2, -0x1000000

    and-int/2addr v2, v1

    const/high16 v3, 0x1000000

    if-ne v2, v3, :cond_1

    .line 529
    const-string v0, "android"

    .line 533
    :cond_1
    invoke-static {}, Lcom/android/server/AttributeCache;->instance()Lcom/android/server/AttributeCache;

    move-result-object v2

    sget-object v3, Lcom/android/internal/R$styleable;->WindowAnimation:[I

    iget v4, p0, Lcom/android/server/wm/AppTransition;->mCurrentUserId:I

    invoke-virtual {v2, v0, v1, v3, v4}, Lcom/android/server/AttributeCache;->get(Ljava/lang/String;I[II)Lcom/android/server/AttributeCache$Entry;

    move-result-object v2

    return-object v2

    .line 536
    .end local v0    # "packageName":Ljava/lang/String;
    .end local v1    # "resId":I
    :cond_2
    const/4 v0, 0x0

    return-object v0
.end method

.method private getCachedAnimations(Ljava/lang/String;I)Lcom/android/server/AttributeCache$Entry;
    .locals 3
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "resId"    # I

    .line 542
    if-eqz p1, :cond_1

    .line 543
    const/high16 v0, -0x1000000

    and-int/2addr v0, p2

    const/high16 v1, 0x1000000

    if-ne v0, v1, :cond_0

    .line 544
    const-string p1, "android"

    .line 548
    :cond_0
    invoke-static {}, Lcom/android/server/AttributeCache;->instance()Lcom/android/server/AttributeCache;

    move-result-object v0

    sget-object v1, Lcom/android/internal/R$styleable;->WindowAnimation:[I

    iget v2, p0, Lcom/android/server/wm/AppTransition;->mCurrentUserId:I

    invoke-virtual {v0, p1, p2, v1, v2}, Lcom/android/server/AttributeCache;->get(Ljava/lang/String;I[II)Lcom/android/server/AttributeCache$Entry;

    move-result-object v0

    return-object v0

    .line 551
    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method private getDefaultNextAppTransitionStartRect(Landroid/graphics/Rect;)V
    .locals 3
    .param p1, "rect"    # Landroid/graphics/Rect;

    .line 734
    iget-object v0, p0, Lcom/android/server/wm/AppTransition;->mDefaultNextAppTransitionAnimationSpec:Landroid/view/AppTransitionAnimationSpec;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/server/wm/AppTransition;->mDefaultNextAppTransitionAnimationSpec:Landroid/view/AppTransitionAnimationSpec;

    iget-object v0, v0, Landroid/view/AppTransitionAnimationSpec;->rect:Landroid/graphics/Rect;

    if-nez v0, :cond_0

    goto :goto_0

    .line 739
    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/AppTransition;->mDefaultNextAppTransitionAnimationSpec:Landroid/view/AppTransitionAnimationSpec;

    iget-object v0, v0, Landroid/view/AppTransitionAnimationSpec;->rect:Landroid/graphics/Rect;

    invoke-virtual {p1, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    goto :goto_1

    .line 736
    :cond_1
    :goto_0
    const-string v0, "WindowManager"

    const-string v1, "Starting rect for app requested, but none available"

    new-instance v2, Ljava/lang/Throwable;

    invoke-direct {v2}, Ljava/lang/Throwable;-><init>()V

    invoke-static {v0, v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 737
    invoke-virtual {p1}, Landroid/graphics/Rect;->setEmpty()V

    .line 741
    :goto_1
    return-void
.end method

.method static isActivityTransit(I)Z
    .locals 1
    .param p0, "transit"    # I

    .line 2233
    const/4 v0, 0x6

    if-eq p0, v0, :cond_1

    const/4 v0, 0x7

    if-eq p0, v0, :cond_1

    const/16 v0, 0x12

    if-ne p0, v0, :cond_0

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

.method public static isKeyguardGoingAwayTransit(I)Z
    .locals 1
    .param p0, "transit"    # I

    .line 2210
    const/16 v0, 0x14

    if-eq p0, v0, :cond_1

    const/16 v0, 0x15

    if-ne p0, v0, :cond_0

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

.method private static isKeyguardTransit(I)Z
    .locals 1
    .param p0, "transit"    # I

    .line 2215
    invoke-static {p0}, Lcom/android/server/wm/AppTransition;->isKeyguardGoingAwayTransit(I)Z

    move-result v0

    if-nez v0, :cond_1

    const/16 v0, 0x16

    if-eq p0, v0, :cond_1

    const/16 v0, 0x17

    if-ne p0, v0, :cond_0

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

.method private static isTaskOpenTransit(I)Z
    .locals 1
    .param p0, "transit"    # I

    .line 2227
    const/16 v0, 0x8

    if-eq p0, v0, :cond_1

    const/16 v0, 0x10

    if-eq p0, v0, :cond_1

    const/16 v0, 0xa

    if-ne p0, v0, :cond_0

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

.method static isTaskTransit(I)Z
    .locals 1
    .param p0, "transit"    # I

    .line 2220
    invoke-static {p0}, Lcom/android/server/wm/AppTransition;->isTaskOpenTransit(I)Z

    move-result v0

    if-nez v0, :cond_1

    const/16 v0, 0x9

    if-eq p0, v0, :cond_1

    const/16 v0, 0xb

    if-eq p0, v0, :cond_1

    const/16 v0, 0x11

    if-ne p0, v0, :cond_0

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

.method public static synthetic lambda$fetchAppTransitionSpecsFromFuture$0(Lcom/android/server/wm/AppTransition;Landroid/view/IAppTransitionAnimationSpecsFuture;)V
    .locals 6
    .param p1, "future"    # Landroid/view/IAppTransitionAnimationSpecsFuture;

    .line 1945
    const/4 v0, 0x0

    move-object v1, v0

    .line 1947
    .local v1, "specs":[Landroid/view/AppTransitionAnimationSpec;
    :try_start_0
    invoke-interface {p1}, Landroid/view/IAppTransitionAnimationSpecsFuture;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/os/Binder;->allowBlocking(Landroid/os/IBinder;)Landroid/os/IBinder;

    .line 1948
    invoke-interface {p1}, Landroid/view/IAppTransitionAnimationSpecsFuture;->get()[Landroid/view/AppTransitionAnimationSpec;

    move-result-object v2
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v1, v2

    .line 1951
    goto :goto_0

    .line 1949
    :catch_0
    move-exception v2

    .line 1950
    .local v2, "e":Landroid/os/RemoteException;
    const-string v3, "WindowManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Failed to fetch app transition specs: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1952
    .end local v2    # "e":Landroid/os/RemoteException;
    :goto_0
    iget-object v2, p0, Lcom/android/server/wm/AppTransition;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Lcom/android/server/wm/WindowHashMap;

    monitor-enter v2

    :try_start_1
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 1953
    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionAnimationsSpecsPending:Z

    .line 1954
    iget-object v3, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionFutureCallback:Landroid/os/IRemoteCallback;

    iget-boolean v4, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionScaleUp:Z

    invoke-virtual {p0, v1, v3, v0, v4}, Lcom/android/server/wm/AppTransition;->overridePendingAppTransitionMultiThumb([Landroid/view/AppTransitionAnimationSpec;Landroid/os/IRemoteCallback;Landroid/os/IRemoteCallback;Z)V

    .line 1957
    iput-object v0, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionFutureCallback:Landroid/os/IRemoteCallback;

    .line 1958
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 1959
    iget-object v0, p0, Lcom/android/server/wm/AppTransition;->mService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowManagerService;->requestTraversal()V

    .line 1960
    return-void

    .line 1958
    :catchall_0
    move-exception v0

    :try_start_2
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v0
.end method

.method private loadAnimationRes(Ljava/lang/String;I)Landroid/view/animation/Animation;
    .locals 2
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "resId"    # I

    .line 584
    invoke-static {p2}, Landroid/content/res/ResourceId;->isValid(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 585
    invoke-direct {p0, p1, p2}, Lcom/android/server/wm/AppTransition;->getCachedAnimations(Ljava/lang/String;I)Lcom/android/server/AttributeCache$Entry;

    move-result-object v0

    .line 586
    .local v0, "ent":Lcom/android/server/AttributeCache$Entry;
    if-eqz v0, :cond_0

    .line 587
    iget-object v1, v0, Lcom/android/server/AttributeCache$Entry;->context:Landroid/content/Context;

    invoke-static {v1, p2}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v1

    return-object v1

    .line 590
    .end local v0    # "ent":Lcom/android/server/AttributeCache$Entry;
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method private loadKeyguardExitAnimation(I)Landroid/view/animation/Animation;
    .locals 5
    .param p1, "transit"    # I

    .line 1764
    iget v0, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionFlags:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    .line 1765
    const/4 v0, 0x0

    return-object v0

    .line 1767
    :cond_0
    iget v0, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionFlags:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    move v0, v1

    goto :goto_0

    :cond_1
    move v0, v2

    .line 1769
    .local v0, "toShade":Z
    :goto_0
    iget-object v3, p0, Lcom/android/server/wm/AppTransition;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v3, v3, Lcom/android/server/wm/WindowManagerService;->mPolicy:Lcom/android/server/policy/WindowManagerPolicy;

    const/16 v4, 0x15

    if-ne p1, v4, :cond_2

    goto :goto_1

    :cond_2
    move v1, v2

    :goto_1
    invoke-interface {v3, v1, v0}, Lcom/android/server/policy/WindowManagerPolicy;->createHiddenByKeyguardExit(ZZ)Landroid/view/animation/Animation;

    move-result-object v1

    return-object v1
.end method

.method private needsBoosting()Z
    .locals 5

    .line 478
    iget-object v0, p0, Lcom/android/server/wm/AppTransition;->mService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowManagerService;->getRecentsAnimationController()Lcom/android/server/wm/RecentsAnimationController;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v1

    .line 479
    .local v0, "recentsAnimRunning":Z
    :goto_0
    iget v3, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransition:I

    const/4 v4, -0x1

    if-ne v3, v4, :cond_2

    iget v3, p0, Lcom/android/server/wm/AppTransition;->mAppTransitionState:I

    if-eq v3, v2, :cond_2

    iget v3, p0, Lcom/android/server/wm/AppTransition;->mAppTransitionState:I

    const/4 v4, 0x2

    if-eq v3, v4, :cond_2

    if-eqz v0, :cond_1

    goto :goto_1

    :cond_1
    goto :goto_2

    :cond_2
    :goto_1
    move v1, v2

    :goto_2
    return v1
.end method

.method private notifyAppTransitionCancelledLocked(I)V
    .locals 2
    .param p1, "transit"    # I

    .line 502
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/android/server/wm/AppTransition;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 503
    iget-object v1, p0, Lcom/android/server/wm/AppTransition;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/WindowManagerInternal$AppTransitionListener;

    invoke-virtual {v1, p1}, Lcom/android/server/wm/WindowManagerInternal$AppTransitionListener;->onAppTransitionCancelledLocked(I)V

    .line 502
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 505
    .end local v0    # "i":I
    :cond_0
    return-void
.end method

.method private notifyAppTransitionPendingLocked()V
    .locals 2

    .line 496
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/android/server/wm/AppTransition;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 497
    iget-object v1, p0, Lcom/android/server/wm/AppTransition;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/WindowManagerInternal$AppTransitionListener;

    invoke-virtual {v1}, Lcom/android/server/wm/WindowManagerInternal$AppTransitionListener;->onAppTransitionPendingLocked()V

    .line 496
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 499
    .end local v0    # "i":I
    :cond_0
    return-void
.end method

.method private notifyAppTransitionStartingLocked(ILandroid/os/IBinder;Landroid/os/IBinder;JJJ)I
    .locals 14
    .param p1, "transit"    # I
    .param p2, "openToken"    # Landroid/os/IBinder;
    .param p3, "closeToken"    # Landroid/os/IBinder;
    .param p4, "duration"    # J
    .param p6, "statusBarAnimationStartTime"    # J
    .param p8, "statusBarAnimationDuration"    # J

    move-object v0, p0

    .line 510
    const/4 v1, 0x0

    .line 511
    .local v1, "redoLayout":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    iget-object v3, v0, Lcom/android/server/wm/AppTransition;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_0

    .line 512
    iget-object v3, v0, Lcom/android/server/wm/AppTransition;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    move-object v4, v3

    check-cast v4, Lcom/android/server/wm/WindowManagerInternal$AppTransitionListener;

    move v5, p1

    move-object/from16 v6, p2

    move-object/from16 v7, p3

    move-wide/from16 v8, p4

    move-wide/from16 v10, p6

    move-wide/from16 v12, p8

    invoke-virtual/range {v4 .. v13}, Lcom/android/server/wm/WindowManagerInternal$AppTransitionListener;->onAppTransitionStartingLocked(ILandroid/os/IBinder;Landroid/os/IBinder;JJJ)I

    move-result v3

    or-int/2addr v1, v3

    .line 511
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 515
    .end local v2    # "i":I
    :cond_0
    return v1
.end method

.method private nubiaCreateBackToHomeAnimationLocked(IZ)Landroid/view/animation/Animation;
    .locals 19
    .param p1, "transit"    # I
    .param p2, "enter"    # Z

    move-object/from16 v0, p0

    .line 2292
    iget-object v1, v0, Lcom/android/server/wm/AppTransition;->mFormHomeRect:Landroid/graphics/Rect;

    if-nez v1, :cond_0

    const/4 v1, 0x0

    return-object v1

    .line 2293
    :cond_0
    const/4 v1, 0x0

    .line 2294
    .local v1, "nubiaAnimation":Landroid/view/animation/Animation;
    iget-object v2, v0, Lcom/android/server/wm/AppTransition;->mFormHomeRect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->left:I

    iget-object v3, v0, Lcom/android/server/wm/AppTransition;->mFormHomeRect:Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    add-int/2addr v2, v3

    .line 2295
    .local v2, "centerX":I
    iget-object v3, v0, Lcom/android/server/wm/AppTransition;->mFormHomeRect:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->top:I

    iget-object v4, v0, Lcom/android/server/wm/AppTransition;->mFormHomeRect:Landroid/graphics/Rect;

    invoke-virtual {v4}, Landroid/graphics/Rect;->height()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    add-int/2addr v3, v4

    .line 2296
    .local v3, "centerY":I
    const/4 v4, 0x0

    const/4 v5, 0x0

    const v6, 0x3dcccccd    # 0.1f

    const/high16 v8, 0x3f800000    # 1.0f

    const v9, 0x3e99999a    # 0.3f

    if-eqz p2, :cond_1

    .line 2297
    new-instance v17, Landroid/view/animation/ScaleAnimation;

    const/high16 v11, 0x40000000    # 2.0f

    const/high16 v12, 0x3f800000    # 1.0f

    const/high16 v13, 0x40000000    # 2.0f

    const/high16 v14, 0x3f800000    # 1.0f

    int-to-float v10, v2

    int-to-float v7, v3

    move v15, v10

    move-object/from16 v10, v17

    move/from16 v16, v7

    invoke-direct/range {v10 .. v16}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFFF)V

    move-object/from16 v7, v17

    .line 2298
    .local v7, "scale":Landroid/view/animation/Animation;
    new-instance v10, Landroid/view/animation/PathInterpolator;

    invoke-direct {v10, v9, v6, v9, v8}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    invoke-virtual {v7, v10}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 2299
    new-instance v6, Landroid/view/animation/AlphaAnimation;

    invoke-direct {v6, v5, v8}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    move-object v5, v6

    .line 2300
    .local v5, "alpha":Landroid/view/animation/Animation;
    new-instance v6, Landroid/view/animation/AnimationSet;

    invoke-direct {v6, v4}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    move-object v4, v6

    .line 2303
    .local v4, "set":Landroid/view/animation/AnimationSet;
    const/4 v6, 0x1

    invoke-virtual {v4, v6}, Landroid/view/animation/AnimationSet;->setDetachWallpaper(Z)V

    .line 2304
    move-object v1, v4

    .line 2305
    .end local v4    # "set":Landroid/view/animation/AnimationSet;
    .end local v5    # "alpha":Landroid/view/animation/Animation;
    .end local v7    # "scale":Landroid/view/animation/Animation;
    nop

    .line 2315
    const/4 v7, 0x1

    goto :goto_0

    .line 2306
    :cond_1
    new-instance v7, Landroid/view/animation/AlphaAnimation;

    invoke-direct {v7, v8, v5}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    move-object v5, v7

    .line 2307
    .restart local v5    # "alpha":Landroid/view/animation/Animation;
    new-instance v7, Landroid/view/animation/ScaleAnimation;

    const/high16 v11, 0x3f800000    # 1.0f

    const v12, 0x3f4ccccd    # 0.8f

    const/high16 v13, 0x3f800000    # 1.0f

    const v14, 0x3f4ccccd    # 0.8f

    int-to-float v10, v2

    int-to-float v4, v3

    move v15, v10

    move-object v10, v7

    move/from16 v16, v4

    invoke-direct/range {v10 .. v16}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFFF)V

    move-object v4, v7

    .line 2308
    .local v4, "scale":Landroid/view/animation/Animation;
    new-instance v7, Landroid/view/animation/PathInterpolator;

    invoke-direct {v7, v9, v6, v9, v8}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    invoke-virtual {v4, v7}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 2309
    new-instance v6, Landroid/view/animation/AnimationSet;

    const/4 v7, 0x0

    invoke-direct {v6, v7}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    .line 2310
    .local v6, "set2":Landroid/view/animation/AnimationSet;
    invoke-virtual {v6, v5}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 2311
    invoke-virtual {v6, v4}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 2312
    const/4 v7, 0x1

    invoke-virtual {v6, v7}, Landroid/view/animation/AnimationSet;->setZAdjustment(I)V

    .line 2313
    move-object v1, v6

    .line 2315
    .end local v4    # "scale":Landroid/view/animation/Animation;
    .end local v5    # "alpha":Landroid/view/animation/Animation;
    .end local v6    # "set2":Landroid/view/animation/AnimationSet;
    :goto_0
    const-wide/16 v4, 0x64

    invoke-virtual {v1, v4, v5}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 2316
    invoke-virtual {v1, v7}, Landroid/view/animation/Animation;->setFillAfter(Z)V

    .line 2317
    const/16 v4, 0x64

    invoke-virtual {v1, v4, v4, v4, v4}, Landroid/view/animation/Animation;->initialize(IIII)V

    .line 2318
    return-object v1
.end method

.method private nubiaCreateScaleUpAnimationLocked(IZLandroid/graphics/Rect;)Landroid/view/animation/Animation;
    .locals 24
    .param p1, "transit"    # I
    .param p2, "enter"    # Z
    .param p3, "containingFrame"    # Landroid/graphics/Rect;

    move-object/from16 v0, p0

    move/from16 v1, p1

    .line 2249
    const/4 v2, 0x0

    .line 2250
    .local v2, "nubiaAnimation":Landroid/view/animation/Animation;
    iget-object v3, v0, Lcom/android/server/wm/AppTransition;->mTmpRect:Landroid/graphics/Rect;

    invoke-direct {v0, v3}, Lcom/android/server/wm/AppTransition;->getDefaultNextAppTransitionStartRect(Landroid/graphics/Rect;)V

    .line 2251
    new-instance v3, Landroid/graphics/Rect;

    iget-object v4, v0, Lcom/android/server/wm/AppTransition;->mTmpRect:Landroid/graphics/Rect;

    invoke-direct {v3, v4}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    iput-object v3, v0, Lcom/android/server/wm/AppTransition;->mFormHomeRect:Landroid/graphics/Rect;

    .line 2252
    invoke-virtual/range {p3 .. p3}, Landroid/graphics/Rect;->width()I

    move-result v3

    .line 2253
    .local v3, "appWidth":I
    invoke-virtual/range {p3 .. p3}, Landroid/graphics/Rect;->height()I

    move-result v4

    .line 2254
    .local v4, "appHeight":I
    iget-object v5, v0, Lcom/android/server/wm/AppTransition;->mTmpRect:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->left:I

    iget-object v6, v0, Lcom/android/server/wm/AppTransition;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {v6}, Landroid/graphics/Rect;->width()I

    move-result v6

    div-int/lit8 v6, v6, 0x2

    add-int/2addr v5, v6

    .line 2255
    .local v5, "centerX":I
    iget-object v6, v0, Lcom/android/server/wm/AppTransition;->mTmpRect:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->top:I

    iget-object v7, v0, Lcom/android/server/wm/AppTransition;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {v7}, Landroid/graphics/Rect;->height()I

    move-result v7

    div-int/lit8 v7, v7, 0x2

    add-int/2addr v6, v7

    .line 2256
    .local v6, "centerY":I
    const/4 v8, 0x0

    const v9, 0x3dcccccd    # 0.1f

    const-wide/16 v11, 0x82

    const v13, 0x3e99999a    # 0.3f

    const/high16 v14, 0x3f800000    # 1.0f

    if-eqz p2, :cond_0

    .line 2257
    new-instance v22, Landroid/view/animation/ScaleAnimation;

    const v16, 0x3f4ccccd    # 0.8f

    const/high16 v17, 0x3f800000    # 1.0f

    const v18, 0x3f4ccccd    # 0.8f

    const/high16 v19, 0x3f800000    # 1.0f

    int-to-float v10, v5

    int-to-float v7, v6

    move-object/from16 v15, v22

    move/from16 v20, v10

    move/from16 v21, v7

    invoke-direct/range {v15 .. v21}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFFF)V

    move-object/from16 v7, v22

    .line 2258
    .local v7, "scale":Landroid/view/animation/Animation;
    new-instance v10, Landroid/view/animation/PathInterpolator;

    invoke-direct {v10, v13, v9, v13, v14}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    invoke-virtual {v7, v10}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 2259
    new-instance v9, Landroid/view/animation/AlphaAnimation;

    invoke-direct {v9, v8, v14}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    move-object v8, v9

    .line 2260
    .local v8, "alpha":Landroid/view/animation/Animation;
    invoke-virtual {v7, v11, v12}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 2261
    const-wide/16 v9, 0x64

    invoke-virtual {v8, v9, v10}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 2262
    new-instance v9, Landroid/view/animation/AnimationSet;

    const/4 v10, 0x0

    invoke-direct {v9, v10}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    .line 2263
    .local v9, "set":Landroid/view/animation/AnimationSet;
    invoke-virtual {v9, v7}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 2264
    invoke-virtual {v9, v8}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 2265
    const/4 v10, 0x1

    invoke-virtual {v9, v10}, Landroid/view/animation/AnimationSet;->setDetachWallpaper(Z)V

    .line 2266
    move-object v2, v9

    .line 2267
    .end local v7    # "scale":Landroid/view/animation/Animation;
    .end local v8    # "alpha":Landroid/view/animation/Animation;
    .end local v9    # "set":Landroid/view/animation/AnimationSet;
    nop

    .line 2286
    :goto_0
    const/4 v7, 0x1

    goto :goto_2

    .line 2267
    :cond_0
    const/16 v7, 0xe

    if-eq v1, v7, :cond_2

    const/16 v7, 0xf

    if-ne v1, v7, :cond_1

    goto :goto_1

    .line 2277
    :cond_1
    new-instance v7, Landroid/view/animation/AlphaAnimation;

    invoke-direct {v7, v14, v14}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 2278
    .local v7, "alpha":Landroid/view/animation/Animation;
    new-instance v8, Landroid/view/animation/ScaleAnimation;

    const/high16 v16, 0x3f800000    # 1.0f

    const/high16 v17, 0x3fc00000    # 1.5f

    const/high16 v18, 0x3f800000    # 1.0f

    const/high16 v19, 0x3fc00000    # 1.5f

    int-to-float v10, v5

    int-to-float v11, v6

    move-object v15, v8

    move/from16 v20, v10

    move/from16 v21, v11

    invoke-direct/range {v15 .. v21}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFFF)V

    .line 2279
    .local v8, "scale":Landroid/view/animation/Animation;
    new-instance v10, Landroid/view/animation/PathInterpolator;

    invoke-direct {v10, v13, v9, v13, v14}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    invoke-virtual {v8, v10}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 2280
    new-instance v9, Landroid/view/animation/AnimationSet;

    const/4 v10, 0x0

    invoke-direct {v9, v10}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    .line 2281
    .local v9, "set2":Landroid/view/animation/AnimationSet;
    invoke-virtual {v9, v7}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 2283
    move-object v2, v9

    .line 2284
    const-wide/16 v10, 0x82

    invoke-virtual {v2, v10, v11}, Landroid/view/animation/Animation;->setDuration(J)V

    .end local v7    # "alpha":Landroid/view/animation/Animation;
    .end local v8    # "scale":Landroid/view/animation/Animation;
    .end local v9    # "set2":Landroid/view/animation/AnimationSet;
    goto :goto_0

    .line 2273
    :cond_2
    :goto_1
    move-wide v10, v11

    new-instance v7, Landroid/view/animation/AlphaAnimation;

    invoke-direct {v7, v14, v8}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    move-object v2, v7

    .line 2274
    const/4 v7, 0x1

    invoke-virtual {v2, v7}, Landroid/view/animation/Animation;->setDetachWallpaper(Z)V

    .line 2275
    invoke-virtual {v2, v10, v11}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 2286
    :goto_2
    invoke-virtual {v2, v7}, Landroid/view/animation/Animation;->setFillAfter(Z)V

    .line 2287
    invoke-virtual {v2, v3, v4, v3, v4}, Landroid/view/animation/Animation;->initialize(IIII)V

    .line 2288
    return-object v2
.end method

.method private prepare()Z
    .locals 2

    .line 404
    invoke-virtual {p0}, Lcom/android/server/wm/AppTransition;->isRunning()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 405
    invoke-direct {p0, v1}, Lcom/android/server/wm/AppTransition;->setAppTransitionState(I)V

    .line 406
    invoke-direct {p0}, Lcom/android/server/wm/AppTransition;->notifyAppTransitionPendingLocked()V

    .line 407
    iput-boolean v1, p0, Lcom/android/server/wm/AppTransition;->mLastHadClipReveal:Z

    .line 408
    iput v1, p0, Lcom/android/server/wm/AppTransition;->mLastClipRevealMaxTranslation:I

    .line 409
    const-wide/16 v0, 0x150

    iput-wide v0, p0, Lcom/android/server/wm/AppTransition;->mLastClipRevealTransitionDuration:J

    .line 410
    const/4 v0, 0x1

    return v0

    .line 412
    :cond_0
    return v1
.end method

.method private putDefaultNextAppTransitionCoordinates(IIIILandroid/graphics/GraphicBuffer;)V
    .locals 4
    .param p1, "left"    # I
    .param p2, "top"    # I
    .param p3, "width"    # I
    .param p4, "height"    # I
    .param p5, "buffer"    # Landroid/graphics/GraphicBuffer;

    .line 759
    new-instance v0, Landroid/view/AppTransitionAnimationSpec;

    new-instance v1, Landroid/graphics/Rect;

    add-int v2, p1, p3

    add-int v3, p2, p4

    invoke-direct {v1, p1, p2, v2, v3}, Landroid/graphics/Rect;-><init>(IIII)V

    const/4 v2, -0x1

    invoke-direct {v0, v2, p5, v1}, Landroid/view/AppTransitionAnimationSpec;-><init>(ILandroid/graphics/GraphicBuffer;Landroid/graphics/Rect;)V

    iput-object v0, p0, Lcom/android/server/wm/AppTransition;->mDefaultNextAppTransitionAnimationSpec:Landroid/view/AppTransitionAnimationSpec;

    .line 761
    return-void
.end method

.method private setAppTransition(II)V
    .locals 2
    .param p1, "transit"    # I
    .param p2, "flags"    # I

    .line 317
    iput p1, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransition:I

    .line 318
    iget v0, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionFlags:I

    or-int/2addr v0, p2

    iput v0, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionFlags:I

    .line 319
    const/4 v0, 0x0

    const/4 v1, -0x1

    invoke-virtual {p0, v1, v0, v0}, Lcom/android/server/wm/AppTransition;->setLastAppTransition(ILcom/android/server/wm/AppWindowToken;Lcom/android/server/wm/AppWindowToken;)V

    .line 320
    invoke-virtual {p0}, Lcom/android/server/wm/AppTransition;->updateBooster()V

    .line 321
    return-void
.end method

.method private setAppTransitionState(I)V
    .locals 0
    .param p1, "state"    # I

    .line 464
    iput p1, p0, Lcom/android/server/wm/AppTransition;->mAppTransitionState:I

    .line 465
    invoke-virtual {p0}, Lcom/android/server/wm/AppTransition;->updateBooster()V

    .line 466
    return-void
.end method

.method private shouldScaleDownThumbnailTransition(II)Z
    .locals 2
    .param p1, "uiMode"    # I
    .param p2, "orientation"    # I

    .line 2242
    iget-boolean v0, p0, Lcom/android/server/wm/AppTransition;->mGridLayoutRecentsEnabled:Z

    const/4 v1, 0x1

    if-nez v0, :cond_1

    if-ne p2, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    nop

    :cond_1
    :goto_0
    return v1
.end method

.method private transitTypeToString()Ljava/lang/String;
    .locals 2

    .line 2065
    iget v0, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionType:I

    packed-switch v0, :pswitch_data_0

    .line 2085
    :pswitch_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "unknown type="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 2083
    :pswitch_1
    const-string v0, "NEXT_TRANSIT_TYPE_OPEN_CROSS_PROFILE_APPS"

    return-object v0

    .line 2071
    :pswitch_2
    const-string v0, "NEXT_TRANSIT_TYPE_CUSTOM_IN_PLACE"

    return-object v0

    .line 2081
    :pswitch_3
    const-string v0, "NEXT_TRANSIT_TYPE_THUMBNAIL_ASPECT_SCALE_DOWN"

    return-object v0

    .line 2079
    :pswitch_4
    const-string v0, "NEXT_TRANSIT_TYPE_THUMBNAIL_ASPECT_SCALE_UP"

    return-object v0

    .line 2077
    :pswitch_5
    const-string v0, "NEXT_TRANSIT_TYPE_THUMBNAIL_SCALE_DOWN"

    return-object v0

    .line 2075
    :pswitch_6
    const-string v0, "NEXT_TRANSIT_TYPE_THUMBNAIL_SCALE_UP"

    return-object v0

    .line 2073
    :pswitch_7
    const-string v0, "NEXT_TRANSIT_TYPE_SCALE_UP"

    return-object v0

    .line 2069
    :pswitch_8
    const-string v0, "NEXT_TRANSIT_TYPE_CUSTOM"

    return-object v0

    .line 2067
    :pswitch_9
    const-string v0, "NEXT_TRANSIT_TYPE_NONE"

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private updateToTranslucentAnimIfNeeded(II)I
    .locals 1
    .param p1, "anim"    # I
    .param p2, "transit"    # I

    .line 594
    const/16 v0, 0x18

    if-ne p2, v0, :cond_0

    const v0, 0x10a000f

    if-ne p1, v0, :cond_0

    .line 595
    const v0, 0x10a0012

    return v0

    .line 597
    :cond_0
    const/16 v0, 0x19

    if-ne p2, v0, :cond_1

    const v0, 0x10a000e

    if-ne p1, v0, :cond_1

    .line 598
    const v0, 0x10a0011

    return v0

    .line 600
    :cond_1
    return p1
.end method


# virtual methods
.method canSkipFirstFrame()Z
    .locals 3

    .line 1534
    iget v0, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionType:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionType:I

    const/4 v2, 0x7

    if-eq v0, v2, :cond_0

    iget v0, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionType:I

    const/16 v2, 0x8

    if-eq v0, v2, :cond_0

    iget v0, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransition:I

    const/16 v2, 0x14

    if-eq v0, v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method clear()V
    .locals 2

    .line 446
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionType:I

    .line 447
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionPackage:Ljava/lang/String;

    .line 448
    iget-object v1, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionAnimationsSpecs:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->clear()V

    .line 449
    iput-object v0, p0, Lcom/android/server/wm/AppTransition;->mRemoteAnimationController:Lcom/android/server/wm/RemoteAnimationController;

    .line 450
    iput-object v0, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionAnimationsSpecsFuture:Landroid/view/IAppTransitionAnimationSpecsFuture;

    .line 451
    iput-object v0, p0, Lcom/android/server/wm/AppTransition;->mDefaultNextAppTransitionAnimationSpec:Landroid/view/AppTransitionAnimationSpec;

    .line 452
    iput-object v0, p0, Lcom/android/server/wm/AppTransition;->mAnimationFinishedCallback:Landroid/os/IRemoteCallback;

    .line 453
    return-void
.end method

.method createAspectScaledThumbnailEnterExitAnimationLocked(IIIILandroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;ZI)Landroid/view/animation/Animation;
    .locals 34
    .param p1, "thumbTransitState"    # I
    .param p2, "uiMode"    # I
    .param p3, "orientation"    # I
    .param p4, "transit"    # I
    .param p5, "containingFrame"    # Landroid/graphics/Rect;
    .param p6, "contentInsets"    # Landroid/graphics/Rect;
    .param p7, "surfaceInsets"    # Landroid/graphics/Rect;
    .param p8, "stableInsets"    # Landroid/graphics/Rect;
    .param p9, "freeform"    # Z
    .param p10, "taskId"    # I

    move-object/from16 v7, p0

    move/from16 v9, p4

    move-object/from16 v10, p5

    move-object/from16 v11, p6

    move-object/from16 v12, p7

    move-object/from16 v13, p8

    .line 1182
    move/from16 v15, p10

    invoke-virtual/range {p5 .. p5}, Landroid/graphics/Rect;->width()I

    move-result v16

    .line 1183
    .local v16, "appWidth":I
    invoke-virtual/range {p5 .. p5}, Landroid/graphics/Rect;->height()I

    move-result v17

    .line 1184
    .local v17, "appHeight":I
    iget-object v0, v7, Lcom/android/server/wm/AppTransition;->mTmpRect:Landroid/graphics/Rect;

    invoke-direct {v7, v0}, Lcom/android/server/wm/AppTransition;->getDefaultNextAppTransitionStartRect(Landroid/graphics/Rect;)V

    .line 1185
    iget-object v0, v7, Lcom/android/server/wm/AppTransition;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v6

    .line 1186
    .local v6, "thumbWidthI":I
    const/high16 v0, 0x3f800000    # 1.0f

    if-lez v6, :cond_0

    int-to-float v1, v6

    goto :goto_0

    :cond_0
    move v1, v0

    :goto_0
    move/from16 v18, v1

    .line 1187
    .local v18, "thumbWidth":F
    iget-object v1, v7, Lcom/android/server/wm/AppTransition;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v4

    .line 1188
    .local v4, "thumbHeightI":I
    if-lez v4, :cond_1

    int-to-float v1, v4

    goto :goto_1

    :cond_1
    move v1, v0

    :goto_1
    move/from16 v19, v1

    .line 1189
    .local v19, "thumbHeight":F
    iget-object v1, v7, Lcom/android/server/wm/AppTransition;->mTmpRect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    iget v2, v10, Landroid/graphics/Rect;->left:I

    sub-int/2addr v1, v2

    iget v2, v11, Landroid/graphics/Rect;->left:I

    sub-int v5, v1, v2

    .line 1190
    .local v5, "thumbStartX":I
    iget-object v1, v7, Lcom/android/server/wm/AppTransition;->mTmpRect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->top:I

    iget v2, v10, Landroid/graphics/Rect;->top:I

    sub-int v20, v1, v2

    .line 1192
    .local v20, "thumbStartY":I
    const/16 v1, 0xe

    const/4 v2, 0x0

    packed-switch p1, :pswitch_data_0

    .line 1305
    move v12, v4

    move v14, v5

    move v8, v6

    .end local v4    # "thumbHeightI":I
    .end local v5    # "thumbStartX":I
    .end local v6    # "thumbWidthI":I
    .local v8, "thumbWidthI":I
    .local v12, "thumbHeightI":I
    .local v14, "thumbStartX":I
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Invalid thumbnail transition state"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1295
    .end local v8    # "thumbWidthI":I
    .end local v12    # "thumbHeightI":I
    .end local v14    # "thumbStartX":I
    .restart local v4    # "thumbHeightI":I
    .restart local v5    # "thumbStartX":I
    .restart local v6    # "thumbWidthI":I
    :pswitch_0
    if-ne v9, v1, :cond_2

    .line 1298
    new-instance v1, Landroid/view/animation/AlphaAnimation;

    invoke-direct {v1, v2, v0}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    move-object v0, v1

    goto :goto_2

    .line 1300
    :cond_2
    new-instance v1, Landroid/view/animation/AlphaAnimation;

    invoke-direct {v1, v0, v0}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    move-object v0, v1

    .line 1302
    .local v0, "a":Landroid/view/animation/Animation;
    goto/16 :goto_f

    .line 1284
    .end local v0    # "a":Landroid/view/animation/Animation;
    :pswitch_1
    if-ne v9, v1, :cond_3

    .line 1287
    new-instance v1, Landroid/view/animation/AlphaAnimation;

    invoke-direct {v1, v0, v2}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    move-object v0, v1

    .restart local v0    # "a":Landroid/view/animation/Animation;
    .local v1, "a":Landroid/view/animation/Animation;
    :goto_2
    goto/16 :goto_f

    .line 1289
    .end local v0    # "a":Landroid/view/animation/Animation;
    .end local v1    # "a":Landroid/view/animation/Animation;
    :cond_3
    new-instance v1, Landroid/view/animation/AlphaAnimation;

    invoke-direct {v1, v0, v0}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    move-object v0, v1

    .line 1291
    .restart local v0    # "a":Landroid/view/animation/Animation;
    goto/16 :goto_f

    .line 1195
    .end local v0    # "a":Landroid/view/animation/Animation;
    :pswitch_2
    const/4 v1, 0x1

    const/4 v3, 0x0

    if-nez p1, :cond_4

    move/from16 v21, v1

    goto :goto_3

    :cond_4
    move/from16 v21, v3

    .line 1196
    .local v21, "scaleUp":Z
    :goto_3
    if-eqz p9, :cond_5

    if-eqz v21, :cond_5

    .line 1197
    invoke-direct {v7, v10, v12, v15}, Lcom/android/server/wm/AppTransition;->createAspectScaledThumbnailEnterFreeformAnimationLocked(Landroid/graphics/Rect;Landroid/graphics/Rect;I)Landroid/view/animation/Animation;

    move-result-object v0

    .line 1305
    .end local v21    # "scaleUp":Z
    .restart local v0    # "a":Landroid/view/animation/Animation;
    .restart local v1    # "a":Landroid/view/animation/Animation;
    :goto_4
    move-object v1, v0

    goto/16 :goto_f

    .line 1199
    .end local v0    # "a":Landroid/view/animation/Animation;
    .end local v1    # "a":Landroid/view/animation/Animation;
    .restart local v21    # "scaleUp":Z
    :cond_5
    if-eqz p9, :cond_6

    .line 1200
    invoke-direct {v7, v10, v12, v15}, Lcom/android/server/wm/AppTransition;->createAspectScaledThumbnailExitFreeformAnimationLocked(Landroid/graphics/Rect;Landroid/graphics/Rect;I)Landroid/view/animation/Animation;

    move-result-object v0

    goto :goto_4

    .line 1203
    :cond_6
    new-instance v0, Landroid/view/animation/AnimationSet;

    invoke-direct {v0, v1}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    .line 1206
    .local v0, "set":Landroid/view/animation/AnimationSet;
    iget-object v1, v7, Lcom/android/server/wm/AppTransition;->mTmpFromClipRect:Landroid/graphics/Rect;

    invoke-virtual {v1, v10}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 1207
    iget-object v1, v7, Lcom/android/server/wm/AppTransition;->mTmpToClipRect:Landroid/graphics/Rect;

    invoke-virtual {v1, v10}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 1211
    iget-object v1, v7, Lcom/android/server/wm/AppTransition;->mTmpFromClipRect:Landroid/graphics/Rect;

    invoke-virtual {v1, v3, v3}, Landroid/graphics/Rect;->offsetTo(II)V

    .line 1212
    iget-object v1, v7, Lcom/android/server/wm/AppTransition;->mTmpToClipRect:Landroid/graphics/Rect;

    invoke-virtual {v1, v3, v3}, Landroid/graphics/Rect;->offsetTo(II)V

    .line 1215
    iget-object v1, v7, Lcom/android/server/wm/AppTransition;->mTmpFromClipRect:Landroid/graphics/Rect;

    invoke-virtual {v1, v11}, Landroid/graphics/Rect;->inset(Landroid/graphics/Rect;)V

    .line 1216
    iget-object v1, v7, Lcom/android/server/wm/AppTransition;->mNextAppTransitionInsets:Landroid/graphics/Rect;

    invoke-virtual {v1, v11}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 1218
    move/from16 v3, p2

    move/from16 v1, p3

    invoke-direct {v7, v3, v1}, Lcom/android/server/wm/AppTransition;->shouldScaleDownThumbnailTransition(II)Z

    move-result v23

    if-eqz v23, :cond_f

    .line 1220
    iget v2, v11, Landroid/graphics/Rect;->left:I

    sub-int v2, v16, v2

    iget v1, v11, Landroid/graphics/Rect;->right:I

    sub-int/2addr v2, v1

    int-to-float v1, v2

    div-float v1, v18, v1

    .line 1222
    .local v1, "scale":F
    iget-boolean v2, v7, Lcom/android/server/wm/AppTransition;->mGridLayoutRecentsEnabled:Z

    if-nez v2, :cond_7

    .line 1223
    div-float v2, v19, v1

    float-to-int v2, v2

    .line 1224
    .local v2, "unscaledThumbHeight":I
    iget-object v3, v7, Lcom/android/server/wm/AppTransition;->mTmpFromClipRect:Landroid/graphics/Rect;

    iget-object v8, v7, Lcom/android/server/wm/AppTransition;->mTmpFromClipRect:Landroid/graphics/Rect;

    iget v8, v8, Landroid/graphics/Rect;->top:I

    add-int/2addr v8, v2

    iput v8, v3, Landroid/graphics/Rect;->bottom:I

    .line 1227
    .end local v2    # "unscaledThumbHeight":I
    :cond_7
    iget-object v2, v7, Lcom/android/server/wm/AppTransition;->mNextAppTransitionInsets:Landroid/graphics/Rect;

    invoke-virtual {v2, v11}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 1229
    new-instance v2, Landroid/view/animation/ScaleAnimation;

    .line 1230
    if-eqz v21, :cond_8

    move/from16 v25, v1

    goto :goto_5

    :cond_8
    const/high16 v25, 0x3f800000    # 1.0f

    :goto_5
    if-eqz v21, :cond_9

    .line 1231
    const/high16 v26, 0x3f800000    # 1.0f

    goto :goto_6

    :cond_9
    move/from16 v26, v1

    :goto_6
    if-eqz v21, :cond_a

    move/from16 v27, v1

    goto :goto_7

    :cond_a
    const/high16 v27, 0x3f800000    # 1.0f

    :goto_7
    if-eqz v21, :cond_b

    .line 1232
    const/high16 v28, 0x3f800000    # 1.0f

    goto :goto_8

    :cond_b
    move/from16 v28, v1

    :goto_8
    invoke-virtual/range {p5 .. p5}, Landroid/graphics/Rect;->width()I

    move-result v3

    int-to-float v3, v3

    const/high16 v8, 0x40000000    # 2.0f

    div-float v29, v3, v8

    .line 1233
    invoke-virtual/range {p5 .. p5}, Landroid/graphics/Rect;->height()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v3, v8

    iget v8, v11, Landroid/graphics/Rect;->top:I

    int-to-float v8, v8

    add-float v30, v3, v8

    move-object/from16 v24, v2

    invoke-direct/range {v24 .. v30}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFFF)V

    .line 1234
    .local v2, "scaleAnim":Landroid/view/animation/Animation;
    iget-object v3, v7, Lcom/android/server/wm/AppTransition;->mTmpRect:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->left:I

    iget v8, v10, Landroid/graphics/Rect;->left:I

    sub-int/2addr v3, v8

    int-to-float v3, v3

    .line 1235
    .local v3, "targetX":F
    invoke-virtual/range {p5 .. p5}, Landroid/graphics/Rect;->width()I

    move-result v8

    int-to-float v8, v8

    const/high16 v22, 0x40000000    # 2.0f

    div-float v8, v8, v22

    .line 1236
    invoke-virtual/range {p5 .. p5}, Landroid/graphics/Rect;->width()I

    move-result v9

    int-to-float v9, v9

    div-float v9, v9, v22

    mul-float/2addr v9, v1

    sub-float/2addr v8, v9

    .line 1237
    .local v8, "x":F
    iget-object v9, v7, Lcom/android/server/wm/AppTransition;->mTmpRect:Landroid/graphics/Rect;

    iget v9, v9, Landroid/graphics/Rect;->top:I

    iget v12, v10, Landroid/graphics/Rect;->top:I

    sub-int/2addr v9, v12

    int-to-float v9, v9

    .line 1238
    .local v9, "targetY":F
    invoke-virtual/range {p5 .. p5}, Landroid/graphics/Rect;->height()I

    move-result v12

    int-to-float v12, v12

    const/high16 v22, 0x40000000    # 2.0f

    div-float v12, v12, v22

    .line 1239
    invoke-virtual/range {p5 .. p5}, Landroid/graphics/Rect;->height()I

    move-result v14

    int-to-float v14, v14

    div-float v14, v14, v22

    mul-float/2addr v14, v1

    sub-float/2addr v12, v14

    .line 1243
    .local v12, "y":F
    iget-boolean v14, v7, Lcom/android/server/wm/AppTransition;->mLowRamRecentsEnabled:Z

    if-eqz v14, :cond_c

    iget v14, v11, Landroid/graphics/Rect;->top:I

    if-nez v14, :cond_c

    if-eqz v21, :cond_c

    .line 1244
    iget-object v14, v7, Lcom/android/server/wm/AppTransition;->mTmpFromClipRect:Landroid/graphics/Rect;

    move/from16 v31, v1

    iget v1, v14, Landroid/graphics/Rect;->top:I

    .end local v1    # "scale":F
    .local v31, "scale":F
    iget v10, v13, Landroid/graphics/Rect;->top:I

    add-int/2addr v1, v10

    iput v1, v14, Landroid/graphics/Rect;->top:I

    .line 1245
    iget v1, v13, Landroid/graphics/Rect;->top:I

    int-to-float v1, v1

    add-float/2addr v12, v1

    goto :goto_9

    .line 1247
    .end local v31    # "scale":F
    .restart local v1    # "scale":F
    :cond_c
    move/from16 v31, v1

    .end local v1    # "scale":F
    .restart local v31    # "scale":F
    :goto_9
    sub-float v1, v3, v8

    .line 1248
    .local v1, "startX":F
    sub-float v10, v9, v12

    .line 1249
    .local v10, "startY":F
    if-eqz v21, :cond_d

    .line 1250
    new-instance v14, Landroid/view/animation/ClipRectAnimation;

    move/from16 v32, v3

    iget-object v3, v7, Lcom/android/server/wm/AppTransition;->mTmpFromClipRect:Landroid/graphics/Rect;

    .end local v3    # "targetX":F
    .local v32, "targetX":F
    move/from16 v33, v8

    iget-object v8, v7, Lcom/android/server/wm/AppTransition;->mTmpToClipRect:Landroid/graphics/Rect;

    .end local v8    # "x":F
    .local v33, "x":F
    invoke-direct {v14, v3, v8}, Landroid/view/animation/ClipRectAnimation;-><init>(Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    goto :goto_a

    .line 1251
    .end local v32    # "targetX":F
    .end local v33    # "x":F
    .restart local v3    # "targetX":F
    .restart local v8    # "x":F
    :cond_d
    move/from16 v32, v3

    move/from16 v33, v8

    .end local v3    # "targetX":F
    .end local v8    # "x":F
    .restart local v32    # "targetX":F
    .restart local v33    # "x":F
    new-instance v14, Landroid/view/animation/ClipRectAnimation;

    iget-object v3, v7, Lcom/android/server/wm/AppTransition;->mTmpToClipRect:Landroid/graphics/Rect;

    iget-object v8, v7, Lcom/android/server/wm/AppTransition;->mTmpFromClipRect:Landroid/graphics/Rect;

    invoke-direct {v14, v3, v8}, Landroid/view/animation/ClipRectAnimation;-><init>(Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    :goto_a
    move-object v3, v14

    .line 1252
    .local v3, "clipAnim":Landroid/view/animation/Animation;
    if-eqz v21, :cond_e

    .line 1253
    iget v8, v11, Landroid/graphics/Rect;->top:I

    int-to-float v8, v8

    sub-float v8, v10, v8

    const/4 v14, 0x0

    invoke-direct {v7, v1, v14, v8, v14}, Lcom/android/server/wm/AppTransition;->createCurvedMotion(FFFF)Landroid/view/animation/Animation;

    move-result-object v8

    goto :goto_b

    .line 1254
    :cond_e
    const/4 v14, 0x0

    iget v8, v11, Landroid/graphics/Rect;->top:I

    int-to-float v8, v8

    sub-float v8, v10, v8

    invoke-direct {v7, v14, v1, v14, v8}, Lcom/android/server/wm/AppTransition;->createCurvedMotion(FFFF)Landroid/view/animation/Animation;

    move-result-object v8

    .line 1256
    .local v8, "translateAnim":Landroid/view/animation/Animation;
    :goto_b
    invoke-virtual {v0, v3}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 1257
    invoke-virtual {v0, v2}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 1258
    invoke-virtual {v0, v8}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 1260
    .end local v1    # "startX":F
    .end local v2    # "scaleAnim":Landroid/view/animation/Animation;
    .end local v3    # "clipAnim":Landroid/view/animation/Animation;
    .end local v8    # "translateAnim":Landroid/view/animation/Animation;
    .end local v9    # "targetY":F
    .end local v10    # "startY":F
    .end local v12    # "y":F
    .end local v31    # "scale":F
    .end local v32    # "targetX":F
    .end local v33    # "x":F
    goto :goto_e

    .line 1262
    :cond_f
    iget-object v1, v7, Lcom/android/server/wm/AppTransition;->mTmpFromClipRect:Landroid/graphics/Rect;

    iget-object v2, v7, Lcom/android/server/wm/AppTransition;->mTmpFromClipRect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    add-int/2addr v2, v4

    iput v2, v1, Landroid/graphics/Rect;->bottom:I

    .line 1263
    iget-object v1, v7, Lcom/android/server/wm/AppTransition;->mTmpFromClipRect:Landroid/graphics/Rect;

    iget-object v2, v7, Lcom/android/server/wm/AppTransition;->mTmpFromClipRect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->left:I

    add-int/2addr v2, v6

    iput v2, v1, Landroid/graphics/Rect;->right:I

    .line 1265
    if-eqz v21, :cond_10

    .line 1266
    new-instance v1, Landroid/view/animation/ClipRectAnimation;

    iget-object v2, v7, Lcom/android/server/wm/AppTransition;->mTmpFromClipRect:Landroid/graphics/Rect;

    iget-object v3, v7, Lcom/android/server/wm/AppTransition;->mTmpToClipRect:Landroid/graphics/Rect;

    invoke-direct {v1, v2, v3}, Landroid/view/animation/ClipRectAnimation;-><init>(Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    goto :goto_c

    .line 1267
    :cond_10
    new-instance v1, Landroid/view/animation/ClipRectAnimation;

    iget-object v2, v7, Lcom/android/server/wm/AppTransition;->mTmpToClipRect:Landroid/graphics/Rect;

    iget-object v3, v7, Lcom/android/server/wm/AppTransition;->mTmpFromClipRect:Landroid/graphics/Rect;

    invoke-direct {v1, v2, v3}, Landroid/view/animation/ClipRectAnimation;-><init>(Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    .line 1268
    .local v1, "clipAnim":Landroid/view/animation/Animation;
    :goto_c
    if-eqz v21, :cond_11

    .line 1269
    int-to-float v2, v5

    iget v3, v11, Landroid/graphics/Rect;->top:I

    sub-int v3, v20, v3

    int-to-float v3, v3

    const/4 v8, 0x0

    invoke-direct {v7, v2, v8, v3, v8}, Lcom/android/server/wm/AppTransition;->createCurvedMotion(FFFF)Landroid/view/animation/Animation;

    move-result-object v2

    goto :goto_d

    .line 1271
    :cond_11
    const/4 v8, 0x0

    int-to-float v2, v5

    iget v3, v11, Landroid/graphics/Rect;->top:I

    sub-int v3, v20, v3

    int-to-float v3, v3

    invoke-direct {v7, v8, v2, v8, v3}, Lcom/android/server/wm/AppTransition;->createCurvedMotion(FFFF)Landroid/view/animation/Animation;

    move-result-object v2

    .line 1274
    .local v2, "translateAnim":Landroid/view/animation/Animation;
    :goto_d
    invoke-virtual {v0, v1}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 1275
    invoke-virtual {v0, v2}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 1277
    .end local v1    # "clipAnim":Landroid/view/animation/Animation;
    .end local v2    # "translateAnim":Landroid/view/animation/Animation;
    :goto_e
    move-object v1, v0

    .line 1278
    .local v1, "a":Landroid/view/animation/Animation;
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/view/animation/Animation;->setZAdjustment(I)V

    .line 1280
    .end local v0    # "set":Landroid/view/animation/AnimationSet;
    nop

    .line 1305
    .end local v21    # "scaleUp":Z
    :goto_f
    nop

    .line 1308
    nop

    .line 1309
    invoke-direct/range {p0 .. p0}, Lcom/android/server/wm/AppTransition;->getAspectScaleDuration()J

    move-result-wide v8

    invoke-direct/range {p0 .. p0}, Lcom/android/server/wm/AppTransition;->getAspectScaleInterpolator()Landroid/view/animation/Interpolator;

    move-result-object v10

    .line 1308
    move-object v0, v7

    move/from16 v2, v16

    move/from16 v3, v17

    move v12, v4

    move v14, v5

    move-wide v4, v8

    .end local v4    # "thumbHeightI":I
    .end local v5    # "thumbStartX":I
    .local v12, "thumbHeightI":I
    .restart local v14    # "thumbStartX":I
    move v8, v6

    move-object v6, v10

    .end local v6    # "thumbWidthI":I
    .local v8, "thumbWidthI":I
    invoke-virtual/range {v0 .. v6}, Lcom/android/server/wm/AppTransition;->prepareThumbnailAnimationWithDuration(Landroid/view/animation/Animation;IIJLandroid/view/animation/Interpolator;)Landroid/view/animation/Animation;

    move-result-object v0

    return-object v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method createCrossProfileAppsThumbnail(ILandroid/graphics/Rect;)Landroid/graphics/GraphicBuffer;
    .locals 10
    .param p1, "thumbnailDrawableRes"    # I
    .param p2, "frame"    # Landroid/graphics/Rect;

    .line 986
    invoke-virtual {p2}, Landroid/graphics/Rect;->width()I

    move-result v0

    .line 987
    .local v0, "width":I
    invoke-virtual {p2}, Landroid/graphics/Rect;->height()I

    move-result v1

    .line 989
    .local v1, "height":I
    new-instance v2, Landroid/graphics/Picture;

    invoke-direct {v2}, Landroid/graphics/Picture;-><init>()V

    .line 990
    .local v2, "picture":Landroid/graphics/Picture;
    invoke-virtual {v2, v0, v1}, Landroid/graphics/Picture;->beginRecording(II)Landroid/graphics/Canvas;

    move-result-object v3

    .line 991
    .local v3, "canvas":Landroid/graphics/Canvas;
    const/4 v4, 0x0

    const v5, 0x3f19999a    # 0.6f

    invoke-static {v5, v4, v4, v4}, Landroid/graphics/Color;->argb(FFFF)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/graphics/Canvas;->drawColor(I)V

    .line 992
    iget-object v4, p0, Lcom/android/server/wm/AppTransition;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v4, v4, Lcom/android/server/wm/WindowManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x105005a

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    .line 994
    .local v4, "thumbnailSize":I
    iget-object v5, p0, Lcom/android/server/wm/AppTransition;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v5, v5, Lcom/android/server/wm/WindowManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v5, p1}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    .line 995
    .local v5, "drawable":Landroid/graphics/drawable/Drawable;
    sub-int v6, v0, v4

    div-int/lit8 v6, v6, 0x2

    sub-int v7, v1, v4

    div-int/lit8 v7, v7, 0x2

    add-int v8, v0, v4

    div-int/lit8 v8, v8, 0x2

    add-int v9, v1, v4

    div-int/lit8 v9, v9, 0x2

    invoke-virtual {v5, v6, v7, v8, v9}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 1000
    iget-object v6, p0, Lcom/android/server/wm/AppTransition;->mContext:Landroid/content/Context;

    const v7, 0x106000b

    invoke-virtual {v6, v7}, Landroid/content/Context;->getColor(I)I

    move-result v6

    invoke-virtual {v5, v6}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    .line 1001
    invoke-virtual {v5, v3}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 1002
    invoke-virtual {v2}, Landroid/graphics/Picture;->endRecording()V

    .line 1004
    invoke-static {v2}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Picture;)Landroid/graphics/Bitmap;

    move-result-object v6

    invoke-virtual {v6}, Landroid/graphics/Bitmap;->createGraphicBufferHandle()Landroid/graphics/GraphicBuffer;

    move-result-object v6

    return-object v6
.end method

.method createCrossProfileAppsThumbnailAnimationLocked(Landroid/graphics/Rect;)Landroid/view/animation/Animation;
    .locals 9
    .param p1, "appRect"    # Landroid/graphics/Rect;

    .line 1008
    const-string v0, "android"

    const v1, 0x10a0021

    invoke-direct {p0, v0, v1}, Lcom/android/server/wm/AppTransition;->loadAnimationRes(Ljava/lang/String;I)Landroid/view/animation/Animation;

    move-result-object v0

    .line 1010
    .local v0, "animation":Landroid/view/animation/Animation;
    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v4

    .line 1011
    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v5

    .line 1010
    const-wide/16 v6, 0x0

    const/4 v8, 0x0

    move-object v2, p0

    move-object v3, v0

    invoke-virtual/range {v2 .. v8}, Lcom/android/server/wm/AppTransition;->prepareThumbnailAnimationWithDuration(Landroid/view/animation/Animation;IIJLandroid/view/animation/Interpolator;)Landroid/view/animation/Animation;

    move-result-object v1

    return-object v1
.end method

.method createThumbnailAspectScaleAnimationLocked(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/GraphicBuffer;III)Landroid/view/animation/Animation;
    .locals 33
    .param p1, "appRect"    # Landroid/graphics/Rect;
    .param p2, "contentInsets"    # Landroid/graphics/Rect;
    .param p3, "thumbnailHeader"    # Landroid/graphics/GraphicBuffer;
    .param p4, "taskId"    # I
    .param p5, "uiMode"    # I
    .param p6, "orientation"    # I

    move-object/from16 v7, p0

    move-object/from16 v8, p1

    move-object/from16 v9, p2

    .line 1021
    invoke-virtual/range {p3 .. p3}, Landroid/graphics/GraphicBuffer;->getWidth()I

    move-result v10

    .line 1022
    .local v10, "thumbWidthI":I
    const/high16 v0, 0x3f800000    # 1.0f

    if-lez v10, :cond_0

    int-to-float v1, v10

    goto :goto_0

    :cond_0
    move v1, v0

    :goto_0
    move v11, v1

    .line 1023
    .local v11, "thumbWidth":F
    invoke-virtual/range {p3 .. p3}, Landroid/graphics/GraphicBuffer;->getHeight()I

    move-result v12

    .line 1024
    .local v12, "thumbHeightI":I
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Rect;->width()I

    move-result v13

    .line 1026
    .local v13, "appWidth":I
    int-to-float v1, v13

    div-float v21, v1, v11

    .line 1027
    .local v21, "scaleW":F
    iget-object v1, v7, Lcom/android/server/wm/AppTransition;->mTmpRect:Landroid/graphics/Rect;

    move/from16 v6, p4

    invoke-virtual {v7, v6, v1}, Lcom/android/server/wm/AppTransition;->getNextAppTransitionStartRect(ILandroid/graphics/Rect;)V

    .line 1034
    move/from16 v4, p5

    move/from16 v5, p6

    invoke-direct {v7, v4, v5}, Lcom/android/server/wm/AppTransition;->shouldScaleDownThumbnailTransition(II)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1035
    iget-object v1, v7, Lcom/android/server/wm/AppTransition;->mTmpRect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    int-to-float v1, v1

    .line 1036
    .local v1, "fromX":F
    iget-object v2, v7, Lcom/android/server/wm/AppTransition;->mTmpRect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    int-to-float v2, v2

    .line 1040
    .local v2, "fromY":F
    iget-object v3, v7, Lcom/android/server/wm/AppTransition;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    int-to-float v3, v3

    sub-float v14, v21, v0

    mul-float/2addr v3, v14

    iget v14, v8, Landroid/graphics/Rect;->left:I

    int-to-float v14, v14

    add-float/2addr v3, v14

    .line 1041
    .local v3, "toX":F
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Rect;->height()I

    move-result v14

    div-int/lit8 v14, v14, 0x2

    int-to-float v14, v14

    div-float v15, v0, v21

    sub-float v15, v0, v15

    mul-float/2addr v14, v15

    iget v15, v8, Landroid/graphics/Rect;->top:I

    int-to-float v15, v15

    add-float/2addr v14, v15

    .line 1042
    .local v14, "toY":F
    iget-object v15, v7, Lcom/android/server/wm/AppTransition;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {v15}, Landroid/graphics/Rect;->width()I

    move-result v15

    div-int/lit8 v15, v15, 0x2

    int-to-float v15, v15

    .line 1043
    .local v15, "pivotX":F
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Rect;->height()I

    move-result v16

    div-int/lit8 v0, v16, 0x2

    int-to-float v0, v0

    div-float v0, v0, v21

    .line 1044
    .local v0, "pivotY":F
    move/from16 v22, v0

    iget-boolean v0, v7, Lcom/android/server/wm/AppTransition;->mGridLayoutRecentsEnabled:Z

    .end local v0    # "pivotY":F
    .local v22, "pivotY":F
    if-eqz v0, :cond_1

    .line 1047
    int-to-float v0, v12

    sub-float/2addr v2, v0

    .line 1048
    int-to-float v0, v12

    mul-float v0, v0, v21

    sub-float/2addr v14, v0

    .line 1056
    .end local v1    # "fromX":F
    .end local v15    # "pivotX":F
    .local v0, "fromY":F
    .local v2, "fromX":F
    .local v22, "pivotX":F
    .local v23, "pivotY":F
    :cond_1
    move v0, v2

    move/from16 v23, v22

    move v2, v1

    move/from16 v22, v15

    goto :goto_1

    .line 1051
    .end local v0    # "fromY":F
    .end local v2    # "fromX":F
    .end local v3    # "toX":F
    .end local v14    # "toY":F
    .end local v22    # "pivotX":F
    .end local v23    # "pivotY":F
    :cond_2
    const/4 v0, 0x0

    .line 1052
    .local v0, "pivotX":F
    const/4 v1, 0x0

    .line 1053
    .local v1, "pivotY":F
    iget-object v2, v7, Lcom/android/server/wm/AppTransition;->mTmpRect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->left:I

    int-to-float v2, v2

    .line 1054
    .restart local v2    # "fromX":F
    iget-object v3, v7, Lcom/android/server/wm/AppTransition;->mTmpRect:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->top:I

    int-to-float v3, v3

    .line 1055
    .local v3, "fromY":F
    iget v14, v8, Landroid/graphics/Rect;->left:I

    int-to-float v14, v14

    .line 1056
    .local v14, "toX":F
    iget v15, v8, Landroid/graphics/Rect;->top:I

    int-to-float v15, v15

    move/from16 v22, v0

    move/from16 v23, v1

    move v0, v3

    move v3, v14

    move v14, v15

    .end local v1    # "pivotY":F
    .local v0, "fromY":F
    .local v3, "toX":F
    .local v14, "toY":F
    .restart local v22    # "pivotX":F
    .restart local v23    # "pivotY":F
    :goto_1
    move v1, v14

    .line 1058
    .end local v14    # "toY":F
    .local v1, "toY":F
    invoke-direct/range {p0 .. p0}, Lcom/android/server/wm/AppTransition;->getAspectScaleDuration()J

    move-result-wide v14

    .line 1059
    .local v14, "duration":J
    invoke-direct/range {p0 .. p0}, Lcom/android/server/wm/AppTransition;->getAspectScaleInterpolator()Landroid/view/animation/Interpolator;

    move-result-object v6

    .line 1060
    .local v6, "interpolator":Landroid/view/animation/Interpolator;
    iget-boolean v4, v7, Lcom/android/server/wm/AppTransition;->mNextAppTransitionScaleUp:Z

    move-wide/from16 v24, v14

    const/4 v15, 0x0

    .end local v14    # "duration":J
    .local v24, "duration":J
    const/4 v14, 0x0

    if-eqz v4, :cond_7

    .line 1062
    new-instance v4, Landroid/view/animation/ScaleAnimation;

    const/high16 v16, 0x3f800000    # 1.0f

    const/high16 v17, 0x3f800000    # 1.0f

    move v5, v14

    move-wide/from16 v26, v24

    move-object v14, v4

    .end local v24    # "duration":J
    .local v26, "duration":J
    move v5, v15

    move/from16 v15, v16

    move/from16 v16, v21

    move/from16 v18, v21

    move/from16 v19, v22

    move/from16 v20, v23

    invoke-direct/range {v14 .. v20}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFFF)V

    .line 1063
    .local v4, "scale":Landroid/view/animation/Animation;
    invoke-virtual {v4, v6}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 1064
    move-wide/from16 v14, v26

    invoke-virtual {v4, v14, v15}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 1065
    .end local v26    # "duration":J
    .restart local v14    # "duration":J
    move/from16 v28, v11

    new-instance v11, Landroid/view/animation/AlphaAnimation;

    .end local v11    # "thumbWidth":F
    .local v28, "thumbWidth":F
    move/from16 v29, v13

    const/high16 v13, 0x3f800000    # 1.0f

    invoke-direct {v11, v13, v5}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .end local v13    # "appWidth":I
    .local v29, "appWidth":I
    move-object v5, v11

    .line 1066
    .local v5, "alpha":Landroid/view/animation/Animation;
    iget v11, v7, Lcom/android/server/wm/AppTransition;->mNextAppTransition:I

    const/16 v13, 0x13

    if-ne v11, v13, :cond_3

    .line 1067
    sget-object v11, Lcom/android/server/wm/AppTransition;->THUMBNAIL_DOCK_INTERPOLATOR:Landroid/view/animation/Interpolator;

    goto :goto_2

    :cond_3
    iget-object v11, v7, Lcom/android/server/wm/AppTransition;->mThumbnailFadeOutInterpolator:Landroid/view/animation/Interpolator;

    .line 1066
    :goto_2
    invoke-virtual {v5, v11}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 1068
    iget v11, v7, Lcom/android/server/wm/AppTransition;->mNextAppTransition:I

    if-ne v11, v13, :cond_4

    .line 1069
    const-wide/16 v16, 0x2

    div-long v16, v14, v16

    .line 1068
    move-wide/from16 v8, v16

    goto :goto_3

    .line 1070
    :cond_4
    nop

    .line 1068
    move-wide v8, v14

    :goto_3
    invoke-virtual {v5, v8, v9}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 1071
    invoke-direct {v7, v2, v3, v0, v1}, Lcom/android/server/wm/AppTransition;->createCurvedMotion(FFFF)Landroid/view/animation/Animation;

    move-result-object v8

    .line 1072
    .local v8, "translate":Landroid/view/animation/Animation;
    invoke-virtual {v8, v6}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 1073
    invoke-virtual {v8, v14, v15}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 1075
    iget-object v9, v7, Lcom/android/server/wm/AppTransition;->mTmpFromClipRect:Landroid/graphics/Rect;

    const/4 v11, 0x0

    invoke-virtual {v9, v11, v11, v10, v12}, Landroid/graphics/Rect;->set(IIII)V

    .line 1076
    iget-object v9, v7, Lcom/android/server/wm/AppTransition;->mTmpToClipRect:Landroid/graphics/Rect;

    move-object/from16 v13, p1

    invoke-virtual {v9, v13}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 1080
    iget-object v9, v7, Lcom/android/server/wm/AppTransition;->mTmpToClipRect:Landroid/graphics/Rect;

    invoke-virtual {v9, v11, v11}, Landroid/graphics/Rect;->offsetTo(II)V

    .line 1081
    iget-object v9, v7, Lcom/android/server/wm/AppTransition;->mTmpToClipRect:Landroid/graphics/Rect;

    iget-object v11, v7, Lcom/android/server/wm/AppTransition;->mTmpToClipRect:Landroid/graphics/Rect;

    iget v11, v11, Landroid/graphics/Rect;->right:I

    int-to-float v11, v11

    div-float v11, v11, v21

    float-to-int v11, v11

    iput v11, v9, Landroid/graphics/Rect;->right:I

    .line 1082
    iget-object v9, v7, Lcom/android/server/wm/AppTransition;->mTmpToClipRect:Landroid/graphics/Rect;

    iget-object v11, v7, Lcom/android/server/wm/AppTransition;->mTmpToClipRect:Landroid/graphics/Rect;

    iget v11, v11, Landroid/graphics/Rect;->bottom:I

    int-to-float v11, v11

    div-float v11, v11, v21

    float-to-int v11, v11

    iput v11, v9, Landroid/graphics/Rect;->bottom:I

    .line 1084
    move-object/from16 v9, p2

    if-eqz v9, :cond_5

    .line 1085
    iget-object v11, v7, Lcom/android/server/wm/AppTransition;->mTmpToClipRect:Landroid/graphics/Rect;

    move/from16 v30, v10

    iget v10, v9, Landroid/graphics/Rect;->left:I

    .end local v10    # "thumbWidthI":I
    .local v30, "thumbWidthI":I
    neg-int v10, v10

    int-to-float v10, v10

    mul-float v10, v10, v21

    float-to-int v10, v10

    move/from16 v31, v12

    iget v12, v9, Landroid/graphics/Rect;->top:I

    .end local v12    # "thumbHeightI":I
    .local v31, "thumbHeightI":I
    neg-int v12, v12

    int-to-float v12, v12

    mul-float v12, v12, v21

    float-to-int v12, v12

    iget v13, v9, Landroid/graphics/Rect;->right:I

    neg-int v13, v13

    int-to-float v13, v13

    mul-float v13, v13, v21

    float-to-int v13, v13

    move/from16 v32, v0

    iget v0, v9, Landroid/graphics/Rect;->bottom:I

    .end local v0    # "fromY":F
    .local v32, "fromY":F
    neg-int v0, v0

    int-to-float v0, v0

    mul-float v0, v0, v21

    float-to-int v0, v0

    invoke-virtual {v11, v10, v12, v13, v0}, Landroid/graphics/Rect;->inset(IIII)V

    goto :goto_4

    .line 1091
    .end local v30    # "thumbWidthI":I
    .end local v31    # "thumbHeightI":I
    .end local v32    # "fromY":F
    .restart local v0    # "fromY":F
    .restart local v10    # "thumbWidthI":I
    .restart local v12    # "thumbHeightI":I
    :cond_5
    move/from16 v32, v0

    move/from16 v30, v10

    move/from16 v31, v12

    .end local v0    # "fromY":F
    .end local v10    # "thumbWidthI":I
    .end local v12    # "thumbHeightI":I
    .restart local v30    # "thumbWidthI":I
    .restart local v31    # "thumbHeightI":I
    .restart local v32    # "fromY":F
    :goto_4
    new-instance v0, Landroid/view/animation/ClipRectAnimation;

    iget-object v10, v7, Lcom/android/server/wm/AppTransition;->mTmpFromClipRect:Landroid/graphics/Rect;

    iget-object v11, v7, Lcom/android/server/wm/AppTransition;->mTmpToClipRect:Landroid/graphics/Rect;

    invoke-direct {v0, v10, v11}, Landroid/view/animation/ClipRectAnimation;-><init>(Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    .line 1092
    .local v0, "clipAnim":Landroid/view/animation/Animation;
    invoke-virtual {v0, v6}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 1093
    invoke-virtual {v0, v14, v15}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 1096
    new-instance v10, Landroid/view/animation/AnimationSet;

    const/4 v11, 0x0

    invoke-direct {v10, v11}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    .line 1097
    .local v10, "set":Landroid/view/animation/AnimationSet;
    invoke-virtual {v10, v4}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 1098
    iget-boolean v11, v7, Lcom/android/server/wm/AppTransition;->mGridLayoutRecentsEnabled:Z

    if-nez v11, :cond_6

    .line 1100
    invoke-virtual {v10, v5}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 1102
    :cond_6
    invoke-virtual {v10, v8}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 1103
    invoke-virtual {v10, v0}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 1104
    nop

    .end local v0    # "clipAnim":Landroid/view/animation/Animation;
    .end local v4    # "scale":Landroid/view/animation/Animation;
    .end local v5    # "alpha":Landroid/view/animation/Animation;
    .end local v8    # "translate":Landroid/view/animation/Animation;
    .end local v10    # "set":Landroid/view/animation/AnimationSet;
    move-object v0, v10

    .line 1105
    .local v0, "a":Landroid/view/animation/Animation;
    nop

    .line 1125
    move-object v12, v0

    move-wide v10, v14

    move/from16 v5, v32

    goto :goto_5

    .line 1107
    .end local v14    # "duration":J
    .end local v28    # "thumbWidth":F
    .end local v29    # "appWidth":I
    .end local v30    # "thumbWidthI":I
    .end local v31    # "thumbHeightI":I
    .end local v32    # "fromY":F
    .local v0, "fromY":F
    .local v10, "thumbWidthI":I
    .restart local v11    # "thumbWidth":F
    .restart local v12    # "thumbHeightI":I
    .restart local v13    # "appWidth":I
    .restart local v24    # "duration":J
    :cond_7
    move/from16 v32, v0

    move/from16 v30, v10

    move/from16 v28, v11

    move/from16 v31, v12

    move/from16 v29, v13

    move v5, v15

    move-wide/from16 v14, v24

    .end local v0    # "fromY":F
    .end local v10    # "thumbWidthI":I
    .end local v11    # "thumbWidth":F
    .end local v12    # "thumbHeightI":I
    .end local v13    # "appWidth":I
    .end local v24    # "duration":J
    .restart local v14    # "duration":J
    .restart local v28    # "thumbWidth":F
    .restart local v29    # "appWidth":I
    .restart local v30    # "thumbWidthI":I
    .restart local v31    # "thumbHeightI":I
    .restart local v32    # "fromY":F
    new-instance v0, Landroid/view/animation/ScaleAnimation;

    const/high16 v16, 0x3f800000    # 1.0f

    const/high16 v18, 0x3f800000    # 1.0f

    move-wide v10, v14

    move-object v14, v0

    .end local v14    # "duration":J
    .local v10, "duration":J
    move/from16 v15, v21

    move/from16 v17, v21

    move/from16 v19, v22

    move/from16 v20, v23

    invoke-direct/range {v14 .. v20}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFFF)V

    .line 1108
    .local v0, "scale":Landroid/view/animation/Animation;
    invoke-virtual {v0, v6}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 1109
    invoke-virtual {v0, v10, v11}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 1110
    new-instance v4, Landroid/view/animation/AlphaAnimation;

    const/high16 v8, 0x3f800000    # 1.0f

    invoke-direct {v4, v5, v8}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 1111
    .local v4, "alpha":Landroid/view/animation/Animation;
    iget-object v5, v7, Lcom/android/server/wm/AppTransition;->mThumbnailFadeInInterpolator:Landroid/view/animation/Interpolator;

    invoke-virtual {v4, v5}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 1112
    invoke-virtual {v4, v10, v11}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 1113
    move/from16 v5, v32

    invoke-direct {v7, v3, v2, v1, v5}, Lcom/android/server/wm/AppTransition;->createCurvedMotion(FFFF)Landroid/view/animation/Animation;

    move-result-object v8

    .line 1114
    .end local v32    # "fromY":F
    .local v5, "fromY":F
    .restart local v8    # "translate":Landroid/view/animation/Animation;
    invoke-virtual {v8, v6}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 1115
    invoke-virtual {v8, v10, v11}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 1118
    new-instance v12, Landroid/view/animation/AnimationSet;

    const/4 v13, 0x0

    invoke-direct {v12, v13}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    .line 1119
    .local v12, "set":Landroid/view/animation/AnimationSet;
    invoke-virtual {v12, v0}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 1120
    iget-boolean v13, v7, Lcom/android/server/wm/AppTransition;->mGridLayoutRecentsEnabled:Z

    if-nez v13, :cond_8

    .line 1122
    invoke-virtual {v12, v4}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 1124
    :cond_8
    invoke-virtual {v12, v8}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 1125
    nop

    .end local v0    # "scale":Landroid/view/animation/Animation;
    .end local v4    # "alpha":Landroid/view/animation/Animation;
    .end local v8    # "translate":Landroid/view/animation/Animation;
    .local v12, "a":Landroid/view/animation/Animation;
    :goto_5
    move v8, v1

    move-object v1, v12

    .line 1128
    .end local v12    # "a":Landroid/view/animation/Animation;
    .local v1, "a":Landroid/view/animation/Animation;
    .local v8, "toY":F
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Rect;->height()I

    move-result v4

    const-wide/16 v12, 0x0

    const/4 v14, 0x0

    move v15, v5

    move-object v0, v7

    .end local v5    # "fromY":F
    .local v15, "fromY":F
    move/from16 v16, v2

    move/from16 v2, v29

    .end local v2    # "fromX":F
    .local v16, "fromX":F
    move/from16 v17, v3

    move v3, v4

    .end local v3    # "toX":F
    .local v17, "toX":F
    move-wide v4, v12

    move-object v12, v6

    move-object v6, v14

    .end local v6    # "interpolator":Landroid/view/animation/Interpolator;
    .local v12, "interpolator":Landroid/view/animation/Interpolator;
    invoke-virtual/range {v0 .. v6}, Lcom/android/server/wm/AppTransition;->prepareThumbnailAnimationWithDuration(Landroid/view/animation/Animation;IIJLandroid/view/animation/Interpolator;)Landroid/view/animation/Animation;

    move-result-object v0

    return-object v0
.end method

.method createThumbnailEnterExitAnimationLocked(ILandroid/graphics/Rect;II)Landroid/view/animation/Animation;
    .locals 22
    .param p1, "thumbTransitState"    # I
    .param p2, "containingFrame"    # Landroid/graphics/Rect;
    .param p3, "transit"    # I
    .param p4, "taskId"    # I

    move-object/from16 v0, p0

    move/from16 v1, p3

    .line 1423
    invoke-virtual/range {p2 .. p2}, Landroid/graphics/Rect;->width()I

    move-result v2

    .line 1424
    .local v2, "appWidth":I
    invoke-virtual/range {p2 .. p2}, Landroid/graphics/Rect;->height()I

    move-result v3

    .line 1425
    .local v3, "appHeight":I
    move/from16 v4, p4

    invoke-virtual {v0, v4}, Lcom/android/server/wm/AppTransition;->getAppTransitionThumbnailHeader(I)Landroid/graphics/GraphicBuffer;

    move-result-object v5

    .line 1427
    .local v5, "thumbnailHeader":Landroid/graphics/GraphicBuffer;
    iget-object v6, v0, Lcom/android/server/wm/AppTransition;->mTmpRect:Landroid/graphics/Rect;

    invoke-direct {v0, v6}, Lcom/android/server/wm/AppTransition;->getDefaultNextAppTransitionStartRect(Landroid/graphics/Rect;)V

    .line 1428
    if-eqz v5, :cond_0

    invoke-virtual {v5}, Landroid/graphics/GraphicBuffer;->getWidth()I

    move-result v6

    goto :goto_0

    :cond_0
    move v6, v2

    .line 1429
    .local v6, "thumbWidthI":I
    :goto_0
    const/high16 v7, 0x3f800000    # 1.0f

    if-lez v6, :cond_1

    int-to-float v8, v6

    goto :goto_1

    :cond_1
    move v8, v7

    .line 1430
    .local v8, "thumbWidth":F
    :goto_1
    if-eqz v5, :cond_2

    invoke-virtual {v5}, Landroid/graphics/GraphicBuffer;->getHeight()I

    move-result v9

    goto :goto_2

    :cond_2
    move v9, v3

    .line 1431
    .local v9, "thumbHeightI":I
    :goto_2
    if-lez v9, :cond_3

    int-to-float v10, v9

    goto :goto_3

    :cond_3
    move v10, v7

    .line 1433
    .local v10, "thumbHeight":F
    :goto_3
    const/4 v11, 0x0

    packed-switch p1, :pswitch_data_0

    .line 1480
    new-instance v7, Ljava/lang/RuntimeException;

    const-string v11, "Invalid thumbnail transition state"

    invoke-direct {v7, v11}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 1464
    :pswitch_0
    int-to-float v12, v2

    div-float v12, v8, v12

    .line 1465
    .local v12, "scaleW":F
    int-to-float v13, v3

    div-float v14, v10, v13

    .line 1466
    .local v14, "scaleH":F
    new-instance v20, Landroid/view/animation/ScaleAnimation;

    const/high16 v15, 0x3f800000    # 1.0f

    const/high16 v16, 0x3f800000    # 1.0f

    iget-object v13, v0, Lcom/android/server/wm/AppTransition;->mTmpRect:Landroid/graphics/Rect;

    iget v13, v13, Landroid/graphics/Rect;->left:I

    .line 1467
    invoke-static {v13, v12}, Lcom/android/server/wm/AppTransition;->computePivot(IF)F

    move-result v18

    iget-object v13, v0, Lcom/android/server/wm/AppTransition;->mTmpRect:Landroid/graphics/Rect;

    iget v13, v13, Landroid/graphics/Rect;->top:I

    .line 1468
    invoke-static {v13, v14}, Lcom/android/server/wm/AppTransition;->computePivot(IF)F

    move-result v19

    move-object/from16 v13, v20

    move/from16 v21, v14

    move v14, v15

    .end local v14    # "scaleH":F
    .local v21, "scaleH":F
    move v15, v12

    move/from16 v17, v21

    invoke-direct/range {v13 .. v19}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFFF)V

    .line 1470
    .local v13, "scale":Landroid/view/animation/Animation;
    new-instance v14, Landroid/view/animation/AlphaAnimation;

    invoke-direct {v14, v7, v11}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    move-object v7, v14

    .line 1472
    .local v7, "alpha":Landroid/view/animation/Animation;
    new-instance v11, Landroid/view/animation/AnimationSet;

    const/4 v14, 0x1

    invoke-direct {v11, v14}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    .line 1473
    .local v11, "set":Landroid/view/animation/AnimationSet;
    invoke-virtual {v11, v13}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 1474
    invoke-virtual {v11, v7}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 1475
    invoke-virtual {v11, v14}, Landroid/view/animation/AnimationSet;->setZAdjustment(I)V

    .line 1476
    move-object v14, v11

    .line 1477
    .local v14, "a":Landroid/view/animation/Animation;
    goto :goto_4

    .line 1459
    .end local v7    # "alpha":Landroid/view/animation/Animation;
    .end local v11    # "set":Landroid/view/animation/AnimationSet;
    .end local v12    # "scaleW":F
    .end local v13    # "scale":Landroid/view/animation/Animation;
    .end local v14    # "a":Landroid/view/animation/Animation;
    .end local v21    # "scaleH":F
    :pswitch_1
    new-instance v11, Landroid/view/animation/AlphaAnimation;

    invoke-direct {v11, v7, v7}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    move-object v14, v11

    .line 1460
    .restart local v14    # "a":Landroid/view/animation/Animation;
    goto :goto_4

    .line 1445
    .end local v14    # "a":Landroid/view/animation/Animation;
    :pswitch_2
    const/16 v12, 0xe

    if-ne v1, v12, :cond_4

    .line 1449
    new-instance v12, Landroid/view/animation/AlphaAnimation;

    invoke-direct {v12, v7, v11}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    move-object v14, v12

    .restart local v14    # "a":Landroid/view/animation/Animation;
    goto :goto_4

    .line 1452
    .end local v14    # "a":Landroid/view/animation/Animation;
    :cond_4
    new-instance v11, Landroid/view/animation/AlphaAnimation;

    invoke-direct {v11, v7, v7}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    move-object v14, v11

    .line 1454
    .restart local v14    # "a":Landroid/view/animation/Animation;
    goto :goto_4

    .line 1436
    .end local v14    # "a":Landroid/view/animation/Animation;
    :pswitch_3
    int-to-float v7, v2

    div-float v7, v8, v7

    .line 1437
    .local v7, "scaleW":F
    int-to-float v11, v3

    div-float v11, v10, v11

    .line 1438
    .local v11, "scaleH":F
    new-instance v19, Landroid/view/animation/ScaleAnimation;

    const/high16 v14, 0x3f800000    # 1.0f

    const/high16 v16, 0x3f800000    # 1.0f

    iget-object v12, v0, Lcom/android/server/wm/AppTransition;->mTmpRect:Landroid/graphics/Rect;

    iget v12, v12, Landroid/graphics/Rect;->left:I

    .line 1439
    invoke-static {v12, v7}, Lcom/android/server/wm/AppTransition;->computePivot(IF)F

    move-result v17

    iget-object v12, v0, Lcom/android/server/wm/AppTransition;->mTmpRect:Landroid/graphics/Rect;

    iget v12, v12, Landroid/graphics/Rect;->top:I

    .line 1440
    invoke-static {v12, v11}, Lcom/android/server/wm/AppTransition;->computePivot(IF)F

    move-result v18

    move-object/from16 v12, v19

    move v13, v7

    move v15, v11

    invoke-direct/range {v12 .. v18}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFFF)V

    move-object/from16 v14, v19

    .line 1441
    .restart local v14    # "a":Landroid/view/animation/Animation;
    nop

    .line 1480
    .end local v7    # "scaleW":F
    .end local v11    # "scaleH":F
    :goto_4
    move-object v7, v14

    .line 1483
    .end local v14    # "a":Landroid/view/animation/Animation;
    .local v7, "a":Landroid/view/animation/Animation;
    invoke-virtual {v0, v7, v2, v3, v1}, Lcom/android/server/wm/AppTransition;->prepareThumbnailAnimation(Landroid/view/animation/Animation;III)Landroid/view/animation/Animation;

    move-result-object v11

    return-object v11

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method createThumbnailScaleAnimationLocked(IIILandroid/graphics/GraphicBuffer;)Landroid/view/animation/Animation;
    .locals 18
    .param p1, "appWidth"    # I
    .param p2, "appHeight"    # I
    .param p3, "transit"    # I
    .param p4, "thumbnailHeader"    # Landroid/graphics/GraphicBuffer;

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    .line 1382
    iget-object v3, v0, Lcom/android/server/wm/AppTransition;->mTmpRect:Landroid/graphics/Rect;

    invoke-direct {v0, v3}, Lcom/android/server/wm/AppTransition;->getDefaultNextAppTransitionStartRect(Landroid/graphics/Rect;)V

    .line 1383
    invoke-virtual/range {p4 .. p4}, Landroid/graphics/GraphicBuffer;->getWidth()I

    move-result v3

    .line 1384
    .local v3, "thumbWidthI":I
    const/high16 v4, 0x3f800000    # 1.0f

    if-lez v3, :cond_0

    int-to-float v5, v3

    goto :goto_0

    :cond_0
    move v5, v4

    .line 1385
    .local v5, "thumbWidth":F
    :goto_0
    invoke-virtual/range {p4 .. p4}, Landroid/graphics/GraphicBuffer;->getHeight()I

    move-result v6

    .line 1386
    .local v6, "thumbHeightI":I
    if-lez v6, :cond_1

    int-to-float v7, v6

    goto :goto_1

    :cond_1
    move v7, v4

    .line 1388
    .local v7, "thumbHeight":F
    :goto_1
    iget-boolean v8, v0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionScaleUp:Z

    if-eqz v8, :cond_2

    .line 1390
    int-to-float v8, v1

    div-float/2addr v8, v5

    .line 1391
    .local v8, "scaleW":F
    int-to-float v9, v2

    div-float v16, v9, v7

    .line 1392
    .local v16, "scaleH":F
    new-instance v17, Landroid/view/animation/ScaleAnimation;

    const/high16 v10, 0x3f800000    # 1.0f

    const/high16 v12, 0x3f800000    # 1.0f

    iget-object v9, v0, Lcom/android/server/wm/AppTransition;->mTmpRect:Landroid/graphics/Rect;

    iget v9, v9, Landroid/graphics/Rect;->left:I

    div-float v11, v4, v8

    .line 1393
    invoke-static {v9, v11}, Lcom/android/server/wm/AppTransition;->computePivot(IF)F

    move-result v14

    iget-object v9, v0, Lcom/android/server/wm/AppTransition;->mTmpRect:Landroid/graphics/Rect;

    iget v9, v9, Landroid/graphics/Rect;->top:I

    div-float v11, v4, v16

    .line 1394
    invoke-static {v9, v11}, Lcom/android/server/wm/AppTransition;->computePivot(IF)F

    move-result v15

    move-object/from16 v9, v17

    move v11, v8

    move/from16 v13, v16

    invoke-direct/range {v9 .. v15}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFFF)V

    .line 1395
    .local v9, "scale":Landroid/view/animation/Animation;
    iget-object v10, v0, Lcom/android/server/wm/AppTransition;->mDecelerateInterpolator:Landroid/view/animation/Interpolator;

    invoke-virtual {v9, v10}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 1397
    new-instance v10, Landroid/view/animation/AlphaAnimation;

    const/4 v11, 0x0

    invoke-direct {v10, v4, v11}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    move-object v4, v10

    .line 1398
    .local v4, "alpha":Landroid/view/animation/Animation;
    iget-object v10, v0, Lcom/android/server/wm/AppTransition;->mThumbnailFadeOutInterpolator:Landroid/view/animation/Interpolator;

    invoke-virtual {v4, v10}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 1401
    new-instance v10, Landroid/view/animation/AnimationSet;

    const/4 v11, 0x0

    invoke-direct {v10, v11}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    .line 1402
    .local v10, "set":Landroid/view/animation/AnimationSet;
    invoke-virtual {v10, v9}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 1403
    invoke-virtual {v10, v4}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 1404
    nop

    .end local v4    # "alpha":Landroid/view/animation/Animation;
    .end local v8    # "scaleW":F
    .end local v9    # "scale":Landroid/view/animation/Animation;
    .end local v10    # "set":Landroid/view/animation/AnimationSet;
    .end local v16    # "scaleH":F
    move-object v4, v10

    .line 1405
    .local v4, "a":Landroid/view/animation/Animation;
    nop

    .line 1411
    move-object/from16 v17, v4

    goto :goto_2

    .line 1407
    .end local v4    # "a":Landroid/view/animation/Animation;
    :cond_2
    int-to-float v8, v1

    div-float/2addr v8, v5

    .line 1408
    .restart local v8    # "scaleW":F
    int-to-float v9, v2

    div-float v16, v9, v7

    .line 1409
    .restart local v16    # "scaleH":F
    new-instance v17, Landroid/view/animation/ScaleAnimation;

    const/high16 v11, 0x3f800000    # 1.0f

    const/high16 v13, 0x3f800000    # 1.0f

    iget-object v9, v0, Lcom/android/server/wm/AppTransition;->mTmpRect:Landroid/graphics/Rect;

    iget v9, v9, Landroid/graphics/Rect;->left:I

    div-float v10, v4, v8

    .line 1410
    invoke-static {v9, v10}, Lcom/android/server/wm/AppTransition;->computePivot(IF)F

    move-result v14

    iget-object v9, v0, Lcom/android/server/wm/AppTransition;->mTmpRect:Landroid/graphics/Rect;

    iget v9, v9, Landroid/graphics/Rect;->top:I

    div-float v4, v4, v16

    .line 1411
    invoke-static {v9, v4}, Lcom/android/server/wm/AppTransition;->computePivot(IF)F

    move-result v15

    move-object/from16 v9, v17

    move v10, v8

    move/from16 v12, v16

    invoke-direct/range {v9 .. v15}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFFF)V

    .end local v8    # "scaleW":F
    .end local v16    # "scaleH":F
    .local v17, "a":Landroid/view/animation/Animation;
    :goto_2
    move-object/from16 v4, v17

    .line 1414
    .end local v17    # "a":Landroid/view/animation/Animation;
    .restart local v4    # "a":Landroid/view/animation/Animation;
    move/from16 v8, p3

    invoke-virtual {v0, v4, v1, v2, v8}, Lcom/android/server/wm/AppTransition;->prepareThumbnailAnimation(Landroid/view/animation/Animation;III)Landroid/view/animation/Animation;

    move-result-object v9

    return-object v9
.end method

.method public dump(Ljava/io/PrintWriter;Ljava/lang/String;)V
    .locals 1
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "prefix"    # Ljava/lang/String;

    .line 2098
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 2099
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "mAppTransitionState="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/android/server/wm/AppTransition;->appStateToString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2100
    iget v0, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionType:I

    if-eqz v0, :cond_0

    .line 2101
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "mNextAppTransitionType="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2102
    invoke-direct {p0}, Lcom/android/server/wm/AppTransition;->transitTypeToString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2104
    :cond_0
    iget v0, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionType:I

    packed-switch v0, :pswitch_data_0

    goto/16 :goto_0

    .line 2114
    :pswitch_0
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "mNextAppTransitionPackage="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2115
    iget-object v0, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionPackage:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2116
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "mNextAppTransitionInPlace=0x"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2117
    iget v0, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionInPlace:I

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2118
    goto/16 :goto_0

    .line 2135
    :pswitch_1
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "mDefaultNextAppTransitionAnimationSpec="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2136
    iget-object v0, p0, Lcom/android/server/wm/AppTransition;->mDefaultNextAppTransitionAnimationSpec:Landroid/view/AppTransitionAnimationSpec;

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 2137
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "mNextAppTransitionAnimationsSpecs="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2138
    iget-object v0, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionAnimationsSpecs:Landroid/util/SparseArray;

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 2139
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "mNextAppTransitionScaleUp="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2140
    iget-boolean v0, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionScaleUp:Z

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Z)V

    goto :goto_0

    .line 2120
    :pswitch_2
    iget-object v0, p0, Lcom/android/server/wm/AppTransition;->mTmpRect:Landroid/graphics/Rect;

    invoke-direct {p0, v0}, Lcom/android/server/wm/AppTransition;->getDefaultNextAppTransitionStartRect(Landroid/graphics/Rect;)V

    .line 2121
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "mNextAppTransitionStartX="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2122
    iget-object v0, p0, Lcom/android/server/wm/AppTransition;->mTmpRect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 2123
    const-string v0, " mNextAppTransitionStartY="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2124
    iget-object v0, p0, Lcom/android/server/wm/AppTransition;->mTmpRect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->top:I

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(I)V

    .line 2125
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "mNextAppTransitionStartWidth="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2126
    iget-object v0, p0, Lcom/android/server/wm/AppTransition;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 2127
    const-string v0, " mNextAppTransitionStartHeight="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2128
    iget-object v0, p0, Lcom/android/server/wm/AppTransition;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(I)V

    .line 2129
    goto :goto_0

    .line 2106
    :pswitch_3
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "mNextAppTransitionPackage="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2107
    iget-object v0, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionPackage:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2108
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "mNextAppTransitionEnter=0x"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2109
    iget v0, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionEnter:I

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2110
    const-string v0, " mNextAppTransitionExit=0x"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2111
    iget v0, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionExit:I

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2112
    nop

    .line 2144
    :goto_0
    iget-object v0, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionCallback:Landroid/os/IRemoteCallback;

    if-eqz v0, :cond_1

    .line 2145
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "mNextAppTransitionCallback="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2146
    iget-object v0, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionCallback:Landroid/os/IRemoteCallback;

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 2148
    :cond_1
    iget v0, p0, Lcom/android/server/wm/AppTransition;->mLastUsedAppTransition:I

    if-eqz v0, :cond_2

    .line 2149
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "mLastUsedAppTransition="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2150
    iget v0, p0, Lcom/android/server/wm/AppTransition;->mLastUsedAppTransition:I

    invoke-static {v0}, Lcom/android/server/wm/AppTransition;->appTransitionToString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2151
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "mLastOpeningApp="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2152
    iget-object v0, p0, Lcom/android/server/wm/AppTransition;->mLastOpeningApp:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2153
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "mLastClosingApp="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2154
    iget-object v0, p0, Lcom/android/server/wm/AppTransition;->mLastClosingApp:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2156
    :cond_2
    return-void

    nop

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method freeze()V
    .locals 3

    .line 456
    iget v0, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransition:I

    .line 457
    .local v0, "transit":I
    const/4 v1, -0x1

    const/4 v2, 0x0

    invoke-direct {p0, v1, v2}, Lcom/android/server/wm/AppTransition;->setAppTransition(II)V

    .line 458
    invoke-virtual {p0}, Lcom/android/server/wm/AppTransition;->clear()V

    .line 459
    invoke-virtual {p0}, Lcom/android/server/wm/AppTransition;->setReady()V

    .line 460
    invoke-direct {p0, v0}, Lcom/android/server/wm/AppTransition;->notifyAppTransitionCancelledLocked(I)V

    .line 461
    return-void
.end method

.method getAppStackClipMode()I
    .locals 2

    .line 1776
    iget v0, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransition:I

    const/16 v1, 0x14

    if-eq v0, v1, :cond_3

    iget v0, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransition:I

    const/16 v1, 0x15

    if-ne v0, v1, :cond_0

    goto :goto_2

    .line 1782
    :cond_0
    iget v0, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransition:I

    const/16 v1, 0x12

    if-eq v0, v1, :cond_2

    iget v0, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransition:I

    const/16 v1, 0x13

    if-eq v0, v1, :cond_2

    iget v0, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionType:I

    const/16 v1, 0x8

    if-ne v0, v1, :cond_1

    goto :goto_0

    .line 1784
    :cond_1
    const/4 v0, 0x0

    goto :goto_1

    .line 1783
    :cond_2
    :goto_0
    const/4 v0, 0x2

    .line 1780
    :goto_1
    return v0

    .line 1778
    :cond_3
    :goto_2
    const/4 v0, 0x1

    return v0
.end method

.method getAppTransition()I
    .locals 1

    .line 313
    iget v0, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransition:I

    return v0
.end method

.method getAppTransitionThumbnailHeader(I)Landroid/graphics/GraphicBuffer;
    .locals 2
    .param p1, "taskId"    # I

    .line 362
    iget-object v0, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionAnimationsSpecs:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/AppTransitionAnimationSpec;

    .line 363
    .local v0, "spec":Landroid/view/AppTransitionAnimationSpec;
    if-nez v0, :cond_0

    .line 364
    iget-object v0, p0, Lcom/android/server/wm/AppTransition;->mDefaultNextAppTransitionAnimationSpec:Landroid/view/AppTransitionAnimationSpec;

    .line 366
    :cond_0
    if-eqz v0, :cond_1

    iget-object v1, v0, Landroid/view/AppTransitionAnimationSpec;->buffer:Landroid/graphics/GraphicBuffer;

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    return-object v1
.end method

.method getLastClipRevealMaxTranslation()I
    .locals 1

    .line 774
    iget v0, p0, Lcom/android/server/wm/AppTransition;->mLastClipRevealMaxTranslation:I

    return v0
.end method

.method getLastClipRevealTransitionDuration()J
    .locals 2

    .line 767
    iget-wide v0, p0, Lcom/android/server/wm/AppTransition;->mLastClipRevealTransitionDuration:J

    return-wide v0
.end method

.method getNextAppTransitionStartRect(ILandroid/graphics/Rect;)V
    .locals 4
    .param p1, "taskId"    # I
    .param p2, "rect"    # Landroid/graphics/Rect;

    .line 744
    iget-object v0, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionAnimationsSpecs:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/AppTransitionAnimationSpec;

    .line 745
    .local v0, "spec":Landroid/view/AppTransitionAnimationSpec;
    if-nez v0, :cond_0

    .line 746
    iget-object v0, p0, Lcom/android/server/wm/AppTransition;->mDefaultNextAppTransitionAnimationSpec:Landroid/view/AppTransitionAnimationSpec;

    .line 748
    :cond_0
    if-eqz v0, :cond_2

    iget-object v1, v0, Landroid/view/AppTransitionAnimationSpec;->rect:Landroid/graphics/Rect;

    if-nez v1, :cond_1

    goto :goto_0

    .line 753
    :cond_1
    iget-object v1, v0, Landroid/view/AppTransitionAnimationSpec;->rect:Landroid/graphics/Rect;

    invoke-virtual {p2, v1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    goto :goto_1

    .line 749
    :cond_2
    :goto_0
    const-string v1, "WindowManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Starting rect for task: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " requested, but not available"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/Throwable;

    invoke-direct {v3}, Ljava/lang/Throwable;-><init>()V

    invoke-static {v1, v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 751
    invoke-virtual {p2}, Landroid/graphics/Rect;->setEmpty()V

    .line 755
    :goto_1
    return-void
.end method

.method getRemoteAnimationController()Lcom/android/server/wm/RemoteAnimationController;
    .locals 1

    .line 1541
    iget-object v0, p0, Lcom/android/server/wm/AppTransition;->mRemoteAnimationController:Lcom/android/server/wm/RemoteAnimationController;

    return-object v0
.end method

.method getThumbnailTransitionState(Z)I
    .locals 1
    .param p1, "enter"    # Z

    .line 965
    if-eqz p1, :cond_1

    .line 966
    iget-boolean v0, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionScaleUp:Z

    if-eqz v0, :cond_0

    .line 967
    const/4 v0, 0x0

    return v0

    .line 969
    :cond_0
    const/4 v0, 0x2

    return v0

    .line 972
    :cond_1
    iget-boolean v0, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionScaleUp:Z

    if-eqz v0, :cond_2

    .line 973
    const/4 v0, 0x1

    return v0

    .line 975
    :cond_2
    const/4 v0, 0x3

    return v0
.end method

.method public getTransitFlags()I
    .locals 1

    .line 1788
    iget v0, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionFlags:I

    return v0
.end method

.method goodToGo(ILcom/android/server/wm/AppWindowToken;Lcom/android/server/wm/AppWindowToken;Landroid/util/ArraySet;Landroid/util/ArraySet;)I
    .locals 14
    .param p1, "transit"    # I
    .param p2, "topOpeningApp"    # Lcom/android/server/wm/AppWindowToken;
    .param p3, "topClosingApp"    # Lcom/android/server/wm/AppWindowToken;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/android/server/wm/AppWindowToken;",
            "Lcom/android/server/wm/AppWindowToken;",
            "Landroid/util/ArraySet<",
            "Lcom/android/server/wm/AppWindowToken;",
            ">;",
            "Landroid/util/ArraySet<",
            "Lcom/android/server/wm/AppWindowToken;",
            ">;)I"
        }
    .end annotation

    .local p4, "openingApps":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Lcom/android/server/wm/AppWindowToken;>;"
    .local p5, "closingApps":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Lcom/android/server/wm/AppWindowToken;>;"
    move-object v10, p0

    move-object/from16 v11, p2

    move-object/from16 v12, p3

    .line 422
    const/4 v0, -0x1

    iput v0, v10, Lcom/android/server/wm/AppTransition;->mNextAppTransition:I

    .line 423
    const/4 v0, 0x0

    iput v0, v10, Lcom/android/server/wm/AppTransition;->mNextAppTransitionFlags:I

    .line 424
    const/4 v0, 0x2

    invoke-direct {v10, v0}, Lcom/android/server/wm/AppTransition;->setAppTransitionState(I)V

    .line 425
    const/4 v0, 0x0

    if-eqz v11, :cond_0

    .line 426
    invoke-virtual/range {p2 .. p2}, Lcom/android/server/wm/AppWindowToken;->getAnimation()Lcom/android/server/wm/AnimationAdapter;

    move-result-object v1

    goto :goto_0

    .line 427
    :cond_0
    move-object v1, v0

    :goto_0
    move-object v13, v1

    .line 428
    .local v13, "topOpeningAnim":Lcom/android/server/wm/AnimationAdapter;
    nop

    .line 429
    if-eqz v11, :cond_1

    iget-object v1, v11, Lcom/android/server/wm/AppWindowToken;->token:Landroid/os/IBinder;

    .line 430
    move-object v2, v1

    goto :goto_1

    .line 429
    :cond_1
    nop

    .line 430
    move-object v2, v0

    :goto_1
    if-eqz v12, :cond_2

    iget-object v0, v12, Lcom/android/server/wm/AppWindowToken;->token:Landroid/os/IBinder;

    .line 431
    :goto_2
    move-object v3, v0

    goto :goto_3

    .line 430
    :cond_2
    goto :goto_2

    .line 431
    :goto_3
    if-eqz v13, :cond_3

    invoke-interface {v13}, Lcom/android/server/wm/AnimationAdapter;->getDurationHint()J

    move-result-wide v0

    .line 432
    :goto_4
    move-wide v4, v0

    goto :goto_5

    .line 431
    :cond_3
    const-wide/16 v0, 0x0

    goto :goto_4

    .line 432
    :goto_5
    if-eqz v13, :cond_4

    .line 433
    invoke-interface {v13}, Lcom/android/server/wm/AnimationAdapter;->getStatusBarTransitionsStartTime()J

    move-result-wide v0

    .line 434
    :goto_6
    move-wide v6, v0

    goto :goto_7

    :cond_4
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    goto :goto_6

    :goto_7
    const-wide/16 v8, 0x78

    .line 428
    move-object v0, v10

    move v1, p1

    invoke-direct/range {v0 .. v9}, Lcom/android/server/wm/AppTransition;->notifyAppTransitionStartingLocked(ILandroid/os/IBinder;Landroid/os/IBinder;JJJ)I

    move-result v0

    .line 436
    .local v0, "redoLayout":I
    iget-object v1, v10, Lcom/android/server/wm/AppTransition;->mService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v1}, Lcom/android/server/wm/WindowManagerService;->getDefaultDisplayContentLocked()Lcom/android/server/wm/DisplayContent;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/wm/DisplayContent;->getDockedDividerController()Lcom/android/server/wm/DockedStackDividerController;

    move-result-object v1

    .line 437
    move v2, p1

    move-object/from16 v3, p4

    invoke-virtual {v1, v3, v2}, Lcom/android/server/wm/DockedStackDividerController;->notifyAppTransitionStarting(Landroid/util/ArraySet;I)V

    .line 439
    iget-object v1, v10, Lcom/android/server/wm/AppTransition;->mRemoteAnimationController:Lcom/android/server/wm/RemoteAnimationController;

    if-eqz v1, :cond_5

    .line 440
    iget-object v1, v10, Lcom/android/server/wm/AppTransition;->mRemoteAnimationController:Lcom/android/server/wm/RemoteAnimationController;

    invoke-virtual {v1}, Lcom/android/server/wm/RemoteAnimationController;->goodToGo()V

    .line 442
    :cond_5
    return v0
.end method

.method hadClipRevealAnimation()Z
    .locals 1

    .line 781
    iget-boolean v0, p0, Lcom/android/server/wm/AppTransition;->mLastHadClipReveal:Z

    return v0
.end method

.method isFetchingAppTransitionsSpecs()Z
    .locals 1

    .line 400
    iget-boolean v0, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionAnimationsSpecsPending:Z

    return v0
.end method

.method isNextAppTransitionOpenCrossProfileApps()Z
    .locals 2

    .line 392
    iget v0, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionType:I

    const/16 v1, 0x9

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method isNextAppTransitionThumbnailDown()Z
    .locals 2

    .line 386
    iget v0, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionType:I

    const/4 v1, 0x4

    if-eq v0, v1, :cond_1

    iget v0, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionType:I

    const/4 v1, 0x6

    if-ne v0, v1, :cond_0

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

.method isNextAppTransitionThumbnailUp()Z
    .locals 2

    .line 381
    iget v0, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionType:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_1

    iget v0, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionType:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_0

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

.method isNextThumbnailTransitionAspectScaled()Z
    .locals 2

    .line 371
    iget v0, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionType:I

    const/4 v1, 0x5

    if-eq v0, v1, :cond_1

    iget v0, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionType:I

    const/4 v1, 0x6

    if-ne v0, v1, :cond_0

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

.method isNextThumbnailTransitionScaleUp()Z
    .locals 1

    .line 377
    iget-boolean v0, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionScaleUp:Z

    return v0
.end method

.method isReady()Z
    .locals 3

    .line 336
    iget v0, p0, Lcom/android/server/wm/AppTransition;->mAppTransitionState:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    iget v0, p0, Lcom/android/server/wm/AppTransition;->mAppTransitionState:I

    const/4 v2, 0x3

    if-ne v0, v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    nop

    :cond_1
    :goto_0
    return v1
.end method

.method isRunning()Z
    .locals 2

    .line 346
    iget v0, p0, Lcom/android/server/wm/AppTransition;->mAppTransitionState:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method isTimeout()Z
    .locals 2

    .line 354
    iget v0, p0, Lcom/android/server/wm/AppTransition;->mAppTransitionState:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method isTransitionEqual(I)Z
    .locals 1
    .param p1, "transit"    # I

    .line 309
    iget v0, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransition:I

    if-ne v0, p1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method isTransitionSet()Z
    .locals 2

    .line 305
    iget v0, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransition:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method loadAnimation(Landroid/view/WindowManager$LayoutParams;IZIILandroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;ZZI)Landroid/view/animation/Animation;
    .locals 21
    .param p1, "lp"    # Landroid/view/WindowManager$LayoutParams;
    .param p2, "transit"    # I
    .param p3, "enter"    # Z
    .param p4, "uiMode"    # I
    .param p5, "orientation"    # I
    .param p6, "frame"    # Landroid/graphics/Rect;
    .param p7, "displayFrame"    # Landroid/graphics/Rect;
    .param p8, "insets"    # Landroid/graphics/Rect;
    .param p9, "surfaceInsets"    # Landroid/graphics/Rect;
    .param p10, "stableInsets"    # Landroid/graphics/Rect;
    .param p11, "isVoiceInteraction"    # Z
    .param p12, "freeform"    # Z
    .param p13, "taskId"    # I

    move-object/from16 v11, p0

    move-object/from16 v12, p1

    move/from16 v13, p2

    move/from16 v14, p3

    move-object/from16 v15, p6

    .line 1570
    invoke-static/range {p2 .. p2}, Lcom/android/server/wm/AppTransition;->isKeyguardGoingAwayTransit(I)Z

    move-result v0

    if-eqz v0, :cond_0

    if-eqz v14, :cond_0

    .line 1571
    invoke-direct {v11, v13}, Lcom/android/server/wm/AppTransition;->loadKeyguardExitAnimation(I)Landroid/view/animation/Animation;

    move-result-object v0

    .line 1760
    .local v0, "a":Landroid/view/animation/Animation;
    :goto_0
    move/from16 v1, p13

    goto/16 :goto_17

    .line 1572
    .end local v0    # "a":Landroid/view/animation/Animation;
    :cond_0
    const/16 v0, 0x16

    if-ne v13, v0, :cond_1

    .line 1573
    const/4 v0, 0x0

    goto :goto_0

    .line 1574
    :cond_1
    const/16 v1, 0x17

    if-ne v13, v1, :cond_2

    if-nez v14, :cond_2

    .line 1575
    const v0, 0x10a00b5

    invoke-virtual {v11, v12, v0}, Lcom/android/server/wm/AppTransition;->loadAnimationRes(Landroid/view/WindowManager$LayoutParams;I)Landroid/view/animation/Animation;

    move-result-object v0

    goto :goto_0

    .line 1576
    :cond_2
    const/16 v2, 0x1a

    if-ne v13, v2, :cond_3

    .line 1577
    const/4 v0, 0x0

    goto :goto_0

    .line 1578
    :cond_3
    const/16 v2, 0xa

    const/16 v3, 0x8

    const/4 v4, 0x6

    const/4 v10, 0x3

    if-eqz p11, :cond_7

    if-eq v13, v4, :cond_4

    if-eq v13, v3, :cond_4

    if-ne v13, v2, :cond_7

    .line 1581
    :cond_4
    if-eqz v14, :cond_5

    .line 1582
    const v0, 0x10a00a8

    goto :goto_1

    .line 1583
    :cond_5
    const v0, 0x10a00a9

    .line 1581
    :goto_1
    invoke-virtual {v11, v12, v0}, Lcom/android/server/wm/AppTransition;->loadAnimationRes(Landroid/view/WindowManager$LayoutParams;I)Landroid/view/animation/Animation;

    move-result-object v0

    .line 1584
    .restart local v0    # "a":Landroid/view/animation/Animation;
    sget-boolean v1, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_APP_TRANSITIONS:Z

    if-nez v1, :cond_6

    goto :goto_0

    :cond_6
    const-string v1, "WindowManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "applyAnimation voice: anim="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " transit="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1586
    invoke-static/range {p2 .. p2}, Lcom/android/server/wm/AppTransition;->appTransitionToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " isEntrance="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, " Callers="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1587
    invoke-static {v10}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1584
    invoke-static {v1, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1588
    .end local v0    # "a":Landroid/view/animation/Animation;
    :cond_7
    const/16 v5, 0xb

    const/16 v6, 0x9

    const/4 v7, 0x7

    if-eqz p11, :cond_b

    if-eq v13, v7, :cond_8

    if-eq v13, v6, :cond_8

    if-ne v13, v5, :cond_b

    .line 1591
    :cond_8
    if-eqz v14, :cond_9

    .line 1592
    const v0, 0x10a00a6

    goto :goto_2

    .line 1593
    :cond_9
    const v0, 0x10a00a7

    .line 1591
    :goto_2
    invoke-virtual {v11, v12, v0}, Lcom/android/server/wm/AppTransition;->loadAnimationRes(Landroid/view/WindowManager$LayoutParams;I)Landroid/view/animation/Animation;

    move-result-object v0

    .line 1594
    .restart local v0    # "a":Landroid/view/animation/Animation;
    sget-boolean v1, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_APP_TRANSITIONS:Z

    if-nez v1, :cond_a

    goto/16 :goto_0

    :cond_a
    const-string v1, "WindowManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "applyAnimation voice: anim="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " transit="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1596
    invoke-static/range {p2 .. p2}, Lcom/android/server/wm/AppTransition;->appTransitionToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " isEntrance="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, " Callers="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1597
    invoke-static {v10}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1594
    invoke-static {v1, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 1598
    .end local v0    # "a":Landroid/view/animation/Animation;
    :cond_b
    const/16 v8, 0x12

    if-ne v13, v8, :cond_d

    .line 1599
    move-object/from16 v9, p8

    invoke-direct {v11, v15, v9}, Lcom/android/server/wm/AppTransition;->createRelaunchAnimation(Landroid/graphics/Rect;Landroid/graphics/Rect;)Landroid/view/animation/Animation;

    move-result-object v0

    .line 1600
    .restart local v0    # "a":Landroid/view/animation/Animation;
    sget-boolean v1, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_APP_TRANSITIONS:Z

    if-nez v1, :cond_c

    goto/16 :goto_0

    :cond_c
    const-string v1, "WindowManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "applyAnimation: anim="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " nextAppTransition="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v11, Lcom/android/server/wm/AppTransition;->mNextAppTransition:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " transit="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1603
    invoke-static/range {p2 .. p2}, Lcom/android/server/wm/AppTransition;->appTransitionToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " Callers="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1604
    invoke-static {v10}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1600
    invoke-static {v1, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 1605
    .end local v0    # "a":Landroid/view/animation/Animation;
    :cond_d
    move-object/from16 v9, p8

    iget v0, v11, Lcom/android/server/wm/AppTransition;->mNextAppTransitionType:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_10

    .line 1606
    iget-object v0, v11, Lcom/android/server/wm/AppTransition;->mNextAppTransitionPackage:Ljava/lang/String;

    if-eqz v14, :cond_e

    .line 1607
    iget v1, v11, Lcom/android/server/wm/AppTransition;->mNextAppTransitionEnter:I

    goto :goto_3

    :cond_e
    iget v1, v11, Lcom/android/server/wm/AppTransition;->mNextAppTransitionExit:I

    .line 1606
    :goto_3
    invoke-direct {v11, v0, v1}, Lcom/android/server/wm/AppTransition;->loadAnimationRes(Ljava/lang/String;I)Landroid/view/animation/Animation;

    move-result-object v0

    .line 1608
    .restart local v0    # "a":Landroid/view/animation/Animation;
    sget-boolean v1, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_APP_TRANSITIONS:Z

    if-nez v1, :cond_f

    goto/16 :goto_0

    :cond_f
    const-string v1, "WindowManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "applyAnimation: anim="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " nextAppTransition=ANIM_CUSTOM transit="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1611
    invoke-static/range {p2 .. p2}, Lcom/android/server/wm/AppTransition;->appTransitionToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " isEntrance="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, " Callers="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1612
    invoke-static {v10}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1608
    invoke-static {v1, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 1613
    .end local v0    # "a":Landroid/view/animation/Animation;
    :cond_10
    iget v0, v11, Lcom/android/server/wm/AppTransition;->mNextAppTransitionType:I

    if-ne v0, v7, :cond_12

    .line 1614
    iget-object v0, v11, Lcom/android/server/wm/AppTransition;->mNextAppTransitionPackage:Ljava/lang/String;

    iget v1, v11, Lcom/android/server/wm/AppTransition;->mNextAppTransitionInPlace:I

    invoke-direct {v11, v0, v1}, Lcom/android/server/wm/AppTransition;->loadAnimationRes(Ljava/lang/String;I)Landroid/view/animation/Animation;

    move-result-object v0

    .line 1615
    .restart local v0    # "a":Landroid/view/animation/Animation;
    sget-boolean v1, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_APP_TRANSITIONS:Z

    if-nez v1, :cond_11

    goto/16 :goto_0

    :cond_11
    const-string v1, "WindowManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "applyAnimation: anim="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " nextAppTransition=ANIM_CUSTOM_IN_PLACE transit="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1618
    invoke-static/range {p2 .. p2}, Lcom/android/server/wm/AppTransition;->appTransitionToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " Callers="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1619
    invoke-static {v10}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1615
    invoke-static {v1, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 1620
    .end local v0    # "a":Landroid/view/animation/Animation;
    :cond_12
    iget v0, v11, Lcom/android/server/wm/AppTransition;->mNextAppTransitionType:I

    if-ne v0, v3, :cond_14

    .line 1621
    move-object/from16 v0, p7

    invoke-direct {v11, v13, v14, v15, v0}, Lcom/android/server/wm/AppTransition;->createClipRevealAnimationLocked(IZLandroid/graphics/Rect;Landroid/graphics/Rect;)Landroid/view/animation/Animation;

    move-result-object v1

    .line 1622
    .local v1, "a":Landroid/view/animation/Animation;
    sget-boolean v2, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_APP_TRANSITIONS:Z

    if-nez v2, :cond_13

    goto :goto_4

    :cond_13
    const-string v2, "WindowManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "applyAnimation: anim="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, " nextAppTransition=ANIM_CLIP_REVEAL transit="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1625
    invoke-static/range {p2 .. p2}, Lcom/android/server/wm/AppTransition;->appTransitionToString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " Callers="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1626
    invoke-static {v10}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1622
    invoke-static {v2, v3}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1760
    .end local v1    # "a":Landroid/view/animation/Animation;
    .restart local v0    # "a":Landroid/view/animation/Animation;
    :goto_4
    move-object v0, v1

    goto/16 :goto_0

    .line 1627
    .end local v0    # "a":Landroid/view/animation/Animation;
    :cond_14
    move-object/from16 v0, p7

    iget v1, v11, Lcom/android/server/wm/AppTransition;->mNextAppTransitionType:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_16

    .line 1632
    invoke-direct {v11, v13, v14, v15}, Lcom/android/server/wm/AppTransition;->nubiaCreateScaleUpAnimationLocked(IZLandroid/graphics/Rect;)Landroid/view/animation/Animation;

    move-result-object v1

    .line 1634
    .restart local v1    # "a":Landroid/view/animation/Animation;
    sget-boolean v2, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_APP_TRANSITIONS:Z

    if-nez v2, :cond_15

    goto :goto_4

    :cond_15
    const-string v2, "WindowManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "applyAnimation: anim="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, " nextAppTransition=ANIM_SCALE_UP transit="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1637
    invoke-static/range {p2 .. p2}, Lcom/android/server/wm/AppTransition;->appTransitionToString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " isEntrance="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, " Callers="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1638
    invoke-static {v10}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1634
    invoke-static {v2, v3}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    .line 1639
    .end local v1    # "a":Landroid/view/animation/Animation;
    :cond_16
    iget v1, v11, Lcom/android/server/wm/AppTransition;->mNextAppTransitionType:I

    if-eq v1, v10, :cond_2d

    iget v1, v11, Lcom/android/server/wm/AppTransition;->mNextAppTransitionType:I

    const/4 v2, 0x4

    if-ne v1, v2, :cond_17

    goto/16 :goto_14

    .line 1653
    :cond_17
    iget v1, v11, Lcom/android/server/wm/AppTransition;->mNextAppTransitionType:I

    const/4 v2, 0x5

    if-eq v1, v2, :cond_29

    iget v1, v11, Lcom/android/server/wm/AppTransition;->mNextAppTransitionType:I

    if-ne v1, v4, :cond_18

    goto/16 :goto_11

    .line 1676
    :cond_18
    iget v1, v11, Lcom/android/server/wm/AppTransition;->mNextAppTransitionType:I

    if-ne v1, v6, :cond_19

    if-eqz v14, :cond_19

    .line 1677
    const-string v1, "android"

    const v2, 0x10a009e

    invoke-direct {v11, v1, v2}, Lcom/android/server/wm/AppTransition;->loadAnimationRes(Ljava/lang/String;I)Landroid/view/animation/Animation;

    move-result-object v1

    .line 1679
    .restart local v1    # "a":Landroid/view/animation/Animation;
    const-string v2, "WindowManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "applyAnimation NEXT_TRANSIT_TYPE_OPEN_CROSS_PROFILE_APPS: anim="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, " transit="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1681
    invoke-static/range {p2 .. p2}, Lcom/android/server/wm/AppTransition;->appTransitionToString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " isEntrance=true Callers="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1682
    invoke-static {v10}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1679
    invoke-static {v2, v3}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_4

    .line 1684
    .end local v1    # "a":Landroid/view/animation/Animation;
    :cond_19
    const/4 v1, 0x0

    .line 1686
    .local v1, "animAttr":I
    const/16 v3, 0xd

    if-ne v13, v3, :cond_1a

    .line 1687
    invoke-direct {v11, v13, v14}, Lcom/android/server/wm/AppTransition;->nubiaCreateBackToHomeAnimationLocked(IZ)Landroid/view/animation/Animation;

    move-result-object v17

    .line 1688
    .local v17, "a":Landroid/view/animation/Animation;
    if-eqz v17, :cond_1a

    .line 1689
    return-object v17

    .line 1693
    .end local v17    # "a":Landroid/view/animation/Animation;
    :cond_1a
    const/16 v3, 0x13

    if-eq v13, v3, :cond_25

    packed-switch v13, :pswitch_data_0

    packed-switch v13, :pswitch_data_1

    goto/16 :goto_e

    .line 1748
    :pswitch_0
    if-eqz v14, :cond_1b

    .line 1749
    const/16 v2, 0x19

    goto :goto_5

    .line 1750
    :cond_1b
    const/16 v2, 0x18

    :goto_5
    move v1, v2

    goto/16 :goto_e

    .line 1743
    :pswitch_1
    if-eqz v14, :cond_1c

    .line 1744
    nop

    .line 1745
    const/16 v16, 0x16

    goto :goto_6

    :cond_1c
    const/16 v16, 0x17

    :goto_6
    move/from16 v1, v16

    .line 1746
    goto/16 :goto_e

    .line 1738
    :pswitch_2
    if-eqz v14, :cond_1d

    .line 1739
    const/16 v2, 0x14

    goto :goto_7

    .line 1740
    :cond_1d
    const/16 v2, 0x15

    :goto_7
    move v1, v2

    .line 1741
    goto/16 :goto_e

    .line 1728
    :pswitch_3
    if-eqz v14, :cond_1e

    .line 1729
    const/16 v2, 0x10

    goto :goto_8

    .line 1730
    :cond_1e
    const/16 v2, 0x11

    :goto_8
    move v1, v2

    .line 1731
    goto :goto_e

    .line 1733
    :pswitch_4
    if-eqz v14, :cond_1f

    .line 1734
    nop

    .line 1735
    move v3, v8

    nop

    :cond_1f
    move v1, v3

    .line 1736
    goto :goto_e

    .line 1723
    :pswitch_5
    if-eqz v14, :cond_20

    .line 1724
    const/16 v2, 0xe

    goto :goto_9

    .line 1725
    :cond_20
    const/16 v2, 0xf

    :goto_9
    move v1, v2

    .line 1726
    goto :goto_e

    .line 1718
    :pswitch_6
    if-eqz v14, :cond_21

    .line 1719
    const/16 v3, 0xc

    goto :goto_a

    .line 1720
    :cond_21
    const/16 v3, 0xd

    :goto_a
    move v1, v3

    .line 1721
    goto :goto_e

    .line 1713
    :pswitch_7
    if-eqz v14, :cond_22

    .line 1714
    nop

    .line 1715
    const/16 v18, 0xa

    goto :goto_b

    :cond_22
    move/from16 v18, v5

    :goto_b
    move/from16 v1, v18

    .line 1716
    goto :goto_e

    .line 1702
    :pswitch_8
    if-eqz v14, :cond_23

    .line 1703
    goto :goto_c

    .line 1704
    :cond_23
    move v4, v7

    :goto_c
    move v1, v4

    .line 1705
    goto :goto_e

    .line 1696
    :pswitch_9
    if-eqz v14, :cond_24

    .line 1697
    nop

    .line 1698
    const/4 v2, 0x4

    nop

    :cond_24
    move v1, v2

    .line 1699
    goto :goto_e

    .line 1708
    :cond_25
    :pswitch_a
    if-eqz v14, :cond_26

    .line 1709
    nop

    .line 1710
    const/16 v19, 0x8

    goto :goto_d

    :cond_26
    move/from16 v19, v6

    :goto_d
    move/from16 v1, v19

    .line 1711
    nop

    .line 1752
    :goto_e
    if-eqz v1, :cond_27

    invoke-virtual {v11, v12, v1, v13}, Lcom/android/server/wm/AppTransition;->loadAnimationAttr(Landroid/view/WindowManager$LayoutParams;II)Landroid/view/animation/Animation;

    move-result-object v2

    goto :goto_f

    :cond_27
    const/4 v2, 0x0

    .line 1753
    .local v2, "a":Landroid/view/animation/Animation;
    :goto_f
    sget-boolean v3, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_APP_TRANSITIONS:Z

    if-nez v3, :cond_28

    .end local v1    # "animAttr":I
    goto :goto_10

    .restart local v1    # "animAttr":I
    :cond_28
    const-string v3, "WindowManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "applyAnimation: anim="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, " animAttr=0x"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1756
    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " transit="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1757
    invoke-static/range {p2 .. p2}, Lcom/android/server/wm/AppTransition;->appTransitionToString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " isEntrance="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v14}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v5, " Callers="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1758
    invoke-static {v10}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 1753
    invoke-static {v3, v4}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1760
    .end local v1    # "animAttr":I
    :goto_10
    move/from16 v1, p13

    move-object v0, v2

    goto/16 :goto_17

    .line 1655
    .end local v2    # "a":Landroid/view/animation/Animation;
    :cond_29
    :goto_11
    iget v1, v11, Lcom/android/server/wm/AppTransition;->mNextAppTransitionType:I

    if-ne v1, v2, :cond_2a

    const/4 v1, 0x1

    goto :goto_12

    :cond_2a
    const/4 v1, 0x0

    :goto_12
    iput-boolean v1, v11, Lcom/android/server/wm/AppTransition;->mNextAppTransitionScaleUp:Z

    .line 1664
    nop

    .line 1665
    invoke-virtual {v11, v14}, Lcom/android/server/wm/AppTransition;->getThumbnailTransitionState(Z)I

    move-result v1

    .line 1664
    move-object v0, v11

    move/from16 v2, p4

    move/from16 v3, p5

    move v4, v13

    move-object v5, v15

    move-object v6, v9

    move-object/from16 v7, p9

    move-object/from16 v8, p10

    move/from16 v9, p12

    move v12, v10

    move/from16 v10, p13

    invoke-virtual/range {v0 .. v10}, Lcom/android/server/wm/AppTransition;->nubiaCreateAspectScaledThumbnailEnterExitAnimationLocked(IIIILandroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;ZI)Landroid/view/animation/Animation;

    move-result-object v0

    .line 1668
    .restart local v0    # "a":Landroid/view/animation/Animation;
    sget-boolean v1, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_APP_TRANSITIONS:Z

    if-nez v1, :cond_2b

    goto/16 :goto_0

    .line 1669
    :cond_2b
    iget-boolean v1, v11, Lcom/android/server/wm/AppTransition;->mNextAppTransitionScaleUp:Z

    if-eqz v1, :cond_2c

    .line 1670
    const-string v1, "ANIM_THUMBNAIL_ASPECT_SCALE_UP"

    goto :goto_13

    :cond_2c
    const-string v1, "ANIM_THUMBNAIL_ASPECT_SCALE_DOWN"

    .line 1671
    .local v1, "animName":Ljava/lang/String;
    :goto_13
    const-string v2, "WindowManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "applyAnimation: anim="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, " nextAppTransition="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " transit="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1673
    invoke-static/range {p2 .. p2}, Lcom/android/server/wm/AppTransition;->appTransitionToString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " isEntrance="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, " Callers="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1674
    invoke-static {v12}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1671
    invoke-static {v2, v3}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1675
    .end local v1    # "animName":Ljava/lang/String;
    goto/16 :goto_0

    .line 1641
    .end local v0    # "a":Landroid/view/animation/Animation;
    :cond_2d
    :goto_14
    move v12, v10

    iget v0, v11, Lcom/android/server/wm/AppTransition;->mNextAppTransitionType:I

    if-ne v0, v12, :cond_2e

    const/4 v1, 0x1

    goto :goto_15

    :cond_2e
    const/4 v1, 0x0

    :goto_15
    iput-boolean v1, v11, Lcom/android/server/wm/AppTransition;->mNextAppTransitionScaleUp:Z

    .line 1643
    invoke-virtual {v11, v14}, Lcom/android/server/wm/AppTransition;->getThumbnailTransitionState(Z)I

    move-result v0

    move/from16 v1, p13

    invoke-virtual {v11, v0, v15, v13, v1}, Lcom/android/server/wm/AppTransition;->createThumbnailEnterExitAnimationLocked(ILandroid/graphics/Rect;II)Landroid/view/animation/Animation;

    move-result-object v0

    .line 1645
    .restart local v0    # "a":Landroid/view/animation/Animation;
    sget-boolean v2, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_APP_TRANSITIONS:Z

    if-nez v2, :cond_2f

    goto :goto_17

    .line 1646
    :cond_2f
    iget-boolean v2, v11, Lcom/android/server/wm/AppTransition;->mNextAppTransitionScaleUp:Z

    if-eqz v2, :cond_30

    .line 1647
    const-string v2, "ANIM_THUMBNAIL_SCALE_UP"

    goto :goto_16

    :cond_30
    const-string v2, "ANIM_THUMBNAIL_SCALE_DOWN"

    .line 1648
    .local v2, "animName":Ljava/lang/String;
    :goto_16
    const-string v3, "WindowManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "applyAnimation: anim="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, " nextAppTransition="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " transit="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1650
    invoke-static/range {p2 .. p2}, Lcom/android/server/wm/AppTransition;->appTransitionToString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " isEntrance="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v14}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v5, " Callers="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1651
    invoke-static {v12}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 1648
    invoke-static {v3, v4}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1652
    .end local v2    # "animName":Ljava/lang/String;
    nop

    .line 1760
    :goto_17
    return-object v0

    :pswitch_data_0
    .packed-switch 0x6
        :pswitch_9
        :pswitch_8
        :pswitch_a
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x18
        :pswitch_9
        :pswitch_8
    .end packed-switch
.end method

.method loadAnimationAttr(Landroid/view/WindowManager$LayoutParams;II)Landroid/view/animation/Animation;
    .locals 5
    .param p1, "lp"    # Landroid/view/WindowManager$LayoutParams;
    .param p2, "animAttr"    # I
    .param p3, "transit"    # I

    .line 555
    const/4 v0, 0x0

    .line 556
    .local v0, "resId":I
    iget-object v1, p0, Lcom/android/server/wm/AppTransition;->mContext:Landroid/content/Context;

    .line 557
    .local v1, "context":Landroid/content/Context;
    if-ltz p2, :cond_0

    .line 558
    invoke-direct {p0, p1}, Lcom/android/server/wm/AppTransition;->getCachedAnimations(Landroid/view/WindowManager$LayoutParams;)Lcom/android/server/AttributeCache$Entry;

    move-result-object v2

    .line 559
    .local v2, "ent":Lcom/android/server/AttributeCache$Entry;
    if-eqz v2, :cond_0

    .line 560
    iget-object v1, v2, Lcom/android/server/AttributeCache$Entry;->context:Landroid/content/Context;

    .line 561
    iget-object v3, v2, Lcom/android/server/AttributeCache$Entry;->array:Landroid/content/res/TypedArray;

    const/4 v4, 0x0

    invoke-virtual {v3, p2, v4}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v0

    .line 564
    .end local v2    # "ent":Lcom/android/server/AttributeCache$Entry;
    :cond_0
    invoke-direct {p0, v0, p3}, Lcom/android/server/wm/AppTransition;->updateToTranslucentAnimIfNeeded(II)I

    move-result v0

    .line 565
    invoke-static {v0}, Landroid/content/res/ResourceId;->isValid(I)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 566
    invoke-static {v1, v0}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v2

    return-object v2

    .line 568
    :cond_1
    const/4 v2, 0x0

    return-object v2
.end method

.method loadAnimationRes(Landroid/view/WindowManager$LayoutParams;I)Landroid/view/animation/Animation;
    .locals 3
    .param p1, "lp"    # Landroid/view/WindowManager$LayoutParams;
    .param p2, "resId"    # I

    .line 572
    iget-object v0, p0, Lcom/android/server/wm/AppTransition;->mContext:Landroid/content/Context;

    .line 573
    .local v0, "context":Landroid/content/Context;
    invoke-static {p2}, Landroid/content/res/ResourceId;->isValid(I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 574
    invoke-direct {p0, p1}, Lcom/android/server/wm/AppTransition;->getCachedAnimations(Landroid/view/WindowManager$LayoutParams;)Lcom/android/server/AttributeCache$Entry;

    move-result-object v1

    .line 575
    .local v1, "ent":Lcom/android/server/AttributeCache$Entry;
    if-eqz v1, :cond_0

    .line 576
    iget-object v0, v1, Lcom/android/server/AttributeCache$Entry;->context:Landroid/content/Context;

    .line 578
    :cond_0
    invoke-static {v0, p2}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v2

    return-object v2

    .line 580
    .end local v1    # "ent":Lcom/android/server/AttributeCache$Entry;
    :cond_1
    const/4 v1, 0x0

    return-object v1
.end method

.method public notifyAppTransitionFinishedLocked(Landroid/os/IBinder;)V
    .locals 2
    .param p1, "token"    # Landroid/os/IBinder;

    .line 490
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/android/server/wm/AppTransition;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 491
    iget-object v1, p0, Lcom/android/server/wm/AppTransition;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/WindowManagerInternal$AppTransitionListener;

    invoke-virtual {v1, p1}, Lcom/android/server/wm/WindowManagerInternal$AppTransitionListener;->onAppTransitionFinishedLocked(Landroid/os/IBinder;)V

    .line 490
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 493
    .end local v0    # "i":I
    :cond_0
    return-void
.end method

.method public nubiaAppSwipeAnimation(IZLandroid/graphics/Rect;Z)Landroid/view/animation/Animation;
    .locals 21
    .param p1, "transit"    # I
    .param p2, "enter"    # Z
    .param p3, "containingFrame"    # Landroid/graphics/Rect;
    .param p4, "isLeft"    # Z

    move-object/from16 v0, p3

    .line 2443
    const/4 v1, 0x0

    .line 2444
    .local v1, "nubiaAnimation":Landroid/view/animation/Animation;
    invoke-virtual/range {p3 .. p3}, Landroid/graphics/Rect;->width()I

    move-result v2

    .line 2445
    .local v2, "appWidth":I
    invoke-virtual/range {p3 .. p3}, Landroid/graphics/Rect;->height()I

    move-result v3

    .line 2447
    .local v3, "appHeight":I
    iget v4, v0, Landroid/graphics/Rect;->left:I

    invoke-virtual/range {p3 .. p3}, Landroid/graphics/Rect;->width()I

    move-result v5

    div-int/lit8 v5, v5, 0x2

    add-int/2addr v4, v5

    .line 2448
    .local v4, "centerX":I
    iget v5, v0, Landroid/graphics/Rect;->top:I

    invoke-virtual/range {p3 .. p3}, Landroid/graphics/Rect;->height()I

    move-result v6

    div-int/lit8 v6, v6, 0x2

    add-int/2addr v5, v6

    .line 2450
    .local v5, "centerY":I
    const/high16 v8, 0x3f800000    # 1.0f

    const/4 v9, 0x0

    const-wide/16 v10, 0x190

    if-eqz p2, :cond_1

    .line 2451
    new-instance v19, Landroid/view/animation/ScaleAnimation;

    const v13, 0x3f19999a    # 0.6f

    const/high16 v14, 0x3f800000    # 1.0f

    const v15, 0x3f19999a    # 0.6f

    const/high16 v16, 0x3f800000    # 1.0f

    int-to-float v12, v4

    int-to-float v6, v5

    move/from16 v17, v12

    move-object/from16 v12, v19

    move/from16 v18, v6

    invoke-direct/range {v12 .. v18}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFFF)V

    move-object/from16 v6, v19

    .line 2452
    .local v6, "scale":Landroid/view/animation/Animation;
    invoke-virtual {v6, v10, v11}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 2453
    new-instance v12, Landroid/view/animation/AlphaAnimation;

    invoke-direct {v12, v9, v8}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    move-object v8, v12

    .line 2454
    .local v8, "alpha":Landroid/view/animation/Animation;
    invoke-virtual {v8, v10, v11}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 2456
    const/4 v12, 0x0

    .line 2457
    .local v12, "startValue":F
    const/4 v13, 0x0

    .line 2458
    .local v13, "endValue":F
    if-eqz p4, :cond_0

    .line 2459
    invoke-virtual/range {p3 .. p3}, Landroid/graphics/Rect;->width()I

    move-result v7

    int-to-float v7, v7

    .line 2460
    .end local v12    # "startValue":F
    .local v7, "startValue":F
    const/4 v12, 0x0

    .end local v13    # "endValue":F
    .local v12, "endValue":F
    :goto_0
    goto :goto_1

    .line 2462
    .end local v7    # "startValue":F
    .local v12, "startValue":F
    .restart local v13    # "endValue":F
    :cond_0
    invoke-virtual/range {p3 .. p3}, Landroid/graphics/Rect;->width()I

    move-result v7

    neg-int v7, v7

    int-to-float v7, v7

    .line 2463
    .end local v12    # "startValue":F
    .restart local v7    # "startValue":F
    const/4 v12, 0x0

    goto :goto_0

    .line 2465
    .end local v13    # "endValue":F
    .local v12, "endValue":F
    :goto_1
    new-instance v13, Landroid/view/animation/TranslateAnimation;

    invoke-direct {v13, v7, v12, v9, v9}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    move-object v9, v13

    .line 2466
    .local v9, "translateAnimation":Landroid/view/animation/TranslateAnimation;
    invoke-virtual {v9, v10, v11}, Landroid/view/animation/TranslateAnimation;->setDuration(J)V

    .line 2468
    new-instance v10, Landroid/view/animation/AnimationSet;

    const/4 v11, 0x0

    invoke-direct {v10, v11}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    .line 2469
    .local v10, "set":Landroid/view/animation/AnimationSet;
    invoke-virtual {v10, v6}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 2470
    invoke-virtual {v10, v9}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 2471
    invoke-virtual {v10, v8}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 2472
    move-object v1, v10

    .line 2473
    .end local v6    # "scale":Landroid/view/animation/Animation;
    .end local v7    # "startValue":F
    .end local v8    # "alpha":Landroid/view/animation/Animation;
    .end local v9    # "translateAnimation":Landroid/view/animation/TranslateAnimation;
    .end local v10    # "set":Landroid/view/animation/AnimationSet;
    .end local v12    # "endValue":F
    nop

    .line 2498
    const/4 v10, 0x1

    goto :goto_3

    .line 2474
    :cond_1
    new-instance v6, Landroid/view/animation/ScaleAnimation;

    const/high16 v13, 0x3f800000    # 1.0f

    const v14, 0x3f19999a    # 0.6f

    const/high16 v15, 0x3f800000    # 1.0f

    const v16, 0x3f19999a    # 0.6f

    int-to-float v7, v4

    int-to-float v12, v5

    move/from16 v18, v12

    move-object v12, v6

    move/from16 v17, v7

    invoke-direct/range {v12 .. v18}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFFF)V

    .line 2475
    .restart local v6    # "scale":Landroid/view/animation/Animation;
    invoke-virtual {v6, v10, v11}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 2477
    const/4 v7, 0x0

    .line 2478
    .restart local v7    # "startValue":F
    const/4 v12, 0x0

    .line 2479
    .restart local v12    # "endValue":F
    if-eqz p4, :cond_2

    .line 2480
    const/4 v7, 0x0

    .line 2481
    invoke-virtual/range {p3 .. p3}, Landroid/graphics/Rect;->width()I

    move-result v13

    neg-int v13, v13

    int-to-float v12, v13

    goto :goto_2

    .line 2483
    :cond_2
    const/4 v7, 0x0

    .line 2484
    invoke-virtual/range {p3 .. p3}, Landroid/graphics/Rect;->width()I

    move-result v13

    int-to-float v12, v13

    .line 2486
    :goto_2
    new-instance v13, Landroid/view/animation/TranslateAnimation;

    invoke-direct {v13, v7, v12, v9, v9}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    .line 2487
    .local v13, "translateAnimation":Landroid/view/animation/TranslateAnimation;
    invoke-virtual {v13, v10, v11}, Landroid/view/animation/TranslateAnimation;->setDuration(J)V

    .line 2488
    new-instance v10, Landroid/view/animation/AlphaAnimation;

    invoke-direct {v10, v8, v9}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    move-object v8, v10

    .line 2489
    .restart local v8    # "alpha":Landroid/view/animation/Animation;
    const-wide/16 v9, 0x190

    invoke-virtual {v8, v9, v10}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 2491
    new-instance v9, Landroid/view/animation/AnimationSet;

    const/4 v10, 0x0

    invoke-direct {v9, v10}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    .line 2492
    .local v9, "set2":Landroid/view/animation/AnimationSet;
    const/4 v10, 0x1

    invoke-virtual {v9, v10}, Landroid/view/animation/AnimationSet;->setZAdjustment(I)V

    .line 2493
    invoke-virtual {v9, v6}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 2494
    invoke-virtual {v9, v13}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 2495
    invoke-virtual {v9, v8}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 2496
    move-object v1, v9

    .line 2498
    .end local v6    # "scale":Landroid/view/animation/Animation;
    .end local v7    # "startValue":F
    .end local v8    # "alpha":Landroid/view/animation/Animation;
    .end local v9    # "set2":Landroid/view/animation/AnimationSet;
    .end local v12    # "endValue":F
    .end local v13    # "translateAnimation":Landroid/view/animation/TranslateAnimation;
    :goto_3
    invoke-virtual {v1, v10}, Landroid/view/animation/Animation;->setFillAfter(Z)V

    .line 2499
    return-object v1
.end method

.method nubiaCreateAspectScaledThumbnailEnterExitAnimationLocked(IIIILandroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;ZI)Landroid/view/animation/Animation;
    .locals 34
    .param p1, "thumbTransitState"    # I
    .param p2, "uiMode"    # I
    .param p3, "orientation"    # I
    .param p4, "transit"    # I
    .param p5, "containingFrame"    # Landroid/graphics/Rect;
    .param p6, "contentInsets"    # Landroid/graphics/Rect;
    .param p7, "surfaceInsets"    # Landroid/graphics/Rect;
    .param p8, "stableInsets"    # Landroid/graphics/Rect;
    .param p9, "freeform"    # Z
    .param p10, "taskId"    # I

    move-object/from16 v7, p0

    move/from16 v9, p4

    move-object/from16 v10, p5

    move-object/from16 v11, p6

    move-object/from16 v12, p7

    .line 2328
    move/from16 v13, p10

    invoke-virtual/range {p5 .. p5}, Landroid/graphics/Rect;->width()I

    move-result v14

    .line 2329
    .local v14, "appWidth":I
    invoke-virtual/range {p5 .. p5}, Landroid/graphics/Rect;->height()I

    move-result v15

    .line 2330
    .local v15, "appHeight":I
    iget-object v0, v7, Lcom/android/server/wm/AppTransition;->mTmpRect:Landroid/graphics/Rect;

    invoke-direct {v7, v0}, Lcom/android/server/wm/AppTransition;->getDefaultNextAppTransitionStartRect(Landroid/graphics/Rect;)V

    .line 2331
    iget-object v0, v7, Lcom/android/server/wm/AppTransition;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v6

    .line 2332
    .local v6, "thumbWidthI":I
    const/high16 v0, 0x3f800000    # 1.0f

    if-lez v6, :cond_0

    int-to-float v1, v6

    goto :goto_0

    :cond_0
    move v1, v0

    :goto_0
    move/from16 v16, v1

    .line 2333
    .local v16, "thumbWidth":F
    iget-object v1, v7, Lcom/android/server/wm/AppTransition;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v4

    .line 2334
    .local v4, "thumbHeightI":I
    if-lez v4, :cond_1

    int-to-float v1, v4

    goto :goto_1

    :cond_1
    move v1, v0

    :goto_1
    move/from16 v17, v1

    .line 2335
    .local v17, "thumbHeight":F
    iget-object v1, v7, Lcom/android/server/wm/AppTransition;->mTmpRect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    iget v2, v10, Landroid/graphics/Rect;->left:I

    sub-int/2addr v1, v2

    iget v2, v11, Landroid/graphics/Rect;->left:I

    sub-int v18, v1, v2

    .line 2336
    .local v18, "thumbStartX":I
    iget-object v1, v7, Lcom/android/server/wm/AppTransition;->mTmpRect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->top:I

    iget v2, v10, Landroid/graphics/Rect;->top:I

    sub-int v19, v1, v2

    .line 2338
    .local v19, "thumbStartY":I
    const/16 v1, 0xe

    const/4 v2, 0x0

    packed-switch p1, :pswitch_data_0

    .line 2433
    move v8, v4

    move v9, v6

    .end local v4    # "thumbHeightI":I
    .end local v6    # "thumbWidthI":I
    .local v8, "thumbHeightI":I
    .local v9, "thumbWidthI":I
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Invalid thumbnail transition state"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2423
    .end local v8    # "thumbHeightI":I
    .end local v9    # "thumbWidthI":I
    .restart local v4    # "thumbHeightI":I
    .restart local v6    # "thumbWidthI":I
    :pswitch_0
    if-ne v9, v1, :cond_2

    .line 2426
    new-instance v1, Landroid/view/animation/AlphaAnimation;

    invoke-direct {v1, v2, v0}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    move-object v0, v1

    goto :goto_2

    .line 2428
    :cond_2
    new-instance v1, Landroid/view/animation/AlphaAnimation;

    invoke-direct {v1, v0, v0}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    move-object v0, v1

    .line 2430
    .local v0, "a":Landroid/view/animation/Animation;
    goto :goto_2

    .line 2412
    .end local v0    # "a":Landroid/view/animation/Animation;
    :pswitch_1
    if-ne v9, v1, :cond_3

    .line 2415
    new-instance v1, Landroid/view/animation/AlphaAnimation;

    invoke-direct {v1, v0, v2}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    move-object v0, v1

    .line 2433
    .end local v4    # "thumbHeightI":I
    .end local v6    # "thumbWidthI":I
    .local v1, "a":Landroid/view/animation/Animation;
    .local v28, "thumbHeightI":I
    .local v29, "thumbWidthI":I
    :goto_2
    move/from16 v28, v4

    move/from16 v29, v6

    goto/16 :goto_d

    .line 2417
    .end local v1    # "a":Landroid/view/animation/Animation;
    .end local v28    # "thumbHeightI":I
    .end local v29    # "thumbWidthI":I
    .restart local v4    # "thumbHeightI":I
    .restart local v6    # "thumbWidthI":I
    :cond_3
    new-instance v1, Landroid/view/animation/AlphaAnimation;

    invoke-direct {v1, v0, v0}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    move-object v0, v1

    .line 2419
    .restart local v0    # "a":Landroid/view/animation/Animation;
    goto :goto_2

    .line 2341
    .end local v0    # "a":Landroid/view/animation/Animation;
    :pswitch_2
    const/4 v1, 0x1

    const/4 v3, 0x0

    if-nez p1, :cond_4

    move v5, v1

    goto :goto_3

    :cond_4
    move v5, v3

    .line 2342
    .local v5, "scaleUp":Z
    :goto_3
    if-eqz p9, :cond_5

    if-eqz v5, :cond_5

    .line 2343
    invoke-direct {v7, v10, v12, v13}, Lcom/android/server/wm/AppTransition;->createAspectScaledThumbnailEnterFreeformAnimationLocked(Landroid/graphics/Rect;Landroid/graphics/Rect;I)Landroid/view/animation/Animation;

    move-result-object v0

    .line 2433
    .end local v4    # "thumbHeightI":I
    .end local v5    # "scaleUp":Z
    .end local v6    # "thumbWidthI":I
    .restart local v0    # "a":Landroid/view/animation/Animation;
    .restart local v1    # "a":Landroid/view/animation/Animation;
    .restart local v28    # "thumbHeightI":I
    .restart local v29    # "thumbWidthI":I
    :goto_4
    move-object v1, v0

    goto :goto_2

    .line 2345
    .end local v0    # "a":Landroid/view/animation/Animation;
    .end local v1    # "a":Landroid/view/animation/Animation;
    .end local v28    # "thumbHeightI":I
    .end local v29    # "thumbWidthI":I
    .restart local v4    # "thumbHeightI":I
    .restart local v5    # "scaleUp":Z
    .restart local v6    # "thumbWidthI":I
    :cond_5
    if-eqz p9, :cond_6

    .line 2346
    invoke-direct {v7, v10, v12, v13}, Lcom/android/server/wm/AppTransition;->createAspectScaledThumbnailExitFreeformAnimationLocked(Landroid/graphics/Rect;Landroid/graphics/Rect;I)Landroid/view/animation/Animation;

    move-result-object v0

    goto :goto_4

    .line 2349
    :cond_6
    new-instance v0, Landroid/view/animation/AnimationSet;

    invoke-direct {v0, v1}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    .line 2352
    .local v0, "set":Landroid/view/animation/AnimationSet;
    iget-object v1, v7, Lcom/android/server/wm/AppTransition;->mTmpFromClipRect:Landroid/graphics/Rect;

    invoke-virtual {v1, v10}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 2353
    iget-object v1, v7, Lcom/android/server/wm/AppTransition;->mTmpToClipRect:Landroid/graphics/Rect;

    invoke-virtual {v1, v10}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 2357
    iget-object v1, v7, Lcom/android/server/wm/AppTransition;->mTmpFromClipRect:Landroid/graphics/Rect;

    invoke-virtual {v1, v3, v3}, Landroid/graphics/Rect;->offsetTo(II)V

    .line 2358
    iget-object v1, v7, Lcom/android/server/wm/AppTransition;->mTmpToClipRect:Landroid/graphics/Rect;

    invoke-virtual {v1, v3, v3}, Landroid/graphics/Rect;->offsetTo(II)V

    .line 2361
    iget-object v1, v7, Lcom/android/server/wm/AppTransition;->mTmpFromClipRect:Landroid/graphics/Rect;

    invoke-virtual {v1, v11}, Landroid/graphics/Rect;->inset(Landroid/graphics/Rect;)V

    .line 2362
    iget-object v1, v7, Lcom/android/server/wm/AppTransition;->mNextAppTransitionInsets:Landroid/graphics/Rect;

    invoke-virtual {v1, v11}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 2365
    iget v1, v11, Landroid/graphics/Rect;->left:I

    sub-int v1, v14, v1

    iget v3, v11, Landroid/graphics/Rect;->right:I

    sub-int/2addr v1, v3

    int-to-float v1, v1

    div-float v1, v16, v1

    .line 2368
    .local v1, "scale":F
    const/4 v3, 0x0

    .line 2369
    .local v3, "isChangedTop":Z
    iget v2, v11, Landroid/graphics/Rect;->top:I

    if-nez v2, :cond_7

    iget v2, v7, Lcom/android/server/wm/AppTransition;->mNextAppTransitionType:I

    move/from16 v21, v3

    const/4 v3, 0x6

    .end local v3    # "isChangedTop":Z
    .local v21, "isChangedTop":Z
    if-ne v2, v3, :cond_8

    .line 2370
    iget-object v2, v7, Lcom/android/server/wm/AppTransition;->mTmpFromClipRect:Landroid/graphics/Rect;

    iget-object v3, v7, Lcom/android/server/wm/AppTransition;->mContext:Landroid/content/Context;

    .line 2371
    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    iget v3, v3, Landroid/util/DisplayMetrics;->density:F

    float-to-int v3, v3

    const/16 v22, 0x19

    mul-int v3, v3, v22

    iput v3, v11, Landroid/graphics/Rect;->top:I

    iput v3, v2, Landroid/graphics/Rect;->top:I

    .line 2372
    const/4 v3, 0x1

    .end local v21    # "isChangedTop":Z
    .restart local v3    # "isChangedTop":Z
    goto :goto_5

    .line 2375
    :cond_7
    move/from16 v21, v3

    .end local v3    # "isChangedTop":Z
    .restart local v21    # "isChangedTop":Z
    :cond_8
    move/from16 v3, v21

    .end local v21    # "isChangedTop":Z
    .restart local v3    # "isChangedTop":Z
    :goto_5
    iget-object v2, v7, Lcom/android/server/wm/AppTransition;->mNextAppTransitionInsets:Landroid/graphics/Rect;

    invoke-virtual {v2, v11}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 2377
    new-instance v2, Landroid/view/animation/ScaleAnimation;

    .line 2378
    if-eqz v5, :cond_9

    move/from16 v22, v1

    goto :goto_6

    :cond_9
    const/high16 v22, 0x3f800000    # 1.0f

    :goto_6
    if-eqz v5, :cond_a

    .line 2379
    const/high16 v23, 0x3f800000    # 1.0f

    goto :goto_7

    :cond_a
    move/from16 v23, v1

    :goto_7
    if-eqz v5, :cond_b

    move/from16 v24, v1

    goto :goto_8

    :cond_b
    const/high16 v24, 0x3f800000    # 1.0f

    :goto_8
    if-eqz v5, :cond_c

    .line 2380
    const/high16 v25, 0x3f800000    # 1.0f

    goto :goto_9

    :cond_c
    move/from16 v25, v1

    :goto_9
    move/from16 v28, v4

    invoke-virtual/range {p5 .. p5}, Landroid/graphics/Rect;->width()I

    move-result v4

    .end local v4    # "thumbHeightI":I
    .restart local v28    # "thumbHeightI":I
    int-to-float v4, v4

    const/high16 v20, 0x40000000    # 2.0f

    div-float v4, v4, v20

    move/from16 v29, v6

    iget v6, v11, Landroid/graphics/Rect;->left:I

    .end local v6    # "thumbWidthI":I
    .restart local v29    # "thumbWidthI":I
    int-to-float v6, v6

    sub-float v26, v4, v6

    .line 2381
    invoke-virtual/range {p5 .. p5}, Landroid/graphics/Rect;->height()I

    move-result v4

    int-to-float v4, v4

    div-float v4, v4, v20

    iget v6, v11, Landroid/graphics/Rect;->top:I

    int-to-float v6, v6

    add-float v27, v4, v6

    move-object/from16 v21, v2

    invoke-direct/range {v21 .. v27}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFFF)V

    .line 2382
    .local v2, "scaleAnim":Landroid/view/animation/Animation;
    iget-object v4, v7, Lcom/android/server/wm/AppTransition;->mTmpRect:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->left:I

    iget v6, v10, Landroid/graphics/Rect;->left:I

    sub-int/2addr v4, v6

    int-to-float v4, v4

    .line 2383
    .local v4, "targetX":F
    invoke-virtual/range {p5 .. p5}, Landroid/graphics/Rect;->width()I

    move-result v6

    int-to-float v6, v6

    div-float v6, v6, v20

    .line 2384
    invoke-virtual/range {p5 .. p5}, Landroid/graphics/Rect;->width()I

    move-result v8

    int-to-float v8, v8

    div-float v8, v8, v20

    mul-float/2addr v8, v1

    sub-float/2addr v6, v8

    .line 2385
    .local v6, "x":F
    iget-object v8, v7, Lcom/android/server/wm/AppTransition;->mTmpRect:Landroid/graphics/Rect;

    iget v8, v8, Landroid/graphics/Rect;->top:I

    iget v9, v10, Landroid/graphics/Rect;->top:I

    sub-int/2addr v8, v9

    int-to-float v8, v8

    .line 2386
    .local v8, "targetY":F
    invoke-virtual/range {p5 .. p5}, Landroid/graphics/Rect;->height()I

    move-result v9

    int-to-float v9, v9

    div-float v9, v9, v20

    .line 2387
    invoke-virtual/range {p5 .. p5}, Landroid/graphics/Rect;->height()I

    move-result v12

    int-to-float v12, v12

    div-float v12, v12, v20

    mul-float/2addr v12, v1

    sub-float/2addr v9, v12

    .line 2389
    .local v9, "y":F
    sub-float v12, v4, v6

    .line 2390
    .local v12, "startX":F
    sub-float v20, v8, v9

    .line 2391
    .local v20, "startY":F
    if-eqz v5, :cond_d

    .line 2392
    move/from16 v30, v1

    new-instance v1, Landroid/view/animation/ClipRectAnimation;

    .end local v1    # "scale":F
    .local v30, "scale":F
    move/from16 v31, v4

    iget-object v4, v7, Lcom/android/server/wm/AppTransition;->mTmpFromClipRect:Landroid/graphics/Rect;

    .end local v4    # "targetX":F
    .local v31, "targetX":F
    move/from16 v32, v6

    iget-object v6, v7, Lcom/android/server/wm/AppTransition;->mTmpToClipRect:Landroid/graphics/Rect;

    .end local v6    # "x":F
    .local v32, "x":F
    invoke-direct {v1, v4, v6}, Landroid/view/animation/ClipRectAnimation;-><init>(Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    goto :goto_a

    .line 2393
    .end local v30    # "scale":F
    .end local v31    # "targetX":F
    .end local v32    # "x":F
    .restart local v1    # "scale":F
    .restart local v4    # "targetX":F
    .restart local v6    # "x":F
    :cond_d
    move/from16 v30, v1

    move/from16 v31, v4

    move/from16 v32, v6

    .end local v1    # "scale":F
    .end local v4    # "targetX":F
    .end local v6    # "x":F
    .restart local v30    # "scale":F
    .restart local v31    # "targetX":F
    .restart local v32    # "x":F
    new-instance v1, Landroid/view/animation/ClipRectAnimation;

    iget-object v4, v7, Lcom/android/server/wm/AppTransition;->mTmpToClipRect:Landroid/graphics/Rect;

    iget-object v6, v7, Lcom/android/server/wm/AppTransition;->mTmpFromClipRect:Landroid/graphics/Rect;

    invoke-direct {v1, v4, v6}, Landroid/view/animation/ClipRectAnimation;-><init>(Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    .line 2394
    .local v1, "clipAnim":Landroid/view/animation/Animation;
    :goto_a
    if-eqz v5, :cond_e

    .line 2395
    iget v4, v11, Landroid/graphics/Rect;->top:I

    int-to-float v4, v4

    sub-float v4, v20, v4

    const/4 v6, 0x0

    invoke-direct {v7, v12, v6, v4, v6}, Lcom/android/server/wm/AppTransition;->createCurvedMotion(FFFF)Landroid/view/animation/Animation;

    move-result-object v4

    goto :goto_b

    .line 2396
    :cond_e
    const/4 v6, 0x0

    iget v4, v11, Landroid/graphics/Rect;->top:I

    int-to-float v4, v4

    sub-float v4, v20, v4

    invoke-direct {v7, v6, v12, v6, v4}, Lcom/android/server/wm/AppTransition;->createCurvedMotion(FFFF)Landroid/view/animation/Animation;

    move-result-object v4

    .line 2398
    .local v4, "translateAnim":Landroid/view/animation/Animation;
    :goto_b
    invoke-virtual {v0, v1}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 2399
    invoke-virtual {v0, v2}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 2400
    invoke-virtual {v0, v4}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 2402
    if-eqz v3, :cond_f

    .line 2403
    iget-object v6, v7, Lcom/android/server/wm/AppTransition;->mTmpFromClipRect:Landroid/graphics/Rect;

    move-object/from16 v33, v1

    const/4 v1, 0x0

    iput v1, v11, Landroid/graphics/Rect;->top:I

    .end local v1    # "clipAnim":Landroid/view/animation/Animation;
    .local v33, "clipAnim":Landroid/view/animation/Animation;
    iput v1, v6, Landroid/graphics/Rect;->top:I

    goto :goto_c

    .line 2405
    .end local v33    # "clipAnim":Landroid/view/animation/Animation;
    .restart local v1    # "clipAnim":Landroid/view/animation/Animation;
    :cond_f
    move-object/from16 v33, v1

    .end local v1    # "clipAnim":Landroid/view/animation/Animation;
    .restart local v33    # "clipAnim":Landroid/view/animation/Animation;
    :goto_c
    move-object v1, v0

    .line 2406
    .local v1, "a":Landroid/view/animation/Animation;
    const/4 v6, 0x1

    invoke-virtual {v1, v6}, Landroid/view/animation/Animation;->setZAdjustment(I)V

    .line 2408
    .end local v0    # "set":Landroid/view/animation/AnimationSet;
    .end local v2    # "scaleAnim":Landroid/view/animation/Animation;
    .end local v3    # "isChangedTop":Z
    .end local v4    # "translateAnim":Landroid/view/animation/Animation;
    .end local v8    # "targetY":F
    .end local v9    # "y":F
    .end local v12    # "startX":F
    .end local v20    # "startY":F
    .end local v30    # "scale":F
    .end local v31    # "targetX":F
    .end local v32    # "x":F
    .end local v33    # "clipAnim":Landroid/view/animation/Animation;
    nop

    .line 2433
    .end local v5    # "scaleUp":Z
    :goto_d
    nop

    .line 2436
    const-wide/16 v4, 0xec

    .line 2437
    invoke-direct/range {p0 .. p0}, Lcom/android/server/wm/AppTransition;->getAspectScaleInterpolator()Landroid/view/animation/Interpolator;

    move-result-object v6

    .line 2436
    move-object v0, v7

    move v2, v14

    move v3, v15

    move/from16 v8, v28

    .end local v28    # "thumbHeightI":I
    .local v8, "thumbHeightI":I
    move/from16 v9, v29

    .end local v29    # "thumbWidthI":I
    .local v9, "thumbWidthI":I
    invoke-virtual/range {v0 .. v6}, Lcom/android/server/wm/AppTransition;->prepareThumbnailAnimationWithDuration(Landroid/view/animation/Animation;IIJLandroid/view/animation/Interpolator;)Landroid/view/animation/Animation;

    move-result-object v0

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method overrideInPlaceAppTransition(Ljava/lang/String;I)V
    .locals 1
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "anim"    # I

    .line 1911
    invoke-direct {p0}, Lcom/android/server/wm/AppTransition;->canOverridePendingAppTransition()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1912
    invoke-virtual {p0}, Lcom/android/server/wm/AppTransition;->clear()V

    .line 1913
    const/4 v0, 0x7

    iput v0, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionType:I

    .line 1914
    iput-object p1, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionPackage:Ljava/lang/String;

    .line 1915
    iput p2, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionInPlace:I

    .line 1917
    :cond_0
    return-void
.end method

.method overridePendingAppTransition(Ljava/lang/String;IILandroid/os/IRemoteCallback;)V
    .locals 1
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "enterAnim"    # I
    .param p3, "exitAnim"    # I
    .param p4, "startedCallback"    # Landroid/os/IRemoteCallback;

    .line 1801
    invoke-direct {p0}, Lcom/android/server/wm/AppTransition;->canOverridePendingAppTransition()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1802
    invoke-virtual {p0}, Lcom/android/server/wm/AppTransition;->clear()V

    .line 1803
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionType:I

    .line 1804
    iput-object p1, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionPackage:Ljava/lang/String;

    .line 1805
    iput p2, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionEnter:I

    .line 1806
    iput p3, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionExit:I

    .line 1807
    invoke-virtual {p0}, Lcom/android/server/wm/AppTransition;->postAnimationCallback()V

    .line 1808
    iput-object p4, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionCallback:Landroid/os/IRemoteCallback;

    .line 1810
    :cond_0
    return-void
.end method

.method overridePendingAppTransitionAspectScaledThumb(Landroid/graphics/GraphicBuffer;IIIILandroid/os/IRemoteCallback;Z)V
    .locals 6
    .param p1, "srcThumb"    # Landroid/graphics/GraphicBuffer;
    .param p2, "startX"    # I
    .param p3, "startY"    # I
    .param p4, "targetWidth"    # I
    .param p5, "targetHeight"    # I
    .param p6, "startedCallback"    # Landroid/os/IRemoteCallback;
    .param p7, "scaleUp"    # Z

    .line 1847
    invoke-direct {p0}, Lcom/android/server/wm/AppTransition;->canOverridePendingAppTransition()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1848
    invoke-virtual {p0}, Lcom/android/server/wm/AppTransition;->clear()V

    .line 1849
    if-eqz p7, :cond_0

    const/4 v0, 0x5

    goto :goto_0

    .line 1850
    :cond_0
    const/4 v0, 0x6

    :goto_0
    iput v0, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionType:I

    .line 1851
    iput-boolean p7, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionScaleUp:Z

    .line 1852
    move-object v0, p0

    move v1, p2

    move v2, p3

    move v3, p4

    move v4, p5

    move-object v5, p1

    invoke-direct/range {v0 .. v5}, Lcom/android/server/wm/AppTransition;->putDefaultNextAppTransitionCoordinates(IIIILandroid/graphics/GraphicBuffer;)V

    .line 1854
    invoke-virtual {p0}, Lcom/android/server/wm/AppTransition;->postAnimationCallback()V

    .line 1855
    iput-object p6, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionCallback:Landroid/os/IRemoteCallback;

    .line 1857
    :cond_1
    return-void
.end method

.method overridePendingAppTransitionClipReveal(IIII)V
    .locals 7
    .param p1, "startX"    # I
    .param p2, "startY"    # I
    .param p3, "startWidth"    # I
    .param p4, "startHeight"    # I

    .line 1824
    invoke-direct {p0}, Lcom/android/server/wm/AppTransition;->canOverridePendingAppTransition()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1825
    invoke-virtual {p0}, Lcom/android/server/wm/AppTransition;->clear()V

    .line 1826
    const/16 v0, 0x8

    iput v0, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionType:I

    .line 1827
    const/4 v6, 0x0

    move-object v1, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    invoke-direct/range {v1 .. v6}, Lcom/android/server/wm/AppTransition;->putDefaultNextAppTransitionCoordinates(IIIILandroid/graphics/GraphicBuffer;)V

    .line 1828
    invoke-virtual {p0}, Lcom/android/server/wm/AppTransition;->postAnimationCallback()V

    .line 1830
    :cond_0
    return-void
.end method

.method overridePendingAppTransitionMultiThumb([Landroid/view/AppTransitionAnimationSpec;Landroid/os/IRemoteCallback;Landroid/os/IRemoteCallback;Z)V
    .locals 9
    .param p1, "specs"    # [Landroid/view/AppTransitionAnimationSpec;
    .param p2, "onAnimationStartedCallback"    # Landroid/os/IRemoteCallback;
    .param p3, "onAnimationFinishedCallback"    # Landroid/os/IRemoteCallback;
    .param p4, "scaleUp"    # Z

    .line 1862
    invoke-direct {p0}, Lcom/android/server/wm/AppTransition;->canOverridePendingAppTransition()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1863
    invoke-virtual {p0}, Lcom/android/server/wm/AppTransition;->clear()V

    .line 1864
    if-eqz p4, :cond_0

    const/4 v0, 0x5

    goto :goto_0

    .line 1865
    :cond_0
    const/4 v0, 0x6

    :goto_0
    iput v0, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionType:I

    .line 1866
    iput-boolean p4, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionScaleUp:Z

    .line 1867
    if-eqz p1, :cond_2

    .line 1868
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    array-length v1, p1

    if-ge v0, v1, :cond_2

    .line 1869
    aget-object v1, p1, v0

    .line 1870
    .local v1, "spec":Landroid/view/AppTransitionAnimationSpec;
    if-eqz v1, :cond_1

    .line 1871
    iget-object v2, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionAnimationsSpecs:Landroid/util/SparseArray;

    iget v3, v1, Landroid/view/AppTransitionAnimationSpec;->taskId:I

    invoke-virtual {v2, v3, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1872
    if-nez v0, :cond_1

    .line 1875
    iget-object v2, v1, Landroid/view/AppTransitionAnimationSpec;->rect:Landroid/graphics/Rect;

    .line 1876
    .local v2, "rect":Landroid/graphics/Rect;
    iget v4, v2, Landroid/graphics/Rect;->left:I

    iget v5, v2, Landroid/graphics/Rect;->top:I

    .line 1877
    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v6

    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v7

    iget-object v8, v1, Landroid/view/AppTransitionAnimationSpec;->buffer:Landroid/graphics/GraphicBuffer;

    .line 1876
    move-object v3, p0

    invoke-direct/range {v3 .. v8}, Lcom/android/server/wm/AppTransition;->putDefaultNextAppTransitionCoordinates(IIIILandroid/graphics/GraphicBuffer;)V

    .line 1868
    .end local v1    # "spec":Landroid/view/AppTransitionAnimationSpec;
    .end local v2    # "rect":Landroid/graphics/Rect;
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1882
    .end local v0    # "i":I
    :cond_2
    invoke-virtual {p0}, Lcom/android/server/wm/AppTransition;->postAnimationCallback()V

    .line 1883
    iput-object p2, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionCallback:Landroid/os/IRemoteCallback;

    .line 1884
    iput-object p3, p0, Lcom/android/server/wm/AppTransition;->mAnimationFinishedCallback:Landroid/os/IRemoteCallback;

    .line 1886
    :cond_3
    return-void
.end method

.method overridePendingAppTransitionMultiThumbFuture(Landroid/view/IAppTransitionAnimationSpecsFuture;Landroid/os/IRemoteCallback;Z)V
    .locals 1
    .param p1, "specsFuture"    # Landroid/view/IAppTransitionAnimationSpecsFuture;
    .param p2, "callback"    # Landroid/os/IRemoteCallback;
    .param p3, "scaleUp"    # Z

    .line 1891
    invoke-direct {p0}, Lcom/android/server/wm/AppTransition;->canOverridePendingAppTransition()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1892
    invoke-virtual {p0}, Lcom/android/server/wm/AppTransition;->clear()V

    .line 1893
    if-eqz p3, :cond_0

    const/4 v0, 0x5

    goto :goto_0

    .line 1894
    :cond_0
    const/4 v0, 0x6

    :goto_0
    iput v0, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionType:I

    .line 1895
    iput-object p1, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionAnimationsSpecsFuture:Landroid/view/IAppTransitionAnimationSpecsFuture;

    .line 1896
    iput-boolean p3, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionScaleUp:Z

    .line 1897
    iput-object p2, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionFutureCallback:Landroid/os/IRemoteCallback;

    .line 1899
    :cond_1
    return-void
.end method

.method overridePendingAppTransitionRemote(Landroid/view/RemoteAnimationAdapter;)V
    .locals 3
    .param p1, "remoteAnimationAdapter"    # Landroid/view/RemoteAnimationAdapter;

    .line 1902
    invoke-virtual {p0}, Lcom/android/server/wm/AppTransition;->isTransitionSet()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1903
    invoke-virtual {p0}, Lcom/android/server/wm/AppTransition;->clear()V

    .line 1904
    const/16 v0, 0xa

    iput v0, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionType:I

    .line 1905
    new-instance v0, Lcom/android/server/wm/RemoteAnimationController;

    iget-object v1, p0, Lcom/android/server/wm/AppTransition;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, p0, Lcom/android/server/wm/AppTransition;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    invoke-direct {v0, v1, p1, v2}, Lcom/android/server/wm/RemoteAnimationController;-><init>(Lcom/android/server/wm/WindowManagerService;Landroid/view/RemoteAnimationAdapter;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/server/wm/AppTransition;->mRemoteAnimationController:Lcom/android/server/wm/RemoteAnimationController;

    .line 1908
    :cond_0
    return-void
.end method

.method overridePendingAppTransitionScaleUp(IIII)V
    .locals 7
    .param p1, "startX"    # I
    .param p2, "startY"    # I
    .param p3, "startWidth"    # I
    .param p4, "startHeight"    # I

    .line 1814
    invoke-direct {p0}, Lcom/android/server/wm/AppTransition;->canOverridePendingAppTransition()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1815
    invoke-virtual {p0}, Lcom/android/server/wm/AppTransition;->clear()V

    .line 1816
    const/4 v0, 0x2

    iput v0, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionType:I

    .line 1817
    const/4 v6, 0x0

    move-object v1, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    invoke-direct/range {v1 .. v6}, Lcom/android/server/wm/AppTransition;->putDefaultNextAppTransitionCoordinates(IIIILandroid/graphics/GraphicBuffer;)V

    .line 1818
    invoke-virtual {p0}, Lcom/android/server/wm/AppTransition;->postAnimationCallback()V

    .line 1820
    :cond_0
    return-void
.end method

.method overridePendingAppTransitionStartCrossProfileApps()V
    .locals 1

    .line 1923
    invoke-direct {p0}, Lcom/android/server/wm/AppTransition;->canOverridePendingAppTransition()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1924
    invoke-virtual {p0}, Lcom/android/server/wm/AppTransition;->clear()V

    .line 1925
    const/16 v0, 0x9

    iput v0, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionType:I

    .line 1926
    invoke-virtual {p0}, Lcom/android/server/wm/AppTransition;->postAnimationCallback()V

    .line 1928
    :cond_0
    return-void
.end method

.method overridePendingAppTransitionThumb(Landroid/graphics/GraphicBuffer;IILandroid/os/IRemoteCallback;Z)V
    .locals 7
    .param p1, "srcThumb"    # Landroid/graphics/GraphicBuffer;
    .param p2, "startX"    # I
    .param p3, "startY"    # I
    .param p4, "startedCallback"    # Landroid/os/IRemoteCallback;
    .param p5, "scaleUp"    # Z

    .line 1834
    invoke-direct {p0}, Lcom/android/server/wm/AppTransition;->canOverridePendingAppTransition()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1835
    invoke-virtual {p0}, Lcom/android/server/wm/AppTransition;->clear()V

    .line 1836
    if-eqz p5, :cond_0

    const/4 v0, 0x3

    goto :goto_0

    .line 1837
    :cond_0
    const/4 v0, 0x4

    :goto_0
    iput v0, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionType:I

    .line 1838
    iput-boolean p5, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionScaleUp:Z

    .line 1839
    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v1, p0

    move v2, p2

    move v3, p3

    move-object v6, p1

    invoke-direct/range {v1 .. v6}, Lcom/android/server/wm/AppTransition;->putDefaultNextAppTransitionCoordinates(IIIILandroid/graphics/GraphicBuffer;)V

    .line 1840
    invoke-virtual {p0}, Lcom/android/server/wm/AppTransition;->postAnimationCallback()V

    .line 1841
    iput-object p4, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionCallback:Landroid/os/IRemoteCallback;

    .line 1843
    :cond_1
    return-void
.end method

.method postAnimationCallback()V
    .locals 4

    .line 1792
    iget-object v0, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionCallback:Landroid/os/IRemoteCallback;

    if-eqz v0, :cond_0

    .line 1793
    iget-object v0, p0, Lcom/android/server/wm/AppTransition;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    iget-object v1, p0, Lcom/android/server/wm/AppTransition;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    const/16 v2, 0x1a

    iget-object v3, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionCallback:Landroid/os/IRemoteCallback;

    invoke-virtual {v1, v2, v3}, Lcom/android/server/wm/WindowManagerService$H;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/wm/WindowManagerService$H;->sendMessage(Landroid/os/Message;)Z

    .line 1795
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionCallback:Landroid/os/IRemoteCallback;

    .line 1797
    :cond_0
    return-void
.end method

.method prepareAppTransitionLocked(IZIZ)Z
    .locals 6
    .param p1, "transit"    # I
    .param p2, "alwaysKeepCurrent"    # Z
    .param p3, "flags"    # I
    .param p4, "forceOverride"    # Z

    .line 2168
    sget-boolean v0, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_APP_TRANSITIONS:Z

    if-eqz v0, :cond_0

    const-string v0, "WindowManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Prepare app transition: transit="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2169
    invoke-static {p1}, Lcom/android/server/wm/AppTransition;->appTransitionToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " alwaysKeepCurrent="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " Callers="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v2, 0x3

    .line 2172
    invoke-static {v2}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 2168
    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2173
    :cond_0
    iget v0, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransition:I

    invoke-static {v0}, Lcom/android/server/wm/AppTransition;->isKeyguardTransit(I)Z

    move-result v0

    const/16 v1, 0x1a

    if-nez v0, :cond_1

    if-ne p1, v1, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 2175
    .local v0, "allowSetCrashing":Z
    :goto_0
    if-nez p4, :cond_5

    invoke-static {p1}, Lcom/android/server/wm/AppTransition;->isKeyguardTransit(I)Z

    move-result v2

    if-nez v2, :cond_5

    invoke-virtual {p0}, Lcom/android/server/wm/AppTransition;->isTransitionSet()Z

    move-result v2

    if-eqz v2, :cond_5

    iget v2, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransition:I

    if-eqz v2, :cond_5

    if-eqz v0, :cond_2

    goto :goto_1

    .line 2182
    :cond_2
    if-nez p2, :cond_6

    iget v2, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransition:I

    invoke-static {v2}, Lcom/android/server/wm/AppTransition;->isKeyguardTransit(I)Z

    move-result v2

    if-nez v2, :cond_6

    iget v2, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransition:I

    if-eq v2, v1, :cond_6

    .line 2184
    const/16 v1, 0x8

    if-ne p1, v1, :cond_3

    const/16 v1, 0x9

    invoke-virtual {p0, v1}, Lcom/android/server/wm/AppTransition;->isTransitionEqual(I)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 2186
    invoke-direct {p0, p1, p3}, Lcom/android/server/wm/AppTransition;->setAppTransition(II)V

    goto :goto_2

    .line 2187
    :cond_3
    const/4 v1, 0x6

    if-ne p1, v1, :cond_4

    const/4 v1, 0x7

    .line 2188
    invoke-virtual {p0, v1}, Lcom/android/server/wm/AppTransition;->isTransitionEqual(I)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 2190
    invoke-direct {p0, p1, p3}, Lcom/android/server/wm/AppTransition;->setAppTransition(II)V

    goto :goto_2

    .line 2191
    :cond_4
    invoke-static {p1}, Lcom/android/server/wm/AppTransition;->isTaskTransit(I)Z

    move-result v1

    if-eqz v1, :cond_6

    iget v1, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransition:I

    invoke-static {v1}, Lcom/android/server/wm/AppTransition;->isActivityTransit(I)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 2194
    invoke-direct {p0, p1, p3}, Lcom/android/server/wm/AppTransition;->setAppTransition(II)V

    goto :goto_2

    .line 2177
    :cond_5
    :goto_1
    invoke-direct {p0, p1, p3}, Lcom/android/server/wm/AppTransition;->setAppTransition(II)V

    .line 2197
    :cond_6
    :goto_2
    invoke-direct {p0}, Lcom/android/server/wm/AppTransition;->prepare()Z

    move-result v1

    .line 2198
    .local v1, "prepared":Z
    invoke-virtual {p0}, Lcom/android/server/wm/AppTransition;->isTransitionSet()Z

    move-result v2

    if-eqz v2, :cond_7

    .line 2199
    iget-object v2, p0, Lcom/android/server/wm/AppTransition;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    const/16 v3, 0xd

    invoke-virtual {v2, v3}, Lcom/android/server/wm/WindowManagerService$H;->removeMessages(I)V

    .line 2200
    iget-object v2, p0, Lcom/android/server/wm/AppTransition;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    const-wide/16 v4, 0x7d0

    invoke-virtual {v2, v3, v4, v5}, Lcom/android/server/wm/WindowManagerService$H;->sendEmptyMessageDelayed(IJ)Z

    .line 2202
    :cond_7
    return v1
.end method

.method prepareThumbnailAnimation(Landroid/view/animation/Animation;III)Landroid/view/animation/Animation;
    .locals 8
    .param p1, "a"    # Landroid/view/animation/Animation;
    .param p2, "appWidth"    # I
    .param p3, "appHeight"    # I
    .param p4, "transit"    # I

    .line 948
    packed-switch p4, :pswitch_data_0

    .line 954
    const/16 v0, 0x150

    goto :goto_0

    .line 951
    :pswitch_0
    iget v0, p0, Lcom/android/server/wm/AppTransition;->mConfigShortAnimTime:I

    .line 952
    .local v0, "duration":I
    nop

    .line 954
    :goto_0
    nop

    .line 957
    int-to-long v5, v0

    iget-object v7, p0, Lcom/android/server/wm/AppTransition;->mDecelerateInterpolator:Landroid/view/animation/Interpolator;

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move v4, p3

    invoke-virtual/range {v1 .. v7}, Lcom/android/server/wm/AppTransition;->prepareThumbnailAnimationWithDuration(Landroid/view/animation/Animation;IIJLandroid/view/animation/Interpolator;)Landroid/view/animation/Animation;

    move-result-object v1

    return-object v1

    :pswitch_data_0
    .packed-switch 0x6
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method prepareThumbnailAnimationWithDuration(Landroid/view/animation/Animation;IIJLandroid/view/animation/Interpolator;)Landroid/view/animation/Animation;
    .locals 2
    .param p1, "a"    # Landroid/view/animation/Animation;
    .param p2, "appWidth"    # I
    .param p3, "appHeight"    # I
    .param p4, "duration"    # J
    .param p6, "interpolator"    # Landroid/view/animation/Interpolator;

    .line 929
    const-wide/16 v0, 0x0

    cmp-long v0, p4, v0

    if-lez v0, :cond_0

    .line 930
    invoke-virtual {p1, p4, p5}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 932
    :cond_0
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/view/animation/Animation;->setFillAfter(Z)V

    .line 933
    if-eqz p6, :cond_1

    .line 934
    invoke-virtual {p1, p6}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 936
    :cond_1
    invoke-virtual {p1, p2, p3, p2, p3}, Landroid/view/animation/Animation;->initialize(IIII)V

    .line 937
    return-object p1
.end method

.method registerListenerLocked(Lcom/android/server/wm/WindowManagerInternal$AppTransitionListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/android/server/wm/WindowManagerInternal$AppTransitionListener;

    .line 486
    iget-object v0, p0, Lcom/android/server/wm/AppTransition;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 487
    return-void
.end method

.method public setCurrentUser(I)V
    .locals 0
    .param p1, "newUserId"    # I

    .line 2159
    iput p1, p0, Lcom/android/server/wm/AppTransition;->mCurrentUserId:I

    .line 2160
    return-void
.end method

.method setIdle()V
    .locals 1

    .line 350
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/server/wm/AppTransition;->setAppTransitionState(I)V

    .line 351
    return-void
.end method

.method setLastAppTransition(ILcom/android/server/wm/AppWindowToken;Lcom/android/server/wm/AppWindowToken;)V
    .locals 2
    .param p1, "transit"    # I
    .param p2, "openingApp"    # Lcom/android/server/wm/AppWindowToken;
    .param p3, "closingApp"    # Lcom/android/server/wm/AppWindowToken;

    .line 327
    const/4 v0, -0x1

    if-eq p1, v0, :cond_0

    .line 328
    iput p1, p0, Lcom/android/server/wm/AppTransition;->mLastUsedAppTransition:I

    .line 331
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/wm/AppTransition;->mLastOpeningApp:Ljava/lang/String;

    .line 332
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/wm/AppTransition;->mLastClosingApp:Ljava/lang/String;

    .line 333
    return-void
.end method

.method setReady()V
    .locals 1

    .line 341
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/server/wm/AppTransition;->setAppTransitionState(I)V

    .line 342
    invoke-direct {p0}, Lcom/android/server/wm/AppTransition;->fetchAppTransitionSpecsFromFuture()V

    .line 343
    return-void
.end method

.method setTimeout()V
    .locals 1

    .line 358
    const/4 v0, 0x3

    invoke-direct {p0, v0}, Lcom/android/server/wm/AppTransition;->setAppTransitionState(I)V

    .line 359
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 1966
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "mNextAppTransition="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransition:I

    invoke-static {v1}, Lcom/android/server/wm/AppTransition;->appTransitionToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method updateBooster()V
    .locals 2

    .line 474
    sget-object v0, Lcom/android/server/wm/WindowManagerService;->sThreadPriorityBooster:Lcom/android/server/wm/WindowManagerThreadPriorityBooster;

    invoke-direct {p0}, Lcom/android/server/wm/AppTransition;->needsBoosting()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/server/wm/WindowManagerThreadPriorityBooster;->setAppTransitionRunning(Z)V

    .line 475
    return-void
.end method

.method writeToProto(Landroid/util/proto/ProtoOutputStream;J)V
    .locals 5
    .param p1, "proto"    # Landroid/util/proto/ProtoOutputStream;
    .param p2, "fieldId"    # J

    .line 2090
    invoke-virtual {p1, p2, p3}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v0

    .line 2091
    .local v0, "token":J
    iget v2, p0, Lcom/android/server/wm/AppTransition;->mAppTransitionState:I

    const-wide v3, 0x10e00000001L

    invoke-virtual {p1, v3, v4, v2}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 2092
    iget v2, p0, Lcom/android/server/wm/AppTransition;->mLastUsedAppTransition:I

    const-wide v3, 0x10e00000002L

    invoke-virtual {p1, v3, v4, v2}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 2093
    invoke-virtual {p1, v0, v1}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 2094
    return-void
.end method
