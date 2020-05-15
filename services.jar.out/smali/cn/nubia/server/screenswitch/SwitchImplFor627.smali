.class public Lcn/nubia/server/screenswitch/SwitchImplFor627;
.super Lcn/nubia/server/screenswitch/SwitchInterface;
.source "SwitchImplFor627.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/nubia/server/screenswitch/SwitchImplFor627$AODModeCallBack;
    }
.end annotation


# static fields
.field private static final SCREEN_ALL:I = 0x3ea

.field private static final SCREEN_BACK:I = 0x3e9

.field private static final SCREEN_BACKTOFRONT_SWITCHING:I = 0x7d0

.field private static final SCREEN_DOUBLE_SWITCHING:I = 0x7d5

.field private static final SCREEN_FRONT:I = 0x3e8

.field private static final SCREEN_FRONTTOBACK_SWITCHING:I = 0x7d1

.field private static final SCREEN_MIRROR:I = 0x3eb

.field private static final SCREEN_MIRROR_SWITCHING_CLOSE:I = 0x7d3

.field private static final SCREEN_MIRROR_SWITCHING_OPEN:I = 0x7d2

.field private static final SCREEN_SWITCHING:I = 0x3ed

.field static final SWITCH_BY_AOD:Ljava/lang/String; = "aod"

.field static final SWITCH_BY_CLOSE_LIGHT:Ljava/lang/String; = "ligth_effect"

.field static final SWITCH_BY_MANUAL:Ljava/lang/String; = "manual"

.field static final SWITCH_BY_MOTION:Ljava/lang/String; = "motion"

.field static final SWITCH_BY_NUBIACAMERA:Ljava/lang/String; = "nubiacamera"

.field static final SWITCH_BY_WAKEUP:Ljava/lang/String; = "wakeup"


# instance fields
.field private mAODHelper:Lcn/nubia/server/DualAODScreenStateHelper;

.field private mCallback:Lcn/nubia/server/screenswitch/SwitchImplFor627$AODModeCallBack;

.field private volatile mCurrentDisplayId:I

.field private mDisplayManager:Lcn/nubia/server/screenswitch/DisplayManagerProxy;

.field private mHandler:Landroid/os/Handler;

.field private mIndieBaseFront:Z

.field private mScreenStateInner:I


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 51
    invoke-direct {p0, p1}, Lcn/nubia/server/screenswitch/SwitchInterface;-><init>(Landroid/content/Context;)V

    .line 22
    const/16 v0, 0x3e8

    iput v0, p0, Lcn/nubia/server/screenswitch/SwitchImplFor627;->mScreenStateInner:I

    .line 23
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcn/nubia/server/screenswitch/SwitchImplFor627;->mIndieBaseFront:Z

    .line 52
    invoke-static {p1}, Lcn/nubia/server/screenswitch/DisplayManagerProxy;->getInstance(Landroid/content/Context;)Lcn/nubia/server/screenswitch/DisplayManagerProxy;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/server/screenswitch/SwitchImplFor627;->mDisplayManager:Lcn/nubia/server/screenswitch/DisplayManagerProxy;

    .line 53
    const/4 v0, 0x0

    iput v0, p0, Lcn/nubia/server/screenswitch/SwitchImplFor627;->mCurrentDisplayId:I

    .line 54
    return-void
.end method

.method private isWaitPowerOffNeeded(ILjava/lang/String;)Z
    .locals 1
    .param p1, "target"    # I
    .param p2, "reason"    # Ljava/lang/String;

    .line 180
    const-string v0, "aod"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static synthetic lambda$checkAndResetPowerMode$2(Lcn/nubia/server/screenswitch/SwitchImplFor627;)V
    .locals 2

    .line 328
    iget-object v0, p0, Lcn/nubia/server/screenswitch/SwitchImplFor627;->mAODHelper:Lcn/nubia/server/DualAODScreenStateHelper;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/nubia/server/screenswitch/SwitchImplFor627;->mAODHelper:Lcn/nubia/server/DualAODScreenStateHelper;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Lcn/nubia/server/DualAODScreenStateHelper;->writeScreenOffAodNode(I)V

    .line 329
    :cond_0
    iget-object v0, p0, Lcn/nubia/server/screenswitch/SwitchImplFor627;->mDisplayManager:Lcn/nubia/server/screenswitch/DisplayManagerProxy;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcn/nubia/server/screenswitch/DisplayManagerProxy;->setBackDisplayPowerMode(Z)V

    .line 330
    return-void
.end method

.method public static synthetic lambda$switchToBack$1(Lcn/nubia/server/screenswitch/SwitchImplFor627;Ljava/lang/String;I)V
    .locals 3
    .param p1, "reason"    # Ljava/lang/String;
    .param p2, "target"    # I

    .line 218
    const-wide/16 v0, 0x1e

    :try_start_0
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 221
    goto :goto_0

    .line 219
    :catch_0
    move-exception v0

    .line 220
    .local v0, "e":Ljava/lang/InterruptedException;
    const-string v1, "SwitchInterface"

    const-string/jumbo v2, "switchToBack sleep error  "

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 222
    .end local v0    # "e":Ljava/lang/InterruptedException;
    :goto_0
    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-direct {p0, v1, v0, p1}, Lcn/nubia/server/screenswitch/SwitchImplFor627;->setFirstDisplayMode(ZZLjava/lang/String;)V

    .line 223
    invoke-virtual {p0, v0, v1}, Lcn/nubia/server/screenswitch/SwitchImplFor627;->noteAsycPowerOffState(ZZ)V

    .line 224
    invoke-direct {p0, p2, p1}, Lcn/nubia/server/screenswitch/SwitchImplFor627;->isWaitPowerOffNeeded(ILjava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 225
    invoke-direct {p0, p2}, Lcn/nubia/server/screenswitch/SwitchImplFor627;->notifyScreenModeChangeAfterSwitch(I)V

    .line 227
    :cond_0
    return-void
.end method

.method public static synthetic lambda$switchToFront$0(Lcn/nubia/server/screenswitch/SwitchImplFor627;Ljava/lang/String;I)V
    .locals 3
    .param p1, "reason"    # Ljava/lang/String;
    .param p2, "target"    # I

    .line 192
    const-wide/16 v0, 0x1e

    :try_start_0
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 195
    goto :goto_0

    .line 193
    :catch_0
    move-exception v0

    .line 194
    .local v0, "e":Ljava/lang/InterruptedException;
    const-string v1, "SwitchInterface"

    const-string/jumbo v2, "switchToFront sleep error  "

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 196
    .end local v0    # "e":Ljava/lang/InterruptedException;
    :goto_0
    const/4 v0, 0x0

    invoke-direct {p0, v0, v0, p1}, Lcn/nubia/server/screenswitch/SwitchImplFor627;->setSecondDisplayMode(ZZLjava/lang/String;)V

    .line 197
    invoke-virtual {p0, v0, v0}, Lcn/nubia/server/screenswitch/SwitchImplFor627;->noteAsycPowerOffState(ZZ)V

    .line 198
    invoke-direct {p0, p2, p1}, Lcn/nubia/server/screenswitch/SwitchImplFor627;->isWaitPowerOffNeeded(ILjava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 199
    invoke-direct {p0, p2}, Lcn/nubia/server/screenswitch/SwitchImplFor627;->notifyScreenModeChangeAfterSwitch(I)V

    .line 201
    :cond_0
    return-void
.end method

.method private notifyScreenModeChangeAfterSwitch(I)V
    .locals 1
    .param p1, "target"    # I

    .line 164
    invoke-virtual {p0, p1}, Lcn/nubia/server/screenswitch/SwitchImplFor627;->updateTarget(I)I

    move-result v0

    iput v0, p0, Lcn/nubia/server/screenswitch/SwitchImplFor627;->mScreenStateInner:I

    .line 165
    iget v0, p0, Lcn/nubia/server/screenswitch/SwitchImplFor627;->mScreenStateInner:I

    invoke-virtual {p0, v0}, Lcn/nubia/server/screenswitch/SwitchImplFor627;->notifyScreenModeChanged(I)V

    .line 166
    return-void
.end method

.method private notifyScreenModeChangeBeforeSwitch(I)V
    .locals 1
    .param p1, "target"    # I

    .line 159
    invoke-virtual {p0, p1}, Lcn/nubia/server/screenswitch/SwitchImplFor627;->getSwitchingMode(I)I

    move-result v0

    iput v0, p0, Lcn/nubia/server/screenswitch/SwitchImplFor627;->mScreenStateInner:I

    .line 160
    iget v0, p0, Lcn/nubia/server/screenswitch/SwitchImplFor627;->mScreenStateInner:I

    invoke-virtual {p0, v0}, Lcn/nubia/server/screenswitch/SwitchImplFor627;->notifyScreenModeChanged(I)V

    .line 161
    return-void
.end method

.method private setFirstDisplayMode(ZZLjava/lang/String;)V
    .locals 2
    .param p1, "on"    # Z
    .param p2, "showFirst"    # Z
    .param p3, "reason"    # Ljava/lang/String;

    .line 254
    const-string v0, "aod"

    invoke-virtual {v0, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcn/nubia/server/screenswitch/SwitchImplFor627;->mDisplayManager:Lcn/nubia/server/screenswitch/DisplayManagerProxy;

    invoke-virtual {v0, p1}, Lcn/nubia/server/screenswitch/DisplayManagerProxy;->setFrontDisplayPowerMode(Z)V

    .line 255
    :cond_0
    invoke-static {}, Landroid/view/SurfaceControl;->openTransaction()V

    .line 257
    :try_start_0
    iget-object v0, p0, Lcn/nubia/server/screenswitch/SwitchImplFor627;->mDisplayManager:Lcn/nubia/server/screenswitch/DisplayManagerProxy;

    iget-object v0, v0, Lcn/nubia/server/screenswitch/DisplayManagerProxy;->mFrontToken:Landroid/os/IBinder;

    if-eqz p2, :cond_1

    const/4 v1, 0x0

    goto :goto_0

    :cond_1
    const/16 v1, 0x1000

    :goto_0
    invoke-static {v0, v1}, Landroid/view/SurfaceControl;->setDisplayLayerStack(Landroid/os/IBinder;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 260
    invoke-static {}, Landroid/view/SurfaceControl;->closeTransactionSync()V

    .line 261
    nop

    .line 263
    return-void

    .line 260
    :catchall_0
    move-exception v0

    invoke-static {}, Landroid/view/SurfaceControl;->closeTransactionSync()V

    throw v0
.end method

.method private setSecondDisplayMode(ZZLjava/lang/String;)V
    .locals 2
    .param p1, "on"    # Z
    .param p2, "showFirst"    # Z
    .param p3, "reason"    # Ljava/lang/String;

    .line 266
    invoke-static {}, Landroid/view/SurfaceControl;->openTransaction()V

    .line 268
    :try_start_0
    iget-object v0, p0, Lcn/nubia/server/screenswitch/SwitchImplFor627;->mDisplayManager:Lcn/nubia/server/screenswitch/DisplayManagerProxy;

    iget-object v0, v0, Lcn/nubia/server/screenswitch/DisplayManagerProxy;->mBackToken:Landroid/os/IBinder;

    if-eqz p2, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    const/16 v1, 0x1000

    :goto_0
    invoke-static {v0, v1}, Landroid/view/SurfaceControl;->setDisplayLayerStack(Landroid/os/IBinder;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 271
    invoke-static {}, Landroid/view/SurfaceControl;->closeTransactionSync()V

    .line 272
    nop

    .line 273
    const-string v0, "aod"

    invoke-virtual {v0, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcn/nubia/server/screenswitch/SwitchImplFor627;->mDisplayManager:Lcn/nubia/server/screenswitch/DisplayManagerProxy;

    invoke-virtual {v0, p1}, Lcn/nubia/server/screenswitch/DisplayManagerProxy;->setBackDisplayPowerMode(Z)V

    .line 274
    :cond_1
    return-void

    .line 271
    :catchall_0
    move-exception v0

    invoke-static {}, Landroid/view/SurfaceControl;->closeTransactionSync()V

    throw v0
.end method

.method private switchToBack(ILjava/lang/String;)V
    .locals 3
    .param p1, "target"    # I
    .param p2, "reason"    # Ljava/lang/String;

    .line 210
    const/4 v0, 0x0

    invoke-direct {p0, v0, p2}, Lcn/nubia/server/screenswitch/SwitchImplFor627;->writeScreenOffAodNodeIfNeeded(ILjava/lang/String;)V

    .line 211
    invoke-direct {p0, p1, p2}, Lcn/nubia/server/screenswitch/SwitchImplFor627;->isWaitPowerOffNeeded(ILjava/lang/String;)Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    .line 212
    invoke-direct {p0, v0, v2, p2}, Lcn/nubia/server/screenswitch/SwitchImplFor627;->setFirstDisplayMode(ZZLjava/lang/String;)V

    goto :goto_0

    .line 214
    :cond_0
    invoke-virtual {p0, v2, v2}, Lcn/nubia/server/screenswitch/SwitchImplFor627;->noteAsycPowerOffState(ZZ)V

    .line 215
    iget-object v0, p0, Lcn/nubia/server/screenswitch/SwitchImplFor627;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcn/nubia/server/screenswitch/-$$Lambda$SwitchImplFor627$y280Ui08xlHkA6_ZGJOL1FhPazI;

    invoke-direct {v1, p0, p2, p1}, Lcn/nubia/server/screenswitch/-$$Lambda$SwitchImplFor627$y280Ui08xlHkA6_ZGJOL1FhPazI;-><init>(Lcn/nubia/server/screenswitch/SwitchImplFor627;Ljava/lang/String;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->postAtFrontOfQueue(Ljava/lang/Runnable;)Z

    .line 229
    :goto_0
    invoke-direct {p0, v2, v2, p2}, Lcn/nubia/server/screenswitch/SwitchImplFor627;->setSecondDisplayMode(ZZLjava/lang/String;)V

    .line 230
    return-void
.end method

.method private switchToFront(ILjava/lang/String;)V
    .locals 3
    .param p1, "target"    # I
    .param p2, "reason"    # Ljava/lang/String;

    .line 184
    const/4 v0, 0x5

    invoke-direct {p0, v0, p2}, Lcn/nubia/server/screenswitch/SwitchImplFor627;->writeScreenOffAodNodeIfNeeded(ILjava/lang/String;)V

    .line 185
    invoke-direct {p0, p1, p2}, Lcn/nubia/server/screenswitch/SwitchImplFor627;->isWaitPowerOffNeeded(ILjava/lang/String;)Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    .line 186
    invoke-direct {p0, v2, v2, p2}, Lcn/nubia/server/screenswitch/SwitchImplFor627;->setSecondDisplayMode(ZZLjava/lang/String;)V

    goto :goto_0

    .line 188
    :cond_0
    invoke-virtual {p0, v2, v1}, Lcn/nubia/server/screenswitch/SwitchImplFor627;->noteAsycPowerOffState(ZZ)V

    .line 189
    iget-object v0, p0, Lcn/nubia/server/screenswitch/SwitchImplFor627;->mHandler:Landroid/os/Handler;

    new-instance v2, Lcn/nubia/server/screenswitch/-$$Lambda$SwitchImplFor627$EHpPrC_ZhsXO3FHgZuwoSR_oUKQ;

    invoke-direct {v2, p0, p2, p1}, Lcn/nubia/server/screenswitch/-$$Lambda$SwitchImplFor627$EHpPrC_ZhsXO3FHgZuwoSR_oUKQ;-><init>(Lcn/nubia/server/screenswitch/SwitchImplFor627;Ljava/lang/String;I)V

    invoke-virtual {v0, v2}, Landroid/os/Handler;->postAtFrontOfQueue(Ljava/lang/Runnable;)Z

    .line 203
    :goto_0
    const-string/jumbo v0, "ligth_effect"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 205
    invoke-direct {p0, v1, v1, p2}, Lcn/nubia/server/screenswitch/SwitchImplFor627;->setFirstDisplayMode(ZZLjava/lang/String;)V

    .line 207
    :cond_1
    return-void
.end method

.method private switchToIndie(ILjava/lang/String;)V
    .locals 3
    .param p1, "target"    # I
    .param p2, "reason"    # Ljava/lang/String;

    .line 239
    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1, p2}, Lcn/nubia/server/screenswitch/SwitchImplFor627;->setSecondDisplayMode(ZZLjava/lang/String;)V

    .line 240
    invoke-static {}, Lnubia/os/ApplicationManager$Trigger;->isLightEffectOpened()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 241
    iget-object v0, p0, Lcn/nubia/server/screenswitch/SwitchImplFor627;->mDisplayManager:Lcn/nubia/server/screenswitch/DisplayManagerProxy;

    const/4 v1, 0x5

    const/16 v2, 0x3c0

    invoke-virtual {v0, v1, v2}, Lcn/nubia/server/screenswitch/DisplayManagerProxy;->setBacklight(II)V

    .line 243
    :cond_0
    invoke-direct {p0, p1, p2}, Lcn/nubia/server/screenswitch/SwitchImplFor627;->isWaitPowerOffNeeded(ILjava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 244
    invoke-direct {p0, p1}, Lcn/nubia/server/screenswitch/SwitchImplFor627;->notifyScreenModeChangeAfterSwitch(I)V

    .line 246
    :cond_1
    return-void
.end method

.method private switchToMirror(Ljava/lang/String;)V
    .locals 1
    .param p1, "reason"    # Ljava/lang/String;

    .line 233
    const/4 v0, 0x1

    invoke-direct {p0, v0, v0, p1}, Lcn/nubia/server/screenswitch/SwitchImplFor627;->setFirstDisplayMode(ZZLjava/lang/String;)V

    .line 234
    invoke-direct {p0, v0, v0, p1}, Lcn/nubia/server/screenswitch/SwitchImplFor627;->setSecondDisplayMode(ZZLjava/lang/String;)V

    .line 235
    return-void
.end method

.method private writeScreenOffAodNodeIfNeeded(ILjava/lang/String;)V
    .locals 1
    .param p1, "device"    # I
    .param p2, "reason"    # Ljava/lang/String;

    .line 361
    iget-object v0, p0, Lcn/nubia/server/screenswitch/SwitchImplFor627;->mCallback:Lcn/nubia/server/screenswitch/SwitchImplFor627$AODModeCallBack;

    if-eqz v0, :cond_0

    const-string/jumbo v0, "wakeup"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 362
    iget-object v0, p0, Lcn/nubia/server/screenswitch/SwitchImplFor627;->mCallback:Lcn/nubia/server/screenswitch/SwitchImplFor627$AODModeCallBack;

    invoke-interface {v0, p1}, Lcn/nubia/server/screenswitch/SwitchImplFor627$AODModeCallBack;->updateAODMode(I)V

    .line 364
    :cond_0
    return-void
.end method


# virtual methods
.method public checkAndResetPowerMode()V
    .locals 3

    .line 324
    sget v0, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;->mFrontScreenPowerMode:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    sget v0, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;->mBackScreenPowerMode:I

    const/4 v2, 0x2

    if-ne v0, v2, :cond_0

    .line 326
    iget-object v0, p0, Lcn/nubia/server/screenswitch/SwitchImplFor627;->mDisplayManager:Lcn/nubia/server/screenswitch/DisplayManagerProxy;

    invoke-virtual {v0, v1}, Lcn/nubia/server/screenswitch/DisplayManagerProxy;->setFrontDisplayPowerMode(Z)V

    .line 327
    iget-object v0, p0, Lcn/nubia/server/screenswitch/SwitchImplFor627;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcn/nubia/server/screenswitch/-$$Lambda$SwitchImplFor627$yzZAwp7gNT7p3a7oN3QLFRZIwbc;

    invoke-direct {v1, p0}, Lcn/nubia/server/screenswitch/-$$Lambda$SwitchImplFor627$yzZAwp7gNT7p3a7oN3QLFRZIwbc;-><init>(Lcn/nubia/server/screenswitch/SwitchImplFor627;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->postAtFrontOfQueue(Ljava/lang/Runnable;)Z

    .line 332
    :cond_0
    return-void
.end method

.method checkBackscreenLossOrNot()Z
    .locals 5

    .line 371
    const/4 v0, 0x0

    :try_start_0
    new-instance v1, Ljava/io/BufferedReader;

    new-instance v2, Ljava/io/FileReader;

    new-instance v3, Ljava/io/File;

    const-string v4, "/sys/kernel/lcd_enhance/lcd_state"

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v2, v3}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V

    invoke-direct {v1, v2}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    .local v1, "br":Ljava/io/BufferedReader;
    const/4 v2, 0x0

    .line 372
    :try_start_1
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v3

    .line 373
    .local v3, "line":Ljava/lang/String;
    if-eqz v3, :cond_1

    .line 374
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 v2, 0x1

    if-ne v2, v4, :cond_0

    goto :goto_0

    .line 376
    :cond_0
    move v2, v0

    :goto_0
    :try_start_2
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V

    .line 374
    return v2

    .line 376
    .end local v3    # "line":Ljava/lang/String;
    :cond_1
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 378
    .end local v1    # "br":Ljava/io/BufferedReader;
    goto :goto_3

    .line 376
    .restart local v1    # "br":Ljava/io/BufferedReader;
    :catchall_0
    move-exception v3

    goto :goto_1

    .line 371
    :catch_0
    move-exception v2

    :try_start_3
    throw v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 376
    :goto_1
    if-eqz v2, :cond_2

    :try_start_4
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_2

    :catch_1
    move-exception v4

    :try_start_5
    invoke-virtual {v2, v4}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_2

    :cond_2
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V

    :goto_2
    throw v3
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2

    .end local v1    # "br":Ljava/io/BufferedReader;
    :catch_2
    move-exception v1

    .line 377
    .local v1, "e":Ljava/lang/Exception;
    const-string v2, "SwitchInterface"

    const-string v3, "getCurrentLCDState error"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 379
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_3
    return v0
.end method

.method public confirmLayerStack(I)I
    .locals 3
    .param p1, "device"    # I

    .line 313
    const/4 v0, 0x0

    const/4 v1, 0x5

    if-ne p1, v1, :cond_1

    iget v1, p0, Lcn/nubia/server/screenswitch/SwitchImplFor627;->mScreenStateInner:I

    const/16 v2, 0x3e9

    if-eq v1, v2, :cond_0

    iget v1, p0, Lcn/nubia/server/screenswitch/SwitchImplFor627;->mScreenStateInner:I

    const/16 v2, 0x7d1

    if-ne v1, v2, :cond_1

    .line 315
    :cond_0
    return v0

    .line 316
    :cond_1
    if-nez p1, :cond_2

    .line 317
    return v0

    .line 319
    :cond_2
    const/4 v0, -0x1

    return v0
.end method

.method createRealTarget(I)I
    .locals 2
    .param p1, "target"    # I

    .line 112
    const/4 v0, 0x2

    if-ne p1, v0, :cond_1

    .line 113
    invoke-virtual {p0}, Lcn/nubia/server/screenswitch/SwitchImplFor627;->getDisplayId()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    const/4 v1, 0x0

    nop

    :cond_0
    return v1

    .line 115
    :cond_1
    return p1
.end method

.method dump(Ljava/io/PrintWriter;)V
    .locals 2
    .param p1, "pw"    # Ljava/io/PrintWriter;

    .line 384
    const-string v0, "SwitchImplFor627: "

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 385
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\tmCurrentDisplayId:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcn/nubia/server/screenswitch/SwitchImplFor627;->mCurrentDisplayId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 386
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\tmScreenStateInner:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcn/nubia/server/screenswitch/SwitchImplFor627;->mScreenStateInner:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 387
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\tmIndieBaseFront:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcn/nubia/server/screenswitch/SwitchImplFor627;->mIndieBaseFront:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 388
    invoke-super {p0, p1}, Lcn/nubia/server/screenswitch/SwitchInterface;->dump(Ljava/io/PrintWriter;)V

    .line 389
    return-void
.end method

.method execImpl(I)Z
    .locals 2
    .param p1, "target"    # I

    .line 125
    iget-object v0, p0, Lcn/nubia/server/screenswitch/SwitchImplFor627;->mToken:Landroid/os/IBinder;

    invoke-virtual {p0, p1}, Lcn/nubia/server/screenswitch/SwitchImplFor627;->createRealTarget(I)I

    move-result v1

    invoke-static {v0, v1}, Landroid/view/SurfaceControl;->setActiveConfig(Landroid/os/IBinder;I)Z

    move-result v0

    return v0
.end method

.method public execSwitch(ILjava/lang/String;)Z
    .locals 1
    .param p1, "target"    # I
    .param p2, "reason"    # Ljava/lang/String;

    .line 136
    invoke-direct {p0, p1}, Lcn/nubia/server/screenswitch/SwitchImplFor627;->notifyScreenModeChangeBeforeSwitch(I)V

    .line 137
    packed-switch p1, :pswitch_data_0

    :pswitch_0
    goto :goto_0

    .line 148
    :pswitch_1
    invoke-direct {p0, p2}, Lcn/nubia/server/screenswitch/SwitchImplFor627;->switchToMirror(Ljava/lang/String;)V

    goto :goto_0

    .line 145
    :pswitch_2
    invoke-direct {p0, p1, p2}, Lcn/nubia/server/screenswitch/SwitchImplFor627;->switchToIndie(ILjava/lang/String;)V

    .line 146
    goto :goto_0

    .line 142
    :pswitch_3
    invoke-direct {p0, p1, p2}, Lcn/nubia/server/screenswitch/SwitchImplFor627;->switchToBack(ILjava/lang/String;)V

    .line 143
    goto :goto_0

    .line 139
    :pswitch_4
    invoke-direct {p0, p1, p2}, Lcn/nubia/server/screenswitch/SwitchImplFor627;->switchToFront(ILjava/lang/String;)V

    .line 140
    nop

    .line 151
    :goto_0
    invoke-direct {p0, p1, p2}, Lcn/nubia/server/screenswitch/SwitchImplFor627;->isWaitPowerOffNeeded(ILjava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 152
    invoke-direct {p0, p1}, Lcn/nubia/server/screenswitch/SwitchImplFor627;->notifyScreenModeChangeAfterSwitch(I)V

    .line 154
    :cond_0
    iput p1, p0, Lcn/nubia/server/screenswitch/SwitchImplFor627;->mCurrentDisplayId:I

    .line 155
    const/4 v0, 0x1

    return v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public forcePowerOnBackScreen()V
    .locals 3

    .line 249
    const-string v0, ""

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-direct {p0, v1, v2, v0}, Lcn/nubia/server/screenswitch/SwitchImplFor627;->setSecondDisplayMode(ZZLjava/lang/String;)V

    .line 250
    iget-object v0, p0, Lcn/nubia/server/screenswitch/SwitchImplFor627;->mDisplayManager:Lcn/nubia/server/screenswitch/DisplayManagerProxy;

    const/4 v1, 0x5

    const/16 v2, 0x3c0

    invoke-virtual {v0, v1, v2}, Lcn/nubia/server/screenswitch/DisplayManagerProxy;->setBacklight(II)V

    .line 251
    return-void
.end method

.method getCurrentLCDState()I
    .locals 1

    .line 120
    iget v0, p0, Lcn/nubia/server/screenswitch/SwitchImplFor627;->mCurrentDisplayId:I

    return v0
.end method

.method getDisplayId()I
    .locals 1

    .line 72
    iget v0, p0, Lcn/nubia/server/screenswitch/SwitchImplFor627;->mCurrentDisplayId:I

    return v0
.end method

.method getScreenMode()I
    .locals 1

    .line 76
    iget v0, p0, Lcn/nubia/server/screenswitch/SwitchImplFor627;->mCurrentDisplayId:I

    invoke-virtual {p0, v0}, Lcn/nubia/server/screenswitch/SwitchImplFor627;->updateTarget(I)I

    move-result v0

    return v0
.end method

.method getSwitchingMode(I)I
    .locals 2
    .param p1, "toId"    # I

    .line 299
    invoke-virtual {p0, p1}, Lcn/nubia/server/screenswitch/SwitchImplFor627;->updateTarget(I)I

    move-result v0

    .line 300
    .local v0, "to":I
    const/16 v1, 0x3e9

    if-ne v0, v1, :cond_0

    .line 301
    const/16 v1, 0x7d1

    return v1

    .line 302
    :cond_0
    const/16 v1, 0x3e8

    if-ne v0, v1, :cond_1

    .line 303
    const/16 v1, 0x7d0

    return v1

    .line 304
    :cond_1
    const/16 v1, 0x3ea

    if-ne v0, v1, :cond_2

    .line 305
    const/16 v1, 0x7d5

    return v1

    .line 306
    :cond_2
    const/16 v1, 0x3eb

    if-ne v0, v1, :cond_3

    .line 307
    const/16 v1, 0x7d2

    return v1

    .line 309
    :cond_3
    const/16 v1, 0x3ed

    return v1
.end method

.method public isNeedCloseBrightness(ILjava/lang/String;)Z
    .locals 3
    .param p1, "target"    # I
    .param p2, "reason"    # Ljava/lang/String;

    .line 170
    const/4 v0, 0x0

    const/4 v1, 0x4

    if-eq p1, v1, :cond_3

    const/4 v1, 0x5

    if-eq p1, v1, :cond_3

    iget v1, p0, Lcn/nubia/server/screenswitch/SwitchImplFor627;->mScreenStateInner:I

    const/16 v2, 0x3ea

    if-ne v1, v2, :cond_0

    if-nez p1, :cond_0

    goto :goto_1

    .line 174
    :cond_0
    const-string/jumbo v1, "wakeup"

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "aod"

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_0

    .line 177
    :cond_1
    const/4 v0, 0x1

    return v0

    .line 175
    :cond_2
    :goto_0
    return v0

    .line 172
    :cond_3
    :goto_1
    return v0
.end method

.method public lcdStateFile()Ljava/lang/String;
    .locals 1

    .line 67
    const-string v0, "/sys/kernel/lcd_enhance/nubia_mode"

    return-object v0
.end method

.method needSwitch(I)Z
    .locals 3
    .param p1, "target"    # I

    .line 81
    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p1, :cond_3

    if-ne p1, v1, :cond_0

    goto :goto_0

    .line 85
    :cond_0
    const/4 v2, 0x4

    if-ne p1, v2, :cond_2

    .line 86
    invoke-virtual {p0}, Lcn/nubia/server/screenswitch/SwitchImplFor627;->getDisplayId()I

    move-result v2

    if-nez v2, :cond_1

    move v0, v1

    nop

    :cond_1
    return v0

    .line 88
    :cond_2
    return v0

    .line 83
    :cond_3
    :goto_0
    invoke-virtual {p0}, Lcn/nubia/server/screenswitch/SwitchImplFor627;->getDisplayId()I

    move-result v2

    if-eq p1, v2, :cond_4

    move v0, v1

    nop

    :cond_4
    return v0
.end method

.method notifyScreenModeChanged(I)V
    .locals 6
    .param p1, "screenMode"    # I

    .line 335
    const-string v0, "SwitchInterface"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[notifyScreenModeChanged] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 336
    const/4 v0, 0x0

    .line 337
    .local v0, "fw_nubia_mode":Ljava/io/FileWriter;
    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    .line 339
    .local v1, "screenModeStr":Ljava/lang/String;
    :try_start_0
    new-instance v2, Ljava/io/FileWriter;

    invoke-virtual {p0}, Lcn/nubia/server/screenswitch/SwitchImplFor627;->lcdStateFile()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/FileWriter;-><init>(Ljava/lang/String;)V

    move-object v0, v2

    .line 340
    invoke-virtual {v0, v1}, Ljava/io/FileWriter;->write(Ljava/lang/String;)V

    .line 341
    invoke-virtual {v0}, Ljava/io/FileWriter;->flush()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 345
    nop

    .line 347
    :try_start_1
    invoke-virtual {v0}, Ljava/io/FileWriter;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 348
    :goto_0
    const/4 v0, 0x0

    .line 351
    :goto_1
    goto :goto_3

    .line 349
    :catch_0
    move-exception v2

    .line 350
    .local v2, "e":Ljava/io/IOException;
    const-string v3, "SwitchInterface"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    :goto_2
    const-string v5, "[nubia_mode] "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .end local v2    # "e":Ljava/io/IOException;
    goto :goto_1

    .line 345
    :catchall_0
    move-exception v2

    goto :goto_4

    .line 342
    :catch_1
    move-exception v2

    .line 343
    .restart local v2    # "e":Ljava/io/IOException;
    :try_start_2
    const-string v3, "SwitchInterface"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[nubia_mode ex] "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 345
    .end local v2    # "e":Ljava/io/IOException;
    if-eqz v0, :cond_0

    .line 347
    :try_start_3
    invoke-virtual {v0}, Ljava/io/FileWriter;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_0

    .line 349
    :catch_2
    move-exception v2

    .line 350
    .restart local v2    # "e":Ljava/io/IOException;
    const-string v3, "SwitchInterface"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    goto :goto_2

    .line 354
    .end local v2    # "e":Ljava/io/IOException;
    :cond_0
    :goto_3
    return-void

    .line 345
    :goto_4
    if-eqz v0, :cond_1

    .line 347
    :try_start_4
    invoke-virtual {v0}, Ljava/io/FileWriter;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    .line 348
    const/4 v0, 0x0

    .line 351
    goto :goto_5

    .line 349
    :catch_3
    move-exception v3

    .line 350
    .local v3, "e":Ljava/io/IOException;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[nubia_mode] "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "SwitchInterface"

    invoke-static {v5, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 351
    .end local v3    # "e":Ljava/io/IOException;
    :cond_1
    :goto_5
    throw v2
.end method

.method setAODHelper(Lcn/nubia/server/DualAODScreenStateHelper;)V
    .locals 0
    .param p1, "helper"    # Lcn/nubia/server/DualAODScreenStateHelper;

    .line 367
    iput-object p1, p0, Lcn/nubia/server/screenswitch/SwitchImplFor627;->mAODHelper:Lcn/nubia/server/DualAODScreenStateHelper;

    .line 368
    return-void
.end method

.method setAODModeCallback(Lcn/nubia/server/screenswitch/SwitchImplFor627$AODModeCallBack;)V
    .locals 0
    .param p1, "callback"    # Lcn/nubia/server/screenswitch/SwitchImplFor627$AODModeCallBack;

    .line 357
    iput-object p1, p0, Lcn/nubia/server/screenswitch/SwitchImplFor627;->mCallback:Lcn/nubia/server/screenswitch/SwitchImplFor627$AODModeCallBack;

    .line 358
    return-void
.end method

.method setHandler(Landroid/os/Handler;)V
    .locals 0
    .param p1, "handler"    # Landroid/os/Handler;

    .line 62
    iput-object p1, p0, Lcn/nubia/server/screenswitch/SwitchImplFor627;->mHandler:Landroid/os/Handler;

    .line 63
    return-void
.end method

.method systemReady()V
    .locals 1

    .line 58
    invoke-virtual {p0}, Lcn/nubia/server/screenswitch/SwitchImplFor627;->getDisplayId()I

    move-result v0

    iput v0, p0, Lcn/nubia/server/screenswitch/SwitchImplFor627;->mCurrentDisplayId:I

    .line 59
    return-void
.end method

.method updateTarget(I)I
    .locals 1
    .param p1, "target"    # I

    .line 277
    const/16 v0, 0x3e8

    packed-switch p1, :pswitch_data_0

    .line 294
    :pswitch_0
    return v0

    .line 293
    :pswitch_1
    const/16 v0, 0x7d2

    return v0

    .line 291
    :pswitch_2
    const/16 v0, 0x7d5

    return v0

    .line 285
    :pswitch_3
    const/16 v0, 0x3eb

    return v0

    .line 283
    :pswitch_4
    const/16 v0, 0x3ea

    return v0

    .line 289
    :pswitch_5
    const/16 v0, 0x7d1

    return v0

    .line 287
    :pswitch_6
    const/16 v0, 0x7d0

    return v0

    .line 281
    :pswitch_7
    const/16 v0, 0x3e9

    return v0

    .line 279
    :pswitch_8
    return v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method updateToSwitchingStateId(I)V
    .locals 1
    .param p1, "target"    # I

    .line 92
    packed-switch p1, :pswitch_data_0

    .line 106
    iput p1, p0, Lcn/nubia/server/screenswitch/SwitchImplFor627;->mCurrentDisplayId:I

    goto :goto_0

    .line 103
    :pswitch_0
    const/16 v0, 0x8

    iput v0, p0, Lcn/nubia/server/screenswitch/SwitchImplFor627;->mCurrentDisplayId:I

    .line 104
    goto :goto_0

    .line 100
    :pswitch_1
    const/4 v0, 0x7

    iput v0, p0, Lcn/nubia/server/screenswitch/SwitchImplFor627;->mCurrentDisplayId:I

    .line 101
    goto :goto_0

    .line 97
    :pswitch_2
    const/4 v0, 0x3

    iput v0, p0, Lcn/nubia/server/screenswitch/SwitchImplFor627;->mCurrentDisplayId:I

    .line 98
    goto :goto_0

    .line 94
    :pswitch_3
    const/4 v0, 0x2

    iput v0, p0, Lcn/nubia/server/screenswitch/SwitchImplFor627;->mCurrentDisplayId:I

    .line 95
    nop

    .line 108
    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x3e8
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
