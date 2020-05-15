.class public Lcn/nubia/server/breathinglight/BreathingLightStateMachine;
.super Lcom/android/internal/util/StateMachine;
.source "BreathingLightStateMachine.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/nubia/server/breathinglight/BreathingLightStateMachine$InputEventHandler;,
        Lcn/nubia/server/breathinglight/BreathingLightStateMachine$SCreenOnNormalState;,
        Lcn/nubia/server/breathinglight/BreathingLightStateMachine$SCreenOnLockedState;,
        Lcn/nubia/server/breathinglight/BreathingLightStateMachine$SCreenOnState;,
        Lcn/nubia/server/breathinglight/BreathingLightStateMachine$SCreenOffState;,
        Lcn/nubia/server/breathinglight/BreathingLightStateMachine$DefaultState;
    }
.end annotation


# static fields
.field public static final CMD_REQUEST_APP_MSG:I = 0x69

.field public static final CMD_REQUEST_CHARGED:I = 0x6b

.field public static final CMD_REQUEST_CHARGING:I = 0x6a

.field public static final CMD_REQUEST_CLOSE_APP_MSG:I = 0x71

.field public static final CMD_REQUEST_KEYGUARD_DRAG_RELEASE:I = 0x65

.field public static final CMD_REQUEST_KEYGUARD_DRAG_START:I = 0x64

.field public static final CMD_REQUEST_KEY_EVENT:I = 0x66

.field public static final CMD_REQUEST_LOW_POWER:I = 0x72

.field public static final CMD_REQUEST_MISS_EVENT:I = 0x68

.field public static final CMD_REQUEST_MOTION_EVENT:I = 0x67

.field public static final CMD_REQUEST_PROXIMITY_SCREEN_OFF:I = 0x6d

.field public static final CMD_REQUEST_PROXIMITY_SCREEN_ON:I = 0x6e

.field public static final CMD_REQUEST_SCENE:I = 0xc8

.field public static final CMD_REQUEST_SET_BRIGHTNESS:I = 0x6c

.field public static final CMD_STATE_BOOT_COMPLETE:I = 0x4

.field public static final CMD_STATE_KEYGUARD_UNLOCK:I = 0x3

.field public static final CMD_STATE_SCREEN_OFF:I = 0x2

.field public static final CMD_STATE_SCREEN_ON:I = 0x1

.field private static final MSG_TURN_OFF_LIGHT:I = 0x3ea

.field private static final MSG_TURN_ON_LIGHT:I = 0x3e9

.field private static final TAG:Ljava/lang/String; = "BreathingLightStateMachine"


# instance fields
.field private mContext:Landroid/content/Context;

.field private final mDefaultState:Lcn/nubia/server/breathinglight/BreathingLightStateMachine$DefaultState;

.field private mHasMissEvent:Z

.field private mInputEventHandler:Lcn/nubia/server/breathinglight/BreathingLightStateMachine$InputEventHandler;

.field private mInputEventThread:Landroid/os/HandlerThread;

.field private mKeyguardManager:Landroid/app/KeyguardManager;

.field private final mSCreenOffState:Lcn/nubia/server/breathinglight/BreathingLightStateMachine$SCreenOffState;

.field private final mSCreenOnLockedState:Lcn/nubia/server/breathinglight/BreathingLightStateMachine$SCreenOnLockedState;

.field private final mSCreenOnNormalState:Lcn/nubia/server/breathinglight/BreathingLightStateMachine$SCreenOnNormalState;

.field private final mSCreenOnState:Lcn/nubia/server/breathinglight/BreathingLightStateMachine$SCreenOnState;

.field private mService:Lcn/nubia/server/breathinglight/BreathingLightService;


# direct methods
.method protected constructor <init>(Landroid/content/Context;Lcn/nubia/server/breathinglight/BreathingLightService;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "service"    # Lcn/nubia/server/breathinglight/BreathingLightService;

    .line 55
    const-string v0, "BreathingLightStateMachine"

    invoke-direct {p0, v0}, Lcom/android/internal/util/StateMachine;-><init>(Ljava/lang/String;)V

    .line 45
    new-instance v0, Lcn/nubia/server/breathinglight/BreathingLightStateMachine$DefaultState;

    invoke-direct {v0, p0}, Lcn/nubia/server/breathinglight/BreathingLightStateMachine$DefaultState;-><init>(Lcn/nubia/server/breathinglight/BreathingLightStateMachine;)V

    iput-object v0, p0, Lcn/nubia/server/breathinglight/BreathingLightStateMachine;->mDefaultState:Lcn/nubia/server/breathinglight/BreathingLightStateMachine$DefaultState;

    .line 46
    new-instance v0, Lcn/nubia/server/breathinglight/BreathingLightStateMachine$SCreenOffState;

    invoke-direct {v0, p0}, Lcn/nubia/server/breathinglight/BreathingLightStateMachine$SCreenOffState;-><init>(Lcn/nubia/server/breathinglight/BreathingLightStateMachine;)V

    iput-object v0, p0, Lcn/nubia/server/breathinglight/BreathingLightStateMachine;->mSCreenOffState:Lcn/nubia/server/breathinglight/BreathingLightStateMachine$SCreenOffState;

    .line 47
    new-instance v0, Lcn/nubia/server/breathinglight/BreathingLightStateMachine$SCreenOnState;

    invoke-direct {v0, p0}, Lcn/nubia/server/breathinglight/BreathingLightStateMachine$SCreenOnState;-><init>(Lcn/nubia/server/breathinglight/BreathingLightStateMachine;)V

    iput-object v0, p0, Lcn/nubia/server/breathinglight/BreathingLightStateMachine;->mSCreenOnState:Lcn/nubia/server/breathinglight/BreathingLightStateMachine$SCreenOnState;

    .line 48
    new-instance v0, Lcn/nubia/server/breathinglight/BreathingLightStateMachine$SCreenOnLockedState;

    invoke-direct {v0, p0}, Lcn/nubia/server/breathinglight/BreathingLightStateMachine$SCreenOnLockedState;-><init>(Lcn/nubia/server/breathinglight/BreathingLightStateMachine;)V

    iput-object v0, p0, Lcn/nubia/server/breathinglight/BreathingLightStateMachine;->mSCreenOnLockedState:Lcn/nubia/server/breathinglight/BreathingLightStateMachine$SCreenOnLockedState;

    .line 49
    new-instance v0, Lcn/nubia/server/breathinglight/BreathingLightStateMachine$SCreenOnNormalState;

    invoke-direct {v0, p0}, Lcn/nubia/server/breathinglight/BreathingLightStateMachine$SCreenOnNormalState;-><init>(Lcn/nubia/server/breathinglight/BreathingLightStateMachine;)V

    iput-object v0, p0, Lcn/nubia/server/breathinglight/BreathingLightStateMachine;->mSCreenOnNormalState:Lcn/nubia/server/breathinglight/BreathingLightStateMachine$SCreenOnNormalState;

    .line 51
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcn/nubia/server/breathinglight/BreathingLightStateMachine;->mHasMissEvent:Z

    .line 56
    iput-object p1, p0, Lcn/nubia/server/breathinglight/BreathingLightStateMachine;->mContext:Landroid/content/Context;

    .line 57
    iput-object p2, p0, Lcn/nubia/server/breathinglight/BreathingLightStateMachine;->mService:Lcn/nubia/server/breathinglight/BreathingLightService;

    .line 59
    iget-object v0, p0, Lcn/nubia/server/breathinglight/BreathingLightStateMachine;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "keyguard"

    .line 60
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/KeyguardManager;

    iput-object v0, p0, Lcn/nubia/server/breathinglight/BreathingLightStateMachine;->mKeyguardManager:Landroid/app/KeyguardManager;

    .line 62
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "BreathLightCallJNI"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcn/nubia/server/breathinglight/BreathingLightStateMachine;->mInputEventThread:Landroid/os/HandlerThread;

    .line 63
    iget-object v0, p0, Lcn/nubia/server/breathinglight/BreathingLightStateMachine;->mInputEventThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 64
    new-instance v0, Lcn/nubia/server/breathinglight/BreathingLightStateMachine$InputEventHandler;

    iget-object v1, p0, Lcn/nubia/server/breathinglight/BreathingLightStateMachine;->mInputEventThread:Landroid/os/HandlerThread;

    .line 65
    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcn/nubia/server/breathinglight/BreathingLightStateMachine$InputEventHandler;-><init>(Lcn/nubia/server/breathinglight/BreathingLightStateMachine;Landroid/os/Looper;)V

    iput-object v0, p0, Lcn/nubia/server/breathinglight/BreathingLightStateMachine;->mInputEventHandler:Lcn/nubia/server/breathinglight/BreathingLightStateMachine$InputEventHandler;

    .line 67
    iget-object v0, p0, Lcn/nubia/server/breathinglight/BreathingLightStateMachine;->mDefaultState:Lcn/nubia/server/breathinglight/BreathingLightStateMachine$DefaultState;

    invoke-virtual {p0, v0}, Lcn/nubia/server/breathinglight/BreathingLightStateMachine;->addState(Lcom/android/internal/util/State;)V

    .line 68
    iget-object v0, p0, Lcn/nubia/server/breathinglight/BreathingLightStateMachine;->mSCreenOffState:Lcn/nubia/server/breathinglight/BreathingLightStateMachine$SCreenOffState;

    iget-object v1, p0, Lcn/nubia/server/breathinglight/BreathingLightStateMachine;->mDefaultState:Lcn/nubia/server/breathinglight/BreathingLightStateMachine$DefaultState;

    invoke-virtual {p0, v0, v1}, Lcn/nubia/server/breathinglight/BreathingLightStateMachine;->addState(Lcom/android/internal/util/State;Lcom/android/internal/util/State;)V

    .line 69
    iget-object v0, p0, Lcn/nubia/server/breathinglight/BreathingLightStateMachine;->mSCreenOnState:Lcn/nubia/server/breathinglight/BreathingLightStateMachine$SCreenOnState;

    iget-object v1, p0, Lcn/nubia/server/breathinglight/BreathingLightStateMachine;->mDefaultState:Lcn/nubia/server/breathinglight/BreathingLightStateMachine$DefaultState;

    invoke-virtual {p0, v0, v1}, Lcn/nubia/server/breathinglight/BreathingLightStateMachine;->addState(Lcom/android/internal/util/State;Lcom/android/internal/util/State;)V

    .line 70
    iget-object v0, p0, Lcn/nubia/server/breathinglight/BreathingLightStateMachine;->mSCreenOnLockedState:Lcn/nubia/server/breathinglight/BreathingLightStateMachine$SCreenOnLockedState;

    iget-object v1, p0, Lcn/nubia/server/breathinglight/BreathingLightStateMachine;->mSCreenOnState:Lcn/nubia/server/breathinglight/BreathingLightStateMachine$SCreenOnState;

    invoke-virtual {p0, v0, v1}, Lcn/nubia/server/breathinglight/BreathingLightStateMachine;->addState(Lcom/android/internal/util/State;Lcom/android/internal/util/State;)V

    .line 71
    iget-object v0, p0, Lcn/nubia/server/breathinglight/BreathingLightStateMachine;->mSCreenOnNormalState:Lcn/nubia/server/breathinglight/BreathingLightStateMachine$SCreenOnNormalState;

    iget-object v1, p0, Lcn/nubia/server/breathinglight/BreathingLightStateMachine;->mSCreenOnState:Lcn/nubia/server/breathinglight/BreathingLightStateMachine$SCreenOnState;

    invoke-virtual {p0, v0, v1}, Lcn/nubia/server/breathinglight/BreathingLightStateMachine;->addState(Lcom/android/internal/util/State;Lcom/android/internal/util/State;)V

    .line 72
    iget-object v0, p0, Lcn/nubia/server/breathinglight/BreathingLightStateMachine;->mSCreenOnLockedState:Lcn/nubia/server/breathinglight/BreathingLightStateMachine$SCreenOnLockedState;

    invoke-virtual {p0, v0}, Lcn/nubia/server/breathinglight/BreathingLightStateMachine;->setInitialState(Lcom/android/internal/util/State;)V

    .line 73
    return-void
.end method

.method static synthetic access$000(Lcn/nubia/server/breathinglight/BreathingLightStateMachine;)V
    .locals 0
    .param p0, "x0"    # Lcn/nubia/server/breathinglight/BreathingLightStateMachine;

    .line 14
    invoke-direct {p0}, Lcn/nubia/server/breathinglight/BreathingLightStateMachine;->handleScreenOff()V

    return-void
.end method

.method static synthetic access$100(Lcn/nubia/server/breathinglight/BreathingLightStateMachine;)V
    .locals 0
    .param p0, "x0"    # Lcn/nubia/server/breathinglight/BreathingLightStateMachine;

    .line 14
    invoke-direct {p0}, Lcn/nubia/server/breathinglight/BreathingLightStateMachine;->handleBootCompleted()V

    return-void
.end method

.method static synthetic access$200(Lcn/nubia/server/breathinglight/BreathingLightStateMachine;)Lcn/nubia/server/breathinglight/BreathingLightService;
    .locals 1
    .param p0, "x0"    # Lcn/nubia/server/breathinglight/BreathingLightStateMachine;

    .line 14
    iget-object v0, p0, Lcn/nubia/server/breathinglight/BreathingLightStateMachine;->mService:Lcn/nubia/server/breathinglight/BreathingLightService;

    return-object v0
.end method

.method private getCurrentStateName()Ljava/lang/String;
    .locals 1

    .line 80
    invoke-virtual {p0}, Lcn/nubia/server/breathinglight/BreathingLightStateMachine;->getCurrentState()Lcom/android/internal/util/IState;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/internal/util/IState;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private handleBootCompleted()V
    .locals 4

    .line 193
    iget-object v0, p0, Lcn/nubia/server/breathinglight/BreathingLightStateMachine;->mService:Lcn/nubia/server/breathinglight/BreathingLightService;

    const/4 v1, 0x0

    const/16 v2, 0x10

    const/4 v3, 0x1

    invoke-virtual {v0, v2, v3, v1, v1}, Lcn/nubia/server/breathinglight/BreathingLightService;->setBreathingLightState(IIII)V

    .line 195
    iget-object v0, p0, Lcn/nubia/server/breathinglight/BreathingLightStateMachine;->mKeyguardManager:Landroid/app/KeyguardManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/nubia/server/breathinglight/BreathingLightStateMachine;->mKeyguardManager:Landroid/app/KeyguardManager;

    invoke-virtual {v0}, Landroid/app/KeyguardManager;->isKeyguardLocked()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 196
    iget-object v0, p0, Lcn/nubia/server/breathinglight/BreathingLightStateMachine;->mSCreenOnLockedState:Lcn/nubia/server/breathinglight/BreathingLightStateMachine$SCreenOnLockedState;

    invoke-virtual {p0, v0}, Lcn/nubia/server/breathinglight/BreathingLightStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    goto :goto_0

    .line 198
    :cond_0
    iget-object v0, p0, Lcn/nubia/server/breathinglight/BreathingLightStateMachine;->mSCreenOnNormalState:Lcn/nubia/server/breathinglight/BreathingLightStateMachine$SCreenOnNormalState;

    invoke-virtual {p0, v0}, Lcn/nubia/server/breathinglight/BreathingLightStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    .line 200
    :goto_0
    return-void
.end method

.method private handleScreenOff()V
    .locals 1

    .line 213
    iget-object v0, p0, Lcn/nubia/server/breathinglight/BreathingLightStateMachine;->mSCreenOffState:Lcn/nubia/server/breathinglight/BreathingLightStateMachine$SCreenOffState;

    invoke-virtual {p0, v0}, Lcn/nubia/server/breathinglight/BreathingLightStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    .line 214
    return-void
.end method


# virtual methods
.method protected handleCharged()V
    .locals 3

    .line 239
    iget-object v0, p0, Lcn/nubia/server/breathinglight/BreathingLightStateMachine;->mService:Lcn/nubia/server/breathinglight/BreathingLightService;

    const/4 v1, 0x0

    const/16 v2, 0x10

    invoke-virtual {v0, v2, v1, v1, v1}, Lcn/nubia/server/breathinglight/BreathingLightService;->setBreathingLightState(IIII)V

    .line 241
    return-void
.end method

.method protected handleCharging()V
    .locals 4

    .line 234
    iget-object v0, p0, Lcn/nubia/server/breathinglight/BreathingLightStateMachine;->mService:Lcn/nubia/server/breathinglight/BreathingLightService;

    const/4 v1, 0x0

    const/16 v2, 0x10

    const/4 v3, 0x1

    invoke-virtual {v0, v2, v3, v1, v1}, Lcn/nubia/server/breathinglight/BreathingLightService;->setBreathingLightState(IIII)V

    .line 236
    return-void
.end method

.method protected handleCloseMissEvent()V
    .locals 3

    .line 229
    iget-object v0, p0, Lcn/nubia/server/breathinglight/BreathingLightStateMachine;->mService:Lcn/nubia/server/breathinglight/BreathingLightService;

    const/4 v1, 0x0

    const/16 v2, 0x10

    invoke-virtual {v0, v2, v1, v1, v1}, Lcn/nubia/server/breathinglight/BreathingLightService;->setBreathingLightState(IIII)V

    .line 231
    return-void
.end method

.method protected handleKeyEvent()V
    .locals 7

    .line 256
    iget-object v0, p0, Lcn/nubia/server/breathinglight/BreathingLightStateMachine;->mService:Lcn/nubia/server/breathinglight/BreathingLightService;

    invoke-virtual {v0}, Lcn/nubia/server/breathinglight/BreathingLightService;->isBreathingLightTouchEnable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 257
    iget-object v0, p0, Lcn/nubia/server/breathinglight/BreathingLightStateMachine;->mInputEventHandler:Lcn/nubia/server/breathinglight/BreathingLightStateMachine$InputEventHandler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcn/nubia/server/breathinglight/BreathingLightStateMachine$InputEventHandler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 258
    const/16 v0, 0x28

    .line 260
    .local v0, "lights":I
    iget-object v1, p0, Lcn/nubia/server/breathinglight/BreathingLightStateMachine;->mInputEventHandler:Lcn/nubia/server/breathinglight/BreathingLightStateMachine$InputEventHandler;

    iget-object v2, p0, Lcn/nubia/server/breathinglight/BreathingLightStateMachine;->mInputEventHandler:Lcn/nubia/server/breathinglight/BreathingLightStateMachine$InputEventHandler;

    const/16 v3, 0x3ea

    .line 261
    const/4 v4, 0x0

    invoke-virtual {v2, v3, v0, v4}, Lcn/nubia/server/breathinglight/BreathingLightStateMachine$InputEventHandler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v2

    const-wide/16 v5, 0x5dc

    .line 260
    invoke-virtual {v1, v2, v5, v6}, Lcn/nubia/server/breathinglight/BreathingLightStateMachine$InputEventHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 263
    const/16 v0, 0x38

    .line 265
    iget-object v1, p0, Lcn/nubia/server/breathinglight/BreathingLightStateMachine;->mInputEventHandler:Lcn/nubia/server/breathinglight/BreathingLightStateMachine$InputEventHandler;

    iget-object v2, p0, Lcn/nubia/server/breathinglight/BreathingLightStateMachine;->mInputEventHandler:Lcn/nubia/server/breathinglight/BreathingLightStateMachine$InputEventHandler;

    const/16 v3, 0x3e9

    iget-object v5, p0, Lcn/nubia/server/breathinglight/BreathingLightStateMachine;->mService:Lcn/nubia/server/breathinglight/BreathingLightService;

    const/4 v6, 0x1

    .line 267
    invoke-virtual {v5, v6, v4, v4}, Lcn/nubia/server/breathinglight/BreathingLightService;->getLightFrequency(III)I

    move-result v4

    .line 265
    invoke-virtual {v2, v3, v0, v4}, Lcn/nubia/server/breathinglight/BreathingLightStateMachine$InputEventHandler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcn/nubia/server/breathinglight/BreathingLightStateMachine$InputEventHandler;->sendMessage(Landroid/os/Message;)Z

    .line 269
    .end local v0    # "lights":I
    :cond_0
    return-void
.end method

.method protected handleKeyguardDragRelease()V
    .locals 4

    .line 250
    iget-object v0, p0, Lcn/nubia/server/breathinglight/BreathingLightStateMachine;->mService:Lcn/nubia/server/breathinglight/BreathingLightService;

    const/4 v1, 0x0

    const/16 v2, 0x10

    const/4 v3, 0x1

    invoke-virtual {v0, v2, v3, v1, v1}, Lcn/nubia/server/breathinglight/BreathingLightService;->setBreathingLightState(IIII)V

    .line 253
    return-void
.end method

.method protected handleKeyguardDragStart()V
    .locals 3

    .line 244
    iget-object v0, p0, Lcn/nubia/server/breathinglight/BreathingLightStateMachine;->mService:Lcn/nubia/server/breathinglight/BreathingLightService;

    const/4 v1, 0x0

    const/16 v2, 0x10

    invoke-virtual {v0, v2, v1, v1, v1}, Lcn/nubia/server/breathinglight/BreathingLightService;->setBreathingLightState(IIII)V

    .line 246
    return-void
.end method

.method protected handleKeyguardUnlock()V
    .locals 4

    .line 217
    iget-object v0, p0, Lcn/nubia/server/breathinglight/BreathingLightStateMachine;->mService:Lcn/nubia/server/breathinglight/BreathingLightService;

    const/4 v1, 0x0

    const/16 v2, 0x10

    const/4 v3, 0x1

    invoke-virtual {v0, v2, v3, v1, v1}, Lcn/nubia/server/breathinglight/BreathingLightService;->setBreathingLightState(IIII)V

    .line 219
    iget-object v0, p0, Lcn/nubia/server/breathinglight/BreathingLightStateMachine;->mSCreenOnNormalState:Lcn/nubia/server/breathinglight/BreathingLightStateMachine$SCreenOnNormalState;

    invoke-virtual {p0, v0}, Lcn/nubia/server/breathinglight/BreathingLightStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    .line 220
    return-void
.end method

.method protected handleLowPower()V
    .locals 0

    .line 189
    return-void
.end method

.method protected handleMissEvent()V
    .locals 5

    .line 223
    iget-object v0, p0, Lcn/nubia/server/breathinglight/BreathingLightStateMachine;->mService:Lcn/nubia/server/breathinglight/BreathingLightService;

    iget-object v1, p0, Lcn/nubia/server/breathinglight/BreathingLightStateMachine;->mService:Lcn/nubia/server/breathinglight/BreathingLightService;

    .line 225
    const/4 v2, 0x0

    const/4 v3, 0x3

    const/4 v4, 0x4

    invoke-virtual {v1, v3, v2, v4}, Lcn/nubia/server/breathinglight/BreathingLightService;->getLightFrequency(III)I

    move-result v1

    .line 223
    const/16 v4, 0x10

    invoke-virtual {v0, v4, v3, v1, v2}, Lcn/nubia/server/breathinglight/BreathingLightService;->setBreathingLightState(IIII)V

    .line 226
    return-void
.end method

.method protected handleMotionEvent()V
    .locals 7

    .line 272
    iget-object v0, p0, Lcn/nubia/server/breathinglight/BreathingLightStateMachine;->mService:Lcn/nubia/server/breathinglight/BreathingLightService;

    invoke-virtual {v0}, Lcn/nubia/server/breathinglight/BreathingLightService;->isBreathingLightTouchEnable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 273
    const/16 v0, 0x28

    .line 276
    .local v0, "lights":I
    iget-object v1, p0, Lcn/nubia/server/breathinglight/BreathingLightStateMachine;->mInputEventHandler:Lcn/nubia/server/breathinglight/BreathingLightStateMachine$InputEventHandler;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcn/nubia/server/breathinglight/BreathingLightStateMachine$InputEventHandler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 277
    iget-object v1, p0, Lcn/nubia/server/breathinglight/BreathingLightStateMachine;->mInputEventHandler:Lcn/nubia/server/breathinglight/BreathingLightStateMachine$InputEventHandler;

    iget-object v2, p0, Lcn/nubia/server/breathinglight/BreathingLightStateMachine;->mInputEventHandler:Lcn/nubia/server/breathinglight/BreathingLightStateMachine$InputEventHandler;

    const/16 v3, 0x3ea

    .line 278
    const/4 v4, 0x0

    invoke-virtual {v2, v3, v0, v4}, Lcn/nubia/server/breathinglight/BreathingLightStateMachine$InputEventHandler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v2

    const-wide/16 v5, 0x5dc

    .line 277
    invoke-virtual {v1, v2, v5, v6}, Lcn/nubia/server/breathinglight/BreathingLightStateMachine$InputEventHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 279
    iget-object v1, p0, Lcn/nubia/server/breathinglight/BreathingLightStateMachine;->mInputEventHandler:Lcn/nubia/server/breathinglight/BreathingLightStateMachine$InputEventHandler;

    iget-object v2, p0, Lcn/nubia/server/breathinglight/BreathingLightStateMachine;->mInputEventHandler:Lcn/nubia/server/breathinglight/BreathingLightStateMachine$InputEventHandler;

    const/16 v3, 0x3e9

    iget-object v5, p0, Lcn/nubia/server/breathinglight/BreathingLightStateMachine;->mService:Lcn/nubia/server/breathinglight/BreathingLightService;

    const/4 v6, 0x1

    .line 281
    invoke-virtual {v5, v6, v4, v4}, Lcn/nubia/server/breathinglight/BreathingLightService;->getLightFrequency(III)I

    move-result v4

    .line 279
    invoke-virtual {v2, v3, v0, v4}, Lcn/nubia/server/breathinglight/BreathingLightStateMachine$InputEventHandler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcn/nubia/server/breathinglight/BreathingLightStateMachine$InputEventHandler;->sendMessage(Landroid/os/Message;)Z

    .line 284
    .end local v0    # "lights":I
    :cond_0
    return-void
.end method

.method protected handleProximityScreenOff()V
    .locals 3

    .line 292
    iget-object v0, p0, Lcn/nubia/server/breathinglight/BreathingLightStateMachine;->mService:Lcn/nubia/server/breathinglight/BreathingLightService;

    const/4 v1, 0x0

    const/16 v2, 0x10

    invoke-virtual {v0, v2, v1, v1, v1}, Lcn/nubia/server/breathinglight/BreathingLightService;->setBreathingLightState(IIII)V

    .line 294
    return-void
.end method

.method protected handleProximityScreenOn()V
    .locals 4

    .line 297
    iget-object v0, p0, Lcn/nubia/server/breathinglight/BreathingLightStateMachine;->mService:Lcn/nubia/server/breathinglight/BreathingLightService;

    const/4 v1, 0x0

    const/16 v2, 0x10

    const/4 v3, 0x1

    invoke-virtual {v0, v2, v3, v1, v1}, Lcn/nubia/server/breathinglight/BreathingLightService;->setBreathingLightState(IIII)V

    .line 299
    return-void
.end method

.method protected handleScreenOn()V
    .locals 4

    .line 203
    iget-object v0, p0, Lcn/nubia/server/breathinglight/BreathingLightStateMachine;->mService:Lcn/nubia/server/breathinglight/BreathingLightService;

    const/4 v1, 0x0

    const/16 v2, 0x10

    const/4 v3, 0x1

    invoke-virtual {v0, v2, v3, v1, v1}, Lcn/nubia/server/breathinglight/BreathingLightService;->setBreathingLightState(IIII)V

    .line 205
    iget-object v0, p0, Lcn/nubia/server/breathinglight/BreathingLightStateMachine;->mKeyguardManager:Landroid/app/KeyguardManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/nubia/server/breathinglight/BreathingLightStateMachine;->mKeyguardManager:Landroid/app/KeyguardManager;

    invoke-virtual {v0}, Landroid/app/KeyguardManager;->isKeyguardLocked()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 206
    iget-object v0, p0, Lcn/nubia/server/breathinglight/BreathingLightStateMachine;->mSCreenOnLockedState:Lcn/nubia/server/breathinglight/BreathingLightStateMachine$SCreenOnLockedState;

    invoke-virtual {p0, v0}, Lcn/nubia/server/breathinglight/BreathingLightStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    goto :goto_0

    .line 208
    :cond_0
    iget-object v0, p0, Lcn/nubia/server/breathinglight/BreathingLightStateMachine;->mSCreenOnNormalState:Lcn/nubia/server/breathinglight/BreathingLightStateMachine$SCreenOnNormalState;

    invoke-virtual {p0, v0}, Lcn/nubia/server/breathinglight/BreathingLightStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    .line 210
    :goto_0
    return-void
.end method

.method protected handleSetBrightnesss()V
    .locals 4

    .line 287
    iget-object v0, p0, Lcn/nubia/server/breathinglight/BreathingLightStateMachine;->mService:Lcn/nubia/server/breathinglight/BreathingLightService;

    const/4 v1, 0x0

    const/16 v2, 0x10

    const/4 v3, 0x1

    invoke-virtual {v0, v2, v3, v1, v1}, Lcn/nubia/server/breathinglight/BreathingLightService;->setBreathingLightState(IIII)V

    .line 289
    return-void
.end method

.method public setHasMissEvent(Z)V
    .locals 0
    .param p1, "hasMissEvent"    # Z

    .line 76
    iput-boolean p1, p0, Lcn/nubia/server/breathinglight/BreathingLightStateMachine;->mHasMissEvent:Z

    .line 77
    return-void
.end method
