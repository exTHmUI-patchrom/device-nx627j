.class public Lcn/nubia/server/policy/edge/effects/state/UniqueDirectionPool;
.super Ljava/lang/Object;
.source "UniqueDirectionPool.java"


# static fields
.field public static final LEFT_DOWNWARD:I = 0x1

.field public static final LEFT_UPWARD:I = 0x2

.field public static final RIGHT_DOWNWARD:I = 0x3

.field public static final RIGHT_UPWARD:I = 0x4


# instance fields
.field private mDirection:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    const/4 v0, -0x1

    iput v0, p0, Lcn/nubia/server/policy/edge/effects/state/UniqueDirectionPool;->mDirection:I

    .line 16
    return-void
.end method

.method private CheckIfInvalidDirection()V
    .locals 4

    .line 29
    iget v0, p0, Lcn/nubia/server/policy/edge/effects/state/UniqueDirectionPool;->mDirection:I

    packed-switch v0, :pswitch_data_0

    .line 37
    const/4 v0, 0x1

    goto :goto_0

    .line 34
    :pswitch_0
    const/4 v0, 0x0

    .line 35
    .local v0, "invalid":Z
    nop

    .line 37
    :goto_0
    nop

    .line 41
    if-nez v0, :cond_0

    .line 43
    return-void

    .line 42
    :cond_0
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "intent to get direction but invalid, direction is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcn/nubia/server/policy/edge/effects/state/UniqueDirectionPool;->mDirection:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public getMappedDirection()I
    .locals 2

    .line 67
    invoke-direct {p0}, Lcn/nubia/server/policy/edge/effects/state/UniqueDirectionPool;->CheckIfInvalidDirection()V

    .line 68
    const/4 v0, -0x1

    .line 69
    .local v0, "mappedDirection":I
    iget v1, p0, Lcn/nubia/server/policy/edge/effects/state/UniqueDirectionPool;->mDirection:I

    packed-switch v1, :pswitch_data_0

    goto :goto_0

    .line 80
    :pswitch_0
    const/4 v0, 0x3

    .line 81
    goto :goto_0

    .line 77
    :pswitch_1
    const/4 v0, 0x2

    .line 78
    goto :goto_0

    .line 74
    :pswitch_2
    const/4 v0, 0x1

    .line 75
    goto :goto_0

    .line 71
    :pswitch_3
    const/4 v0, 0x0

    .line 72
    nop

    .line 85
    :goto_0
    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public isLeft()Z
    .locals 3

    .line 53
    invoke-direct {p0}, Lcn/nubia/server/policy/edge/effects/state/UniqueDirectionPool;->CheckIfInvalidDirection()V

    .line 54
    iget v0, p0, Lcn/nubia/server/policy/edge/effects/state/UniqueDirectionPool;->mDirection:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    iget v0, p0, Lcn/nubia/server/policy/edge/effects/state/UniqueDirectionPool;->mDirection:I

    const/4 v2, 0x2

    if-ne v0, v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    nop

    :cond_1
    :goto_0
    return v1
.end method

.method public isUpward()Z
    .locals 2

    .line 60
    invoke-direct {p0}, Lcn/nubia/server/policy/edge/effects/state/UniqueDirectionPool;->CheckIfInvalidDirection()V

    .line 61
    iget v0, p0, Lcn/nubia/server/policy/edge/effects/state/UniqueDirectionPool;->mDirection:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    iget v0, p0, Lcn/nubia/server/policy/edge/effects/state/UniqueDirectionPool;->mDirection:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public reset()V
    .locals 1

    .line 23
    const/4 v0, -0x1

    iput v0, p0, Lcn/nubia/server/policy/edge/effects/state/UniqueDirectionPool;->mDirection:I

    .line 24
    return-void
.end method

.method public setDirection(I)V
    .locals 0
    .param p1, "direction"    # I

    .line 19
    iput p1, p0, Lcn/nubia/server/policy/edge/effects/state/UniqueDirectionPool;->mDirection:I

    .line 20
    return-void
.end method
