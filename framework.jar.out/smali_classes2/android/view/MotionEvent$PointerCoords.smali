.class public final Landroid/view/MotionEvent$PointerCoords;
.super Ljava/lang/Object;
.source "MotionEvent.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/MotionEvent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "PointerCoords"
.end annotation


# static fields
.field private static final INITIAL_PACKED_AXIS_VALUES:I = 0x8


# instance fields
.field private mPackedAxisBits:J

.field private mPackedAxisValues:[F

.field public orientation:F

.field public pressure:F

.field public size:F

.field public toolMajor:F

.field public toolMinor:F

.field public touchMajor:F

.field public touchMinor:F

.field public x:F

.field public y:F


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 3476
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3477
    return-void
.end method

.method public constructor <init>(Landroid/view/MotionEvent$PointerCoords;)V
    .locals 0
    .param p1, "other"    # Landroid/view/MotionEvent$PointerCoords;

    .line 3485
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3486
    invoke-virtual {p0, p1}, Landroid/view/MotionEvent$PointerCoords;->copyFrom(Landroid/view/MotionEvent$PointerCoords;)V

    .line 3487
    return-void
.end method

.method public static createArray(I)[Landroid/view/MotionEvent$PointerCoords;
    .locals 3
    .param p0, "size"    # I

    .line 3491
    new-array v0, p0, [Landroid/view/MotionEvent$PointerCoords;

    .line 3492
    .local v0, "array":[Landroid/view/MotionEvent$PointerCoords;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, p0, :cond_0

    .line 3493
    new-instance v2, Landroid/view/MotionEvent$PointerCoords;

    invoke-direct {v2}, Landroid/view/MotionEvent$PointerCoords;-><init>()V

    aput-object v2, v0, v1

    .line 3492
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 3495
    .end local v1    # "i":I
    :cond_0
    return-object v0
.end method


# virtual methods
.method public clear()V
    .locals 2

    .line 3598
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Landroid/view/MotionEvent$PointerCoords;->mPackedAxisBits:J

    .line 3600
    const/4 v0, 0x0

    iput v0, p0, Landroid/view/MotionEvent$PointerCoords;->x:F

    .line 3601
    iput v0, p0, Landroid/view/MotionEvent$PointerCoords;->y:F

    .line 3602
    iput v0, p0, Landroid/view/MotionEvent$PointerCoords;->pressure:F

    .line 3603
    iput v0, p0, Landroid/view/MotionEvent$PointerCoords;->size:F

    .line 3604
    iput v0, p0, Landroid/view/MotionEvent$PointerCoords;->touchMajor:F

    .line 3605
    iput v0, p0, Landroid/view/MotionEvent$PointerCoords;->touchMinor:F

    .line 3606
    iput v0, p0, Landroid/view/MotionEvent$PointerCoords;->toolMajor:F

    .line 3607
    iput v0, p0, Landroid/view/MotionEvent$PointerCoords;->toolMinor:F

    .line 3608
    iput v0, p0, Landroid/view/MotionEvent$PointerCoords;->orientation:F

    .line 3609
    return-void
.end method

.method public copyFrom(Landroid/view/MotionEvent$PointerCoords;)V
    .locals 6
    .param p1, "other"    # Landroid/view/MotionEvent$PointerCoords;

    .line 3617
    iget-wide v0, p1, Landroid/view/MotionEvent$PointerCoords;->mPackedAxisBits:J

    .line 3618
    .local v0, "bits":J
    iput-wide v0, p0, Landroid/view/MotionEvent$PointerCoords;->mPackedAxisBits:J

    .line 3619
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-eqz v2, :cond_2

    .line 3620
    iget-object v2, p1, Landroid/view/MotionEvent$PointerCoords;->mPackedAxisValues:[F

    .line 3621
    .local v2, "otherValues":[F
    invoke-static {v0, v1}, Ljava/lang/Long;->bitCount(J)I

    move-result v3

    .line 3622
    .local v3, "count":I
    iget-object v4, p0, Landroid/view/MotionEvent$PointerCoords;->mPackedAxisValues:[F

    .line 3623
    .local v4, "values":[F
    if-eqz v4, :cond_0

    array-length v5, v4

    if-le v3, v5, :cond_1

    .line 3624
    :cond_0
    array-length v5, v2

    new-array v4, v5, [F

    .line 3625
    iput-object v4, p0, Landroid/view/MotionEvent$PointerCoords;->mPackedAxisValues:[F

    .line 3627
    :cond_1
    const/4 v5, 0x0

    invoke-static {v2, v5, v4, v5, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 3630
    .end local v2    # "otherValues":[F
    .end local v3    # "count":I
    .end local v4    # "values":[F
    :cond_2
    iget v2, p1, Landroid/view/MotionEvent$PointerCoords;->x:F

    iput v2, p0, Landroid/view/MotionEvent$PointerCoords;->x:F

    .line 3631
    iget v2, p1, Landroid/view/MotionEvent$PointerCoords;->y:F

    iput v2, p0, Landroid/view/MotionEvent$PointerCoords;->y:F

    .line 3632
    iget v2, p1, Landroid/view/MotionEvent$PointerCoords;->pressure:F

    iput v2, p0, Landroid/view/MotionEvent$PointerCoords;->pressure:F

    .line 3633
    iget v2, p1, Landroid/view/MotionEvent$PointerCoords;->size:F

    iput v2, p0, Landroid/view/MotionEvent$PointerCoords;->size:F

    .line 3634
    iget v2, p1, Landroid/view/MotionEvent$PointerCoords;->touchMajor:F

    iput v2, p0, Landroid/view/MotionEvent$PointerCoords;->touchMajor:F

    .line 3635
    iget v2, p1, Landroid/view/MotionEvent$PointerCoords;->touchMinor:F

    iput v2, p0, Landroid/view/MotionEvent$PointerCoords;->touchMinor:F

    .line 3636
    iget v2, p1, Landroid/view/MotionEvent$PointerCoords;->toolMajor:F

    iput v2, p0, Landroid/view/MotionEvent$PointerCoords;->toolMajor:F

    .line 3637
    iget v2, p1, Landroid/view/MotionEvent$PointerCoords;->toolMinor:F

    iput v2, p0, Landroid/view/MotionEvent$PointerCoords;->toolMinor:F

    .line 3638
    iget v2, p1, Landroid/view/MotionEvent$PointerCoords;->orientation:F

    iput v2, p0, Landroid/view/MotionEvent$PointerCoords;->orientation:F

    .line 3639
    return-void
.end method

.method public getAxisValue(I)F
    .locals 8
    .param p1, "axis"    # I

    .line 3651
    packed-switch p1, :pswitch_data_0

    .line 3671
    if-ltz p1, :cond_1

    const/16 v0, 0x3f

    if-gt p1, v0, :cond_1

    .line 3674
    iget-wide v0, p0, Landroid/view/MotionEvent$PointerCoords;->mPackedAxisBits:J

    .line 3675
    .local v0, "bits":J
    const-wide/high16 v2, -0x8000000000000000L

    ushr-long/2addr v2, p1

    .line 3676
    .local v2, "axisBit":J
    and-long v4, v0, v2

    const-wide/16 v6, 0x0

    cmp-long v4, v4, v6

    if-nez v4, :cond_0

    .line 3677
    const/4 v4, 0x0

    return v4

    .line 3669
    .end local v0    # "bits":J
    .end local v2    # "axisBit":J
    :pswitch_0
    iget v0, p0, Landroid/view/MotionEvent$PointerCoords;->orientation:F

    return v0

    .line 3667
    :pswitch_1
    iget v0, p0, Landroid/view/MotionEvent$PointerCoords;->toolMinor:F

    return v0

    .line 3665
    :pswitch_2
    iget v0, p0, Landroid/view/MotionEvent$PointerCoords;->toolMajor:F

    return v0

    .line 3663
    :pswitch_3
    iget v0, p0, Landroid/view/MotionEvent$PointerCoords;->touchMinor:F

    return v0

    .line 3661
    :pswitch_4
    iget v0, p0, Landroid/view/MotionEvent$PointerCoords;->touchMajor:F

    return v0

    .line 3659
    :pswitch_5
    iget v0, p0, Landroid/view/MotionEvent$PointerCoords;->size:F

    return v0

    .line 3657
    :pswitch_6
    iget v0, p0, Landroid/view/MotionEvent$PointerCoords;->pressure:F

    return v0

    .line 3655
    :pswitch_7
    iget v0, p0, Landroid/view/MotionEvent$PointerCoords;->y:F

    return v0

    .line 3653
    :pswitch_8
    iget v0, p0, Landroid/view/MotionEvent$PointerCoords;->x:F

    return v0

    .line 3679
    .restart local v0    # "bits":J
    .restart local v2    # "axisBit":J
    :cond_0
    const-wide/16 v4, -0x1

    ushr-long/2addr v4, p1

    not-long v4, v4

    and-long/2addr v4, v0

    invoke-static {v4, v5}, Ljava/lang/Long;->bitCount(J)I

    move-result v4

    .line 3680
    .local v4, "index":I
    iget-object v5, p0, Landroid/view/MotionEvent$PointerCoords;->mPackedAxisValues:[F

    aget v5, v5, v4

    return v5

    .line 3672
    .end local v0    # "bits":J
    .end local v2    # "axisBit":J
    .end local v4    # "index":I
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Axis out of range."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public setAxisValue(IF)V
    .locals 10
    .param p1, "axis"    # I
    .param p2, "value"    # F

    .line 3695
    packed-switch p1, :pswitch_data_0

    .line 3724
    if-ltz p1, :cond_4

    const/16 v0, 0x3f

    if-gt p1, v0, :cond_4

    .line 3727
    iget-wide v0, p0, Landroid/view/MotionEvent$PointerCoords;->mPackedAxisBits:J

    .line 3728
    .local v0, "bits":J
    const-wide/high16 v2, -0x8000000000000000L

    ushr-long/2addr v2, p1

    .line 3729
    .local v2, "axisBit":J
    const-wide/16 v4, -0x1

    ushr-long/2addr v4, p1

    not-long v4, v4

    and-long/2addr v4, v0

    invoke-static {v4, v5}, Ljava/lang/Long;->bitCount(J)I

    move-result v4

    .line 3730
    .local v4, "index":I
    iget-object v5, p0, Landroid/view/MotionEvent$PointerCoords;->mPackedAxisValues:[F

    .line 3731
    .local v5, "values":[F
    and-long v6, v0, v2

    const-wide/16 v8, 0x0

    cmp-long v6, v6, v8

    if-nez v6, :cond_3

    .line 3732
    if-nez v5, :cond_0

    .line 3733
    const/16 v6, 0x8

    new-array v5, v6, [F

    .line 3734
    iput-object v5, p0, Landroid/view/MotionEvent$PointerCoords;->mPackedAxisValues:[F

    goto :goto_0

    .line 3721
    .end local v0    # "bits":J
    .end local v2    # "axisBit":J
    .end local v4    # "index":I
    .end local v5    # "values":[F
    :pswitch_0
    iput p2, p0, Landroid/view/MotionEvent$PointerCoords;->orientation:F

    .line 3722
    goto :goto_1

    .line 3718
    :pswitch_1
    iput p2, p0, Landroid/view/MotionEvent$PointerCoords;->toolMinor:F

    .line 3719
    goto :goto_1

    .line 3715
    :pswitch_2
    iput p2, p0, Landroid/view/MotionEvent$PointerCoords;->toolMajor:F

    .line 3716
    goto :goto_1

    .line 3712
    :pswitch_3
    iput p2, p0, Landroid/view/MotionEvent$PointerCoords;->touchMinor:F

    .line 3713
    goto :goto_1

    .line 3709
    :pswitch_4
    iput p2, p0, Landroid/view/MotionEvent$PointerCoords;->touchMajor:F

    .line 3710
    goto :goto_1

    .line 3706
    :pswitch_5
    iput p2, p0, Landroid/view/MotionEvent$PointerCoords;->size:F

    .line 3707
    goto :goto_1

    .line 3703
    :pswitch_6
    iput p2, p0, Landroid/view/MotionEvent$PointerCoords;->pressure:F

    .line 3704
    goto :goto_1

    .line 3700
    :pswitch_7
    iput p2, p0, Landroid/view/MotionEvent$PointerCoords;->y:F

    .line 3701
    goto :goto_1

    .line 3697
    :pswitch_8
    iput p2, p0, Landroid/view/MotionEvent$PointerCoords;->x:F

    .line 3698
    goto :goto_1

    .line 3736
    .restart local v0    # "bits":J
    .restart local v2    # "axisBit":J
    .restart local v4    # "index":I
    .restart local v5    # "values":[F
    :cond_0
    invoke-static {v0, v1}, Ljava/lang/Long;->bitCount(J)I

    move-result v6

    .line 3737
    .local v6, "count":I
    array-length v7, v5

    if-ge v6, v7, :cond_1

    .line 3738
    if-eq v4, v6, :cond_2

    .line 3739
    add-int/lit8 v7, v4, 0x1

    sub-int v8, v6, v4

    invoke-static {v5, v4, v5, v7, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_0

    .line 3743
    :cond_1
    mul-int/lit8 v7, v6, 0x2

    new-array v7, v7, [F

    .line 3744
    .local v7, "newValues":[F
    const/4 v8, 0x0

    invoke-static {v5, v8, v7, v8, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 3745
    add-int/lit8 v8, v4, 0x1

    sub-int v9, v6, v4

    invoke-static {v5, v4, v7, v8, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 3747
    move-object v5, v7

    .line 3748
    iput-object v5, p0, Landroid/view/MotionEvent$PointerCoords;->mPackedAxisValues:[F

    .line 3751
    .end local v6    # "count":I
    .end local v7    # "newValues":[F
    :cond_2
    :goto_0
    or-long v6, v0, v2

    iput-wide v6, p0, Landroid/view/MotionEvent$PointerCoords;->mPackedAxisBits:J

    .line 3753
    :cond_3
    aput p2, v5, v4

    .line 3756
    .end local v0    # "bits":J
    .end local v2    # "axisBit":J
    .end local v4    # "index":I
    .end local v5    # "values":[F
    :goto_1
    return-void

    .line 3725
    :cond_4
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Axis out of range."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
