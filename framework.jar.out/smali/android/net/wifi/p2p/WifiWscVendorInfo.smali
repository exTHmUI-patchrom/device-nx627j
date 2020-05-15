.class public Landroid/net/wifi/p2p/WifiWscVendorInfo;
.super Ljava/lang/Object;
.source "WifiWscVendorInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final BSSID_ATTRIBUTE:I = 0x2003

.field public static final CAPABILITY_ATTRIBUTE:I = 0x2001

.field public static final CONNECTION_PREFERENCE_ATTRIBUTE:I = 0x2004

.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/net/wifi/p2p/WifiWscVendorInfo;",
            ">;"
        }
    .end annotation
.end field

.field public static final HOSTNAME_ATTRIBUTE:I = 0x2002

.field public static final IPADDRESS_ATTRIBUTE:I = 0x2005

.field public static final MIRRORLINK:B = 0x1t

.field private static final TAG:Ljava/lang/String; = "WifiWscVendorInfo"

.field public static final WSC_VENDOR:B


# instance fields
.field private mBssid:Ljava/lang/String;

.field private mCapabilityInfo:B

.field private mConnectionPreference:I

.field private mHostName:Ljava/lang/String;

.field private mIpAddress:Ljava/lang/String;

.field public mP2pMacAddress:Ljava/lang/String;

.field private mbBssidPresent:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 231
    new-instance v0, Landroid/net/wifi/p2p/WifiWscVendorInfo$1;

    invoke-direct {v0}, Landroid/net/wifi/p2p/WifiWscVendorInfo$1;-><init>()V

    sput-object v0, Landroid/net/wifi/p2p/WifiWscVendorInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 68
    return-void
.end method

.method public constructor <init>(BLjava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "capabilityInfo"    # B
    .param p2, "hostName"    # Ljava/lang/String;
    .param p3, "bssId"    # Ljava/lang/String;
    .param p4, "connectionPref"    # I
    .param p5, "ipAddress"    # Ljava/lang/String;
    .param p6, "macAddress"    # Ljava/lang/String;

    .line 71
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 72
    iput-byte p1, p0, Landroid/net/wifi/p2p/WifiWscVendorInfo;->mCapabilityInfo:B

    .line 73
    iput-object p2, p0, Landroid/net/wifi/p2p/WifiWscVendorInfo;->mHostName:Ljava/lang/String;

    .line 74
    iput-object p3, p0, Landroid/net/wifi/p2p/WifiWscVendorInfo;->mBssid:Ljava/lang/String;

    .line 75
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/net/wifi/p2p/WifiWscVendorInfo;->mbBssidPresent:Z

    .line 76
    iput p4, p0, Landroid/net/wifi/p2p/WifiWscVendorInfo;->mConnectionPreference:I

    .line 77
    iput-object p5, p0, Landroid/net/wifi/p2p/WifiWscVendorInfo;->mIpAddress:Ljava/lang/String;

    .line 78
    iput-object p6, p0, Landroid/net/wifi/p2p/WifiWscVendorInfo;->mP2pMacAddress:Ljava/lang/String;

    .line 79
    return-void
.end method

.method public constructor <init>(Landroid/net/wifi/p2p/WifiWscVendorInfo;)V
    .locals 1
    .param p1, "source"    # Landroid/net/wifi/p2p/WifiWscVendorInfo;

    .line 200
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 201
    if-eqz p1, :cond_0

    .line 202
    iget-byte v0, p1, Landroid/net/wifi/p2p/WifiWscVendorInfo;->mCapabilityInfo:B

    iput-byte v0, p0, Landroid/net/wifi/p2p/WifiWscVendorInfo;->mCapabilityInfo:B

    .line 203
    iget-object v0, p1, Landroid/net/wifi/p2p/WifiWscVendorInfo;->mHostName:Ljava/lang/String;

    iput-object v0, p0, Landroid/net/wifi/p2p/WifiWscVendorInfo;->mHostName:Ljava/lang/String;

    .line 204
    iget-object v0, p1, Landroid/net/wifi/p2p/WifiWscVendorInfo;->mBssid:Ljava/lang/String;

    iput-object v0, p0, Landroid/net/wifi/p2p/WifiWscVendorInfo;->mBssid:Ljava/lang/String;

    .line 205
    iget v0, p1, Landroid/net/wifi/p2p/WifiWscVendorInfo;->mConnectionPreference:I

    iput v0, p0, Landroid/net/wifi/p2p/WifiWscVendorInfo;->mConnectionPreference:I

    .line 206
    iget-object v0, p1, Landroid/net/wifi/p2p/WifiWscVendorInfo;->mIpAddress:Ljava/lang/String;

    iput-object v0, p0, Landroid/net/wifi/p2p/WifiWscVendorInfo;->mIpAddress:Ljava/lang/String;

    .line 207
    iget-object v0, p1, Landroid/net/wifi/p2p/WifiWscVendorInfo;->mP2pMacAddress:Ljava/lang/String;

    iput-object v0, p0, Landroid/net/wifi/p2p/WifiWscVendorInfo;->mP2pMacAddress:Ljava/lang/String;

    .line 209
    :cond_0
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .line 196
    const/4 v0, 0x0

    return v0
.end method

.method public getBssId()Ljava/lang/String;
    .locals 1

    .line 90
    iget-object v0, p0, Landroid/net/wifi/p2p/WifiWscVendorInfo;->mBssid:Ljava/lang/String;

    return-object v0
.end method

.method public getCapabilityInfo()B
    .locals 1

    .line 82
    iget-byte v0, p0, Landroid/net/wifi/p2p/WifiWscVendorInfo;->mCapabilityInfo:B

    return v0
.end method

.method public getConnectionPreference()I
    .locals 1

    .line 94
    iget v0, p0, Landroid/net/wifi/p2p/WifiWscVendorInfo;->mConnectionPreference:I

    return v0
.end method

.method public getHostName()Ljava/lang/String;
    .locals 1

    .line 86
    iget-object v0, p0, Landroid/net/wifi/p2p/WifiWscVendorInfo;->mHostName:Ljava/lang/String;

    return-object v0
.end method

.method public getIpAddress()Ljava/lang/String;
    .locals 1

    .line 98
    iget-object v0, p0, Landroid/net/wifi/p2p/WifiWscVendorInfo;->mIpAddress:Ljava/lang/String;

    return-object v0
.end method

.method public readFromParcel(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    .line 222
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    iput-byte v0, p0, Landroid/net/wifi/p2p/WifiWscVendorInfo;->mCapabilityInfo:B

    .line 223
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/net/wifi/p2p/WifiWscVendorInfo;->mHostName:Ljava/lang/String;

    .line 224
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/net/wifi/p2p/WifiWscVendorInfo;->mBssid:Ljava/lang/String;

    .line 225
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/net/wifi/p2p/WifiWscVendorInfo;->mConnectionPreference:I

    .line 226
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/net/wifi/p2p/WifiWscVendorInfo;->mIpAddress:Ljava/lang/String;

    .line 227
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/net/wifi/p2p/WifiWscVendorInfo;->mP2pMacAddress:Ljava/lang/String;

    .line 228
    return-void
.end method

.method public setBssid(Ljava/lang/String;)V
    .locals 1
    .param p1, "bssId"    # Ljava/lang/String;

    .line 110
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/net/wifi/p2p/WifiWscVendorInfo;->mbBssidPresent:Z

    .line 111
    iput-object p1, p0, Landroid/net/wifi/p2p/WifiWscVendorInfo;->mBssid:Ljava/lang/String;

    .line 112
    return-void
.end method

.method public setCapability(B)V
    .locals 0
    .param p1, "cap"    # B

    .line 102
    iput-byte p1, p0, Landroid/net/wifi/p2p/WifiWscVendorInfo;->mCapabilityInfo:B

    .line 103
    return-void
.end method

.method public setConnectionPreference(I)V
    .locals 0
    .param p1, "conPref"    # I

    .line 115
    iput p1, p0, Landroid/net/wifi/p2p/WifiWscVendorInfo;->mConnectionPreference:I

    .line 116
    return-void
.end method

.method public setHostName(Ljava/lang/String;)V
    .locals 0
    .param p1, "hostName"    # Ljava/lang/String;

    .line 106
    iput-object p1, p0, Landroid/net/wifi/p2p/WifiWscVendorInfo;->mHostName:Ljava/lang/String;

    .line 107
    return-void
.end method

.method public setIpAddress(Ljava/lang/String;)V
    .locals 0
    .param p1, "ipaddress"    # Ljava/lang/String;

    .line 119
    iput-object p1, p0, Landroid/net/wifi/p2p/WifiWscVendorInfo;->mIpAddress:Ljava/lang/String;

    .line 120
    return-void
.end method

.method public toArray()Ljava/util/ArrayList;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Byte;",
            ">;"
        }
    .end annotation

    .line 135
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 136
    .local v0, "info":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Byte;>;"
    const/4 v1, 0x0

    .line 139
    .local v1, "length":I
    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 140
    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 141
    const/16 v4, 0x37

    invoke-static {v4}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 142
    const/4 v4, 0x2

    add-int/2addr v1, v4

    .line 145
    const/16 v5, 0x20

    invoke-static {v5}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 146
    invoke-static {v3}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 147
    invoke-static {v2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 148
    invoke-static {v3}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 149
    iget-byte v3, p0, Landroid/net/wifi/p2p/WifiWscVendorInfo;->mCapabilityInfo:B

    invoke-static {v3}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 150
    const/4 v3, 0x5

    add-int/2addr v1, v3

    .line 153
    invoke-static {v5}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 154
    invoke-static {v4}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 155
    iget-object v4, p0, Landroid/net/wifi/p2p/WifiWscVendorInfo;->mHostName:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    shr-int/lit8 v4, v4, 0x8

    int-to-byte v4, v4

    invoke-static {v4}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 156
    iget-object v4, p0, Landroid/net/wifi/p2p/WifiWscVendorInfo;->mHostName:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    int-to-byte v4, v4

    invoke-static {v4}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 157
    move v4, v2

    .local v4, "i":I
    :goto_0
    iget-object v6, p0, Landroid/net/wifi/p2p/WifiWscVendorInfo;->mHostName:Ljava/lang/String;

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    if-ge v4, v6, :cond_0

    .line 158
    iget-object v6, p0, Landroid/net/wifi/p2p/WifiWscVendorInfo;->mHostName:Ljava/lang/String;

    invoke-virtual {v6, v4}, Ljava/lang/String;->charAt(I)C

    move-result v6

    int-to-byte v6, v6

    invoke-static {v6}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 157
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 159
    .end local v4    # "i":I
    :cond_0
    iget-object v4, p0, Landroid/net/wifi/p2p/WifiWscVendorInfo;->mHostName:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    const/4 v6, 0x4

    add-int/2addr v4, v6

    add-int/2addr v1, v4

    .line 162
    iget-boolean v4, p0, Landroid/net/wifi/p2p/WifiWscVendorInfo;->mbBssidPresent:Z

    if-eqz v4, :cond_2

    .line 163
    invoke-static {v5}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 164
    const/4 v4, 0x3

    invoke-static {v4}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 165
    invoke-static {v2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 166
    const/4 v4, 0x6

    invoke-static {v4}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v7

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 167
    move v7, v2

    .local v7, "i":I
    :goto_1
    if-ge v7, v4, :cond_1

    .line 168
    iget-object v8, p0, Landroid/net/wifi/p2p/WifiWscVendorInfo;->mBssid:Ljava/lang/String;

    invoke-virtual {v8, v7}, Ljava/lang/String;->charAt(I)C

    move-result v8

    int-to-byte v8, v8

    invoke-static {v8}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v8

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 167
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 169
    .end local v7    # "i":I
    :cond_1
    add-int/lit8 v1, v1, 0xa

    .line 173
    :cond_2
    invoke-static {v5}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 174
    invoke-static {v6}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 175
    invoke-static {v2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 176
    invoke-static {v6}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 177
    iget v4, p0, Landroid/net/wifi/p2p/WifiWscVendorInfo;->mConnectionPreference:I

    const/high16 v7, -0x1000000

    and-int/2addr v4, v7

    shr-int/lit8 v4, v4, 0x18

    int-to-byte v4, v4

    invoke-static {v4}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 178
    iget v4, p0, Landroid/net/wifi/p2p/WifiWscVendorInfo;->mConnectionPreference:I

    const/high16 v7, 0xff0000

    and-int/2addr v4, v7

    shr-int/lit8 v4, v4, 0x10

    int-to-byte v4, v4

    invoke-static {v4}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 179
    iget v4, p0, Landroid/net/wifi/p2p/WifiWscVendorInfo;->mConnectionPreference:I

    const v7, 0xff00

    and-int/2addr v4, v7

    shr-int/lit8 v4, v4, 0x8

    int-to-byte v4, v4

    invoke-static {v4}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 180
    iget v4, p0, Landroid/net/wifi/p2p/WifiWscVendorInfo;->mConnectionPreference:I

    and-int/lit16 v4, v4, 0xff

    int-to-byte v4, v4

    invoke-static {v4}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 181
    add-int/lit8 v1, v1, 0x8

    .line 184
    invoke-static {v5}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 185
    invoke-static {v3}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 186
    iget-object v3, p0, Landroid/net/wifi/p2p/WifiWscVendorInfo;->mIpAddress:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    int-to-byte v3, v3

    invoke-static {v3}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 187
    invoke-static {v2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 188
    nop

    .local v2, "i":I
    :goto_2
    iget-object v3, p0, Landroid/net/wifi/p2p/WifiWscVendorInfo;->mIpAddress:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v2, v3, :cond_3

    .line 189
    iget-object v3, p0, Landroid/net/wifi/p2p/WifiWscVendorInfo;->mIpAddress:Ljava/lang/String;

    invoke-virtual {v3, v2}, Ljava/lang/String;->charAt(I)C

    move-result v3

    int-to-byte v3, v3

    invoke-static {v3}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 188
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 190
    .end local v2    # "i":I
    :cond_3
    iget-object v2, p0, Landroid/net/wifi/p2p/WifiWscVendorInfo;->mIpAddress:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/2addr v2, v6

    add-int/2addr v1, v2

    .line 191
    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 123
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 124
    .local v0, "sbuf":Ljava/lang/StringBuffer;
    const-string v1, "\n WSC Vendor Capability: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-byte v1, p0, Landroid/net/wifi/p2p/WifiWscVendorInfo;->mCapabilityInfo:B

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 125
    const-string v1, "\n WSC Vendor HostName: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v1, p0, Landroid/net/wifi/p2p/WifiWscVendorInfo;->mHostName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 126
    const-string v1, "\n WSC Vendor BSSID: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v1, p0, Landroid/net/wifi/p2p/WifiWscVendorInfo;->mBssid:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 127
    const-string v1, "\n WSC Vendor Connection Preference: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget v1, p0, Landroid/net/wifi/p2p/WifiWscVendorInfo;->mConnectionPreference:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 128
    const-string v1, "\n WSC Vendor IP Address: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v1, p0, Landroid/net/wifi/p2p/WifiWscVendorInfo;->mIpAddress:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 129
    const-string v1, "\n WSC Vendor macAddress : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v1, p0, Landroid/net/wifi/p2p/WifiWscVendorInfo;->mP2pMacAddress:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 130
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 213
    iget-byte v0, p0, Landroid/net/wifi/p2p/WifiWscVendorInfo;->mCapabilityInfo:B

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 214
    iget-object v0, p0, Landroid/net/wifi/p2p/WifiWscVendorInfo;->mHostName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 215
    iget-object v0, p0, Landroid/net/wifi/p2p/WifiWscVendorInfo;->mBssid:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 216
    iget v0, p0, Landroid/net/wifi/p2p/WifiWscVendorInfo;->mConnectionPreference:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 217
    iget-object v0, p0, Landroid/net/wifi/p2p/WifiWscVendorInfo;->mIpAddress:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 218
    iget-object v0, p0, Landroid/net/wifi/p2p/WifiWscVendorInfo;->mP2pMacAddress:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 219
    return-void
.end method
