.class public Lcn/nubia/server/policy/edge/effects/animation/pageflipping/AnimStateChecker;
.super Ljava/lang/Object;
.source "AnimStateChecker.java"


# static fields
.field static final ANIM_DOUBLE_SUCCESS_STATE:I = 0x9

.field static final ANIM_GUIDE_CANCEL_STATE:I = 0x2

.field static final ANIM_GUIDE_START_STATE:I = 0x1

.field static final ANIM_INIT_STATE:I = 0x0

.field static final ANIM_INNER_SUCCESS_STATE:I = 0x8

.field static final ANIM_LOOP_SUCCESS_STATE:I = 0x7

.field static final ANIM_SINGLE_FAIL_STATE:I = 0x6

.field static final ANIM_SINGLE_PRE_STATE:I = 0x3

.field static final ANIM_SINGLE_SUCCESS_STATE:I = 0x5

.field static final ANIM_SINGLE_UPDATE_STATE:I = 0x4


# instance fields
.field private mAnimState:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    const/4 v0, 0x0

    iput v0, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/AnimStateChecker;->mAnimState:I

    .line 19
    return-void
.end method

.method private checkGuideCancelStateTransition()V
    .locals 3

    .line 61
    iget v0, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/AnimStateChecker;->mAnimState:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    iget v0, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/AnimStateChecker;->mAnimState:I

    if-nez v0, :cond_0

    goto :goto_0

    .line 62
    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "checkGuideCancelStateTransition error! previous State: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/AnimStateChecker;->mAnimState:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 64
    :cond_1
    :goto_0
    return-void
.end method

.method private checkGuideStartStateTransition()V
    .locals 3

    .line 55
    iget v0, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/AnimStateChecker;->mAnimState:I

    if-nez v0, :cond_0

    .line 58
    return-void

    .line 56
    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "checkGuideStartStateTransition error! previous State: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/AnimStateChecker;->mAnimState:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private checkOtherStateTransition(I)V
    .locals 3
    .param p1, "animState"    # I

    .line 79
    iget v0, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/AnimStateChecker;->mAnimState:I

    if-eqz v0, :cond_1

    iget v0, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/AnimStateChecker;->mAnimState:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    iget v0, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/AnimStateChecker;->mAnimState:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    goto :goto_0

    .line 81
    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "checkOtherStateTransition error! previous State: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/AnimStateChecker;->mAnimState:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " current State: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 84
    :cond_1
    :goto_0
    return-void
.end method

.method private checkSingleStartStateTransition()V
    .locals 3

    .line 67
    iget v0, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/AnimStateChecker;->mAnimState:I

    if-eqz v0, :cond_1

    iget v0, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/AnimStateChecker;->mAnimState:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    .line 68
    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "checkSingleStartStateTransition error! previous State: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/AnimStateChecker;->mAnimState:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 70
    :cond_1
    :goto_0
    return-void
.end method

.method private checkSingleUpdateStateTransition()V
    .locals 3

    .line 73
    iget v0, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/AnimStateChecker;->mAnimState:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_1

    iget v0, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/AnimStateChecker;->mAnimState:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    goto :goto_0

    .line 74
    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "checkSingleUpdateStateTransition error! previous State: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/AnimStateChecker;->mAnimState:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 76
    :cond_1
    :goto_0
    return-void
.end method

.method private checkStateTransition(I)V
    .locals 0
    .param p1, "animState"    # I

    .line 27
    packed-switch p1, :pswitch_data_0

    goto :goto_0

    .line 49
    :pswitch_0
    invoke-direct {p0, p1}, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/AnimStateChecker;->checkOtherStateTransition(I)V

    goto :goto_0

    .line 41
    :pswitch_1
    invoke-direct {p0}, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/AnimStateChecker;->checkSingleUpdateStateTransition()V

    .line 42
    goto :goto_0

    .line 37
    :pswitch_2
    invoke-direct {p0}, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/AnimStateChecker;->checkSingleStartStateTransition()V

    .line 38
    goto :goto_0

    .line 33
    :pswitch_3
    invoke-direct {p0}, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/AnimStateChecker;->checkGuideCancelStateTransition()V

    .line 34
    goto :goto_0

    .line 29
    :pswitch_4
    invoke-direct {p0}, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/AnimStateChecker;->checkGuideStartStateTransition()V

    .line 30
    nop

    .line 52
    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method setAnimState(I)V
    .locals 0
    .param p1, "animState"    # I

    .line 87
    iput p1, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/AnimStateChecker;->mAnimState:I

    .line 88
    return-void
.end method

.method validate(I)V
    .locals 0
    .param p1, "animState"    # I

    .line 24
    return-void
.end method
