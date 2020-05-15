.class public final Landroid/net/wifi/hotspot2/pps/Policy;
.super Ljava/lang/Object;
.source "Policy.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/wifi/hotspot2/pps/Policy$RoamingPartner;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/net/wifi/hotspot2/pps/Policy;",
            ">;"
        }
    .end annotation
.end field

.field private static final MAX_EXCLUSION_SSIDS:I = 0x80

.field private static final MAX_PORT_STRING_BYTES:I = 0x40

.field private static final MAX_SSID_BYTES:I = 0x20

.field private static final NULL_VALUE:I = -0x1

.field private static final TAG:Ljava/lang/String; = "Policy"


# instance fields
.field private mExcludedSsidList:[Ljava/lang/String;

.field private mMaximumBssLoadValue:I

.field private mMinHomeDownlinkBandwidth:J

.field private mMinHomeUplinkBandwidth:J

.field private mMinRoamingDownlinkBandwidth:J

.field private mMinRoamingUplinkBandwidth:J

.field private mPolicyUpdate:Landroid/net/wifi/hotspot2/pps/UpdateParameter;

.field private mPreferredRoamingPartnerList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/net/wifi/hotspot2/pps/Policy$RoamingPartner;",
            ">;"
        }
    .end annotation
.end field

.field private mRequiredProtoPortMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 478
    new-instance v0, Landroid/net/wifi/hotspot2/pps/Policy$1;

    invoke-direct {v0}, Landroid/net/wifi/hotspot2/pps/Policy$1;-><init>()V

    sput-object v0, Landroid/net/wifi/hotspot2/pps/Policy;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 322
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 78
    const-wide/high16 v0, -0x8000000000000000L

    iput-wide v0, p0, Landroid/net/wifi/hotspot2/pps/Policy;->mMinHomeDownlinkBandwidth:J

    .line 85
    iput-wide v0, p0, Landroid/net/wifi/hotspot2/pps/Policy;->mMinHomeUplinkBandwidth:J

    .line 102
    iput-wide v0, p0, Landroid/net/wifi/hotspot2/pps/Policy;->mMinRoamingDownlinkBandwidth:J

    .line 109
    iput-wide v0, p0, Landroid/net/wifi/hotspot2/pps/Policy;->mMinRoamingUplinkBandwidth:J

    .line 120
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/net/wifi/hotspot2/pps/Policy;->mExcludedSsidList:[Ljava/lang/String;

    .line 132
    iput-object v0, p0, Landroid/net/wifi/hotspot2/pps/Policy;->mRequiredProtoPortMap:Ljava/util/Map;

    .line 145
    const/high16 v1, -0x80000000

    iput v1, p0, Landroid/net/wifi/hotspot2/pps/Policy;->mMaximumBssLoadValue:I

    .line 300
    iput-object v0, p0, Landroid/net/wifi/hotspot2/pps/Policy;->mPreferredRoamingPartnerList:Ljava/util/List;

    .line 311
    iput-object v0, p0, Landroid/net/wifi/hotspot2/pps/Policy;->mPolicyUpdate:Landroid/net/wifi/hotspot2/pps/UpdateParameter;

    .line 322
    return-void
.end method

.method public constructor <init>(Landroid/net/wifi/hotspot2/pps/Policy;)V
    .locals 2
    .param p1, "source"    # Landroid/net/wifi/hotspot2/pps/Policy;

    .line 329
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 78
    const-wide/high16 v0, -0x8000000000000000L

    iput-wide v0, p0, Landroid/net/wifi/hotspot2/pps/Policy;->mMinHomeDownlinkBandwidth:J

    .line 85
    iput-wide v0, p0, Landroid/net/wifi/hotspot2/pps/Policy;->mMinHomeUplinkBandwidth:J

    .line 102
    iput-wide v0, p0, Landroid/net/wifi/hotspot2/pps/Policy;->mMinRoamingDownlinkBandwidth:J

    .line 109
    iput-wide v0, p0, Landroid/net/wifi/hotspot2/pps/Policy;->mMinRoamingUplinkBandwidth:J

    .line 120
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/net/wifi/hotspot2/pps/Policy;->mExcludedSsidList:[Ljava/lang/String;

    .line 132
    iput-object v0, p0, Landroid/net/wifi/hotspot2/pps/Policy;->mRequiredProtoPortMap:Ljava/util/Map;

    .line 145
    const/high16 v1, -0x80000000

    iput v1, p0, Landroid/net/wifi/hotspot2/pps/Policy;->mMaximumBssLoadValue:I

    .line 300
    iput-object v0, p0, Landroid/net/wifi/hotspot2/pps/Policy;->mPreferredRoamingPartnerList:Ljava/util/List;

    .line 311
    iput-object v0, p0, Landroid/net/wifi/hotspot2/pps/Policy;->mPolicyUpdate:Landroid/net/wifi/hotspot2/pps/UpdateParameter;

    .line 330
    if-nez p1, :cond_0

    .line 331
    return-void

    .line 333
    :cond_0
    iget-wide v0, p1, Landroid/net/wifi/hotspot2/pps/Policy;->mMinHomeDownlinkBandwidth:J

    iput-wide v0, p0, Landroid/net/wifi/hotspot2/pps/Policy;->mMinHomeDownlinkBandwidth:J

    .line 334
    iget-wide v0, p1, Landroid/net/wifi/hotspot2/pps/Policy;->mMinHomeUplinkBandwidth:J

    iput-wide v0, p0, Landroid/net/wifi/hotspot2/pps/Policy;->mMinHomeUplinkBandwidth:J

    .line 335
    iget-wide v0, p1, Landroid/net/wifi/hotspot2/pps/Policy;->mMinRoamingDownlinkBandwidth:J

    iput-wide v0, p0, Landroid/net/wifi/hotspot2/pps/Policy;->mMinRoamingDownlinkBandwidth:J

    .line 336
    iget-wide v0, p1, Landroid/net/wifi/hotspot2/pps/Policy;->mMinRoamingUplinkBandwidth:J

    iput-wide v0, p0, Landroid/net/wifi/hotspot2/pps/Policy;->mMinRoamingUplinkBandwidth:J

    .line 337
    iget v0, p1, Landroid/net/wifi/hotspot2/pps/Policy;->mMaximumBssLoadValue:I

    iput v0, p0, Landroid/net/wifi/hotspot2/pps/Policy;->mMaximumBssLoadValue:I

    .line 338
    iget-object v0, p1, Landroid/net/wifi/hotspot2/pps/Policy;->mExcludedSsidList:[Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 339
    iget-object v0, p1, Landroid/net/wifi/hotspot2/pps/Policy;->mExcludedSsidList:[Ljava/lang/String;

    iget-object v1, p1, Landroid/net/wifi/hotspot2/pps/Policy;->mExcludedSsidList:[Ljava/lang/String;

    array-length v1, v1

    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    iput-object v0, p0, Landroid/net/wifi/hotspot2/pps/Policy;->mExcludedSsidList:[Ljava/lang/String;

    .line 342
    :cond_1
    iget-object v0, p1, Landroid/net/wifi/hotspot2/pps/Policy;->mRequiredProtoPortMap:Ljava/util/Map;

    if-eqz v0, :cond_2

    .line 343
    iget-object v0, p1, Landroid/net/wifi/hotspot2/pps/Policy;->mRequiredProtoPortMap:Ljava/util/Map;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Landroid/net/wifi/hotspot2/pps/Policy;->mRequiredProtoPortMap:Ljava/util/Map;

    .line 345
    :cond_2
    iget-object v0, p1, Landroid/net/wifi/hotspot2/pps/Policy;->mPreferredRoamingPartnerList:Ljava/util/List;

    if-eqz v0, :cond_3

    .line 346
    iget-object v0, p1, Landroid/net/wifi/hotspot2/pps/Policy;->mPreferredRoamingPartnerList:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Landroid/net/wifi/hotspot2/pps/Policy;->mPreferredRoamingPartnerList:Ljava/util/List;

    .line 349
    :cond_3
    iget-object v0, p1, Landroid/net/wifi/hotspot2/pps/Policy;->mPolicyUpdate:Landroid/net/wifi/hotspot2/pps/UpdateParameter;

    if-eqz v0, :cond_4

    .line 350
    new-instance v0, Landroid/net/wifi/hotspot2/pps/UpdateParameter;

    iget-object v1, p1, Landroid/net/wifi/hotspot2/pps/Policy;->mPolicyUpdate:Landroid/net/wifi/hotspot2/pps/UpdateParameter;

    invoke-direct {v0, v1}, Landroid/net/wifi/hotspot2/pps/UpdateParameter;-><init>(Landroid/net/wifi/hotspot2/pps/UpdateParameter;)V

    iput-object v0, p0, Landroid/net/wifi/hotspot2/pps/Policy;->mPolicyUpdate:Landroid/net/wifi/hotspot2/pps/UpdateParameter;

    .line 352
    :cond_4
    return-void
.end method

.method private static writeProtoPortMap(Landroid/os/Parcel;Ljava/util/Map;)V
    .locals 3
    .param p0, "dest"    # Landroid/os/Parcel;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Parcel;",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 547
    .local p1, "protoPortMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Ljava/lang/String;>;"
    if-nez p1, :cond_0

    .line 548
    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 549
    return-void

    .line 551
    :cond_0
    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 552
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 553
    .local v1, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Ljava/lang/String;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {p0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 554
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {p0, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 555
    .end local v1    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Ljava/lang/String;>;"
    goto :goto_0

    .line 556
    :cond_1
    return-void
.end method

.method private static writeRoamingPartnerList(Landroid/os/Parcel;ILjava/util/List;)V
    .locals 2
    .param p0, "dest"    # Landroid/os/Parcel;
    .param p1, "flags"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Parcel;",
            "I",
            "Ljava/util/List<",
            "Landroid/net/wifi/hotspot2/pps/Policy$RoamingPartner;",
            ">;)V"
        }
    .end annotation

    .line 567
    .local p2, "partnerList":Ljava/util/List;, "Ljava/util/List<Landroid/net/wifi/hotspot2/pps/Policy$RoamingPartner;>;"
    if-nez p2, :cond_0

    .line 568
    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 569
    return-void

    .line 571
    :cond_0
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 572
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/wifi/hotspot2/pps/Policy$RoamingPartner;

    .line 573
    .local v1, "partner":Landroid/net/wifi/hotspot2/pps/Policy$RoamingPartner;
    invoke-virtual {p0, v1, p1}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 574
    .end local v1    # "partner":Landroid/net/wifi/hotspot2/pps/Policy$RoamingPartner;
    goto :goto_0

    .line 575
    :cond_1
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .line 356
    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 7
    .param p1, "thatObject"    # Ljava/lang/Object;

    .line 374
    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    .line 375
    return v0

    .line 377
    :cond_0
    instance-of v1, p1, Landroid/net/wifi/hotspot2/pps/Policy;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    .line 378
    return v2

    .line 380
    :cond_1
    move-object v1, p1

    check-cast v1, Landroid/net/wifi/hotspot2/pps/Policy;

    .line 382
    .local v1, "that":Landroid/net/wifi/hotspot2/pps/Policy;
    iget-wide v3, p0, Landroid/net/wifi/hotspot2/pps/Policy;->mMinHomeDownlinkBandwidth:J

    iget-wide v5, v1, Landroid/net/wifi/hotspot2/pps/Policy;->mMinHomeDownlinkBandwidth:J

    cmp-long v3, v3, v5

    if-nez v3, :cond_5

    iget-wide v3, p0, Landroid/net/wifi/hotspot2/pps/Policy;->mMinHomeUplinkBandwidth:J

    iget-wide v5, v1, Landroid/net/wifi/hotspot2/pps/Policy;->mMinHomeUplinkBandwidth:J

    cmp-long v3, v3, v5

    if-nez v3, :cond_5

    iget-wide v3, p0, Landroid/net/wifi/hotspot2/pps/Policy;->mMinRoamingDownlinkBandwidth:J

    iget-wide v5, v1, Landroid/net/wifi/hotspot2/pps/Policy;->mMinRoamingDownlinkBandwidth:J

    cmp-long v3, v3, v5

    if-nez v3, :cond_5

    iget-wide v3, p0, Landroid/net/wifi/hotspot2/pps/Policy;->mMinRoamingUplinkBandwidth:J

    iget-wide v5, v1, Landroid/net/wifi/hotspot2/pps/Policy;->mMinRoamingUplinkBandwidth:J

    cmp-long v3, v3, v5

    if-nez v3, :cond_5

    iget-object v3, p0, Landroid/net/wifi/hotspot2/pps/Policy;->mExcludedSsidList:[Ljava/lang/String;

    iget-object v4, v1, Landroid/net/wifi/hotspot2/pps/Policy;->mExcludedSsidList:[Ljava/lang/String;

    .line 386
    invoke-static {v3, v4}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    iget-object v3, p0, Landroid/net/wifi/hotspot2/pps/Policy;->mRequiredProtoPortMap:Ljava/util/Map;

    if-nez v3, :cond_2

    iget-object v3, v1, Landroid/net/wifi/hotspot2/pps/Policy;->mRequiredProtoPortMap:Ljava/util/Map;

    if-nez v3, :cond_5

    goto :goto_0

    :cond_2
    iget-object v3, p0, Landroid/net/wifi/hotspot2/pps/Policy;->mRequiredProtoPortMap:Ljava/util/Map;

    iget-object v4, v1, Landroid/net/wifi/hotspot2/pps/Policy;->mRequiredProtoPortMap:Ljava/util/Map;

    .line 388
    invoke-interface {v3, v4}, Ljava/util/Map;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    :goto_0
    iget v3, p0, Landroid/net/wifi/hotspot2/pps/Policy;->mMaximumBssLoadValue:I

    iget v4, v1, Landroid/net/wifi/hotspot2/pps/Policy;->mMaximumBssLoadValue:I

    if-ne v3, v4, :cond_5

    iget-object v3, p0, Landroid/net/wifi/hotspot2/pps/Policy;->mPreferredRoamingPartnerList:Ljava/util/List;

    if-nez v3, :cond_3

    iget-object v3, v1, Landroid/net/wifi/hotspot2/pps/Policy;->mPreferredRoamingPartnerList:Ljava/util/List;

    if-nez v3, :cond_5

    goto :goto_1

    :cond_3
    iget-object v3, p0, Landroid/net/wifi/hotspot2/pps/Policy;->mPreferredRoamingPartnerList:Ljava/util/List;

    iget-object v4, v1, Landroid/net/wifi/hotspot2/pps/Policy;->mPreferredRoamingPartnerList:Ljava/util/List;

    .line 392
    invoke-interface {v3, v4}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    :goto_1
    iget-object v3, p0, Landroid/net/wifi/hotspot2/pps/Policy;->mPolicyUpdate:Landroid/net/wifi/hotspot2/pps/UpdateParameter;

    if-nez v3, :cond_4

    iget-object v3, v1, Landroid/net/wifi/hotspot2/pps/Policy;->mPolicyUpdate:Landroid/net/wifi/hotspot2/pps/UpdateParameter;

    if-nez v3, :cond_5

    goto :goto_2

    :cond_4
    iget-object v3, p0, Landroid/net/wifi/hotspot2/pps/Policy;->mPolicyUpdate:Landroid/net/wifi/hotspot2/pps/UpdateParameter;

    iget-object v4, v1, Landroid/net/wifi/hotspot2/pps/Policy;->mPolicyUpdate:Landroid/net/wifi/hotspot2/pps/UpdateParameter;

    .line 394
    invoke-virtual {v3, v4}, Landroid/net/wifi/hotspot2/pps/UpdateParameter;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    :goto_2
    goto :goto_3

    .line 382
    :cond_5
    move v0, v2

    :goto_3
    return v0
.end method

.method public getExcludedSsidList()[Ljava/lang/String;
    .locals 1

    .line 125
    iget-object v0, p0, Landroid/net/wifi/hotspot2/pps/Policy;->mExcludedSsidList:[Ljava/lang/String;

    return-object v0
.end method

.method public getMaximumBssLoadValue()I
    .locals 1

    .line 150
    iget v0, p0, Landroid/net/wifi/hotspot2/pps/Policy;->mMaximumBssLoadValue:I

    return v0
.end method

.method public getMinHomeDownlinkBandwidth()J
    .locals 2

    .line 83
    iget-wide v0, p0, Landroid/net/wifi/hotspot2/pps/Policy;->mMinHomeDownlinkBandwidth:J

    return-wide v0
.end method

.method public getMinHomeUplinkBandwidth()J
    .locals 2

    .line 90
    iget-wide v0, p0, Landroid/net/wifi/hotspot2/pps/Policy;->mMinHomeUplinkBandwidth:J

    return-wide v0
.end method

.method public getMinRoamingDownlinkBandwidth()J
    .locals 2

    .line 107
    iget-wide v0, p0, Landroid/net/wifi/hotspot2/pps/Policy;->mMinRoamingDownlinkBandwidth:J

    return-wide v0
.end method

.method public getMinRoamingUplinkBandwidth()J
    .locals 2

    .line 114
    iget-wide v0, p0, Landroid/net/wifi/hotspot2/pps/Policy;->mMinRoamingUplinkBandwidth:J

    return-wide v0
.end method

.method public getPolicyUpdate()Landroid/net/wifi/hotspot2/pps/UpdateParameter;
    .locals 1

    .line 316
    iget-object v0, p0, Landroid/net/wifi/hotspot2/pps/Policy;->mPolicyUpdate:Landroid/net/wifi/hotspot2/pps/UpdateParameter;

    return-object v0
.end method

.method public getPreferredRoamingPartnerList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/net/wifi/hotspot2/pps/Policy$RoamingPartner;",
            ">;"
        }
    .end annotation

    .line 305
    iget-object v0, p0, Landroid/net/wifi/hotspot2/pps/Policy;->mPreferredRoamingPartnerList:Ljava/util/List;

    return-object v0
.end method

.method public getRequiredProtoPortMap()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 137
    iget-object v0, p0, Landroid/net/wifi/hotspot2/pps/Policy;->mRequiredProtoPortMap:Ljava/util/Map;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    .line 399
    const/16 v0, 0x9

    new-array v0, v0, [Ljava/lang/Object;

    iget-wide v1, p0, Landroid/net/wifi/hotspot2/pps/Policy;->mMinHomeDownlinkBandwidth:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-wide v1, p0, Landroid/net/wifi/hotspot2/pps/Policy;->mMinHomeUplinkBandwidth:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget-wide v1, p0, Landroid/net/wifi/hotspot2/pps/Policy;->mMinRoamingDownlinkBandwidth:J

    .line 400
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    iget-wide v1, p0, Landroid/net/wifi/hotspot2/pps/Policy;->mMinRoamingUplinkBandwidth:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/4 v2, 0x3

    aput-object v1, v0, v2

    iget-object v1, p0, Landroid/net/wifi/hotspot2/pps/Policy;->mExcludedSsidList:[Ljava/lang/String;

    const/4 v2, 0x4

    aput-object v1, v0, v2

    iget-object v1, p0, Landroid/net/wifi/hotspot2/pps/Policy;->mRequiredProtoPortMap:Ljava/util/Map;

    const/4 v2, 0x5

    aput-object v1, v0, v2

    iget v1, p0, Landroid/net/wifi/hotspot2/pps/Policy;->mMaximumBssLoadValue:I

    .line 401
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x6

    aput-object v1, v0, v2

    iget-object v1, p0, Landroid/net/wifi/hotspot2/pps/Policy;->mPreferredRoamingPartnerList:Ljava/util/List;

    const/4 v2, 0x7

    aput-object v1, v0, v2

    iget-object v1, p0, Landroid/net/wifi/hotspot2/pps/Policy;->mPolicyUpdate:Landroid/net/wifi/hotspot2/pps/UpdateParameter;

    const/16 v2, 0x8

    aput-object v1, v0, v2

    .line 399
    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public setExcludedSsidList([Ljava/lang/String;)V
    .locals 0
    .param p1, "excludedSsidList"    # [Ljava/lang/String;

    .line 122
    iput-object p1, p0, Landroid/net/wifi/hotspot2/pps/Policy;->mExcludedSsidList:[Ljava/lang/String;

    .line 123
    return-void
.end method

.method public setMaximumBssLoadValue(I)V
    .locals 0
    .param p1, "maximumBssLoadValue"    # I

    .line 147
    iput p1, p0, Landroid/net/wifi/hotspot2/pps/Policy;->mMaximumBssLoadValue:I

    .line 148
    return-void
.end method

.method public setMinHomeDownlinkBandwidth(J)V
    .locals 0
    .param p1, "minHomeDownlinkBandwidth"    # J

    .line 80
    iput-wide p1, p0, Landroid/net/wifi/hotspot2/pps/Policy;->mMinHomeDownlinkBandwidth:J

    .line 81
    return-void
.end method

.method public setMinHomeUplinkBandwidth(J)V
    .locals 0
    .param p1, "minHomeUplinkBandwidth"    # J

    .line 87
    iput-wide p1, p0, Landroid/net/wifi/hotspot2/pps/Policy;->mMinHomeUplinkBandwidth:J

    .line 88
    return-void
.end method

.method public setMinRoamingDownlinkBandwidth(J)V
    .locals 0
    .param p1, "minRoamingDownlinkBandwidth"    # J

    .line 104
    iput-wide p1, p0, Landroid/net/wifi/hotspot2/pps/Policy;->mMinRoamingDownlinkBandwidth:J

    .line 105
    return-void
.end method

.method public setMinRoamingUplinkBandwidth(J)V
    .locals 0
    .param p1, "minRoamingUplinkBandwidth"    # J

    .line 111
    iput-wide p1, p0, Landroid/net/wifi/hotspot2/pps/Policy;->mMinRoamingUplinkBandwidth:J

    .line 112
    return-void
.end method

.method public setPolicyUpdate(Landroid/net/wifi/hotspot2/pps/UpdateParameter;)V
    .locals 0
    .param p1, "policyUpdate"    # Landroid/net/wifi/hotspot2/pps/UpdateParameter;

    .line 313
    iput-object p1, p0, Landroid/net/wifi/hotspot2/pps/Policy;->mPolicyUpdate:Landroid/net/wifi/hotspot2/pps/UpdateParameter;

    .line 314
    return-void
.end method

.method public setPreferredRoamingPartnerList(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/net/wifi/hotspot2/pps/Policy$RoamingPartner;",
            ">;)V"
        }
    .end annotation

    .line 302
    .local p1, "partnerList":Ljava/util/List;, "Ljava/util/List<Landroid/net/wifi/hotspot2/pps/Policy$RoamingPartner;>;"
    iput-object p1, p0, Landroid/net/wifi/hotspot2/pps/Policy;->mPreferredRoamingPartnerList:Ljava/util/List;

    .line 303
    return-void
.end method

.method public setRequiredProtoPortMap(Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 134
    .local p1, "requiredProtoPortMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Ljava/lang/String;>;"
    iput-object p1, p0, Landroid/net/wifi/hotspot2/pps/Policy;->mRequiredProtoPortMap:Ljava/util/Map;

    .line 135
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 407
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 408
    .local v0, "builder":Ljava/lang/StringBuilder;
    const-string v1, "MinHomeDownlinkBandwidth: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Landroid/net/wifi/hotspot2/pps/Policy;->mMinHomeDownlinkBandwidth:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, "\n"

    .line 409
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 410
    const-string v1, "MinHomeUplinkBandwidth: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Landroid/net/wifi/hotspot2/pps/Policy;->mMinHomeUplinkBandwidth:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 411
    const-string v1, "MinRoamingDownlinkBandwidth: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Landroid/net/wifi/hotspot2/pps/Policy;->mMinRoamingDownlinkBandwidth:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, "\n"

    .line 412
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 413
    const-string v1, "MinRoamingUplinkBandwidth: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Landroid/net/wifi/hotspot2/pps/Policy;->mMinRoamingUplinkBandwidth:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, "\n"

    .line 414
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 415
    const-string v1, "ExcludedSSIDList: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroid/net/wifi/hotspot2/pps/Policy;->mExcludedSsidList:[Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 416
    const-string v1, "RequiredProtoPortMap: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroid/net/wifi/hotspot2/pps/Policy;->mRequiredProtoPortMap:Ljava/util/Map;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 417
    const-string v1, "MaximumBSSLoadValue: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/net/wifi/hotspot2/pps/Policy;->mMaximumBssLoadValue:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 418
    const-string v1, "PreferredRoamingPartnerList: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroid/net/wifi/hotspot2/pps/Policy;->mPreferredRoamingPartnerList:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "\n"

    .line 419
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 420
    iget-object v1, p0, Landroid/net/wifi/hotspot2/pps/Policy;->mPolicyUpdate:Landroid/net/wifi/hotspot2/pps/UpdateParameter;

    if-eqz v1, :cond_0

    .line 421
    const-string v1, "PolicyUpdate Begin ---\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 422
    iget-object v1, p0, Landroid/net/wifi/hotspot2/pps/Policy;->mPolicyUpdate:Landroid/net/wifi/hotspot2/pps/UpdateParameter;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 423
    const-string v1, "PolicyUpdate End ---\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 425
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public validate()Z
    .locals 7

    .line 435
    iget-object v0, p0, Landroid/net/wifi/hotspot2/pps/Policy;->mPolicyUpdate:Landroid/net/wifi/hotspot2/pps/UpdateParameter;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 436
    const-string v0, "Policy"

    const-string v2, "PolicyUpdate not specified"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 437
    return v1

    .line 439
    :cond_0
    iget-object v0, p0, Landroid/net/wifi/hotspot2/pps/Policy;->mPolicyUpdate:Landroid/net/wifi/hotspot2/pps/UpdateParameter;

    invoke-virtual {v0}, Landroid/net/wifi/hotspot2/pps/UpdateParameter;->validate()Z

    move-result v0

    if-nez v0, :cond_1

    .line 440
    return v1

    .line 444
    :cond_1
    iget-object v0, p0, Landroid/net/wifi/hotspot2/pps/Policy;->mExcludedSsidList:[Ljava/lang/String;

    if-eqz v0, :cond_4

    .line 445
    iget-object v0, p0, Landroid/net/wifi/hotspot2/pps/Policy;->mExcludedSsidList:[Ljava/lang/String;

    array-length v0, v0

    const/16 v2, 0x80

    if-le v0, v2, :cond_2

    .line 446
    const-string v0, "Policy"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "SSID exclusion list size exceeded the max: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Landroid/net/wifi/hotspot2/pps/Policy;->mExcludedSsidList:[Ljava/lang/String;

    array-length v3, v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 448
    return v1

    .line 450
    :cond_2
    iget-object v0, p0, Landroid/net/wifi/hotspot2/pps/Policy;->mExcludedSsidList:[Ljava/lang/String;

    array-length v2, v0

    move v3, v1

    :goto_0
    if-ge v3, v2, :cond_4

    aget-object v4, v0, v3

    .line 451
    .local v4, "ssid":Ljava/lang/String;
    sget-object v5, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v4, v5}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v5

    array-length v5, v5

    const/16 v6, 0x20

    if-le v5, v6, :cond_3

    .line 452
    const-string v0, "Policy"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid SSID: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 453
    return v1

    .line 450
    .end local v4    # "ssid":Ljava/lang/String;
    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 458
    :cond_4
    iget-object v0, p0, Landroid/net/wifi/hotspot2/pps/Policy;->mRequiredProtoPortMap:Ljava/util/Map;

    if-eqz v0, :cond_6

    .line 459
    iget-object v0, p0, Landroid/net/wifi/hotspot2/pps/Policy;->mRequiredProtoPortMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 460
    .local v2, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Ljava/lang/String;>;"
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 461
    .local v3, "portNumber":Ljava/lang/String;
    sget-object v4, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v3, v4}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v4

    array-length v4, v4

    const/16 v5, 0x40

    if-le v4, v5, :cond_5

    .line 462
    const-string v0, "Policy"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "PortNumber string bytes exceeded the max: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 463
    return v1

    .line 465
    .end local v2    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Ljava/lang/String;>;"
    .end local v3    # "portNumber":Ljava/lang/String;
    :cond_5
    goto :goto_1

    .line 468
    :cond_6
    iget-object v0, p0, Landroid/net/wifi/hotspot2/pps/Policy;->mPreferredRoamingPartnerList:Ljava/util/List;

    if-eqz v0, :cond_8

    .line 469
    iget-object v0, p0, Landroid/net/wifi/hotspot2/pps/Policy;->mPreferredRoamingPartnerList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_8

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/wifi/hotspot2/pps/Policy$RoamingPartner;

    .line 470
    .local v2, "partner":Landroid/net/wifi/hotspot2/pps/Policy$RoamingPartner;
    invoke-virtual {v2}, Landroid/net/wifi/hotspot2/pps/Policy$RoamingPartner;->validate()Z

    move-result v3

    if-nez v3, :cond_7

    .line 471
    return v1

    .line 473
    .end local v2    # "partner":Landroid/net/wifi/hotspot2/pps/Policy$RoamingPartner;
    :cond_7
    goto :goto_2

    .line 475
    :cond_8
    const/4 v0, 0x1

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 361
    iget-wide v0, p0, Landroid/net/wifi/hotspot2/pps/Policy;->mMinHomeDownlinkBandwidth:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 362
    iget-wide v0, p0, Landroid/net/wifi/hotspot2/pps/Policy;->mMinHomeUplinkBandwidth:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 363
    iget-wide v0, p0, Landroid/net/wifi/hotspot2/pps/Policy;->mMinRoamingDownlinkBandwidth:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 364
    iget-wide v0, p0, Landroid/net/wifi/hotspot2/pps/Policy;->mMinRoamingUplinkBandwidth:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 365
    iget-object v0, p0, Landroid/net/wifi/hotspot2/pps/Policy;->mExcludedSsidList:[Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    .line 366
    iget-object v0, p0, Landroid/net/wifi/hotspot2/pps/Policy;->mRequiredProtoPortMap:Ljava/util/Map;

    invoke-static {p1, v0}, Landroid/net/wifi/hotspot2/pps/Policy;->writeProtoPortMap(Landroid/os/Parcel;Ljava/util/Map;)V

    .line 367
    iget v0, p0, Landroid/net/wifi/hotspot2/pps/Policy;->mMaximumBssLoadValue:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 368
    iget-object v0, p0, Landroid/net/wifi/hotspot2/pps/Policy;->mPreferredRoamingPartnerList:Ljava/util/List;

    invoke-static {p1, p2, v0}, Landroid/net/wifi/hotspot2/pps/Policy;->writeRoamingPartnerList(Landroid/os/Parcel;ILjava/util/List;)V

    .line 369
    iget-object v0, p0, Landroid/net/wifi/hotspot2/pps/Policy;->mPolicyUpdate:Landroid/net/wifi/hotspot2/pps/UpdateParameter;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 370
    return-void
.end method
