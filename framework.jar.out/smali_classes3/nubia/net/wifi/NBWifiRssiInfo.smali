.class public Lnubia/net/wifi/NBWifiRssiInfo;
.super Ljava/lang/Object;
.source "NBWifiRssiInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lnubia/net/wifi/NBWifiRssiInfo;",
            ">;"
        }
    .end annotation
.end field

.field public static final INITIAL_FREQ:I = 0x0

.field public static final INITIAL_RSSI:I = -0x64


# instance fields
.field private mLastRssi:I

.field private mNewFreq:I

.field private mNewRssi:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 125
    new-instance v0, Lnubia/net/wifi/NBWifiRssiInfo$1;

    invoke-direct {v0}, Lnubia/net/wifi/NBWifiRssiInfo$1;-><init>()V

    sput-object v0, Lnubia/net/wifi/NBWifiRssiInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 26
    const/16 v0, -0x64

    const/4 v1, 0x0

    invoke-direct {p0, v0, v0, v1}, Lnubia/net/wifi/NBWifiRssiInfo;-><init>(III)V

    .line 27
    return-void
.end method

.method public constructor <init>(III)V
    .locals 0
    .param p1, "newRssi"    # I
    .param p2, "lastRssi"    # I
    .param p3, "freq"    # I

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    iput p1, p0, Lnubia/net/wifi/NBWifiRssiInfo;->mNewRssi:I

    .line 31
    iput p2, p0, Lnubia/net/wifi/NBWifiRssiInfo;->mLastRssi:I

    .line 32
    iput p3, p0, Lnubia/net/wifi/NBWifiRssiInfo;->mNewFreq:I

    .line 33
    return-void
.end method


# virtual methods
.method public copyFrom(Lnubia/net/wifi/NBWifiRssiInfo;)V
    .locals 1
    .param p1, "that"    # Lnubia/net/wifi/NBWifiRssiInfo;

    .line 147
    iget v0, p1, Lnubia/net/wifi/NBWifiRssiInfo;->mNewRssi:I

    iput v0, p0, Lnubia/net/wifi/NBWifiRssiInfo;->mNewRssi:I

    .line 148
    iget v0, p1, Lnubia/net/wifi/NBWifiRssiInfo;->mLastRssi:I

    iput v0, p0, Lnubia/net/wifi/NBWifiRssiInfo;->mLastRssi:I

    .line 149
    iget v0, p1, Lnubia/net/wifi/NBWifiRssiInfo;->mNewFreq:I

    iput v0, p0, Lnubia/net/wifi/NBWifiRssiInfo;->mNewFreq:I

    .line 150
    return-void
.end method

.method public describeContents()I
    .locals 1

    .line 119
    const/4 v0, 0x0

    return v0
.end method

.method public equals(Lnubia/net/wifi/NBWifiRssiInfo;)Z
    .locals 3
    .param p1, "other"    # Lnubia/net/wifi/NBWifiRssiInfo;

    .line 165
    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    .line 166
    :cond_0
    iget v1, p0, Lnubia/net/wifi/NBWifiRssiInfo;->mNewRssi:I

    iget v2, p1, Lnubia/net/wifi/NBWifiRssiInfo;->mNewRssi:I

    if-ne v1, v2, :cond_1

    iget v1, p0, Lnubia/net/wifi/NBWifiRssiInfo;->mLastRssi:I

    iget v2, p1, Lnubia/net/wifi/NBWifiRssiInfo;->mLastRssi:I

    if-ne v1, v2, :cond_1

    iget v1, p0, Lnubia/net/wifi/NBWifiRssiInfo;->mNewFreq:I

    iget v2, p1, Lnubia/net/wifi/NBWifiRssiInfo;->mNewFreq:I

    if-ne v1, v2, :cond_1

    const/4 v0, 0x1

    nop

    :cond_1
    return v0
.end method

.method public getLastRssi()I
    .locals 1

    .line 52
    iget v0, p0, Lnubia/net/wifi/NBWifiRssiInfo;->mLastRssi:I

    return v0
.end method

.method public getLastSignalRssi()I
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 80
    iget v0, p0, Lnubia/net/wifi/NBWifiRssiInfo;->mLastRssi:I

    return v0
.end method

.method public getNewFreq()I
    .locals 1

    .line 56
    iget v0, p0, Lnubia/net/wifi/NBWifiRssiInfo;->mNewFreq:I

    return v0
.end method

.method public getNewRssi()I
    .locals 1

    .line 48
    iget v0, p0, Lnubia/net/wifi/NBWifiRssiInfo;->mNewRssi:I

    return v0
.end method

.method public isInitial()Z
    .locals 2

    .line 153
    iget v0, p0, Lnubia/net/wifi/NBWifiRssiInfo;->mNewRssi:I

    const/16 v1, -0x64

    if-ne v0, v1, :cond_0

    iget v0, p0, Lnubia/net/wifi/NBWifiRssiInfo;->mLastRssi:I

    if-ne v0, v1, :cond_0

    iget v0, p0, Lnubia/net/wifi/NBWifiRssiInfo;->mNewFreq:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public reset()V
    .locals 1

    .line 159
    const/16 v0, -0x64

    iput v0, p0, Lnubia/net/wifi/NBWifiRssiInfo;->mNewRssi:I

    .line 160
    iput v0, p0, Lnubia/net/wifi/NBWifiRssiInfo;->mLastRssi:I

    .line 161
    const/4 v0, 0x0

    iput v0, p0, Lnubia/net/wifi/NBWifiRssiInfo;->mNewFreq:I

    .line 162
    return-void
.end method

.method public setLastRssi(I)V
    .locals 0
    .param p1, "rssi"    # I

    .line 40
    iput p1, p0, Lnubia/net/wifi/NBWifiRssiInfo;->mLastRssi:I

    .line 41
    return-void
.end method

.method public setLastSignalRssi(I)V
    .locals 0
    .param p1, "rssi"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 72
    iput p1, p0, Lnubia/net/wifi/NBWifiRssiInfo;->mLastRssi:I

    .line 73
    return-void
.end method

.method public setNewFreq(I)V
    .locals 0
    .param p1, "freq"    # I

    .line 44
    iput p1, p0, Lnubia/net/wifi/NBWifiRssiInfo;->mNewFreq:I

    .line 45
    return-void
.end method

.method public setNewRssi(I)V
    .locals 0
    .param p1, "rssi"    # I

    .line 36
    iput p1, p0, Lnubia/net/wifi/NBWifiRssiInfo;->mNewRssi:I

    .line 37
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 143
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "RssiInfo("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lnubia/net/wifi/NBWifiRssiInfo;->mNewRssi:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lnubia/net/wifi/NBWifiRssiInfo;->mLastRssi:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lnubia/net/wifi/NBWifiRssiInfo;->mNewFreq:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public updateLastSignalRssi(I)V
    .locals 0
    .param p1, "rssi"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 64
    iput p1, p0, Lnubia/net/wifi/NBWifiRssiInfo;->mLastRssi:I

    .line 65
    return-void
.end method

.method public updateNewFreq(I)V
    .locals 0
    .param p1, "freq"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 88
    iput p1, p0, Lnubia/net/wifi/NBWifiRssiInfo;->mNewFreq:I

    .line 89
    return-void
.end method

.method public updateRssiAndFreq(ILjava/lang/String;Ljava/util/List;)V
    .locals 3
    .param p1, "newRssi"    # I
    .param p2, "bssid"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Landroid/net/wifi/ScanResult;",
            ">;)V"
        }
    .end annotation

    .line 92
    .local p3, "list":Ljava/util/List;, "Ljava/util/List<Landroid/net/wifi/ScanResult;>;"
    iput p1, p0, Lnubia/net/wifi/NBWifiRssiInfo;->mNewRssi:I

    .line 93
    if-eqz p3, :cond_1

    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result v0

    if-eqz v0, :cond_1

    if-eqz p2, :cond_1

    .line 94
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_1

    .line 95
    invoke-interface {p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/wifi/ScanResult;

    .line 96
    .local v1, "result":Landroid/net/wifi/ScanResult;
    iget-object v2, v1, Landroid/net/wifi/ScanResult;->BSSID:Ljava/lang/String;

    invoke-virtual {p2, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 97
    iget v0, v1, Landroid/net/wifi/ScanResult;->frequency:I

    iput v0, p0, Lnubia/net/wifi/NBWifiRssiInfo;->mNewFreq:I

    .line 98
    goto :goto_1

    .line 100
    .end local v1    # "result":Landroid/net/wifi/ScanResult;
    :cond_0
    goto :goto_0

    .line 102
    :cond_1
    :goto_1
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 109
    iget v0, p0, Lnubia/net/wifi/NBWifiRssiInfo;->mNewRssi:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 110
    iget v0, p0, Lnubia/net/wifi/NBWifiRssiInfo;->mLastRssi:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 111
    iget v0, p0, Lnubia/net/wifi/NBWifiRssiInfo;->mNewFreq:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 112
    return-void
.end method
