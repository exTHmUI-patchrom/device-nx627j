.class public Lcom/android/server/wm/NaviGesStubController;
.super Ljava/lang/Object;
.source "NaviGesStubController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/wm/NaviGesStubController$NaviGestureThumbnailCallback;,
        Lcom/android/server/wm/NaviGesStubController$NaviGestureStubListenerImpl;,
        Lcom/android/server/wm/NaviGesStubController$FinishRunnable;,
        Lcom/android/server/wm/NaviGesStubController$InvalidateRunnable;
    }
.end annotation


# instance fields
.field private mDisplayContent:Lcom/android/server/wm/DisplayContent;

.field private mGestureFinishRunnable:Ljava/lang/Runnable;

.field private mInvisibleAppTokens:Ljava/util/Set;

.field private mIsAppTransitionSkipped:Z

.field private mKeepWallpaperShowing:Z

.field private final mLock:Ljava/lang/Object;

.field private mNaviGesFinishRunnable:Ljava/lang/Runnable;

.field private mNaviGesStubListener:Landroid/view/INaviGestureStubListener;

.field private mNaviGestureThumbnailCallback:Lcom/android/server/wm/NaviGesStubController$NaviGestureThumbnailCallback;

.field private mService:Lcom/android/server/wm/WindowManagerService;

.field private mWindowAlphaMap:Ljava/util/Map;


# direct methods
.method constructor <init>(Lcom/android/server/wm/WindowManagerService;Lcom/android/server/wm/DisplayContent;)V
    .locals 1
    .param p1, "service"    # Lcom/android/server/wm/WindowManagerService;
    .param p2, "displayContent"    # Lcom/android/server/wm/DisplayContent;

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/NaviGesStubController;->mInvisibleAppTokens:Ljava/util/Set;

    .line 28
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/NaviGesStubController;->mWindowAlphaMap:Ljava/util/Map;

    .line 29
    iput-object p1, p0, Lcom/android/server/wm/NaviGesStubController;->mService:Lcom/android/server/wm/WindowManagerService;

    .line 30
    iput-object p2, p0, Lcom/android/server/wm/NaviGesStubController;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    .line 31
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/NaviGesStubController;->mLock:Ljava/lang/Object;

    .line 32
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/wm/NaviGesStubController;)Lcom/android/server/wm/WindowManagerService;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wm/NaviGesStubController;

    .line 14
    iget-object v0, p0, Lcom/android/server/wm/NaviGesStubController;->mService:Lcom/android/server/wm/WindowManagerService;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/server/wm/NaviGesStubController;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wm/NaviGesStubController;

    .line 14
    invoke-direct {p0}, Lcom/android/server/wm/NaviGesStubController;->reset()V

    return-void
.end method

.method static synthetic access$200(Lcom/android/server/wm/NaviGesStubController;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wm/NaviGesStubController;
    .param p1, "x1"    # Z

    .line 14
    invoke-direct {p0, p1}, Lcom/android/server/wm/NaviGesStubController;->notifyGestureFinish(Z)V

    return-void
.end method

.method static synthetic access$300(Lcom/android/server/wm/NaviGesStubController;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wm/NaviGesStubController;

    .line 14
    invoke-direct {p0}, Lcom/android/server/wm/NaviGesStubController;->notifyGestureReady()V

    return-void
.end method

.method static synthetic access$400(Lcom/android/server/wm/NaviGesStubController;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wm/NaviGesStubController;

    .line 14
    invoke-direct {p0}, Lcom/android/server/wm/NaviGesStubController;->notifyGestureStart()V

    return-void
.end method

.method static synthetic access$500(Lcom/android/server/wm/NaviGesStubController;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wm/NaviGesStubController;

    .line 14
    invoke-direct {p0}, Lcom/android/server/wm/NaviGesStubController;->notifySkipAppTransition()V

    return-void
.end method

.method public static synthetic lambda$notifyGestureStart$0(Lcom/android/server/wm/NaviGesStubController;Lcom/android/server/wm/WindowState;)V
    .locals 3
    .param p1, "w"    # Lcom/android/server/wm/WindowState;

    .line 51
    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "cn.nubia.launcher/com.android.launcher3.Launcher"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p1, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    if-eqz v0, :cond_0

    .line 52
    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->isVisible()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->getAppToken()Landroid/view/IApplicationToken;

    move-result-object v0

    if-nez v0, :cond_1

    :cond_0
    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->isInputMethodWindow()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 53
    :cond_1
    iget-object v0, p0, Lcom/android/server/wm/NaviGesStubController;->mWindowAlphaMap:Ljava/util/Map;

    iget-object v1, p1, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    iget v1, v1, Lcom/android/server/wm/WindowStateAnimator;->mAlpha:F

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 54
    iget-object v0, p1, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    const/4 v1, 0x0

    iput v1, v0, Lcom/android/server/wm/WindowStateAnimator;->mAlpha:F

    .line 55
    const-string v0, "SystemUI"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Recents notifyGestureStart setWindowAlpha zero window ="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 57
    :cond_2
    return-void
.end method

.method private notifyGestureFinish(Z)V
    .locals 4
    .param p1, "isReset"    # Z

    .line 35
    iget-object v0, p0, Lcom/android/server/wm/NaviGesStubController;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    new-instance v1, Lcom/android/server/wm/NaviGesStubController$FinishRunnable;

    invoke-direct {v1, p0}, Lcom/android/server/wm/NaviGesStubController$FinishRunnable;-><init>(Lcom/android/server/wm/NaviGesStubController;)V

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/wm/WindowManagerService$H;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 36
    return-void
.end method

.method private notifyGestureReady()V
    .locals 3

    .line 39
    iget-object v0, p0, Lcom/android/server/wm/NaviGesStubController;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    iget-object v1, p0, Lcom/android/server/wm/NaviGesStubController;->mNaviGesFinishRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lcom/android/server/wm/WindowManagerService$H;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 40
    invoke-direct {p0}, Lcom/android/server/wm/NaviGesStubController;->reset()V

    .line 41
    iget-object v0, p0, Lcom/android/server/wm/NaviGesStubController;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v0}, Lcom/android/server/wm/DisplayContent;->findFocusedWindow()Lcom/android/server/wm/WindowState;

    move-result-object v0

    .line 42
    .local v0, "window":Lcom/android/server/wm/WindowState;
    if-eqz v0, :cond_0

    iget-object v1, v0, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    if-eqz v1, :cond_0

    .line 43
    iget-object v1, p0, Lcom/android/server/wm/NaviGesStubController;->mInvisibleAppTokens:Ljava/util/Set;

    iget-object v2, v0, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    invoke-interface {v1, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 44
    iget-object v1, p0, Lcom/android/server/wm/NaviGesStubController;->mNaviGestureThumbnailCallback:Lcom/android/server/wm/NaviGesStubController$NaviGestureThumbnailCallback;

    iget-object v2, v0, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    invoke-interface {v1, v2}, Lcom/android/server/wm/NaviGesStubController$NaviGestureThumbnailCallback;->onGestureReady(Lcom/android/server/wm/AppWindowToken;)V

    .line 46
    :cond_0
    return-void
.end method

.method private notifyGestureStart()V
    .locals 3

    .line 49
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/wm/NaviGesStubController;->mKeepWallpaperShowing:Z

    .line 50
    iget-object v0, p0, Lcom/android/server/wm/NaviGesStubController;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    new-instance v1, Lcom/android/server/wm/-$$Lambda$NaviGesStubController$TnGQgzb2PJ1Q0WItz4b3Zn7hEok;

    invoke-direct {v1, p0}, Lcom/android/server/wm/-$$Lambda$NaviGesStubController$TnGQgzb2PJ1Q0WItz4b3Zn7hEok;-><init>(Lcom/android/server/wm/NaviGesStubController;)V

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/android/server/wm/DisplayContent;->forAllWindows(Ljava/util/function/Consumer;Z)V

    .line 58
    iget-object v0, p0, Lcom/android/server/wm/NaviGesStubController;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    new-instance v1, Lcom/android/server/wm/NaviGesStubController$InvalidateRunnable;

    invoke-direct {v1, p0}, Lcom/android/server/wm/NaviGesStubController$InvalidateRunnable;-><init>(Lcom/android/server/wm/NaviGesStubController;)V

    invoke-virtual {v0, v1}, Lcom/android/server/wm/WindowManagerService$H;->post(Ljava/lang/Runnable;)Z

    .line 59
    return-void
.end method

.method private notifySkipAppTransition()V
    .locals 2

    .line 66
    iget-object v0, p0, Lcom/android/server/wm/NaviGesStubController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 67
    const/4 v1, 0x1

    :try_start_0
    iput-boolean v1, p0, Lcom/android/server/wm/NaviGesStubController;->mIsAppTransitionSkipped:Z

    .line 68
    monitor-exit v0

    .line 69
    return-void

    .line 68
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private reset()V
    .locals 5

    .line 82
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/wm/NaviGesStubController;->mKeepWallpaperShowing:Z

    .line 83
    iget-object v0, p0, Lcom/android/server/wm/NaviGesStubController;->mInvisibleAppTokens:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 84
    .local v0, "iterToken":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 85
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/AppWindowToken;

    .line 86
    .local v1, "token":Lcom/android/server/wm/AppWindowToken;
    iget-object v2, p0, Lcom/android/server/wm/NaviGesStubController;->mNaviGestureThumbnailCallback:Lcom/android/server/wm/NaviGesStubController$NaviGestureThumbnailCallback;

    invoke-interface {v2, v1}, Lcom/android/server/wm/NaviGesStubController$NaviGestureThumbnailCallback;->onGestureFinished(Lcom/android/server/wm/AppWindowToken;)V

    .line 87
    .end local v1    # "token":Lcom/android/server/wm/AppWindowToken;
    goto :goto_0

    .line 88
    :cond_0
    iget-object v1, p0, Lcom/android/server/wm/NaviGesStubController;->mWindowAlphaMap:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 89
    .local v1, "iter":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 90
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/WindowState;

    .line 91
    .local v2, "w":Lcom/android/server/wm/WindowState;
    if-eqz v2, :cond_1

    .line 92
    iget-object v3, v2, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    if-eqz v3, :cond_1

    .line 94
    iget-object v3, v2, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    const/high16 v4, 0x3f800000    # 1.0f

    iput v4, v3, Lcom/android/server/wm/WindowStateAnimator;->mAlpha:F

    .line 97
    .end local v2    # "w":Lcom/android/server/wm/WindowState;
    :cond_1
    goto :goto_1

    .line 98
    :cond_2
    iget-object v2, p0, Lcom/android/server/wm/NaviGesStubController;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    new-instance v3, Lcom/android/server/wm/NaviGesStubController$InvalidateRunnable;

    invoke-direct {v3, p0}, Lcom/android/server/wm/NaviGesStubController$InvalidateRunnable;-><init>(Lcom/android/server/wm/NaviGesStubController;)V

    invoke-virtual {v2, v3}, Lcom/android/server/wm/WindowManagerService$H;->post(Ljava/lang/Runnable;)Z

    .line 99
    iget-object v2, p0, Lcom/android/server/wm/NaviGesStubController;->mInvisibleAppTokens:Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Set;->clear()V

    .line 100
    iget-object v2, p0, Lcom/android/server/wm/NaviGesStubController;->mWindowAlphaMap:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->clear()V

    .line 101
    return-void
.end method


# virtual methods
.method disableAppTransitionSkipped()V
    .locals 2

    .line 72
    iget-object v0, p0, Lcom/android/server/wm/NaviGesStubController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 73
    const/4 v1, 0x0

    :try_start_0
    iput-boolean v1, p0, Lcom/android/server/wm/NaviGesStubController;->mIsAppTransitionSkipped:Z

    .line 74
    monitor-exit v0

    .line 75
    return-void

    .line 74
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method getNaviGestureStubListener()Landroid/view/INaviGestureStubListener;
    .locals 2

    .line 118
    iget-object v0, p0, Lcom/android/server/wm/NaviGesStubController;->mNaviGesStubListener:Landroid/view/INaviGestureStubListener;

    if-eqz v0, :cond_0

    .line 119
    iget-object v0, p0, Lcom/android/server/wm/NaviGesStubController;->mNaviGesStubListener:Landroid/view/INaviGestureStubListener;

    return-object v0

    .line 121
    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/NaviGesStubController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 122
    :try_start_0
    iget-object v1, p0, Lcom/android/server/wm/NaviGesStubController;->mNaviGesStubListener:Landroid/view/INaviGestureStubListener;

    if-nez v1, :cond_1

    .line 123
    new-instance v1, Lcom/android/server/wm/NaviGesStubController$NaviGestureStubListenerImpl;

    invoke-direct {v1, p0}, Lcom/android/server/wm/NaviGesStubController$NaviGestureStubListenerImpl;-><init>(Lcom/android/server/wm/NaviGesStubController;)V

    iput-object v1, p0, Lcom/android/server/wm/NaviGesStubController;->mNaviGesStubListener:Landroid/view/INaviGestureStubListener;

    .line 125
    :cond_1
    iget-object v1, p0, Lcom/android/server/wm/NaviGesStubController;->mNaviGesStubListener:Landroid/view/INaviGestureStubListener;

    monitor-exit v0

    return-object v1

    .line 126
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method isAppTransitionSkipped()Z
    .locals 1

    .line 78
    iget-boolean v0, p0, Lcom/android/server/wm/NaviGesStubController;->mIsAppTransitionSkipped:Z

    return v0
.end method

.method keepWallpaperShowing()Z
    .locals 1

    .line 62
    iget-boolean v0, p0, Lcom/android/server/wm/NaviGesStubController;->mKeepWallpaperShowing:Z

    return v0
.end method

.method registerNaviGestureThumbnailCallback(Lcom/android/server/wm/NaviGesStubController$NaviGestureThumbnailCallback;)V
    .locals 2
    .param p1, "callback"    # Lcom/android/server/wm/NaviGesStubController$NaviGestureThumbnailCallback;

    .line 154
    iget-object v0, p0, Lcom/android/server/wm/NaviGesStubController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 155
    :try_start_0
    iput-object p1, p0, Lcom/android/server/wm/NaviGesStubController;->mNaviGestureThumbnailCallback:Lcom/android/server/wm/NaviGesStubController$NaviGestureThumbnailCallback;

    .line 156
    monitor-exit v0

    .line 157
    return-void

    .line 156
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
