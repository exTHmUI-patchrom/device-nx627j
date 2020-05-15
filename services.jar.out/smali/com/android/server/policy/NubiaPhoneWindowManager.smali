.class public final Lcom/android/server/policy/NubiaPhoneWindowManager;
.super Ljava/lang/Object;
.source "NubiaPhoneWindowManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/policy/NubiaPhoneWindowManager$SettingsObserver;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "NubiaPhoneWindowManager"

.field public static mKeyguardLock:Z


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mFeatureFunctionManager:Lcom/android/server/policy/FeatureFunctionManager;

.field private final mNubiaAdvertiseManager:Lcom/android/server/wm/NubiaAdvertiseManager;

.field private final mPhoneWindowManager:Lcom/android/server/policy/PhoneWindowManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 30
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/server/policy/NubiaPhoneWindowManager;->mKeyguardLock:Z

    return-void
.end method

.method constructor <init>(Lcom/android/server/policy/PhoneWindowManager;Landroid/content/Context;Lcom/android/server/policy/WindowManagerPolicy$WindowManagerFuncs;)V
    .locals 1
    .param p1, "manager"    # Lcom/android/server/policy/PhoneWindowManager;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "windowManagerFuncs"    # Lcom/android/server/policy/WindowManagerPolicy$WindowManagerFuncs;

    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    iput-object p2, p0, Lcom/android/server/policy/NubiaPhoneWindowManager;->mContext:Landroid/content/Context;

    .line 53
    iput-object p1, p0, Lcom/android/server/policy/NubiaPhoneWindowManager;->mPhoneWindowManager:Lcom/android/server/policy/PhoneWindowManager;

    .line 54
    new-instance v0, Lcom/android/server/policy/FeatureFunctionManager;

    invoke-direct {v0, p2, p1, p3}, Lcom/android/server/policy/FeatureFunctionManager;-><init>(Landroid/content/Context;Lcom/android/server/policy/PhoneWindowManager;Lcom/android/server/policy/WindowManagerPolicy$WindowManagerFuncs;)V

    iput-object v0, p0, Lcom/android/server/policy/NubiaPhoneWindowManager;->mFeatureFunctionManager:Lcom/android/server/policy/FeatureFunctionManager;

    .line 55
    new-instance v0, Lcom/android/server/wm/NubiaAdvertiseManager;

    invoke-direct {v0, p2, p1}, Lcom/android/server/wm/NubiaAdvertiseManager;-><init>(Landroid/content/Context;Lcom/android/server/policy/PhoneWindowManager;)V

    iput-object v0, p0, Lcom/android/server/policy/NubiaPhoneWindowManager;->mNubiaAdvertiseManager:Lcom/android/server/wm/NubiaAdvertiseManager;

    .line 56
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/policy/NubiaPhoneWindowManager;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/policy/NubiaPhoneWindowManager;

    .line 24
    iget-object v0, p0, Lcom/android/server/policy/NubiaPhoneWindowManager;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static isFinishKeyBeforDispatching(J)Z
    .locals 2
    .param p0, "result"    # J

    .line 138
    const-wide/high16 v0, -0x8000000000000000L

    cmp-long v0, p0, v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method static isFinishKeyBeforQueueing(J)Z
    .locals 2
    .param p0, "result"    # J

    .line 110
    const-wide/high16 v0, -0x8000000000000000L

    cmp-long v0, p0, v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method static isFinishRotationForOrientationLw(I)Z
    .locals 1
    .param p0, "result"    # I

    .line 142
    const/4 v0, -0x1

    if-eq p0, v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private isLearningUI()Z
    .locals 3

    .line 211
    iget-object v0, p0, Lcom/android/server/policy/NubiaPhoneWindowManager;->mPhoneWindowManager:Lcom/android/server/policy/PhoneWindowManager;

    invoke-virtual {v0}, Lcom/android/server/policy/PhoneWindowManager;->getFocusedWindow()Lcom/android/server/policy/WindowManagerPolicy$WindowState;

    move-result-object v0

    .line 212
    .local v0, "ws":Lcom/android/server/policy/WindowManagerPolicy$WindowState;
    if-nez v0, :cond_0

    .line 213
    const/4 v1, 0x0

    return v1

    .line 215
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "com.android.settings.dualscreen.SwitchIntroduceActivity"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    return v1
.end method


# virtual methods
.method addAdvertising(Landroid/os/IBinder;Lcom/android/internal/policy/PhoneWindow;Ljava/lang/String;)V
    .locals 1
    .param p1, "appToken"    # Landroid/os/IBinder;
    .param p2, "win"    # Lcom/android/internal/policy/PhoneWindow;
    .param p3, "packageName"    # Ljava/lang/String;

    .line 190
    iget-object v0, p0, Lcom/android/server/policy/NubiaPhoneWindowManager;->mNubiaAdvertiseManager:Lcom/android/server/wm/NubiaAdvertiseManager;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/server/wm/NubiaAdvertiseManager;->addAdvertising(Landroid/os/IBinder;Lcom/android/internal/policy/PhoneWindow;Ljava/lang/String;)V

    .line 191
    return-void
.end method

.method canShowAdvertis(Ljava/lang/String;)Z
    .locals 1
    .param p1, "packageName"    # Ljava/lang/String;

    .line 182
    iget-object v0, p0, Lcom/android/server/policy/NubiaPhoneWindowManager;->mNubiaAdvertiseManager:Lcom/android/server/wm/NubiaAdvertiseManager;

    invoke-virtual {v0, p1}, Lcom/android/server/wm/NubiaAdvertiseManager;->canShowAdvertis(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method getAdDispalyTime(Ljava/lang/String;)I
    .locals 1
    .param p1, "packageName"    # Ljava/lang/String;

    .line 186
    iget-object v0, p0, Lcom/android/server/policy/NubiaPhoneWindowManager;->mNubiaAdvertiseManager:Lcom/android/server/wm/NubiaAdvertiseManager;

    invoke-virtual {v0, p1}, Lcom/android/server/wm/NubiaAdvertiseManager;->getAdDispalyTime(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method init()V
    .locals 4

    .line 59
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    .line 60
    .local v0, "handler":Landroid/os/Handler;
    iget-object v1, p0, Lcom/android/server/policy/NubiaPhoneWindowManager;->mFeatureFunctionManager:Lcom/android/server/policy/FeatureFunctionManager;

    iget-object v1, v1, Lcom/android/server/policy/FeatureFunctionManager;->mSettingListeners:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/policy/ISettingListener;

    .line 61
    .local v2, "listener":Lcom/android/server/policy/ISettingListener;
    new-instance v3, Lcom/android/server/policy/NubiaPhoneWindowManager$SettingsObserver;

    invoke-direct {v3, p0, v0, v2}, Lcom/android/server/policy/NubiaPhoneWindowManager$SettingsObserver;-><init>(Lcom/android/server/policy/NubiaPhoneWindowManager;Landroid/os/Handler;Lcom/android/server/policy/ISettingListener;)V

    invoke-virtual {v3}, Lcom/android/server/policy/NubiaPhoneWindowManager$SettingsObserver;->observe()V

    .line 62
    .end local v2    # "listener":Lcom/android/server/policy/ISettingListener;
    goto :goto_0

    .line 63
    :cond_0
    return-void
.end method

.method interceptHomeKey(Landroid/view/KeyEvent;Z)Z
    .locals 1
    .param p1, "event"    # Landroid/view/KeyEvent;
    .param p2, "keyguardOn"    # Z

    .line 170
    iget-object v0, p0, Lcom/android/server/policy/NubiaPhoneWindowManager;->mFeatureFunctionManager:Lcom/android/server/policy/FeatureFunctionManager;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/policy/FeatureFunctionManager;->interceptHomeKey(Landroid/view/KeyEvent;Z)Z

    move-result v0

    return v0
.end method

.method interceptKeyBeforeDispatching(Lcom/android/server/policy/WindowManagerPolicy$WindowState;Landroid/view/KeyEvent;I)J
    .locals 7
    .param p1, "win"    # Lcom/android/server/policy/WindowManagerPolicy$WindowState;
    .param p2, "event"    # Landroid/view/KeyEvent;
    .param p3, "policyFlags"    # I

    .line 122
    const-wide/high16 v0, -0x8000000000000000L

    .line 123
    .local v0, "result":J
    const/4 v2, 0x0

    .line 124
    .local v2, "position":I
    iget-object v3, p0, Lcom/android/server/policy/NubiaPhoneWindowManager;->mFeatureFunctionManager:Lcom/android/server/policy/FeatureFunctionManager;

    iget-object v3, v3, Lcom/android/server/policy/FeatureFunctionManager;->mDispatchingHandlers:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/policy/IKeyBeforeDispatchingHandler;

    .line 125
    .local v4, "handler":Lcom/android/server/policy/IKeyBeforeDispatchingHandler;
    invoke-interface {v4, p1, p2, p3}, Lcom/android/server/policy/IKeyBeforeDispatchingHandler;->interceptKeyBeforeDispatching(Lcom/android/server/policy/WindowManagerPolicy$WindowState;Landroid/view/KeyEvent;I)J

    move-result-wide v0

    .line 127
    const-wide/high16 v5, -0x8000000000000000L

    cmp-long v5, v0, v5

    if-eqz v5, :cond_0

    .line 128
    const-string v3, "NubiaPhoneWindowManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "intercept Key Before Dispatching result = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v6, ", position = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 130
    return-wide v0

    .line 132
    :cond_0
    add-int/lit8 v2, v2, 0x1

    .line 133
    .end local v4    # "handler":Lcom/android/server/policy/IKeyBeforeDispatchingHandler;
    goto :goto_0

    .line 134
    :cond_1
    return-wide v0
.end method

.method interceptKeyBeforeQueueing(Landroid/view/KeyEvent;IZZ)J
    .locals 8
    .param p1, "event"    # Landroid/view/KeyEvent;
    .param p2, "policyFlags"    # I
    .param p3, "isScreenOn"    # Z
    .param p4, "isKeyguardLock"    # Z

    .line 82
    const-wide/high16 v0, -0x8000000000000000L

    .line 83
    .local v0, "result":J
    const/4 v2, 0x0

    .line 84
    .local v2, "position":I
    sput-boolean p4, Lcom/android/server/policy/NubiaPhoneWindowManager;->mKeyguardLock:Z

    .line 86
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v3

    const/16 v4, 0x85

    if-eq v3, v4, :cond_1

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v3

    const/16 v4, 0x86

    if-ne v3, v4, :cond_0

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v3, 0x1

    .line 88
    .local v3, "isFingerPrintKey":Z
    :goto_1
    iget-object v4, p0, Lcom/android/server/policy/NubiaPhoneWindowManager;->mFeatureFunctionManager:Lcom/android/server/policy/FeatureFunctionManager;

    iget-object v4, v4, Lcom/android/server/policy/FeatureFunctionManager;->mQueueingHandlers:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/policy/IKeyBeforeQueueingHandler;

    .line 89
    .local v5, "handler":Lcom/android/server/policy/IKeyBeforeQueueingHandler;
    invoke-interface {v5, p1, p2, p3}, Lcom/android/server/policy/IKeyBeforeQueueingHandler;->interceptKeyBeforeQueueing(Landroid/view/KeyEvent;IZ)J

    move-result-wide v0

    .line 92
    const-wide/high16 v6, -0x8000000000000000L

    cmp-long v6, v0, v6

    if-eqz v6, :cond_2

    if-nez v3, :cond_2

    .line 93
    const-string v4, "NubiaPhoneWindowManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "intercept Key Before Queueing result = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v7, ", position = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 95
    return-wide v0

    .line 97
    :cond_2
    add-int/lit8 v2, v2, 0x1

    .line 98
    .end local v5    # "handler":Lcom/android/server/policy/IKeyBeforeQueueingHandler;
    goto :goto_2

    .line 100
    :cond_3
    sget-object v4, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string v5, "NX627J"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_4

    sget-object v4, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string v5, "NX616J"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 101
    :cond_4
    if-eqz v3, :cond_5

    invoke-direct {p0}, Lcom/android/server/policy/NubiaPhoneWindowManager;->isLearningUI()Z

    move-result v4

    if-nez v4, :cond_5

    .line 102
    const-wide/16 v0, 0x0

    .line 106
    :cond_5
    return-wide v0
.end method

.method interceptMenuAndBackKey(Landroid/view/KeyEvent;Z)Z
    .locals 1
    .param p1, "event"    # Landroid/view/KeyEvent;
    .param p2, "keyguardOn"    # Z

    .line 178
    iget-object v0, p0, Lcom/android/server/policy/NubiaPhoneWindowManager;->mFeatureFunctionManager:Lcom/android/server/policy/FeatureFunctionManager;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/policy/FeatureFunctionManager;->interceptMenuAndBackKey(Landroid/view/KeyEvent;Z)Z

    move-result v0

    return v0
.end method

.method interceptMotionAfterPressHomeKey(I)Z
    .locals 1
    .param p1, "policyFlags"    # I

    .line 166
    iget-object v0, p0, Lcom/android/server/policy/NubiaPhoneWindowManager;->mFeatureFunctionManager:Lcom/android/server/policy/FeatureFunctionManager;

    invoke-virtual {v0, p1}, Lcom/android/server/policy/FeatureFunctionManager;->interceptMotionAfterPressHomeKey(I)Z

    move-result v0

    return v0
.end method

.method interceptMotionAfterPressMenuAndBackKey(I)Z
    .locals 1
    .param p1, "policyFlags"    # I

    .line 174
    iget-object v0, p0, Lcom/android/server/policy/NubiaPhoneWindowManager;->mFeatureFunctionManager:Lcom/android/server/policy/FeatureFunctionManager;

    invoke-virtual {v0, p1}, Lcom/android/server/policy/FeatureFunctionManager;->interceptMotionAfterPressMenuAndBackKey(I)Z

    move-result v0

    return v0
.end method

.method notifyGameSwitchChanged(JZZ)V
    .locals 1
    .param p1, "whenNanos"    # J
    .param p3, "gameSwitch"    # Z
    .param p4, "isScreenOn"    # Z

    .line 202
    iget-object v0, p0, Lcom/android/server/policy/NubiaPhoneWindowManager;->mFeatureFunctionManager:Lcom/android/server/policy/FeatureFunctionManager;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/android/server/policy/FeatureFunctionManager;->notifyGameSwitchChanged(JZZ)V

    .line 203
    return-void
.end method

.method playSoundEffect(Landroid/view/KeyEvent;IZ)V
    .locals 2
    .param p1, "event"    # Landroid/view/KeyEvent;
    .param p2, "keyCode"    # I
    .param p3, "keyguardOn"    # Z

    .line 155
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getDeviceId()I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 156
    iget-object v0, p0, Lcom/android/server/policy/NubiaPhoneWindowManager;->mFeatureFunctionManager:Lcom/android/server/policy/FeatureFunctionManager;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/server/policy/FeatureFunctionManager;->playSoundEffect(Landroid/view/KeyEvent;IZ)V

    .line 158
    :cond_0
    return-void
.end method

.method screenTurnedOff()V
    .locals 1

    .line 198
    iget-object v0, p0, Lcom/android/server/policy/NubiaPhoneWindowManager;->mFeatureFunctionManager:Lcom/android/server/policy/FeatureFunctionManager;

    invoke-virtual {v0}, Lcom/android/server/policy/FeatureFunctionManager;->screenTurnedOff()V

    .line 199
    return-void
.end method

.method screenTurnedOn()V
    .locals 1

    .line 194
    iget-object v0, p0, Lcom/android/server/policy/NubiaPhoneWindowManager;->mFeatureFunctionManager:Lcom/android/server/policy/FeatureFunctionManager;

    invoke-virtual {v0}, Lcom/android/server/policy/FeatureFunctionManager;->screenTurnedOn()V

    .line 195
    return-void
.end method

.method startOrStopGameBox(ZZZ)V
    .locals 1
    .param p1, "factoryFlag"    # Z
    .param p2, "gameSwitch"    # Z
    .param p3, "isScreenOn"    # Z

    .line 206
    iget-object v0, p0, Lcom/android/server/policy/NubiaPhoneWindowManager;->mFeatureFunctionManager:Lcom/android/server/policy/FeatureFunctionManager;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/server/policy/FeatureFunctionManager;->startOrStopGameBox(ZZZ)V

    .line 207
    return-void
.end method

.method systemBooted()V
    .locals 1

    .line 150
    iget-object v0, p0, Lcom/android/server/policy/NubiaPhoneWindowManager;->mFeatureFunctionManager:Lcom/android/server/policy/FeatureFunctionManager;

    invoke-virtual {v0}, Lcom/android/server/policy/FeatureFunctionManager;->systemBooted()V

    .line 151
    iget-object v0, p0, Lcom/android/server/policy/NubiaPhoneWindowManager;->mNubiaAdvertiseManager:Lcom/android/server/wm/NubiaAdvertiseManager;

    invoke-virtual {v0}, Lcom/android/server/wm/NubiaAdvertiseManager;->bindService()V

    .line 152
    return-void
.end method

.method systemReady()V
    .locals 1

    .line 146
    iget-object v0, p0, Lcom/android/server/policy/NubiaPhoneWindowManager;->mFeatureFunctionManager:Lcom/android/server/policy/FeatureFunctionManager;

    invoke-virtual {v0}, Lcom/android/server/policy/FeatureFunctionManager;->systemReady()V

    .line 147
    return-void
.end method

.method updatePackageChanged(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "clazzName"    # Ljava/lang/String;
    .param p2, "pkgName"    # Ljava/lang/String;

    .line 162
    iget-object v0, p0, Lcom/android/server/policy/NubiaPhoneWindowManager;->mFeatureFunctionManager:Lcom/android/server/policy/FeatureFunctionManager;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/policy/FeatureFunctionManager;->updatePackageChanged(Ljava/lang/String;Ljava/lang/String;)V

    .line 163
    return-void
.end method

.method updateSettings()V
    .locals 2

    .line 66
    iget-object v0, p0, Lcom/android/server/policy/NubiaPhoneWindowManager;->mPhoneWindowManager:Lcom/android/server/policy/PhoneWindowManager;

    iget-boolean v0, v0, Lcom/android/server/policy/PhoneWindowManager;->mSystemReady:Z

    if-eqz v0, :cond_0

    .line 67
    iget-object v0, p0, Lcom/android/server/policy/NubiaPhoneWindowManager;->mFeatureFunctionManager:Lcom/android/server/policy/FeatureFunctionManager;

    iget-object v0, v0, Lcom/android/server/policy/FeatureFunctionManager;->mSettingListeners:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/policy/ISettingListener;

    .line 68
    .local v1, "handler":Lcom/android/server/policy/ISettingListener;
    invoke-interface {v1}, Lcom/android/server/policy/ISettingListener;->updateSettings()V

    .line 69
    .end local v1    # "handler":Lcom/android/server/policy/ISettingListener;
    goto :goto_0

    .line 71
    :cond_0
    return-void
.end method
