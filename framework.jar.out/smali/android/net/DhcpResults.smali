.class public Landroid/net/DhcpResults;
.super Landroid/net/StaticIpConfiguration;
.source "DhcpResults.java"


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/net/DhcpResults;",
            ">;"
        }
    .end annotation
.end field

.field private static final TAG:Ljava/lang/String; = "DhcpResults"


# instance fields
.field public leaseDuration:I

.field public mtu:I

.field public serverAddress:Ljava/net/Inet4Address;

.field public vendorInfo:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 114
    new-instance v0, Landroid/net/DhcpResults$1;

    invoke-direct {v0}, Landroid/net/DhcpResults$1;-><init>()V

    sput-object v0, Landroid/net/DhcpResults;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 47
    invoke-direct {p0}, Landroid/net/StaticIpConfiguration;-><init>()V

    .line 48
    return-void
.end method

.method public constructor <init>(Landroid/net/DhcpResults;)V
    .locals 1
    .param p1, "source"    # Landroid/net/DhcpResults;

    .line 56
    invoke-direct {p0, p1}, Landroid/net/StaticIpConfiguration;-><init>(Landroid/net/StaticIpConfiguration;)V

    .line 58
    if-eqz p1, :cond_0

    .line 60
    iget-object v0, p1, Landroid/net/DhcpResults;->serverAddress:Ljava/net/Inet4Address;

    iput-object v0, p0, Landroid/net/DhcpResults;->serverAddress:Ljava/net/Inet4Address;

    .line 61
    iget-object v0, p1, Landroid/net/DhcpResults;->vendorInfo:Ljava/lang/String;

    iput-object v0, p0, Landroid/net/DhcpResults;->vendorInfo:Ljava/lang/String;

    .line 62
    iget v0, p1, Landroid/net/DhcpResults;->leaseDuration:I

    iput v0, p0, Landroid/net/DhcpResults;->leaseDuration:I

    .line 63
    iget v0, p1, Landroid/net/DhcpResults;->mtu:I

    iput v0, p0, Landroid/net/DhcpResults;->mtu:I

    .line 65
    :cond_0
    return-void
.end method

.method public constructor <init>(Landroid/net/StaticIpConfiguration;)V
    .locals 0
    .param p1, "source"    # Landroid/net/StaticIpConfiguration;

    .line 51
    invoke-direct {p0, p1}, Landroid/net/StaticIpConfiguration;-><init>(Landroid/net/StaticIpConfiguration;)V

    .line 52
    return-void
.end method

.method static synthetic access$000(Landroid/net/DhcpResults;Landroid/os/Parcel;)V
    .locals 0
    .param p0, "x0"    # Landroid/net/DhcpResults;
    .param p1, "x1"    # Landroid/os/Parcel;

    .line 33
    invoke-static {p0, p1}, Landroid/net/DhcpResults;->readFromParcel(Landroid/net/DhcpResults;Landroid/os/Parcel;)V

    return-void
.end method

.method private static readFromParcel(Landroid/net/DhcpResults;Landroid/os/Parcel;)V
    .locals 1
    .param p0, "dhcpResults"    # Landroid/net/DhcpResults;
    .param p1, "in"    # Landroid/os/Parcel;

    .line 137
    invoke-static {p0, p1}, Landroid/net/StaticIpConfiguration;->readFromParcel(Landroid/net/StaticIpConfiguration;Landroid/os/Parcel;)V

    .line 138
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/net/DhcpResults;->leaseDuration:I

    .line 139
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/net/DhcpResults;->mtu:I

    .line 140
    invoke-static {p1}, Landroid/net/NetworkUtils;->unparcelInetAddress(Landroid/os/Parcel;)Ljava/net/InetAddress;

    move-result-object v0

    check-cast v0, Ljava/net/Inet4Address;

    iput-object v0, p0, Landroid/net/DhcpResults;->serverAddress:Ljava/net/Inet4Address;

    .line 141
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/net/DhcpResults;->vendorInfo:Ljava/lang/String;

    .line 142
    return-void
.end method


# virtual methods
.method public addDns(Ljava/lang/String;)Z
    .locals 4
    .param p1, "addrString"    # Ljava/lang/String;

    .line 168
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 170
    :try_start_0
    iget-object v0, p0, Landroid/net/DhcpResults;->dnsServers:Ljava/util/ArrayList;

    invoke-static {p1}, Landroid/net/NetworkUtils;->numericToInetAddress(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 174
    goto :goto_0

    .line 171
    :catch_0
    move-exception v0

    .line 172
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    const-string v1, "DhcpResults"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "addDns failed with addrString "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 173
    const/4 v1, 0x1

    return v1

    .line 176
    .end local v0    # "e":Ljava/lang/IllegalArgumentException;
    :cond_0
    :goto_0
    const/4 v0, 0x0

    return v0
.end method

.method public clear()V
    .locals 1

    .line 80
    invoke-super {p0}, Landroid/net/StaticIpConfiguration;->clear()V

    .line 81
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/net/DhcpResults;->vendorInfo:Ljava/lang/String;

    .line 82
    const/4 v0, 0x0

    iput v0, p0, Landroid/net/DhcpResults;->leaseDuration:I

    .line 83
    iput v0, p0, Landroid/net/DhcpResults;->mtu:I

    .line 84
    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "obj"    # Ljava/lang/Object;

    .line 100
    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    .line 102
    :cond_0
    instance-of v1, p1, Landroid/net/DhcpResults;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    .line 104
    :cond_1
    move-object v1, p1

    check-cast v1, Landroid/net/DhcpResults;

    .line 106
    .local v1, "target":Landroid/net/DhcpResults;
    move-object v3, p1

    check-cast v3, Landroid/net/StaticIpConfiguration;

    invoke-super {p0, v3}, Landroid/net/StaticIpConfiguration;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Landroid/net/DhcpResults;->serverAddress:Ljava/net/Inet4Address;

    iget-object v4, v1, Landroid/net/DhcpResults;->serverAddress:Ljava/net/Inet4Address;

    .line 107
    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Landroid/net/DhcpResults;->vendorInfo:Ljava/lang/String;

    iget-object v4, v1, Landroid/net/DhcpResults;->vendorInfo:Ljava/lang/String;

    .line 108
    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget v3, p0, Landroid/net/DhcpResults;->leaseDuration:I

    iget v4, v1, Landroid/net/DhcpResults;->leaseDuration:I

    if-ne v3, v4, :cond_2

    iget v3, p0, Landroid/net/DhcpResults;->mtu:I

    iget v4, v1, Landroid/net/DhcpResults;->mtu:I

    if-ne v3, v4, :cond_2

    goto :goto_0

    .line 106
    :cond_2
    move v0, v2

    :goto_0
    return v0
.end method

.method public hasMeteredHint()Z
    .locals 2

    .line 72
    iget-object v0, p0, Landroid/net/DhcpResults;->vendorInfo:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 73
    iget-object v0, p0, Landroid/net/DhcpResults;->vendorInfo:Ljava/lang/String;

    const-string v1, "ANDROID_METERED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    return v0

    .line 75
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public setDomains(Ljava/lang/String;)V
    .locals 0
    .param p1, "newDomains"    # Ljava/lang/String;

    .line 198
    iput-object p1, p0, Landroid/net/DhcpResults;->domains:Ljava/lang/String;

    .line 199
    return-void
.end method

.method public setGateway(Ljava/lang/String;)Z
    .locals 4
    .param p1, "addrString"    # Ljava/lang/String;

    .line 159
    :try_start_0
    invoke-static {p1}, Landroid/net/NetworkUtils;->numericToInetAddress(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v0

    iput-object v0, p0, Landroid/net/DhcpResults;->gateway:Ljava/net/InetAddress;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 163
    nop

    .line 164
    const/4 v0, 0x0

    return v0

    .line 160
    :catch_0
    move-exception v0

    .line 161
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    const-string v1, "DhcpResults"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "setGateway failed with addrString "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 162
    const/4 v1, 0x1

    return v1
.end method

.method public setIpAddress(Ljava/lang/String;I)Z
    .locals 4
    .param p1, "addrString"    # Ljava/lang/String;
    .param p2, "prefixLength"    # I

    .line 148
    :try_start_0
    invoke-static {p1}, Landroid/net/NetworkUtils;->numericToInetAddress(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v0

    check-cast v0, Ljava/net/Inet4Address;

    .line 149
    .local v0, "addr":Ljava/net/Inet4Address;
    new-instance v1, Landroid/net/LinkAddress;

    invoke-direct {v1, v0, p2}, Landroid/net/LinkAddress;-><init>(Ljava/net/InetAddress;I)V

    iput-object v1, p0, Landroid/net/DhcpResults;->ipAddress:Landroid/net/LinkAddress;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    .line 153
    .end local v0    # "addr":Ljava/net/Inet4Address;
    nop

    .line 154
    const/4 v0, 0x0

    return v0

    .line 150
    :catch_0
    move-exception v0

    .line 151
    .local v0, "e":Ljava/lang/RuntimeException;
    const-string v1, "DhcpResults"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "setIpAddress failed with addrString "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 152
    const/4 v1, 0x1

    return v1
.end method

.method public setLeaseDuration(I)V
    .locals 0
    .param p1, "duration"    # I

    .line 190
    iput p1, p0, Landroid/net/DhcpResults;->leaseDuration:I

    .line 191
    return-void
.end method

.method public setServerAddress(Ljava/lang/String;)Z
    .locals 4
    .param p1, "addrString"    # Ljava/lang/String;

    .line 181
    :try_start_0
    invoke-static {p1}, Landroid/net/NetworkUtils;->numericToInetAddress(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v0

    check-cast v0, Ljava/net/Inet4Address;

    iput-object v0, p0, Landroid/net/DhcpResults;->serverAddress:Ljava/net/Inet4Address;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    .line 185
    nop

    .line 186
    const/4 v0, 0x0

    return v0

    .line 182
    :catch_0
    move-exception v0

    .line 183
    .local v0, "e":Ljava/lang/RuntimeException;
    const-string v1, "DhcpResults"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "setServerAddress failed with addrString "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 184
    const/4 v1, 0x1

    return v1
.end method

.method public setVendorInfo(Ljava/lang/String;)V
    .locals 0
    .param p1, "info"    # Ljava/lang/String;

    .line 194
    iput-object p1, p0, Landroid/net/DhcpResults;->vendorInfo:Ljava/lang/String;

    .line 195
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 88
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-super {p0}, Landroid/net/StaticIpConfiguration;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 90
    .local v0, "str":Ljava/lang/StringBuffer;
    const-string v1, " DHCP server "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v1, p0, Landroid/net/DhcpResults;->serverAddress:Ljava/net/Inet4Address;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    .line 91
    const-string v1, " Vendor info "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v1, p0, Landroid/net/DhcpResults;->vendorInfo:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 92
    const-string v1, " lease "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget v1, p0, Landroid/net/DhcpResults;->leaseDuration:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    const-string v1, " seconds"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 93
    iget v1, p0, Landroid/net/DhcpResults;->mtu:I

    if-eqz v1, :cond_0

    const-string v1, " MTU "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget v1, p0, Landroid/net/DhcpResults;->mtu:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 95
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 129
    invoke-super {p0, p1, p2}, Landroid/net/StaticIpConfiguration;->writeToParcel(Landroid/os/Parcel;I)V

    .line 130
    iget v0, p0, Landroid/net/DhcpResults;->leaseDuration:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 131
    iget v0, p0, Landroid/net/DhcpResults;->mtu:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 132
    iget-object v0, p0, Landroid/net/DhcpResults;->serverAddress:Ljava/net/Inet4Address;

    invoke-static {p1, v0, p2}, Landroid/net/NetworkUtils;->parcelInetAddress(Landroid/os/Parcel;Ljava/net/InetAddress;I)V

    .line 133
    iget-object v0, p0, Landroid/net/DhcpResults;->vendorInfo:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 134
    return-void
.end method
