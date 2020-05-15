.class public final Landroid/accessibilityservice/FingerprintGestureController;
.super Ljava/lang/Object;
.source "FingerprintGestureController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/accessibilityservice/FingerprintGestureController$FingerprintGestureCallback;
    }
.end annotation


# static fields
.field public static final FINGERPRINT_GESTURE_SWIPE_DOWN:I = 0x8

.field public static final FINGERPRINT_GESTURE_SWIPE_LEFT:I = 0x2

.field public static final FINGERPRINT_GESTURE_SWIPE_RIGHT:I = 0x1

.field public static final FINGERPRINT_GESTURE_SWIPE_UP:I = 0x4

.field private static final LOG_TAG:Ljava/lang/String; = "FingerprintGestureController"


# instance fields
.field private final mAccessibilityServiceConnection:Landroid/accessibilityservice/IAccessibilityServiceConnection;

.field private final mCallbackHandlerMap:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Landroid/accessibilityservice/FingerprintGestureController$FingerprintGestureCallback;",
            "Landroid/os/Handler;",
            ">;"
        }
    .end annotation
.end field

.field private final mLock:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Landroid/accessibilityservice/IAccessibilityServiceConnection;)V
    .locals 2
    .param p1, "connection"    # Landroid/accessibilityservice/IAccessibilityServiceConnection;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 78
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 67
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/accessibilityservice/FingerprintGestureController;->mLock:Ljava/lang/Object;

    .line 70
    new-instance v0, Landroid/util/ArrayMap;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/util/ArrayMap;-><init>(I)V

    iput-object v0, p0, Landroid/accessibilityservice/FingerprintGestureController;->mCallbackHandlerMap:Landroid/util/ArrayMap;

    .line 79
    iput-object p1, p0, Landroid/accessibilityservice/FingerprintGestureController;->mAccessibilityServiceConnection:Landroid/accessibilityservice/IAccessibilityServiceConnection;

    .line 80
    return-void
.end method

.method static synthetic lambda$onGesture$1(Landroid/accessibilityservice/FingerprintGestureController$FingerprintGestureCallback;I)V
    .locals 0
    .param p0, "callback"    # Landroid/accessibilityservice/FingerprintGestureController$FingerprintGestureCallback;
    .param p1, "gesture"    # I

    .line 159
    invoke-virtual {p0, p1}, Landroid/accessibilityservice/FingerprintGestureController$FingerprintGestureCallback;->onGestureDetected(I)V

    return-void
.end method

.method static synthetic lambda$onGestureDetectionActiveChanged$0(Landroid/accessibilityservice/FingerprintGestureController$FingerprintGestureCallback;Z)V
    .locals 0
    .param p0, "callback"    # Landroid/accessibilityservice/FingerprintGestureController$FingerprintGestureCallback;
    .param p1, "active"    # Z

    .line 138
    invoke-virtual {p0, p1}, Landroid/accessibilityservice/FingerprintGestureController$FingerprintGestureCallback;->onGestureDetectionAvailabilityChanged(Z)V

    return-void
.end method


# virtual methods
.method public isGestureDetectionAvailable()Z
    .locals 3

    .line 90
    :try_start_0
    iget-object v0, p0, Landroid/accessibilityservice/FingerprintGestureController;->mAccessibilityServiceConnection:Landroid/accessibilityservice/IAccessibilityServiceConnection;

    invoke-interface {v0}, Landroid/accessibilityservice/IAccessibilityServiceConnection;->isFingerprintGestureDetectionAvailable()Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 91
    :catch_0
    move-exception v0

    .line 92
    .local v0, "re":Landroid/os/RemoteException;
    const-string v1, "FingerprintGestureController"

    const-string v2, "Failed to check if fingerprint gestures are active"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 93
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    .line 94
    const/4 v1, 0x0

    return v1
.end method

.method public onGesture(I)V
    .locals 6
    .param p1, "gesture"    # I

    .line 151
    iget-object v0, p0, Landroid/accessibilityservice/FingerprintGestureController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 152
    :try_start_0
    new-instance v1, Landroid/util/ArrayMap;

    iget-object v2, p0, Landroid/accessibilityservice/FingerprintGestureController;->mCallbackHandlerMap:Landroid/util/ArrayMap;

    invoke-direct {v1, v2}, Landroid/util/ArrayMap;-><init>(Landroid/util/ArrayMap;)V

    .line 153
    .local v1, "handlerMap":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/accessibilityservice/FingerprintGestureController$FingerprintGestureCallback;Landroid/os/Handler;>;"
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 154
    invoke-virtual {v1}, Landroid/util/ArrayMap;->size()I

    move-result v0

    .line 155
    .local v0, "numListeners":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_1

    .line 156
    invoke-virtual {v1, v2}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/accessibilityservice/FingerprintGestureController$FingerprintGestureCallback;

    .line 157
    .local v3, "callback":Landroid/accessibilityservice/FingerprintGestureController$FingerprintGestureCallback;
    invoke-virtual {v1, v2}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/Handler;

    .line 158
    .local v4, "handler":Landroid/os/Handler;
    if-eqz v4, :cond_0

    .line 159
    new-instance v5, Landroid/accessibilityservice/-$$Lambda$FingerprintGestureController$BQjrQQom4K3C98FNiI0fi7SvHfY;

    invoke-direct {v5, v3, p1}, Landroid/accessibilityservice/-$$Lambda$FingerprintGestureController$BQjrQQom4K3C98FNiI0fi7SvHfY;-><init>(Landroid/accessibilityservice/FingerprintGestureController$FingerprintGestureCallback;I)V

    invoke-virtual {v4, v5}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_1

    .line 161
    :cond_0
    invoke-virtual {v3, p1}, Landroid/accessibilityservice/FingerprintGestureController$FingerprintGestureCallback;->onGestureDetected(I)V

    .line 155
    .end local v3    # "callback":Landroid/accessibilityservice/FingerprintGestureController$FingerprintGestureCallback;
    .end local v4    # "handler":Landroid/os/Handler;
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 164
    .end local v2    # "i":I
    :cond_1
    return-void

    .line 153
    .end local v0    # "numListeners":I
    .end local v1    # "handlerMap":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/accessibilityservice/FingerprintGestureController$FingerprintGestureCallback;Landroid/os/Handler;>;"
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public onGestureDetectionActiveChanged(Z)V
    .locals 6
    .param p1, "active"    # Z

    .line 130
    iget-object v0, p0, Landroid/accessibilityservice/FingerprintGestureController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 131
    :try_start_0
    new-instance v1, Landroid/util/ArrayMap;

    iget-object v2, p0, Landroid/accessibilityservice/FingerprintGestureController;->mCallbackHandlerMap:Landroid/util/ArrayMap;

    invoke-direct {v1, v2}, Landroid/util/ArrayMap;-><init>(Landroid/util/ArrayMap;)V

    .line 132
    .local v1, "handlerMap":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/accessibilityservice/FingerprintGestureController$FingerprintGestureCallback;Landroid/os/Handler;>;"
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 133
    invoke-virtual {v1}, Landroid/util/ArrayMap;->size()I

    move-result v0

    .line 134
    .local v0, "numListeners":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_1

    .line 135
    invoke-virtual {v1, v2}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/accessibilityservice/FingerprintGestureController$FingerprintGestureCallback;

    .line 136
    .local v3, "callback":Landroid/accessibilityservice/FingerprintGestureController$FingerprintGestureCallback;
    invoke-virtual {v1, v2}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/Handler;

    .line 137
    .local v4, "handler":Landroid/os/Handler;
    if-eqz v4, :cond_0

    .line 138
    new-instance v5, Landroid/accessibilityservice/-$$Lambda$FingerprintGestureController$M-ZApqp96G6ZF2WdWrGDJ8Qsfck;

    invoke-direct {v5, v3, p1}, Landroid/accessibilityservice/-$$Lambda$FingerprintGestureController$M-ZApqp96G6ZF2WdWrGDJ8Qsfck;-><init>(Landroid/accessibilityservice/FingerprintGestureController$FingerprintGestureCallback;Z)V

    invoke-virtual {v4, v5}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_1

    .line 140
    :cond_0
    invoke-virtual {v3, p1}, Landroid/accessibilityservice/FingerprintGestureController$FingerprintGestureCallback;->onGestureDetectionAvailabilityChanged(Z)V

    .line 134
    .end local v3    # "callback":Landroid/accessibilityservice/FingerprintGestureController$FingerprintGestureCallback;
    .end local v4    # "handler":Landroid/os/Handler;
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 143
    .end local v2    # "i":I
    :cond_1
    return-void

    .line 132
    .end local v0    # "numListeners":I
    .end local v1    # "handlerMap":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/accessibilityservice/FingerprintGestureController$FingerprintGestureCallback;Landroid/os/Handler;>;"
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public registerFingerprintGestureCallback(Landroid/accessibilityservice/FingerprintGestureController$FingerprintGestureCallback;Landroid/os/Handler;)V
    .locals 2
    .param p1, "callback"    # Landroid/accessibilityservice/FingerprintGestureController$FingerprintGestureCallback;
    .param p2, "handler"    # Landroid/os/Handler;

    .line 107
    iget-object v0, p0, Landroid/accessibilityservice/FingerprintGestureController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 108
    :try_start_0
    iget-object v1, p0, Landroid/accessibilityservice/FingerprintGestureController;->mCallbackHandlerMap:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1, p2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 109
    monitor-exit v0

    .line 110
    return-void

    .line 109
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public unregisterFingerprintGestureCallback(Landroid/accessibilityservice/FingerprintGestureController$FingerprintGestureCallback;)V
    .locals 2
    .param p1, "callback"    # Landroid/accessibilityservice/FingerprintGestureController$FingerprintGestureCallback;

    .line 119
    iget-object v0, p0, Landroid/accessibilityservice/FingerprintGestureController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 120
    :try_start_0
    iget-object v1, p0, Landroid/accessibilityservice/FingerprintGestureController;->mCallbackHandlerMap:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 121
    monitor-exit v0

    .line 122
    return-void

    .line 121
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
