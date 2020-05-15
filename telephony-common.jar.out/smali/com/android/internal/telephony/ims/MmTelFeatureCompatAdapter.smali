.class public Lcom/android/internal/telephony/ims/MmTelFeatureCompatAdapter;
.super Landroid/telephony/ims/feature/MmTelFeature;
.source "MmTelFeatureCompatAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/ims/MmTelFeatureCompatAdapter$ImsRegistrationListenerBase;,
        Lcom/android/internal/telephony/ims/MmTelFeatureCompatAdapter$ConfigListener;
    }
.end annotation


# static fields
.field public static final ACTION_IMS_INCOMING_CALL:Ljava/lang/String; = "com.android.ims.IMS_INCOMING_CALL"

.field public static final FEATURE_DISABLED:I = 0x0

.field public static final FEATURE_ENABLED:I = 0x1

.field public static final FEATURE_TYPE_UNKNOWN:I = -0x1

.field public static final FEATURE_TYPE_UT_OVER_LTE:I = 0x4

.field public static final FEATURE_TYPE_UT_OVER_WIFI:I = 0x5

.field public static final FEATURE_TYPE_VIDEO_OVER_LTE:I = 0x1

.field public static final FEATURE_TYPE_VIDEO_OVER_WIFI:I = 0x3

.field public static final FEATURE_TYPE_VOICE_OVER_LTE:I = 0x0

.field public static final FEATURE_TYPE_VOICE_OVER_WIFI:I = 0x2

.field public static final FEATURE_UNKNOWN:I = -0x1

.field private static final REG_TECH_TO_NET_TYPE:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static final TAG:Ljava/lang/String; = "MmTelFeatureCompat"

.field private static final WAIT_TIMEOUT_MS:I = 0x7d0


# instance fields
.field private final mCompatFeature:Lcom/android/internal/telephony/ims/MmTelInterfaceAdapter;

.field private final mListener:Lcom/android/ims/internal/IImsRegistrationListener;

.field private mReceiver:Landroid/content/BroadcastReceiver;

.field private mRegCompatAdapter:Lcom/android/internal/telephony/ims/ImsRegistrationCompatAdapter;

.field private mSessionId:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 61
    new-instance v0, Ljava/util/HashMap;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    sput-object v0, Lcom/android/internal/telephony/ims/MmTelFeatureCompatAdapter;->REG_TECH_TO_NET_TYPE:Ljava/util/Map;

    .line 64
    sget-object v0, Lcom/android/internal/telephony/ims/MmTelFeatureCompatAdapter;->REG_TECH_TO_NET_TYPE:Ljava/util/Map;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 65
    const/16 v2, 0xd

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 64
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 66
    sget-object v0, Lcom/android/internal/telephony/ims/MmTelFeatureCompatAdapter;->REG_TECH_TO_NET_TYPE:Ljava/util/Map;

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 67
    const/16 v2, 0x12

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 66
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 68
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;ILcom/android/internal/telephony/ims/MmTelInterfaceAdapter;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "slotId"    # I
    .param p3, "compatFeature"    # Lcom/android/internal/telephony/ims/MmTelInterfaceAdapter;

    .line 285
    invoke-direct {p0}, Landroid/telephony/ims/feature/MmTelFeature;-><init>()V

    .line 59
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/internal/telephony/ims/MmTelFeatureCompatAdapter;->mSessionId:I

    .line 135
    new-instance v0, Lcom/android/internal/telephony/ims/MmTelFeatureCompatAdapter$1;

    invoke-direct {v0, p0}, Lcom/android/internal/telephony/ims/MmTelFeatureCompatAdapter$1;-><init>(Lcom/android/internal/telephony/ims/MmTelFeatureCompatAdapter;)V

    iput-object v0, p0, Lcom/android/internal/telephony/ims/MmTelFeatureCompatAdapter;->mListener:Lcom/android/ims/internal/IImsRegistrationListener;

    .line 265
    new-instance v0, Lcom/android/internal/telephony/ims/MmTelFeatureCompatAdapter$2;

    invoke-direct {v0, p0}, Lcom/android/internal/telephony/ims/MmTelFeatureCompatAdapter$2;-><init>(Lcom/android/internal/telephony/ims/MmTelFeatureCompatAdapter;)V

    iput-object v0, p0, Lcom/android/internal/telephony/ims/MmTelFeatureCompatAdapter;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 286
    invoke-virtual {p0, p1, p2}, Lcom/android/internal/telephony/ims/MmTelFeatureCompatAdapter;->initialize(Landroid/content/Context;I)V

    .line 287
    iput-object p3, p0, Lcom/android/internal/telephony/ims/MmTelFeatureCompatAdapter;->mCompatFeature:Lcom/android/internal/telephony/ims/MmTelInterfaceAdapter;

    .line 288
    return-void
.end method

.method static synthetic access$000(Lcom/android/internal/telephony/ims/MmTelFeatureCompatAdapter;[I)Landroid/telephony/ims/feature/MmTelFeature$MmTelCapabilities;
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/telephony/ims/MmTelFeatureCompatAdapter;
    .param p1, "x1"    # [I

    .line 49
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/ims/MmTelFeatureCompatAdapter;->convertCapabilities([I)Landroid/telephony/ims/feature/MmTelFeature$MmTelCapabilities;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/internal/telephony/ims/MmTelFeatureCompatAdapter;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/telephony/ims/MmTelFeatureCompatAdapter;

    .line 49
    iget v0, p0, Lcom/android/internal/telephony/ims/MmTelFeatureCompatAdapter;->mSessionId:I

    return v0
.end method

.method static synthetic access$200(Lcom/android/internal/telephony/ims/MmTelFeatureCompatAdapter;)Lcom/android/internal/telephony/ims/MmTelInterfaceAdapter;
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/telephony/ims/MmTelFeatureCompatAdapter;

    .line 49
    iget-object v0, p0, Lcom/android/internal/telephony/ims/MmTelFeatureCompatAdapter;->mCompatFeature:Lcom/android/internal/telephony/ims/MmTelInterfaceAdapter;

    return-object v0
.end method

.method private convertCapabilities([I)Landroid/telephony/ims/feature/MmTelFeature$MmTelCapabilities;
    .locals 6
    .param p1, "enabledFeatures"    # [I

    .line 485
    array-length v0, p1

    new-array v0, v0, [Z

    .line 486
    .local v0, "featuresEnabled":[Z
    const/4 v1, 0x0

    move v2, v1

    .line 487
    .local v2, "i":I
    :goto_0
    const/4 v3, 0x5

    const/4 v4, 0x1

    if-gt v2, v3, :cond_2

    array-length v5, p1

    if-ge v2, v5, :cond_2

    .line 488
    aget v3, p1, v2

    if-ne v3, v2, :cond_0

    .line 489
    aput-boolean v4, v0, v2

    goto :goto_1

    .line 490
    :cond_0
    aget v3, p1, v2

    const/4 v4, -0x1

    if-ne v3, v4, :cond_1

    .line 492
    aput-boolean v1, v0, v2

    .line 487
    :cond_1
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 495
    .end local v2    # "i":I
    :cond_2
    new-instance v2, Landroid/telephony/ims/feature/MmTelFeature$MmTelCapabilities;

    invoke-direct {v2}, Landroid/telephony/ims/feature/MmTelFeature$MmTelCapabilities;-><init>()V

    .line 496
    .local v2, "capabilities":Landroid/telephony/ims/feature/MmTelFeature$MmTelCapabilities;
    aget-boolean v1, v0, v1

    const/4 v5, 0x2

    if-nez v1, :cond_3

    aget-boolean v1, v0, v5

    if-eqz v1, :cond_4

    .line 499
    :cond_3
    invoke-virtual {v2, v4}, Landroid/telephony/ims/feature/MmTelFeature$MmTelCapabilities;->addCapabilities(I)V

    .line 501
    :cond_4
    aget-boolean v1, v0, v4

    if-nez v1, :cond_5

    const/4 v1, 0x3

    aget-boolean v1, v0, v1

    if-eqz v1, :cond_6

    .line 504
    :cond_5
    invoke-virtual {v2, v5}, Landroid/telephony/ims/feature/MmTelFeature$MmTelCapabilities;->addCapabilities(I)V

    .line 506
    :cond_6
    const/4 v1, 0x4

    aget-boolean v4, v0, v1

    if-nez v4, :cond_7

    aget-boolean v3, v0, v3

    if-eqz v3, :cond_8

    .line 509
    :cond_7
    invoke-virtual {v2, v1}, Landroid/telephony/ims/feature/MmTelFeature$MmTelCapabilities;->addCapabilities(I)V

    .line 511
    :cond_8
    const-string v1, "MmTelFeatureCompat"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "convertCapabilities - capabilities: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 512
    return-object v2
.end method

.method private convertCapability(II)I
    .locals 3
    .param p1, "capability"    # I
    .param p2, "radioTech"    # I

    .line 523
    const/4 v0, -0x1

    .line 524
    .local v0, "capConverted":I
    const/4 v1, 0x4

    if-nez p2, :cond_1

    .line 525
    if-eq p1, v1, :cond_0

    packed-switch p1, :pswitch_data_0

    goto :goto_0

    .line 530
    :pswitch_0
    const/4 v0, 0x1

    .line 531
    goto :goto_0

    .line 527
    :pswitch_1
    const/4 v0, 0x0

    .line 528
    goto :goto_0

    .line 533
    :cond_0
    const/4 v0, 0x4

    .line 534
    :goto_0
    goto :goto_1

    .line 536
    :cond_1
    const/4 v2, 0x1

    if-ne p2, v2, :cond_3

    .line 537
    if-eq p1, v1, :cond_2

    packed-switch p1, :pswitch_data_1

    goto :goto_1

    .line 542
    :pswitch_2
    const/4 v0, 0x3

    .line 543
    goto :goto_1

    .line 539
    :pswitch_3
    const/4 v0, 0x2

    .line 540
    goto :goto_1

    .line 545
    :cond_2
    const/4 v0, 0x5

    .line 549
    :cond_3
    :goto_1
    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_3
        :pswitch_2
    .end packed-switch
.end method

.method private createIncomingCallPendingIntent()Landroid/app/PendingIntent;
    .locals 4

    .line 516
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.android.ims.IMS_INCOMING_CALL"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 517
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "com.android.phone"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 518
    iget-object v1, p0, Lcom/android/internal/telephony/ims/MmTelFeatureCompatAdapter;->mContext:Landroid/content/Context;

    const/4 v2, 0x0

    const/high16 v3, 0x8000000

    invoke-static {v1, v2, v0, v3}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    return-object v1
.end method


# virtual methods
.method public addRegistrationAdapter(Lcom/android/internal/telephony/ims/ImsRegistrationCompatAdapter;)V
    .locals 0
    .param p1, "regCompat"    # Lcom/android/internal/telephony/ims/ImsRegistrationCompatAdapter;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 481
    iput-object p1, p0, Lcom/android/internal/telephony/ims/MmTelFeatureCompatAdapter;->mRegCompatAdapter:Lcom/android/internal/telephony/ims/ImsRegistrationCompatAdapter;

    .line 482
    return-void
.end method

.method public changeEnabledCapabilities(Landroid/telephony/ims/feature/CapabilityChangeRequest;Landroid/telephony/ims/feature/ImsFeature$CapabilityCallbackProxy;)V
    .locals 16
    .param p1, "request"    # Landroid/telephony/ims/feature/CapabilityChangeRequest;
    .param p2, "c"    # Landroid/telephony/ims/feature/ImsFeature$CapabilityCallbackProxy;

    move-object/from16 v8, p0

    .line 321
    if-nez p1, :cond_0

    .line 322
    return-void

    .line 325
    :cond_0
    :try_start_0
    iget-object v0, v8, Lcom/android/internal/telephony/ims/MmTelFeatureCompatAdapter;->mCompatFeature:Lcom/android/internal/telephony/ims/MmTelInterfaceAdapter;

    invoke-virtual {v0}, Lcom/android/internal/telephony/ims/MmTelInterfaceAdapter;->getConfigInterface()Lcom/android/ims/internal/IImsConfig;

    move-result-object v0

    .line 327
    .local v0, "imsConfig":Lcom/android/ims/internal/IImsConfig;
    invoke-virtual/range {p1 .. p1}, Landroid/telephony/ims/feature/CapabilityChangeRequest;->getCapabilitiesToDisable()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_0
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const/4 v12, -0x1

    const/4 v13, 0x1

    if-eqz v1, :cond_1

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/ims/feature/CapabilityChangeRequest$CapabilityPair;

    move-object v14, v1

    .line 328
    .local v14, "cap":Landroid/telephony/ims/feature/CapabilityChangeRequest$CapabilityPair;
    new-instance v1, Ljava/util/concurrent/CountDownLatch;

    invoke-direct {v1, v13}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    move-object v13, v1

    .line 329
    .local v13, "latch":Ljava/util/concurrent/CountDownLatch;
    invoke-virtual {v14}, Landroid/telephony/ims/feature/CapabilityChangeRequest$CapabilityPair;->getCapability()I

    move-result v1

    invoke-virtual {v14}, Landroid/telephony/ims/feature/CapabilityChangeRequest$CapabilityPair;->getRadioTech()I

    move-result v2

    invoke-direct {v8, v1, v2}, Lcom/android/internal/telephony/ims/MmTelFeatureCompatAdapter;->convertCapability(II)I

    move-result v1

    move v7, v1

    .line 330
    .local v7, "capConverted":I
    sget-object v1, Lcom/android/internal/telephony/ims/MmTelFeatureCompatAdapter;->REG_TECH_TO_NET_TYPE:Ljava/util/Map;

    invoke-virtual {v14}, Landroid/telephony/ims/feature/CapabilityChangeRequest$CapabilityPair;->getRadioTech()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 331
    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    .line 330
    invoke-interface {v1, v2, v3}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    move v12, v1

    .line 332
    .local v12, "radioTechConverted":I
    const-string v1, "MmTelFeatureCompat"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "changeEnabledCapabilities - cap: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " radioTech: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " disabled"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 334
    const/4 v6, 0x0

    new-instance v5, Lcom/android/internal/telephony/ims/MmTelFeatureCompatAdapter$4;

    move-object v1, v5

    move-object v2, v8

    move v3, v7

    move v4, v12

    move-object v10, v5

    move-object v5, v13

    move v11, v6

    move-object/from16 v6, p2

    move v11, v7

    move-object v7, v14

    .end local v7    # "capConverted":I
    .local v11, "capConverted":I
    invoke-direct/range {v1 .. v7}, Lcom/android/internal/telephony/ims/MmTelFeatureCompatAdapter$4;-><init>(Lcom/android/internal/telephony/ims/MmTelFeatureCompatAdapter;IILjava/util/concurrent/CountDownLatch;Landroid/telephony/ims/feature/ImsFeature$CapabilityCallbackProxy;Landroid/telephony/ims/feature/CapabilityChangeRequest$CapabilityPair;)V

    const/4 v1, 0x0

    invoke-interface {v0, v11, v12, v1, v10}, Lcom/android/ims/internal/IImsConfig;->setFeatureValue(IIILcom/android/ims/ImsConfigListener;)V

    .line 349
    sget-object v1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v2, 0x7d0

    invoke-virtual {v13, v2, v3, v1}, Ljava/util/concurrent/CountDownLatch;->await(JLjava/util/concurrent/TimeUnit;)Z

    .line 350
    .end local v11    # "capConverted":I
    .end local v12    # "radioTechConverted":I
    .end local v13    # "latch":Ljava/util/concurrent/CountDownLatch;
    .end local v14    # "cap":Landroid/telephony/ims/feature/CapabilityChangeRequest$CapabilityPair;
    goto :goto_0

    .line 352
    :cond_1
    invoke-virtual/range {p1 .. p1}, Landroid/telephony/ims/feature/CapabilityChangeRequest;->getCapabilitiesToEnable()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_1
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/ims/feature/CapabilityChangeRequest$CapabilityPair;

    move-object v10, v1

    .line 353
    .local v10, "cap":Landroid/telephony/ims/feature/CapabilityChangeRequest$CapabilityPair;
    new-instance v1, Ljava/util/concurrent/CountDownLatch;

    invoke-direct {v1, v13}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    move-object v11, v1

    .line 354
    .local v11, "latch":Ljava/util/concurrent/CountDownLatch;
    invoke-virtual {v10}, Landroid/telephony/ims/feature/CapabilityChangeRequest$CapabilityPair;->getCapability()I

    move-result v1

    invoke-virtual {v10}, Landroid/telephony/ims/feature/CapabilityChangeRequest$CapabilityPair;->getRadioTech()I

    move-result v2

    invoke-direct {v8, v1, v2}, Lcom/android/internal/telephony/ims/MmTelFeatureCompatAdapter;->convertCapability(II)I

    move-result v1

    move v14, v1

    .line 355
    .local v14, "capConverted":I
    sget-object v1, Lcom/android/internal/telephony/ims/MmTelFeatureCompatAdapter;->REG_TECH_TO_NET_TYPE:Ljava/util/Map;

    invoke-virtual {v10}, Landroid/telephony/ims/feature/CapabilityChangeRequest$CapabilityPair;->getRadioTech()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 356
    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    .line 355
    invoke-interface {v1, v2, v3}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    move v7, v1

    .line 357
    .local v7, "radioTechConverted":I
    const-string v1, "MmTelFeatureCompat"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "changeEnabledCapabilities - cap: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " radioTech: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " enabled"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 359
    new-instance v6, Lcom/android/internal/telephony/ims/MmTelFeatureCompatAdapter$5;

    move-object v1, v6

    move-object v2, v8

    move v3, v14

    move v4, v7

    move-object v5, v11

    move-object v12, v6

    move-object/from16 v6, p2

    move v13, v7

    move-object v7, v10

    .end local v7    # "radioTechConverted":I
    .local v13, "radioTechConverted":I
    invoke-direct/range {v1 .. v7}, Lcom/android/internal/telephony/ims/MmTelFeatureCompatAdapter$5;-><init>(Lcom/android/internal/telephony/ims/MmTelFeatureCompatAdapter;IILjava/util/concurrent/CountDownLatch;Landroid/telephony/ims/feature/ImsFeature$CapabilityCallbackProxy;Landroid/telephony/ims/feature/CapabilityChangeRequest$CapabilityPair;)V

    const/4 v1, 0x1

    invoke-interface {v0, v14, v13, v1, v12}, Lcom/android/ims/internal/IImsConfig;->setFeatureValue(IIILcom/android/ims/ImsConfigListener;)V

    .line 374
    sget-object v2, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v3, 0x7d0

    invoke-virtual {v11, v3, v4, v2}, Ljava/util/concurrent/CountDownLatch;->await(JLjava/util/concurrent/TimeUnit;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 375
    .end local v10    # "cap":Landroid/telephony/ims/feature/CapabilityChangeRequest$CapabilityPair;
    .end local v11    # "latch":Ljava/util/concurrent/CountDownLatch;
    .end local v13    # "radioTechConverted":I
    .end local v14    # "capConverted":I
    nop

    .line 352
    move v13, v1

    const/4 v12, -0x1

    goto :goto_1

    .line 378
    .end local v0    # "imsConfig":Lcom/android/ims/internal/IImsConfig;
    :cond_2
    goto :goto_2

    .line 376
    :catch_0
    move-exception v0

    .line 377
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "MmTelFeatureCompat"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "changeEnabledCapabilities: Error processing: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 379
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_2
    return-void
.end method

.method public createCallProfile(II)Landroid/telephony/ims/ImsCallProfile;
    .locals 3
    .param p1, "callSessionType"    # I
    .param p2, "callType"    # I

    .line 384
    :try_start_0
    iget-object v0, p0, Lcom/android/internal/telephony/ims/MmTelFeatureCompatAdapter;->mCompatFeature:Lcom/android/internal/telephony/ims/MmTelInterfaceAdapter;

    iget v1, p0, Lcom/android/internal/telephony/ims/MmTelFeatureCompatAdapter;->mSessionId:I

    invoke-virtual {v0, v1, p1, p2}, Lcom/android/internal/telephony/ims/MmTelInterfaceAdapter;->createCallProfile(III)Landroid/telephony/ims/ImsCallProfile;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 385
    :catch_0
    move-exception v0

    .line 386
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-virtual {v0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public createCallSessionInterface(Landroid/telephony/ims/ImsCallProfile;)Lcom/android/ims/internal/IImsCallSession;
    .locals 2
    .param p1, "profile"    # Landroid/telephony/ims/ImsCallProfile;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 393
    iget-object v0, p0, Lcom/android/internal/telephony/ims/MmTelFeatureCompatAdapter;->mCompatFeature:Lcom/android/internal/telephony/ims/MmTelInterfaceAdapter;

    iget v1, p0, Lcom/android/internal/telephony/ims/MmTelFeatureCompatAdapter;->mSessionId:I

    invoke-virtual {v0, v1, p1}, Lcom/android/internal/telephony/ims/MmTelInterfaceAdapter;->createCallSession(ILandroid/telephony/ims/ImsCallProfile;)Lcom/android/ims/internal/IImsCallSession;

    move-result-object v0

    return-object v0
.end method

.method public disableIms()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 467
    iget-object v0, p0, Lcom/android/internal/telephony/ims/MmTelFeatureCompatAdapter;->mCompatFeature:Lcom/android/internal/telephony/ims/MmTelInterfaceAdapter;

    invoke-virtual {v0}, Lcom/android/internal/telephony/ims/MmTelInterfaceAdapter;->turnOffIms()V

    .line 468
    return-void
.end method

.method public enableIms()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 463
    iget-object v0, p0, Lcom/android/internal/telephony/ims/MmTelFeatureCompatAdapter;->mCompatFeature:Lcom/android/internal/telephony/ims/MmTelInterfaceAdapter;

    invoke-virtual {v0}, Lcom/android/internal/telephony/ims/MmTelInterfaceAdapter;->turnOnIms()V

    .line 464
    return-void
.end method

.method public getEcbmInterface()Lcom/android/ims/internal/IImsEcbm;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 403
    iget-object v0, p0, Lcom/android/internal/telephony/ims/MmTelFeatureCompatAdapter;->mCompatFeature:Lcom/android/internal/telephony/ims/MmTelInterfaceAdapter;

    invoke-virtual {v0}, Lcom/android/internal/telephony/ims/MmTelInterfaceAdapter;->getEcbmInterface()Lcom/android/ims/internal/IImsEcbm;

    move-result-object v0

    return-object v0
.end method

.method public getFeatureState()I
    .locals 3

    .line 414
    :try_start_0
    iget-object v0, p0, Lcom/android/internal/telephony/ims/MmTelFeatureCompatAdapter;->mCompatFeature:Lcom/android/internal/telephony/ims/MmTelInterfaceAdapter;

    invoke-virtual {v0}, Lcom/android/internal/telephony/ims/MmTelInterfaceAdapter;->getFeatureState()I

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 415
    :catch_0
    move-exception v0

    .line 416
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-virtual {v0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public getMultiEndpointInterface()Lcom/android/ims/internal/IImsMultiEndpoint;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 408
    iget-object v0, p0, Lcom/android/internal/telephony/ims/MmTelFeatureCompatAdapter;->mCompatFeature:Lcom/android/internal/telephony/ims/MmTelInterfaceAdapter;

    invoke-virtual {v0}, Lcom/android/internal/telephony/ims/MmTelInterfaceAdapter;->getMultiEndpointInterface()Lcom/android/ims/internal/IImsMultiEndpoint;

    move-result-object v0

    return-object v0
.end method

.method public getOldConfigInterface()Lcom/android/ims/internal/IImsConfig;
    .locals 4

    .line 472
    :try_start_0
    iget-object v0, p0, Lcom/android/internal/telephony/ims/MmTelFeatureCompatAdapter;->mCompatFeature:Lcom/android/internal/telephony/ims/MmTelInterfaceAdapter;

    invoke-virtual {v0}, Lcom/android/internal/telephony/ims/MmTelInterfaceAdapter;->getConfigInterface()Lcom/android/ims/internal/IImsConfig;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 473
    :catch_0
    move-exception v0

    .line 474
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "MmTelFeatureCompat"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getOldConfigInterface(): "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 475
    const/4 v1, 0x0

    return-object v1
.end method

.method public getUtInterface()Lcom/android/ims/internal/IImsUt;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 398
    iget-object v0, p0, Lcom/android/internal/telephony/ims/MmTelFeatureCompatAdapter;->mCompatFeature:Lcom/android/internal/telephony/ims/MmTelInterfaceAdapter;

    invoke-virtual {v0}, Lcom/android/internal/telephony/ims/MmTelInterfaceAdapter;->getUtInterface()Lcom/android/ims/internal/IImsUt;

    move-result-object v0

    return-object v0
.end method

.method public onFeatureReady()V
    .locals 5

    .line 447
    const-string v0, "MmTelFeatureCompat"

    const-string v1, "onFeatureReady called!"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 450
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "com.android.ims.IMS_INCOMING_CALL"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 451
    .local v0, "intentFilter":Landroid/content/IntentFilter;
    iget-object v1, p0, Lcom/android/internal/telephony/ims/MmTelFeatureCompatAdapter;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/internal/telephony/ims/MmTelFeatureCompatAdapter;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 453
    :try_start_0
    iget-object v1, p0, Lcom/android/internal/telephony/ims/MmTelFeatureCompatAdapter;->mCompatFeature:Lcom/android/internal/telephony/ims/MmTelInterfaceAdapter;

    invoke-direct {p0}, Lcom/android/internal/telephony/ims/MmTelFeatureCompatAdapter;->createIncomingCallPendingIntent()Landroid/app/PendingIntent;

    move-result-object v2

    new-instance v3, Lcom/android/internal/telephony/ims/MmTelFeatureCompatAdapter$ImsRegistrationListenerBase;

    const/4 v4, 0x0

    invoke-direct {v3, p0, v4}, Lcom/android/internal/telephony/ims/MmTelFeatureCompatAdapter$ImsRegistrationListenerBase;-><init>(Lcom/android/internal/telephony/ims/MmTelFeatureCompatAdapter;Lcom/android/internal/telephony/ims/MmTelFeatureCompatAdapter$1;)V

    invoke-virtual {v1, v2, v3}, Lcom/android/internal/telephony/ims/MmTelInterfaceAdapter;->startSession(Landroid/app/PendingIntent;Lcom/android/ims/internal/IImsRegistrationListener;)I

    move-result v1

    iput v1, p0, Lcom/android/internal/telephony/ims/MmTelFeatureCompatAdapter;->mSessionId:I

    .line 455
    iget-object v1, p0, Lcom/android/internal/telephony/ims/MmTelFeatureCompatAdapter;->mCompatFeature:Lcom/android/internal/telephony/ims/MmTelInterfaceAdapter;

    iget-object v2, p0, Lcom/android/internal/telephony/ims/MmTelFeatureCompatAdapter;->mListener:Lcom/android/ims/internal/IImsRegistrationListener;

    invoke-virtual {v1, v2}, Lcom/android/internal/telephony/ims/MmTelInterfaceAdapter;->addRegistrationListener(Lcom/android/ims/internal/IImsRegistrationListener;)V

    .line 456
    iget-object v1, p0, Lcom/android/internal/telephony/ims/MmTelFeatureCompatAdapter;->mCompatFeature:Lcom/android/internal/telephony/ims/MmTelInterfaceAdapter;

    iget-object v2, p0, Lcom/android/internal/telephony/ims/MmTelFeatureCompatAdapter;->mRegCompatAdapter:Lcom/android/internal/telephony/ims/ImsRegistrationCompatAdapter;

    invoke-virtual {v2}, Lcom/android/internal/telephony/ims/ImsRegistrationCompatAdapter;->getRegistrationListener()Lcom/android/ims/internal/IImsRegistrationListener;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/internal/telephony/ims/MmTelInterfaceAdapter;->addRegistrationListener(Lcom/android/ims/internal/IImsRegistrationListener;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 459
    goto :goto_0

    .line 457
    :catch_0
    move-exception v1

    .line 458
    .local v1, "e":Landroid/os/RemoteException;
    const-string v2, "MmTelFeatureCompat"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Couldn\'t start compat feature: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 460
    .end local v1    # "e":Landroid/os/RemoteException;
    :goto_0
    return-void
.end method

.method public onFeatureRemoved()V
    .locals 4

    .line 432
    iget-object v0, p0, Lcom/android/internal/telephony/ims/MmTelFeatureCompatAdapter;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/internal/telephony/ims/MmTelFeatureCompatAdapter;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 434
    :try_start_0
    iget-object v0, p0, Lcom/android/internal/telephony/ims/MmTelFeatureCompatAdapter;->mCompatFeature:Lcom/android/internal/telephony/ims/MmTelInterfaceAdapter;

    iget v1, p0, Lcom/android/internal/telephony/ims/MmTelFeatureCompatAdapter;->mSessionId:I

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/ims/MmTelInterfaceAdapter;->endSession(I)V

    .line 435
    iget-object v0, p0, Lcom/android/internal/telephony/ims/MmTelFeatureCompatAdapter;->mCompatFeature:Lcom/android/internal/telephony/ims/MmTelInterfaceAdapter;

    iget-object v1, p0, Lcom/android/internal/telephony/ims/MmTelFeatureCompatAdapter;->mListener:Lcom/android/ims/internal/IImsRegistrationListener;

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/ims/MmTelInterfaceAdapter;->removeRegistrationListener(Lcom/android/ims/internal/IImsRegistrationListener;)V

    .line 436
    iget-object v0, p0, Lcom/android/internal/telephony/ims/MmTelFeatureCompatAdapter;->mRegCompatAdapter:Lcom/android/internal/telephony/ims/ImsRegistrationCompatAdapter;

    if-eqz v0, :cond_0

    .line 437
    iget-object v0, p0, Lcom/android/internal/telephony/ims/MmTelFeatureCompatAdapter;->mCompatFeature:Lcom/android/internal/telephony/ims/MmTelInterfaceAdapter;

    iget-object v1, p0, Lcom/android/internal/telephony/ims/MmTelFeatureCompatAdapter;->mRegCompatAdapter:Lcom/android/internal/telephony/ims/ImsRegistrationCompatAdapter;

    .line 438
    invoke-virtual {v1}, Lcom/android/internal/telephony/ims/ImsRegistrationCompatAdapter;->getRegistrationListener()Lcom/android/ims/internal/IImsRegistrationListener;

    move-result-object v1

    .line 437
    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/ims/MmTelInterfaceAdapter;->removeRegistrationListener(Lcom/android/ims/internal/IImsRegistrationListener;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 442
    :cond_0
    goto :goto_0

    .line 440
    :catch_0
    move-exception v0

    .line 441
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "MmTelFeatureCompat"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onFeatureRemoved: Couldn\'t end session: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 443
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_0
    return-void
.end method

.method public queryCapabilityConfiguration(II)Z
    .locals 15
    .param p1, "capability"    # I
    .param p2, "radioTech"    # I

    .line 292
    invoke-direct/range {p0 .. p2}, Lcom/android/internal/telephony/ims/MmTelFeatureCompatAdapter;->convertCapability(II)I

    move-result v7

    .line 294
    .local v7, "capConverted":I
    new-instance v0, Ljava/util/concurrent/CountDownLatch;

    const/4 v8, 0x1

    invoke-direct {v0, v8}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    move-object v9, v0

    .line 295
    .local v9, "latch":Ljava/util/concurrent/CountDownLatch;
    new-array v10, v8, [I

    .line 296
    .local v10, "returnValue":[I
    const/4 v0, -0x1

    const/4 v11, 0x0

    aput v0, v10, v11

    .line 297
    sget-object v1, Lcom/android/internal/telephony/ims/MmTelFeatureCompatAdapter;->REG_TECH_TO_NET_TYPE:Ljava/util/Map;

    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 298
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 297
    invoke-interface {v1, v2, v0}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    move v12, v0

    .line 300
    .local v12, "regTech":I
    move-object v13, p0

    :try_start_0
    iget-object v0, v13, Lcom/android/internal/telephony/ims/MmTelFeatureCompatAdapter;->mCompatFeature:Lcom/android/internal/telephony/ims/MmTelInterfaceAdapter;

    invoke-virtual {v0}, Lcom/android/internal/telephony/ims/MmTelInterfaceAdapter;->getConfigInterface()Lcom/android/ims/internal/IImsConfig;

    move-result-object v0

    new-instance v14, Lcom/android/internal/telephony/ims/MmTelFeatureCompatAdapter$3;

    move-object v1, v14

    move-object v2, v13

    move v3, v7

    move v4, v12

    move-object v5, v9

    move-object v6, v10

    invoke-direct/range {v1 .. v6}, Lcom/android/internal/telephony/ims/MmTelFeatureCompatAdapter$3;-><init>(Lcom/android/internal/telephony/ims/MmTelFeatureCompatAdapter;IILjava/util/concurrent/CountDownLatch;[I)V

    invoke-interface {v0, v7, v12, v14}, Lcom/android/ims/internal/IImsConfig;->getFeatureValue(IILcom/android/ims/ImsConfigListener;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 309
    goto :goto_0

    .line 307
    :catch_0
    move-exception v0

    .line 308
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "MmTelFeatureCompat"

    const-string v2, "queryCapabilityConfiguration"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 311
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_0
    const-wide/16 v0, 0x7d0

    :try_start_1
    sget-object v2, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v9, v0, v1, v2}, Ljava/util/concurrent/CountDownLatch;->await(JLjava/util/concurrent/TimeUnit;)Z
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_1

    .line 314
    goto :goto_1

    .line 312
    :catch_1
    move-exception v0

    .line 313
    .local v0, "e":Ljava/lang/InterruptedException;
    const-string v1, "MmTelFeatureCompat"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "queryCapabilityConfiguration - error waiting: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/InterruptedException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 315
    .end local v0    # "e":Ljava/lang/InterruptedException;
    :goto_1
    aget v0, v10, v11

    if-ne v0, v8, :cond_0

    move v11, v8

    nop

    :cond_0
    return v11
.end method

.method public setUiTtyMode(ILandroid/os/Message;)V
    .locals 3
    .param p1, "mode"    # I
    .param p2, "onCompleteMessage"    # Landroid/os/Message;

    .line 423
    :try_start_0
    iget-object v0, p0, Lcom/android/internal/telephony/ims/MmTelFeatureCompatAdapter;->mCompatFeature:Lcom/android/internal/telephony/ims/MmTelInterfaceAdapter;

    invoke-virtual {v0, p1, p2}, Lcom/android/internal/telephony/ims/MmTelInterfaceAdapter;->setUiTTYMode(ILandroid/os/Message;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 426
    nop

    .line 427
    return-void

    .line 424
    :catch_0
    move-exception v0

    .line 425
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-virtual {v0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
.end method
