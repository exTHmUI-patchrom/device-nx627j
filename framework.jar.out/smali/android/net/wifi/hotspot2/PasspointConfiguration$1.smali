.class Landroid/net/wifi/hotspot2/PasspointConfiguration$1;
.super Ljava/lang/Object;
.source "PasspointConfiguration.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/wifi/hotspot2/PasspointConfiguration;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Landroid/net/wifi/hotspot2/PasspointConfiguration;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 517
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private readTrustRootCerts(Landroid/os/Parcel;)Ljava/util/Map;
    .locals 5
    .param p1, "in"    # Landroid/os/Parcel;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Parcel;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "[B>;"
        }
    .end annotation

    .line 551
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 552
    .local v0, "size":I
    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 553
    const/4 v1, 0x0

    return-object v1

    .line 555
    :cond_0
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1, v0}, Ljava/util/HashMap;-><init>(I)V

    .line 556
    .local v1, "trustRootCerts":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;[B>;"
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_1

    .line 557
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 558
    .local v3, "key":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v4

    .line 559
    .local v4, "value":[B
    invoke-interface {v1, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 556
    .end local v3    # "key":Ljava/lang/String;
    .end local v4    # "value":[B
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 561
    .end local v2    # "i":I
    :cond_1
    return-object v1
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Landroid/net/wifi/hotspot2/PasspointConfiguration;
    .locals 3
    .param p1, "in"    # Landroid/os/Parcel;

    .line 520
    new-instance v0, Landroid/net/wifi/hotspot2/PasspointConfiguration;

    invoke-direct {v0}, Landroid/net/wifi/hotspot2/PasspointConfiguration;-><init>()V

    .line 521
    .local v0, "config":Landroid/net/wifi/hotspot2/PasspointConfiguration;
    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Landroid/net/wifi/hotspot2/pps/HomeSp;

    invoke-virtual {v0, v2}, Landroid/net/wifi/hotspot2/PasspointConfiguration;->setHomeSp(Landroid/net/wifi/hotspot2/pps/HomeSp;)V

    .line 522
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Landroid/net/wifi/hotspot2/pps/Credential;

    invoke-virtual {v0, v2}, Landroid/net/wifi/hotspot2/PasspointConfiguration;->setCredential(Landroid/net/wifi/hotspot2/pps/Credential;)V

    .line 523
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Landroid/net/wifi/hotspot2/pps/Policy;

    invoke-virtual {v0, v2}, Landroid/net/wifi/hotspot2/PasspointConfiguration;->setPolicy(Landroid/net/wifi/hotspot2/pps/Policy;)V

    .line 524
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/net/wifi/hotspot2/pps/UpdateParameter;

    invoke-virtual {v0, v1}, Landroid/net/wifi/hotspot2/PasspointConfiguration;->setSubscriptionUpdate(Landroid/net/wifi/hotspot2/pps/UpdateParameter;)V

    .line 525
    invoke-direct {p0, p1}, Landroid/net/wifi/hotspot2/PasspointConfiguration$1;->readTrustRootCerts(Landroid/os/Parcel;)Ljava/util/Map;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/net/wifi/hotspot2/PasspointConfiguration;->setTrustRootCertList(Ljava/util/Map;)V

    .line 526
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/net/wifi/hotspot2/PasspointConfiguration;->setUpdateIdentifier(I)V

    .line 527
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/net/wifi/hotspot2/PasspointConfiguration;->setCredentialPriority(I)V

    .line 528
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Landroid/net/wifi/hotspot2/PasspointConfiguration;->setSubscriptionCreationTimeInMillis(J)V

    .line 529
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Landroid/net/wifi/hotspot2/PasspointConfiguration;->setSubscriptionExpirationTimeInMillis(J)V

    .line 530
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/net/wifi/hotspot2/PasspointConfiguration;->setSubscriptionType(Ljava/lang/String;)V

    .line 531
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Landroid/net/wifi/hotspot2/PasspointConfiguration;->setUsageLimitUsageTimePeriodInMinutes(J)V

    .line 532
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Landroid/net/wifi/hotspot2/PasspointConfiguration;->setUsageLimitStartTimeInMillis(J)V

    .line 533
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Landroid/net/wifi/hotspot2/PasspointConfiguration;->setUsageLimitDataLimit(J)V

    .line 534
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Landroid/net/wifi/hotspot2/PasspointConfiguration;->setUsageLimitTimeLimitInMinutes(J)V

    .line 535
    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 517
    invoke-virtual {p0, p1}, Landroid/net/wifi/hotspot2/PasspointConfiguration$1;->createFromParcel(Landroid/os/Parcel;)Landroid/net/wifi/hotspot2/PasspointConfiguration;

    move-result-object p1

    return-object p1
.end method

.method public newArray(I)[Landroid/net/wifi/hotspot2/PasspointConfiguration;
    .locals 1
    .param p1, "size"    # I

    .line 540
    new-array v0, p1, [Landroid/net/wifi/hotspot2/PasspointConfiguration;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 517
    invoke-virtual {p0, p1}, Landroid/net/wifi/hotspot2/PasspointConfiguration$1;->newArray(I)[Landroid/net/wifi/hotspot2/PasspointConfiguration;

    move-result-object p1

    return-object p1
.end method
