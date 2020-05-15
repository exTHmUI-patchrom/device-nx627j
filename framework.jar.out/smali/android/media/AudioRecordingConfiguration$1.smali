.class Landroid/media/AudioRecordingConfiguration$1;
.super Ljava/lang/Object;
.source "AudioRecordingConfiguration.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/AudioRecordingConfiguration;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Landroid/media/AudioRecordingConfiguration;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 224
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Landroid/media/AudioRecordingConfiguration;
    .locals 2
    .param p1, "p"    # Landroid/os/Parcel;

    .line 231
    new-instance v0, Landroid/media/AudioRecordingConfiguration;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Landroid/media/AudioRecordingConfiguration;-><init>(Landroid/os/Parcel;Landroid/media/AudioRecordingConfiguration$1;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 224
    invoke-virtual {p0, p1}, Landroid/media/AudioRecordingConfiguration$1;->createFromParcel(Landroid/os/Parcel;)Landroid/media/AudioRecordingConfiguration;

    move-result-object p1

    return-object p1
.end method

.method public newArray(I)[Landroid/media/AudioRecordingConfiguration;
    .locals 1
    .param p1, "size"    # I

    .line 234
    new-array v0, p1, [Landroid/media/AudioRecordingConfiguration;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 224
    invoke-virtual {p0, p1}, Landroid/media/AudioRecordingConfiguration$1;->newArray(I)[Landroid/media/AudioRecordingConfiguration;

    move-result-object p1

    return-object p1
.end method
