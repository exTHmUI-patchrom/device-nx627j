.class public Landroid/net/NetworkKey;
.super Ljava/lang/Object;
.source "NetworkKey.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/net/NetworkKey;",
            ">;"
        }
    .end annotation
.end field

.field private static final TAG:Ljava/lang/String; = "NetworkKey"

.field public static final TYPE_WIFI:I = 0x1


# instance fields
.field public final type:I

.field public final wifiKey:Landroid/net/WifiKey;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 181
    new-instance v0, Landroid/net/NetworkKey$1;

    invoke-direct {v0}, Landroid/net/NetworkKey$1;-><init>()V

    sput-object v0, Landroid/net/NetworkKey;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Landroid/net/WifiKey;)V
    .locals 1
    .param p1, "wifiKey"    # Landroid/net/WifiKey;

    .line 121
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 122
    const/4 v0, 0x1

    iput v0, p0, Landroid/net/NetworkKey;->type:I

    .line 123
    iput-object p1, p0, Landroid/net/NetworkKey;->wifiKey:Landroid/net/WifiKey;

    .line 124
    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 3
    .param p1, "in"    # Landroid/os/Parcel;

    .line 126
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 127
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/net/NetworkKey;->type:I

    .line 128
    iget v0, p0, Landroid/net/NetworkKey;->type:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 130
    sget-object v0, Landroid/net/WifiKey;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/WifiKey;

    iput-object v0, p0, Landroid/net/NetworkKey;->wifiKey:Landroid/net/WifiKey;

    .line 131
    nop

    .line 135
    return-void

    .line 133
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Parcel has unknown type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Landroid/net/NetworkKey;->type:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Landroid/net/NetworkKey$1;)V
    .locals 0
    .param p1, "x0"    # Landroid/os/Parcel;
    .param p2, "x1"    # Landroid/net/NetworkKey$1;

    .line 43
    invoke-direct {p0, p1}, Landroid/net/NetworkKey;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public static createFromScanResult(Landroid/net/wifi/ScanResult;)Landroid/net/NetworkKey;
    .locals 7
    .param p0, "result"    # Landroid/net/wifi/ScanResult;

    .line 71
    const/4 v0, 0x0

    if-eqz p0, :cond_0

    iget-object v1, p0, Landroid/net/wifi/ScanResult;->wifiSsid:Landroid/net/wifi/WifiSsid;

    if-eqz v1, :cond_0

    .line 72
    iget-object v1, p0, Landroid/net/wifi/ScanResult;->wifiSsid:Landroid/net/wifi/WifiSsid;

    invoke-virtual {v1}, Landroid/net/wifi/WifiSsid;->toString()Ljava/lang/String;

    move-result-object v1

    .line 73
    .local v1, "ssid":Ljava/lang/String;
    iget-object v2, p0, Landroid/net/wifi/ScanResult;->BSSID:Ljava/lang/String;

    .line 74
    .local v2, "bssid":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string v3, "<unknown ssid>"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 75
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 78
    :try_start_0
    new-instance v3, Landroid/net/WifiKey;

    const-string v4, "\"%s\""

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object v1, v5, v6

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4, v2}, Landroid/net/WifiKey;-><init>(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v3

    .line 82
    .local v0, "wifiKey":Landroid/net/WifiKey;
    nop

    .line 81
    nop

    .line 83
    new-instance v3, Landroid/net/NetworkKey;

    invoke-direct {v3, v0}, Landroid/net/NetworkKey;-><init>(Landroid/net/WifiKey;)V

    return-object v3

    .line 79
    .end local v0    # "wifiKey":Landroid/net/WifiKey;
    :catch_0
    move-exception v3

    .line 80
    .local v3, "e":Ljava/lang/IllegalArgumentException;
    const-string v4, "NetworkKey"

    const-string v5, "Unable to create WifiKey."

    invoke-static {v4, v5, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 81
    return-object v0

    .line 86
    .end local v1    # "ssid":Ljava/lang/String;
    .end local v2    # "bssid":Ljava/lang/String;
    .end local v3    # "e":Ljava/lang/IllegalArgumentException;
    :cond_0
    return-object v0
.end method

.method public static createFromWifiInfo(Landroid/net/wifi/WifiInfo;)Landroid/net/NetworkKey;
    .locals 6
    .param p0, "wifiInfo"    # Landroid/net/wifi/WifiInfo;

    .line 99
    const/4 v0, 0x0

    if-eqz p0, :cond_0

    .line 100
    invoke-virtual {p0}, Landroid/net/wifi/WifiInfo;->getSSID()Ljava/lang/String;

    move-result-object v1

    .line 101
    .local v1, "ssid":Ljava/lang/String;
    invoke-virtual {p0}, Landroid/net/wifi/WifiInfo;->getBSSID()Ljava/lang/String;

    move-result-object v2

    .line 102
    .local v2, "bssid":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string v3, "<unknown ssid>"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 103
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 106
    :try_start_0
    new-instance v3, Landroid/net/WifiKey;

    invoke-direct {v3, v1, v2}, Landroid/net/WifiKey;-><init>(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v3

    .line 110
    .local v0, "wifiKey":Landroid/net/WifiKey;
    nop

    .line 109
    nop

    .line 111
    new-instance v3, Landroid/net/NetworkKey;

    invoke-direct {v3, v0}, Landroid/net/NetworkKey;-><init>(Landroid/net/WifiKey;)V

    return-object v3

    .line 107
    .end local v0    # "wifiKey":Landroid/net/WifiKey;
    :catch_0
    move-exception v3

    .line 108
    .local v3, "e":Ljava/lang/IllegalArgumentException;
    const-string v4, "NetworkKey"

    const-string v5, "Unable to create WifiKey."

    invoke-static {v4, v5, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 109
    return-object v0

    .line 114
    .end local v1    # "ssid":Ljava/lang/String;
    .end local v2    # "bssid":Ljava/lang/String;
    .end local v3    # "e":Ljava/lang/IllegalArgumentException;
    :cond_0
    return-object v0
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .line 139
    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "o"    # Ljava/lang/Object;

    .line 156
    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    .line 157
    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_3

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_1

    .line 159
    :cond_1
    move-object v2, p1

    check-cast v2, Landroid/net/NetworkKey;

    .line 161
    .local v2, "that":Landroid/net/NetworkKey;
    iget v3, p0, Landroid/net/NetworkKey;->type:I

    iget v4, v2, Landroid/net/NetworkKey;->type:I

    if-ne v3, v4, :cond_2

    iget-object v3, p0, Landroid/net/NetworkKey;->wifiKey:Landroid/net/WifiKey;

    iget-object v4, v2, Landroid/net/NetworkKey;->wifiKey:Landroid/net/WifiKey;

    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    goto :goto_0

    :cond_2
    move v0, v1

    :goto_0
    return v0

    .line 157
    .end local v2    # "that":Landroid/net/NetworkKey;
    :cond_3
    :goto_1
    return v1
.end method

.method public hashCode()I
    .locals 3

    .line 166
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    iget v1, p0, Landroid/net/NetworkKey;->type:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v1, p0, Landroid/net/NetworkKey;->wifiKey:Landroid/net/WifiKey;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 171
    iget v0, p0, Landroid/net/NetworkKey;->type:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    .line 177
    const-string v0, "InvalidKey"

    return-object v0

    .line 173
    :cond_0
    iget-object v0, p0, Landroid/net/NetworkKey;->wifiKey:Landroid/net/WifiKey;

    invoke-virtual {v0}, Landroid/net/WifiKey;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 3
    .param p1, "out"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 144
    iget v0, p0, Landroid/net/NetworkKey;->type:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 145
    iget v0, p0, Landroid/net/NetworkKey;->type:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 147
    iget-object v0, p0, Landroid/net/NetworkKey;->wifiKey:Landroid/net/WifiKey;

    invoke-virtual {v0, p1, p2}, Landroid/net/WifiKey;->writeToParcel(Landroid/os/Parcel;I)V

    .line 148
    nop

    .line 152
    return-void

    .line 150
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "NetworkKey has unknown type "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Landroid/net/NetworkKey;->type:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
