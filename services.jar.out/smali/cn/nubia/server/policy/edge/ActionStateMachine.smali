.class public Lcn/nubia/server/policy/edge/ActionStateMachine;
.super Lcom/android/internal/util/StateMachine;
.source "ActionStateMachine.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/nubia/server/policy/edge/ActionStateMachine$PrePressLoopDownState;,
        Lcn/nubia/server/policy/edge/ActionStateMachine$PrePressLoopUpState;,
        Lcn/nubia/server/policy/edge/ActionStateMachine$PrePressSingleDownState;,
        Lcn/nubia/server/policy/edge/ActionStateMachine$PrePressSingleUpState;,
        Lcn/nubia/server/policy/edge/ActionStateMachine$PressState;,
        Lcn/nubia/server/policy/edge/ActionStateMachine$DoubleSlideState;,
        Lcn/nubia/server/policy/edge/ActionStateMachine$PreLoopDownState;,
        Lcn/nubia/server/policy/edge/ActionStateMachine$PreLoopUpState;,
        Lcn/nubia/server/policy/edge/ActionStateMachine$PreSingleDownState;,
        Lcn/nubia/server/policy/edge/ActionStateMachine$PreSingleUpState;,
        Lcn/nubia/server/policy/edge/ActionStateMachine$IdleState;,
        Lcn/nubia/server/policy/edge/ActionStateMachine$DefaultState;
    }
.end annotation


# static fields
.field private static final STATISTICS_SINGLETAP_FAIL:I = 0x0

.field private static final STATISTICS_SINGLETAP_SUC:I = 0x1

.field private static final TAG:Ljava/lang/String; = "ActionStateMachine"


# instance fields
.field private mActionListener:Lcn/nubia/server/policy/edge/OnActionListener;

.field private mCommunalService:Lcn/nubia/server/policy/edge/CommunalService;

.field private mContext:Landroid/content/Context;

.field private mCurrentEdgeGesture:Lcn/nubia/edgegesture/EdgeGesture;

.field private final mDefaultState:Lcn/nubia/server/policy/edge/ActionStateMachine$DefaultState;

.field private final mDoubleSlideState:Lcn/nubia/server/policy/edge/ActionStateMachine$DoubleSlideState;

.field private mFitCardListener:Lcn/nubia/server/policy/edge/FitCardListener;

.field private mGestureSettings:Lcn/nubia/server/policy/edge/GestureSettings;

.field private final mIdleState:Lcn/nubia/server/policy/edge/ActionStateMachine$IdleState;

.field private final mPreLoopDownState:Lcn/nubia/server/policy/edge/ActionStateMachine$PreLoopDownState;

.field private final mPreLoopUpState:Lcn/nubia/server/policy/edge/ActionStateMachine$PreLoopUpState;

.field private final mPrePressLoopDownState:Lcn/nubia/server/policy/edge/ActionStateMachine$PrePressLoopDownState;

.field private final mPrePressLoopUpState:Lcn/nubia/server/policy/edge/ActionStateMachine$PrePressLoopUpState;

.field private final mPrePressSingleDownState:Lcn/nubia/server/policy/edge/ActionStateMachine$PrePressSingleDownState;

.field private final mPrePressSingleUpState:Lcn/nubia/server/policy/edge/ActionStateMachine$PrePressSingleUpState;

.field private final mPreSingleDownState:Lcn/nubia/server/policy/edge/ActionStateMachine$PreSingleDownState;

.field private final mPreSingleUpState:Lcn/nubia/server/policy/edge/ActionStateMachine$PreSingleUpState;

.field private final mPressState:Lcn/nubia/server/policy/edge/ActionStateMachine$PressState;


# direct methods
.method protected constructor <init>(Landroid/content/Context;Landroid/os/Handler;Lcn/nubia/server/policy/edge/GestureSettings;Lcn/nubia/server/policy/edge/OnActionListener;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "handler"    # Landroid/os/Handler;
    .param p3, "settings"    # Lcn/nubia/server/policy/edge/GestureSettings;
    .param p4, "listener"    # Lcn/nubia/server/policy/edge/OnActionListener;

    .line 57
    const-string v0, "ActionStateMachine"

    invoke-direct {p0, v0, p2}, Lcom/android/internal/util/StateMachine;-><init>(Ljava/lang/String;Landroid/os/Handler;)V

    .line 40
    new-instance v0, Lcn/nubia/server/policy/edge/ActionStateMachine$DefaultState;

    invoke-direct {v0, p0}, Lcn/nubia/server/policy/edge/ActionStateMachine$DefaultState;-><init>(Lcn/nubia/server/policy/edge/ActionStateMachine;)V

    iput-object v0, p0, Lcn/nubia/server/policy/edge/ActionStateMachine;->mDefaultState:Lcn/nubia/server/policy/edge/ActionStateMachine$DefaultState;

    .line 41
    new-instance v0, Lcn/nubia/server/policy/edge/ActionStateMachine$IdleState;

    invoke-direct {v0, p0}, Lcn/nubia/server/policy/edge/ActionStateMachine$IdleState;-><init>(Lcn/nubia/server/policy/edge/ActionStateMachine;)V

    iput-object v0, p0, Lcn/nubia/server/policy/edge/ActionStateMachine;->mIdleState:Lcn/nubia/server/policy/edge/ActionStateMachine$IdleState;

    .line 42
    new-instance v0, Lcn/nubia/server/policy/edge/ActionStateMachine$PreSingleUpState;

    invoke-direct {v0, p0}, Lcn/nubia/server/policy/edge/ActionStateMachine$PreSingleUpState;-><init>(Lcn/nubia/server/policy/edge/ActionStateMachine;)V

    iput-object v0, p0, Lcn/nubia/server/policy/edge/ActionStateMachine;->mPreSingleUpState:Lcn/nubia/server/policy/edge/ActionStateMachine$PreSingleUpState;

    .line 43
    new-instance v0, Lcn/nubia/server/policy/edge/ActionStateMachine$PreSingleDownState;

    invoke-direct {v0, p0}, Lcn/nubia/server/policy/edge/ActionStateMachine$PreSingleDownState;-><init>(Lcn/nubia/server/policy/edge/ActionStateMachine;)V

    iput-object v0, p0, Lcn/nubia/server/policy/edge/ActionStateMachine;->mPreSingleDownState:Lcn/nubia/server/policy/edge/ActionStateMachine$PreSingleDownState;

    .line 44
    new-instance v0, Lcn/nubia/server/policy/edge/ActionStateMachine$PreLoopUpState;

    invoke-direct {v0, p0}, Lcn/nubia/server/policy/edge/ActionStateMachine$PreLoopUpState;-><init>(Lcn/nubia/server/policy/edge/ActionStateMachine;)V

    iput-object v0, p0, Lcn/nubia/server/policy/edge/ActionStateMachine;->mPreLoopUpState:Lcn/nubia/server/policy/edge/ActionStateMachine$PreLoopUpState;

    .line 45
    new-instance v0, Lcn/nubia/server/policy/edge/ActionStateMachine$PreLoopDownState;

    invoke-direct {v0, p0}, Lcn/nubia/server/policy/edge/ActionStateMachine$PreLoopDownState;-><init>(Lcn/nubia/server/policy/edge/ActionStateMachine;)V

    iput-object v0, p0, Lcn/nubia/server/policy/edge/ActionStateMachine;->mPreLoopDownState:Lcn/nubia/server/policy/edge/ActionStateMachine$PreLoopDownState;

    .line 46
    new-instance v0, Lcn/nubia/server/policy/edge/ActionStateMachine$DoubleSlideState;

    invoke-direct {v0, p0}, Lcn/nubia/server/policy/edge/ActionStateMachine$DoubleSlideState;-><init>(Lcn/nubia/server/policy/edge/ActionStateMachine;)V

    iput-object v0, p0, Lcn/nubia/server/policy/edge/ActionStateMachine;->mDoubleSlideState:Lcn/nubia/server/policy/edge/ActionStateMachine$DoubleSlideState;

    .line 47
    new-instance v0, Lcn/nubia/server/policy/edge/ActionStateMachine$PressState;

    invoke-direct {v0, p0}, Lcn/nubia/server/policy/edge/ActionStateMachine$PressState;-><init>(Lcn/nubia/server/policy/edge/ActionStateMachine;)V

    iput-object v0, p0, Lcn/nubia/server/policy/edge/ActionStateMachine;->mPressState:Lcn/nubia/server/policy/edge/ActionStateMachine$PressState;

    .line 48
    new-instance v0, Lcn/nubia/server/policy/edge/ActionStateMachine$PrePressSingleUpState;

    invoke-direct {v0, p0}, Lcn/nubia/server/policy/edge/ActionStateMachine$PrePressSingleUpState;-><init>(Lcn/nubia/server/policy/edge/ActionStateMachine;)V

    iput-object v0, p0, Lcn/nubia/server/policy/edge/ActionStateMachine;->mPrePressSingleUpState:Lcn/nubia/server/policy/edge/ActionStateMachine$PrePressSingleUpState;

    .line 49
    new-instance v0, Lcn/nubia/server/policy/edge/ActionStateMachine$PrePressSingleDownState;

    invoke-direct {v0, p0}, Lcn/nubia/server/policy/edge/ActionStateMachine$PrePressSingleDownState;-><init>(Lcn/nubia/server/policy/edge/ActionStateMachine;)V

    iput-object v0, p0, Lcn/nubia/server/policy/edge/ActionStateMachine;->mPrePressSingleDownState:Lcn/nubia/server/policy/edge/ActionStateMachine$PrePressSingleDownState;

    .line 50
    new-instance v0, Lcn/nubia/server/policy/edge/ActionStateMachine$PrePressLoopUpState;

    invoke-direct {v0, p0}, Lcn/nubia/server/policy/edge/ActionStateMachine$PrePressLoopUpState;-><init>(Lcn/nubia/server/policy/edge/ActionStateMachine;)V

    iput-object v0, p0, Lcn/nubia/server/policy/edge/ActionStateMachine;->mPrePressLoopUpState:Lcn/nubia/server/policy/edge/ActionStateMachine$PrePressLoopUpState;

    .line 51
    new-instance v0, Lcn/nubia/server/policy/edge/ActionStateMachine$PrePressLoopDownState;

    invoke-direct {v0, p0}, Lcn/nubia/server/policy/edge/ActionStateMachine$PrePressLoopDownState;-><init>(Lcn/nubia/server/policy/edge/ActionStateMachine;)V

    iput-object v0, p0, Lcn/nubia/server/policy/edge/ActionStateMachine;->mPrePressLoopDownState:Lcn/nubia/server/policy/edge/ActionStateMachine$PrePressLoopDownState;

    .line 59
    iput-object p1, p0, Lcn/nubia/server/policy/edge/ActionStateMachine;->mContext:Landroid/content/Context;

    .line 60
    iput-object p4, p0, Lcn/nubia/server/policy/edge/ActionStateMachine;->mActionListener:Lcn/nubia/server/policy/edge/OnActionListener;

    .line 61
    iput-object p3, p0, Lcn/nubia/server/policy/edge/ActionStateMachine;->mGestureSettings:Lcn/nubia/server/policy/edge/GestureSettings;

    .line 62
    invoke-static {}, Lcn/nubia/server/policy/edge/CommunalService;->getDefault()Lcn/nubia/server/policy/edge/CommunalService;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/server/policy/edge/ActionStateMachine;->mCommunalService:Lcn/nubia/server/policy/edge/CommunalService;

    .line 64
    new-instance v0, Lcn/nubia/server/policy/edge/FitCardListener;

    iget-object v1, p0, Lcn/nubia/server/policy/edge/ActionStateMachine;->mGestureSettings:Lcn/nubia/server/policy/edge/GestureSettings;

    invoke-direct {v0, p1, v1}, Lcn/nubia/server/policy/edge/FitCardListener;-><init>(Landroid/content/Context;Lcn/nubia/server/policy/edge/GestureSettings;)V

    iput-object v0, p0, Lcn/nubia/server/policy/edge/ActionStateMachine;->mFitCardListener:Lcn/nubia/server/policy/edge/FitCardListener;

    .line 66
    iget-object v0, p0, Lcn/nubia/server/policy/edge/ActionStateMachine;->mDefaultState:Lcn/nubia/server/policy/edge/ActionStateMachine$DefaultState;

    invoke-virtual {p0, v0}, Lcn/nubia/server/policy/edge/ActionStateMachine;->addState(Lcom/android/internal/util/State;)V

    .line 67
    iget-object v0, p0, Lcn/nubia/server/policy/edge/ActionStateMachine;->mIdleState:Lcn/nubia/server/policy/edge/ActionStateMachine$IdleState;

    iget-object v1, p0, Lcn/nubia/server/policy/edge/ActionStateMachine;->mDefaultState:Lcn/nubia/server/policy/edge/ActionStateMachine$DefaultState;

    invoke-virtual {p0, v0, v1}, Lcn/nubia/server/policy/edge/ActionStateMachine;->addState(Lcom/android/internal/util/State;Lcom/android/internal/util/State;)V

    .line 68
    iget-object v0, p0, Lcn/nubia/server/policy/edge/ActionStateMachine;->mPreSingleUpState:Lcn/nubia/server/policy/edge/ActionStateMachine$PreSingleUpState;

    iget-object v1, p0, Lcn/nubia/server/policy/edge/ActionStateMachine;->mDefaultState:Lcn/nubia/server/policy/edge/ActionStateMachine$DefaultState;

    invoke-virtual {p0, v0, v1}, Lcn/nubia/server/policy/edge/ActionStateMachine;->addState(Lcom/android/internal/util/State;Lcom/android/internal/util/State;)V

    .line 69
    iget-object v0, p0, Lcn/nubia/server/policy/edge/ActionStateMachine;->mPreSingleDownState:Lcn/nubia/server/policy/edge/ActionStateMachine$PreSingleDownState;

    iget-object v1, p0, Lcn/nubia/server/policy/edge/ActionStateMachine;->mDefaultState:Lcn/nubia/server/policy/edge/ActionStateMachine$DefaultState;

    invoke-virtual {p0, v0, v1}, Lcn/nubia/server/policy/edge/ActionStateMachine;->addState(Lcom/android/internal/util/State;Lcom/android/internal/util/State;)V

    .line 70
    iget-object v0, p0, Lcn/nubia/server/policy/edge/ActionStateMachine;->mDoubleSlideState:Lcn/nubia/server/policy/edge/ActionStateMachine$DoubleSlideState;

    iget-object v1, p0, Lcn/nubia/server/policy/edge/ActionStateMachine;->mDefaultState:Lcn/nubia/server/policy/edge/ActionStateMachine$DefaultState;

    invoke-virtual {p0, v0, v1}, Lcn/nubia/server/policy/edge/ActionStateMachine;->addState(Lcom/android/internal/util/State;Lcom/android/internal/util/State;)V

    .line 71
    iget-object v0, p0, Lcn/nubia/server/policy/edge/ActionStateMachine;->mPressState:Lcn/nubia/server/policy/edge/ActionStateMachine$PressState;

    iget-object v1, p0, Lcn/nubia/server/policy/edge/ActionStateMachine;->mDefaultState:Lcn/nubia/server/policy/edge/ActionStateMachine$DefaultState;

    invoke-virtual {p0, v0, v1}, Lcn/nubia/server/policy/edge/ActionStateMachine;->addState(Lcom/android/internal/util/State;Lcom/android/internal/util/State;)V

    .line 72
    iget-object v0, p0, Lcn/nubia/server/policy/edge/ActionStateMachine;->mPreLoopUpState:Lcn/nubia/server/policy/edge/ActionStateMachine$PreLoopUpState;

    iget-object v1, p0, Lcn/nubia/server/policy/edge/ActionStateMachine;->mDefaultState:Lcn/nubia/server/policy/edge/ActionStateMachine$DefaultState;

    invoke-virtual {p0, v0, v1}, Lcn/nubia/server/policy/edge/ActionStateMachine;->addState(Lcom/android/internal/util/State;Lcom/android/internal/util/State;)V

    .line 73
    iget-object v0, p0, Lcn/nubia/server/policy/edge/ActionStateMachine;->mPreLoopDownState:Lcn/nubia/server/policy/edge/ActionStateMachine$PreLoopDownState;

    iget-object v1, p0, Lcn/nubia/server/policy/edge/ActionStateMachine;->mDefaultState:Lcn/nubia/server/policy/edge/ActionStateMachine$DefaultState;

    invoke-virtual {p0, v0, v1}, Lcn/nubia/server/policy/edge/ActionStateMachine;->addState(Lcom/android/internal/util/State;Lcom/android/internal/util/State;)V

    .line 74
    iget-object v0, p0, Lcn/nubia/server/policy/edge/ActionStateMachine;->mPrePressSingleUpState:Lcn/nubia/server/policy/edge/ActionStateMachine$PrePressSingleUpState;

    iget-object v1, p0, Lcn/nubia/server/policy/edge/ActionStateMachine;->mDefaultState:Lcn/nubia/server/policy/edge/ActionStateMachine$DefaultState;

    invoke-virtual {p0, v0, v1}, Lcn/nubia/server/policy/edge/ActionStateMachine;->addState(Lcom/android/internal/util/State;Lcom/android/internal/util/State;)V

    .line 75
    iget-object v0, p0, Lcn/nubia/server/policy/edge/ActionStateMachine;->mPrePressSingleDownState:Lcn/nubia/server/policy/edge/ActionStateMachine$PrePressSingleDownState;

    iget-object v1, p0, Lcn/nubia/server/policy/edge/ActionStateMachine;->mDefaultState:Lcn/nubia/server/policy/edge/ActionStateMachine$DefaultState;

    invoke-virtual {p0, v0, v1}, Lcn/nubia/server/policy/edge/ActionStateMachine;->addState(Lcom/android/internal/util/State;Lcom/android/internal/util/State;)V

    .line 76
    iget-object v0, p0, Lcn/nubia/server/policy/edge/ActionStateMachine;->mPrePressLoopUpState:Lcn/nubia/server/policy/edge/ActionStateMachine$PrePressLoopUpState;

    iget-object v1, p0, Lcn/nubia/server/policy/edge/ActionStateMachine;->mDefaultState:Lcn/nubia/server/policy/edge/ActionStateMachine$DefaultState;

    invoke-virtual {p0, v0, v1}, Lcn/nubia/server/policy/edge/ActionStateMachine;->addState(Lcom/android/internal/util/State;Lcom/android/internal/util/State;)V

    .line 77
    iget-object v0, p0, Lcn/nubia/server/policy/edge/ActionStateMachine;->mPrePressLoopDownState:Lcn/nubia/server/policy/edge/ActionStateMachine$PrePressLoopDownState;

    iget-object v1, p0, Lcn/nubia/server/policy/edge/ActionStateMachine;->mDefaultState:Lcn/nubia/server/policy/edge/ActionStateMachine$DefaultState;

    invoke-virtual {p0, v0, v1}, Lcn/nubia/server/policy/edge/ActionStateMachine;->addState(Lcom/android/internal/util/State;Lcom/android/internal/util/State;)V

    .line 79
    iget-object v0, p0, Lcn/nubia/server/policy/edge/ActionStateMachine;->mIdleState:Lcn/nubia/server/policy/edge/ActionStateMachine$IdleState;

    invoke-virtual {p0, v0}, Lcn/nubia/server/policy/edge/ActionStateMachine;->setInitialState(Lcom/android/internal/util/State;)V

    .line 81
    invoke-direct {p0}, Lcn/nubia/server/policy/edge/ActionStateMachine;->registerPhoneCallStateListener()V

    .line 82
    invoke-direct {p0}, Lcn/nubia/server/policy/edge/ActionStateMachine;->registerGlobalActionForPowerKey()V

    .line 83
    invoke-direct {p0}, Lcn/nubia/server/policy/edge/ActionStateMachine;->registerContentObserver()V

    .line 84
    invoke-direct {p0}, Lcn/nubia/server/policy/edge/ActionStateMachine;->registerGestureEnableListener()V

    .line 85
    return-void
.end method

.method static synthetic access$000(Lcn/nubia/server/policy/edge/ActionStateMachine;)V
    .locals 0
    .param p0, "x0"    # Lcn/nubia/server/policy/edge/ActionStateMachine;

    .line 28
    invoke-direct {p0}, Lcn/nubia/server/policy/edge/ActionStateMachine;->sendCancelMessageForInterrupt()V

    return-void
.end method

.method static synthetic access$100(Lcn/nubia/server/policy/edge/ActionStateMachine;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcn/nubia/server/policy/edge/ActionStateMachine;

    .line 28
    iget-object v0, p0, Lcn/nubia/server/policy/edge/ActionStateMachine;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$1000(Lcn/nubia/server/policy/edge/ActionStateMachine;Lcn/nubia/edgegesture/EdgeGesture;)V
    .locals 0
    .param p0, "x0"    # Lcn/nubia/server/policy/edge/ActionStateMachine;
    .param p1, "x1"    # Lcn/nubia/edgegesture/EdgeGesture;

    .line 28
    invoke-direct {p0, p1}, Lcn/nubia/server/policy/edge/ActionStateMachine;->handleSingleSlideDone(Lcn/nubia/edgegesture/EdgeGesture;)V

    return-void
.end method

.method static synthetic access$1100(Lcn/nubia/server/policy/edge/ActionStateMachine;Lcn/nubia/edgegesture/EdgeGesture;)V
    .locals 0
    .param p0, "x0"    # Lcn/nubia/server/policy/edge/ActionStateMachine;
    .param p1, "x1"    # Lcn/nubia/edgegesture/EdgeGesture;

    .line 28
    invoke-direct {p0, p1}, Lcn/nubia/server/policy/edge/ActionStateMachine;->handleSingleCancel(Lcn/nubia/edgegesture/EdgeGesture;)V

    return-void
.end method

.method static synthetic access$1200(Lcn/nubia/server/policy/edge/ActionStateMachine;Lcn/nubia/edgegesture/EdgeGesture;)V
    .locals 0
    .param p0, "x0"    # Lcn/nubia/server/policy/edge/ActionStateMachine;
    .param p1, "x1"    # Lcn/nubia/edgegesture/EdgeGesture;

    .line 28
    invoke-direct {p0, p1}, Lcn/nubia/server/policy/edge/ActionStateMachine;->handleLoopSlideDone(Lcn/nubia/edgegesture/EdgeGesture;)V

    return-void
.end method

.method static synthetic access$1300(Lcn/nubia/server/policy/edge/ActionStateMachine;Lcn/nubia/edgegesture/EdgeGesture;)V
    .locals 0
    .param p0, "x0"    # Lcn/nubia/server/policy/edge/ActionStateMachine;
    .param p1, "x1"    # Lcn/nubia/edgegesture/EdgeGesture;

    .line 28
    invoke-direct {p0, p1}, Lcn/nubia/server/policy/edge/ActionStateMachine;->handleLoopSlideCancel(Lcn/nubia/edgegesture/EdgeGesture;)V

    return-void
.end method

.method static synthetic access$1400(Lcn/nubia/server/policy/edge/ActionStateMachine;Lcn/nubia/edgegesture/EdgeGesture;)V
    .locals 0
    .param p0, "x0"    # Lcn/nubia/server/policy/edge/ActionStateMachine;
    .param p1, "x1"    # Lcn/nubia/edgegesture/EdgeGesture;

    .line 28
    invoke-direct {p0, p1}, Lcn/nubia/server/policy/edge/ActionStateMachine;->handleDoubleSlideCancel(Lcn/nubia/edgegesture/EdgeGesture;)V

    return-void
.end method

.method static synthetic access$1500(Lcn/nubia/server/policy/edge/ActionStateMachine;Lcn/nubia/edgegesture/EdgeGesture;)V
    .locals 0
    .param p0, "x0"    # Lcn/nubia/server/policy/edge/ActionStateMachine;
    .param p1, "x1"    # Lcn/nubia/edgegesture/EdgeGesture;

    .line 28
    invoke-direct {p0, p1}, Lcn/nubia/server/policy/edge/ActionStateMachine;->handlePrePressSingleSlide(Lcn/nubia/edgegesture/EdgeGesture;)V

    return-void
.end method

.method static synthetic access$1600(Lcn/nubia/server/policy/edge/ActionStateMachine;Lcn/nubia/edgegesture/EdgeGesture;)V
    .locals 0
    .param p0, "x0"    # Lcn/nubia/server/policy/edge/ActionStateMachine;
    .param p1, "x1"    # Lcn/nubia/edgegesture/EdgeGesture;

    .line 28
    invoke-direct {p0, p1}, Lcn/nubia/server/policy/edge/ActionStateMachine;->handleInwardSlide(Lcn/nubia/edgegesture/EdgeGesture;)V

    return-void
.end method

.method static synthetic access$1700(Lcn/nubia/server/policy/edge/ActionStateMachine;Z)V
    .locals 0
    .param p0, "x0"    # Lcn/nubia/server/policy/edge/ActionStateMachine;
    .param p1, "x1"    # Z

    .line 28
    invoke-direct {p0, p1}, Lcn/nubia/server/policy/edge/ActionStateMachine;->insideSlide(Z)V

    return-void
.end method

.method static synthetic access$1800(Lcn/nubia/server/policy/edge/ActionStateMachine;Lcn/nubia/edgegesture/EdgeGesture;)V
    .locals 0
    .param p0, "x0"    # Lcn/nubia/server/policy/edge/ActionStateMachine;
    .param p1, "x1"    # Lcn/nubia/edgegesture/EdgeGesture;

    .line 28
    invoke-direct {p0, p1}, Lcn/nubia/server/policy/edge/ActionStateMachine;->handlePressCancel(Lcn/nubia/edgegesture/EdgeGesture;)V

    return-void
.end method

.method static synthetic access$1900(Lcn/nubia/server/policy/edge/ActionStateMachine;Lcn/nubia/edgegesture/EdgeGesture;)V
    .locals 0
    .param p0, "x0"    # Lcn/nubia/server/policy/edge/ActionStateMachine;
    .param p1, "x1"    # Lcn/nubia/edgegesture/EdgeGesture;

    .line 28
    invoke-direct {p0, p1}, Lcn/nubia/server/policy/edge/ActionStateMachine;->handlePrePressLoopUpOrDown(Lcn/nubia/edgegesture/EdgeGesture;)V

    return-void
.end method

.method static synthetic access$200(Lcn/nubia/server/policy/edge/ActionStateMachine;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcn/nubia/server/policy/edge/ActionStateMachine;

    .line 28
    invoke-direct {p0}, Lcn/nubia/server/policy/edge/ActionStateMachine;->getCurrentStateName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$2000(Lcn/nubia/server/policy/edge/ActionStateMachine;I)V
    .locals 0
    .param p0, "x0"    # Lcn/nubia/server/policy/edge/ActionStateMachine;
    .param p1, "x1"    # I

    .line 28
    invoke-direct {p0, p1}, Lcn/nubia/server/policy/edge/ActionStateMachine;->singleTap(I)V

    return-void
.end method

.method static synthetic access$300(Lcn/nubia/server/policy/edge/ActionStateMachine;)Lcn/nubia/server/policy/edge/OnActionListener;
    .locals 1
    .param p0, "x0"    # Lcn/nubia/server/policy/edge/ActionStateMachine;

    .line 28
    iget-object v0, p0, Lcn/nubia/server/policy/edge/ActionStateMachine;->mActionListener:Lcn/nubia/server/policy/edge/OnActionListener;

    return-object v0
.end method

.method static synthetic access$400(Lcn/nubia/server/policy/edge/ActionStateMachine;)Lcn/nubia/server/policy/edge/FitCardListener;
    .locals 1
    .param p0, "x0"    # Lcn/nubia/server/policy/edge/ActionStateMachine;

    .line 28
    iget-object v0, p0, Lcn/nubia/server/policy/edge/ActionStateMachine;->mFitCardListener:Lcn/nubia/server/policy/edge/FitCardListener;

    return-object v0
.end method

.method static synthetic access$500(Lcn/nubia/server/policy/edge/ActionStateMachine;Lcn/nubia/edgegesture/EdgeGesture;)V
    .locals 0
    .param p0, "x0"    # Lcn/nubia/server/policy/edge/ActionStateMachine;
    .param p1, "x1"    # Lcn/nubia/edgegesture/EdgeGesture;

    .line 28
    invoke-direct {p0, p1}, Lcn/nubia/server/policy/edge/ActionStateMachine;->handlePreSingleSlide(Lcn/nubia/edgegesture/EdgeGesture;)V

    return-void
.end method

.method static synthetic access$600(Lcn/nubia/server/policy/edge/ActionStateMachine;Lcn/nubia/edgegesture/EdgeGesture;Z)V
    .locals 0
    .param p0, "x0"    # Lcn/nubia/server/policy/edge/ActionStateMachine;
    .param p1, "x1"    # Lcn/nubia/edgegesture/EdgeGesture;
    .param p2, "x2"    # Z

    .line 28
    invoke-direct {p0, p1, p2}, Lcn/nubia/server/policy/edge/ActionStateMachine;->handleDoubleSlide(Lcn/nubia/edgegesture/EdgeGesture;Z)V

    return-void
.end method

.method static synthetic access$700(Lcn/nubia/server/policy/edge/ActionStateMachine;Lcn/nubia/edgegesture/EdgeGesture;)V
    .locals 0
    .param p0, "x0"    # Lcn/nubia/server/policy/edge/ActionStateMachine;
    .param p1, "x1"    # Lcn/nubia/edgegesture/EdgeGesture;

    .line 28
    invoke-direct {p0, p1}, Lcn/nubia/server/policy/edge/ActionStateMachine;->handlePress(Lcn/nubia/edgegesture/EdgeGesture;)V

    return-void
.end method

.method static synthetic access$800(Lcn/nubia/server/policy/edge/ActionStateMachine;Lcn/nubia/edgegesture/EdgeGesture;)V
    .locals 0
    .param p0, "x0"    # Lcn/nubia/server/policy/edge/ActionStateMachine;
    .param p1, "x1"    # Lcn/nubia/edgegesture/EdgeGesture;

    .line 28
    invoke-direct {p0, p1}, Lcn/nubia/server/policy/edge/ActionStateMachine;->handleDoubleClick(Lcn/nubia/edgegesture/EdgeGesture;)V

    return-void
.end method

.method static synthetic access$900(Lcn/nubia/server/policy/edge/ActionStateMachine;Lcn/nubia/edgegesture/EdgeGesture;)V
    .locals 0
    .param p0, "x0"    # Lcn/nubia/server/policy/edge/ActionStateMachine;
    .param p1, "x1"    # Lcn/nubia/edgegesture/EdgeGesture;

    .line 28
    invoke-direct {p0, p1}, Lcn/nubia/server/policy/edge/ActionStateMachine;->handlePreLoopUpOrDown(Lcn/nubia/edgegesture/EdgeGesture;)V

    return-void
.end method

.method private getCurrentStateName()Ljava/lang/String;
    .locals 1

    .line 372
    invoke-virtual {p0}, Lcn/nubia/server/policy/edge/ActionStateMachine;->getCurrentState()Lcom/android/internal/util/IState;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/internal/util/IState;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private handleDoubleClick(Lcn/nubia/edgegesture/EdgeGesture;)V
    .locals 2
    .param p1, "gesture"    # Lcn/nubia/edgegesture/EdgeGesture;

    .line 262
    iget-object v0, p0, Lcn/nubia/server/policy/edge/ActionStateMachine;->mGestureSettings:Lcn/nubia/server/policy/edge/GestureSettings;

    const-string/jumbo v1, "nubia_edge_double_click"

    invoke-virtual {v0, v1}, Lcn/nubia/server/policy/edge/GestureSettings;->isGestureEnable(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 263
    invoke-direct {p0, p1}, Lcn/nubia/server/policy/edge/ActionStateMachine;->notifyListener(Lcn/nubia/edgegesture/EdgeGesture;)V

    .line 265
    :cond_0
    return-void
.end method

.method private handleDoubleSlide(Lcn/nubia/edgegesture/EdgeGesture;Z)V
    .locals 2
    .param p1, "gesture"    # Lcn/nubia/edgegesture/EdgeGesture;
    .param p2, "fromIdle"    # Z

    .line 223
    iget-object v0, p0, Lcn/nubia/server/policy/edge/ActionStateMachine;->mGestureSettings:Lcn/nubia/server/policy/edge/GestureSettings;

    const-string/jumbo v1, "nubia_edge_double_side_move"

    invoke-virtual {v0, v1}, Lcn/nubia/server/policy/edge/GestureSettings;->isGestureEnable(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 224
    invoke-direct {p0, p1}, Lcn/nubia/server/policy/edge/ActionStateMachine;->notifyListener(Lcn/nubia/edgegesture/EdgeGesture;)V

    .line 225
    if-eqz p2, :cond_1

    .line 226
    iget-object v0, p0, Lcn/nubia/server/policy/edge/ActionStateMachine;->mDoubleSlideState:Lcn/nubia/server/policy/edge/ActionStateMachine$DoubleSlideState;

    invoke-virtual {p0, v0}, Lcn/nubia/server/policy/edge/ActionStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    .line 227
    invoke-virtual {p1}, Lcn/nubia/edgegesture/EdgeGesture;->getAction()I

    move-result v0

    const/16 v1, 0x2001

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 229
    .local v0, "up":Z
    :goto_0
    const-string/jumbo v1, "setting_edge_swipe_both"

    invoke-direct {p0, v1}, Lcn/nubia/server/policy/edge/ActionStateMachine;->sendStatisticsEvent(Ljava/lang/String;)V

    .line 232
    .end local v0    # "up":Z
    :cond_1
    return-void
.end method

.method private handleDoubleSlideCancel(Lcn/nubia/edgegesture/EdgeGesture;)V
    .locals 1
    .param p1, "gesture"    # Lcn/nubia/edgegesture/EdgeGesture;

    .line 313
    invoke-direct {p0, p1}, Lcn/nubia/server/policy/edge/ActionStateMachine;->notifyListener(Lcn/nubia/edgegesture/EdgeGesture;)V

    .line 314
    iget-object v0, p0, Lcn/nubia/server/policy/edge/ActionStateMachine;->mIdleState:Lcn/nubia/server/policy/edge/ActionStateMachine$IdleState;

    invoke-virtual {p0, v0}, Lcn/nubia/server/policy/edge/ActionStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    .line 315
    return-void
.end method

.method private handleInwardSlide(Lcn/nubia/edgegesture/EdgeGesture;)V
    .locals 2
    .param p1, "gesture"    # Lcn/nubia/edgegesture/EdgeGesture;

    .line 335
    invoke-virtual {p1}, Lcn/nubia/edgegesture/EdgeGesture;->getType()I

    move-result v0

    const/16 v1, 0x7000

    if-ne v0, v1, :cond_1

    .line 336
    iget-object v0, p0, Lcn/nubia/server/policy/edge/ActionStateMachine;->mGestureSettings:Lcn/nubia/server/policy/edge/GestureSettings;

    const-string/jumbo v1, "nubia_edge_quick_inward"

    invoke-virtual {v0, v1}, Lcn/nubia/server/policy/edge/GestureSettings;->isGestureEnable(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 337
    invoke-direct {p0, p1}, Lcn/nubia/server/policy/edge/ActionStateMachine;->notifyListener(Lcn/nubia/edgegesture/EdgeGesture;)V

    goto :goto_0

    .line 339
    :cond_0
    iget-object v0, p0, Lcn/nubia/server/policy/edge/ActionStateMachine;->mCommunalService:Lcn/nubia/server/policy/edge/CommunalService;

    invoke-virtual {v0, p1}, Lcn/nubia/server/policy/edge/CommunalService;->cancelGesture(Lcn/nubia/edgegesture/EdgeGesture;)Z

    .line 340
    invoke-direct {p0, p1}, Lcn/nubia/server/policy/edge/ActionStateMachine;->notifyListener(Lcn/nubia/edgegesture/EdgeGesture;)V

    .line 342
    :goto_0
    iget-object v0, p0, Lcn/nubia/server/policy/edge/ActionStateMachine;->mIdleState:Lcn/nubia/server/policy/edge/ActionStateMachine$IdleState;

    invoke-virtual {p0, v0}, Lcn/nubia/server/policy/edge/ActionStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    .line 343
    return-void

    .line 345
    :cond_1
    iget-object v0, p0, Lcn/nubia/server/policy/edge/ActionStateMachine;->mGestureSettings:Lcn/nubia/server/policy/edge/GestureSettings;

    const-string/jumbo v1, "nubia_edge_move_in_switch"

    invoke-virtual {v0, v1}, Lcn/nubia/server/policy/edge/GestureSettings;->isGestureEnable(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 346
    invoke-direct {p0, p1}, Lcn/nubia/server/policy/edge/ActionStateMachine;->notifyListener(Lcn/nubia/edgegesture/EdgeGesture;)V

    goto :goto_1

    .line 348
    :cond_2
    iget-object v0, p0, Lcn/nubia/server/policy/edge/ActionStateMachine;->mCommunalService:Lcn/nubia/server/policy/edge/CommunalService;

    invoke-virtual {v0, p1}, Lcn/nubia/server/policy/edge/CommunalService;->cancelGesture(Lcn/nubia/edgegesture/EdgeGesture;)Z

    .line 349
    invoke-direct {p0, p1}, Lcn/nubia/server/policy/edge/ActionStateMachine;->notifyListener(Lcn/nubia/edgegesture/EdgeGesture;)V

    .line 351
    :goto_1
    iget-object v0, p0, Lcn/nubia/server/policy/edge/ActionStateMachine;->mIdleState:Lcn/nubia/server/policy/edge/ActionStateMachine$IdleState;

    invoke-virtual {p0, v0}, Lcn/nubia/server/policy/edge/ActionStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    .line 352
    return-void
.end method

.method private handleLoopSlideCancel(Lcn/nubia/edgegesture/EdgeGesture;)V
    .locals 1
    .param p1, "gesture"    # Lcn/nubia/edgegesture/EdgeGesture;

    .line 308
    invoke-direct {p0, p1}, Lcn/nubia/server/policy/edge/ActionStateMachine;->notifyListener(Lcn/nubia/edgegesture/EdgeGesture;)V

    .line 309
    iget-object v0, p0, Lcn/nubia/server/policy/edge/ActionStateMachine;->mIdleState:Lcn/nubia/server/policy/edge/ActionStateMachine$IdleState;

    invoke-virtual {p0, v0}, Lcn/nubia/server/policy/edge/ActionStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    .line 310
    return-void
.end method

.method private handleLoopSlideDone(Lcn/nubia/edgegesture/EdgeGesture;)V
    .locals 2
    .param p1, "gesture"    # Lcn/nubia/edgegesture/EdgeGesture;

    .line 298
    iget-object v0, p0, Lcn/nubia/server/policy/edge/ActionStateMachine;->mGestureSettings:Lcn/nubia/server/policy/edge/GestureSettings;

    const-string/jumbo v1, "nubia_edge_move_loop"

    invoke-virtual {v0, v1}, Lcn/nubia/server/policy/edge/GestureSettings;->isGestureEnable(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 299
    invoke-direct {p0, p1}, Lcn/nubia/server/policy/edge/ActionStateMachine;->notifyListener(Lcn/nubia/edgegesture/EdgeGesture;)V

    goto :goto_0

    .line 301
    :cond_0
    iget-object v0, p0, Lcn/nubia/server/policy/edge/ActionStateMachine;->mCommunalService:Lcn/nubia/server/policy/edge/CommunalService;

    invoke-virtual {v0, p1}, Lcn/nubia/server/policy/edge/CommunalService;->cancelGesture(Lcn/nubia/edgegesture/EdgeGesture;)Z

    .line 302
    invoke-direct {p0, p1}, Lcn/nubia/server/policy/edge/ActionStateMachine;->notifyListener(Lcn/nubia/edgegesture/EdgeGesture;)V

    .line 304
    :goto_0
    iget-object v0, p0, Lcn/nubia/server/policy/edge/ActionStateMachine;->mIdleState:Lcn/nubia/server/policy/edge/ActionStateMachine$IdleState;

    invoke-virtual {p0, v0}, Lcn/nubia/server/policy/edge/ActionStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    .line 305
    return-void
.end method

.method private handlePreLoopUpOrDown(Lcn/nubia/edgegesture/EdgeGesture;)V
    .locals 2
    .param p1, "gesture"    # Lcn/nubia/edgegesture/EdgeGesture;

    .line 269
    iget-object v0, p0, Lcn/nubia/server/policy/edge/ActionStateMachine;->mGestureSettings:Lcn/nubia/server/policy/edge/GestureSettings;

    const-string/jumbo v1, "nubia_edge_move_loop"

    invoke-virtual {v0, v1}, Lcn/nubia/server/policy/edge/GestureSettings;->isGestureEnable(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 270
    invoke-direct {p0, p1}, Lcn/nubia/server/policy/edge/ActionStateMachine;->notifyListener(Lcn/nubia/edgegesture/EdgeGesture;)V

    .line 271
    invoke-virtual {p1}, Lcn/nubia/edgegesture/EdgeGesture;->getAction()I

    move-result v0

    const/16 v1, 0x3005

    if-ne v0, v1, :cond_0

    .line 272
    iget-object v0, p0, Lcn/nubia/server/policy/edge/ActionStateMachine;->mPreLoopUpState:Lcn/nubia/server/policy/edge/ActionStateMachine$PreLoopUpState;

    invoke-virtual {p0, v0}, Lcn/nubia/server/policy/edge/ActionStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    goto :goto_0

    .line 274
    :cond_0
    iget-object v0, p0, Lcn/nubia/server/policy/edge/ActionStateMachine;->mPreLoopDownState:Lcn/nubia/server/policy/edge/ActionStateMachine$PreLoopDownState;

    invoke-virtual {p0, v0}, Lcn/nubia/server/policy/edge/ActionStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    .line 277
    :cond_1
    :goto_0
    return-void
.end method

.method private handlePrePressLoopUpOrDown(Lcn/nubia/edgegesture/EdgeGesture;)V
    .locals 2
    .param p1, "gesture"    # Lcn/nubia/edgegesture/EdgeGesture;

    .line 361
    iget-object v0, p0, Lcn/nubia/server/policy/edge/ActionStateMachine;->mGestureSettings:Lcn/nubia/server/policy/edge/GestureSettings;

    const-string/jumbo v1, "nubia_edge_move_loop"

    invoke-virtual {v0, v1}, Lcn/nubia/server/policy/edge/GestureSettings;->isGestureEnable(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 362
    invoke-direct {p0, p1}, Lcn/nubia/server/policy/edge/ActionStateMachine;->notifyListener(Lcn/nubia/edgegesture/EdgeGesture;)V

    .line 363
    invoke-virtual {p1}, Lcn/nubia/edgegesture/EdgeGesture;->getAction()I

    move-result v0

    const/16 v1, 0x4006

    if-ne v0, v1, :cond_0

    .line 364
    iget-object v0, p0, Lcn/nubia/server/policy/edge/ActionStateMachine;->mPrePressLoopUpState:Lcn/nubia/server/policy/edge/ActionStateMachine$PrePressLoopUpState;

    invoke-virtual {p0, v0}, Lcn/nubia/server/policy/edge/ActionStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    goto :goto_0

    .line 366
    :cond_0
    iget-object v0, p0, Lcn/nubia/server/policy/edge/ActionStateMachine;->mPrePressLoopDownState:Lcn/nubia/server/policy/edge/ActionStateMachine$PrePressLoopDownState;

    invoke-virtual {p0, v0}, Lcn/nubia/server/policy/edge/ActionStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    .line 369
    :cond_1
    :goto_0
    return-void
.end method

.method private handlePrePressSingleSlide(Lcn/nubia/edgegesture/EdgeGesture;)V
    .locals 2
    .param p1, "gesture"    # Lcn/nubia/edgegesture/EdgeGesture;

    .line 319
    iget-object v0, p0, Lcn/nubia/server/policy/edge/ActionStateMachine;->mGestureSettings:Lcn/nubia/server/policy/edge/GestureSettings;

    const-string/jumbo v1, "nubia_edge_single_move_switch"

    invoke-virtual {v0, v1}, Lcn/nubia/server/policy/edge/GestureSettings;->isGestureEnable(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcn/nubia/server/policy/edge/ActionStateMachine;->mGestureSettings:Lcn/nubia/server/policy/edge/GestureSettings;

    const-string/jumbo v1, "nubia_edge_move_loop"

    .line 320
    invoke-virtual {v0, v1}, Lcn/nubia/server/policy/edge/GestureSettings;->isGestureEnable(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 328
    :cond_0
    iget-object v0, p0, Lcn/nubia/server/policy/edge/ActionStateMachine;->mCommunalService:Lcn/nubia/server/policy/edge/CommunalService;

    invoke-virtual {v0, p1}, Lcn/nubia/server/policy/edge/CommunalService;->cancelGesture(Lcn/nubia/edgegesture/EdgeGesture;)Z

    .line 329
    invoke-direct {p0, p1}, Lcn/nubia/server/policy/edge/ActionStateMachine;->notifyListener(Lcn/nubia/edgegesture/EdgeGesture;)V

    goto :goto_1

    .line 321
    :cond_1
    :goto_0
    invoke-direct {p0, p1}, Lcn/nubia/server/policy/edge/ActionStateMachine;->notifyListener(Lcn/nubia/edgegesture/EdgeGesture;)V

    .line 322
    invoke-virtual {p1}, Lcn/nubia/edgegesture/EdgeGesture;->getAction()I

    move-result v0

    const/16 v1, 0x4004

    if-ne v0, v1, :cond_2

    .line 323
    iget-object v0, p0, Lcn/nubia/server/policy/edge/ActionStateMachine;->mPrePressSingleUpState:Lcn/nubia/server/policy/edge/ActionStateMachine$PrePressSingleUpState;

    invoke-virtual {p0, v0}, Lcn/nubia/server/policy/edge/ActionStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    goto :goto_1

    .line 325
    :cond_2
    iget-object v0, p0, Lcn/nubia/server/policy/edge/ActionStateMachine;->mPrePressSingleDownState:Lcn/nubia/server/policy/edge/ActionStateMachine$PrePressSingleDownState;

    invoke-virtual {p0, v0}, Lcn/nubia/server/policy/edge/ActionStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    .line 331
    :goto_1
    return-void
.end method

.method private handlePreSingleSlide(Lcn/nubia/edgegesture/EdgeGesture;)V
    .locals 2
    .param p1, "gesture"    # Lcn/nubia/edgegesture/EdgeGesture;

    .line 209
    iget-object v0, p0, Lcn/nubia/server/policy/edge/ActionStateMachine;->mGestureSettings:Lcn/nubia/server/policy/edge/GestureSettings;

    const-string/jumbo v1, "nubia_edge_single_move_switch"

    invoke-virtual {v0, v1}, Lcn/nubia/server/policy/edge/GestureSettings;->isGestureEnable(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcn/nubia/server/policy/edge/ActionStateMachine;->mGestureSettings:Lcn/nubia/server/policy/edge/GestureSettings;

    const-string/jumbo v1, "nubia_edge_move_loop"

    .line 210
    invoke-virtual {v0, v1}, Lcn/nubia/server/policy/edge/GestureSettings;->isGestureEnable(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 211
    :cond_0
    iget-object v0, p0, Lcn/nubia/server/policy/edge/ActionStateMachine;->mCommunalService:Lcn/nubia/server/policy/edge/CommunalService;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcn/nubia/server/policy/edge/CommunalService;->takeScreenShot(Z)V

    .line 212
    invoke-direct {p0, p1}, Lcn/nubia/server/policy/edge/ActionStateMachine;->notifyListener(Lcn/nubia/edgegesture/EdgeGesture;)V

    .line 213
    invoke-virtual {p1}, Lcn/nubia/edgegesture/EdgeGesture;->getAction()I

    move-result v0

    const/16 v1, 0x1005

    if-ne v0, v1, :cond_1

    .line 214
    iget-object v0, p0, Lcn/nubia/server/policy/edge/ActionStateMachine;->mPreSingleUpState:Lcn/nubia/server/policy/edge/ActionStateMachine$PreSingleUpState;

    invoke-virtual {p0, v0}, Lcn/nubia/server/policy/edge/ActionStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    goto :goto_0

    .line 216
    :cond_1
    iget-object v0, p0, Lcn/nubia/server/policy/edge/ActionStateMachine;->mPreSingleDownState:Lcn/nubia/server/policy/edge/ActionStateMachine$PreSingleDownState;

    invoke-virtual {p0, v0}, Lcn/nubia/server/policy/edge/ActionStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    .line 219
    :cond_2
    :goto_0
    return-void
.end method

.method private handlePress(Lcn/nubia/edgegesture/EdgeGesture;)V
    .locals 3
    .param p1, "gesture"    # Lcn/nubia/edgegesture/EdgeGesture;

    .line 240
    invoke-virtual {p1}, Lcn/nubia/edgegesture/EdgeGesture;->getType()I

    move-result v0

    const/4 v1, 0x0

    const/16 v2, 0x7000

    if-ne v0, v2, :cond_1

    .line 241
    iget-object v0, p0, Lcn/nubia/server/policy/edge/ActionStateMachine;->mGestureSettings:Lcn/nubia/server/policy/edge/GestureSettings;

    const-string/jumbo v2, "nubia_edge_quick_inward"

    invoke-virtual {v0, v2}, Lcn/nubia/server/policy/edge/GestureSettings;->isGestureEnable(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 242
    iget-object v0, p0, Lcn/nubia/server/policy/edge/ActionStateMachine;->mCommunalService:Lcn/nubia/server/policy/edge/CommunalService;

    invoke-virtual {v0, v1}, Lcn/nubia/server/policy/edge/CommunalService;->takeScreenShot(Z)V

    .line 243
    invoke-direct {p0, p1}, Lcn/nubia/server/policy/edge/ActionStateMachine;->notifyListener(Lcn/nubia/edgegesture/EdgeGesture;)V

    .line 244
    iget-object v0, p0, Lcn/nubia/server/policy/edge/ActionStateMachine;->mPressState:Lcn/nubia/server/policy/edge/ActionStateMachine$PressState;

    invoke-virtual {p0, v0}, Lcn/nubia/server/policy/edge/ActionStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    .line 246
    :cond_0
    return-void

    .line 248
    :cond_1
    iget-object v0, p0, Lcn/nubia/server/policy/edge/ActionStateMachine;->mGestureSettings:Lcn/nubia/server/policy/edge/GestureSettings;

    const-string/jumbo v2, "nubia_edge_move_in_switch"

    invoke-virtual {v0, v2}, Lcn/nubia/server/policy/edge/GestureSettings;->isGestureEnable(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 249
    iget-object v0, p0, Lcn/nubia/server/policy/edge/ActionStateMachine;->mCommunalService:Lcn/nubia/server/policy/edge/CommunalService;

    invoke-virtual {v0, v1}, Lcn/nubia/server/policy/edge/CommunalService;->takeScreenShot(Z)V

    .line 250
    invoke-direct {p0, p1}, Lcn/nubia/server/policy/edge/ActionStateMachine;->notifyListener(Lcn/nubia/edgegesture/EdgeGesture;)V

    .line 251
    iget-object v0, p0, Lcn/nubia/server/policy/edge/ActionStateMachine;->mPressState:Lcn/nubia/server/policy/edge/ActionStateMachine$PressState;

    invoke-virtual {p0, v0}, Lcn/nubia/server/policy/edge/ActionStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    .line 252
    return-void

    .line 254
    :cond_2
    iget-object v0, p0, Lcn/nubia/server/policy/edge/ActionStateMachine;->mGestureSettings:Lcn/nubia/server/policy/edge/GestureSettings;

    const-string/jumbo v1, "nubia_edge_single_move_switch"

    invoke-virtual {v0, v1}, Lcn/nubia/server/policy/edge/GestureSettings;->isGestureEnable(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 255
    invoke-direct {p0, p1}, Lcn/nubia/server/policy/edge/ActionStateMachine;->notifyListener(Lcn/nubia/edgegesture/EdgeGesture;)V

    .line 256
    iget-object v0, p0, Lcn/nubia/server/policy/edge/ActionStateMachine;->mPressState:Lcn/nubia/server/policy/edge/ActionStateMachine$PressState;

    invoke-virtual {p0, v0}, Lcn/nubia/server/policy/edge/ActionStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    .line 258
    :cond_3
    return-void
.end method

.method private handlePressCancel(Lcn/nubia/edgegesture/EdgeGesture;)V
    .locals 1
    .param p1, "gesture"    # Lcn/nubia/edgegesture/EdgeGesture;

    .line 355
    invoke-direct {p0, p1}, Lcn/nubia/server/policy/edge/ActionStateMachine;->notifyListener(Lcn/nubia/edgegesture/EdgeGesture;)V

    .line 356
    iget-object v0, p0, Lcn/nubia/server/policy/edge/ActionStateMachine;->mIdleState:Lcn/nubia/server/policy/edge/ActionStateMachine$IdleState;

    invoke-virtual {p0, v0}, Lcn/nubia/server/policy/edge/ActionStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    .line 357
    return-void
.end method

.method private handleSingleCancel(Lcn/nubia/edgegesture/EdgeGesture;)V
    .locals 1
    .param p1, "gesture"    # Lcn/nubia/edgegesture/EdgeGesture;

    .line 292
    invoke-direct {p0, p1}, Lcn/nubia/server/policy/edge/ActionStateMachine;->notifyListener(Lcn/nubia/edgegesture/EdgeGesture;)V

    .line 293
    iget-object v0, p0, Lcn/nubia/server/policy/edge/ActionStateMachine;->mIdleState:Lcn/nubia/server/policy/edge/ActionStateMachine$IdleState;

    invoke-virtual {p0, v0}, Lcn/nubia/server/policy/edge/ActionStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    .line 294
    return-void
.end method

.method private handleSingleSlideDone(Lcn/nubia/edgegesture/EdgeGesture;)V
    .locals 2
    .param p1, "gesture"    # Lcn/nubia/edgegesture/EdgeGesture;

    .line 281
    iget-object v0, p0, Lcn/nubia/server/policy/edge/ActionStateMachine;->mGestureSettings:Lcn/nubia/server/policy/edge/GestureSettings;

    const-string/jumbo v1, "nubia_edge_single_move_switch"

    invoke-virtual {v0, v1}, Lcn/nubia/server/policy/edge/GestureSettings;->isGestureEnable(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 282
    iget-object v0, p0, Lcn/nubia/server/policy/edge/ActionStateMachine;->mCommunalService:Lcn/nubia/server/policy/edge/CommunalService;

    invoke-virtual {v0, p1}, Lcn/nubia/server/policy/edge/CommunalService;->updateGesture(Lcn/nubia/edgegesture/EdgeGesture;)V

    .line 283
    invoke-direct {p0, p1}, Lcn/nubia/server/policy/edge/ActionStateMachine;->notifyListener(Lcn/nubia/edgegesture/EdgeGesture;)V

    goto :goto_0

    .line 285
    :cond_0
    iget-object v0, p0, Lcn/nubia/server/policy/edge/ActionStateMachine;->mCommunalService:Lcn/nubia/server/policy/edge/CommunalService;

    invoke-virtual {v0, p1}, Lcn/nubia/server/policy/edge/CommunalService;->cancelGesture(Lcn/nubia/edgegesture/EdgeGesture;)Z

    .line 286
    invoke-direct {p0, p1}, Lcn/nubia/server/policy/edge/ActionStateMachine;->notifyListener(Lcn/nubia/edgegesture/EdgeGesture;)V

    .line 288
    :goto_0
    iget-object v0, p0, Lcn/nubia/server/policy/edge/ActionStateMachine;->mIdleState:Lcn/nubia/server/policy/edge/ActionStateMachine$IdleState;

    invoke-virtual {p0, v0}, Lcn/nubia/server/policy/edge/ActionStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    .line 289
    return-void
.end method

.method private insideSlide(Z)V
    .locals 3
    .param p1, "successful"    # Z

    .line 179
    iget-object v0, p0, Lcn/nubia/server/policy/edge/ActionStateMachine;->mGestureSettings:Lcn/nubia/server/policy/edge/GestureSettings;

    const-string/jumbo v1, "nubia_edge_move_in_switch"

    invoke-virtual {v0, v1}, Lcn/nubia/server/policy/edge/GestureSettings;->isGestureEnable(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 180
    return-void

    .line 181
    :cond_0
    if-eqz p1, :cond_1

    .line 182
    invoke-static {}, Lcn/nubia/server/policy/edge/StatisticsCollector;->getInstance()Lcn/nubia/server/policy/edge/StatisticsCollector;

    move-result-object v0

    iget-object v1, p0, Lcn/nubia/server/policy/edge/ActionStateMachine;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcn/nubia/server/policy/edge/StatisticsCollector;->insideMove(Landroid/content/Context;)V

    .line 183
    invoke-static {}, Lcn/nubia/server/policy/edge/StatisticsCollector;->getInstance()Lcn/nubia/server/policy/edge/StatisticsCollector;

    move-result-object v0

    iget-object v1, p0, Lcn/nubia/server/policy/edge/ActionStateMachine;->mContext:Landroid/content/Context;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcn/nubia/server/policy/edge/StatisticsCollector;->singleTap(Landroid/content/Context;I)V

    goto :goto_0

    .line 186
    :cond_1
    invoke-static {}, Lcn/nubia/server/policy/edge/StatisticsCollector;->getInstance()Lcn/nubia/server/policy/edge/StatisticsCollector;

    move-result-object v0

    iget-object v1, p0, Lcn/nubia/server/policy/edge/ActionStateMachine;->mContext:Landroid/content/Context;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcn/nubia/server/policy/edge/StatisticsCollector;->singleTap(Landroid/content/Context;I)V

    .line 189
    :goto_0
    return-void
.end method

.method private notifyListener(Lcn/nubia/edgegesture/EdgeGesture;)V
    .locals 2
    .param p1, "gesture"    # Lcn/nubia/edgegesture/EdgeGesture;

    .line 198
    iput-object p1, p0, Lcn/nubia/server/policy/edge/ActionStateMachine;->mCurrentEdgeGesture:Lcn/nubia/edgegesture/EdgeGesture;

    .line 199
    invoke-virtual {p1}, Lcn/nubia/edgegesture/EdgeGesture;->getType()I

    move-result v0

    const/16 v1, 0x7000

    if-ne v0, v1, :cond_0

    .line 200
    iget-object v0, p0, Lcn/nubia/server/policy/edge/ActionStateMachine;->mFitCardListener:Lcn/nubia/server/policy/edge/FitCardListener;

    invoke-virtual {v0, p1}, Lcn/nubia/server/policy/edge/FitCardListener;->onGestureAction(Lcn/nubia/edgegesture/EdgeGesture;)V

    .line 201
    return-void

    .line 203
    :cond_0
    iget-object v0, p0, Lcn/nubia/server/policy/edge/ActionStateMachine;->mFitCardListener:Lcn/nubia/server/policy/edge/FitCardListener;

    invoke-virtual {v0, p1}, Lcn/nubia/server/policy/edge/FitCardListener;->onGestureAction(Lcn/nubia/edgegesture/EdgeGesture;)V

    .line 204
    iget-object v0, p0, Lcn/nubia/server/policy/edge/ActionStateMachine;->mActionListener:Lcn/nubia/server/policy/edge/OnActionListener;

    invoke-interface {v0, p1}, Lcn/nubia/server/policy/edge/OnActionListener;->onGestureAction(Lcn/nubia/edgegesture/EdgeGesture;)V

    .line 205
    return-void
.end method

.method private registerContentObserver()V
    .locals 4

    .line 118
    new-instance v0, Lcn/nubia/server/policy/edge/ActionStateMachine$3;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcn/nubia/server/policy/edge/ActionStateMachine$3;-><init>(Lcn/nubia/server/policy/edge/ActionStateMachine;Landroid/os/Handler;)V

    .line 129
    .local v0, "observer":Landroid/database/ContentObserver;
    iget-object v1, p0, Lcn/nubia/server/policy/edge/ActionStateMachine;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "single_ui_mode"

    .line 130
    invoke-static {v2}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 129
    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3, v0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 132
    return-void
.end method

.method private registerGestureEnableListener()V
    .locals 2

    .line 135
    iget-object v0, p0, Lcn/nubia/server/policy/edge/ActionStateMachine;->mGestureSettings:Lcn/nubia/server/policy/edge/GestureSettings;

    new-instance v1, Lcn/nubia/server/policy/edge/ActionStateMachine$4;

    invoke-direct {v1, p0}, Lcn/nubia/server/policy/edge/ActionStateMachine$4;-><init>(Lcn/nubia/server/policy/edge/ActionStateMachine;)V

    invoke-virtual {v0, v1}, Lcn/nubia/server/policy/edge/GestureSettings;->addOnGestureEnableListener(Lcn/nubia/server/policy/edge/GestureSettingsListener$OnGestureEnableListener;)V

    .line 144
    return-void
.end method

.method private registerGlobalActionForPowerKey()V
    .locals 3

    .line 104
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.CLOSE_SYSTEM_DIALOGS"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 105
    .local v0, "filter":Landroid/content/IntentFilter;
    iget-object v1, p0, Lcn/nubia/server/policy/edge/ActionStateMachine;->mContext:Landroid/content/Context;

    new-instance v2, Lcn/nubia/server/policy/edge/ActionStateMachine$2;

    invoke-direct {v2, p0}, Lcn/nubia/server/policy/edge/ActionStateMachine$2;-><init>(Lcn/nubia/server/policy/edge/ActionStateMachine;)V

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 115
    return-void
.end method

.method private registerPhoneCallStateListener()V
    .locals 3

    .line 88
    iget-object v0, p0, Lcn/nubia/server/policy/edge/ActionStateMachine;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "phone"

    .line 89
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 90
    .local v0, "telephonyManager":Landroid/telephony/TelephonyManager;
    new-instance v1, Lcn/nubia/server/policy/edge/ActionStateMachine$1;

    invoke-direct {v1, p0}, Lcn/nubia/server/policy/edge/ActionStateMachine$1;-><init>(Lcn/nubia/server/policy/edge/ActionStateMachine;)V

    const/16 v2, 0x20

    invoke-virtual {v0, v1, v2}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    .line 101
    return-void
.end method

.method private sendCancelMessageForInterrupt()V
    .locals 4

    .line 147
    iget-object v0, p0, Lcn/nubia/server/policy/edge/ActionStateMachine;->mCurrentEdgeGesture:Lcn/nubia/edgegesture/EdgeGesture;

    .line 148
    .local v0, "gesture":Lcn/nubia/edgegesture/EdgeGesture;
    if-nez v0, :cond_0

    return-void

    .line 149
    :cond_0
    invoke-virtual {v0}, Lcn/nubia/edgegesture/EdgeGesture;->getAction()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    goto/16 :goto_0

    .line 151
    :sswitch_0
    goto/16 :goto_0

    .line 157
    :sswitch_1
    const-string v1, "ActionStateMachine"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "cancel action: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcn/nubia/edgegesture/EdgeGesture;->getAction()I

    move-result v3

    invoke-static {v3}, Lcn/nubia/edgegesture/GestureAction;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " for interrupt"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcn/nubia/server/policy/edge/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 158
    const/16 v1, 0x4003

    invoke-virtual {v0, v1}, Lcn/nubia/edgegesture/EdgeGesture;->updateAction(I)V

    .line 159
    invoke-virtual {v0}, Lcn/nubia/edgegesture/EdgeGesture;->getAction()I

    move-result v1

    invoke-virtual {p0, v1, v0}, Lcn/nubia/server/policy/edge/ActionStateMachine;->sendMessage(ILjava/lang/Object;)V

    .line 160
    goto :goto_0

    .line 163
    :sswitch_2
    const-string v1, "ActionStateMachine"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "cancel action: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcn/nubia/edgegesture/EdgeGesture;->getAction()I

    move-result v3

    invoke-static {v3}, Lcn/nubia/edgegesture/GestureAction;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " for interrupt"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcn/nubia/server/policy/edge/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 164
    const/16 v1, 0x3003

    invoke-virtual {v0, v1}, Lcn/nubia/edgegesture/EdgeGesture;->updateAction(I)V

    .line 165
    invoke-virtual {v0}, Lcn/nubia/edgegesture/EdgeGesture;->getAction()I

    move-result v1

    invoke-virtual {p0, v1, v0}, Lcn/nubia/server/policy/edge/ActionStateMachine;->sendMessage(ILjava/lang/Object;)V

    .line 166
    goto :goto_0

    .line 169
    :sswitch_3
    const-string v1, "ActionStateMachine"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "cancel action: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcn/nubia/edgegesture/EdgeGesture;->getAction()I

    move-result v3

    invoke-static {v3}, Lcn/nubia/edgegesture/GestureAction;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " for interrupt"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcn/nubia/server/policy/edge/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 170
    const/16 v1, 0x1003

    invoke-virtual {v0, v1}, Lcn/nubia/edgegesture/EdgeGesture;->updateAction(I)V

    .line 171
    invoke-virtual {v0}, Lcn/nubia/edgegesture/EdgeGesture;->getAction()I

    move-result v1

    invoke-virtual {p0, v1, v0}, Lcn/nubia/server/policy/edge/ActionStateMachine;->sendMessage(ILjava/lang/Object;)V

    .line 172
    nop

    .line 176
    :goto_0
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        0x1005 -> :sswitch_3
        0x1006 -> :sswitch_3
        0x3005 -> :sswitch_2
        0x3006 -> :sswitch_2
        0x4002 -> :sswitch_1
        0x4004 -> :sswitch_1
        0x4005 -> :sswitch_1
        0x4006 -> :sswitch_1
        0x4007 -> :sswitch_1
        0x5001 -> :sswitch_0
    .end sparse-switch
.end method

.method private sendStatisticsEvent(Ljava/lang/String;)V
    .locals 0
    .param p1, "gesture"    # Ljava/lang/String;

    .line 235
    invoke-static {p1}, Lnubia/os/ApplicationManager$Trigger;->noteEdgeGesture(Ljava/lang/String;)V

    .line 236
    return-void
.end method

.method private singleTap(I)V
    .locals 2
    .param p1, "success"    # I

    .line 192
    iget-object v0, p0, Lcn/nubia/server/policy/edge/ActionStateMachine;->mGestureSettings:Lcn/nubia/server/policy/edge/GestureSettings;

    const-string/jumbo v1, "nubia_edge_single_move_switch"

    invoke-virtual {v0, v1}, Lcn/nubia/server/policy/edge/GestureSettings;->isGestureEnable(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 193
    invoke-static {}, Lcn/nubia/server/policy/edge/StatisticsCollector;->getInstance()Lcn/nubia/server/policy/edge/StatisticsCollector;

    move-result-object v0

    iget-object v1, p0, Lcn/nubia/server/policy/edge/ActionStateMachine;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1, p1}, Lcn/nubia/server/policy/edge/StatisticsCollector;->singleTap(Landroid/content/Context;I)V

    .line 195
    :cond_0
    return-void
.end method
