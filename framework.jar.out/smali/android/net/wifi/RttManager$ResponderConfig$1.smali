.class Landroid/net/wifi/RttManager$ResponderConfig$1;
.super Ljava/lang/Object;
.source "RttManager.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/wifi/RttManager$ResponderConfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Landroid/net/wifi/RttManager$ResponderConfig;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 1162
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Landroid/net/wifi/RttManager$ResponderConfig;
    .locals 2
    .param p1, "in"    # Landroid/os/Parcel;

    .line 1165
    new-instance v0, Landroid/net/wifi/RttManager$ResponderConfig;

    invoke-direct {v0}, Landroid/net/wifi/RttManager$ResponderConfig;-><init>()V

    .line 1166
    .local v0, "config":Landroid/net/wifi/RttManager$ResponderConfig;
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Landroid/net/wifi/RttManager$ResponderConfig;->macAddress:Ljava/lang/String;

    .line 1167
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, v0, Landroid/net/wifi/RttManager$ResponderConfig;->frequency:I

    .line 1168
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, v0, Landroid/net/wifi/RttManager$ResponderConfig;->centerFreq0:I

    .line 1169
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, v0, Landroid/net/wifi/RttManager$ResponderConfig;->centerFreq1:I

    .line 1170
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, v0, Landroid/net/wifi/RttManager$ResponderConfig;->channelWidth:I

    .line 1171
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, v0, Landroid/net/wifi/RttManager$ResponderConfig;->preamble:I

    .line 1172
    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 1162
    invoke-virtual {p0, p1}, Landroid/net/wifi/RttManager$ResponderConfig$1;->createFromParcel(Landroid/os/Parcel;)Landroid/net/wifi/RttManager$ResponderConfig;

    move-result-object p1

    return-object p1
.end method

.method public newArray(I)[Landroid/net/wifi/RttManager$ResponderConfig;
    .locals 1
    .param p1, "size"    # I

    .line 1177
    new-array v0, p1, [Landroid/net/wifi/RttManager$ResponderConfig;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 1162
    invoke-virtual {p0, p1}, Landroid/net/wifi/RttManager$ResponderConfig$1;->newArray(I)[Landroid/net/wifi/RttManager$ResponderConfig;

    move-result-object p1

    return-object p1
.end method
