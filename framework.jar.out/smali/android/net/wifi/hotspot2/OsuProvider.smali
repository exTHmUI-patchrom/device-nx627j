.class public final Landroid/net/wifi/hotspot2/OsuProvider;
.super Ljava/lang/Object;
.source "OsuProvider.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/net/wifi/hotspot2/OsuProvider;",
            ">;"
        }
    .end annotation
.end field

.field public static final METHOD_OMA_DM:I = 0x0

.field public static final METHOD_SOAP_XML_SPP:I = 0x1


# instance fields
.field private final mFriendlyName:Ljava/lang/String;

.field private final mIcon:Landroid/graphics/drawable/Icon;

.field private final mMethodList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final mNetworkAccessIdentifier:Ljava/lang/String;

.field private final mOsuSsid:Landroid/net/wifi/WifiSsid;

.field private final mServerUri:Landroid/net/Uri;

.field private final mServiceDescription:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 210
    new-instance v0, Landroid/net/wifi/hotspot2/OsuProvider$1;

    invoke-direct {v0}, Landroid/net/wifi/hotspot2/OsuProvider$1;-><init>()V

    sput-object v0, Landroid/net/wifi/hotspot2/OsuProvider;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Landroid/net/wifi/WifiSsid;Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;Ljava/lang/String;Ljava/util/List;Landroid/graphics/drawable/Icon;)V
    .locals 1
    .param p1, "osuSsid"    # Landroid/net/wifi/WifiSsid;
    .param p2, "friendlyName"    # Ljava/lang/String;
    .param p3, "serviceDescription"    # Ljava/lang/String;
    .param p4, "serverUri"    # Landroid/net/Uri;
    .param p5, "nai"    # Ljava/lang/String;
    .param p7, "icon"    # Landroid/graphics/drawable/Icon;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/net/wifi/WifiSsid;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Landroid/net/Uri;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;",
            "Landroid/graphics/drawable/Icon;",
            ")V"
        }
    .end annotation

    .line 85
    .local p6, "methodList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 86
    iput-object p1, p0, Landroid/net/wifi/hotspot2/OsuProvider;->mOsuSsid:Landroid/net/wifi/WifiSsid;

    .line 87
    iput-object p2, p0, Landroid/net/wifi/hotspot2/OsuProvider;->mFriendlyName:Ljava/lang/String;

    .line 88
    iput-object p3, p0, Landroid/net/wifi/hotspot2/OsuProvider;->mServiceDescription:Ljava/lang/String;

    .line 89
    iput-object p4, p0, Landroid/net/wifi/hotspot2/OsuProvider;->mServerUri:Landroid/net/Uri;

    .line 90
    iput-object p5, p0, Landroid/net/wifi/hotspot2/OsuProvider;->mNetworkAccessIdentifier:Ljava/lang/String;

    .line 91
    if-nez p6, :cond_0

    .line 92
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/net/wifi/hotspot2/OsuProvider;->mMethodList:Ljava/util/List;

    goto :goto_0

    .line 94
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p6}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Landroid/net/wifi/hotspot2/OsuProvider;->mMethodList:Ljava/util/List;

    .line 96
    :goto_0
    iput-object p7, p0, Landroid/net/wifi/hotspot2/OsuProvider;->mIcon:Landroid/graphics/drawable/Icon;

    .line 97
    return-void
.end method

.method public constructor <init>(Landroid/net/wifi/hotspot2/OsuProvider;)V
    .locals 2
    .param p1, "source"    # Landroid/net/wifi/hotspot2/OsuProvider;

    .line 104
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 105
    if-nez p1, :cond_0

    .line 106
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/net/wifi/hotspot2/OsuProvider;->mOsuSsid:Landroid/net/wifi/WifiSsid;

    .line 107
    iput-object v0, p0, Landroid/net/wifi/hotspot2/OsuProvider;->mFriendlyName:Ljava/lang/String;

    .line 108
    iput-object v0, p0, Landroid/net/wifi/hotspot2/OsuProvider;->mServiceDescription:Ljava/lang/String;

    .line 109
    iput-object v0, p0, Landroid/net/wifi/hotspot2/OsuProvider;->mServerUri:Landroid/net/Uri;

    .line 110
    iput-object v0, p0, Landroid/net/wifi/hotspot2/OsuProvider;->mNetworkAccessIdentifier:Ljava/lang/String;

    .line 111
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Landroid/net/wifi/hotspot2/OsuProvider;->mMethodList:Ljava/util/List;

    .line 112
    iput-object v0, p0, Landroid/net/wifi/hotspot2/OsuProvider;->mIcon:Landroid/graphics/drawable/Icon;

    .line 113
    return-void

    .line 116
    :cond_0
    iget-object v0, p1, Landroid/net/wifi/hotspot2/OsuProvider;->mOsuSsid:Landroid/net/wifi/WifiSsid;

    iput-object v0, p0, Landroid/net/wifi/hotspot2/OsuProvider;->mOsuSsid:Landroid/net/wifi/WifiSsid;

    .line 117
    iget-object v0, p1, Landroid/net/wifi/hotspot2/OsuProvider;->mFriendlyName:Ljava/lang/String;

    iput-object v0, p0, Landroid/net/wifi/hotspot2/OsuProvider;->mFriendlyName:Ljava/lang/String;

    .line 118
    iget-object v0, p1, Landroid/net/wifi/hotspot2/OsuProvider;->mServiceDescription:Ljava/lang/String;

    iput-object v0, p0, Landroid/net/wifi/hotspot2/OsuProvider;->mServiceDescription:Ljava/lang/String;

    .line 119
    iget-object v0, p1, Landroid/net/wifi/hotspot2/OsuProvider;->mServerUri:Landroid/net/Uri;

    iput-object v0, p0, Landroid/net/wifi/hotspot2/OsuProvider;->mServerUri:Landroid/net/Uri;

    .line 120
    iget-object v0, p1, Landroid/net/wifi/hotspot2/OsuProvider;->mNetworkAccessIdentifier:Ljava/lang/String;

    iput-object v0, p0, Landroid/net/wifi/hotspot2/OsuProvider;->mNetworkAccessIdentifier:Ljava/lang/String;

    .line 121
    iget-object v0, p1, Landroid/net/wifi/hotspot2/OsuProvider;->mMethodList:Ljava/util/List;

    if-nez v0, :cond_1

    .line 122
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/net/wifi/hotspot2/OsuProvider;->mMethodList:Ljava/util/List;

    goto :goto_0

    .line 124
    :cond_1
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p1, Landroid/net/wifi/hotspot2/OsuProvider;->mMethodList:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Landroid/net/wifi/hotspot2/OsuProvider;->mMethodList:Ljava/util/List;

    .line 126
    :goto_0
    iget-object v0, p1, Landroid/net/wifi/hotspot2/OsuProvider;->mIcon:Landroid/graphics/drawable/Icon;

    iput-object v0, p0, Landroid/net/wifi/hotspot2/OsuProvider;->mIcon:Landroid/graphics/drawable/Icon;

    .line 127
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .line 159
    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "thatObject"    # Ljava/lang/Object;

    .line 175
    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    .line 176
    return v0

    .line 178
    :cond_0
    instance-of v1, p1, Landroid/net/wifi/hotspot2/OsuProvider;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    .line 179
    return v2

    .line 181
    :cond_1
    move-object v1, p1

    check-cast v1, Landroid/net/wifi/hotspot2/OsuProvider;

    .line 182
    .local v1, "that":Landroid/net/wifi/hotspot2/OsuProvider;
    iget-object v3, p0, Landroid/net/wifi/hotspot2/OsuProvider;->mOsuSsid:Landroid/net/wifi/WifiSsid;

    if-nez v3, :cond_2

    iget-object v3, v1, Landroid/net/wifi/hotspot2/OsuProvider;->mOsuSsid:Landroid/net/wifi/WifiSsid;

    if-nez v3, :cond_6

    goto :goto_0

    :cond_2
    iget-object v3, p0, Landroid/net/wifi/hotspot2/OsuProvider;->mOsuSsid:Landroid/net/wifi/WifiSsid;

    iget-object v4, v1, Landroid/net/wifi/hotspot2/OsuProvider;->mOsuSsid:Landroid/net/wifi/WifiSsid;

    invoke-virtual {v3, v4}, Landroid/net/wifi/WifiSsid;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    :goto_0
    iget-object v3, p0, Landroid/net/wifi/hotspot2/OsuProvider;->mFriendlyName:Ljava/lang/String;

    iget-object v4, v1, Landroid/net/wifi/hotspot2/OsuProvider;->mFriendlyName:Ljava/lang/String;

    .line 183
    invoke-static {v3, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_6

    iget-object v3, p0, Landroid/net/wifi/hotspot2/OsuProvider;->mServiceDescription:Ljava/lang/String;

    iget-object v4, v1, Landroid/net/wifi/hotspot2/OsuProvider;->mServiceDescription:Ljava/lang/String;

    .line 184
    invoke-static {v3, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_6

    iget-object v3, p0, Landroid/net/wifi/hotspot2/OsuProvider;->mServerUri:Landroid/net/Uri;

    if-nez v3, :cond_3

    iget-object v3, v1, Landroid/net/wifi/hotspot2/OsuProvider;->mServerUri:Landroid/net/Uri;

    if-nez v3, :cond_6

    goto :goto_1

    :cond_3
    iget-object v3, p0, Landroid/net/wifi/hotspot2/OsuProvider;->mServerUri:Landroid/net/Uri;

    iget-object v4, v1, Landroid/net/wifi/hotspot2/OsuProvider;->mServerUri:Landroid/net/Uri;

    .line 186
    invoke-virtual {v3, v4}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    :goto_1
    iget-object v3, p0, Landroid/net/wifi/hotspot2/OsuProvider;->mNetworkAccessIdentifier:Ljava/lang/String;

    iget-object v4, v1, Landroid/net/wifi/hotspot2/OsuProvider;->mNetworkAccessIdentifier:Ljava/lang/String;

    .line 187
    invoke-static {v3, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_6

    iget-object v3, p0, Landroid/net/wifi/hotspot2/OsuProvider;->mMethodList:Ljava/util/List;

    if-nez v3, :cond_4

    iget-object v3, v1, Landroid/net/wifi/hotspot2/OsuProvider;->mMethodList:Ljava/util/List;

    if-nez v3, :cond_6

    goto :goto_2

    :cond_4
    iget-object v3, p0, Landroid/net/wifi/hotspot2/OsuProvider;->mMethodList:Ljava/util/List;

    iget-object v4, v1, Landroid/net/wifi/hotspot2/OsuProvider;->mMethodList:Ljava/util/List;

    .line 189
    invoke-interface {v3, v4}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    :goto_2
    iget-object v3, p0, Landroid/net/wifi/hotspot2/OsuProvider;->mIcon:Landroid/graphics/drawable/Icon;

    if-nez v3, :cond_5

    iget-object v3, v1, Landroid/net/wifi/hotspot2/OsuProvider;->mIcon:Landroid/graphics/drawable/Icon;

    if-nez v3, :cond_6

    goto :goto_3

    :cond_5
    iget-object v3, p0, Landroid/net/wifi/hotspot2/OsuProvider;->mIcon:Landroid/graphics/drawable/Icon;

    iget-object v4, v1, Landroid/net/wifi/hotspot2/OsuProvider;->mIcon:Landroid/graphics/drawable/Icon;

    .line 190
    invoke-virtual {v3, v4}, Landroid/graphics/drawable/Icon;->sameAs(Landroid/graphics/drawable/Icon;)Z

    move-result v3

    if-eqz v3, :cond_6

    :goto_3
    goto :goto_4

    .line 182
    :cond_6
    move v0, v2

    :goto_4
    return v0
.end method

.method public getFriendlyName()Ljava/lang/String;
    .locals 1

    .line 134
    iget-object v0, p0, Landroid/net/wifi/hotspot2/OsuProvider;->mFriendlyName:Ljava/lang/String;

    return-object v0
.end method

.method public getIcon()Landroid/graphics/drawable/Icon;
    .locals 1

    .line 154
    iget-object v0, p0, Landroid/net/wifi/hotspot2/OsuProvider;->mIcon:Landroid/graphics/drawable/Icon;

    return-object v0
.end method

.method public getMethodList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 150
    iget-object v0, p0, Landroid/net/wifi/hotspot2/OsuProvider;->mMethodList:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getNetworkAccessIdentifier()Ljava/lang/String;
    .locals 1

    .line 146
    iget-object v0, p0, Landroid/net/wifi/hotspot2/OsuProvider;->mNetworkAccessIdentifier:Ljava/lang/String;

    return-object v0
.end method

.method public getOsuSsid()Landroid/net/wifi/WifiSsid;
    .locals 1

    .line 130
    iget-object v0, p0, Landroid/net/wifi/hotspot2/OsuProvider;->mOsuSsid:Landroid/net/wifi/WifiSsid;

    return-object v0
.end method

.method public getServerUri()Landroid/net/Uri;
    .locals 1

    .line 142
    iget-object v0, p0, Landroid/net/wifi/hotspot2/OsuProvider;->mServerUri:Landroid/net/Uri;

    return-object v0
.end method

.method public getServiceDescription()Ljava/lang/String;
    .locals 1

    .line 138
    iget-object v0, p0, Landroid/net/wifi/hotspot2/OsuProvider;->mServiceDescription:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    .line 195
    const/4 v0, 0x7

    new-array v0, v0, [Ljava/lang/Object;

    iget-object v1, p0, Landroid/net/wifi/hotspot2/OsuProvider;->mOsuSsid:Landroid/net/wifi/WifiSsid;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v1, p0, Landroid/net/wifi/hotspot2/OsuProvider;->mFriendlyName:Ljava/lang/String;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget-object v1, p0, Landroid/net/wifi/hotspot2/OsuProvider;->mServiceDescription:Ljava/lang/String;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    iget-object v1, p0, Landroid/net/wifi/hotspot2/OsuProvider;->mServerUri:Landroid/net/Uri;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    iget-object v1, p0, Landroid/net/wifi/hotspot2/OsuProvider;->mNetworkAccessIdentifier:Ljava/lang/String;

    const/4 v2, 0x4

    aput-object v1, v0, v2

    iget-object v1, p0, Landroid/net/wifi/hotspot2/OsuProvider;->mMethodList:Ljava/util/List;

    const/4 v2, 0x5

    aput-object v1, v0, v2

    iget-object v1, p0, Landroid/net/wifi/hotspot2/OsuProvider;->mIcon:Landroid/graphics/drawable/Icon;

    const/4 v2, 0x6

    aput-object v1, v0, v2

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 201
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "OsuProvider{mOsuSsid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroid/net/wifi/hotspot2/OsuProvider;->mOsuSsid:Landroid/net/wifi/WifiSsid;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " mFriendlyName="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroid/net/wifi/hotspot2/OsuProvider;->mFriendlyName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " mServiceDescription="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroid/net/wifi/hotspot2/OsuProvider;->mServiceDescription:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " mServerUri="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroid/net/wifi/hotspot2/OsuProvider;->mServerUri:Landroid/net/Uri;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " mNetworkAccessIdentifier="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroid/net/wifi/hotspot2/OsuProvider;->mNetworkAccessIdentifier:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " mMethodList="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroid/net/wifi/hotspot2/OsuProvider;->mMethodList:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " mIcon="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroid/net/wifi/hotspot2/OsuProvider;->mIcon:Landroid/graphics/drawable/Icon;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 164
    iget-object v0, p0, Landroid/net/wifi/hotspot2/OsuProvider;->mOsuSsid:Landroid/net/wifi/WifiSsid;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 165
    iget-object v0, p0, Landroid/net/wifi/hotspot2/OsuProvider;->mFriendlyName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 166
    iget-object v0, p0, Landroid/net/wifi/hotspot2/OsuProvider;->mServiceDescription:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 167
    iget-object v0, p0, Landroid/net/wifi/hotspot2/OsuProvider;->mServerUri:Landroid/net/Uri;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 168
    iget-object v0, p0, Landroid/net/wifi/hotspot2/OsuProvider;->mNetworkAccessIdentifier:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 169
    iget-object v0, p0, Landroid/net/wifi/hotspot2/OsuProvider;->mMethodList:Ljava/util/List;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeList(Ljava/util/List;)V

    .line 170
    iget-object v0, p0, Landroid/net/wifi/hotspot2/OsuProvider;->mIcon:Landroid/graphics/drawable/Icon;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 171
    return-void
.end method
