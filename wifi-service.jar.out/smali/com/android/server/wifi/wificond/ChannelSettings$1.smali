.class Lcom/android/server/wifi/wificond/ChannelSettings$1;
.super Ljava/lang/Object;
.source "ChannelSettings.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wifi/wificond/ChannelSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Lcom/android/server/wifi/wificond/ChannelSettings;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 75
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/android/server/wifi/wificond/ChannelSettings;
    .locals 3
    .param p1, "in"    # Landroid/os/Parcel;

    .line 81
    new-instance v0, Lcom/android/server/wifi/wificond/ChannelSettings;

    invoke-direct {v0}, Lcom/android/server/wifi/wificond/ChannelSettings;-><init>()V

    .line 82
    .local v0, "result":Lcom/android/server/wifi/wificond/ChannelSettings;
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, v0, Lcom/android/server/wifi/wificond/ChannelSettings;->frequency:I

    .line 83
    invoke-virtual {p1}, Landroid/os/Parcel;->dataAvail()I

    move-result v1

    if-eqz v1, :cond_0

    .line 84
    const-string v1, "ChannelSettings"

    const-string v2, "Found trailing data after parcel parsing."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 87
    :cond_0
    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 75
    invoke-virtual {p0, p1}, Lcom/android/server/wifi/wificond/ChannelSettings$1;->createFromParcel(Landroid/os/Parcel;)Lcom/android/server/wifi/wificond/ChannelSettings;

    move-result-object p1

    return-object p1
.end method

.method public newArray(I)[Lcom/android/server/wifi/wificond/ChannelSettings;
    .locals 1
    .param p1, "size"    # I

    .line 92
    new-array v0, p1, [Lcom/android/server/wifi/wificond/ChannelSettings;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 75
    invoke-virtual {p0, p1}, Lcom/android/server/wifi/wificond/ChannelSettings$1;->newArray(I)[Lcom/android/server/wifi/wificond/ChannelSettings;

    move-result-object p1

    return-object p1
.end method
