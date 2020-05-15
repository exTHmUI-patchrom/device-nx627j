.class public Lcom/android/internal/telephony/dataconnection/CellularDataService;
.super Landroid/telephony/data/DataService;
.source "CellularDataService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/dataconnection/CellularDataService$CellularDataServiceProvider;
    }
.end annotation


# static fields
.field private static final DATA_CALL_LIST_CHANGED:I = 0x6

.field private static final DBG:Z = false

.field private static final DEACTIVATE_DATA_ALL_COMPLETE:I = 0x2

.field private static final GET_DATA_CALL_LIST_COMPLETE:I = 0x5

.field private static final SETUP_DATA_CALL_COMPLETE:I = 0x1

.field private static final SET_DATA_PROFILE_COMPLETE:I = 0x4

.field private static final SET_INITIAL_ATTACH_APN_COMPLETE:I = 0x3

.field private static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 53
    const-class v0, Lcom/android/internal/telephony/dataconnection/CellularDataService;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/internal/telephony/dataconnection/CellularDataService;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 52
    invoke-direct {p0}, Landroid/telephony/data/DataService;-><init>()V

    return-void
.end method

.method static synthetic access$200(Lcom/android/internal/telephony/dataconnection/CellularDataService;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/telephony/dataconnection/CellularDataService;
    .param p1, "x1"    # Ljava/lang/String;

    .line 52
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/dataconnection/CellularDataService;->loge(Ljava/lang/String;)V

    return-void
.end method

.method private log(Ljava/lang/String;)V
    .locals 1
    .param p1, "s"    # Ljava/lang/String;

    .line 328
    sget-object v0, Lcom/android/internal/telephony/dataconnection/CellularDataService;->TAG:Ljava/lang/String;

    invoke-static {v0, p1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 329
    return-void
.end method

.method private loge(Ljava/lang/String;)V
    .locals 1
    .param p1, "s"    # Ljava/lang/String;

    .line 332
    sget-object v0, Lcom/android/internal/telephony/dataconnection/CellularDataService;->TAG:Ljava/lang/String;

    invoke-static {v0, p1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 333
    return-void
.end method


# virtual methods
.method public convertDataCallResult(Landroid/hardware/radio/V1_0/SetupDataCallResult;)Landroid/telephony/data/DataCallResponse;
    .locals 21
    .param p1, "dcResult"    # Landroid/hardware/radio/V1_0/SetupDataCallResult;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    move-object/from16 v1, p0

    .line 241
    move-object/from16 v2, p1

    if-nez v2, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 244
    :cond_0
    const/4 v0, 0x0

    .line 245
    .local v0, "addresses":[Ljava/lang/String;
    iget-object v3, v2, Landroid/hardware/radio/V1_0/SetupDataCallResult;->addresses:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 246
    iget-object v3, v2, Landroid/hardware/radio/V1_0/SetupDataCallResult;->addresses:Ljava/lang/String;

    const-string v4, "\\s+"

    invoke-virtual {v3, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 249
    .end local v0    # "addresses":[Ljava/lang/String;
    .local v3, "addresses":[Ljava/lang/String;
    :cond_1
    move-object v3, v0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    move-object v15, v0

    .line 250
    .local v15, "laList":Ljava/util/List;, "Ljava/util/List<Landroid/net/LinkAddress;>;"
    const/4 v4, 0x0

    if-eqz v3, :cond_5

    .line 251
    array-length v5, v3

    move v6, v4

    :goto_0
    if-ge v6, v5, :cond_5

    aget-object v0, v3, v6

    .line 252
    .local v0, "address":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v7

    .line 253
    .end local v0    # "address":Ljava/lang/String;
    .local v7, "address":Ljava/lang/String;
    invoke-virtual {v7}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    .end local v7    # "address":Ljava/lang/String;
    goto :goto_3

    .line 259
    .restart local v7    # "address":Ljava/lang/String;
    :cond_2
    :try_start_0
    const-string v0, "/"

    invoke-virtual {v7, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    array-length v0, v0

    const/4 v8, 0x2

    if-ne v0, v8, :cond_3

    .line 260
    new-instance v0, Landroid/net/LinkAddress;

    invoke-direct {v0, v7}, Landroid/net/LinkAddress;-><init>(Ljava/lang/String;)V

    .local v0, "la":Landroid/net/LinkAddress;
    goto :goto_2

    .line 262
    .end local v0    # "la":Landroid/net/LinkAddress;
    :cond_3
    invoke-static {v7}, Landroid/net/NetworkUtils;->numericToInetAddress(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v0

    .line 263
    .local v0, "ia":Ljava/net/InetAddress;
    new-instance v8, Landroid/net/LinkAddress;

    instance-of v9, v0, Ljava/net/Inet4Address;

    if-eqz v9, :cond_4

    const/16 v9, 0x20

    goto :goto_1

    :cond_4
    const/16 v9, 0x80

    :goto_1
    invoke-direct {v8, v0, v9}, Landroid/net/LinkAddress;-><init>(Ljava/net/InetAddress;I)V

    .end local v0    # "ia":Ljava/net/InetAddress;
    move-object v0, v8

    .line 266
    .local v0, "la":Landroid/net/LinkAddress;
    :goto_2
    invoke-interface {v15, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 269
    .end local v0    # "la":Landroid/net/LinkAddress;
    goto :goto_3

    .line 267
    :catch_0
    move-exception v0

    .line 268
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Unknown address: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, ", exception = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v1, v8}, Lcom/android/internal/telephony/dataconnection/CellularDataService;->loge(Ljava/lang/String;)V

    .line 251
    .end local v0    # "e":Ljava/lang/IllegalArgumentException;
    .end local v7    # "address":Ljava/lang/String;
    :goto_3
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 274
    :cond_5
    const/4 v0, 0x0

    .line 275
    .local v0, "dnses":[Ljava/lang/String;
    iget-object v5, v2, Landroid/hardware/radio/V1_0/SetupDataCallResult;->dnses:Ljava/lang/String;

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_6

    .line 276
    iget-object v5, v2, Landroid/hardware/radio/V1_0/SetupDataCallResult;->dnses:Ljava/lang/String;

    const-string v6, "\\s+"

    invoke-virtual {v5, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 279
    .end local v0    # "dnses":[Ljava/lang/String;
    .local v14, "dnses":[Ljava/lang/String;
    :cond_6
    move-object v14, v0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    move-object v13, v0

    .line 280
    .local v13, "dnsList":Ljava/util/List;, "Ljava/util/List<Ljava/net/InetAddress;>;"
    if-eqz v14, :cond_7

    .line 281
    array-length v5, v14

    move v6, v4

    :goto_4
    if-ge v6, v5, :cond_7

    aget-object v0, v14, v6

    .line 282
    .local v0, "dns":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v7

    .line 285
    .end local v0    # "dns":Ljava/lang/String;
    .local v7, "dns":Ljava/lang/String;
    :try_start_1
    invoke-static {v7}, Landroid/net/NetworkUtils;->numericToInetAddress(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v0

    .line 286
    .local v0, "ia":Ljava/net/InetAddress;
    invoke-interface {v13, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_1

    .line 289
    goto :goto_5

    .line 287
    .end local v0    # "ia":Ljava/net/InetAddress;
    :catch_1
    move-exception v0

    .line 288
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Unknown dns: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, ", exception = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v1, v8}, Lcom/android/internal/telephony/dataconnection/CellularDataService;->loge(Ljava/lang/String;)V

    .line 281
    .end local v0    # "e":Ljava/lang/IllegalArgumentException;
    .end local v7    # "dns":Ljava/lang/String;
    :goto_5
    add-int/lit8 v6, v6, 0x1

    goto :goto_4

    .line 294
    :cond_7
    const/4 v0, 0x0

    .line 295
    .local v0, "gateways":[Ljava/lang/String;
    iget-object v5, v2, Landroid/hardware/radio/V1_0/SetupDataCallResult;->gateways:Ljava/lang/String;

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_8

    .line 296
    iget-object v5, v2, Landroid/hardware/radio/V1_0/SetupDataCallResult;->gateways:Ljava/lang/String;

    const-string v6, "\\s+"

    invoke-virtual {v5, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 299
    .end local v0    # "gateways":[Ljava/lang/String;
    .local v12, "gateways":[Ljava/lang/String;
    :cond_8
    move-object v12, v0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    move-object v11, v0

    .line 300
    .local v11, "gatewayList":Ljava/util/List;, "Ljava/util/List<Ljava/net/InetAddress;>;"
    if-eqz v12, :cond_9

    .line 301
    array-length v5, v12

    :goto_6
    if-ge v4, v5, :cond_9

    aget-object v0, v12, v4

    .line 302
    .local v0, "gateway":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    .line 305
    .end local v0    # "gateway":Ljava/lang/String;
    .local v6, "gateway":Ljava/lang/String;
    :try_start_2
    invoke-static {v6}, Landroid/net/NetworkUtils;->numericToInetAddress(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v0

    .line 306
    .local v0, "ia":Ljava/net/InetAddress;
    invoke-interface {v11, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_2

    .line 309
    goto :goto_7

    .line 307
    .end local v0    # "ia":Ljava/net/InetAddress;
    :catch_2
    move-exception v0

    .line 308
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Unknown gateway: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, ", exception = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v1, v7}, Lcom/android/internal/telephony/dataconnection/CellularDataService;->loge(Ljava/lang/String;)V

    .line 301
    .end local v0    # "e":Ljava/lang/IllegalArgumentException;
    .end local v6    # "gateway":Ljava/lang/String;
    :goto_7
    add-int/lit8 v4, v4, 0x1

    goto :goto_6

    .line 313
    :cond_9
    new-instance v0, Landroid/telephony/data/DataCallResponse;

    iget v5, v2, Landroid/hardware/radio/V1_0/SetupDataCallResult;->status:I

    iget v6, v2, Landroid/hardware/radio/V1_0/SetupDataCallResult;->suggestedRetryTime:I

    iget v7, v2, Landroid/hardware/radio/V1_0/SetupDataCallResult;->cid:I

    iget v8, v2, Landroid/hardware/radio/V1_0/SetupDataCallResult;->active:I

    iget-object v9, v2, Landroid/hardware/radio/V1_0/SetupDataCallResult;->type:Ljava/lang/String;

    iget-object v10, v2, Landroid/hardware/radio/V1_0/SetupDataCallResult;->ifname:Ljava/lang/String;

    new-instance v4, Ljava/util/ArrayList;

    iget-object v1, v2, Landroid/hardware/radio/V1_0/SetupDataCallResult;->pcscf:Ljava/lang/String;

    .line 322
    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    move-object/from16 v16, v3

    const-string v3, "\\s+"

    .end local v3    # "addresses":[Ljava/lang/String;
    .local v16, "addresses":[Ljava/lang/String;
    invoke-virtual {v1, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v4, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iget v1, v2, Landroid/hardware/radio/V1_0/SetupDataCallResult;->mtu:I

    move-object v3, v4

    move-object v4, v0

    move-object/from16 v17, v11

    move-object v11, v15

    .end local v11    # "gatewayList":Ljava/util/List;, "Ljava/util/List<Ljava/net/InetAddress;>;"
    .local v17, "gatewayList":Ljava/util/List;, "Ljava/util/List<Ljava/net/InetAddress;>;"
    move-object/from16 v18, v12

    move-object v12, v13

    .end local v12    # "gateways":[Ljava/lang/String;
    .local v18, "gateways":[Ljava/lang/String;
    move-object/from16 v19, v13

    move-object/from16 v13, v17

    .end local v13    # "dnsList":Ljava/util/List;, "Ljava/util/List<Ljava/net/InetAddress;>;"
    .local v19, "dnsList":Ljava/util/List;, "Ljava/util/List<Ljava/net/InetAddress;>;"
    move-object/from16 v20, v14

    move-object v14, v3

    .end local v14    # "dnses":[Ljava/lang/String;
    .local v20, "dnses":[Ljava/lang/String;
    move-object v3, v15

    move v15, v1

    .end local v15    # "laList":Ljava/util/List;, "Ljava/util/List<Landroid/net/LinkAddress;>;"
    .local v3, "laList":Ljava/util/List;, "Ljava/util/List<Landroid/net/LinkAddress;>;"
    invoke-direct/range {v4 .. v15}, Landroid/telephony/data/DataCallResponse;-><init>(IIIILjava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;I)V

    .line 313
    return-object v0
.end method

.method public createDataServiceProvider(I)Landroid/telephony/data/DataService$DataServiceProvider;
    .locals 3
    .param p1, "slotId"    # I

    .line 226
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Cellular data service created for slot "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/dataconnection/CellularDataService;->log(Ljava/lang/String;)V

    .line 227
    invoke-static {p1}, Landroid/telephony/SubscriptionManager;->isValidSlotIndex(I)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 228
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Tried to cellular data service with invalid slotId "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/dataconnection/CellularDataService;->loge(Ljava/lang/String;)V

    .line 229
    return-object v1

    .line 231
    :cond_0
    new-instance v0, Lcom/android/internal/telephony/dataconnection/CellularDataService$CellularDataServiceProvider;

    invoke-direct {v0, p0, p1, v1}, Lcom/android/internal/telephony/dataconnection/CellularDataService$CellularDataServiceProvider;-><init>(Lcom/android/internal/telephony/dataconnection/CellularDataService;ILcom/android/internal/telephony/dataconnection/CellularDataService$1;)V

    return-object v0
.end method
