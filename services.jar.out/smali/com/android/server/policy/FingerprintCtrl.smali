.class public Lcom/android/server/policy/FingerprintCtrl;
.super Ljava/lang/Object;
.source "FingerprintCtrl.java"

# interfaces
.implements Lcom/android/server/policy/IKeyBeforeQueueingHandler;
.implements Lcom/android/server/policy/IKeyBeforeDispatchingHandler;
.implements Lcom/android/server/policy/ISettingListener;


# static fields
.field private static final DEBUG:Z = true

.field private static final DUAL_FINGERPRINT_HOME_BACK:Ljava/lang/String; = "dual_fingerprint_home_back"

.field private static final TAG:Ljava/lang/String; = "FingerprintCtrl"

.field private static final TAP_GAP_TIME:I = 0x3e8


# instance fields
.field private mActivityBlackList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mContext:Landroid/content/Context;

.field private mCurrentActivity:Ljava/lang/String;

.field private mCurrentPkg:Ljava/lang/String;

.field private mDoubleFpHandled:Z

.field private mDoubleSimultaneousDown:Z

.field private mFingerBackHomeType:I

.field private mKeyF3Down:Z

.field private mKeyF3Event:Landroid/view/KeyEvent;

.field private mKeyF4Down:Z

.field private mKeyF4Event:Landroid/view/KeyEvent;

.field private mLock:Ljava/lang/Object;

.field private mPackageBlackList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mPhoneWindowManager:Lcom/android/server/policy/PhoneWindowManager;

.field private mScreenSwitchInternal:Lnubia/os/screenswitch/ScreenSwitchInternal;

.field private mScreenSwitchManager:Lnubia/os/screenswitch/ScreenSwitchManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/server/policy/PhoneWindowManager;)V
    .locals 10
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "manager"    # Lcom/android/server/policy/PhoneWindowManager;

    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/policy/FingerprintCtrl;->mLock:Ljava/lang/Object;

    .line 44
    const-string v1, "cn.nubia.settings.fingerprint.FingerprintSettings"

    const-string v2, "cn.nubia.settings.fingerprint.FingerprintIdentifyActivity"

    const-string v3, "com.alipay.android.phone.fingerprint.FingerprintSettingMainActivity"

    const-string v4, "com.alipay.android.app.flybird.ui.window.FlyBirdWindowActivity"

    const-string v5, "com.tencent.mm/.plugin.wallet.pwd.ui.WalletPasswordSettingUI"

    const-string v6, "com.tencent.mm/.plugin.fingerprint.ui.FingerPrintAuthUI"

    const-string v7, "com.tencent.mm/.plugin.wallet.balance.ui.WalletBalanceFetchPwdInputUI"

    const-string v8, "cn.nubia.settings.fingerprint.FingerprintEnrollFinish"

    const-string v9, "cn.nubia.settings.fingerprint.FingerprintEnrollEnrolling"

    filled-new-array/range {v1 .. v9}, [Ljava/lang/String;

    move-result-object v0

    .line 45
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/policy/FingerprintCtrl;->mActivityBlackList:Ljava/util/List;

    .line 55
    const-string v0, "cn.nubia.testtest"

    const-string v1, "cn.nubia.factory"

    const-string v2, "cn.nubia.testtest1"

    filled-new-array {v0, v1, v2}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/policy/FingerprintCtrl;->mPackageBlackList:Ljava/util/List;

    .line 62
    iput-object p1, p0, Lcom/android/server/policy/FingerprintCtrl;->mContext:Landroid/content/Context;

    .line 63
    iput-object p2, p0, Lcom/android/server/policy/FingerprintCtrl;->mPhoneWindowManager:Lcom/android/server/policy/PhoneWindowManager;

    .line 64
    iget-object v0, p0, Lcom/android/server/policy/FingerprintCtrl;->mContext:Landroid/content/Context;

    const-class v1, Lnubia/os/screenswitch/ScreenSwitchManager;

    .line 65
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnubia/os/screenswitch/ScreenSwitchManager;

    iput-object v0, p0, Lcom/android/server/policy/FingerprintCtrl;->mScreenSwitchManager:Lnubia/os/screenswitch/ScreenSwitchManager;

    .line 66
    return-void
.end method

.method private getCurrentActivity()Ljava/lang/String;
    .locals 2

    .line 263
    iget-object v0, p0, Lcom/android/server/policy/FingerprintCtrl;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 264
    :try_start_0
    iget-object v1, p0, Lcom/android/server/policy/FingerprintCtrl;->mCurrentActivity:Ljava/lang/String;

    monitor-exit v0

    return-object v1

    .line 265
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private getCurrentPkg()Ljava/lang/String;
    .locals 2

    .line 269
    iget-object v0, p0, Lcom/android/server/policy/FingerprintCtrl;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 270
    :try_start_0
    iget-object v1, p0, Lcom/android/server/policy/FingerprintCtrl;->mCurrentPkg:Ljava/lang/String;

    monitor-exit v0

    return-object v1

    .line 271
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private injectKeyEvent(I)V
    .locals 18
    .param p1, "keycode"    # I

    .line 253
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v8

    .line 254
    .local v8, "now":J
    invoke-static {}, Landroid/hardware/input/InputManager;->getInstance()Landroid/hardware/input/InputManager;

    move-result-object v10

    new-instance v11, Landroid/view/KeyEvent;

    const/4 v5, 0x0

    const/4 v7, 0x0

    move-object v0, v11

    move-wide v1, v8

    move-wide v3, v8

    move/from16 v6, p1

    invoke-direct/range {v0 .. v7}, Landroid/view/KeyEvent;-><init>(JJIII)V

    const/4 v0, 0x0

    invoke-virtual {v10, v11, v0}, Landroid/hardware/input/InputManager;->injectInputEvent(Landroid/view/InputEvent;I)Z

    .line 257
    invoke-static {}, Landroid/hardware/input/InputManager;->getInstance()Landroid/hardware/input/InputManager;

    move-result-object v1

    new-instance v2, Landroid/view/KeyEvent;

    const-wide/16 v3, 0xa

    add-long v11, v8, v3

    add-long v13, v8, v3

    const/4 v15, 0x1

    const/16 v17, 0x0

    move-object v10, v2

    move/from16 v16, p1

    invoke-direct/range {v10 .. v17}, Landroid/view/KeyEvent;-><init>(JJIII)V

    invoke-virtual {v1, v2, v0}, Landroid/hardware/input/InputManager;->injectInputEvent(Landroid/view/InputEvent;I)Z

    .line 260
    return-void
.end method

.method private interceptF3KeyDown(Landroid/view/KeyEvent;)V
    .locals 7
    .param p1, "event"    # Landroid/view/KeyEvent;

    .line 125
    new-instance v0, Landroid/view/KeyEvent;

    invoke-direct {v0, p1}, Landroid/view/KeyEvent;-><init>(Landroid/view/KeyEvent;)V

    iput-object v0, p0, Lcom/android/server/policy/FingerprintCtrl;->mKeyF3Event:Landroid/view/KeyEvent;

    .line 126
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/policy/FingerprintCtrl;->mKeyF3Down:Z

    .line 127
    iget-boolean v1, p0, Lcom/android/server/policy/FingerprintCtrl;->mKeyF4Down:Z

    if-eqz v1, :cond_0

    .line 128
    iget-object v1, p0, Lcom/android/server/policy/FingerprintCtrl;->mKeyF4Event:Landroid/view/KeyEvent;

    invoke-virtual {v1}, Landroid/view/KeyEvent;->getDownTime()J

    move-result-wide v1

    iget-object v3, p0, Lcom/android/server/policy/FingerprintCtrl;->mKeyF3Event:Landroid/view/KeyEvent;

    .line 129
    invoke-virtual {v3}, Landroid/view/KeyEvent;->getDownTime()J

    move-result-wide v3

    sub-long/2addr v1, v3

    .line 130
    .local v1, "timeGap":J
    invoke-static {v1, v2}, Ljava/lang/Math;->abs(J)J

    move-result-wide v3

    const-wide/16 v5, 0x3e8

    cmp-long v3, v3, v5

    if-gez v3, :cond_0

    .line 131
    iput-boolean v0, p0, Lcom/android/server/policy/FingerprintCtrl;->mDoubleSimultaneousDown:Z

    .line 132
    invoke-direct {p0, v0}, Lcom/android/server/policy/FingerprintCtrl;->setDualFingerprintPress(Z)V

    .line 135
    .end local v1    # "timeGap":J
    :cond_0
    return-void
.end method

.method private interceptF3KeyUp(Landroid/view/KeyEvent;)V
    .locals 2
    .param p1, "event"    # Landroid/view/KeyEvent;

    .line 138
    iget-boolean v0, p0, Lcom/android/server/policy/FingerprintCtrl;->mDoubleSimultaneousDown:Z

    if-nez v0, :cond_0

    .line 140
    invoke-direct {p0, p1}, Lcom/android/server/policy/FingerprintCtrl;->shortPressF3Up(Landroid/view/KeyEvent;)V

    .line 142
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/policy/FingerprintCtrl;->mKeyF3Down:Z

    .line 143
    iget-boolean v1, p0, Lcom/android/server/policy/FingerprintCtrl;->mDoubleSimultaneousDown:Z

    if-eqz v1, :cond_1

    iget-boolean v1, p0, Lcom/android/server/policy/FingerprintCtrl;->mKeyF4Down:Z

    if-nez v1, :cond_1

    .line 144
    iput-boolean v0, p0, Lcom/android/server/policy/FingerprintCtrl;->mDoubleSimultaneousDown:Z

    .line 146
    :cond_1
    invoke-direct {p0, v0}, Lcom/android/server/policy/FingerprintCtrl;->setDualFingerprintPress(Z)V

    .line 147
    return-void
.end method

.method private interceptF4KeyDown(Landroid/view/KeyEvent;)V
    .locals 7
    .param p1, "event"    # Landroid/view/KeyEvent;

    .line 150
    new-instance v0, Landroid/view/KeyEvent;

    invoke-direct {v0, p1}, Landroid/view/KeyEvent;-><init>(Landroid/view/KeyEvent;)V

    iput-object v0, p0, Lcom/android/server/policy/FingerprintCtrl;->mKeyF4Event:Landroid/view/KeyEvent;

    .line 151
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/policy/FingerprintCtrl;->mKeyF4Down:Z

    .line 152
    iget-boolean v1, p0, Lcom/android/server/policy/FingerprintCtrl;->mKeyF3Down:Z

    if-eqz v1, :cond_0

    .line 153
    iget-object v1, p0, Lcom/android/server/policy/FingerprintCtrl;->mKeyF3Event:Landroid/view/KeyEvent;

    invoke-virtual {v1}, Landroid/view/KeyEvent;->getDownTime()J

    move-result-wide v1

    iget-object v3, p0, Lcom/android/server/policy/FingerprintCtrl;->mKeyF4Event:Landroid/view/KeyEvent;

    .line 154
    invoke-virtual {v3}, Landroid/view/KeyEvent;->getDownTime()J

    move-result-wide v3

    sub-long/2addr v1, v3

    .line 155
    .local v1, "timeGap":J
    invoke-static {v1, v2}, Ljava/lang/Math;->abs(J)J

    move-result-wide v3

    const-wide/16 v5, 0x3e8

    cmp-long v3, v3, v5

    if-gez v3, :cond_0

    .line 156
    iput-boolean v0, p0, Lcom/android/server/policy/FingerprintCtrl;->mDoubleSimultaneousDown:Z

    .line 157
    invoke-direct {p0, v0}, Lcom/android/server/policy/FingerprintCtrl;->setDualFingerprintPress(Z)V

    .line 160
    .end local v1    # "timeGap":J
    :cond_0
    return-void
.end method

.method private interceptF4KeyUp(Landroid/view/KeyEvent;)V
    .locals 2
    .param p1, "event"    # Landroid/view/KeyEvent;

    .line 163
    iget-boolean v0, p0, Lcom/android/server/policy/FingerprintCtrl;->mDoubleSimultaneousDown:Z

    if-nez v0, :cond_0

    .line 165
    invoke-direct {p0, p1}, Lcom/android/server/policy/FingerprintCtrl;->shortPressF4Up(Landroid/view/KeyEvent;)V

    .line 167
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/policy/FingerprintCtrl;->mKeyF4Down:Z

    .line 168
    iget-boolean v1, p0, Lcom/android/server/policy/FingerprintCtrl;->mDoubleSimultaneousDown:Z

    if-eqz v1, :cond_1

    iget-boolean v1, p0, Lcom/android/server/policy/FingerprintCtrl;->mKeyF3Down:Z

    if-nez v1, :cond_1

    .line 169
    iput-boolean v0, p0, Lcom/android/server/policy/FingerprintCtrl;->mDoubleSimultaneousDown:Z

    .line 171
    :cond_1
    invoke-direct {p0, v0}, Lcom/android/server/policy/FingerprintCtrl;->setDualFingerprintPress(Z)V

    .line 172
    return-void
.end method

.method private isAllowedToStartSuperSnap(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 3
    .param p1, "activityName"    # Ljava/lang/String;
    .param p2, "pkgName"    # Ljava/lang/String;

    .line 283
    iget-object v0, p0, Lcom/android/server/policy/FingerprintCtrl;->mActivityBlackList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/server/policy/FingerprintCtrl;->mPackageBlackList:Ljava/util/List;

    .line 284
    invoke-interface {v0, p2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 289
    :cond_0
    const/4 v0, 0x1

    return v0

    .line 285
    :cond_1
    :goto_0
    const-string v0, "FingerprintCtrl"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "not allowed to start supersnap: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 287
    const/4 v0, 0x0

    return v0
.end method

.method private isLearningUI()Z
    .locals 3

    .line 109
    iget-object v0, p0, Lcom/android/server/policy/FingerprintCtrl;->mPhoneWindowManager:Lcom/android/server/policy/PhoneWindowManager;

    invoke-virtual {v0}, Lcom/android/server/policy/PhoneWindowManager;->getFocusedWindow()Lcom/android/server/policy/WindowManagerPolicy$WindowState;

    move-result-object v0

    .line 110
    .local v0, "ws":Lcom/android/server/policy/WindowManagerPolicy$WindowState;
    if-nez v0, :cond_0

    .line 111
    const/4 v1, 0x0

    return v1

    .line 113
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "com.android.settings.dualscreen.SwitchIntroduceActivity"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    return v1
.end method

.method private reset()V
    .locals 1

    .line 118
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/policy/FingerprintCtrl;->mKeyF3Down:Z

    .line 119
    iput-boolean v0, p0, Lcom/android/server/policy/FingerprintCtrl;->mKeyF4Down:Z

    .line 120
    iput-boolean v0, p0, Lcom/android/server/policy/FingerprintCtrl;->mDoubleSimultaneousDown:Z

    .line 121
    invoke-direct {p0, v0}, Lcom/android/server/policy/FingerprintCtrl;->setDualFingerprintPress(Z)V

    .line 122
    return-void
.end method

.method private setDualFingerprintPress(Z)V
    .locals 3
    .param p1, "pressed"    # Z

    .line 180
    iget-boolean v0, p0, Lcom/android/server/policy/FingerprintCtrl;->mDoubleFpHandled:Z

    if-ne v0, p1, :cond_0

    .line 181
    return-void

    .line 183
    :cond_0
    iput-boolean p1, p0, Lcom/android/server/policy/FingerprintCtrl;->mDoubleFpHandled:Z

    .line 184
    const-string v0, "FingerprintCtrl"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Both fingerprint press "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 185
    iget-object v0, p0, Lcom/android/server/policy/FingerprintCtrl;->mScreenSwitchInternal:Lnubia/os/screenswitch/ScreenSwitchInternal;

    if-nez v0, :cond_1

    .line 186
    const-class v0, Lnubia/os/screenswitch/ScreenSwitchInternal;

    .line 187
    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnubia/os/screenswitch/ScreenSwitchInternal;

    iput-object v0, p0, Lcom/android/server/policy/FingerprintCtrl;->mScreenSwitchInternal:Lnubia/os/screenswitch/ScreenSwitchInternal;

    .line 189
    :cond_1
    iget-object v0, p0, Lcom/android/server/policy/FingerprintCtrl;->mScreenSwitchInternal:Lnubia/os/screenswitch/ScreenSwitchInternal;

    if-eqz v0, :cond_2

    .line 190
    iget-object v0, p0, Lcom/android/server/policy/FingerprintCtrl;->mScreenSwitchInternal:Lnubia/os/screenswitch/ScreenSwitchInternal;

    invoke-virtual {v0, p1}, Lnubia/os/screenswitch/ScreenSwitchInternal;->setDualFingerprintPress(Z)V

    .line 192
    :cond_2
    return-void
.end method

.method private shortPressF3Up(Landroid/view/KeyEvent;)V
    .locals 8
    .param p1, "event"    # Landroid/view/KeyEvent;

    .line 195
    iget v0, p0, Lcom/android/server/policy/FingerprintCtrl;->mFingerBackHomeType:I

    const/4 v1, 0x2

    const/4 v2, 0x1

    if-eq v0, v2, :cond_0

    iget v0, p0, Lcom/android/server/policy/FingerprintCtrl;->mFingerBackHomeType:I

    if-eq v0, v1, :cond_0

    .line 196
    return-void

    .line 197
    :cond_0
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    .line 198
    .local v0, "keyCode":I
    invoke-static {}, Lcn/nubia/game/GameModeHelper;->getDefault()Lcn/nubia/game/GameModeHelper;

    move-result-object v3

    .line 199
    invoke-virtual {v3}, Lcn/nubia/game/GameModeHelper;->IsGameModeRunning()Z

    move-result v3

    .line 200
    .local v3, "gameModeRunning":Z
    const-string v4, "FingerprintCtrl"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "shortPress keyCode="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, ", action="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 202
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, ", downTime="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 203
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getDownTime()J

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v6, ", eventTime="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 204
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getEventTime()J

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v6, ", gameModeRunning="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 200
    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 206
    invoke-direct {p0}, Lcom/android/server/policy/FingerprintCtrl;->getCurrentActivity()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0}, Lcom/android/server/policy/FingerprintCtrl;->getCurrentPkg()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v4, v5}, Lcom/android/server/policy/FingerprintCtrl;->isAllowedToStartSuperSnap(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 207
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getEventTime()J

    move-result-wide v4

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getDownTime()J

    move-result-wide v6

    sub-long/2addr v4, v6

    const-wide/16 v6, 0x1f4

    cmp-long v4, v4, v6

    if-gez v4, :cond_5

    if-nez v3, :cond_5

    .line 209
    iget-object v4, p0, Lcom/android/server/policy/FingerprintCtrl;->mScreenSwitchManager:Lnubia/os/screenswitch/ScreenSwitchManager;

    invoke-virtual {v4}, Lnubia/os/screenswitch/ScreenSwitchManager;->getCurrentDisplayId()I

    move-result v4

    if-ne v4, v2, :cond_1

    move v4, v2

    goto :goto_0

    :cond_1
    const/4 v4, 0x0

    .line 210
    .local v4, "isBackScreen":Z
    :goto_0
    const-string v5, "FingerprintCtrl"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "interceptKeyBeforeDispatching isBackScreen="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v7, ", mFingerBackHomeType="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v7, p0, Lcom/android/server/policy/FingerprintCtrl;->mFingerBackHomeType:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 213
    iget v5, p0, Lcom/android/server/policy/FingerprintCtrl;->mFingerBackHomeType:I

    const/4 v6, 0x3

    const/4 v7, 0x4

    if-ne v5, v2, :cond_3

    .line 214
    if-nez v4, :cond_2

    move v6, v7

    goto :goto_1

    .line 215
    :cond_2
    nop

    .line 214
    :goto_1
    invoke-direct {p0, v6}, Lcom/android/server/policy/FingerprintCtrl;->injectKeyEvent(I)V

    goto :goto_3

    .line 216
    :cond_3
    iget v2, p0, Lcom/android/server/policy/FingerprintCtrl;->mFingerBackHomeType:I

    if-ne v2, v1, :cond_5

    .line 217
    if-nez v4, :cond_4

    goto :goto_2

    .line 218
    :cond_4
    nop

    .line 217
    move v6, v7

    :goto_2
    invoke-direct {p0, v6}, Lcom/android/server/policy/FingerprintCtrl;->injectKeyEvent(I)V

    .line 221
    .end local v4    # "isBackScreen":Z
    :cond_5
    :goto_3
    return-void
.end method

.method private shortPressF4Up(Landroid/view/KeyEvent;)V
    .locals 8
    .param p1, "event"    # Landroid/view/KeyEvent;

    .line 224
    iget v0, p0, Lcom/android/server/policy/FingerprintCtrl;->mFingerBackHomeType:I

    const/4 v1, 0x2

    const/4 v2, 0x1

    if-eq v0, v2, :cond_0

    iget v0, p0, Lcom/android/server/policy/FingerprintCtrl;->mFingerBackHomeType:I

    if-eq v0, v1, :cond_0

    .line 225
    return-void

    .line 226
    :cond_0
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    .line 227
    .local v0, "keyCode":I
    invoke-static {}, Lcn/nubia/game/GameModeHelper;->getDefault()Lcn/nubia/game/GameModeHelper;

    move-result-object v3

    .line 228
    invoke-virtual {v3}, Lcn/nubia/game/GameModeHelper;->IsGameModeRunning()Z

    move-result v3

    .line 229
    .local v3, "gameModeRunning":Z
    const-string v4, "FingerprintCtrl"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "shortPress keyCode="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, ", action="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 231
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, ", downTime="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 232
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getDownTime()J

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v6, ", eventTime="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 233
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getEventTime()J

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v6, ", gameModeRunning="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 229
    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 235
    invoke-direct {p0}, Lcom/android/server/policy/FingerprintCtrl;->getCurrentActivity()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0}, Lcom/android/server/policy/FingerprintCtrl;->getCurrentPkg()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v4, v5}, Lcom/android/server/policy/FingerprintCtrl;->isAllowedToStartSuperSnap(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 236
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getEventTime()J

    move-result-wide v4

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getDownTime()J

    move-result-wide v6

    sub-long/2addr v4, v6

    const-wide/16 v6, 0x1f4

    cmp-long v4, v4, v6

    if-gez v4, :cond_5

    if-nez v3, :cond_5

    .line 238
    iget-object v4, p0, Lcom/android/server/policy/FingerprintCtrl;->mScreenSwitchManager:Lnubia/os/screenswitch/ScreenSwitchManager;

    invoke-virtual {v4}, Lnubia/os/screenswitch/ScreenSwitchManager;->getCurrentDisplayId()I

    move-result v4

    if-ne v4, v2, :cond_1

    move v4, v2

    goto :goto_0

    :cond_1
    const/4 v4, 0x0

    .line 239
    .local v4, "isBackScreen":Z
    :goto_0
    const-string v5, "FingerprintCtrl"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "interceptKeyBeforeDispatching isBackScreen="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v7, ", mFingerBackHomeType="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v7, p0, Lcom/android/server/policy/FingerprintCtrl;->mFingerBackHomeType:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 242
    iget v5, p0, Lcom/android/server/policy/FingerprintCtrl;->mFingerBackHomeType:I

    const/4 v6, 0x4

    const/4 v7, 0x3

    if-ne v5, v2, :cond_3

    .line 243
    if-nez v4, :cond_2

    move v6, v7

    goto :goto_1

    .line 244
    :cond_2
    nop

    .line 243
    :goto_1
    invoke-direct {p0, v6}, Lcom/android/server/policy/FingerprintCtrl;->injectKeyEvent(I)V

    goto :goto_3

    .line 245
    :cond_3
    iget v2, p0, Lcom/android/server/policy/FingerprintCtrl;->mFingerBackHomeType:I

    if-ne v2, v1, :cond_5

    .line 246
    if-nez v4, :cond_4

    goto :goto_2

    .line 247
    :cond_4
    nop

    .line 246
    move v6, v7

    :goto_2
    invoke-direct {p0, v6}, Lcom/android/server/policy/FingerprintCtrl;->injectKeyEvent(I)V

    .line 250
    .end local v4    # "isBackScreen":Z
    :cond_5
    :goto_3
    return-void
.end method


# virtual methods
.method public interceptKeyBeforeDispatching(Lcom/android/server/policy/WindowManagerPolicy$WindowState;Landroid/view/KeyEvent;I)J
    .locals 2
    .param p1, "win"    # Lcom/android/server/policy/WindowManagerPolicy$WindowState;
    .param p2, "event"    # Landroid/view/KeyEvent;
    .param p3, "policyFlags"    # I

    .line 176
    const-wide/high16 v0, -0x8000000000000000L

    return-wide v0
.end method

.method public interceptKeyBeforeQueueing(Landroid/view/KeyEvent;IZ)J
    .locals 8
    .param p1, "event"    # Landroid/view/KeyEvent;
    .param p2, "policyFlags"    # I
    .param p3, "isScreenOn"    # Z

    .line 77
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    .line 78
    .local v0, "keyCode":I
    const/16 v1, 0x86

    const/16 v2, 0x85

    const-wide/high16 v3, -0x8000000000000000L

    if-eq v0, v2, :cond_0

    if-ne v0, v1, :cond_7

    .line 80
    :cond_0
    const-string v5, "FingerprintCtrl"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "interceptKeyBeforeQueueing "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 81
    if-nez p3, :cond_1

    .line 82
    invoke-direct {p0}, Lcom/android/server/policy/FingerprintCtrl;->reset()V

    .line 83
    return-wide v3

    .line 85
    :cond_1
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v5

    if-nez v5, :cond_2

    const/4 v5, 0x1

    goto :goto_0

    :cond_2
    const/4 v5, 0x0

    .line 86
    .local v5, "down":Z
    :goto_0
    if-ne v0, v2, :cond_4

    .line 87
    if-eqz v5, :cond_3

    .line 88
    invoke-direct {p0, p1}, Lcom/android/server/policy/FingerprintCtrl;->interceptF3KeyDown(Landroid/view/KeyEvent;)V

    goto :goto_1

    .line 90
    :cond_3
    invoke-direct {p0, p1}, Lcom/android/server/policy/FingerprintCtrl;->interceptF3KeyUp(Landroid/view/KeyEvent;)V

    goto :goto_1

    .line 92
    :cond_4
    if-ne v0, v1, :cond_6

    .line 93
    if-eqz v5, :cond_5

    .line 94
    invoke-direct {p0, p1}, Lcom/android/server/policy/FingerprintCtrl;->interceptF4KeyDown(Landroid/view/KeyEvent;)V

    goto :goto_1

    .line 96
    :cond_5
    invoke-direct {p0, p1}, Lcom/android/server/policy/FingerprintCtrl;->interceptF4KeyUp(Landroid/view/KeyEvent;)V

    .line 99
    :cond_6
    :goto_1
    invoke-direct {p0}, Lcom/android/server/policy/FingerprintCtrl;->isLearningUI()Z

    move-result v1

    if-eqz v1, :cond_7

    .line 100
    return-wide v3

    .line 105
    .end local v5    # "down":Z
    :cond_7
    return-wide v3
.end method

.method public registerSettingsObserver(Landroid/content/ContentResolver;Landroid/database/ContentObserver;)V
    .locals 3
    .param p1, "resolver"    # Landroid/content/ContentResolver;
    .param p2, "observer"    # Landroid/database/ContentObserver;

    .line 294
    const-string v0, "dual_fingerprint_home_back"

    .line 295
    invoke-static {v0}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 294
    const/4 v1, 0x0

    const/4 v2, -0x1

    invoke-virtual {p1, v0, v1, p2, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 297
    return-void
.end method

.method public systemBooted()V
    .locals 1

    .line 69
    invoke-static {}, Lnubia/os/screenswitch/ScreenSwitchFeatureConfig;->isEnable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 70
    const-class v0, Lnubia/os/screenswitch/ScreenSwitchInternal;

    .line 71
    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnubia/os/screenswitch/ScreenSwitchInternal;

    iput-object v0, p0, Lcom/android/server/policy/FingerprintCtrl;->mScreenSwitchInternal:Lnubia/os/screenswitch/ScreenSwitchInternal;

    .line 73
    :cond_0
    return-void
.end method

.method public updatePackageChanged(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "clazzName"    # Ljava/lang/String;
    .param p2, "pkgName"    # Ljava/lang/String;

    .line 275
    iget-object v0, p0, Lcom/android/server/policy/FingerprintCtrl;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 276
    :try_start_0
    iput-object p1, p0, Lcom/android/server/policy/FingerprintCtrl;->mCurrentActivity:Ljava/lang/String;

    .line 277
    iput-object p2, p0, Lcom/android/server/policy/FingerprintCtrl;->mCurrentPkg:Ljava/lang/String;

    .line 278
    monitor-exit v0

    .line 279
    return-void

    .line 278
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public updateSettings()V
    .locals 3

    .line 300
    iget-object v0, p0, Lcom/android/server/policy/FingerprintCtrl;->mContext:Landroid/content/Context;

    .line 301
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "dual_fingerprint_home_back"

    .line 300
    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/android/server/policy/FingerprintCtrl;->mFingerBackHomeType:I

    .line 302
    return-void
.end method
