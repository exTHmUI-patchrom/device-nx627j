.class public Lcom/android/server/policy/BarController;
.super Ljava/lang/Object;
.source "BarController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/policy/BarController$OnBarVisibilityChangedListener;,
        Lcom/android/server/policy/BarController$BarHandler;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field private static final MSG_NAV_BAR_VISIBILITY_CHANGED:I = 0x1

.field private static final TRANSIENT_BAR_HIDING:I = 0x3

.field private static final TRANSIENT_BAR_NONE:I = 0x0

.field private static final TRANSIENT_BAR_SHOWING:I = 0x2

.field private static final TRANSIENT_BAR_SHOW_REQUESTED:I = 0x1

.field private static final TRANSLUCENT_ANIMATION_DELAY_MS:I = 0x3e8

.field public static mPackageBlackList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mBoost:Landroid/os/IBinder;

.field private final mContentFrame:Landroid/graphics/Rect;

.field protected final mHandler:Landroid/os/Handler;

.field private mIsPerfLockAcquired:Z

.field private mIscpufreqCtrlAcquired:Z

.field private mLastTranslucent:J

.field private mNoAnimationOnNextShow:Z

.field private mPendingShow:Z

.field private final mServiceAquireLock:Ljava/lang/Object;

.field private mSetUnHideFlagWhenNextTransparent:Z

.field private mShowTransparent:Z

.field private mState:I

.field protected mStatusBarInternal:Lcom/android/server/statusbar/StatusBarManagerInternal;

.field private final mStatusBarManagerId:I

.field protected final mTag:Ljava/lang/String;

.field private mTransientBarState:I

.field private final mTransientFlag:I

.field private final mTranslucentFlag:I

.field private final mTranslucentWmFlag:I

.field private final mTransparentFlag:I

.field private final mUnhideFlag:I

.field private mVisibilityChangeListener:Lcom/android/server/policy/BarController$OnBarVisibilityChangedListener;

.field protected mWin:Lcom/android/server/policy/WindowManagerPolicy$WindowState;


# direct methods
.method static constructor <clinit>()V
    .locals 45

    .line 81
    const-string v0, "com.UCMobile"

    const-string v1, "cn.nubia.browser"

    const-string v2, "com.qihoo.browser"

    const-string v3, "com.tencent.mtt"

    const-string/jumbo v4, "sogou.mobile.explorer"

    const-string v5, "cn.nubia.browser"

    const-string v6, "com.ijinshan.browser_fast"

    const-string v7, "com.ijinshan.browser_fast"

    const-string v8, "com.baidu.browser.apps"

    const-string v9, "com.android.chrome"

    const-string v10, "com.baidu.searchbox"

    const-string v11, "com.baidu.searchbox.lite"

    const-string/jumbo v12, "org.mozilla.firefox"

    const-string v13, "com.sogou.activity.src"

    const-string v14, "com.browser2345"

    const-string v15, "com.quark.browser"

    const-string v16, "com.qihoo.expressbrowser"

    const-string v17, "com.oupeng.mini.android"

    const-string v18, "air.tv.douyu.android"

    const-string v19, "com.panda.videoliveplatform"

    const-string v20, "com.duowan.kiwi"

    const-string v21, "com.longzhu.tga"

    const-string v22, "com.pplive.androidphone"

    const-string v23, "com.letv.android.client"

    const-string v24, "com.cmcc.cmvideo"

    const-string v25, "com.tudou.android"

    const-string v26, "com.sohu.sohuvideo"

    const-string v27, "com.pplive.androidphone.nubia"

    const-string v28, "com.baidu.video"

    const-string v29, "com.funshion.video.mobile"

    const-string v30, "com.duowan.mobile:yydexopt"

    const-string/jumbo v31, "tv.danmaku.bili"

    const-string v32, "com.storm.smart"

    const-string v33, "com.qiyi.video"

    const-string v34, "com.youku.phone"

    const-string v35, "com.ss.android.article.news"

    const-string v36, "com.netease.edu.study"

    const-string/jumbo v37, "org.keke.tv.vod"

    const-string v38, "com.tencent.qqlive"

    const-string v39, "com.smile.gifmaker"

    const-string/jumbo v40, "peace.org.tm.android"

    const-string v41, "com.google.android.youtube"

    const-string v42, "com.qihoo.video"

    const-string v43, "com.meitu.meipaimv"

    const-string v44, "com.instagram.android"

    filled-new-array/range {v0 .. v44}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/android/server/policy/BarController;->mPackageBlackList:Ljava/util/List;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;IIIIII)V
    .locals 3
    .param p1, "tag"    # Ljava/lang/String;
    .param p2, "transientFlag"    # I
    .param p3, "unhideFlag"    # I
    .param p4, "translucentFlag"    # I
    .param p5, "statusBarManagerId"    # I
    .param p6, "translucentWmFlag"    # I
    .param p7, "transparentFlag"    # I

    .line 98
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 66
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/policy/BarController;->mServiceAquireLock:Ljava/lang/Object;

    .line 70
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/policy/BarController;->mState:I

    .line 77
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Lcom/android/server/policy/BarController;->mContentFrame:Landroid/graphics/Rect;

    .line 92
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/server/policy/BarController;->mBoost:Landroid/os/IBinder;

    .line 93
    iput-boolean v0, p0, Lcom/android/server/policy/BarController;->mIsPerfLockAcquired:Z

    .line 94
    iput-boolean v0, p0, Lcom/android/server/policy/BarController;->mIscpufreqCtrlAcquired:Z

    .line 99
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "BarController."

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/policy/BarController;->mTag:Ljava/lang/String;

    .line 100
    iput p2, p0, Lcom/android/server/policy/BarController;->mTransientFlag:I

    .line 101
    iput p3, p0, Lcom/android/server/policy/BarController;->mUnhideFlag:I

    .line 102
    iput p4, p0, Lcom/android/server/policy/BarController;->mTranslucentFlag:I

    .line 103
    iput p5, p0, Lcom/android/server/policy/BarController;->mStatusBarManagerId:I

    .line 104
    iput p6, p0, Lcom/android/server/policy/BarController;->mTranslucentWmFlag:I

    .line 105
    iput p7, p0, Lcom/android/server/policy/BarController;->mTransparentFlag:I

    .line 106
    new-instance v0, Lcom/android/server/policy/BarController$BarHandler;

    invoke-direct {v0, p0, v1}, Lcom/android/server/policy/BarController$BarHandler;-><init>(Lcom/android/server/policy/BarController;Lcom/android/server/policy/BarController$1;)V

    iput-object v0, p0, Lcom/android/server/policy/BarController;->mHandler:Landroid/os/Handler;

    .line 108
    new-instance v0, Landroid/os/Binder;

    invoke-direct {v0}, Landroid/os/Binder;-><init>()V

    iput-object v0, p0, Lcom/android/server/policy/BarController;->mBoost:Landroid/os/IBinder;

    .line 110
    return-void
.end method

.method static synthetic access$100(Lcom/android/server/policy/BarController;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/server/policy/BarController;

    .line 46
    iget v0, p0, Lcom/android/server/policy/BarController;->mStatusBarManagerId:I

    return v0
.end method

.method static synthetic access$200(Lcom/android/server/policy/BarController;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/policy/BarController;
    .param p1, "x1"    # I

    .line 46
    invoke-direct {p0, p1}, Lcom/android/server/policy/BarController;->acquirePerformanceLock(I)V

    return-void
.end method

.method static synthetic access$300(Lcom/android/server/policy/BarController;)Lcom/android/server/policy/BarController$OnBarVisibilityChangedListener;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/policy/BarController;

    .line 46
    iget-object v0, p0, Lcom/android/server/policy/BarController;->mVisibilityChangeListener:Lcom/android/server/policy/BarController$OnBarVisibilityChangedListener;

    return-object v0
.end method

.method private acquirePerformanceLock(I)V
    .locals 8
    .param p1, "state"    # I

    .line 422
    const/4 v0, 0x1

    .line 423
    .local v0, "orien":I
    iget-object v1, p0, Lcom/android/server/policy/BarController;->mWin:Lcom/android/server/policy/WindowManagerPolicy$WindowState;

    if-eqz v1, :cond_0

    .line 424
    iget-object v1, p0, Lcom/android/server/policy/BarController;->mWin:Lcom/android/server/policy/WindowManagerPolicy$WindowState;

    invoke-interface {v1}, Lcom/android/server/policy/WindowManagerPolicy$WindowState;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v0, v1, Landroid/content/res/Configuration;->orientation:I

    .line 427
    :cond_0
    invoke-static {}, Landroid/os/BSPApplicationManager$Trigger;->getForegroundPackageName()Ljava/util/List;

    move-result-object v1

    .line 428
    .local v1, "foregroundPkgs":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-nez v1, :cond_1

    .line 429
    return-void

    .line 432
    :cond_1
    const/4 v2, 0x0

    .line 433
    .local v2, "isInPackgaeBlackList":Z
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 434
    .local v4, "pkg":Ljava/lang/String;
    sget-object v5, Lcom/android/server/policy/BarController;->mPackageBlackList:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 435
    .local v6, "pkglist":Ljava/lang/String;
    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 436
    const/4 v2, 0x1

    .line 437
    goto :goto_2

    .line 439
    .end local v6    # "pkglist":Ljava/lang/String;
    :cond_2
    goto :goto_1

    .line 440
    :cond_3
    :goto_2
    if-eqz v2, :cond_4

    .line 441
    goto :goto_3

    .line 443
    .end local v4    # "pkg":Ljava/lang/String;
    :cond_4
    goto :goto_0

    .line 445
    :cond_5
    :goto_3
    if-eqz v2, :cond_6

    const/4 v3, 0x2

    if-ne p1, v3, :cond_6

    if-ne v0, v3, :cond_6

    iget-boolean v3, p0, Lcom/android/server/policy/BarController;->mIsPerfLockAcquired:Z

    if-nez v3, :cond_6

    .line 449
    iget-object v3, p0, Lcom/android/server/policy/BarController;->mBoost:Landroid/os/IBinder;

    const-string v4, "com.media.codec"

    const/16 v5, 0xc

    const-wide/16 v6, 0x0

    .line 450
    invoke-static {v3, v4, v5, v6, v7}, Landroid/os/BSPApplicationManager$Trigger;->acquirePerformanceLock(Landroid/os/IBinder;Ljava/lang/String;IJ)V

    .line 455
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/android/server/policy/BarController;->mIsPerfLockAcquired:Z

    goto :goto_4

    .line 456
    :cond_6
    iget-boolean v3, p0, Lcom/android/server/policy/BarController;->mIsPerfLockAcquired:Z

    if-eqz v3, :cond_7

    .line 457
    iget-object v3, p0, Lcom/android/server/policy/BarController;->mBoost:Landroid/os/IBinder;

    invoke-static {v3}, Landroid/os/BSPApplicationManager$Trigger;->releasePerformanceLock(Landroid/os/IBinder;)V

    .line 458
    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/android/server/policy/BarController;->mIsPerfLockAcquired:Z

    .line 460
    :cond_7
    :goto_4
    return-void
.end method

.method private computeNavigesStateLw(Z)I
    .locals 3
    .param p1, "show"    # Z

    .line 193
    const/4 v0, 0x2

    if-nez p1, :cond_0

    .line 194
    return v0

    .line 195
    :cond_0
    iget v1, p0, Lcom/android/server/policy/BarController;->mState:I

    const/4 v2, 0x0

    if-ne v1, v0, :cond_1

    if-eqz p1, :cond_1

    .line 196
    return v2

    .line 197
    :cond_1
    if-eqz p1, :cond_2

    .line 198
    return v2

    .line 200
    :cond_2
    iget v0, p0, Lcom/android/server/policy/BarController;->mState:I

    return v0
.end method

.method private computeStateLw(ZZLcom/android/server/policy/WindowManagerPolicy$WindowState;Z)I
    .locals 6
    .param p1, "wasVis"    # Z
    .param p2, "wasAnim"    # Z
    .param p3, "win"    # Lcom/android/server/policy/WindowManagerPolicy$WindowState;
    .param p4, "change"    # Z

    .line 247
    invoke-interface {p3}, Lcom/android/server/policy/WindowManagerPolicy$WindowState;->isDrawnLw()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 248
    invoke-interface {p3}, Lcom/android/server/policy/WindowManagerPolicy$WindowState;->isVisibleLw()Z

    move-result v0

    .line 249
    .local v0, "vis":Z
    invoke-interface {p3}, Lcom/android/server/policy/WindowManagerPolicy$WindowState;->isAnimatingLw()Z

    move-result v1

    .line 250
    .local v1, "anim":Z
    iget v2, p0, Lcom/android/server/policy/BarController;->mState:I

    const/4 v3, 0x2

    const/4 v4, 0x1

    if-ne v2, v4, :cond_0

    if-nez p4, :cond_0

    if-nez v0, :cond_0

    .line 251
    return v3

    .line 252
    :cond_0
    iget v2, p0, Lcom/android/server/policy/BarController;->mState:I

    const/4 v5, 0x0

    if-ne v2, v3, :cond_1

    if-eqz v0, :cond_1

    .line 253
    return v5

    .line 254
    :cond_1
    if-eqz p4, :cond_3

    .line 255
    if-eqz p1, :cond_2

    if-eqz v0, :cond_2

    if-nez p2, :cond_2

    if-eqz v1, :cond_2

    .line 256
    return v4

    .line 258
    :cond_2
    return v5

    .line 262
    .end local v0    # "vis":Z
    .end local v1    # "anim":Z
    :cond_3
    iget v0, p0, Lcom/android/server/policy/BarController;->mState:I

    return v0
.end method

.method private setTransientBarState(I)V
    .locals 2
    .param p1, "state"    # I

    .line 359
    iget-object v0, p0, Lcom/android/server/policy/BarController;->mWin:Lcom/android/server/policy/WindowManagerPolicy$WindowState;

    if-eqz v0, :cond_2

    iget v0, p0, Lcom/android/server/policy/BarController;->mTransientBarState:I

    if-eq p1, v0, :cond_2

    .line 360
    iget v0, p0, Lcom/android/server/policy/BarController;->mTransientBarState:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    if-ne p1, v1, :cond_1

    .line 361
    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/policy/BarController;->mLastTranslucent:J

    .line 363
    :cond_1
    iput p1, p0, Lcom/android/server/policy/BarController;->mTransientBarState:I

    .line 366
    :cond_2
    return-void
.end method

.method private static transientBarStateToString(I)Ljava/lang/String;
    .locals 3
    .param p0, "state"    # I

    .line 378
    const/4 v0, 0x3

    if-ne p0, v0, :cond_0

    const-string v0, "TRANSIENT_BAR_HIDING"

    return-object v0

    .line 379
    :cond_0
    const/4 v0, 0x2

    if-ne p0, v0, :cond_1

    const-string v0, "TRANSIENT_BAR_SHOWING"

    return-object v0

    .line 380
    :cond_1
    const/4 v0, 0x1

    if-ne p0, v0, :cond_2

    const-string v0, "TRANSIENT_BAR_SHOW_REQUESTED"

    return-object v0

    .line 381
    :cond_2
    if-nez p0, :cond_3

    const-string v0, "TRANSIENT_BAR_NONE"

    return-object v0

    .line 382
    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown state "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private updateStateLw(I)Z
    .locals 4
    .param p1, "state"    # I

    .line 266
    iget v0, p0, Lcom/android/server/policy/BarController;->mState:I

    if-eq p1, v0, :cond_0

    .line 267
    iput p1, p0, Lcom/android/server/policy/BarController;->mState:I

    .line 269
    iget-object v0, p0, Lcom/android/server/policy/BarController;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/policy/BarController$1;

    invoke-direct {v1, p0, p1}, Lcom/android/server/policy/BarController$1;-><init>(Lcom/android/server/policy/BarController;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 279
    iget-object v0, p0, Lcom/android/server/policy/BarController;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/policy/BarController$2;

    invoke-direct {v1, p0, p1}, Lcom/android/server/policy/BarController$2;-><init>(Lcom/android/server/policy/BarController;I)V

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 286
    const/4 v0, 0x1

    return v0

    .line 288
    :cond_0
    const/4 v0, 0x0

    return v0
.end method


# virtual methods
.method public adjustSystemUiVisibilityLw(II)V
    .locals 2
    .param p1, "oldVis"    # I
    .param p2, "vis"    # I

    .line 152
    iget-object v0, p0, Lcom/android/server/policy/BarController;->mWin:Lcom/android/server/policy/WindowManagerPolicy$WindowState;

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/server/policy/BarController;->mTransientBarState:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    iget v0, p0, Lcom/android/server/policy/BarController;->mTransientFlag:I

    and-int/2addr v0, p2

    if-nez v0, :cond_0

    .line 155
    const/4 v0, 0x3

    invoke-direct {p0, v0}, Lcom/android/server/policy/BarController;->setTransientBarState(I)V

    .line 156
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/server/policy/BarController;->setBarShowingLw(Z)Z

    goto :goto_0

    .line 157
    :cond_0
    iget-object v0, p0, Lcom/android/server/policy/BarController;->mWin:Lcom/android/server/policy/WindowManagerPolicy$WindowState;

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/android/server/policy/BarController;->mUnhideFlag:I

    and-int/2addr v0, p1

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/android/server/policy/BarController;->mUnhideFlag:I

    and-int/2addr v0, p2

    if-nez v0, :cond_1

    .line 159
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/server/policy/BarController;->setBarShowingLw(Z)Z

    .line 161
    :cond_1
    :goto_0
    return-void
.end method

.method public applyTranslucentFlagLw(Lcom/android/server/policy/WindowManagerPolicy$WindowState;II)I
    .locals 2
    .param p1, "win"    # Lcom/android/server/policy/WindowManagerPolicy$WindowState;
    .param p2, "vis"    # I
    .param p3, "oldVis"    # I

    .line 164
    iget-object v0, p0, Lcom/android/server/policy/BarController;->mWin:Lcom/android/server/policy/WindowManagerPolicy$WindowState;

    if-eqz v0, :cond_3

    .line 165
    if-eqz p1, :cond_2

    invoke-interface {p1}, Lcom/android/server/policy/WindowManagerPolicy$WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    and-int/lit16 v0, v0, 0x200

    if-nez v0, :cond_2

    .line 167
    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/android/server/policy/PolicyControl;->getWindowFlags(Lcom/android/server/policy/WindowManagerPolicy$WindowState;Landroid/view/WindowManager$LayoutParams;)I

    move-result v0

    .line 168
    .local v0, "fl":I
    iget v1, p0, Lcom/android/server/policy/BarController;->mTranslucentWmFlag:I

    and-int/2addr v1, v0

    if-eqz v1, :cond_0

    .line 169
    iget v1, p0, Lcom/android/server/policy/BarController;->mTranslucentFlag:I

    or-int/2addr p2, v1

    goto :goto_0

    .line 171
    :cond_0
    iget v1, p0, Lcom/android/server/policy/BarController;->mTranslucentFlag:I

    not-int v1, v1

    and-int/2addr p2, v1

    .line 173
    :goto_0
    const/high16 v1, -0x80000000

    and-int/2addr v1, v0

    if-eqz v1, :cond_1

    .line 174
    invoke-virtual {p0, p1}, Lcom/android/server/policy/BarController;->isTransparentAllowed(Lcom/android/server/policy/WindowManagerPolicy$WindowState;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 175
    iget v1, p0, Lcom/android/server/policy/BarController;->mTransparentFlag:I

    or-int/2addr p2, v1

    goto :goto_1

    .line 177
    :cond_1
    iget v1, p0, Lcom/android/server/policy/BarController;->mTransparentFlag:I

    not-int v1, v1

    and-int/2addr p2, v1

    .line 179
    .end local v0    # "fl":I
    :goto_1
    goto :goto_2

    .line 180
    :cond_2
    iget v0, p0, Lcom/android/server/policy/BarController;->mTranslucentFlag:I

    not-int v0, v0

    and-int/2addr v0, p2

    iget v1, p0, Lcom/android/server/policy/BarController;->mTranslucentFlag:I

    and-int/2addr v1, p3

    or-int p2, v0, v1

    .line 181
    iget v0, p0, Lcom/android/server/policy/BarController;->mTransparentFlag:I

    not-int v0, v0

    and-int/2addr v0, p2

    iget v1, p0, Lcom/android/server/policy/BarController;->mTransparentFlag:I

    and-int/2addr v1, p3

    or-int p2, v0, v1

    .line 184
    :cond_3
    :goto_2
    return p2
.end method

.method public checkHiddenLw()Z
    .locals 3

    .line 292
    iget-object v0, p0, Lcom/android/server/policy/BarController;->mWin:Lcom/android/server/policy/WindowManagerPolicy$WindowState;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/server/policy/BarController;->mWin:Lcom/android/server/policy/WindowManagerPolicy$WindowState;

    invoke-interface {v0}, Lcom/android/server/policy/WindowManagerPolicy$WindowState;->isDrawnLw()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 293
    iget-object v0, p0, Lcom/android/server/policy/BarController;->mWin:Lcom/android/server/policy/WindowManagerPolicy$WindowState;

    invoke-interface {v0}, Lcom/android/server/policy/WindowManagerPolicy$WindowState;->isVisibleLw()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/server/policy/BarController;->mWin:Lcom/android/server/policy/WindowManagerPolicy$WindowState;

    invoke-interface {v0}, Lcom/android/server/policy/WindowManagerPolicy$WindowState;->isAnimatingLw()Z

    move-result v0

    if-nez v0, :cond_0

    .line 294
    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lcom/android/server/policy/BarController;->updateStateLw(I)Z

    .line 296
    :cond_0
    iget v0, p0, Lcom/android/server/policy/BarController;->mTransientBarState:I

    const/4 v2, 0x3

    if-ne v0, v2, :cond_2

    iget-object v0, p0, Lcom/android/server/policy/BarController;->mWin:Lcom/android/server/policy/WindowManagerPolicy$WindowState;

    invoke-interface {v0}, Lcom/android/server/policy/WindowManagerPolicy$WindowState;->isVisibleLw()Z

    move-result v0

    if-nez v0, :cond_2

    .line 298
    invoke-direct {p0, v1}, Lcom/android/server/policy/BarController;->setTransientBarState(I)V

    .line 299
    iget-boolean v0, p0, Lcom/android/server/policy/BarController;->mPendingShow:Z

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    .line 300
    invoke-virtual {p0, v2}, Lcom/android/server/policy/BarController;->setBarShowingLw(Z)Z

    .line 301
    iput-boolean v1, p0, Lcom/android/server/policy/BarController;->mPendingShow:Z

    .line 303
    :cond_1
    return v2

    .line 306
    :cond_2
    return v1
.end method

.method public checkShowTransientBarLw()Z
    .locals 3

    .line 310
    iget v0, p0, Lcom/android/server/policy/BarController;->mTransientBarState:I

    const/4 v1, 0x0

    const/4 v2, 0x2

    if-ne v0, v2, :cond_0

    .line 312
    return v1

    .line 313
    :cond_0
    iget v0, p0, Lcom/android/server/policy/BarController;->mTransientBarState:I

    const/4 v2, 0x1

    if-ne v0, v2, :cond_1

    .line 315
    return v1

    .line 316
    :cond_1
    iget-object v0, p0, Lcom/android/server/policy/BarController;->mWin:Lcom/android/server/policy/WindowManagerPolicy$WindowState;

    if-nez v0, :cond_2

    .line 318
    return v1

    .line 319
    :cond_2
    iget-object v0, p0, Lcom/android/server/policy/BarController;->mWin:Lcom/android/server/policy/WindowManagerPolicy$WindowState;

    invoke-interface {v0}, Lcom/android/server/policy/WindowManagerPolicy$WindowState;->isDisplayedLw()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 321
    return v1

    .line 323
    :cond_3
    return v2
.end method

.method public dump(Ljava/io/PrintWriter;Ljava/lang/String;)V
    .locals 2
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "prefix"    # Ljava/lang/String;

    .line 393
    iget-object v0, p0, Lcom/android/server/policy/BarController;->mWin:Lcom/android/server/policy/WindowManagerPolicy$WindowState;

    if-eqz v0, :cond_0

    .line 394
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/policy/BarController;->mTag:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 395
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "  "

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "mState"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const/16 v0, 0x3d

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(C)V

    .line 396
    iget v1, p0, Lcom/android/server/policy/BarController;->mState:I

    invoke-static {v1}, Landroid/app/StatusBarManager;->windowStateToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 397
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v1, "  "

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v1, "mTransientBar"

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(C)V

    .line 398
    iget v0, p0, Lcom/android/server/policy/BarController;->mTransientBarState:I

    invoke-static {v0}, Lcom/android/server/policy/BarController;->transientBarStateToString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 399
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "  mContentFrame="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/policy/BarController;->mContentFrame:Landroid/graphics/Rect;

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 401
    :cond_0
    return-void
.end method

.method protected getStatusBarInternal()Lcom/android/server/statusbar/StatusBarManagerInternal;
    .locals 2

    .line 369
    iget-object v0, p0, Lcom/android/server/policy/BarController;->mServiceAquireLock:Ljava/lang/Object;

    monitor-enter v0

    .line 370
    :try_start_0
    iget-object v1, p0, Lcom/android/server/policy/BarController;->mStatusBarInternal:Lcom/android/server/statusbar/StatusBarManagerInternal;

    if-nez v1, :cond_0

    .line 371
    const-class v1, Lcom/android/server/statusbar/StatusBarManagerInternal;

    invoke-static {v1}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/statusbar/StatusBarManagerInternal;

    iput-object v1, p0, Lcom/android/server/policy/BarController;->mStatusBarInternal:Lcom/android/server/statusbar/StatusBarManagerInternal;

    .line 373
    :cond_0
    iget-object v1, p0, Lcom/android/server/policy/BarController;->mStatusBarInternal:Lcom/android/server/statusbar/StatusBarManagerInternal;

    monitor-exit v0

    return-object v1

    .line 374
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public isTransientShowRequested()Z
    .locals 2

    .line 144
    iget v0, p0, Lcom/android/server/policy/BarController;->mTransientBarState:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public isTransientShowing()Z
    .locals 2

    .line 140
    iget v0, p0, Lcom/android/server/policy/BarController;->mTransientBarState:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method isTransparentAllowed(Lcom/android/server/policy/WindowManagerPolicy$WindowState;)Z
    .locals 1
    .param p1, "win"    # Lcom/android/server/policy/WindowManagerPolicy$WindowState;

    .line 188
    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/android/server/policy/BarController;->mContentFrame:Landroid/graphics/Rect;

    invoke-interface {p1, v0}, Lcom/android/server/policy/WindowManagerPolicy$WindowState;->isLetterboxedOverlappingWith(Landroid/graphics/Rect;)Z

    move-result v0

    if-nez v0, :cond_0

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

.method public setBarShowingLw(Z)Z
    .locals 8
    .param p1, "show"    # Z

    .line 206
    iget-object v0, p0, Lcom/android/server/policy/BarController;->mWin:Lcom/android/server/policy/WindowManagerPolicy$WindowState;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/server/policy/BarController;->mTag:Ljava/lang/String;

    const-string v1, "NavigationBar"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 207
    invoke-direct {p0, p1}, Lcom/android/server/policy/BarController;->computeNavigesStateLw(Z)I

    move-result v0

    .line 208
    .local v0, "naviState":I
    invoke-direct {p0, v0}, Lcom/android/server/policy/BarController;->updateStateLw(I)Z

    .line 212
    .end local v0    # "naviState":I
    :cond_0
    iget-object v0, p0, Lcom/android/server/policy/BarController;->mWin:Lcom/android/server/policy/WindowManagerPolicy$WindowState;

    const/4 v1, 0x0

    if-nez v0, :cond_1

    return v1

    .line 213
    :cond_1
    const/4 v0, 0x1

    if-eqz p1, :cond_2

    iget v2, p0, Lcom/android/server/policy/BarController;->mTransientBarState:I

    const/4 v3, 0x3

    if-ne v2, v3, :cond_2

    .line 214
    iput-boolean v0, p0, Lcom/android/server/policy/BarController;->mPendingShow:Z

    .line 215
    return v1

    .line 217
    :cond_2
    iget-object v2, p0, Lcom/android/server/policy/BarController;->mWin:Lcom/android/server/policy/WindowManagerPolicy$WindowState;

    invoke-interface {v2}, Lcom/android/server/policy/WindowManagerPolicy$WindowState;->isVisibleLw()Z

    move-result v2

    .line 218
    .local v2, "wasVis":Z
    iget-object v3, p0, Lcom/android/server/policy/BarController;->mWin:Lcom/android/server/policy/WindowManagerPolicy$WindowState;

    invoke-interface {v3}, Lcom/android/server/policy/WindowManagerPolicy$WindowState;->isAnimatingLw()Z

    move-result v3

    .line 219
    .local v3, "wasAnim":Z
    if-eqz p1, :cond_4

    iget-object v4, p0, Lcom/android/server/policy/BarController;->mWin:Lcom/android/server/policy/WindowManagerPolicy$WindowState;

    iget-boolean v5, p0, Lcom/android/server/policy/BarController;->mNoAnimationOnNextShow:Z

    if-nez v5, :cond_3

    invoke-virtual {p0}, Lcom/android/server/policy/BarController;->skipAnimation()Z

    move-result v5

    if-nez v5, :cond_3

    move v5, v0

    goto :goto_0

    :cond_3
    move v5, v1

    :goto_0
    invoke-interface {v4, v5}, Lcom/android/server/policy/WindowManagerPolicy$WindowState;->showLw(Z)Z

    move-result v4

    goto :goto_2

    .line 220
    :cond_4
    iget-object v4, p0, Lcom/android/server/policy/BarController;->mWin:Lcom/android/server/policy/WindowManagerPolicy$WindowState;

    iget-boolean v5, p0, Lcom/android/server/policy/BarController;->mNoAnimationOnNextShow:Z

    if-nez v5, :cond_5

    invoke-virtual {p0}, Lcom/android/server/policy/BarController;->skipAnimation()Z

    move-result v5

    if-nez v5, :cond_5

    move v5, v0

    goto :goto_1

    :cond_5
    move v5, v1

    :goto_1
    invoke-interface {v4, v5}, Lcom/android/server/policy/WindowManagerPolicy$WindowState;->hideLw(Z)Z

    move-result v4

    .line 221
    .local v4, "change":Z
    :goto_2
    iput-boolean v1, p0, Lcom/android/server/policy/BarController;->mNoAnimationOnNextShow:Z

    .line 222
    iget-object v5, p0, Lcom/android/server/policy/BarController;->mWin:Lcom/android/server/policy/WindowManagerPolicy$WindowState;

    invoke-direct {p0, v2, v3, v5, v4}, Lcom/android/server/policy/BarController;->computeStateLw(ZZLcom/android/server/policy/WindowManagerPolicy$WindowState;Z)I

    move-result v5

    .line 223
    .local v5, "state":I
    invoke-direct {p0, v5}, Lcom/android/server/policy/BarController;->updateStateLw(I)Z

    move-result v6

    .line 225
    .local v6, "stateChanged":Z
    if-eqz v4, :cond_6

    iget-object v7, p0, Lcom/android/server/policy/BarController;->mVisibilityChangeListener:Lcom/android/server/policy/BarController$OnBarVisibilityChangedListener;

    if-eqz v7, :cond_6

    .line 226
    iget-object v7, p0, Lcom/android/server/policy/BarController;->mHandler:Landroid/os/Handler;

    invoke-virtual {v7, v0, p1, v1}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v7

    invoke-virtual {v7}, Landroid/os/Message;->sendToTarget()V

    .line 229
    :cond_6
    if-nez v4, :cond_8

    if-eqz v6, :cond_7

    goto :goto_3

    :cond_7
    move v0, v1

    nop

    :cond_8
    :goto_3
    return v0
.end method

.method public setContentFrame(Landroid/graphics/Rect;)V
    .locals 1
    .param p1, "frame"    # Landroid/graphics/Rect;

    .line 122
    iget-object v0, p0, Lcom/android/server/policy/BarController;->mContentFrame:Landroid/graphics/Rect;

    invoke-virtual {v0, p1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 123
    return-void
.end method

.method setOnBarVisibilityChangedListener(Lcom/android/server/policy/BarController$OnBarVisibilityChangedListener;Z)V
    .locals 4
    .param p1, "listener"    # Lcom/android/server/policy/BarController$OnBarVisibilityChangedListener;
    .param p2, "invokeWithState"    # Z

    .line 234
    iput-object p1, p0, Lcom/android/server/policy/BarController;->mVisibilityChangeListener:Lcom/android/server/policy/BarController$OnBarVisibilityChangedListener;

    .line 235
    if-eqz p2, :cond_1

    .line 237
    iget-object v0, p0, Lcom/android/server/policy/BarController;->mHandler:Landroid/os/Handler;

    .line 238
    iget v1, p0, Lcom/android/server/policy/BarController;->mState:I

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-nez v1, :cond_0

    move v1, v3

    goto :goto_0

    :cond_0
    move v1, v2

    .line 237
    :goto_0
    invoke-virtual {v0, v3, v1, v2}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    .line 238
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 240
    :cond_1
    return-void
.end method

.method public setShowTransparent(Z)V
    .locals 1
    .param p1, "transparent"    # Z

    .line 126
    iget-boolean v0, p0, Lcom/android/server/policy/BarController;->mShowTransparent:Z

    if-eq p1, v0, :cond_0

    .line 127
    iput-boolean p1, p0, Lcom/android/server/policy/BarController;->mShowTransparent:Z

    .line 128
    iput-boolean p1, p0, Lcom/android/server/policy/BarController;->mSetUnHideFlagWhenNextTransparent:Z

    .line 129
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/policy/BarController;->mNoAnimationOnNextShow:Z

    .line 131
    :cond_0
    return-void
.end method

.method public setWindow(Lcom/android/server/policy/WindowManagerPolicy$WindowState;)V
    .locals 0
    .param p1, "win"    # Lcom/android/server/policy/WindowManagerPolicy$WindowState;

    .line 113
    iput-object p1, p0, Lcom/android/server/policy/BarController;->mWin:Lcom/android/server/policy/WindowManagerPolicy$WindowState;

    .line 114
    return-void
.end method

.method public showTransient()V
    .locals 1

    .line 134
    iget-object v0, p0, Lcom/android/server/policy/BarController;->mWin:Lcom/android/server/policy/WindowManagerPolicy$WindowState;

    if-eqz v0, :cond_0

    .line 135
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/server/policy/BarController;->setTransientBarState(I)V

    .line 137
    :cond_0
    return-void
.end method

.method protected skipAnimation()Z
    .locals 1

    .line 243
    iget-object v0, p0, Lcom/android/server/policy/BarController;->mWin:Lcom/android/server/policy/WindowManagerPolicy$WindowState;

    invoke-interface {v0}, Lcom/android/server/policy/WindowManagerPolicy$WindowState;->isDrawnLw()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public updateVisibilityLw(ZII)I
    .locals 2
    .param p1, "transientAllowed"    # Z
    .param p2, "oldVis"    # I
    .param p3, "vis"    # I

    .line 328
    iget-object v0, p0, Lcom/android/server/policy/BarController;->mWin:Lcom/android/server/policy/WindowManagerPolicy$WindowState;

    if-nez v0, :cond_0

    return p3

    .line 329
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/policy/BarController;->isTransientShowing()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/android/server/policy/BarController;->isTransientShowRequested()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 330
    :cond_1
    if-eqz p1, :cond_3

    .line 331
    iget v0, p0, Lcom/android/server/policy/BarController;->mTransientFlag:I

    or-int/2addr p3, v0

    .line 332
    iget v0, p0, Lcom/android/server/policy/BarController;->mTransientFlag:I

    and-int/2addr v0, p2

    if-nez v0, :cond_2

    .line 333
    iget v0, p0, Lcom/android/server/policy/BarController;->mUnhideFlag:I

    or-int/2addr p3, v0

    .line 335
    :cond_2
    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lcom/android/server/policy/BarController;->setTransientBarState(I)V

    goto :goto_0

    .line 337
    :cond_3
    invoke-direct {p0, v1}, Lcom/android/server/policy/BarController;->setTransientBarState(I)V

    .line 340
    :cond_4
    :goto_0
    iget-boolean v0, p0, Lcom/android/server/policy/BarController;->mShowTransparent:Z

    if-eqz v0, :cond_5

    .line 341
    iget v0, p0, Lcom/android/server/policy/BarController;->mTransparentFlag:I

    or-int/2addr p3, v0

    .line 342
    iget-boolean v0, p0, Lcom/android/server/policy/BarController;->mSetUnHideFlagWhenNextTransparent:Z

    if-eqz v0, :cond_5

    .line 343
    iget v0, p0, Lcom/android/server/policy/BarController;->mUnhideFlag:I

    or-int/2addr p3, v0

    .line 344
    iput-boolean v1, p0, Lcom/android/server/policy/BarController;->mSetUnHideFlagWhenNextTransparent:Z

    .line 347
    :cond_5
    iget v0, p0, Lcom/android/server/policy/BarController;->mTransientBarState:I

    if-eqz v0, :cond_6

    .line 348
    iget v0, p0, Lcom/android/server/policy/BarController;->mTransientFlag:I

    or-int/2addr p3, v0

    .line 349
    and-int/lit8 p3, p3, -0x2

    .line 351
    :cond_6
    iget v0, p0, Lcom/android/server/policy/BarController;->mTranslucentFlag:I

    and-int/2addr v0, p3

    if-nez v0, :cond_7

    iget v0, p0, Lcom/android/server/policy/BarController;->mTranslucentFlag:I

    and-int/2addr v0, p2

    if-nez v0, :cond_7

    or-int v0, p3, p2

    iget v1, p0, Lcom/android/server/policy/BarController;->mTransparentFlag:I

    and-int/2addr v0, v1

    if-eqz v0, :cond_8

    .line 353
    :cond_7
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/policy/BarController;->mLastTranslucent:J

    .line 355
    :cond_8
    return p3
.end method

.method public wasRecentlyTranslucent()Z
    .locals 4

    .line 148
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/android/server/policy/BarController;->mLastTranslucent:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x3e8

    cmp-long v0, v0, v2

    if-gez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public writeToProto(Landroid/util/proto/ProtoOutputStream;J)V
    .locals 5
    .param p1, "proto"    # Landroid/util/proto/ProtoOutputStream;
    .param p2, "fieldId"    # J

    .line 386
    invoke-virtual {p1, p2, p3}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v0

    .line 387
    .local v0, "token":J
    iget v2, p0, Lcom/android/server/policy/BarController;->mState:I

    const-wide v3, 0x10e00000001L

    invoke-virtual {p1, v3, v4, v2}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 388
    iget v2, p0, Lcom/android/server/policy/BarController;->mTransientBarState:I

    const-wide v3, 0x10e00000002L

    invoke-virtual {p1, v3, v4, v2}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 389
    invoke-virtual {p1, v0, v1}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 390
    return-void
.end method
