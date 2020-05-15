.class public Landroid/hardware/radio/RadioManager$ModuleProperties;
.super Ljava/lang/Object;
.source "RadioManager.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/radio/RadioManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ModuleProperties"
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/hardware/radio/RadioManager$ModuleProperties;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final mBands:[Landroid/hardware/radio/RadioManager$BandDescriptor;

.field private final mClassId:I

.field private final mDabFrequencyTable:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final mId:I

.field private final mImplementor:Ljava/lang/String;

.field private final mIsBgScanSupported:Z

.field private final mIsCaptureSupported:Z

.field private final mIsInitializationRequired:Z

.field private final mNumAudioSources:I

.field private final mNumTuners:I

.field private final mProduct:Ljava/lang/String;

.field private final mSerial:Ljava/lang/String;

.field private final mServiceName:Ljava/lang/String;

.field private final mSupportedIdentifierTypes:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final mSupportedProgramTypes:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final mVendorInfo:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mVersion:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 451
    new-instance v0, Landroid/hardware/radio/RadioManager$ModuleProperties$1;

    invoke-direct {v0}, Landroid/hardware/radio/RadioManager$ModuleProperties$1;-><init>()V

    sput-object v0, Landroid/hardware/radio/RadioManager$ModuleProperties;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIZZ[Landroid/hardware/radio/RadioManager$BandDescriptor;Z[I[ILjava/util/Map;Ljava/util/Map;)V
    .locals 18
    .param p1, "id"    # I
    .param p2, "serviceName"    # Ljava/lang/String;
    .param p3, "classId"    # I
    .param p4, "implementor"    # Ljava/lang/String;
    .param p5, "product"    # Ljava/lang/String;
    .param p6, "version"    # Ljava/lang/String;
    .param p7, "serial"    # Ljava/lang/String;
    .param p8, "numTuners"    # I
    .param p9, "numAudioSources"    # I
    .param p10, "isInitializationRequired"    # Z
    .param p11, "isCaptureSupported"    # Z
    .param p12, "bands"    # [Landroid/hardware/radio/RadioManager$BandDescriptor;
    .param p13, "isBgScanSupported"    # Z
    .param p14, "supportedProgramTypes"    # [I
    .param p15, "supportedIdentifierTypes"    # [I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "I",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "IIZZ[",
            "Landroid/hardware/radio/RadioManager$BandDescriptor;",
            "Z[I[I",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .local p16, "dabFrequencyTable":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Integer;>;"
    .local p17, "vendorInfo":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    move-object/from16 v0, p0

    move-object/from16 v1, p16

    .line 231
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 232
    move/from16 v2, p1

    iput v2, v0, Landroid/hardware/radio/RadioManager$ModuleProperties;->mId:I

    .line 233
    invoke-static/range {p2 .. p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    const-string v3, "default"

    goto :goto_0

    :cond_0
    move-object/from16 v3, p2

    :goto_0
    iput-object v3, v0, Landroid/hardware/radio/RadioManager$ModuleProperties;->mServiceName:Ljava/lang/String;

    .line 234
    move/from16 v3, p3

    iput v3, v0, Landroid/hardware/radio/RadioManager$ModuleProperties;->mClassId:I

    .line 235
    move-object/from16 v4, p4

    iput-object v4, v0, Landroid/hardware/radio/RadioManager$ModuleProperties;->mImplementor:Ljava/lang/String;

    .line 236
    move-object/from16 v5, p5

    iput-object v5, v0, Landroid/hardware/radio/RadioManager$ModuleProperties;->mProduct:Ljava/lang/String;

    .line 237
    move-object/from16 v6, p6

    iput-object v6, v0, Landroid/hardware/radio/RadioManager$ModuleProperties;->mVersion:Ljava/lang/String;

    .line 238
    move-object/from16 v7, p7

    iput-object v7, v0, Landroid/hardware/radio/RadioManager$ModuleProperties;->mSerial:Ljava/lang/String;

    .line 239
    move/from16 v8, p8

    iput v8, v0, Landroid/hardware/radio/RadioManager$ModuleProperties;->mNumTuners:I

    .line 240
    move/from16 v9, p9

    iput v9, v0, Landroid/hardware/radio/RadioManager$ModuleProperties;->mNumAudioSources:I

    .line 241
    move/from16 v10, p10

    iput-boolean v10, v0, Landroid/hardware/radio/RadioManager$ModuleProperties;->mIsInitializationRequired:Z

    .line 242
    move/from16 v11, p11

    iput-boolean v11, v0, Landroid/hardware/radio/RadioManager$ModuleProperties;->mIsCaptureSupported:Z

    .line 243
    move-object/from16 v12, p12

    iput-object v12, v0, Landroid/hardware/radio/RadioManager$ModuleProperties;->mBands:[Landroid/hardware/radio/RadioManager$BandDescriptor;

    .line 244
    move/from16 v13, p13

    iput-boolean v13, v0, Landroid/hardware/radio/RadioManager$ModuleProperties;->mIsBgScanSupported:Z

    .line 245
    invoke-static/range {p14 .. p14}, Landroid/hardware/radio/RadioManager$ModuleProperties;->arrayToSet([I)Ljava/util/Set;

    move-result-object v14

    iput-object v14, v0, Landroid/hardware/radio/RadioManager$ModuleProperties;->mSupportedProgramTypes:Ljava/util/Set;

    .line 246
    invoke-static/range {p15 .. p15}, Landroid/hardware/radio/RadioManager$ModuleProperties;->arrayToSet([I)Ljava/util/Set;

    move-result-object v14

    iput-object v14, v0, Landroid/hardware/radio/RadioManager$ModuleProperties;->mSupportedIdentifierTypes:Ljava/util/Set;

    .line 247
    if-eqz v1, :cond_1

    .line 248
    invoke-interface/range {p16 .. p16}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v14

    invoke-interface {v14}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v14

    :goto_1
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_1

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/util/Map$Entry;

    .line 249
    .local v15, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Integer;>;"
    invoke-interface {v15}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v16

    move-object/from16 v2, v16

    check-cast v2, Ljava/lang/String;

    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 250
    invoke-interface {v15}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 251
    .end local v15    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Integer;>;"
    nop

    .line 248
    move/from16 v2, p1

    goto :goto_1

    .line 253
    :cond_1
    iput-object v1, v0, Landroid/hardware/radio/RadioManager$ModuleProperties;->mDabFrequencyTable:Ljava/util/Map;

    .line 254
    if-nez p17, :cond_2

    new-instance v14, Ljava/util/HashMap;

    invoke-direct {v14}, Ljava/util/HashMap;-><init>()V

    goto :goto_2

    :cond_2
    move-object/from16 v14, p17

    :goto_2
    iput-object v14, v0, Landroid/hardware/radio/RadioManager$ModuleProperties;->mVendorInfo:Ljava/util/Map;

    .line 255
    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 7
    .param p1, "in"    # Landroid/os/Parcel;

    .line 426
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 427
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/hardware/radio/RadioManager$ModuleProperties;->mId:I

    .line 428
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 429
    .local v0, "serviceName":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "default"

    goto :goto_0

    :cond_0
    move-object v1, v0

    :goto_0
    iput-object v1, p0, Landroid/hardware/radio/RadioManager$ModuleProperties;->mServiceName:Ljava/lang/String;

    .line 430
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Landroid/hardware/radio/RadioManager$ModuleProperties;->mClassId:I

    .line 431
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Landroid/hardware/radio/RadioManager$ModuleProperties;->mImplementor:Ljava/lang/String;

    .line 432
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Landroid/hardware/radio/RadioManager$ModuleProperties;->mProduct:Ljava/lang/String;

    .line 433
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Landroid/hardware/radio/RadioManager$ModuleProperties;->mVersion:Ljava/lang/String;

    .line 434
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Landroid/hardware/radio/RadioManager$ModuleProperties;->mSerial:Ljava/lang/String;

    .line 435
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Landroid/hardware/radio/RadioManager$ModuleProperties;->mNumTuners:I

    .line 436
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Landroid/hardware/radio/RadioManager$ModuleProperties;->mNumAudioSources:I

    .line 437
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ne v1, v3, :cond_1

    move v1, v3

    goto :goto_1

    :cond_1
    move v1, v2

    :goto_1
    iput-boolean v1, p0, Landroid/hardware/radio/RadioManager$ModuleProperties;->mIsInitializationRequired:Z

    .line 438
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-ne v1, v3, :cond_2

    move v1, v3

    goto :goto_2

    :cond_2
    move v1, v2

    :goto_2
    iput-boolean v1, p0, Landroid/hardware/radio/RadioManager$ModuleProperties;->mIsCaptureSupported:Z

    .line 439
    const-class v1, Landroid/hardware/radio/RadioManager$BandDescriptor;

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->readParcelableArray(Ljava/lang/ClassLoader;)[Landroid/os/Parcelable;

    move-result-object v1

    .line 440
    .local v1, "tmp":[Landroid/os/Parcelable;
    array-length v4, v1

    new-array v4, v4, [Landroid/hardware/radio/RadioManager$BandDescriptor;

    iput-object v4, p0, Landroid/hardware/radio/RadioManager$ModuleProperties;->mBands:[Landroid/hardware/radio/RadioManager$BandDescriptor;

    .line 441
    move v4, v2

    .local v4, "i":I
    :goto_3
    array-length v5, v1

    if-ge v4, v5, :cond_3

    .line 442
    iget-object v5, p0, Landroid/hardware/radio/RadioManager$ModuleProperties;->mBands:[Landroid/hardware/radio/RadioManager$BandDescriptor;

    aget-object v6, v1, v4

    check-cast v6, Landroid/hardware/radio/RadioManager$BandDescriptor;

    aput-object v6, v5, v4

    .line 441
    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    .line 444
    .end local v4    # "i":I
    :cond_3
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-ne v4, v3, :cond_4

    move v2, v3

    nop

    :cond_4
    iput-boolean v2, p0, Landroid/hardware/radio/RadioManager$ModuleProperties;->mIsBgScanSupported:Z

    .line 445
    invoke-virtual {p1}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v2

    invoke-static {v2}, Landroid/hardware/radio/RadioManager$ModuleProperties;->arrayToSet([I)Ljava/util/Set;

    move-result-object v2

    iput-object v2, p0, Landroid/hardware/radio/RadioManager$ModuleProperties;->mSupportedProgramTypes:Ljava/util/Set;

    .line 446
    invoke-virtual {p1}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v2

    invoke-static {v2}, Landroid/hardware/radio/RadioManager$ModuleProperties;->arrayToSet([I)Ljava/util/Set;

    move-result-object v2

    iput-object v2, p0, Landroid/hardware/radio/RadioManager$ModuleProperties;->mSupportedIdentifierTypes:Ljava/util/Set;

    .line 447
    invoke-static {p1}, Landroid/hardware/radio/Utils;->readStringIntMap(Landroid/os/Parcel;)Ljava/util/Map;

    move-result-object v2

    iput-object v2, p0, Landroid/hardware/radio/RadioManager$ModuleProperties;->mDabFrequencyTable:Ljava/util/Map;

    .line 448
    invoke-static {p1}, Landroid/hardware/radio/Utils;->readStringMap(Landroid/os/Parcel;)Ljava/util/Map;

    move-result-object v2

    iput-object v2, p0, Landroid/hardware/radio/RadioManager$ModuleProperties;->mVendorInfo:Ljava/util/Map;

    .line 449
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Landroid/hardware/radio/RadioManager$1;)V
    .locals 0
    .param p1, "x0"    # Landroid/os/Parcel;
    .param p2, "x1"    # Landroid/hardware/radio/RadioManager$1;

    .line 203
    invoke-direct {p0, p1}, Landroid/hardware/radio/RadioManager$ModuleProperties;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method private static arrayToSet([I)Ljava/util/Set;
    .locals 2
    .param p0, "arr"    # [I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([I)",
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 258
    invoke-static {p0}, Ljava/util/Arrays;->stream([I)Ljava/util/stream/IntStream;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/stream/IntStream;->boxed()Ljava/util/stream/Stream;

    move-result-object v0

    invoke-static {}, Ljava/util/stream/Collectors;->toSet()Ljava/util/stream/Collector;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    return-object v0
.end method

.method public static synthetic lambda$UV1wDVoVlbcxpr8zevj_aMFtUGw(Ljava/lang/Integer;)I
    .locals 0

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0
.end method

.method private static setToArray(Ljava/util/Set;)[I
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;)[I"
        }
    .end annotation

    .line 262
    .local p0, "set":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Integer;>;"
    invoke-interface {p0}, Ljava/util/Set;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    sget-object v1, Landroid/hardware/radio/-$$Lambda$RadioManager$ModuleProperties$UV1wDVoVlbcxpr8zevj_aMFtUGw;->INSTANCE:Landroid/hardware/radio/-$$Lambda$RadioManager$ModuleProperties$UV1wDVoVlbcxpr8zevj_aMFtUGw;

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->mapToInt(Ljava/util/function/ToIntFunction;)Ljava/util/stream/IntStream;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/stream/IntStream;->toArray()[I

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .line 485
    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "obj"    # Ljava/lang/Object;

    .line 511
    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    .line 512
    :cond_0
    instance-of v1, p1, Landroid/hardware/radio/RadioManager$ModuleProperties;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    .line 513
    :cond_1
    move-object v1, p1

    check-cast v1, Landroid/hardware/radio/RadioManager$ModuleProperties;

    .line 515
    .local v1, "other":Landroid/hardware/radio/RadioManager$ModuleProperties;
    iget v3, p0, Landroid/hardware/radio/RadioManager$ModuleProperties;->mId:I

    invoke-virtual {v1}, Landroid/hardware/radio/RadioManager$ModuleProperties;->getId()I

    move-result v4

    if-eq v3, v4, :cond_2

    return v2

    .line 516
    :cond_2
    iget-object v3, p0, Landroid/hardware/radio/RadioManager$ModuleProperties;->mServiceName:Ljava/lang/String;

    iget-object v4, v1, Landroid/hardware/radio/RadioManager$ModuleProperties;->mServiceName:Ljava/lang/String;

    invoke-static {v3, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_3

    return v2

    .line 517
    :cond_3
    iget v3, p0, Landroid/hardware/radio/RadioManager$ModuleProperties;->mClassId:I

    iget v4, v1, Landroid/hardware/radio/RadioManager$ModuleProperties;->mClassId:I

    if-eq v3, v4, :cond_4

    return v2

    .line 518
    :cond_4
    iget-object v3, p0, Landroid/hardware/radio/RadioManager$ModuleProperties;->mImplementor:Ljava/lang/String;

    iget-object v4, v1, Landroid/hardware/radio/RadioManager$ModuleProperties;->mImplementor:Ljava/lang/String;

    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_5

    return v2

    .line 519
    :cond_5
    iget-object v3, p0, Landroid/hardware/radio/RadioManager$ModuleProperties;->mProduct:Ljava/lang/String;

    iget-object v4, v1, Landroid/hardware/radio/RadioManager$ModuleProperties;->mProduct:Ljava/lang/String;

    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_6

    return v2

    .line 520
    :cond_6
    iget-object v3, p0, Landroid/hardware/radio/RadioManager$ModuleProperties;->mVersion:Ljava/lang/String;

    iget-object v4, v1, Landroid/hardware/radio/RadioManager$ModuleProperties;->mVersion:Ljava/lang/String;

    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_7

    return v2

    .line 521
    :cond_7
    iget-object v3, p0, Landroid/hardware/radio/RadioManager$ModuleProperties;->mSerial:Ljava/lang/String;

    iget-object v4, v1, Landroid/hardware/radio/RadioManager$ModuleProperties;->mSerial:Ljava/lang/String;

    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_8

    return v2

    .line 522
    :cond_8
    iget v3, p0, Landroid/hardware/radio/RadioManager$ModuleProperties;->mNumTuners:I

    iget v4, v1, Landroid/hardware/radio/RadioManager$ModuleProperties;->mNumTuners:I

    if-eq v3, v4, :cond_9

    return v2

    .line 523
    :cond_9
    iget v3, p0, Landroid/hardware/radio/RadioManager$ModuleProperties;->mNumAudioSources:I

    iget v4, v1, Landroid/hardware/radio/RadioManager$ModuleProperties;->mNumAudioSources:I

    if-eq v3, v4, :cond_a

    return v2

    .line 524
    :cond_a
    iget-boolean v3, p0, Landroid/hardware/radio/RadioManager$ModuleProperties;->mIsInitializationRequired:Z

    iget-boolean v4, v1, Landroid/hardware/radio/RadioManager$ModuleProperties;->mIsInitializationRequired:Z

    if-eq v3, v4, :cond_b

    return v2

    .line 525
    :cond_b
    iget-boolean v3, p0, Landroid/hardware/radio/RadioManager$ModuleProperties;->mIsCaptureSupported:Z

    iget-boolean v4, v1, Landroid/hardware/radio/RadioManager$ModuleProperties;->mIsCaptureSupported:Z

    if-eq v3, v4, :cond_c

    return v2

    .line 526
    :cond_c
    iget-object v3, p0, Landroid/hardware/radio/RadioManager$ModuleProperties;->mBands:[Landroid/hardware/radio/RadioManager$BandDescriptor;

    iget-object v4, v1, Landroid/hardware/radio/RadioManager$ModuleProperties;->mBands:[Landroid/hardware/radio/RadioManager$BandDescriptor;

    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_d

    return v2

    .line 527
    :cond_d
    iget-boolean v3, p0, Landroid/hardware/radio/RadioManager$ModuleProperties;->mIsBgScanSupported:Z

    iget-boolean v4, v1, Landroid/hardware/radio/RadioManager$ModuleProperties;->mIsBgScanSupported:Z

    if-eq v3, v4, :cond_e

    return v2

    .line 528
    :cond_e
    iget-object v3, p0, Landroid/hardware/radio/RadioManager$ModuleProperties;->mDabFrequencyTable:Ljava/util/Map;

    iget-object v4, v1, Landroid/hardware/radio/RadioManager$ModuleProperties;->mDabFrequencyTable:Ljava/util/Map;

    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_f

    return v2

    .line 529
    :cond_f
    iget-object v3, p0, Landroid/hardware/radio/RadioManager$ModuleProperties;->mVendorInfo:Ljava/util/Map;

    iget-object v4, v1, Landroid/hardware/radio/RadioManager$ModuleProperties;->mVendorInfo:Ljava/util/Map;

    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_10

    return v2

    .line 530
    :cond_10
    return v0
.end method

.method public getBands()[Landroid/hardware/radio/RadioManager$BandDescriptor;
    .locals 1

    .line 423
    iget-object v0, p0, Landroid/hardware/radio/RadioManager$ModuleProperties;->mBands:[Landroid/hardware/radio/RadioManager$BandDescriptor;

    return-object v0
.end method

.method public getClassId()I
    .locals 1

    .line 285
    iget v0, p0, Landroid/hardware/radio/RadioManager$ModuleProperties;->mClassId:I

    return v0
.end method

.method public getDabFrequencyTable()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 402
    iget-object v0, p0, Landroid/hardware/radio/RadioManager$ModuleProperties;->mDabFrequencyTable:Ljava/util/Map;

    return-object v0
.end method

.method public getId()I
    .locals 1

    .line 270
    iget v0, p0, Landroid/hardware/radio/RadioManager$ModuleProperties;->mId:I

    return v0
.end method

.method public getImplementor()Ljava/lang/String;
    .locals 1

    .line 292
    iget-object v0, p0, Landroid/hardware/radio/RadioManager$ModuleProperties;->mImplementor:Ljava/lang/String;

    return-object v0
.end method

.method public getNumAudioSources()I
    .locals 1

    .line 332
    iget v0, p0, Landroid/hardware/radio/RadioManager$ModuleProperties;->mNumAudioSources:I

    return v0
.end method

.method public getNumTuners()I
    .locals 1

    .line 322
    iget v0, p0, Landroid/hardware/radio/RadioManager$ModuleProperties;->mNumTuners:I

    return v0
.end method

.method public getProduct()Ljava/lang/String;
    .locals 1

    .line 299
    iget-object v0, p0, Landroid/hardware/radio/RadioManager$ModuleProperties;->mProduct:Ljava/lang/String;

    return-object v0
.end method

.method public getSerial()Ljava/lang/String;
    .locals 1

    .line 314
    iget-object v0, p0, Landroid/hardware/radio/RadioManager$ModuleProperties;->mSerial:Ljava/lang/String;

    return-object v0
.end method

.method public getServiceName()Ljava/lang/String;
    .locals 1

    .line 278
    iget-object v0, p0, Landroid/hardware/radio/RadioManager$ModuleProperties;->mServiceName:Ljava/lang/String;

    return-object v0
.end method

.method public getVendorInfo()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 416
    iget-object v0, p0, Landroid/hardware/radio/RadioManager$ModuleProperties;->mVendorInfo:Ljava/util/Map;

    return-object v0
.end method

.method public getVersion()Ljava/lang/String;
    .locals 1

    .line 306
    iget-object v0, p0, Landroid/hardware/radio/RadioManager$ModuleProperties;->mVersion:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    .line 504
    const/16 v0, 0xf

    new-array v0, v0, [Ljava/lang/Object;

    iget v1, p0, Landroid/hardware/radio/RadioManager$ModuleProperties;->mId:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v1, p0, Landroid/hardware/radio/RadioManager$ModuleProperties;->mServiceName:Ljava/lang/String;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget v1, p0, Landroid/hardware/radio/RadioManager$ModuleProperties;->mClassId:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    iget-object v1, p0, Landroid/hardware/radio/RadioManager$ModuleProperties;->mImplementor:Ljava/lang/String;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    iget-object v1, p0, Landroid/hardware/radio/RadioManager$ModuleProperties;->mProduct:Ljava/lang/String;

    const/4 v2, 0x4

    aput-object v1, v0, v2

    iget-object v1, p0, Landroid/hardware/radio/RadioManager$ModuleProperties;->mVersion:Ljava/lang/String;

    const/4 v2, 0x5

    aput-object v1, v0, v2

    iget-object v1, p0, Landroid/hardware/radio/RadioManager$ModuleProperties;->mSerial:Ljava/lang/String;

    const/4 v2, 0x6

    aput-object v1, v0, v2

    iget v1, p0, Landroid/hardware/radio/RadioManager$ModuleProperties;->mNumTuners:I

    .line 505
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x7

    aput-object v1, v0, v2

    iget v1, p0, Landroid/hardware/radio/RadioManager$ModuleProperties;->mNumAudioSources:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x8

    aput-object v1, v0, v2

    iget-boolean v1, p0, Landroid/hardware/radio/RadioManager$ModuleProperties;->mIsInitializationRequired:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/16 v2, 0x9

    aput-object v1, v0, v2

    iget-boolean v1, p0, Landroid/hardware/radio/RadioManager$ModuleProperties;->mIsCaptureSupported:Z

    .line 506
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/16 v2, 0xa

    aput-object v1, v0, v2

    iget-object v1, p0, Landroid/hardware/radio/RadioManager$ModuleProperties;->mBands:[Landroid/hardware/radio/RadioManager$BandDescriptor;

    const/16 v2, 0xb

    aput-object v1, v0, v2

    iget-boolean v1, p0, Landroid/hardware/radio/RadioManager$ModuleProperties;->mIsBgScanSupported:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/16 v2, 0xc

    aput-object v1, v0, v2

    iget-object v1, p0, Landroid/hardware/radio/RadioManager$ModuleProperties;->mDabFrequencyTable:Ljava/util/Map;

    const/16 v2, 0xd

    aput-object v1, v0, v2

    iget-object v1, p0, Landroid/hardware/radio/RadioManager$ModuleProperties;->mVendorInfo:Ljava/util/Map;

    const/16 v2, 0xe

    aput-object v1, v0, v2

    .line 504
    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public isBackgroundScanningSupported()Z
    .locals 1

    .line 364
    iget-boolean v0, p0, Landroid/hardware/radio/RadioManager$ModuleProperties;->mIsBgScanSupported:Z

    return v0
.end method

.method public isCaptureSupported()Z
    .locals 1

    .line 353
    iget-boolean v0, p0, Landroid/hardware/radio/RadioManager$ModuleProperties;->mIsCaptureSupported:Z

    return v0
.end method

.method public isInitializationRequired()Z
    .locals 1

    .line 344
    iget-boolean v0, p0, Landroid/hardware/radio/RadioManager$ModuleProperties;->mIsInitializationRequired:Z

    return v0
.end method

.method public isProgramIdentifierSupported(I)Z
    .locals 2
    .param p1, "type"    # I

    .line 389
    iget-object v0, p0, Landroid/hardware/radio/RadioManager$ModuleProperties;->mSupportedIdentifierTypes:Ljava/util/Set;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public isProgramTypeSupported(I)Z
    .locals 2
    .param p1, "type"    # I

    .line 376
    iget-object v0, p0, Landroid/hardware/radio/RadioManager$ModuleProperties;->mSupportedProgramTypes:Ljava/util/Set;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 490
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ModuleProperties [mId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/hardware/radio/RadioManager$ModuleProperties;->mId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mServiceName="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroid/hardware/radio/RadioManager$ModuleProperties;->mServiceName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", mClassId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/hardware/radio/RadioManager$ModuleProperties;->mClassId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mImplementor="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroid/hardware/radio/RadioManager$ModuleProperties;->mImplementor:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", mProduct="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroid/hardware/radio/RadioManager$ModuleProperties;->mProduct:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", mVersion="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroid/hardware/radio/RadioManager$ModuleProperties;->mVersion:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", mSerial="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroid/hardware/radio/RadioManager$ModuleProperties;->mSerial:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", mNumTuners="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/hardware/radio/RadioManager$ModuleProperties;->mNumTuners:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mNumAudioSources="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/hardware/radio/RadioManager$ModuleProperties;->mNumAudioSources:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mIsInitializationRequired="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Landroid/hardware/radio/RadioManager$ModuleProperties;->mIsInitializationRequired:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", mIsCaptureSupported="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Landroid/hardware/radio/RadioManager$ModuleProperties;->mIsCaptureSupported:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", mIsBgScanSupported="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Landroid/hardware/radio/RadioManager$ModuleProperties;->mIsBgScanSupported:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", mBands="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroid/hardware/radio/RadioManager$ModuleProperties;->mBands:[Landroid/hardware/radio/RadioManager$BandDescriptor;

    .line 499
    invoke-static {v1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 490
    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 464
    iget v0, p0, Landroid/hardware/radio/RadioManager$ModuleProperties;->mId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 465
    iget-object v0, p0, Landroid/hardware/radio/RadioManager$ModuleProperties;->mServiceName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 466
    iget v0, p0, Landroid/hardware/radio/RadioManager$ModuleProperties;->mClassId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 467
    iget-object v0, p0, Landroid/hardware/radio/RadioManager$ModuleProperties;->mImplementor:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 468
    iget-object v0, p0, Landroid/hardware/radio/RadioManager$ModuleProperties;->mProduct:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 469
    iget-object v0, p0, Landroid/hardware/radio/RadioManager$ModuleProperties;->mVersion:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 470
    iget-object v0, p0, Landroid/hardware/radio/RadioManager$ModuleProperties;->mSerial:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 471
    iget v0, p0, Landroid/hardware/radio/RadioManager$ModuleProperties;->mNumTuners:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 472
    iget v0, p0, Landroid/hardware/radio/RadioManager$ModuleProperties;->mNumAudioSources:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 473
    iget-boolean v0, p0, Landroid/hardware/radio/RadioManager$ModuleProperties;->mIsInitializationRequired:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 474
    iget-boolean v0, p0, Landroid/hardware/radio/RadioManager$ModuleProperties;->mIsCaptureSupported:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 475
    iget-object v0, p0, Landroid/hardware/radio/RadioManager$ModuleProperties;->mBands:[Landroid/hardware/radio/RadioManager$BandDescriptor;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelableArray([Landroid/os/Parcelable;I)V

    .line 476
    iget-boolean v0, p0, Landroid/hardware/radio/RadioManager$ModuleProperties;->mIsBgScanSupported:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 477
    iget-object v0, p0, Landroid/hardware/radio/RadioManager$ModuleProperties;->mSupportedProgramTypes:Ljava/util/Set;

    invoke-static {v0}, Landroid/hardware/radio/RadioManager$ModuleProperties;->setToArray(Ljava/util/Set;)[I

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 478
    iget-object v0, p0, Landroid/hardware/radio/RadioManager$ModuleProperties;->mSupportedIdentifierTypes:Ljava/util/Set;

    invoke-static {v0}, Landroid/hardware/radio/RadioManager$ModuleProperties;->setToArray(Ljava/util/Set;)[I

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 479
    iget-object v0, p0, Landroid/hardware/radio/RadioManager$ModuleProperties;->mDabFrequencyTable:Ljava/util/Map;

    invoke-static {p1, v0}, Landroid/hardware/radio/Utils;->writeStringIntMap(Landroid/os/Parcel;Ljava/util/Map;)V

    .line 480
    iget-object v0, p0, Landroid/hardware/radio/RadioManager$ModuleProperties;->mVendorInfo:Ljava/util/Map;

    invoke-static {p1, v0}, Landroid/hardware/radio/Utils;->writeStringMap(Landroid/os/Parcel;Ljava/util/Map;)V

    .line 481
    return-void
.end method
