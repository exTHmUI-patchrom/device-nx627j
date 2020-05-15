.class public Lcn/nubia/server/policy/edge/effects/widowobserver/WindowAnimationObserverManager;
.super Ljava/lang/Object;
.source "WindowAnimationObserverManager.java"


# static fields
.field private static mInstance:Lcn/nubia/server/policy/edge/effects/widowobserver/WindowAnimationObserverManager;

.field private static sLock:Ljava/lang/Object;


# instance fields
.field private mWindowAnimationObserver:Lcn/nubia/server/policy/edge/effects/widowobserver/WindowAnimationObserver;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 5
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcn/nubia/server/policy/edge/effects/widowobserver/WindowAnimationObserverManager;->sLock:Ljava/lang/Object;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    return-void
.end method

.method public static getInstance()Lcn/nubia/server/policy/edge/effects/widowobserver/WindowAnimationObserverManager;
    .locals 2

    .line 13
    sget-object v0, Lcn/nubia/server/policy/edge/effects/widowobserver/WindowAnimationObserverManager;->sLock:Ljava/lang/Object;

    monitor-enter v0

    .line 14
    :try_start_0
    sget-object v1, Lcn/nubia/server/policy/edge/effects/widowobserver/WindowAnimationObserverManager;->mInstance:Lcn/nubia/server/policy/edge/effects/widowobserver/WindowAnimationObserverManager;

    if-nez v1, :cond_0

    .line 15
    new-instance v1, Lcn/nubia/server/policy/edge/effects/widowobserver/WindowAnimationObserverManager;

    invoke-direct {v1}, Lcn/nubia/server/policy/edge/effects/widowobserver/WindowAnimationObserverManager;-><init>()V

    sput-object v1, Lcn/nubia/server/policy/edge/effects/widowobserver/WindowAnimationObserverManager;->mInstance:Lcn/nubia/server/policy/edge/effects/widowobserver/WindowAnimationObserverManager;

    .line 17
    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 18
    sget-object v0, Lcn/nubia/server/policy/edge/effects/widowobserver/WindowAnimationObserverManager;->mInstance:Lcn/nubia/server/policy/edge/effects/widowobserver/WindowAnimationObserverManager;

    return-object v0

    .line 17
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method


# virtual methods
.method public declared-synchronized notifyAppTransitionFinish(Ljava/lang/String;)V
    .locals 1
    .param p1, "msg"    # Ljava/lang/String;

    monitor-enter p0

    .line 32
    :try_start_0
    iget-object v0, p0, Lcn/nubia/server/policy/edge/effects/widowobserver/WindowAnimationObserverManager;->mWindowAnimationObserver:Lcn/nubia/server/policy/edge/effects/widowobserver/WindowAnimationObserver;

    if-eqz v0, :cond_0

    .line 33
    iget-object v0, p0, Lcn/nubia/server/policy/edge/effects/widowobserver/WindowAnimationObserverManager;->mWindowAnimationObserver:Lcn/nubia/server/policy/edge/effects/widowobserver/WindowAnimationObserver;

    invoke-virtual {v0, p1}, Lcn/nubia/server/policy/edge/effects/widowobserver/WindowAnimationObserver;->notifyAppTransitionFinish(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 35
    :cond_0
    monitor-exit p0

    return-void

    .line 31
    .end local p1    # "msg":Ljava/lang/String;
    :catchall_0
    move-exception p1

    monitor-exit p0

    .end local p0    # "this":Lcn/nubia/server/policy/edge/effects/widowobserver/WindowAnimationObserverManager;
    throw p1
.end method

.method public declared-synchronized notifyAppTransitionStart(Ljava/lang/String;)V
    .locals 1
    .param p1, "msg"    # Ljava/lang/String;

    monitor-enter p0

    .line 26
    :try_start_0
    iget-object v0, p0, Lcn/nubia/server/policy/edge/effects/widowobserver/WindowAnimationObserverManager;->mWindowAnimationObserver:Lcn/nubia/server/policy/edge/effects/widowobserver/WindowAnimationObserver;

    if-eqz v0, :cond_0

    .line 27
    iget-object v0, p0, Lcn/nubia/server/policy/edge/effects/widowobserver/WindowAnimationObserverManager;->mWindowAnimationObserver:Lcn/nubia/server/policy/edge/effects/widowobserver/WindowAnimationObserver;

    invoke-virtual {v0, p1}, Lcn/nubia/server/policy/edge/effects/widowobserver/WindowAnimationObserver;->notifyAppTransitionStart(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 29
    :cond_0
    monitor-exit p0

    return-void

    .line 25
    .end local p1    # "msg":Ljava/lang/String;
    :catchall_0
    move-exception p1

    monitor-exit p0

    .end local p0    # "this":Lcn/nubia/server/policy/edge/effects/widowobserver/WindowAnimationObserverManager;
    throw p1
.end method

.method public declared-synchronized notifySurfaceFirstShown(Ljava/lang/String;)V
    .locals 1
    .param p1, "msg"    # Ljava/lang/String;

    monitor-enter p0

    .line 38
    :try_start_0
    iget-object v0, p0, Lcn/nubia/server/policy/edge/effects/widowobserver/WindowAnimationObserverManager;->mWindowAnimationObserver:Lcn/nubia/server/policy/edge/effects/widowobserver/WindowAnimationObserver;

    if-eqz v0, :cond_0

    .line 39
    iget-object v0, p0, Lcn/nubia/server/policy/edge/effects/widowobserver/WindowAnimationObserverManager;->mWindowAnimationObserver:Lcn/nubia/server/policy/edge/effects/widowobserver/WindowAnimationObserver;

    invoke-virtual {v0, p1}, Lcn/nubia/server/policy/edge/effects/widowobserver/WindowAnimationObserver;->notifySurfaceFirstShown(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 41
    :cond_0
    monitor-exit p0

    return-void

    .line 37
    .end local p1    # "msg":Ljava/lang/String;
    :catchall_0
    move-exception p1

    monitor-exit p0

    .end local p0    # "this":Lcn/nubia/server/policy/edge/effects/widowobserver/WindowAnimationObserverManager;
    throw p1
.end method

.method public declared-synchronized setWindowAnimationObserver(Lcn/nubia/server/policy/edge/effects/widowobserver/WindowAnimationObserver;)V
    .locals 0
    .param p1, "observer"    # Lcn/nubia/server/policy/edge/effects/widowobserver/WindowAnimationObserver;

    monitor-enter p0

    .line 22
    :try_start_0
    iput-object p1, p0, Lcn/nubia/server/policy/edge/effects/widowobserver/WindowAnimationObserverManager;->mWindowAnimationObserver:Lcn/nubia/server/policy/edge/effects/widowobserver/WindowAnimationObserver;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 23
    monitor-exit p0

    return-void

    .line 21
    .end local p1    # "observer":Lcn/nubia/server/policy/edge/effects/widowobserver/WindowAnimationObserver;
    :catchall_0
    move-exception p1

    monitor-exit p0

    .end local p0    # "this":Lcn/nubia/server/policy/edge/effects/widowobserver/WindowAnimationObserverManager;
    throw p1
.end method
