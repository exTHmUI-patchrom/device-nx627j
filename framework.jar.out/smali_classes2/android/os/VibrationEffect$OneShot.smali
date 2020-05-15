.class public Landroid/os/VibrationEffect$OneShot;
.super Landroid/os/VibrationEffect;
.source "VibrationEffect.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/VibrationEffect;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "OneShot"
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/os/VibrationEffect$OneShot;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final mAmplitude:I

.field private final mDuration:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 420
    new-instance v0, Landroid/os/VibrationEffect$OneShot$1;

    invoke-direct {v0}, Landroid/os/VibrationEffect$OneShot$1;-><init>()V

    sput-object v0, Landroid/os/VibrationEffect$OneShot;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(JI)V
    .locals 0
    .param p1, "milliseconds"    # J
    .param p3, "amplitude"    # I

    .line 331
    invoke-direct {p0}, Landroid/os/VibrationEffect;-><init>()V

    .line 332
    iput-wide p1, p0, Landroid/os/VibrationEffect$OneShot;->mDuration:J

    .line 333
    iput p3, p0, Landroid/os/VibrationEffect$OneShot;->mAmplitude:I

    .line 334
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 2
    .param p1, "in"    # Landroid/os/Parcel;

    .line 326
    invoke-direct {p0}, Landroid/os/VibrationEffect;-><init>()V

    .line 327
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/os/VibrationEffect$OneShot;->mDuration:J

    .line 328
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/os/VibrationEffect$OneShot;->mAmplitude:I

    .line 329
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 6
    .param p1, "o"    # Ljava/lang/Object;

    .line 393
    instance-of v0, p1, Landroid/os/VibrationEffect$OneShot;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 394
    return v1

    .line 396
    :cond_0
    move-object v0, p1

    check-cast v0, Landroid/os/VibrationEffect$OneShot;

    .line 397
    .local v0, "other":Landroid/os/VibrationEffect$OneShot;
    iget-wide v2, v0, Landroid/os/VibrationEffect$OneShot;->mDuration:J

    iget-wide v4, p0, Landroid/os/VibrationEffect$OneShot;->mDuration:J

    cmp-long v2, v2, v4

    if-nez v2, :cond_1

    iget v2, v0, Landroid/os/VibrationEffect$OneShot;->mAmplitude:I

    iget v3, p0, Landroid/os/VibrationEffect$OneShot;->mAmplitude:I

    if-ne v2, v3, :cond_1

    const/4 v1, 0x1

    nop

    :cond_1
    return v1
.end method

.method public getAmplitude()I
    .locals 1

    .line 342
    iget v0, p0, Landroid/os/VibrationEffect$OneShot;->mAmplitude:I

    return v0
.end method

.method public getDuration()J
    .locals 2

    .line 338
    iget-wide v0, p0, Landroid/os/VibrationEffect$OneShot;->mDuration:J

    return-wide v0
.end method

.method public hashCode()I
    .locals 3

    .line 402
    const/16 v0, 0x11

    .line 403
    .local v0, "result":I
    iget-wide v1, p0, Landroid/os/VibrationEffect$OneShot;->mDuration:J

    long-to-int v1, v1

    const/16 v2, 0x25

    mul-int/2addr v1, v2

    add-int/2addr v0, v1

    .line 404
    iget v1, p0, Landroid/os/VibrationEffect$OneShot;->mAmplitude:I

    mul-int/2addr v2, v1

    add-int/2addr v0, v2

    .line 405
    return v0
.end method

.method public resolve(I)Landroid/os/VibrationEffect$OneShot;
    .locals 3
    .param p1, "defaultAmplitude"    # I

    .line 368
    const/16 v0, 0xff

    if-gt p1, v0, :cond_1

    if-ltz p1, :cond_1

    .line 372
    iget v0, p0, Landroid/os/VibrationEffect$OneShot;->mAmplitude:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 373
    new-instance v0, Landroid/os/VibrationEffect$OneShot;

    iget-wide v1, p0, Landroid/os/VibrationEffect$OneShot;->mDuration:J

    invoke-direct {v0, v1, v2, p1}, Landroid/os/VibrationEffect$OneShot;-><init>(JI)V

    return-object v0

    .line 375
    :cond_0
    return-object p0

    .line 369
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Amplitude is negative or greater than MAX_AMPLITUDE"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public scale(FI)Landroid/os/VibrationEffect;
    .locals 4
    .param p1, "gamma"    # F
    .param p2, "maxAmplitude"    # I

    .line 354
    iget v0, p0, Landroid/os/VibrationEffect$OneShot;->mAmplitude:I

    invoke-static {v0, p1, p2}, Landroid/os/VibrationEffect$OneShot;->scale(IFI)I

    move-result v0

    .line 355
    .local v0, "newAmplitude":I
    new-instance v1, Landroid/os/VibrationEffect$OneShot;

    iget-wide v2, p0, Landroid/os/VibrationEffect$OneShot;->mDuration:J

    invoke-direct {v1, v2, v3, v0}, Landroid/os/VibrationEffect$OneShot;-><init>(JI)V

    return-object v1
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 410
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "OneShot{mDuration="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Landroid/os/VibrationEffect$OneShot;->mDuration:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", mAmplitude="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/os/VibrationEffect$OneShot;->mAmplitude:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public validate()V
    .locals 4

    .line 380
    iget v0, p0, Landroid/os/VibrationEffect$OneShot;->mAmplitude:I

    const/4 v1, -0x1

    if-lt v0, v1, :cond_1

    iget v0, p0, Landroid/os/VibrationEffect$OneShot;->mAmplitude:I

    if-eqz v0, :cond_1

    iget v0, p0, Landroid/os/VibrationEffect$OneShot;->mAmplitude:I

    const/16 v1, 0xff

    if-gt v0, v1, :cond_1

    .line 385
    iget-wide v0, p0, Landroid/os/VibrationEffect$OneShot;->mDuration:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    .line 389
    return-void

    .line 386
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "duration must be positive (duration="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Landroid/os/VibrationEffect$OneShot;->mDuration:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 381
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "amplitude must either be DEFAULT_AMPLITUDE, or between 1 and 255 inclusive (amplitude="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Landroid/os/VibrationEffect$OneShot;->mAmplitude:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2
    .param p1, "out"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 415
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 416
    iget-wide v0, p0, Landroid/os/VibrationEffect$OneShot;->mDuration:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 417
    iget v0, p0, Landroid/os/VibrationEffect$OneShot;->mAmplitude:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 418
    return-void
.end method
