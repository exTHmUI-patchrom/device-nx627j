.class Landroid/net/lowpan/LowpanProvision$1;
.super Ljava/lang/Object;
.source "LowpanProvision.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/lowpan/LowpanProvision;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Landroid/net/lowpan/LowpanProvision;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 132
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Landroid/net/lowpan/LowpanProvision;
    .locals 2
    .param p1, "in"    # Landroid/os/Parcel;

    .line 134
    new-instance v0, Landroid/net/lowpan/LowpanProvision$Builder;

    invoke-direct {v0}, Landroid/net/lowpan/LowpanProvision$Builder;-><init>()V

    .line 136
    .local v0, "builder":Landroid/net/lowpan/LowpanProvision$Builder;
    sget-object v1, Landroid/net/lowpan/LowpanIdentity;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v1, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/lowpan/LowpanIdentity;

    invoke-virtual {v0, v1}, Landroid/net/lowpan/LowpanProvision$Builder;->setLowpanIdentity(Landroid/net/lowpan/LowpanIdentity;)Landroid/net/lowpan/LowpanProvision$Builder;

    .line 138
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 139
    sget-object v1, Landroid/net/lowpan/LowpanCredential;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v1, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/lowpan/LowpanCredential;

    invoke-virtual {v0, v1}, Landroid/net/lowpan/LowpanProvision$Builder;->setLowpanCredential(Landroid/net/lowpan/LowpanCredential;)Landroid/net/lowpan/LowpanProvision$Builder;

    .line 142
    :cond_0
    invoke-virtual {v0}, Landroid/net/lowpan/LowpanProvision$Builder;->build()Landroid/net/lowpan/LowpanProvision;

    move-result-object v1

    return-object v1
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 132
    invoke-virtual {p0, p1}, Landroid/net/lowpan/LowpanProvision$1;->createFromParcel(Landroid/os/Parcel;)Landroid/net/lowpan/LowpanProvision;

    move-result-object p1

    return-object p1
.end method

.method public newArray(I)[Landroid/net/lowpan/LowpanProvision;
    .locals 1
    .param p1, "size"    # I

    .line 146
    new-array v0, p1, [Landroid/net/lowpan/LowpanProvision;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 132
    invoke-virtual {p0, p1}, Landroid/net/lowpan/LowpanProvision$1;->newArray(I)[Landroid/net/lowpan/LowpanProvision;

    move-result-object p1

    return-object p1
.end method
