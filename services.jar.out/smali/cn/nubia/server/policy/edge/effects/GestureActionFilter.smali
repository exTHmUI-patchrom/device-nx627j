.class public Lcn/nubia/server/policy/edge/effects/GestureActionFilter;
.super Ljava/lang/Object;
.source "GestureActionFilter.java"


# instance fields
.field private mLocked:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcn/nubia/server/policy/edge/effects/GestureActionFilter;->mLocked:Z

    return-void
.end method


# virtual methods
.method public resetFilter()V
    .locals 1

    .line 29
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcn/nubia/server/policy/edge/effects/GestureActionFilter;->mLocked:Z

    .line 30
    return-void
.end method

.method public willFilterThisOut(Lcn/nubia/server/policy/edge/effectsutil/EffectsEdgeGesture;)Z
    .locals 3
    .param p1, "gesture"    # Lcn/nubia/server/policy/edge/effectsutil/EffectsEdgeGesture;

    .line 18
    iget-boolean v0, p0, Lcn/nubia/server/policy/edge/effects/GestureActionFilter;->mLocked:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 19
    return v1

    .line 21
    :cond_0
    iget v0, p1, Lcn/nubia/server/policy/edge/effectsutil/EffectsEdgeGesture;->mAction:I

    const/16 v2, 0x6000

    if-eq v0, v2, :cond_1

    iget v0, p1, Lcn/nubia/server/policy/edge/effectsutil/EffectsEdgeGesture;->mAction:I

    const/16 v2, 0x2000

    if-ne v0, v2, :cond_2

    .line 23
    :cond_1
    iput-boolean v1, p0, Lcn/nubia/server/policy/edge/effects/GestureActionFilter;->mLocked:Z

    .line 25
    :cond_2
    iget-boolean v0, p0, Lcn/nubia/server/policy/edge/effects/GestureActionFilter;->mLocked:Z

    return v0
.end method
