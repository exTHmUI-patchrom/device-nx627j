.class Landroid/os/VibrationEffect$1;
.super Ljava/lang/Object;
.source "VibrationEffect.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/VibrationEffect;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Landroid/os/VibrationEffect;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 753
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Landroid/os/VibrationEffect;
    .locals 3
    .param p1, "in"    # Landroid/os/Parcel;

    .line 756
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 757
    .local v0, "token":I
    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 758
    new-instance v1, Landroid/os/VibrationEffect$OneShot;

    invoke-direct {v1, p1}, Landroid/os/VibrationEffect$OneShot;-><init>(Landroid/os/Parcel;)V

    return-object v1

    .line 759
    :cond_0
    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 760
    new-instance v1, Landroid/os/VibrationEffect$Waveform;

    invoke-direct {v1, p1}, Landroid/os/VibrationEffect$Waveform;-><init>(Landroid/os/Parcel;)V

    return-object v1

    .line 761
    :cond_1
    const/4 v1, 0x3

    if-ne v0, v1, :cond_2

    .line 762
    new-instance v1, Landroid/os/VibrationEffect$Prebaked;

    invoke-direct {v1, p1}, Landroid/os/VibrationEffect$Prebaked;-><init>(Landroid/os/Parcel;)V

    return-object v1

    .line 764
    :cond_2
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Unexpected vibration event type token in parcel."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 753
    invoke-virtual {p0, p1}, Landroid/os/VibrationEffect$1;->createFromParcel(Landroid/os/Parcel;)Landroid/os/VibrationEffect;

    move-result-object p1

    return-object p1
.end method

.method public newArray(I)[Landroid/os/VibrationEffect;
    .locals 1
    .param p1, "size"    # I

    .line 770
    new-array v0, p1, [Landroid/os/VibrationEffect;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 753
    invoke-virtual {p0, p1}, Landroid/os/VibrationEffect$1;->newArray(I)[Landroid/os/VibrationEffect;

    move-result-object p1

    return-object p1
.end method
