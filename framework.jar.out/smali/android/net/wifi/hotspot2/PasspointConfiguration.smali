.class public final Landroid/net/wifi/hotspot2/PasspointConfiguration;
.super Ljava/lang/Object;
.source "PasspointConfiguration.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field private static final CERTIFICATE_SHA256_BYTES:I = 0x20

.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/net/wifi/hotspot2/PasspointConfiguration;",
            ">;"
        }
    .end annotation
.end field

.field private static final MAX_URL_BYTES:I = 0x3ff

.field private static final NULL_VALUE:I = -0x1

.field private static final TAG:Ljava/lang/String; = "PasspointConfiguration"


# instance fields
.field private mCredential:Landroid/net/wifi/hotspot2/pps/Credential;

.field private mCredentialPriority:I

.field private mHomeSp:Landroid/net/wifi/hotspot2/pps/HomeSp;

.field private mPolicy:Landroid/net/wifi/hotspot2/pps/Policy;

.field private mSubscriptionCreationTimeInMillis:J

.field private mSubscriptionExpirationTimeInMillis:J

.field private mSubscriptionType:Ljava/lang/String;

.field private mSubscriptionUpdate:Landroid/net/wifi/hotspot2/pps/UpdateParameter;

.field private mTrustRootCertList:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "[B>;"
        }
    .end annotation
.end field

.field private mUpdateIdentifier:I

.field private mUsageLimitDataLimit:J

.field private mUsageLimitStartTimeInMillis:J

.field private mUsageLimitTimeLimitInMinutes:J

.field private mUsageLimitUsageTimePeriodInMinutes:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 516
    new-instance v0, Landroid/net/wifi/hotspot2/PasspointConfiguration$1;

    invoke-direct {v0}, Landroid/net/wifi/hotspot2/PasspointConfiguration$1;-><init>()V

    sput-object v0, Landroid/net/wifi/hotspot2/PasspointConfiguration;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .line 329
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 64
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/net/wifi/hotspot2/PasspointConfiguration;->mHomeSp:Landroid/net/wifi/hotspot2/pps/HomeSp;

    .line 81
    iput-object v0, p0, Landroid/net/wifi/hotspot2/PasspointConfiguration;->mCredential:Landroid/net/wifi/hotspot2/pps/Credential;

    .line 102
    iput-object v0, p0, Landroid/net/wifi/hotspot2/PasspointConfiguration;->mPolicy:Landroid/net/wifi/hotspot2/pps/Policy;

    .line 119
    iput-object v0, p0, Landroid/net/wifi/hotspot2/PasspointConfiguration;->mSubscriptionUpdate:Landroid/net/wifi/hotspot2/pps/UpdateParameter;

    .line 138
    iput-object v0, p0, Landroid/net/wifi/hotspot2/PasspointConfiguration;->mTrustRootCertList:Ljava/util/Map;

    .line 158
    const/high16 v1, -0x80000000

    iput v1, p0, Landroid/net/wifi/hotspot2/PasspointConfiguration;->mUpdateIdentifier:I

    .line 177
    iput v1, p0, Landroid/net/wifi/hotspot2/PasspointConfiguration;->mCredentialPriority:I

    .line 197
    const-wide/high16 v1, -0x8000000000000000L

    iput-wide v1, p0, Landroid/net/wifi/hotspot2/PasspointConfiguration;->mSubscriptionCreationTimeInMillis:J

    .line 217
    iput-wide v1, p0, Landroid/net/wifi/hotspot2/PasspointConfiguration;->mSubscriptionExpirationTimeInMillis:J

    .line 235
    iput-object v0, p0, Landroid/net/wifi/hotspot2/PasspointConfiguration;->mSubscriptionType:Ljava/lang/String;

    .line 254
    iput-wide v1, p0, Landroid/net/wifi/hotspot2/PasspointConfiguration;->mUsageLimitUsageTimePeriodInMinutes:J

    .line 274
    iput-wide v1, p0, Landroid/net/wifi/hotspot2/PasspointConfiguration;->mUsageLimitStartTimeInMillis:J

    .line 294
    iput-wide v1, p0, Landroid/net/wifi/hotspot2/PasspointConfiguration;->mUsageLimitDataLimit:J

    .line 312
    iput-wide v1, p0, Landroid/net/wifi/hotspot2/PasspointConfiguration;->mUsageLimitTimeLimitInMinutes:J

    .line 329
    return-void
.end method

.method public constructor <init>(Landroid/net/wifi/hotspot2/PasspointConfiguration;)V
    .locals 3
    .param p1, "source"    # Landroid/net/wifi/hotspot2/PasspointConfiguration;

    .line 336
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 64
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/net/wifi/hotspot2/PasspointConfiguration;->mHomeSp:Landroid/net/wifi/hotspot2/pps/HomeSp;

    .line 81
    iput-object v0, p0, Landroid/net/wifi/hotspot2/PasspointConfiguration;->mCredential:Landroid/net/wifi/hotspot2/pps/Credential;

    .line 102
    iput-object v0, p0, Landroid/net/wifi/hotspot2/PasspointConfiguration;->mPolicy:Landroid/net/wifi/hotspot2/pps/Policy;

    .line 119
    iput-object v0, p0, Landroid/net/wifi/hotspot2/PasspointConfiguration;->mSubscriptionUpdate:Landroid/net/wifi/hotspot2/pps/UpdateParameter;

    .line 138
    iput-object v0, p0, Landroid/net/wifi/hotspot2/PasspointConfiguration;->mTrustRootCertList:Ljava/util/Map;

    .line 158
    const/high16 v1, -0x80000000

    iput v1, p0, Landroid/net/wifi/hotspot2/PasspointConfiguration;->mUpdateIdentifier:I

    .line 177
    iput v1, p0, Landroid/net/wifi/hotspot2/PasspointConfiguration;->mCredentialPriority:I

    .line 197
    const-wide/high16 v1, -0x8000000000000000L

    iput-wide v1, p0, Landroid/net/wifi/hotspot2/PasspointConfiguration;->mSubscriptionCreationTimeInMillis:J

    .line 217
    iput-wide v1, p0, Landroid/net/wifi/hotspot2/PasspointConfiguration;->mSubscriptionExpirationTimeInMillis:J

    .line 235
    iput-object v0, p0, Landroid/net/wifi/hotspot2/PasspointConfiguration;->mSubscriptionType:Ljava/lang/String;

    .line 254
    iput-wide v1, p0, Landroid/net/wifi/hotspot2/PasspointConfiguration;->mUsageLimitUsageTimePeriodInMinutes:J

    .line 274
    iput-wide v1, p0, Landroid/net/wifi/hotspot2/PasspointConfiguration;->mUsageLimitStartTimeInMillis:J

    .line 294
    iput-wide v1, p0, Landroid/net/wifi/hotspot2/PasspointConfiguration;->mUsageLimitDataLimit:J

    .line 312
    iput-wide v1, p0, Landroid/net/wifi/hotspot2/PasspointConfiguration;->mUsageLimitTimeLimitInMinutes:J

    .line 337
    if-nez p1, :cond_0

    .line 338
    return-void

    .line 341
    :cond_0
    iget-object v0, p1, Landroid/net/wifi/hotspot2/PasspointConfiguration;->mHomeSp:Landroid/net/wifi/hotspot2/pps/HomeSp;

    if-eqz v0, :cond_1

    .line 342
    new-instance v0, Landroid/net/wifi/hotspot2/pps/HomeSp;

    iget-object v1, p1, Landroid/net/wifi/hotspot2/PasspointConfiguration;->mHomeSp:Landroid/net/wifi/hotspot2/pps/HomeSp;

    invoke-direct {v0, v1}, Landroid/net/wifi/hotspot2/pps/HomeSp;-><init>(Landroid/net/wifi/hotspot2/pps/HomeSp;)V

    iput-object v0, p0, Landroid/net/wifi/hotspot2/PasspointConfiguration;->mHomeSp:Landroid/net/wifi/hotspot2/pps/HomeSp;

    .line 344
    :cond_1
    iget-object v0, p1, Landroid/net/wifi/hotspot2/PasspointConfiguration;->mCredential:Landroid/net/wifi/hotspot2/pps/Credential;

    if-eqz v0, :cond_2

    .line 345
    new-instance v0, Landroid/net/wifi/hotspot2/pps/Credential;

    iget-object v1, p1, Landroid/net/wifi/hotspot2/PasspointConfiguration;->mCredential:Landroid/net/wifi/hotspot2/pps/Credential;

    invoke-direct {v0, v1}, Landroid/net/wifi/hotspot2/pps/Credential;-><init>(Landroid/net/wifi/hotspot2/pps/Credential;)V

    iput-object v0, p0, Landroid/net/wifi/hotspot2/PasspointConfiguration;->mCredential:Landroid/net/wifi/hotspot2/pps/Credential;

    .line 347
    :cond_2
    iget-object v0, p1, Landroid/net/wifi/hotspot2/PasspointConfiguration;->mPolicy:Landroid/net/wifi/hotspot2/pps/Policy;

    if-eqz v0, :cond_3

    .line 348
    new-instance v0, Landroid/net/wifi/hotspot2/pps/Policy;

    iget-object v1, p1, Landroid/net/wifi/hotspot2/PasspointConfiguration;->mPolicy:Landroid/net/wifi/hotspot2/pps/Policy;

    invoke-direct {v0, v1}, Landroid/net/wifi/hotspot2/pps/Policy;-><init>(Landroid/net/wifi/hotspot2/pps/Policy;)V

    iput-object v0, p0, Landroid/net/wifi/hotspot2/PasspointConfiguration;->mPolicy:Landroid/net/wifi/hotspot2/pps/Policy;

    .line 350
    :cond_3
    iget-object v0, p1, Landroid/net/wifi/hotspot2/PasspointConfiguration;->mTrustRootCertList:Ljava/util/Map;

    if-eqz v0, :cond_4

    .line 351
    iget-object v0, p1, Landroid/net/wifi/hotspot2/PasspointConfiguration;->mTrustRootCertList:Ljava/util/Map;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Landroid/net/wifi/hotspot2/PasspointConfiguration;->mTrustRootCertList:Ljava/util/Map;

    .line 353
    :cond_4
    iget-object v0, p1, Landroid/net/wifi/hotspot2/PasspointConfiguration;->mSubscriptionUpdate:Landroid/net/wifi/hotspot2/pps/UpdateParameter;

    if-eqz v0, :cond_5

    .line 354
    new-instance v0, Landroid/net/wifi/hotspot2/pps/UpdateParameter;

    iget-object v1, p1, Landroid/net/wifi/hotspot2/PasspointConfiguration;->mSubscriptionUpdate:Landroid/net/wifi/hotspot2/pps/UpdateParameter;

    invoke-direct {v0, v1}, Landroid/net/wifi/hotspot2/pps/UpdateParameter;-><init>(Landroid/net/wifi/hotspot2/pps/UpdateParameter;)V

    iput-object v0, p0, Landroid/net/wifi/hotspot2/PasspointConfiguration;->mSubscriptionUpdate:Landroid/net/wifi/hotspot2/pps/UpdateParameter;

    .line 356
    :cond_5
    iget v0, p1, Landroid/net/wifi/hotspot2/PasspointConfiguration;->mUpdateIdentifier:I

    iput v0, p0, Landroid/net/wifi/hotspot2/PasspointConfiguration;->mUpdateIdentifier:I

    .line 357
    iget v0, p1, Landroid/net/wifi/hotspot2/PasspointConfiguration;->mCredentialPriority:I

    iput v0, p0, Landroid/net/wifi/hotspot2/PasspointConfiguration;->mCredentialPriority:I

    .line 358
    iget-wide v0, p1, Landroid/net/wifi/hotspot2/PasspointConfiguration;->mSubscriptionCreationTimeInMillis:J

    iput-wide v0, p0, Landroid/net/wifi/hotspot2/PasspointConfiguration;->mSubscriptionCreationTimeInMillis:J

    .line 359
    iget-wide v0, p1, Landroid/net/wifi/hotspot2/PasspointConfiguration;->mSubscriptionExpirationTimeInMillis:J

    iput-wide v0, p0, Landroid/net/wifi/hotspot2/PasspointConfiguration;->mSubscriptionExpirationTimeInMillis:J

    .line 360
    iget-object v0, p1, Landroid/net/wifi/hotspot2/PasspointConfiguration;->mSubscriptionType:Ljava/lang/String;

    iput-object v0, p0, Landroid/net/wifi/hotspot2/PasspointConfiguration;->mSubscriptionType:Ljava/lang/String;

    .line 361
    iget-wide v0, p1, Landroid/net/wifi/hotspot2/PasspointConfiguration;->mUsageLimitDataLimit:J

    iput-wide v0, p0, Landroid/net/wifi/hotspot2/PasspointConfiguration;->mUsageLimitDataLimit:J

    .line 362
    iget-wide v0, p1, Landroid/net/wifi/hotspot2/PasspointConfiguration;->mUsageLimitStartTimeInMillis:J

    iput-wide v0, p0, Landroid/net/wifi/hotspot2/PasspointConfiguration;->mUsageLimitStartTimeInMillis:J

    .line 363
    iget-wide v0, p1, Landroid/net/wifi/hotspot2/PasspointConfiguration;->mUsageLimitTimeLimitInMinutes:J

    iput-wide v0, p0, Landroid/net/wifi/hotspot2/PasspointConfiguration;->mUsageLimitTimeLimitInMinutes:J

    .line 364
    iget-wide v0, p1, Landroid/net/wifi/hotspot2/PasspointConfiguration;->mUsageLimitUsageTimePeriodInMinutes:J

    iput-wide v0, p0, Landroid/net/wifi/hotspot2/PasspointConfiguration;->mUsageLimitUsageTimePeriodInMinutes:J

    .line 365
    return-void
.end method

.method private static isTrustRootCertListEquals(Ljava/util/Map;Ljava/util/Map;)Z
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "[B>;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "[B>;)Z"
        }
    .end annotation

    .line 594
    .local p0, "list1":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;[B>;"
    .local p1, "list2":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;[B>;"
    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p0, :cond_4

    if-nez p1, :cond_0

    goto :goto_1

    .line 597
    :cond_0
    invoke-interface {p0}, Ljava/util/Map;->size()I

    move-result v2

    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result v3

    if-eq v2, v3, :cond_1

    .line 598
    return v1

    .line 600
    :cond_1
    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 601
    .local v3, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;[B>;"
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [B

    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    invoke-interface {p1, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [B

    invoke-static {v4, v5}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v4

    if-nez v4, :cond_2

    .line 602
    return v1

    .line 604
    .end local v3    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;[B>;"
    :cond_2
    goto :goto_0

    .line 605
    :cond_3
    return v0

    .line 595
    :cond_4
    :goto_1
    if-ne p0, p1, :cond_5

    goto :goto_2

    :cond_5
    move v0, v1

    :goto_2
    return v0
.end method

.method private static writeTrustRootCerts(Landroid/os/Parcel;Ljava/util/Map;)V
    .locals 3
    .param p0, "dest"    # Landroid/os/Parcel;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Parcel;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "[B>;)V"
        }
    .end annotation

    .line 573
    .local p1, "trustRootCerts":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;[B>;"
    if-nez p1, :cond_0

    .line 574
    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 575
    return-void

    .line 577
    :cond_0
    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 578
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

    .line 579
    .local v1, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;[B>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {p0, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 580
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [B

    invoke-virtual {p0, v2}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 581
    .end local v1    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;[B>;"
    goto :goto_0

    .line 582
    :cond_1
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .line 369
    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 7
    .param p1, "thatObject"    # Ljava/lang/Object;

    .line 392
    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    .line 393
    return v0

    .line 395
    :cond_0
    instance-of v1, p1, Landroid/net/wifi/hotspot2/PasspointConfiguration;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    .line 396
    return v2

    .line 398
    :cond_1
    move-object v1, p1

    check-cast v1, Landroid/net/wifi/hotspot2/PasspointConfiguration;

    .line 399
    .local v1, "that":Landroid/net/wifi/hotspot2/PasspointConfiguration;
    iget-object v3, p0, Landroid/net/wifi/hotspot2/PasspointConfiguration;->mHomeSp:Landroid/net/wifi/hotspot2/pps/HomeSp;

    if-nez v3, :cond_2

    iget-object v3, v1, Landroid/net/wifi/hotspot2/PasspointConfiguration;->mHomeSp:Landroid/net/wifi/hotspot2/pps/HomeSp;

    if-nez v3, :cond_6

    goto :goto_0

    :cond_2
    iget-object v3, p0, Landroid/net/wifi/hotspot2/PasspointConfiguration;->mHomeSp:Landroid/net/wifi/hotspot2/pps/HomeSp;

    iget-object v4, v1, Landroid/net/wifi/hotspot2/PasspointConfiguration;->mHomeSp:Landroid/net/wifi/hotspot2/pps/HomeSp;

    invoke-virtual {v3, v4}, Landroid/net/wifi/hotspot2/pps/HomeSp;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    :goto_0
    iget-object v3, p0, Landroid/net/wifi/hotspot2/PasspointConfiguration;->mCredential:Landroid/net/wifi/hotspot2/pps/Credential;

    if-nez v3, :cond_3

    iget-object v3, v1, Landroid/net/wifi/hotspot2/PasspointConfiguration;->mCredential:Landroid/net/wifi/hotspot2/pps/Credential;

    if-nez v3, :cond_6

    goto :goto_1

    :cond_3
    iget-object v3, p0, Landroid/net/wifi/hotspot2/PasspointConfiguration;->mCredential:Landroid/net/wifi/hotspot2/pps/Credential;

    iget-object v4, v1, Landroid/net/wifi/hotspot2/PasspointConfiguration;->mCredential:Landroid/net/wifi/hotspot2/pps/Credential;

    .line 401
    invoke-virtual {v3, v4}, Landroid/net/wifi/hotspot2/pps/Credential;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    :goto_1
    iget-object v3, p0, Landroid/net/wifi/hotspot2/PasspointConfiguration;->mPolicy:Landroid/net/wifi/hotspot2/pps/Policy;

    if-nez v3, :cond_4

    iget-object v3, v1, Landroid/net/wifi/hotspot2/PasspointConfiguration;->mPolicy:Landroid/net/wifi/hotspot2/pps/Policy;

    if-nez v3, :cond_6

    goto :goto_2

    :cond_4
    iget-object v3, p0, Landroid/net/wifi/hotspot2/PasspointConfiguration;->mPolicy:Landroid/net/wifi/hotspot2/pps/Policy;

    iget-object v4, v1, Landroid/net/wifi/hotspot2/PasspointConfiguration;->mPolicy:Landroid/net/wifi/hotspot2/pps/Policy;

    .line 402
    invoke-virtual {v3, v4}, Landroid/net/wifi/hotspot2/pps/Policy;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    :goto_2
    iget-object v3, p0, Landroid/net/wifi/hotspot2/PasspointConfiguration;->mSubscriptionUpdate:Landroid/net/wifi/hotspot2/pps/UpdateParameter;

    if-nez v3, :cond_5

    iget-object v3, v1, Landroid/net/wifi/hotspot2/PasspointConfiguration;->mSubscriptionUpdate:Landroid/net/wifi/hotspot2/pps/UpdateParameter;

    if-nez v3, :cond_6

    goto :goto_3

    :cond_5
    iget-object v3, p0, Landroid/net/wifi/hotspot2/PasspointConfiguration;->mSubscriptionUpdate:Landroid/net/wifi/hotspot2/pps/UpdateParameter;

    iget-object v4, v1, Landroid/net/wifi/hotspot2/PasspointConfiguration;->mSubscriptionUpdate:Landroid/net/wifi/hotspot2/pps/UpdateParameter;

    .line 404
    invoke-virtual {v3, v4}, Landroid/net/wifi/hotspot2/pps/UpdateParameter;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    :goto_3
    iget-object v3, p0, Landroid/net/wifi/hotspot2/PasspointConfiguration;->mTrustRootCertList:Ljava/util/Map;

    iget-object v4, v1, Landroid/net/wifi/hotspot2/PasspointConfiguration;->mTrustRootCertList:Ljava/util/Map;

    .line 405
    invoke-static {v3, v4}, Landroid/net/wifi/hotspot2/PasspointConfiguration;->isTrustRootCertListEquals(Ljava/util/Map;Ljava/util/Map;)Z

    move-result v3

    if-eqz v3, :cond_6

    iget v3, p0, Landroid/net/wifi/hotspot2/PasspointConfiguration;->mUpdateIdentifier:I

    iget v4, v1, Landroid/net/wifi/hotspot2/PasspointConfiguration;->mUpdateIdentifier:I

    if-ne v3, v4, :cond_6

    iget v3, p0, Landroid/net/wifi/hotspot2/PasspointConfiguration;->mCredentialPriority:I

    iget v4, v1, Landroid/net/wifi/hotspot2/PasspointConfiguration;->mCredentialPriority:I

    if-ne v3, v4, :cond_6

    iget-wide v3, p0, Landroid/net/wifi/hotspot2/PasspointConfiguration;->mSubscriptionCreationTimeInMillis:J

    iget-wide v5, v1, Landroid/net/wifi/hotspot2/PasspointConfiguration;->mSubscriptionCreationTimeInMillis:J

    cmp-long v3, v3, v5

    if-nez v3, :cond_6

    iget-wide v3, p0, Landroid/net/wifi/hotspot2/PasspointConfiguration;->mSubscriptionExpirationTimeInMillis:J

    iget-wide v5, v1, Landroid/net/wifi/hotspot2/PasspointConfiguration;->mSubscriptionExpirationTimeInMillis:J

    cmp-long v3, v3, v5

    if-nez v3, :cond_6

    iget-object v3, p0, Landroid/net/wifi/hotspot2/PasspointConfiguration;->mSubscriptionType:Ljava/lang/String;

    iget-object v4, v1, Landroid/net/wifi/hotspot2/PasspointConfiguration;->mSubscriptionType:Ljava/lang/String;

    .line 410
    invoke-static {v3, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_6

    iget-wide v3, p0, Landroid/net/wifi/hotspot2/PasspointConfiguration;->mUsageLimitUsageTimePeriodInMinutes:J

    iget-wide v5, v1, Landroid/net/wifi/hotspot2/PasspointConfiguration;->mUsageLimitUsageTimePeriodInMinutes:J

    cmp-long v3, v3, v5

    if-nez v3, :cond_6

    iget-wide v3, p0, Landroid/net/wifi/hotspot2/PasspointConfiguration;->mUsageLimitStartTimeInMillis:J

    iget-wide v5, v1, Landroid/net/wifi/hotspot2/PasspointConfiguration;->mUsageLimitStartTimeInMillis:J

    cmp-long v3, v3, v5

    if-nez v3, :cond_6

    iget-wide v3, p0, Landroid/net/wifi/hotspot2/PasspointConfiguration;->mUsageLimitDataLimit:J

    iget-wide v5, v1, Landroid/net/wifi/hotspot2/PasspointConfiguration;->mUsageLimitDataLimit:J

    cmp-long v3, v3, v5

    if-nez v3, :cond_6

    iget-wide v3, p0, Landroid/net/wifi/hotspot2/PasspointConfiguration;->mUsageLimitTimeLimitInMinutes:J

    iget-wide v5, v1, Landroid/net/wifi/hotspot2/PasspointConfiguration;->mUsageLimitTimeLimitInMinutes:J

    cmp-long v3, v3, v5

    if-nez v3, :cond_6

    goto :goto_4

    .line 399
    :cond_6
    move v0, v2

    :goto_4
    return v0
.end method

.method public getCredential()Landroid/net/wifi/hotspot2/pps/Credential;
    .locals 1

    .line 96
    iget-object v0, p0, Landroid/net/wifi/hotspot2/PasspointConfiguration;->mCredential:Landroid/net/wifi/hotspot2/pps/Credential;

    return-object v0
.end method

.method public getCredentialPriority()I
    .locals 1

    .line 188
    iget v0, p0, Landroid/net/wifi/hotspot2/PasspointConfiguration;->mCredentialPriority:I

    return v0
.end method

.method public getHomeSp()Landroid/net/wifi/hotspot2/pps/HomeSp;
    .locals 1

    .line 76
    iget-object v0, p0, Landroid/net/wifi/hotspot2/PasspointConfiguration;->mHomeSp:Landroid/net/wifi/hotspot2/pps/HomeSp;

    return-object v0
.end method

.method public getPolicy()Landroid/net/wifi/hotspot2/pps/Policy;
    .locals 1

    .line 113
    iget-object v0, p0, Landroid/net/wifi/hotspot2/PasspointConfiguration;->mPolicy:Landroid/net/wifi/hotspot2/pps/Policy;

    return-object v0
.end method

.method public getSubscriptionCreationTimeInMillis()J
    .locals 2

    .line 208
    iget-wide v0, p0, Landroid/net/wifi/hotspot2/PasspointConfiguration;->mSubscriptionCreationTimeInMillis:J

    return-wide v0
.end method

.method public getSubscriptionExpirationTimeInMillis()J
    .locals 2

    .line 228
    iget-wide v0, p0, Landroid/net/wifi/hotspot2/PasspointConfiguration;->mSubscriptionExpirationTimeInMillis:J

    return-wide v0
.end method

.method public getSubscriptionType()Ljava/lang/String;
    .locals 1

    .line 246
    iget-object v0, p0, Landroid/net/wifi/hotspot2/PasspointConfiguration;->mSubscriptionType:Ljava/lang/String;

    return-object v0
.end method

.method public getSubscriptionUpdate()Landroid/net/wifi/hotspot2/pps/UpdateParameter;
    .locals 1

    .line 130
    iget-object v0, p0, Landroid/net/wifi/hotspot2/PasspointConfiguration;->mSubscriptionUpdate:Landroid/net/wifi/hotspot2/pps/UpdateParameter;

    return-object v0
.end method

.method public getTrustRootCertList()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "[B>;"
        }
    .end annotation

    .line 149
    iget-object v0, p0, Landroid/net/wifi/hotspot2/PasspointConfiguration;->mTrustRootCertList:Ljava/util/Map;

    return-object v0
.end method

.method public getUpdateIdentifier()I
    .locals 1

    .line 169
    iget v0, p0, Landroid/net/wifi/hotspot2/PasspointConfiguration;->mUpdateIdentifier:I

    return v0
.end method

.method public getUsageLimitDataLimit()J
    .locals 2

    .line 305
    iget-wide v0, p0, Landroid/net/wifi/hotspot2/PasspointConfiguration;->mUsageLimitDataLimit:J

    return-wide v0
.end method

.method public getUsageLimitStartTimeInMillis()J
    .locals 2

    .line 285
    iget-wide v0, p0, Landroid/net/wifi/hotspot2/PasspointConfiguration;->mUsageLimitStartTimeInMillis:J

    return-wide v0
.end method

.method public getUsageLimitTimeLimitInMinutes()J
    .locals 2

    .line 323
    iget-wide v0, p0, Landroid/net/wifi/hotspot2/PasspointConfiguration;->mUsageLimitTimeLimitInMinutes:J

    return-wide v0
.end method

.method public getUsageLimitUsageTimePeriodInMinutes()J
    .locals 2

    .line 265
    iget-wide v0, p0, Landroid/net/wifi/hotspot2/PasspointConfiguration;->mUsageLimitUsageTimePeriodInMinutes:J

    return-wide v0
.end method

.method public hashCode()I
    .locals 3

    .line 419
    const/16 v0, 0xd

    new-array v0, v0, [Ljava/lang/Object;

    iget-object v1, p0, Landroid/net/wifi/hotspot2/PasspointConfiguration;->mHomeSp:Landroid/net/wifi/hotspot2/pps/HomeSp;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v1, p0, Landroid/net/wifi/hotspot2/PasspointConfiguration;->mCredential:Landroid/net/wifi/hotspot2/pps/Credential;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget-object v1, p0, Landroid/net/wifi/hotspot2/PasspointConfiguration;->mPolicy:Landroid/net/wifi/hotspot2/pps/Policy;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    iget-object v1, p0, Landroid/net/wifi/hotspot2/PasspointConfiguration;->mSubscriptionUpdate:Landroid/net/wifi/hotspot2/pps/UpdateParameter;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    iget-object v1, p0, Landroid/net/wifi/hotspot2/PasspointConfiguration;->mTrustRootCertList:Ljava/util/Map;

    const/4 v2, 0x4

    aput-object v1, v0, v2

    iget v1, p0, Landroid/net/wifi/hotspot2/PasspointConfiguration;->mUpdateIdentifier:I

    .line 420
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x5

    aput-object v1, v0, v2

    iget v1, p0, Landroid/net/wifi/hotspot2/PasspointConfiguration;->mCredentialPriority:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x6

    aput-object v1, v0, v2

    iget-wide v1, p0, Landroid/net/wifi/hotspot2/PasspointConfiguration;->mSubscriptionCreationTimeInMillis:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/4 v2, 0x7

    aput-object v1, v0, v2

    iget-wide v1, p0, Landroid/net/wifi/hotspot2/PasspointConfiguration;->mSubscriptionExpirationTimeInMillis:J

    .line 421
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/16 v2, 0x8

    aput-object v1, v0, v2

    iget-wide v1, p0, Landroid/net/wifi/hotspot2/PasspointConfiguration;->mUsageLimitUsageTimePeriodInMinutes:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/16 v2, 0x9

    aput-object v1, v0, v2

    iget-wide v1, p0, Landroid/net/wifi/hotspot2/PasspointConfiguration;->mUsageLimitStartTimeInMillis:J

    .line 422
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/16 v2, 0xa

    aput-object v1, v0, v2

    iget-wide v1, p0, Landroid/net/wifi/hotspot2/PasspointConfiguration;->mUsageLimitDataLimit:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/16 v2, 0xb

    aput-object v1, v0, v2

    iget-wide v1, p0, Landroid/net/wifi/hotspot2/PasspointConfiguration;->mUsageLimitTimeLimitInMinutes:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/16 v2, 0xc

    aput-object v1, v0, v2

    .line 419
    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public setCredential(Landroid/net/wifi/hotspot2/pps/Credential;)V
    .locals 0
    .param p1, "credential"    # Landroid/net/wifi/hotspot2/pps/Credential;

    .line 88
    iput-object p1, p0, Landroid/net/wifi/hotspot2/PasspointConfiguration;->mCredential:Landroid/net/wifi/hotspot2/pps/Credential;

    .line 89
    return-void
.end method

.method public setCredentialPriority(I)V
    .locals 0
    .param p1, "credentialPriority"    # I

    .line 182
    iput p1, p0, Landroid/net/wifi/hotspot2/PasspointConfiguration;->mCredentialPriority:I

    .line 183
    return-void
.end method

.method public setHomeSp(Landroid/net/wifi/hotspot2/pps/HomeSp;)V
    .locals 0
    .param p1, "homeSp"    # Landroid/net/wifi/hotspot2/pps/HomeSp;

    .line 70
    iput-object p1, p0, Landroid/net/wifi/hotspot2/PasspointConfiguration;->mHomeSp:Landroid/net/wifi/hotspot2/pps/HomeSp;

    return-void
.end method

.method public setPolicy(Landroid/net/wifi/hotspot2/pps/Policy;)V
    .locals 0
    .param p1, "policy"    # Landroid/net/wifi/hotspot2/pps/Policy;

    .line 107
    iput-object p1, p0, Landroid/net/wifi/hotspot2/PasspointConfiguration;->mPolicy:Landroid/net/wifi/hotspot2/pps/Policy;

    .line 108
    return-void
.end method

.method public setSubscriptionCreationTimeInMillis(J)V
    .locals 0
    .param p1, "subscriptionCreationTimeInMillis"    # J

    .line 202
    iput-wide p1, p0, Landroid/net/wifi/hotspot2/PasspointConfiguration;->mSubscriptionCreationTimeInMillis:J

    .line 203
    return-void
.end method

.method public setSubscriptionExpirationTimeInMillis(J)V
    .locals 0
    .param p1, "subscriptionExpirationTimeInMillis"    # J

    .line 222
    iput-wide p1, p0, Landroid/net/wifi/hotspot2/PasspointConfiguration;->mSubscriptionExpirationTimeInMillis:J

    .line 223
    return-void
.end method

.method public setSubscriptionType(Ljava/lang/String;)V
    .locals 0
    .param p1, "subscriptionType"    # Ljava/lang/String;

    .line 240
    iput-object p1, p0, Landroid/net/wifi/hotspot2/PasspointConfiguration;->mSubscriptionType:Ljava/lang/String;

    .line 241
    return-void
.end method

.method public setSubscriptionUpdate(Landroid/net/wifi/hotspot2/pps/UpdateParameter;)V
    .locals 0
    .param p1, "subscriptionUpdate"    # Landroid/net/wifi/hotspot2/pps/UpdateParameter;

    .line 124
    iput-object p1, p0, Landroid/net/wifi/hotspot2/PasspointConfiguration;->mSubscriptionUpdate:Landroid/net/wifi/hotspot2/pps/UpdateParameter;

    .line 125
    return-void
.end method

.method public setTrustRootCertList(Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "[B>;)V"
        }
    .end annotation

    .line 143
    .local p1, "trustRootCertList":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;[B>;"
    iput-object p1, p0, Landroid/net/wifi/hotspot2/PasspointConfiguration;->mTrustRootCertList:Ljava/util/Map;

    .line 144
    return-void
.end method

.method public setUpdateIdentifier(I)V
    .locals 0
    .param p1, "updateIdentifier"    # I

    .line 163
    iput p1, p0, Landroid/net/wifi/hotspot2/PasspointConfiguration;->mUpdateIdentifier:I

    .line 164
    return-void
.end method

.method public setUsageLimitDataLimit(J)V
    .locals 0
    .param p1, "usageLimitDataLimit"    # J

    .line 299
    iput-wide p1, p0, Landroid/net/wifi/hotspot2/PasspointConfiguration;->mUsageLimitDataLimit:J

    .line 300
    return-void
.end method

.method public setUsageLimitStartTimeInMillis(J)V
    .locals 0
    .param p1, "usageLimitStartTimeInMillis"    # J

    .line 279
    iput-wide p1, p0, Landroid/net/wifi/hotspot2/PasspointConfiguration;->mUsageLimitStartTimeInMillis:J

    .line 280
    return-void
.end method

.method public setUsageLimitTimeLimitInMinutes(J)V
    .locals 0
    .param p1, "usageLimitTimeLimitInMinutes"    # J

    .line 317
    iput-wide p1, p0, Landroid/net/wifi/hotspot2/PasspointConfiguration;->mUsageLimitTimeLimitInMinutes:J

    .line 318
    return-void
.end method

.method public setUsageLimitUsageTimePeriodInMinutes(J)V
    .locals 0
    .param p1, "usageLimitUsageTimePeriodInMinutes"    # J

    .line 259
    iput-wide p1, p0, Landroid/net/wifi/hotspot2/PasspointConfiguration;->mUsageLimitUsageTimePeriodInMinutes:J

    .line 260
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 7

    .line 427
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 428
    .local v0, "builder":Ljava/lang/StringBuilder;
    const-string v1, "UpdateIdentifier: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/net/wifi/hotspot2/PasspointConfiguration;->mUpdateIdentifier:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 429
    const-string v1, "CredentialPriority: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/net/wifi/hotspot2/PasspointConfiguration;->mCredentialPriority:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 430
    const-string v1, "SubscriptionCreationTime: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 431
    iget-wide v1, p0, Landroid/net/wifi/hotspot2/PasspointConfiguration;->mSubscriptionCreationTimeInMillis:J

    const-wide/high16 v3, -0x8000000000000000L

    cmp-long v1, v1, v3

    if-eqz v1, :cond_0

    .line 432
    new-instance v1, Ljava/util/Date;

    iget-wide v5, p0, Landroid/net/wifi/hotspot2/PasspointConfiguration;->mSubscriptionCreationTimeInMillis:J

    invoke-direct {v1, v5, v6}, Ljava/util/Date;-><init>(J)V

    goto :goto_0

    :cond_0
    const-string v1, "Not specified"

    .line 430
    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "\n"

    .line 432
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 433
    const-string v1, "SubscriptionExpirationTime: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 434
    iget-wide v1, p0, Landroid/net/wifi/hotspot2/PasspointConfiguration;->mSubscriptionExpirationTimeInMillis:J

    cmp-long v1, v1, v3

    if-eqz v1, :cond_1

    .line 435
    new-instance v1, Ljava/util/Date;

    iget-wide v5, p0, Landroid/net/wifi/hotspot2/PasspointConfiguration;->mSubscriptionExpirationTimeInMillis:J

    invoke-direct {v1, v5, v6}, Ljava/util/Date;-><init>(J)V

    goto :goto_1

    :cond_1
    const-string v1, "Not specified"

    .line 433
    :goto_1
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "\n"

    .line 435
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 436
    const-string v1, "UsageLimitStartTime: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Landroid/net/wifi/hotspot2/PasspointConfiguration;->mUsageLimitStartTimeInMillis:J

    cmp-long v1, v1, v3

    if-eqz v1, :cond_2

    .line 437
    new-instance v1, Ljava/util/Date;

    iget-wide v2, p0, Landroid/net/wifi/hotspot2/PasspointConfiguration;->mUsageLimitStartTimeInMillis:J

    invoke-direct {v1, v2, v3}, Ljava/util/Date;-><init>(J)V

    goto :goto_2

    :cond_2
    const-string v1, "Not specified"

    .line 436
    :goto_2
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "\n"

    .line 437
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 438
    const-string v1, "UsageTimePeriod: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Landroid/net/wifi/hotspot2/PasspointConfiguration;->mUsageLimitUsageTimePeriodInMinutes:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, "\n"

    .line 439
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 440
    const-string v1, "UsageLimitDataLimit: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Landroid/net/wifi/hotspot2/PasspointConfiguration;->mUsageLimitDataLimit:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 441
    const-string v1, "UsageLimitTimeLimit: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Landroid/net/wifi/hotspot2/PasspointConfiguration;->mUsageLimitTimeLimitInMinutes:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 442
    iget-object v1, p0, Landroid/net/wifi/hotspot2/PasspointConfiguration;->mHomeSp:Landroid/net/wifi/hotspot2/pps/HomeSp;

    if-eqz v1, :cond_3

    .line 443
    const-string v1, "HomeSP Begin ---\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 444
    iget-object v1, p0, Landroid/net/wifi/hotspot2/PasspointConfiguration;->mHomeSp:Landroid/net/wifi/hotspot2/pps/HomeSp;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 445
    const-string v1, "HomeSP End ---\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 447
    :cond_3
    iget-object v1, p0, Landroid/net/wifi/hotspot2/PasspointConfiguration;->mCredential:Landroid/net/wifi/hotspot2/pps/Credential;

    if-eqz v1, :cond_4

    .line 448
    const-string v1, "Credential Begin ---\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 449
    iget-object v1, p0, Landroid/net/wifi/hotspot2/PasspointConfiguration;->mCredential:Landroid/net/wifi/hotspot2/pps/Credential;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 450
    const-string v1, "Credential End ---\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 452
    :cond_4
    iget-object v1, p0, Landroid/net/wifi/hotspot2/PasspointConfiguration;->mPolicy:Landroid/net/wifi/hotspot2/pps/Policy;

    if-eqz v1, :cond_5

    .line 453
    const-string v1, "Policy Begin ---\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 454
    iget-object v1, p0, Landroid/net/wifi/hotspot2/PasspointConfiguration;->mPolicy:Landroid/net/wifi/hotspot2/pps/Policy;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 455
    const-string v1, "Policy End ---\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 457
    :cond_5
    iget-object v1, p0, Landroid/net/wifi/hotspot2/PasspointConfiguration;->mSubscriptionUpdate:Landroid/net/wifi/hotspot2/pps/UpdateParameter;

    if-eqz v1, :cond_6

    .line 458
    const-string v1, "SubscriptionUpdate Begin ---\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 459
    iget-object v1, p0, Landroid/net/wifi/hotspot2/PasspointConfiguration;->mSubscriptionUpdate:Landroid/net/wifi/hotspot2/pps/UpdateParameter;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 460
    const-string v1, "SubscriptionUpdate End ---\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 462
    :cond_6
    iget-object v1, p0, Landroid/net/wifi/hotspot2/PasspointConfiguration;->mTrustRootCertList:Ljava/util/Map;

    if-eqz v1, :cond_7

    .line 463
    const-string v1, "TrustRootCertServers: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroid/net/wifi/hotspot2/PasspointConfiguration;->mTrustRootCertList:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "\n"

    .line 464
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 466
    :cond_7
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public validate()Z
    .locals 7

    .line 476
    iget-object v0, p0, Landroid/net/wifi/hotspot2/PasspointConfiguration;->mHomeSp:Landroid/net/wifi/hotspot2/pps/HomeSp;

    const/4 v1, 0x0

    if-eqz v0, :cond_a

    iget-object v0, p0, Landroid/net/wifi/hotspot2/PasspointConfiguration;->mHomeSp:Landroid/net/wifi/hotspot2/pps/HomeSp;

    invoke-virtual {v0}, Landroid/net/wifi/hotspot2/pps/HomeSp;->validate()Z

    move-result v0

    if-nez v0, :cond_0

    goto/16 :goto_2

    .line 479
    :cond_0
    iget-object v0, p0, Landroid/net/wifi/hotspot2/PasspointConfiguration;->mCredential:Landroid/net/wifi/hotspot2/pps/Credential;

    if-eqz v0, :cond_9

    iget-object v0, p0, Landroid/net/wifi/hotspot2/PasspointConfiguration;->mCredential:Landroid/net/wifi/hotspot2/pps/Credential;

    invoke-virtual {v0}, Landroid/net/wifi/hotspot2/pps/Credential;->validate()Z

    move-result v0

    if-nez v0, :cond_1

    goto/16 :goto_1

    .line 482
    :cond_1
    iget-object v0, p0, Landroid/net/wifi/hotspot2/PasspointConfiguration;->mPolicy:Landroid/net/wifi/hotspot2/pps/Policy;

    if-eqz v0, :cond_2

    iget-object v0, p0, Landroid/net/wifi/hotspot2/PasspointConfiguration;->mPolicy:Landroid/net/wifi/hotspot2/pps/Policy;

    invoke-virtual {v0}, Landroid/net/wifi/hotspot2/pps/Policy;->validate()Z

    move-result v0

    if-nez v0, :cond_2

    .line 483
    return v1

    .line 485
    :cond_2
    iget-object v0, p0, Landroid/net/wifi/hotspot2/PasspointConfiguration;->mSubscriptionUpdate:Landroid/net/wifi/hotspot2/pps/UpdateParameter;

    if-eqz v0, :cond_3

    iget-object v0, p0, Landroid/net/wifi/hotspot2/PasspointConfiguration;->mSubscriptionUpdate:Landroid/net/wifi/hotspot2/pps/UpdateParameter;

    invoke-virtual {v0}, Landroid/net/wifi/hotspot2/pps/UpdateParameter;->validate()Z

    move-result v0

    if-nez v0, :cond_3

    .line 486
    return v1

    .line 488
    :cond_3
    iget-object v0, p0, Landroid/net/wifi/hotspot2/PasspointConfiguration;->mTrustRootCertList:Ljava/util/Map;

    if-eqz v0, :cond_8

    .line 489
    iget-object v0, p0, Landroid/net/wifi/hotspot2/PasspointConfiguration;->mTrustRootCertList:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_8

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 490
    .local v2, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;[B>;"
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 491
    .local v3, "url":Ljava/lang/String;
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [B

    .line 492
    .local v4, "certFingerprint":[B
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 493
    const-string v0, "PasspointConfiguration"

    const-string v5, "Empty URL"

    invoke-static {v0, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 494
    return v1

    .line 496
    :cond_4
    sget-object v5, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v3, v5}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v5

    array-length v5, v5

    const/16 v6, 0x3ff

    if-le v5, v6, :cond_5

    .line 497
    const-string v0, "PasspointConfiguration"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "URL bytes exceeded the max: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v6, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    .line 498
    invoke-virtual {v3, v6}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v6

    array-length v6, v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 497
    invoke-static {v0, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 499
    return v1

    .line 502
    :cond_5
    if-nez v4, :cond_6

    .line 503
    const-string v0, "PasspointConfiguration"

    const-string v5, "Fingerprint not specified"

    invoke-static {v0, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 504
    return v1

    .line 506
    :cond_6
    array-length v5, v4

    const/16 v6, 0x20

    if-eq v5, v6, :cond_7

    .line 507
    const-string v0, "PasspointConfiguration"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Incorrect size of trust root certificate SHA-256 fingerprint: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v6, v4

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 509
    return v1

    .line 511
    .end local v2    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;[B>;"
    .end local v3    # "url":Ljava/lang/String;
    .end local v4    # "certFingerprint":[B
    :cond_7
    goto :goto_0

    .line 513
    :cond_8
    const/4 v0, 0x1

    return v0

    .line 480
    :cond_9
    :goto_1
    return v1

    .line 477
    :cond_a
    :goto_2
    return v1
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 374
    iget-object v0, p0, Landroid/net/wifi/hotspot2/PasspointConfiguration;->mHomeSp:Landroid/net/wifi/hotspot2/pps/HomeSp;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 375
    iget-object v0, p0, Landroid/net/wifi/hotspot2/PasspointConfiguration;->mCredential:Landroid/net/wifi/hotspot2/pps/Credential;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 376
    iget-object v0, p0, Landroid/net/wifi/hotspot2/PasspointConfiguration;->mPolicy:Landroid/net/wifi/hotspot2/pps/Policy;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 377
    iget-object v0, p0, Landroid/net/wifi/hotspot2/PasspointConfiguration;->mSubscriptionUpdate:Landroid/net/wifi/hotspot2/pps/UpdateParameter;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 378
    iget-object v0, p0, Landroid/net/wifi/hotspot2/PasspointConfiguration;->mTrustRootCertList:Ljava/util/Map;

    invoke-static {p1, v0}, Landroid/net/wifi/hotspot2/PasspointConfiguration;->writeTrustRootCerts(Landroid/os/Parcel;Ljava/util/Map;)V

    .line 379
    iget v0, p0, Landroid/net/wifi/hotspot2/PasspointConfiguration;->mUpdateIdentifier:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 380
    iget v0, p0, Landroid/net/wifi/hotspot2/PasspointConfiguration;->mCredentialPriority:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 381
    iget-wide v0, p0, Landroid/net/wifi/hotspot2/PasspointConfiguration;->mSubscriptionCreationTimeInMillis:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 382
    iget-wide v0, p0, Landroid/net/wifi/hotspot2/PasspointConfiguration;->mSubscriptionExpirationTimeInMillis:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 383
    iget-object v0, p0, Landroid/net/wifi/hotspot2/PasspointConfiguration;->mSubscriptionType:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 384
    iget-wide v0, p0, Landroid/net/wifi/hotspot2/PasspointConfiguration;->mUsageLimitUsageTimePeriodInMinutes:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 385
    iget-wide v0, p0, Landroid/net/wifi/hotspot2/PasspointConfiguration;->mUsageLimitStartTimeInMillis:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 386
    iget-wide v0, p0, Landroid/net/wifi/hotspot2/PasspointConfiguration;->mUsageLimitDataLimit:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 387
    iget-wide v0, p0, Landroid/net/wifi/hotspot2/PasspointConfiguration;->mUsageLimitTimeLimitInMinutes:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 388
    return-void
.end method
