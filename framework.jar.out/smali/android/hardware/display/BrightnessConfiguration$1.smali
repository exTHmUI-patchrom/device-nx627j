.class Landroid/hardware/display/BrightnessConfiguration$1;
.super Ljava/lang/Object;
.source "BrightnessConfiguration.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/display/BrightnessConfiguration;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Landroid/hardware/display/BrightnessConfiguration;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 121
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Landroid/hardware/display/BrightnessConfiguration;
    .locals 4
    .param p1, "in"    # Landroid/os/Parcel;

    .line 123
    invoke-virtual {p1}, Landroid/os/Parcel;->createFloatArray()[F

    move-result-object v0

    .line 124
    .local v0, "lux":[F
    invoke-virtual {p1}, Landroid/os/Parcel;->createFloatArray()[F

    move-result-object v1

    .line 125
    .local v1, "nits":[F
    new-instance v2, Landroid/hardware/display/BrightnessConfiguration$Builder;

    invoke-direct {v2, v0, v1}, Landroid/hardware/display/BrightnessConfiguration$Builder;-><init>([F[F)V

    .line 126
    .local v2, "builder":Landroid/hardware/display/BrightnessConfiguration$Builder;
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/hardware/display/BrightnessConfiguration$Builder;->setDescription(Ljava/lang/String;)Landroid/hardware/display/BrightnessConfiguration$Builder;

    .line 127
    invoke-virtual {v2}, Landroid/hardware/display/BrightnessConfiguration$Builder;->build()Landroid/hardware/display/BrightnessConfiguration;

    move-result-object v3

    return-object v3
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 121
    invoke-virtual {p0, p1}, Landroid/hardware/display/BrightnessConfiguration$1;->createFromParcel(Landroid/os/Parcel;)Landroid/hardware/display/BrightnessConfiguration;

    move-result-object p1

    return-object p1
.end method

.method public newArray(I)[Landroid/hardware/display/BrightnessConfiguration;
    .locals 1
    .param p1, "size"    # I

    .line 131
    new-array v0, p1, [Landroid/hardware/display/BrightnessConfiguration;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 121
    invoke-virtual {p0, p1}, Landroid/hardware/display/BrightnessConfiguration$1;->newArray(I)[Landroid/hardware/display/BrightnessConfiguration;

    move-result-object p1

    return-object p1
.end method
