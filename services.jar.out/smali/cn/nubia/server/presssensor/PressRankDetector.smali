.class public Lcn/nubia/server/presssensor/PressRankDetector;
.super Ljava/lang/Object;
.source "PressRankDetector.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/nubia/server/presssensor/PressRankDetector$PressRankCallback;
    }
.end annotation


# static fields
.field private static final DOWN:I = 0x1

.field private static final LEFT:I = 0x0

.field private static final RIGHT:I = 0x1

.field private static final THRESHOLD_FOR_UPDATTIMG_PRESS_DATA:I = 0x64

.field private static final UP:I


# instance fields
.field private mMaxValueLeft:I

.field private mMaxValueRank:I

.field private mMaxValueRight:I

.field private mPressRankCallback:Lcn/nubia/server/presssensor/PressRankDetector$PressRankCallback;


# direct methods
.method public constructor <init>(Lcn/nubia/server/presssensor/PressRankDetector$PressRankCallback;)V
    .locals 1
    .param p1, "callback"    # Lcn/nubia/server/presssensor/PressRankDetector$PressRankCallback;

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    const/4 v0, -0x1

    iput v0, p0, Lcn/nubia/server/presssensor/PressRankDetector;->mMaxValueLeft:I

    .line 22
    iput v0, p0, Lcn/nubia/server/presssensor/PressRankDetector;->mMaxValueRight:I

    .line 23
    iput v0, p0, Lcn/nubia/server/presssensor/PressRankDetector;->mMaxValueRank:I

    .line 26
    iput-object p1, p0, Lcn/nubia/server/presssensor/PressRankDetector;->mPressRankCallback:Lcn/nubia/server/presssensor/PressRankDetector$PressRankCallback;

    .line 27
    return-void
.end method

.method private changePressRank(I)V
    .locals 1
    .param p1, "rank"    # I

    .line 30
    iget-object v0, p0, Lcn/nubia/server/presssensor/PressRankDetector;->mPressRankCallback:Lcn/nubia/server/presssensor/PressRankDetector$PressRankCallback;

    if-eqz v0, :cond_0

    .line 31
    iget-object v0, p0, Lcn/nubia/server/presssensor/PressRankDetector;->mPressRankCallback:Lcn/nubia/server/presssensor/PressRankDetector$PressRankCallback;

    invoke-interface {v0, p1}, Lcn/nubia/server/presssensor/PressRankDetector$PressRankCallback;->onPressRankChanged(I)V

    .line 33
    :cond_0
    return-void
.end method

.method private changeThreshold(I)V
    .locals 1
    .param p1, "threshold"    # I

    .line 36
    iget-object v0, p0, Lcn/nubia/server/presssensor/PressRankDetector;->mPressRankCallback:Lcn/nubia/server/presssensor/PressRankDetector$PressRankCallback;

    if-eqz v0, :cond_0

    .line 37
    iget-object v0, p0, Lcn/nubia/server/presssensor/PressRankDetector;->mPressRankCallback:Lcn/nubia/server/presssensor/PressRankDetector$PressRankCallback;

    invoke-interface {v0, p1}, Lcn/nubia/server/presssensor/PressRankDetector$PressRankCallback;->onThresholdChanged(I)V

    .line 39
    :cond_0
    return-void
.end method

.method private convertIntoRank(II)I
    .locals 3
    .param p1, "leftValue"    # I
    .param p2, "rightValue"    # I

    .line 94
    if-lt p1, p2, :cond_0

    move v0, p1

    goto :goto_0

    :cond_0
    move v0, p2

    .line 95
    .local v0, "maxValue":I
    :goto_0
    const/4 v1, -0x1

    .line 96
    .local v1, "rank":I
    const/16 v2, 0x384

    if-ge v0, v2, :cond_1

    .line 97
    const/4 v1, 0x0

    goto :goto_1

    .line 98
    :cond_1
    const/16 v2, 0x44c

    if-ge v0, v2, :cond_2

    .line 99
    const/4 v1, 0x1

    goto :goto_1

    .line 100
    :cond_2
    const/16 v2, 0x514

    if-ge v0, v2, :cond_3

    .line 101
    const/4 v1, 0x2

    goto :goto_1

    .line 102
    :cond_3
    const/16 v2, 0x640

    if-ge v0, v2, :cond_4

    .line 103
    const/4 v1, 0x3

    goto :goto_1

    .line 104
    :cond_4
    const/16 v2, 0x76c

    if-ge v0, v2, :cond_5

    .line 105
    const/4 v1, 0x4

    goto :goto_1

    .line 106
    :cond_5
    const/16 v2, 0x8fc

    if-ge v0, v2, :cond_6

    .line 107
    const/4 v1, 0x5

    goto :goto_1

    .line 108
    :cond_6
    const/16 v2, 0xa8c

    if-ge v0, v2, :cond_7

    .line 109
    const/4 v1, 0x6

    goto :goto_1

    .line 110
    :cond_7
    const/16 v2, 0xc80

    if-ge v0, v2, :cond_8

    .line 111
    const/4 v1, 0x7

    goto :goto_1

    .line 112
    :cond_8
    const/16 v2, 0xe74

    if-ge v0, v2, :cond_9

    .line 113
    const/16 v1, 0x8

    goto :goto_1

    .line 114
    :cond_9
    const/16 v2, 0x1068

    if-ge v0, v2, :cond_a

    .line 115
    const/16 v1, 0x9

    goto :goto_1

    .line 116
    :cond_a
    if-lt v0, v2, :cond_b

    .line 117
    const/16 v1, 0xa

    .line 119
    :cond_b
    :goto_1
    return v1
.end method

.method private resetMaxValueLeftAndRight()V
    .locals 1

    .line 123
    const/4 v0, -0x1

    iput v0, p0, Lcn/nubia/server/presssensor/PressRankDetector;->mMaxValueLeft:I

    .line 124
    iput v0, p0, Lcn/nubia/server/presssensor/PressRankDetector;->mMaxValueRight:I

    .line 125
    return-void
.end method

.method private resetMaxValueRank()V
    .locals 1

    .line 128
    const/4 v0, -0x1

    iput v0, p0, Lcn/nubia/server/presssensor/PressRankDetector;->mMaxValueRank:I

    .line 129
    return-void
.end method

.method private updatePressdata(IIJ)V
    .locals 2
    .param p1, "value"    # I
    .param p2, "leftOrRight"    # I
    .param p3, "time"    # J

    .line 77
    if-nez p2, :cond_0

    iget v0, p0, Lcn/nubia/server/presssensor/PressRankDetector;->mMaxValueLeft:I

    if-le p1, v0, :cond_0

    .line 78
    iput p1, p0, Lcn/nubia/server/presssensor/PressRankDetector;->mMaxValueLeft:I

    goto :goto_0

    .line 79
    :cond_0
    const/4 v0, 0x1

    if-ne p2, v0, :cond_1

    iget v0, p0, Lcn/nubia/server/presssensor/PressRankDetector;->mMaxValueRight:I

    if-le p1, v0, :cond_1

    .line 80
    iput p1, p0, Lcn/nubia/server/presssensor/PressRankDetector;->mMaxValueRight:I

    .line 82
    :cond_1
    :goto_0
    iget v0, p0, Lcn/nubia/server/presssensor/PressRankDetector;->mMaxValueLeft:I

    const/16 v1, 0x64

    if-lt v0, v1, :cond_4

    iget v0, p0, Lcn/nubia/server/presssensor/PressRankDetector;->mMaxValueRight:I

    if-ge v0, v1, :cond_2

    goto :goto_1

    .line 86
    :cond_2
    iget v0, p0, Lcn/nubia/server/presssensor/PressRankDetector;->mMaxValueLeft:I

    iget v1, p0, Lcn/nubia/server/presssensor/PressRankDetector;->mMaxValueRight:I

    invoke-direct {p0, v0, v1}, Lcn/nubia/server/presssensor/PressRankDetector;->convertIntoRank(II)I

    move-result v0

    .line 87
    .local v0, "rank":I
    iget v1, p0, Lcn/nubia/server/presssensor/PressRankDetector;->mMaxValueRank:I

    if-le v0, v1, :cond_3

    .line 88
    iput v0, p0, Lcn/nubia/server/presssensor/PressRankDetector;->mMaxValueRank:I

    .line 89
    invoke-direct {p0, v0}, Lcn/nubia/server/presssensor/PressRankDetector;->changePressRank(I)V

    .line 91
    :cond_3
    return-void

    .line 84
    .end local v0    # "rank":I
    :cond_4
    :goto_1
    return-void
.end method


# virtual methods
.method public onPressChanged(Lnubia/os/presssensor/PressEvent;)V
    .locals 8
    .param p1, "event"    # Lnubia/os/presssensor/PressEvent;

    .line 42
    invoke-virtual {p1}, Lnubia/os/presssensor/PressEvent;->getValue()I

    move-result v0

    .line 43
    .local v0, "value":I
    invoke-virtual {p1}, Lnubia/os/presssensor/PressEvent;->getEventTime()J

    move-result-wide v1

    .line 44
    .local v1, "time":J
    invoke-virtual {p1}, Lnubia/os/presssensor/PressEvent;->getMask()I

    move-result v3

    const/16 v4, 0x152

    const/4 v5, 0x1

    const/4 v6, 0x0

    if-eq v3, v4, :cond_0

    packed-switch v3, :pswitch_data_0

    goto :goto_1

    .line 69
    :pswitch_0
    invoke-direct {p0, v0, v5, v1, v2}, Lcn/nubia/server/presssensor/PressRankDetector;->updatePressdata(IIJ)V

    .line 70
    goto :goto_1

    .line 66
    :pswitch_1
    invoke-direct {p0, v0, v6, v1, v2}, Lcn/nubia/server/presssensor/PressRankDetector;->updatePressdata(IIJ)V

    .line 67
    goto :goto_1

    .line 46
    :cond_0
    if-ne v0, v5, :cond_1

    .line 47
    invoke-direct {p0}, Lcn/nubia/server/presssensor/PressRankDetector;->resetMaxValueLeftAndRight()V

    .line 48
    invoke-direct {p0}, Lcn/nubia/server/presssensor/PressRankDetector;->resetMaxValueRank()V

    .line 49
    invoke-direct {p0, v6, v6, v1, v2}, Lcn/nubia/server/presssensor/PressRankDetector;->updatePressdata(IIJ)V

    .line 50
    invoke-direct {p0, v6, v5, v1, v2}, Lcn/nubia/server/presssensor/PressRankDetector;->updatePressdata(IIJ)V

    goto :goto_1

    .line 51
    :cond_1
    if-nez v0, :cond_5

    .line 52
    iget v3, p0, Lcn/nubia/server/presssensor/PressRankDetector;->mMaxValueLeft:I

    iget v4, p0, Lcn/nubia/server/presssensor/PressRankDetector;->mMaxValueRight:I

    if-lt v3, v4, :cond_2

    iget v3, p0, Lcn/nubia/server/presssensor/PressRankDetector;->mMaxValueLeft:I

    goto :goto_0

    .line 53
    :cond_2
    iget v3, p0, Lcn/nubia/server/presssensor/PressRankDetector;->mMaxValueRight:I

    .line 54
    .local v3, "threshold":I
    :goto_0
    iget v4, p0, Lcn/nubia/server/presssensor/PressRankDetector;->mMaxValueLeft:I

    const/16 v7, 0x64

    if-lt v4, v7, :cond_5

    iget v4, p0, Lcn/nubia/server/presssensor/PressRankDetector;->mMaxValueRight:I

    if-ge v4, v7, :cond_3

    .line 56
    goto :goto_1

    .line 58
    :cond_3
    const/16 v4, 0x384

    if-lt v3, v4, :cond_4

    .line 59
    invoke-direct {p0, v3}, Lcn/nubia/server/presssensor/PressRankDetector;->changeThreshold(I)V

    .line 61
    :cond_4
    invoke-direct {p0, v6, v6, v1, v2}, Lcn/nubia/server/presssensor/PressRankDetector;->updatePressdata(IIJ)V

    .line 62
    invoke-direct {p0, v6, v5, v1, v2}, Lcn/nubia/server/presssensor/PressRankDetector;->updatePressdata(IIJ)V

    .line 63
    .end local v3    # "threshold":I
    nop

    .line 74
    :cond_5
    :goto_1
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
