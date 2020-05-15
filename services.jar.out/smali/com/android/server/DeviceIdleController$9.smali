.class Lcom/android/server/DeviceIdleController$9;
.super Ljava/lang/Object;
.source "DeviceIdleController.java"

# interfaces
.implements Landroid/app/ActivityManagerInternal$ScreenObserver;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/DeviceIdleController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/DeviceIdleController;


# direct methods
.method constructor <init>(Lcom/android/server/DeviceIdleController;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/DeviceIdleController;

    .line 1374
    iput-object p1, p0, Lcom/android/server/DeviceIdleController$9;->this$0:Lcom/android/server/DeviceIdleController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAwakeStateChanged(Z)V
    .locals 0
    .param p1, "isAwake"    # Z

    .line 1376
    return-void
.end method

.method public onKeyguardStateChanged(Z)V
    .locals 2
    .param p1, "isShowing"    # Z

    .line 1380
    iget-object v0, p0, Lcom/android/server/DeviceIdleController$9;->this$0:Lcom/android/server/DeviceIdleController;

    monitor-enter v0

    .line 1381
    :try_start_0
    iget-object v1, p0, Lcom/android/server/DeviceIdleController$9;->this$0:Lcom/android/server/DeviceIdleController;

    invoke-virtual {v1, p1}, Lcom/android/server/DeviceIdleController;->keyguardShowingLocked(Z)V

    .line 1382
    monitor-exit v0

    .line 1383
    return-void

    .line 1382
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
