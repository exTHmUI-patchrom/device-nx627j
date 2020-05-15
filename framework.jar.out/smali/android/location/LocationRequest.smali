.class public final Landroid/location/LocationRequest;
.super Ljava/lang/Object;
.source "LocationRequest.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation


# static fields
.field public static final ACCURACY_BLOCK:I = 0x66

.field public static final ACCURACY_CITY:I = 0x68

.field public static final ACCURACY_FINE:I = 0x64

.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/location/LocationRequest;",
            ">;"
        }
    .end annotation
.end field

.field private static final FASTEST_INTERVAL_FACTOR:D = 6.0

.field public static final POWER_HIGH:I = 0xcb

.field public static final POWER_LOW:I = 0xc9

.field public static final POWER_NONE:I = 0xc8


# instance fields
.field private mExpireAt:J

.field private mExplicitFastestInterval:Z

.field private mFastestInterval:J

.field private mHideFromAppOps:Z

.field private mInterval:J

.field private mLowPowerMode:Z

.field private mNumUpdates:I

.field private mProvider:Ljava/lang/String;

.field private mQuality:I

.field private mSmallestDisplacement:F

.field private mWorkSource:Landroid/os/WorkSource;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 627
    new-instance v0, Landroid/location/LocationRequest$1;

    invoke-direct {v0}, Landroid/location/LocationRequest$1;-><init>()V

    sput-object v0, Landroid/location/LocationRequest;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 4

    .line 236
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 144
    const/16 v0, 0xc9

    iput v0, p0, Landroid/location/LocationRequest;->mQuality:I

    .line 145
    const-wide/32 v0, 0x36ee80

    iput-wide v0, p0, Landroid/location/LocationRequest;->mInterval:J

    .line 146
    iget-wide v0, p0, Landroid/location/LocationRequest;->mInterval:J

    long-to-double v0, v0

    const-wide/high16 v2, 0x4018000000000000L    # 6.0

    div-double/2addr v0, v2

    double-to-long v0, v0

    iput-wide v0, p0, Landroid/location/LocationRequest;->mFastestInterval:J

    .line 147
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/location/LocationRequest;->mExplicitFastestInterval:Z

    .line 148
    const-wide v1, 0x7fffffffffffffffL

    iput-wide v1, p0, Landroid/location/LocationRequest;->mExpireAt:J

    .line 149
    const v1, 0x7fffffff

    iput v1, p0, Landroid/location/LocationRequest;->mNumUpdates:I

    .line 150
    const/4 v1, 0x0

    iput v1, p0, Landroid/location/LocationRequest;->mSmallestDisplacement:F

    .line 151
    const/4 v1, 0x0

    iput-object v1, p0, Landroid/location/LocationRequest;->mWorkSource:Landroid/os/WorkSource;

    .line 152
    iput-boolean v0, p0, Landroid/location/LocationRequest;->mHideFromAppOps:Z

    .line 154
    const-string v1, "fused"

    iput-object v1, p0, Landroid/location/LocationRequest;->mProvider:Ljava/lang/String;

    .line 158
    iput-boolean v0, p0, Landroid/location/LocationRequest;->mLowPowerMode:Z

    .line 237
    return-void
.end method

.method public constructor <init>(Landroid/location/LocationRequest;)V
    .locals 4
    .param p1, "src"    # Landroid/location/LocationRequest;

    .line 240
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 144
    const/16 v0, 0xc9

    iput v0, p0, Landroid/location/LocationRequest;->mQuality:I

    .line 145
    const-wide/32 v0, 0x36ee80

    iput-wide v0, p0, Landroid/location/LocationRequest;->mInterval:J

    .line 146
    iget-wide v0, p0, Landroid/location/LocationRequest;->mInterval:J

    long-to-double v0, v0

    const-wide/high16 v2, 0x4018000000000000L    # 6.0

    div-double/2addr v0, v2

    double-to-long v0, v0

    iput-wide v0, p0, Landroid/location/LocationRequest;->mFastestInterval:J

    .line 147
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/location/LocationRequest;->mExplicitFastestInterval:Z

    .line 148
    const-wide v1, 0x7fffffffffffffffL

    iput-wide v1, p0, Landroid/location/LocationRequest;->mExpireAt:J

    .line 149
    const v1, 0x7fffffff

    iput v1, p0, Landroid/location/LocationRequest;->mNumUpdates:I

    .line 150
    const/4 v1, 0x0

    iput v1, p0, Landroid/location/LocationRequest;->mSmallestDisplacement:F

    .line 151
    const/4 v1, 0x0

    iput-object v1, p0, Landroid/location/LocationRequest;->mWorkSource:Landroid/os/WorkSource;

    .line 152
    iput-boolean v0, p0, Landroid/location/LocationRequest;->mHideFromAppOps:Z

    .line 154
    const-string v1, "fused"

    iput-object v1, p0, Landroid/location/LocationRequest;->mProvider:Ljava/lang/String;

    .line 158
    iput-boolean v0, p0, Landroid/location/LocationRequest;->mLowPowerMode:Z

    .line 241
    iget v0, p1, Landroid/location/LocationRequest;->mQuality:I

    iput v0, p0, Landroid/location/LocationRequest;->mQuality:I

    .line 242
    iget-wide v0, p1, Landroid/location/LocationRequest;->mInterval:J

    iput-wide v0, p0, Landroid/location/LocationRequest;->mInterval:J

    .line 243
    iget-wide v0, p1, Landroid/location/LocationRequest;->mFastestInterval:J

    iput-wide v0, p0, Landroid/location/LocationRequest;->mFastestInterval:J

    .line 244
    iget-boolean v0, p1, Landroid/location/LocationRequest;->mExplicitFastestInterval:Z

    iput-boolean v0, p0, Landroid/location/LocationRequest;->mExplicitFastestInterval:Z

    .line 245
    iget-wide v0, p1, Landroid/location/LocationRequest;->mExpireAt:J

    iput-wide v0, p0, Landroid/location/LocationRequest;->mExpireAt:J

    .line 246
    iget v0, p1, Landroid/location/LocationRequest;->mNumUpdates:I

    iput v0, p0, Landroid/location/LocationRequest;->mNumUpdates:I

    .line 247
    iget v0, p1, Landroid/location/LocationRequest;->mSmallestDisplacement:F

    iput v0, p0, Landroid/location/LocationRequest;->mSmallestDisplacement:F

    .line 248
    iget-object v0, p1, Landroid/location/LocationRequest;->mProvider:Ljava/lang/String;

    iput-object v0, p0, Landroid/location/LocationRequest;->mProvider:Ljava/lang/String;

    .line 249
    iget-object v0, p1, Landroid/location/LocationRequest;->mWorkSource:Landroid/os/WorkSource;

    iput-object v0, p0, Landroid/location/LocationRequest;->mWorkSource:Landroid/os/WorkSource;

    .line 250
    iget-boolean v0, p1, Landroid/location/LocationRequest;->mHideFromAppOps:Z

    iput-boolean v0, p0, Landroid/location/LocationRequest;->mHideFromAppOps:Z

    .line 251
    iget-boolean v0, p1, Landroid/location/LocationRequest;->mLowPowerMode:Z

    iput-boolean v0, p0, Landroid/location/LocationRequest;->mLowPowerMode:Z

    .line 252
    return-void
.end method

.method private static checkDisplacement(F)V
    .locals 3
    .param p0, "meters"    # F

    .line 616
    const/4 v0, 0x0

    cmpg-float v0, p0, v0

    if-ltz v0, :cond_0

    .line 619
    return-void

    .line 617
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "invalid displacement: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static checkInterval(J)V
    .locals 3
    .param p0, "millis"    # J

    .line 596
    const-wide/16 v0, 0x0

    cmp-long v0, p0, v0

    if-ltz v0, :cond_0

    .line 599
    return-void

    .line 597
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "invalid interval: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static checkProvider(Ljava/lang/String;)V
    .locals 3
    .param p0, "name"    # Ljava/lang/String;

    .line 622
    if-eqz p0, :cond_0

    .line 625
    return-void

    .line 623
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "invalid provider: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static checkQuality(I)V
    .locals 3
    .param p0, "quality"    # I

    .line 602
    const/16 v0, 0x64

    if-eq p0, v0, :cond_0

    const/16 v0, 0x66

    if-eq p0, v0, :cond_0

    const/16 v0, 0x68

    if-eq p0, v0, :cond_0

    const/16 v0, 0xcb

    if-eq p0, v0, :cond_0

    packed-switch p0, :pswitch_data_0

    .line 611
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "invalid quality: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 609
    :cond_0
    :pswitch_0
    nop

    .line 613
    return-void

    :pswitch_data_0
    .packed-switch 0xc8
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public static create()Landroid/location/LocationRequest;
    .locals 1

    .line 170
    new-instance v0, Landroid/location/LocationRequest;

    invoke-direct {v0}, Landroid/location/LocationRequest;-><init>()V

    .line 171
    .local v0, "request":Landroid/location/LocationRequest;
    return-object v0
.end method

.method public static createFromDeprecatedCriteria(Landroid/location/Criteria;JFZ)Landroid/location/LocationRequest;
    .locals 3
    .param p0, "criteria"    # Landroid/location/Criteria;
    .param p1, "minTime"    # J
    .param p3, "minDistance"    # F
    .param p4, "singleShot"    # Z
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 204
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-gez v0, :cond_0

    const-wide/16 p1, 0x0

    .line 205
    :cond_0
    const/4 v0, 0x0

    cmpg-float v0, p3, v0

    if-gez v0, :cond_1

    const/4 p3, 0x0

    .line 208
    :cond_1
    invoke-virtual {p0}, Landroid/location/Criteria;->getAccuracy()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 216
    invoke-virtual {p0}, Landroid/location/Criteria;->getPowerRequirement()I

    move-result v0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_2

    .line 221
    const/16 v0, 0xc9

    goto :goto_0

    .line 210
    :pswitch_0
    const/16 v0, 0x66

    .line 211
    .local v0, "quality":I
    goto :goto_0

    .line 213
    .end local v0    # "quality":I
    :pswitch_1
    const/16 v0, 0x64

    .line 214
    .restart local v0    # "quality":I
    goto :goto_0

    .line 218
    .end local v0    # "quality":I
    :cond_2
    const/16 v0, 0xcb

    .line 219
    .restart local v0    # "quality":I
    nop

    .line 221
    :goto_0
    nop

    .line 226
    new-instance v1, Landroid/location/LocationRequest;

    invoke-direct {v1}, Landroid/location/LocationRequest;-><init>()V

    .line 227
    invoke-virtual {v1, v0}, Landroid/location/LocationRequest;->setQuality(I)Landroid/location/LocationRequest;

    move-result-object v1

    .line 228
    invoke-virtual {v1, p1, p2}, Landroid/location/LocationRequest;->setInterval(J)Landroid/location/LocationRequest;

    move-result-object v1

    .line 229
    invoke-virtual {v1, p1, p2}, Landroid/location/LocationRequest;->setFastestInterval(J)Landroid/location/LocationRequest;

    move-result-object v1

    .line 230
    invoke-virtual {v1, p3}, Landroid/location/LocationRequest;->setSmallestDisplacement(F)Landroid/location/LocationRequest;

    move-result-object v1

    .line 231
    .local v1, "request":Landroid/location/LocationRequest;
    if-eqz p4, :cond_3

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/location/LocationRequest;->setNumUpdates(I)Landroid/location/LocationRequest;

    .line 232
    :cond_3
    return-object v1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static createFromDeprecatedProvider(Ljava/lang/String;JFZ)Landroid/location/LocationRequest;
    .locals 3
    .param p0, "provider"    # Ljava/lang/String;
    .param p1, "minTime"    # J
    .param p3, "minDistance"    # F
    .param p4, "singleShot"    # Z
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 178
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-gez v0, :cond_0

    const-wide/16 p1, 0x0

    .line 179
    :cond_0
    const/4 v0, 0x0

    cmpg-float v0, p3, v0

    if-gez v0, :cond_1

    const/4 p3, 0x0

    .line 182
    :cond_1
    const-string/jumbo v0, "passive"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 183
    const/16 v0, 0xc8

    .line 183
    .local v0, "quality":I
    :goto_0
    goto :goto_1

    .line 184
    .end local v0    # "quality":I
    :cond_2
    const-string v0, "gps"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 185
    const/16 v0, 0x64

    goto :goto_0

    .line 187
    :cond_3
    const/16 v0, 0xc9

    .line 190
    .restart local v0    # "quality":I
    :goto_1
    new-instance v1, Landroid/location/LocationRequest;

    invoke-direct {v1}, Landroid/location/LocationRequest;-><init>()V

    .line 191
    invoke-virtual {v1, p0}, Landroid/location/LocationRequest;->setProvider(Ljava/lang/String;)Landroid/location/LocationRequest;

    move-result-object v1

    .line 192
    invoke-virtual {v1, v0}, Landroid/location/LocationRequest;->setQuality(I)Landroid/location/LocationRequest;

    move-result-object v1

    .line 193
    invoke-virtual {v1, p1, p2}, Landroid/location/LocationRequest;->setInterval(J)Landroid/location/LocationRequest;

    move-result-object v1

    .line 194
    invoke-virtual {v1, p1, p2}, Landroid/location/LocationRequest;->setFastestInterval(J)Landroid/location/LocationRequest;

    move-result-object v1

    .line 195
    invoke-virtual {v1, p3}, Landroid/location/LocationRequest;->setSmallestDisplacement(F)Landroid/location/LocationRequest;

    move-result-object v1

    .line 196
    .local v1, "request":Landroid/location/LocationRequest;
    if-eqz p4, :cond_4

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/location/LocationRequest;->setNumUpdates(I)Landroid/location/LocationRequest;

    .line 197
    :cond_4
    return-object v1
.end method

.method public static qualityToString(I)Ljava/lang/String;
    .locals 1
    .param p0, "quality"    # I

    .line 674
    const/16 v0, 0x64

    if-eq p0, v0, :cond_3

    const/16 v0, 0x66

    if-eq p0, v0, :cond_2

    const/16 v0, 0x68

    if-eq p0, v0, :cond_1

    const/16 v0, 0xcb

    if-eq p0, v0, :cond_0

    packed-switch p0, :pswitch_data_0

    .line 688
    const-string v0, "???"

    return-object v0

    .line 684
    :pswitch_0
    const-string v0, "POWER_LOW"

    return-object v0

    .line 682
    :pswitch_1
    const-string v0, "POWER_NONE"

    return-object v0

    .line 686
    :cond_0
    const-string v0, "POWER_HIGH"

    return-object v0

    .line 680
    :cond_1
    const-string v0, "ACCURACY_CITY"

    return-object v0

    .line 678
    :cond_2
    const-string v0, "ACCURACY_BLOCK"

    return-object v0

    .line 676
    :cond_3
    const-string v0, "ACCURACY_FINE"

    return-object v0

    :pswitch_data_0
    .packed-switch 0xc8
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public decrementNumUpdates()V
    .locals 2

    .line 512
    iget v0, p0, Landroid/location/LocationRequest;->mNumUpdates:I

    const v1, 0x7fffffff

    if-eq v0, v1, :cond_0

    .line 513
    iget v0, p0, Landroid/location/LocationRequest;->mNumUpdates:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Landroid/location/LocationRequest;->mNumUpdates:I

    .line 515
    :cond_0
    iget v0, p0, Landroid/location/LocationRequest;->mNumUpdates:I

    if-gez v0, :cond_1

    .line 516
    const/4 v0, 0x0

    iput v0, p0, Landroid/location/LocationRequest;->mNumUpdates:I

    .line 518
    :cond_1
    return-void
.end method

.method public describeContents()I
    .locals 1

    .line 655
    const/4 v0, 0x0

    return v0
.end method

.method public getExpireAt()J
    .locals 2

    .line 473
    iget-wide v0, p0, Landroid/location/LocationRequest;->mExpireAt:J

    return-wide v0
.end method

.method public getFastestInterval()J
    .locals 2

    .line 411
    iget-wide v0, p0, Landroid/location/LocationRequest;->mFastestInterval:J

    return-wide v0
.end method

.method public getHideFromAppOps()Z
    .locals 1
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 592
    iget-boolean v0, p0, Landroid/location/LocationRequest;->mHideFromAppOps:Z

    return v0
.end method

.method public getInterval()J
    .locals 2

    .line 333
    iget-wide v0, p0, Landroid/location/LocationRequest;->mInterval:J

    return-wide v0
.end method

.method public getNumUpdates()I
    .locals 1

    .line 507
    iget v0, p0, Landroid/location/LocationRequest;->mNumUpdates:I

    return v0
.end method

.method public getProvider()Ljava/lang/String;
    .locals 1
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 532
    iget-object v0, p0, Landroid/location/LocationRequest;->mProvider:Ljava/lang/String;

    return-object v0
.end method

.method public getQuality()I
    .locals 1

    .line 287
    iget v0, p0, Landroid/location/LocationRequest;->mQuality:I

    return v0
.end method

.method public getSmallestDisplacement()F
    .locals 1
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 546
    iget v0, p0, Landroid/location/LocationRequest;->mSmallestDisplacement:F

    return v0
.end method

.method public getWorkSource()Landroid/os/WorkSource;
    .locals 1
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 567
    iget-object v0, p0, Landroid/location/LocationRequest;->mWorkSource:Landroid/os/WorkSource;

    return-object v0
.end method

.method public isLowPowerMode()Z
    .locals 1
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 362
    iget-boolean v0, p0, Landroid/location/LocationRequest;->mLowPowerMode:Z

    return v0
.end method

.method public setExpireAt(J)Landroid/location/LocationRequest;
    .locals 4
    .param p1, "millis"    # J

    .line 459
    iput-wide p1, p0, Landroid/location/LocationRequest;->mExpireAt:J

    .line 460
    iget-wide v0, p0, Landroid/location/LocationRequest;->mExpireAt:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-gez v0, :cond_0

    iput-wide v2, p0, Landroid/location/LocationRequest;->mExpireAt:J

    .line 461
    :cond_0
    return-object p0
.end method

.method public setExpireIn(J)Landroid/location/LocationRequest;
    .locals 6
    .param p1, "millis"    # J

    .line 431
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    .line 434
    .local v0, "elapsedRealtime":J
    const-wide v2, 0x7fffffffffffffffL

    sub-long v4, v2, v0

    cmp-long v4, p1, v4

    if-lez v4, :cond_0

    .line 435
    iput-wide v2, p0, Landroid/location/LocationRequest;->mExpireAt:J

    goto :goto_0

    .line 437
    :cond_0
    add-long v2, p1, v0

    iput-wide v2, p0, Landroid/location/LocationRequest;->mExpireAt:J

    .line 440
    :goto_0
    iget-wide v2, p0, Landroid/location/LocationRequest;->mExpireAt:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-gez v2, :cond_1

    iput-wide v4, p0, Landroid/location/LocationRequest;->mExpireAt:J

    .line 441
    :cond_1
    return-object p0
.end method

.method public setFastestInterval(J)Landroid/location/LocationRequest;
    .locals 1
    .param p1, "millis"    # J

    .line 395
    invoke-static {p1, p2}, Landroid/location/LocationRequest;->checkInterval(J)V

    .line 396
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/location/LocationRequest;->mExplicitFastestInterval:Z

    .line 397
    iput-wide p1, p0, Landroid/location/LocationRequest;->mFastestInterval:J

    .line 398
    return-object p0
.end method

.method public setHideFromAppOps(Z)V
    .locals 0
    .param p1, "hideFromAppOps"    # Z
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 586
    iput-boolean p1, p0, Landroid/location/LocationRequest;->mHideFromAppOps:Z

    .line 587
    return-void
.end method

.method public setInterval(J)Landroid/location/LocationRequest;
    .locals 4
    .param p1, "millis"    # J

    .line 319
    invoke-static {p1, p2}, Landroid/location/LocationRequest;->checkInterval(J)V

    .line 320
    iput-wide p1, p0, Landroid/location/LocationRequest;->mInterval:J

    .line 321
    iget-boolean v0, p0, Landroid/location/LocationRequest;->mExplicitFastestInterval:Z

    if-nez v0, :cond_0

    .line 322
    iget-wide v0, p0, Landroid/location/LocationRequest;->mInterval:J

    long-to-double v0, v0

    const-wide/high16 v2, 0x4018000000000000L    # 6.0

    div-double/2addr v0, v2

    double-to-long v0, v0

    iput-wide v0, p0, Landroid/location/LocationRequest;->mFastestInterval:J

    .line 324
    :cond_0
    return-object p0
.end method

.method public setLowPowerMode(Z)Landroid/location/LocationRequest;
    .locals 0
    .param p1, "enabled"    # Z
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 351
    iput-boolean p1, p0, Landroid/location/LocationRequest;->mLowPowerMode:Z

    .line 352
    return-object p0
.end method

.method public setNumUpdates(I)Landroid/location/LocationRequest;
    .locals 3
    .param p1, "numUpdates"    # I

    .line 490
    if-lez p1, :cond_0

    .line 494
    iput p1, p0, Landroid/location/LocationRequest;->mNumUpdates:I

    .line 495
    return-object p0

    .line 491
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "invalid numUpdates: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setProvider(Ljava/lang/String;)Landroid/location/LocationRequest;
    .locals 0
    .param p1, "provider"    # Ljava/lang/String;
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 524
    invoke-static {p1}, Landroid/location/LocationRequest;->checkProvider(Ljava/lang/String;)V

    .line 525
    iput-object p1, p0, Landroid/location/LocationRequest;->mProvider:Ljava/lang/String;

    .line 526
    return-object p0
.end method

.method public setQuality(I)Landroid/location/LocationRequest;
    .locals 0
    .param p1, "quality"    # I

    .line 276
    invoke-static {p1}, Landroid/location/LocationRequest;->checkQuality(I)V

    .line 277
    iput p1, p0, Landroid/location/LocationRequest;->mQuality:I

    .line 278
    return-object p0
.end method

.method public setSmallestDisplacement(F)Landroid/location/LocationRequest;
    .locals 0
    .param p1, "meters"    # F
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 538
    invoke-static {p1}, Landroid/location/LocationRequest;->checkDisplacement(F)V

    .line 539
    iput p1, p0, Landroid/location/LocationRequest;->mSmallestDisplacement:F

    .line 540
    return-object p0
.end method

.method public setWorkSource(Landroid/os/WorkSource;)V
    .locals 0
    .param p1, "workSource"    # Landroid/os/WorkSource;
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 561
    iput-object p1, p0, Landroid/location/LocationRequest;->mWorkSource:Landroid/os/WorkSource;

    .line 562
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    .line 694
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 695
    .local v0, "s":Ljava/lang/StringBuilder;
    const-string v1, "Request["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/location/LocationRequest;->mQuality:I

    invoke-static {v1}, Landroid/location/LocationRequest;->qualityToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 696
    iget-object v1, p0, Landroid/location/LocationRequest;->mProvider:Ljava/lang/String;

    if-eqz v1, :cond_0

    const/16 v1, 0x20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroid/location/LocationRequest;->mProvider:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 697
    :cond_0
    iget v1, p0, Landroid/location/LocationRequest;->mQuality:I

    const/16 v2, 0xc8

    if-eq v1, v2, :cond_1

    .line 698
    const-string v1, " requested="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 699
    iget-wide v1, p0, Landroid/location/LocationRequest;->mInterval:J

    invoke-static {v1, v2, v0}, Landroid/util/TimeUtils;->formatDuration(JLjava/lang/StringBuilder;)V

    .line 701
    :cond_1
    const-string v1, " fastest="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 702
    iget-wide v1, p0, Landroid/location/LocationRequest;->mFastestInterval:J

    invoke-static {v1, v2, v0}, Landroid/util/TimeUtils;->formatDuration(JLjava/lang/StringBuilder;)V

    .line 703
    iget-wide v1, p0, Landroid/location/LocationRequest;->mExpireAt:J

    const-wide v3, 0x7fffffffffffffffL

    cmp-long v1, v1, v3

    if-eqz v1, :cond_2

    .line 704
    iget-wide v1, p0, Landroid/location/LocationRequest;->mExpireAt:J

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3

    sub-long/2addr v1, v3

    .line 705
    .local v1, "expireIn":J
    const-string v3, " expireIn="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 706
    invoke-static {v1, v2, v0}, Landroid/util/TimeUtils;->formatDuration(JLjava/lang/StringBuilder;)V

    .line 708
    .end local v1    # "expireIn":J
    :cond_2
    iget v1, p0, Landroid/location/LocationRequest;->mNumUpdates:I

    const v2, 0x7fffffff

    if-eq v1, v2, :cond_3

    .line 709
    const-string v1, " num="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/location/LocationRequest;->mNumUpdates:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 711
    :cond_3
    const-string v1, " lowPowerMode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Landroid/location/LocationRequest;->mLowPowerMode:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 712
    const/16 v1, 0x5d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 713
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2
    .param p1, "parcel"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 660
    iget v0, p0, Landroid/location/LocationRequest;->mQuality:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 661
    iget-wide v0, p0, Landroid/location/LocationRequest;->mFastestInterval:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 662
    iget-wide v0, p0, Landroid/location/LocationRequest;->mInterval:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 663
    iget-wide v0, p0, Landroid/location/LocationRequest;->mExpireAt:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 664
    iget v0, p0, Landroid/location/LocationRequest;->mNumUpdates:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 665
    iget v0, p0, Landroid/location/LocationRequest;->mSmallestDisplacement:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    .line 666
    iget-boolean v0, p0, Landroid/location/LocationRequest;->mHideFromAppOps:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 667
    iget-boolean v0, p0, Landroid/location/LocationRequest;->mLowPowerMode:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 668
    iget-object v0, p0, Landroid/location/LocationRequest;->mProvider:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 669
    iget-object v0, p0, Landroid/location/LocationRequest;->mWorkSource:Landroid/os/WorkSource;

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 670
    return-void
.end method
