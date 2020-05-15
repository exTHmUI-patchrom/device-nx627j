.class public Lcn/nubia/server/policy/edge/Animation;
.super Ljava/lang/Object;
.source "Animation.java"

# interfaces
.implements Lcn/nubia/server/policy/edge/OnActionListener;


# static fields
.field private static final TAG:Ljava/lang/String; = "Animation"


# instance fields
.field private mAdapter:Lcn/nubia/server/policy/edge/effects/EffectsAdapter;

.field private mCallback:Lcn/nubia/server/policy/edge/AnimationCallback;

.field private mContext:Landroid/content/Context;

.field private mHandler:Landroid/os/Handler;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/os/HandlerThread;Lcn/nubia/server/policy/edge/AnimationCallback;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "thread"    # Landroid/os/HandlerThread;
    .param p3, "callback"    # Lcn/nubia/server/policy/edge/AnimationCallback;

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    iput-object p1, p0, Lcn/nubia/server/policy/edge/Animation;->mContext:Landroid/content/Context;

    .line 22
    new-instance v0, Landroid/os/Handler;

    invoke-virtual {p2}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcn/nubia/server/policy/edge/Animation;->mHandler:Landroid/os/Handler;

    .line 23
    iput-object p3, p0, Lcn/nubia/server/policy/edge/Animation;->mCallback:Lcn/nubia/server/policy/edge/AnimationCallback;

    .line 24
    new-instance v0, Lcn/nubia/server/policy/edge/effects/EffectsAdapter;

    invoke-direct {v0, p1, p2, p3}, Lcn/nubia/server/policy/edge/effects/EffectsAdapter;-><init>(Landroid/content/Context;Landroid/os/HandlerThread;Lcn/nubia/server/policy/edge/AnimationCallback;)V

    iput-object v0, p0, Lcn/nubia/server/policy/edge/Animation;->mAdapter:Lcn/nubia/server/policy/edge/effects/EffectsAdapter;

    .line 25
    return-void
.end method

.method static synthetic access$000(Lcn/nubia/server/policy/edge/Animation;)Lcn/nubia/server/policy/edge/effects/EffectsAdapter;
    .locals 1
    .param p0, "x0"    # Lcn/nubia/server/policy/edge/Animation;

    .line 12
    iget-object v0, p0, Lcn/nubia/server/policy/edge/Animation;->mAdapter:Lcn/nubia/server/policy/edge/effects/EffectsAdapter;

    return-object v0
.end method


# virtual methods
.method public onEdgeTouch(Landroid/view/MotionEvent;)V
    .locals 3
    .param p1, "event"    # Landroid/view/MotionEvent;

    .line 58
    invoke-static {p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v0

    .line 59
    .local v0, "savedEvent":Landroid/view/MotionEvent;
    iget-object v1, p0, Lcn/nubia/server/policy/edge/Animation;->mHandler:Landroid/os/Handler;

    new-instance v2, Lcn/nubia/server/policy/edge/Animation$1;

    invoke-direct {v2, p0, v0}, Lcn/nubia/server/policy/edge/Animation$1;-><init>(Lcn/nubia/server/policy/edge/Animation;Landroid/view/MotionEvent;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 67
    return-void
.end method

.method public onEnterIdleState()V
    .locals 2

    .line 71
    const-string v0, "Adapter"

    const-string/jumbo v1, "onEnterIdleState"

    invoke-static {v0, v1}, Lcn/nubia/server/policy/edge/effectsutil/EffectsLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 72
    iget-object v0, p0, Lcn/nubia/server/policy/edge/Animation;->mAdapter:Lcn/nubia/server/policy/edge/effects/EffectsAdapter;

    invoke-virtual {v0}, Lcn/nubia/server/policy/edge/effects/EffectsAdapter;->onEnterIdleState()V

    .line 74
    return-void
.end method

.method public onGestureAction(Lcn/nubia/edgegesture/EdgeGesture;)V
    .locals 3
    .param p1, "gesture"    # Lcn/nubia/edgegesture/EdgeGesture;

    .line 30
    invoke-static {}, Lcn/nubia/server/policy/edge/CommunalService;->getDefault()Lcn/nubia/server/policy/edge/CommunalService;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/server/policy/edge/CommunalService;->isSingleSlideControlNotification()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 31
    iget-object v0, p0, Lcn/nubia/server/policy/edge/Animation;->mCallback:Lcn/nubia/server/policy/edge/AnimationCallback;

    invoke-interface {v0, p1}, Lcn/nubia/server/policy/edge/AnimationCallback;->onAnimationFinish(Lcn/nubia/edgegesture/EdgeGesture;)V

    .line 32
    return-void

    .line 35
    :cond_0
    invoke-virtual {p1}, Lcn/nubia/edgegesture/EdgeGesture;->getAction()I

    move-result v0

    const/16 v1, 0x6001

    if-eq v0, v1, :cond_1

    packed-switch v0, :pswitch_data_0

    .line 49
    const-string v0, "Adapter"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onGestureAction "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcn/nubia/server/policy/edge/effectsutil/EffectsLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 50
    iget-object v0, p0, Lcn/nubia/server/policy/edge/Animation;->mAdapter:Lcn/nubia/server/policy/edge/effects/EffectsAdapter;

    invoke-virtual {v0, p1}, Lcn/nubia/server/policy/edge/effects/EffectsAdapter;->onGestureAction(Lcn/nubia/edgegesture/EdgeGesture;)V

    .line 51
    return-void

    .line 45
    :cond_1
    :pswitch_0
    iget-object v0, p0, Lcn/nubia/server/policy/edge/Animation;->mCallback:Lcn/nubia/server/policy/edge/AnimationCallback;

    invoke-interface {v0, p1}, Lcn/nubia/server/policy/edge/AnimationCallback;->onAnimationFinish(Lcn/nubia/edgegesture/EdgeGesture;)V

    .line 46
    return-void

    nop

    nop

    :pswitch_data_0
    .packed-switch 0x2001
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public onNormalTouch(Landroid/view/MotionEvent;)V
    .locals 0
    .param p1, "event"    # Landroid/view/MotionEvent;

    .line 55
    return-void
.end method
