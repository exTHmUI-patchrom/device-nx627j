.class public Landroid/accessibilityservice/GestureDescription$TouchPoint;
.super Ljava/lang/Object;
.source "GestureDescription.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/accessibilityservice/GestureDescription;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TouchPoint"
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/accessibilityservice/GestureDescription$TouchPoint;",
            ">;"
        }
    .end annotation
.end field

.field private static final FLAG_IS_END_OF_PATH:I = 0x2

.field private static final FLAG_IS_START_OF_PATH:I = 0x1


# instance fields
.field public mContinuedStrokeId:I

.field public mIsEndOfPath:Z

.field public mIsStartOfPath:Z

.field public mStrokeId:I

.field public mX:F

.field public mY:F


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 458
    new-instance v0, Landroid/accessibilityservice/GestureDescription$TouchPoint$1;

    invoke-direct {v0}, Landroid/accessibilityservice/GestureDescription$TouchPoint$1;-><init>()V

    sput-object v0, Landroid/accessibilityservice/GestureDescription$TouchPoint;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 404
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 405
    return-void
.end method

.method public constructor <init>(Landroid/accessibilityservice/GestureDescription$TouchPoint;)V
    .locals 0
    .param p1, "pointToCopy"    # Landroid/accessibilityservice/GestureDescription$TouchPoint;

    .line 407
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 408
    invoke-virtual {p0, p1}, Landroid/accessibilityservice/GestureDescription$TouchPoint;->copyFrom(Landroid/accessibilityservice/GestureDescription$TouchPoint;)V

    .line 409
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 4
    .param p1, "parcel"    # Landroid/os/Parcel;

    .line 411
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 412
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/accessibilityservice/GestureDescription$TouchPoint;->mStrokeId:I

    .line 413
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/accessibilityservice/GestureDescription$TouchPoint;->mContinuedStrokeId:I

    .line 414
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 415
    .local v0, "startEnd":I
    and-int/lit8 v1, v0, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_0

    move v1, v3

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    iput-boolean v1, p0, Landroid/accessibilityservice/GestureDescription$TouchPoint;->mIsStartOfPath:Z

    .line 416
    and-int/lit8 v1, v0, 0x2

    if-eqz v1, :cond_1

    move v2, v3

    nop

    :cond_1
    iput-boolean v2, p0, Landroid/accessibilityservice/GestureDescription$TouchPoint;->mIsEndOfPath:Z

    .line 417
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v1

    iput v1, p0, Landroid/accessibilityservice/GestureDescription$TouchPoint;->mX:F

    .line 418
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v1

    iput v1, p0, Landroid/accessibilityservice/GestureDescription$TouchPoint;->mY:F

    .line 419
    return-void
.end method


# virtual methods
.method public copyFrom(Landroid/accessibilityservice/GestureDescription$TouchPoint;)V
    .locals 1
    .param p1, "other"    # Landroid/accessibilityservice/GestureDescription$TouchPoint;

    .line 422
    iget v0, p1, Landroid/accessibilityservice/GestureDescription$TouchPoint;->mStrokeId:I

    iput v0, p0, Landroid/accessibilityservice/GestureDescription$TouchPoint;->mStrokeId:I

    .line 423
    iget v0, p1, Landroid/accessibilityservice/GestureDescription$TouchPoint;->mContinuedStrokeId:I

    iput v0, p0, Landroid/accessibilityservice/GestureDescription$TouchPoint;->mContinuedStrokeId:I

    .line 424
    iget-boolean v0, p1, Landroid/accessibilityservice/GestureDescription$TouchPoint;->mIsStartOfPath:Z

    iput-boolean v0, p0, Landroid/accessibilityservice/GestureDescription$TouchPoint;->mIsStartOfPath:Z

    .line 425
    iget-boolean v0, p1, Landroid/accessibilityservice/GestureDescription$TouchPoint;->mIsEndOfPath:Z

    iput-boolean v0, p0, Landroid/accessibilityservice/GestureDescription$TouchPoint;->mIsEndOfPath:Z

    .line 426
    iget v0, p1, Landroid/accessibilityservice/GestureDescription$TouchPoint;->mX:F

    iput v0, p0, Landroid/accessibilityservice/GestureDescription$TouchPoint;->mX:F

    .line 427
    iget v0, p1, Landroid/accessibilityservice/GestureDescription$TouchPoint;->mY:F

    iput v0, p0, Landroid/accessibilityservice/GestureDescription$TouchPoint;->mY:F

    .line 428
    return-void
.end method

.method public describeContents()I
    .locals 1

    .line 444
    const/4 v0, 0x0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 432
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "TouchPoint{mStrokeId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/accessibilityservice/GestureDescription$TouchPoint;->mStrokeId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mContinuedStrokeId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/accessibilityservice/GestureDescription$TouchPoint;->mContinuedStrokeId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mIsStartOfPath="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Landroid/accessibilityservice/GestureDescription$TouchPoint;->mIsStartOfPath:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", mIsEndOfPath="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Landroid/accessibilityservice/GestureDescription$TouchPoint;->mIsEndOfPath:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", mX="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/accessibilityservice/GestureDescription$TouchPoint;->mX:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", mY="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/accessibilityservice/GestureDescription$TouchPoint;->mY:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 449
    iget v0, p0, Landroid/accessibilityservice/GestureDescription$TouchPoint;->mStrokeId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 450
    iget v0, p0, Landroid/accessibilityservice/GestureDescription$TouchPoint;->mContinuedStrokeId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 451
    iget-boolean v0, p0, Landroid/accessibilityservice/GestureDescription$TouchPoint;->mIsStartOfPath:Z

    .line 452
    .local v0, "startEnd":I
    iget-boolean v1, p0, Landroid/accessibilityservice/GestureDescription$TouchPoint;->mIsEndOfPath:Z

    if-eqz v1, :cond_0

    const/4 v1, 0x2

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    or-int/2addr v0, v1

    .line 453
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 454
    iget v1, p0, Landroid/accessibilityservice/GestureDescription$TouchPoint;->mX:F

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeFloat(F)V

    .line 455
    iget v1, p0, Landroid/accessibilityservice/GestureDescription$TouchPoint;->mY:F

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeFloat(F)V

    .line 456
    return-void
.end method
