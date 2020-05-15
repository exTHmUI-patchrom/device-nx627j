.class public Lcn/nubia/server/policy/edge/EdgeGesturePolicy;
.super Ljava/lang/Object;
.source "EdgeGesturePolicy.java"

# interfaces
.implements Lnubia/os/edge/OnEdgeTouchListener;
.implements Lnubia/os/edge/OnNormalTouchListener;
.implements Lcn/nubia/edgegesture/OnEdgeGestureListener;
.implements Lcom/android/server/policy/IKeyBeforeDispatchingHandler;


# static fields
.field private static final TAG:Ljava/lang/String; = "EdgeGesturePolicy"


# instance fields
.field private mActionStateMachine:Lcn/nubia/server/policy/edge/ActionStateMachine;

.field private mAnimate:Lcn/nubia/server/policy/edge/Animation;

.field private mCommunalService:Lcn/nubia/server/policy/edge/CommunalService;

.field private mContext:Landroid/content/Context;

.field private mEdgeGestureDetector:Lcn/nubia/edgegesture/EdgeGestureDetector;

.field private mEdgeTouchManager:Lnubia/os/edge/EdgeTouchManager;

.field private mGestureSettings:Lcn/nubia/server/policy/edge/GestureSettings;

.field private mIsUserUnlocked:Z

.field private mOnGestureEnableListener:Lcn/nubia/server/policy/edge/GestureSettingsListener$OnGestureEnableListener;

.field private mPhoneWindowManager:Lcom/android/server/policy/PhoneWindowManager;

.field private mUserManager:Landroid/os/UserManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/server/policy/PhoneWindowManager;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "manager"    # Lcom/android/server/policy/PhoneWindowManager;

    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    new-instance v0, Lcn/nubia/server/policy/edge/EdgeGesturePolicy$1;

    invoke-direct {v0, p0}, Lcn/nubia/server/policy/edge/EdgeGesturePolicy$1;-><init>(Lcn/nubia/server/policy/edge/EdgeGesturePolicy;)V

    iput-object v0, p0, Lcn/nubia/server/policy/edge/EdgeGesturePolicy;->mOnGestureEnableListener:Lcn/nubia/server/policy/edge/GestureSettingsListener$OnGestureEnableListener;

    .line 63
    iput-object p1, p0, Lcn/nubia/server/policy/edge/EdgeGesturePolicy;->mContext:Landroid/content/Context;

    .line 64
    iput-object p2, p0, Lcn/nubia/server/policy/edge/EdgeGesturePolicy;->mPhoneWindowManager:Lcom/android/server/policy/PhoneWindowManager;

    .line 66
    invoke-static {}, Lcn/nubia/server/policy/edge/EdgeUiThread;->getHandler()Landroid/os/Handler;

    move-result-object v0

    .line 67
    .local v0, "handler":Landroid/os/Handler;
    new-instance v1, Lcn/nubia/server/policy/edge/GestureSettings;

    iget-object v2, p0, Lcn/nubia/server/policy/edge/EdgeGesturePolicy;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcn/nubia/server/policy/edge/GestureSettings;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcn/nubia/server/policy/edge/EdgeGesturePolicy;->mGestureSettings:Lcn/nubia/server/policy/edge/GestureSettings;

    .line 68
    iget-object v1, p0, Lcn/nubia/server/policy/edge/EdgeGesturePolicy;->mGestureSettings:Lcn/nubia/server/policy/edge/GestureSettings;

    iget-object v2, p0, Lcn/nubia/server/policy/edge/EdgeGesturePolicy;->mOnGestureEnableListener:Lcn/nubia/server/policy/edge/GestureSettingsListener$OnGestureEnableListener;

    invoke-virtual {v1, v2}, Lcn/nubia/server/policy/edge/GestureSettings;->addOnGestureEnableListener(Lcn/nubia/server/policy/edge/GestureSettingsListener$OnGestureEnableListener;)V

    .line 69
    iget-object v1, p0, Lcn/nubia/server/policy/edge/EdgeGesturePolicy;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcn/nubia/server/policy/edge/EdgeGesturePolicy;->mPhoneWindowManager:Lcom/android/server/policy/PhoneWindowManager;

    iget-object v3, p0, Lcn/nubia/server/policy/edge/EdgeGesturePolicy;->mGestureSettings:Lcn/nubia/server/policy/edge/GestureSettings;

    invoke-static {v1, v2, v3, v0}, Lcn/nubia/server/policy/edge/CommunalService;->init(Landroid/content/Context;Lcom/android/server/policy/PhoneWindowManager;Lcn/nubia/server/policy/edge/GestureSettings;Landroid/os/Handler;)Lcn/nubia/server/policy/edge/CommunalService;

    move-result-object v1

    iput-object v1, p0, Lcn/nubia/server/policy/edge/EdgeGesturePolicy;->mCommunalService:Lcn/nubia/server/policy/edge/CommunalService;

    .line 70
    new-instance v1, Lcn/nubia/server/policy/edge/ActionExecutor;

    iget-object v2, p0, Lcn/nubia/server/policy/edge/EdgeGesturePolicy;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcn/nubia/server/policy/edge/EdgeGesturePolicy;->mGestureSettings:Lcn/nubia/server/policy/edge/GestureSettings;

    invoke-direct {v1, v2, v0, v3}, Lcn/nubia/server/policy/edge/ActionExecutor;-><init>(Landroid/content/Context;Landroid/os/Handler;Lcn/nubia/server/policy/edge/GestureSettings;)V

    .line 71
    .local v1, "executor":Lcn/nubia/server/policy/edge/ActionExecutor;
    new-instance v2, Lcn/nubia/server/policy/edge/Animation;

    iget-object v3, p0, Lcn/nubia/server/policy/edge/EdgeGesturePolicy;->mContext:Landroid/content/Context;

    invoke-static {}, Lcn/nubia/server/policy/edge/EdgeUiThread;->get()Lcn/nubia/server/policy/edge/EdgeUiThread;

    move-result-object v4

    invoke-direct {v2, v3, v4, v1}, Lcn/nubia/server/policy/edge/Animation;-><init>(Landroid/content/Context;Landroid/os/HandlerThread;Lcn/nubia/server/policy/edge/AnimationCallback;)V

    iput-object v2, p0, Lcn/nubia/server/policy/edge/EdgeGesturePolicy;->mAnimate:Lcn/nubia/server/policy/edge/Animation;

    .line 72
    new-instance v2, Lcn/nubia/server/policy/edge/ActionStateMachine;

    iget-object v3, p0, Lcn/nubia/server/policy/edge/EdgeGesturePolicy;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcn/nubia/server/policy/edge/EdgeGesturePolicy;->mGestureSettings:Lcn/nubia/server/policy/edge/GestureSettings;

    iget-object v5, p0, Lcn/nubia/server/policy/edge/EdgeGesturePolicy;->mAnimate:Lcn/nubia/server/policy/edge/Animation;

    invoke-direct {v2, v3, v0, v4, v5}, Lcn/nubia/server/policy/edge/ActionStateMachine;-><init>(Landroid/content/Context;Landroid/os/Handler;Lcn/nubia/server/policy/edge/GestureSettings;Lcn/nubia/server/policy/edge/OnActionListener;)V

    iput-object v2, p0, Lcn/nubia/server/policy/edge/EdgeGesturePolicy;->mActionStateMachine:Lcn/nubia/server/policy/edge/ActionStateMachine;

    .line 74
    new-instance v2, Lcn/nubia/edgegesture/EdgeGestureDetector;

    iget-object v3, p0, Lcn/nubia/server/policy/edge/EdgeGesturePolicy;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Lcn/nubia/edgegesture/EdgeGestureDetector;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcn/nubia/server/policy/edge/EdgeGesturePolicy;->mEdgeGestureDetector:Lcn/nubia/edgegesture/EdgeGestureDetector;

    .line 76
    invoke-static {}, Lnubia/os/edge/EdgeTouchManager;->getInstance()Lnubia/os/edge/EdgeTouchManager;

    move-result-object v2

    iput-object v2, p0, Lcn/nubia/server/policy/edge/EdgeGesturePolicy;->mEdgeTouchManager:Lnubia/os/edge/EdgeTouchManager;

    .line 77
    iget-object v2, p0, Lcn/nubia/server/policy/edge/EdgeGesturePolicy;->mEdgeTouchManager:Lnubia/os/edge/EdgeTouchManager;

    invoke-virtual {v2, p0}, Lnubia/os/edge/EdgeTouchManager;->registerEdgeTouchListener(Lnubia/os/edge/OnEdgeTouchListener;)V

    .line 78
    iget-object v2, p0, Lcn/nubia/server/policy/edge/EdgeGesturePolicy;->mEdgeTouchManager:Lnubia/os/edge/EdgeTouchManager;

    invoke-virtual {v2, p0}, Lnubia/os/edge/EdgeTouchManager;->registerNormalTouchListener(Lnubia/os/edge/OnNormalTouchListener;)V

    .line 79
    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "android.intent.action.USER_UNLOCKED"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 80
    .local v2, "filter":Landroid/content/IntentFilter;
    new-instance v3, Lcn/nubia/server/policy/edge/EdgeGesturePolicy$2;

    invoke-direct {v3, p0}, Lcn/nubia/server/policy/edge/EdgeGesturePolicy$2;-><init>(Lcn/nubia/server/policy/edge/EdgeGesturePolicy;)V

    .line 93
    .local v3, "receiver":Landroid/content/BroadcastReceiver;
    iget-object v4, p0, Lcn/nubia/server/policy/edge/EdgeGesturePolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v4, v3, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 94
    iget-object v4, p0, Lcn/nubia/server/policy/edge/EdgeGesturePolicy;->mContext:Landroid/content/Context;

    const-string/jumbo v5, "user"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/UserManager;

    iput-object v4, p0, Lcn/nubia/server/policy/edge/EdgeGesturePolicy;->mUserManager:Landroid/os/UserManager;

    .line 95
    return-void
.end method

.method static synthetic access$000(Lcn/nubia/server/policy/edge/EdgeGesturePolicy;)Lcn/nubia/edgegesture/EdgeGestureDetector;
    .locals 1
    .param p0, "x0"    # Lcn/nubia/server/policy/edge/EdgeGesturePolicy;

    .line 28
    iget-object v0, p0, Lcn/nubia/server/policy/edge/EdgeGesturePolicy;->mEdgeGestureDetector:Lcn/nubia/edgegesture/EdgeGestureDetector;

    return-object v0
.end method

.method static synthetic access$100(Lcn/nubia/server/policy/edge/EdgeGesturePolicy;)Landroid/os/UserManager;
    .locals 1
    .param p0, "x0"    # Lcn/nubia/server/policy/edge/EdgeGesturePolicy;

    .line 28
    iget-object v0, p0, Lcn/nubia/server/policy/edge/EdgeGesturePolicy;->mUserManager:Landroid/os/UserManager;

    return-object v0
.end method

.method static synthetic access$200(Lcn/nubia/server/policy/edge/EdgeGesturePolicy;)Z
    .locals 1
    .param p0, "x0"    # Lcn/nubia/server/policy/edge/EdgeGesturePolicy;

    .line 28
    iget-boolean v0, p0, Lcn/nubia/server/policy/edge/EdgeGesturePolicy;->mIsUserUnlocked:Z

    return v0
.end method

.method static synthetic access$202(Lcn/nubia/server/policy/edge/EdgeGesturePolicy;Z)Z
    .locals 0
    .param p0, "x0"    # Lcn/nubia/server/policy/edge/EdgeGesturePolicy;
    .param p1, "x1"    # Z

    .line 28
    iput-boolean p1, p0, Lcn/nubia/server/policy/edge/EdgeGesturePolicy;->mIsUserUnlocked:Z

    return p1
.end method

.method static synthetic access$300(Lcn/nubia/server/policy/edge/EdgeGesturePolicy;)Lcn/nubia/server/policy/edge/ActionStateMachine;
    .locals 1
    .param p0, "x0"    # Lcn/nubia/server/policy/edge/EdgeGesturePolicy;

    .line 28
    iget-object v0, p0, Lcn/nubia/server/policy/edge/EdgeGesturePolicy;->mActionStateMachine:Lcn/nubia/server/policy/edge/ActionStateMachine;

    return-object v0
.end method

.method static synthetic access$400(Lcn/nubia/server/policy/edge/EdgeGesturePolicy;)Lcn/nubia/server/policy/edge/GestureSettings;
    .locals 1
    .param p0, "x0"    # Lcn/nubia/server/policy/edge/EdgeGesturePolicy;

    .line 28
    iget-object v0, p0, Lcn/nubia/server/policy/edge/EdgeGesturePolicy;->mGestureSettings:Lcn/nubia/server/policy/edge/GestureSettings;

    return-object v0
.end method

.method private sendGestureToStateMachine(Lcn/nubia/edgegesture/EdgeGesture;)V
    .locals 2
    .param p1, "gesture"    # Lcn/nubia/edgegesture/EdgeGesture;

    .line 111
    iget-object v0, p0, Lcn/nubia/server/policy/edge/EdgeGesturePolicy;->mCommunalService:Lcn/nubia/server/policy/edge/CommunalService;

    invoke-virtual {p1}, Lcn/nubia/edgegesture/EdgeGesture;->getType()I

    move-result v1

    invoke-virtual {v0, v1}, Lcn/nubia/server/policy/edge/CommunalService;->isSupportedAtPresent(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 112
    iget-object v0, p0, Lcn/nubia/server/policy/edge/EdgeGesturePolicy;->mActionStateMachine:Lcn/nubia/server/policy/edge/ActionStateMachine;

    invoke-virtual {p1}, Lcn/nubia/edgegesture/EdgeGesture;->getAction()I

    move-result v1

    invoke-virtual {v0, v1, p1}, Lcn/nubia/server/policy/edge/ActionStateMachine;->sendMessage(ILjava/lang/Object;)V

    goto :goto_0

    .line 114
    :cond_0
    iget-object v0, p0, Lcn/nubia/server/policy/edge/EdgeGesturePolicy;->mCommunalService:Lcn/nubia/server/policy/edge/CommunalService;

    invoke-virtual {v0, p1}, Lcn/nubia/server/policy/edge/CommunalService;->cancelGesture(Lcn/nubia/edgegesture/EdgeGesture;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 115
    iget-object v0, p0, Lcn/nubia/server/policy/edge/EdgeGesturePolicy;->mActionStateMachine:Lcn/nubia/server/policy/edge/ActionStateMachine;

    iget-object v1, p0, Lcn/nubia/server/policy/edge/EdgeGesturePolicy;->mCommunalService:Lcn/nubia/server/policy/edge/CommunalService;

    .line 116
    invoke-virtual {v1, p1}, Lcn/nubia/server/policy/edge/CommunalService;->getCancelGestureAction(Lcn/nubia/edgegesture/EdgeGesture;)I

    move-result v1

    .line 115
    invoke-virtual {v0, v1, p1}, Lcn/nubia/server/policy/edge/ActionStateMachine;->sendMessage(ILjava/lang/Object;)V

    .line 120
    :cond_1
    :goto_0
    return-void
.end method


# virtual methods
.method public interceptKeyBeforeDispatching(Lcom/android/server/policy/WindowManagerPolicy$WindowState;Landroid/view/KeyEvent;I)J
    .locals 2
    .param p1, "win"    # Lcom/android/server/policy/WindowManagerPolicy$WindowState;
    .param p2, "event"    # Landroid/view/KeyEvent;
    .param p3, "policyFlags"    # I

    .line 154
    iget-object v0, p0, Lcn/nubia/server/policy/edge/EdgeGesturePolicy;->mEdgeGestureDetector:Lcn/nubia/edgegesture/EdgeGestureDetector;

    invoke-virtual {v0, p2}, Lcn/nubia/edgegesture/EdgeGestureDetector;->onKeyEvent(Landroid/view/KeyEvent;)V

    .line 155
    const-wide/high16 v0, -0x8000000000000000L

    return-wide v0
.end method

.method public onEdgeGesture(Lcn/nubia/edgegesture/EdgeGesture;)V
    .locals 3
    .param p1, "gesture"    # Lcn/nubia/edgegesture/EdgeGesture;

    .line 124
    const-string v0, "EdgeGesturePolicy"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "receive gesture: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcn/nubia/server/policy/edge/LogUtils;->sysi(Ljava/lang/String;Ljava/lang/String;)V

    .line 125
    invoke-virtual {p1}, Lcn/nubia/edgegesture/EdgeGesture;->isValid()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 126
    invoke-virtual {p1}, Lcn/nubia/edgegesture/EdgeGesture;->getAction()I

    move-result v0

    const/16 v1, 0x1007

    if-ne v0, v1, :cond_0

    .line 127
    iget-object v0, p0, Lcn/nubia/server/policy/edge/EdgeGesturePolicy;->mCommunalService:Lcn/nubia/server/policy/edge/CommunalService;

    const/16 v1, 0x3000

    invoke-virtual {v0, v1}, Lcn/nubia/server/policy/edge/CommunalService;->isGestureEnable(I)Z

    move-result v0

    if-nez v0, :cond_2

    .line 128
    const/16 v0, 0x1003

    invoke-virtual {p1, v0}, Lcn/nubia/edgegesture/EdgeGesture;->updateAction(I)V

    .line 129
    invoke-direct {p0, p1}, Lcn/nubia/server/policy/edge/EdgeGesturePolicy;->sendGestureToStateMachine(Lcn/nubia/edgegesture/EdgeGesture;)V

    goto :goto_0

    .line 132
    :cond_0
    invoke-direct {p0, p1}, Lcn/nubia/server/policy/edge/EdgeGesturePolicy;->sendGestureToStateMachine(Lcn/nubia/edgegesture/EdgeGesture;)V

    goto :goto_0

    .line 135
    :cond_1
    const-string v0, "EdgeGesturePolicy"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "receive invalid edge gesture: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 137
    :cond_2
    :goto_0
    return-void
.end method

.method public onEdgeTouch(Landroid/view/MotionEvent;)V
    .locals 1
    .param p1, "event"    # Landroid/view/MotionEvent;

    .line 147
    iget-object v0, p0, Lcn/nubia/server/policy/edge/EdgeGesturePolicy;->mEdgeGestureDetector:Lcn/nubia/edgegesture/EdgeGestureDetector;

    invoke-virtual {v0, p1}, Lcn/nubia/edgegesture/EdgeGestureDetector;->onEdgeTouchEvent(Landroid/view/MotionEvent;)V

    .line 148
    iget-object v0, p0, Lcn/nubia/server/policy/edge/EdgeGesturePolicy;->mAnimate:Lcn/nubia/server/policy/edge/Animation;

    invoke-virtual {v0, p1}, Lcn/nubia/server/policy/edge/Animation;->onEdgeTouch(Landroid/view/MotionEvent;)V

    .line 149
    return-void
.end method

.method public onNormalTouch(Landroid/view/MotionEvent;)V
    .locals 1
    .param p1, "event"    # Landroid/view/MotionEvent;

    .line 141
    iget-object v0, p0, Lcn/nubia/server/policy/edge/EdgeGesturePolicy;->mEdgeGestureDetector:Lcn/nubia/edgegesture/EdgeGestureDetector;

    invoke-virtual {v0, p1}, Lcn/nubia/edgegesture/EdgeGestureDetector;->onNormalTouchEvent(Landroid/view/MotionEvent;)V

    .line 142
    iget-object v0, p0, Lcn/nubia/server/policy/edge/EdgeGesturePolicy;->mAnimate:Lcn/nubia/server/policy/edge/Animation;

    invoke-virtual {v0, p1}, Lcn/nubia/server/policy/edge/Animation;->onNormalTouch(Landroid/view/MotionEvent;)V

    .line 143
    return-void
.end method

.method public systemBooted()V
    .locals 2

    .line 98
    iget-object v0, p0, Lcn/nubia/server/policy/edge/EdgeGesturePolicy;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v0}, Landroid/os/UserManager;->isUserUnlocked()Z

    move-result v0

    .line 99
    .local v0, "userUnlocked":Z
    if-eqz v0, :cond_0

    iget-boolean v1, p0, Lcn/nubia/server/policy/edge/EdgeGesturePolicy;->mIsUserUnlocked:Z

    if-nez v1, :cond_0

    .line 100
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcn/nubia/server/policy/edge/EdgeGesturePolicy;->mIsUserUnlocked:Z

    .line 101
    iget-object v1, p0, Lcn/nubia/server/policy/edge/EdgeGesturePolicy;->mActionStateMachine:Lcn/nubia/server/policy/edge/ActionStateMachine;

    invoke-virtual {v1}, Lcn/nubia/server/policy/edge/ActionStateMachine;->start()V

    .line 102
    iget-object v1, p0, Lcn/nubia/server/policy/edge/EdgeGesturePolicy;->mGestureSettings:Lcn/nubia/server/policy/edge/GestureSettings;

    invoke-virtual {v1}, Lcn/nubia/server/policy/edge/GestureSettings;->systemBooted()V

    .line 104
    :cond_0
    return-void
.end method

.method public updatePackageChanged(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "className"    # Ljava/lang/String;
    .param p2, "pkgName"    # Ljava/lang/String;

    .line 107
    iget-object v0, p0, Lcn/nubia/server/policy/edge/EdgeGesturePolicy;->mGestureSettings:Lcn/nubia/server/policy/edge/GestureSettings;

    invoke-virtual {v0, p1, p2}, Lcn/nubia/server/policy/edge/GestureSettings;->updatePackageChanged(Ljava/lang/String;Ljava/lang/String;)V

    .line 108
    return-void
.end method
