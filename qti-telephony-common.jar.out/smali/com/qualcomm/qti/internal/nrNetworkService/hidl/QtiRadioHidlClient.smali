.class public Lcom/qualcomm/qti/internal/nrNetworkService/hidl/QtiRadioHidlClient;
.super Ljava/lang/Object;
.source "QtiRadioHidlClient.java"

# interfaces
.implements Lcom/qualcomm/qti/internal/nrNetworkService/hidl/IHidlConnectionInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/qualcomm/qti/internal/nrNetworkService/hidl/QtiRadioHidlClient$QtiRadioIndication;,
        Lcom/qualcomm/qti/internal/nrNetworkService/hidl/QtiRadioHidlClient$QtiRadioResponse;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "QtiRadioHidlClient"


# instance fields
.field private final MAX_SLOTS:I

.field private final UNSOL:Lorg/codeaurora/internal/Token;

.field private mCallback:Lcom/qualcomm/qti/internal/nrNetworkService/hidl/IHidlConnectionCallback;

.field private mInflightRequests:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/Integer;",
            "Lorg/codeaurora/internal/Token;",
            ">;"
        }
    .end annotation
.end field

.field private mSerial:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 462
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    const/4 v0, 0x2

    iput v0, p0, Lcom/qualcomm/qti/internal/nrNetworkService/hidl/QtiRadioHidlClient;->MAX_SLOTS:I

    .line 47
    const/4 v0, -0x1

    iput v0, p0, Lcom/qualcomm/qti/internal/nrNetworkService/hidl/QtiRadioHidlClient;->mSerial:I

    .line 50
    new-instance v1, Lorg/codeaurora/internal/Token;

    invoke-direct {v1, v0}, Lorg/codeaurora/internal/Token;-><init>(I)V

    iput-object v1, p0, Lcom/qualcomm/qti/internal/nrNetworkService/hidl/QtiRadioHidlClient;->UNSOL:Lorg/codeaurora/internal/Token;

    .line 51
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/qualcomm/qti/internal/nrNetworkService/hidl/QtiRadioHidlClient;->mInflightRequests:Ljava/util/concurrent/ConcurrentHashMap;

    .line 463
    const-string v0, "QtiRadioHidlClient"

    const-string v1, "constructor"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 464
    invoke-direct {p0}, Lcom/qualcomm/qti/internal/nrNetworkService/hidl/QtiRadioHidlClient;->register()V

    .line 465
    return-void
.end method

.method static synthetic access$000(Lcom/qualcomm/qti/internal/nrNetworkService/hidl/QtiRadioHidlClient;)Ljava/util/concurrent/ConcurrentHashMap;
    .locals 1
    .param p0, "x0"    # Lcom/qualcomm/qti/internal/nrNetworkService/hidl/QtiRadioHidlClient;

    .line 43
    iget-object v0, p0, Lcom/qualcomm/qti/internal/nrNetworkService/hidl/QtiRadioHidlClient;->mInflightRequests:Ljava/util/concurrent/ConcurrentHashMap;

    return-object v0
.end method

.method static synthetic access$100(Lcom/qualcomm/qti/internal/nrNetworkService/hidl/QtiRadioHidlClient;I)Z
    .locals 1
    .param p0, "x0"    # Lcom/qualcomm/qti/internal/nrNetworkService/hidl/QtiRadioHidlClient;
    .param p1, "x1"    # I

    .line 43
    invoke-direct {p0, p1}, Lcom/qualcomm/qti/internal/nrNetworkService/hidl/QtiRadioHidlClient;->isEnableOrDisableSucess(I)Z

    move-result v0

    return v0
.end method

.method static synthetic access$1000(Lcom/qualcomm/qti/internal/nrNetworkService/hidl/QtiRadioHidlClient;)Lorg/codeaurora/internal/Token;
    .locals 1
    .param p0, "x0"    # Lcom/qualcomm/qti/internal/nrNetworkService/hidl/QtiRadioHidlClient;

    .line 43
    iget-object v0, p0, Lcom/qualcomm/qti/internal/nrNetworkService/hidl/QtiRadioHidlClient;->UNSOL:Lorg/codeaurora/internal/Token;

    return-object v0
.end method

.method static synthetic access$200(Lcom/qualcomm/qti/internal/nrNetworkService/hidl/QtiRadioHidlClient;I)Lorg/codeaurora/internal/Status;
    .locals 1
    .param p0, "x0"    # Lcom/qualcomm/qti/internal/nrNetworkService/hidl/QtiRadioHidlClient;
    .param p1, "x1"    # I

    .line 43
    invoke-direct {p0, p1}, Lcom/qualcomm/qti/internal/nrNetworkService/hidl/QtiRadioHidlClient;->convertHidl2Aidl(I)Lorg/codeaurora/internal/Status;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$300(Lcom/qualcomm/qti/internal/nrNetworkService/hidl/QtiRadioHidlClient;)Lcom/qualcomm/qti/internal/nrNetworkService/hidl/IHidlConnectionCallback;
    .locals 1
    .param p0, "x0"    # Lcom/qualcomm/qti/internal/nrNetworkService/hidl/QtiRadioHidlClient;

    .line 43
    iget-object v0, p0, Lcom/qualcomm/qti/internal/nrNetworkService/hidl/QtiRadioHidlClient;->mCallback:Lcom/qualcomm/qti/internal/nrNetworkService/hidl/IHidlConnectionCallback;

    return-object v0
.end method

.method static synthetic access$400(Lcom/qualcomm/qti/internal/nrNetworkService/hidl/QtiRadioHidlClient;Lvendor/qti/hardware/radio/qtiradio/V2_0/DcParam;)Lorg/codeaurora/internal/DcParam;
    .locals 1
    .param p0, "x0"    # Lcom/qualcomm/qti/internal/nrNetworkService/hidl/QtiRadioHidlClient;
    .param p1, "x1"    # Lvendor/qti/hardware/radio/qtiradio/V2_0/DcParam;

    .line 43
    invoke-direct {p0, p1}, Lcom/qualcomm/qti/internal/nrNetworkService/hidl/QtiRadioHidlClient;->convertHidl2Aidl(Lvendor/qti/hardware/radio/qtiradio/V2_0/DcParam;)Lorg/codeaurora/internal/DcParam;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$500(Lcom/qualcomm/qti/internal/nrNetworkService/hidl/QtiRadioHidlClient;I)Lorg/codeaurora/internal/BearerAllocationStatus;
    .locals 1
    .param p0, "x0"    # Lcom/qualcomm/qti/internal/nrNetworkService/hidl/QtiRadioHidlClient;
    .param p1, "x1"    # I

    .line 43
    invoke-direct {p0, p1}, Lcom/qualcomm/qti/internal/nrNetworkService/hidl/QtiRadioHidlClient;->convertHidlBearerStatus2Aidl(I)Lorg/codeaurora/internal/BearerAllocationStatus;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$600(Lcom/qualcomm/qti/internal/nrNetworkService/hidl/QtiRadioHidlClient;Lvendor/qti/hardware/radio/qtiradio/V2_1/UpperLayerIndInfo;)Lorg/codeaurora/internal/UpperLayerIndInfo;
    .locals 1
    .param p0, "x0"    # Lcom/qualcomm/qti/internal/nrNetworkService/hidl/QtiRadioHidlClient;
    .param p1, "x1"    # Lvendor/qti/hardware/radio/qtiradio/V2_1/UpperLayerIndInfo;

    .line 43
    invoke-direct {p0, p1}, Lcom/qualcomm/qti/internal/nrNetworkService/hidl/QtiRadioHidlClient;->convertHidl2Aidl(Lvendor/qti/hardware/radio/qtiradio/V2_1/UpperLayerIndInfo;)Lorg/codeaurora/internal/UpperLayerIndInfo;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$700(Lcom/qualcomm/qti/internal/nrNetworkService/hidl/QtiRadioHidlClient;I)Lorg/codeaurora/internal/NrConfigType;
    .locals 1
    .param p0, "x0"    # Lcom/qualcomm/qti/internal/nrNetworkService/hidl/QtiRadioHidlClient;
    .param p1, "x1"    # I

    .line 43
    invoke-direct {p0, p1}, Lcom/qualcomm/qti/internal/nrNetworkService/hidl/QtiRadioHidlClient;->convertHidlConfigType2Aidl(I)Lorg/codeaurora/internal/NrConfigType;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$800(Lcom/qualcomm/qti/internal/nrNetworkService/hidl/QtiRadioHidlClient;I)Lorg/codeaurora/internal/NrIconType;
    .locals 1
    .param p0, "x0"    # Lcom/qualcomm/qti/internal/nrNetworkService/hidl/QtiRadioHidlClient;
    .param p1, "x1"    # I

    .line 43
    invoke-direct {p0, p1}, Lcom/qualcomm/qti/internal/nrNetworkService/hidl/QtiRadioHidlClient;->convertHidlNrIconType2Aidl(I)Lorg/codeaurora/internal/NrIconType;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$900(Lcom/qualcomm/qti/internal/nrNetworkService/hidl/QtiRadioHidlClient;Lvendor/qti/hardware/radio/qtiradio/V2_0/SignalStrength;)Lorg/codeaurora/internal/SignalStrength;
    .locals 1
    .param p0, "x0"    # Lcom/qualcomm/qti/internal/nrNetworkService/hidl/QtiRadioHidlClient;
    .param p1, "x1"    # Lvendor/qti/hardware/radio/qtiradio/V2_0/SignalStrength;

    .line 43
    invoke-direct {p0, p1}, Lcom/qualcomm/qti/internal/nrNetworkService/hidl/QtiRadioHidlClient;->convertHidl2Aidl(Lvendor/qti/hardware/radio/qtiradio/V2_0/SignalStrength;)Lorg/codeaurora/internal/SignalStrength;

    move-result-object v0

    return-object v0
.end method

.method private convertHidl2Aidl(Lvendor/qti/hardware/radio/qtiradio/V2_0/DcParam;)Lorg/codeaurora/internal/DcParam;
    .locals 3
    .param p1, "dcParam"    # Lvendor/qti/hardware/radio/qtiradio/V2_0/DcParam;

    .line 60
    new-instance v0, Lorg/codeaurora/internal/DcParam;

    iget v1, p1, Lvendor/qti/hardware/radio/qtiradio/V2_0/DcParam;->endc:I

    iget v2, p1, Lvendor/qti/hardware/radio/qtiradio/V2_0/DcParam;->dcnr:I

    invoke-direct {v0, v1, v2}, Lorg/codeaurora/internal/DcParam;-><init>(II)V

    return-object v0
.end method

.method private convertHidl2Aidl(Lvendor/qti/hardware/radio/qtiradio/V2_0/SignalStrength;)Lorg/codeaurora/internal/SignalStrength;
    .locals 3
    .param p1, "signalStrength"    # Lvendor/qti/hardware/radio/qtiradio/V2_0/SignalStrength;

    .line 78
    new-instance v0, Lorg/codeaurora/internal/SignalStrength;

    iget v1, p1, Lvendor/qti/hardware/radio/qtiradio/V2_0/SignalStrength;->rsrp:I

    iget v2, p1, Lvendor/qti/hardware/radio/qtiradio/V2_0/SignalStrength;->snr:I

    invoke-direct {v0, v1, v2}, Lorg/codeaurora/internal/SignalStrength;-><init>(II)V

    return-object v0
.end method

.method private convertHidl2Aidl(I)Lorg/codeaurora/internal/Status;
    .locals 2
    .param p1, "rilErrorCode"    # I

    .line 82
    new-instance v0, Lorg/codeaurora/internal/Status;

    if-nez p1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-direct {v0, v1}, Lorg/codeaurora/internal/Status;-><init>(I)V

    return-object v0
.end method

.method private convertHidl2Aidl(Lvendor/qti/hardware/radio/qtiradio/V2_1/UpperLayerIndInfo;)Lorg/codeaurora/internal/UpperLayerIndInfo;
    .locals 3
    .param p1, "ulInfo"    # Lvendor/qti/hardware/radio/qtiradio/V2_1/UpperLayerIndInfo;

    .line 65
    new-instance v0, Lorg/codeaurora/internal/UpperLayerIndInfo;

    iget v1, p1, Lvendor/qti/hardware/radio/qtiradio/V2_1/UpperLayerIndInfo;->plmnInfoList:I

    iget v2, p1, Lvendor/qti/hardware/radio/qtiradio/V2_1/UpperLayerIndInfo;->upplerLayerInd:I

    invoke-direct {v0, v1, v2}, Lorg/codeaurora/internal/UpperLayerIndInfo;-><init>(II)V

    return-object v0
.end method

.method private convertHidlBearerStatus2Aidl(I)Lorg/codeaurora/internal/BearerAllocationStatus;
    .locals 1
    .param p1, "bearerStatus"    # I

    .line 86
    new-instance v0, Lorg/codeaurora/internal/BearerAllocationStatus;

    invoke-direct {v0, p1}, Lorg/codeaurora/internal/BearerAllocationStatus;-><init>(I)V

    return-object v0
.end method

.method private convertHidlConfigType2Aidl(I)Lorg/codeaurora/internal/NrConfigType;
    .locals 1
    .param p1, "configType"    # I

    .line 69
    new-instance v0, Lorg/codeaurora/internal/NrConfigType;

    invoke-direct {v0, p1}, Lorg/codeaurora/internal/NrConfigType;-><init>(I)V

    return-object v0
.end method

.method private convertHidlNrIconType2Aidl(I)Lorg/codeaurora/internal/NrIconType;
    .locals 1
    .param p1, "iconType"    # I

    .line 73
    new-instance v0, Lorg/codeaurora/internal/NrIconType;

    invoke-direct {v0, p1}, Lorg/codeaurora/internal/NrIconType;-><init>(I)V

    return-object v0
.end method

.method private getNextToken()Lorg/codeaurora/internal/Token;
    .locals 2

    .line 468
    new-instance v0, Lorg/codeaurora/internal/Token;

    iget v1, p0, Lcom/qualcomm/qti/internal/nrNetworkService/hidl/QtiRadioHidlClient;->mSerial:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/qualcomm/qti/internal/nrNetworkService/hidl/QtiRadioHidlClient;->mSerial:I

    invoke-direct {v0, v1}, Lorg/codeaurora/internal/Token;-><init>(I)V

    return-object v0
.end method

.method private getPhoneCount()I
    .locals 1

    .line 55
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getPhoneCount()I

    move-result v0

    return v0
.end method

.method private getQtiTelephonyComponentFactory()Lcom/qualcomm/qti/internal/telephony/QtiTelephonyComponentFactory;
    .locals 1

    .line 446
    invoke-static {}, Lcom/qualcomm/qti/internal/telephony/QtiTelephonyComponentFactory;->getInstance()Lcom/qualcomm/qti/internal/telephony/QtiTelephonyComponentFactory;

    move-result-object v0

    return-object v0
.end method

.method private isEnableOrDisableSucess(I)Z
    .locals 1
    .param p1, "errorCode"    # I

    .line 90
    if-nez p1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static synthetic lambda$register$0(Lcom/qualcomm/qti/internal/nrNetworkService/hidl/QtiRadioHidlClient;I)V
    .locals 0
    .param p1, "i"    # I

    .line 460
    invoke-direct {p0, p1}, Lcom/qualcomm/qti/internal/nrNetworkService/hidl/QtiRadioHidlClient;->setCallbacks(I)V

    return-void
.end method

.method private register()V
    .locals 4

    .line 457
    const-string v0, "QtiRadioHidlClient"

    const-string v1, "Register"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 458
    invoke-direct {p0}, Lcom/qualcomm/qti/internal/nrNetworkService/hidl/QtiRadioHidlClient;->getPhoneCount()I

    move-result v0

    .line 459
    .local v0, "phones":I
    const-string v1, "QtiRadioHidlClient"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Phone count = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 460
    const/4 v1, 0x0

    invoke-static {v1, v0}, Ljava/util/stream/IntStream;->range(II)Ljava/util/stream/IntStream;

    move-result-object v1

    new-instance v2, Lcom/qualcomm/qti/internal/nrNetworkService/hidl/-$$Lambda$QtiRadioHidlClient$fDxYx_TYBjQqOTTFKsiClnVL8ic;

    invoke-direct {v2, p0}, Lcom/qualcomm/qti/internal/nrNetworkService/hidl/-$$Lambda$QtiRadioHidlClient$fDxYx_TYBjQqOTTFKsiClnVL8ic;-><init>(Lcom/qualcomm/qti/internal/nrNetworkService/hidl/QtiRadioHidlClient;)V

    invoke-interface {v1, v2}, Ljava/util/stream/IntStream;->forEach(Ljava/util/function/IntConsumer;)V

    .line 461
    return-void
.end method

.method private setCallbacks(I)V
    .locals 4
    .param p1, "slotId"    # I

    .line 450
    invoke-direct {p0}, Lcom/qualcomm/qti/internal/nrNetworkService/hidl/QtiRadioHidlClient;->getQtiTelephonyComponentFactory()Lcom/qualcomm/qti/internal/telephony/QtiTelephonyComponentFactory;

    move-result-object v0

    .line 451
    .local v0, "factory":Lcom/qualcomm/qti/internal/telephony/QtiTelephonyComponentFactory;
    const-string v1, "QtiRadioHidlClient"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ril["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "]: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Lcom/qualcomm/qti/internal/telephony/QtiTelephonyComponentFactory;->getRil(I)Lcom/qualcomm/qti/internal/telephony/QtiRIL;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 452
    invoke-virtual {v0, p1}, Lcom/qualcomm/qti/internal/telephony/QtiTelephonyComponentFactory;->getRil(I)Lcom/qualcomm/qti/internal/telephony/QtiRIL;

    move-result-object v1

    new-instance v2, Lcom/qualcomm/qti/internal/nrNetworkService/hidl/QtiRadioHidlClient$QtiRadioResponse;

    invoke-direct {v2, p0, p1}, Lcom/qualcomm/qti/internal/nrNetworkService/hidl/QtiRadioHidlClient$QtiRadioResponse;-><init>(Lcom/qualcomm/qti/internal/nrNetworkService/hidl/QtiRadioHidlClient;I)V

    new-instance v3, Lcom/qualcomm/qti/internal/nrNetworkService/hidl/QtiRadioHidlClient$QtiRadioIndication;

    invoke-direct {v3, p0, p1}, Lcom/qualcomm/qti/internal/nrNetworkService/hidl/QtiRadioHidlClient$QtiRadioIndication;-><init>(Lcom/qualcomm/qti/internal/nrNetworkService/hidl/QtiRadioHidlClient;I)V

    invoke-virtual {v1, v2, v3}, Lcom/qualcomm/qti/internal/telephony/QtiRIL;->setCallbacks(Lvendor/qti/hardware/radio/qtiradio/V2_3/IQtiRadioResponse$Stub;Lvendor/qti/hardware/radio/qtiradio/V2_2/IQtiRadioIndication$Stub;)V

    .line 454
    return-void
.end method


# virtual methods
.method public disable5g(I)Lorg/codeaurora/internal/Token;
    .locals 5
    .param p1, "slotId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 491
    invoke-direct {p0}, Lcom/qualcomm/qti/internal/nrNetworkService/hidl/QtiRadioHidlClient;->getNextToken()Lorg/codeaurora/internal/Token;

    move-result-object v0

    .line 492
    .local v0, "token":Lorg/codeaurora/internal/Token;
    const-string v1, "QtiRadioHidlClient"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "disable5g: slotId = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 493
    invoke-virtual {v0}, Lorg/codeaurora/internal/Token;->get()I

    move-result v1

    .line 494
    .local v1, "serial":I
    iget-object v2, p0, Lcom/qualcomm/qti/internal/nrNetworkService/hidl/QtiRadioHidlClient;->mInflightRequests:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3, v0}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 496
    :try_start_0
    invoke-direct {p0}, Lcom/qualcomm/qti/internal/nrNetworkService/hidl/QtiRadioHidlClient;->getQtiTelephonyComponentFactory()Lcom/qualcomm/qti/internal/telephony/QtiTelephonyComponentFactory;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/qualcomm/qti/internal/telephony/QtiTelephonyComponentFactory;->getRil(I)Lcom/qualcomm/qti/internal/telephony/QtiRIL;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/qualcomm/qti/internal/telephony/QtiRIL;->disable5g(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 503
    nop

    .line 504
    return-object v0

    .line 497
    :catch_0
    move-exception v2

    .line 498
    .local v2, "e":Ljava/lang/Exception;
    iget-object v3, p0, Lcom/qualcomm/qti/internal/nrNetworkService/hidl/QtiRadioHidlClient;->mInflightRequests:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4, v0}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 499
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "disable5g: slotId = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " Exception = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "QtiRadioHidlClient"

    invoke-static {v4, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 500
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    .line 502
    throw v2
.end method

.method public enable5g(I)Lorg/codeaurora/internal/Token;
    .locals 5
    .param p1, "slotId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 473
    invoke-direct {p0}, Lcom/qualcomm/qti/internal/nrNetworkService/hidl/QtiRadioHidlClient;->getNextToken()Lorg/codeaurora/internal/Token;

    move-result-object v0

    .line 474
    .local v0, "token":Lorg/codeaurora/internal/Token;
    const-string v1, "QtiRadioHidlClient"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "enable5g: slotId = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 475
    invoke-virtual {v0}, Lorg/codeaurora/internal/Token;->get()I

    move-result v1

    .line 476
    .local v1, "serial":I
    iget-object v2, p0, Lcom/qualcomm/qti/internal/nrNetworkService/hidl/QtiRadioHidlClient;->mInflightRequests:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3, v0}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 478
    :try_start_0
    invoke-direct {p0}, Lcom/qualcomm/qti/internal/nrNetworkService/hidl/QtiRadioHidlClient;->getQtiTelephonyComponentFactory()Lcom/qualcomm/qti/internal/telephony/QtiTelephonyComponentFactory;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/qualcomm/qti/internal/telephony/QtiTelephonyComponentFactory;->getRil(I)Lcom/qualcomm/qti/internal/telephony/QtiRIL;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/qualcomm/qti/internal/telephony/QtiRIL;->enable5g(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 485
    nop

    .line 486
    return-object v0

    .line 479
    :catch_0
    move-exception v2

    .line 480
    .local v2, "e":Ljava/lang/Exception;
    iget-object v3, p0, Lcom/qualcomm/qti/internal/nrNetworkService/hidl/QtiRadioHidlClient;->mInflightRequests:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4, v0}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 481
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "enable5g: slotId = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " Exception = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "QtiRadioHidlClient"

    invoke-static {v4, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 482
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    .line 484
    throw v2
.end method

.method public enable5gOnly(I)Lorg/codeaurora/internal/Token;
    .locals 5
    .param p1, "slotId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 509
    invoke-direct {p0}, Lcom/qualcomm/qti/internal/nrNetworkService/hidl/QtiRadioHidlClient;->getNextToken()Lorg/codeaurora/internal/Token;

    move-result-object v0

    .line 510
    .local v0, "token":Lorg/codeaurora/internal/Token;
    const-string v1, "QtiRadioHidlClient"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "enable5gOnly: slotId = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 511
    invoke-virtual {v0}, Lorg/codeaurora/internal/Token;->get()I

    move-result v1

    .line 512
    .local v1, "serial":I
    iget-object v2, p0, Lcom/qualcomm/qti/internal/nrNetworkService/hidl/QtiRadioHidlClient;->mInflightRequests:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3, v0}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 514
    :try_start_0
    invoke-direct {p0}, Lcom/qualcomm/qti/internal/nrNetworkService/hidl/QtiRadioHidlClient;->getQtiTelephonyComponentFactory()Lcom/qualcomm/qti/internal/telephony/QtiTelephonyComponentFactory;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/qualcomm/qti/internal/telephony/QtiTelephonyComponentFactory;->getRil(I)Lcom/qualcomm/qti/internal/telephony/QtiRIL;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/qualcomm/qti/internal/telephony/QtiRIL;->enable5gOnly(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 521
    nop

    .line 522
    return-object v0

    .line 515
    :catch_0
    move-exception v2

    .line 516
    .local v2, "e":Ljava/lang/Exception;
    iget-object v3, p0, Lcom/qualcomm/qti/internal/nrNetworkService/hidl/QtiRadioHidlClient;->mInflightRequests:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4, v0}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 517
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "enable5gOnly: slotId = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " Exception = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "QtiRadioHidlClient"

    invoke-static {v4, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 518
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    .line 520
    throw v2
.end method

.method public enableEndc(IZ)Lorg/codeaurora/internal/Token;
    .locals 5
    .param p1, "slotId"    # I
    .param p2, "enable"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 653
    invoke-direct {p0}, Lcom/qualcomm/qti/internal/nrNetworkService/hidl/QtiRadioHidlClient;->getNextToken()Lorg/codeaurora/internal/Token;

    move-result-object v0

    .line 654
    .local v0, "token":Lorg/codeaurora/internal/Token;
    const-string v1, "QtiRadioHidlClient"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "enableEndc: slotId = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " token "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 655
    invoke-virtual {v0}, Lorg/codeaurora/internal/Token;->get()I

    move-result v1

    .line 656
    .local v1, "serial":I
    iget-object v2, p0, Lcom/qualcomm/qti/internal/nrNetworkService/hidl/QtiRadioHidlClient;->mInflightRequests:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3, v0}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 658
    :try_start_0
    invoke-direct {p0}, Lcom/qualcomm/qti/internal/nrNetworkService/hidl/QtiRadioHidlClient;->getQtiTelephonyComponentFactory()Lcom/qualcomm/qti/internal/telephony/QtiTelephonyComponentFactory;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/qualcomm/qti/internal/telephony/QtiTelephonyComponentFactory;->getRil(I)Lcom/qualcomm/qti/internal/telephony/QtiRIL;

    move-result-object v2

    invoke-virtual {v2, v1, p2}, Lcom/qualcomm/qti/internal/telephony/QtiRIL;->enableEndc(IZ)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 665
    nop

    .line 666
    return-object v0

    .line 659
    :catch_0
    move-exception v2

    .line 660
    .local v2, "e":Ljava/lang/Exception;
    iget-object v3, p0, Lcom/qualcomm/qti/internal/nrNetworkService/hidl/QtiRadioHidlClient;->mInflightRequests:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4, v0}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 661
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "enableEndc: slotId = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " Exception = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "QtiRadioHidlClient"

    invoke-static {v4, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 662
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    .line 664
    throw v2
.end method

.method public query5gConfigInfo(I)Lorg/codeaurora/internal/Token;
    .locals 5
    .param p1, "slotId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 617
    invoke-direct {p0}, Lcom/qualcomm/qti/internal/nrNetworkService/hidl/QtiRadioHidlClient;->getNextToken()Lorg/codeaurora/internal/Token;

    move-result-object v0

    .line 618
    .local v0, "token":Lorg/codeaurora/internal/Token;
    const-string v1, "QtiRadioHidlClient"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "query5gConfigInfo: slotId = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " token "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 619
    invoke-virtual {v0}, Lorg/codeaurora/internal/Token;->get()I

    move-result v1

    .line 620
    .local v1, "serial":I
    iget-object v2, p0, Lcom/qualcomm/qti/internal/nrNetworkService/hidl/QtiRadioHidlClient;->mInflightRequests:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3, v0}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 622
    :try_start_0
    invoke-direct {p0}, Lcom/qualcomm/qti/internal/nrNetworkService/hidl/QtiRadioHidlClient;->getQtiTelephonyComponentFactory()Lcom/qualcomm/qti/internal/telephony/QtiTelephonyComponentFactory;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/qualcomm/qti/internal/telephony/QtiTelephonyComponentFactory;->getRil(I)Lcom/qualcomm/qti/internal/telephony/QtiRIL;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/qualcomm/qti/internal/telephony/QtiRIL;->query5gConfigInfo(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 629
    nop

    .line 630
    return-object v0

    .line 623
    :catch_0
    move-exception v2

    .line 624
    .local v2, "e":Ljava/lang/Exception;
    iget-object v3, p0, Lcom/qualcomm/qti/internal/nrNetworkService/hidl/QtiRadioHidlClient;->mInflightRequests:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4, v0}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 625
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "query5gConfigInfo: slotId = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " Exception = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "QtiRadioHidlClient"

    invoke-static {v4, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 626
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    .line 628
    throw v2
.end method

.method public query5gStatus(I)Lorg/codeaurora/internal/Token;
    .locals 5
    .param p1, "slotId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 527
    invoke-direct {p0}, Lcom/qualcomm/qti/internal/nrNetworkService/hidl/QtiRadioHidlClient;->getNextToken()Lorg/codeaurora/internal/Token;

    move-result-object v0

    .line 528
    .local v0, "token":Lorg/codeaurora/internal/Token;
    const-string v1, "QtiRadioHidlClient"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "query5gStatus: slotId = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 529
    invoke-virtual {v0}, Lorg/codeaurora/internal/Token;->get()I

    move-result v1

    .line 530
    .local v1, "serial":I
    iget-object v2, p0, Lcom/qualcomm/qti/internal/nrNetworkService/hidl/QtiRadioHidlClient;->mInflightRequests:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3, v0}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 532
    :try_start_0
    invoke-direct {p0}, Lcom/qualcomm/qti/internal/nrNetworkService/hidl/QtiRadioHidlClient;->getQtiTelephonyComponentFactory()Lcom/qualcomm/qti/internal/telephony/QtiTelephonyComponentFactory;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/qualcomm/qti/internal/telephony/QtiTelephonyComponentFactory;->getRil(I)Lcom/qualcomm/qti/internal/telephony/QtiRIL;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/qualcomm/qti/internal/telephony/QtiRIL;->query5gStatus(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 539
    nop

    .line 540
    return-object v0

    .line 533
    :catch_0
    move-exception v2

    .line 534
    .local v2, "e":Ljava/lang/Exception;
    iget-object v3, p0, Lcom/qualcomm/qti/internal/nrNetworkService/hidl/QtiRadioHidlClient;->mInflightRequests:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4, v0}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 535
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "query5gStatus: slotId = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " Exception = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "QtiRadioHidlClient"

    invoke-static {v4, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 536
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    .line 538
    throw v2
.end method

.method public queryEndcStatus(I)Lorg/codeaurora/internal/Token;
    .locals 5
    .param p1, "slotId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 671
    invoke-direct {p0}, Lcom/qualcomm/qti/internal/nrNetworkService/hidl/QtiRadioHidlClient;->getNextToken()Lorg/codeaurora/internal/Token;

    move-result-object v0

    .line 672
    .local v0, "token":Lorg/codeaurora/internal/Token;
    const-string v1, "QtiRadioHidlClient"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "queryEndcStatus: slotId = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " token "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 673
    invoke-virtual {v0}, Lorg/codeaurora/internal/Token;->get()I

    move-result v1

    .line 674
    .local v1, "serial":I
    iget-object v2, p0, Lcom/qualcomm/qti/internal/nrNetworkService/hidl/QtiRadioHidlClient;->mInflightRequests:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3, v0}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 676
    :try_start_0
    invoke-direct {p0}, Lcom/qualcomm/qti/internal/nrNetworkService/hidl/QtiRadioHidlClient;->getQtiTelephonyComponentFactory()Lcom/qualcomm/qti/internal/telephony/QtiTelephonyComponentFactory;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/qualcomm/qti/internal/telephony/QtiTelephonyComponentFactory;->getRil(I)Lcom/qualcomm/qti/internal/telephony/QtiRIL;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/qualcomm/qti/internal/telephony/QtiRIL;->queryEndcStatus(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 683
    nop

    .line 684
    return-object v0

    .line 677
    :catch_0
    move-exception v2

    .line 678
    .local v2, "e":Ljava/lang/Exception;
    iget-object v3, p0, Lcom/qualcomm/qti/internal/nrNetworkService/hidl/QtiRadioHidlClient;->mInflightRequests:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4, v0}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 679
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "queryEndcStatus: slotId = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " Exception = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "QtiRadioHidlClient"

    invoke-static {v4, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 680
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    .line 682
    throw v2
.end method

.method public queryNrBearerAllocation(I)Lorg/codeaurora/internal/Token;
    .locals 5
    .param p1, "slotId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 563
    invoke-direct {p0}, Lcom/qualcomm/qti/internal/nrNetworkService/hidl/QtiRadioHidlClient;->getNextToken()Lorg/codeaurora/internal/Token;

    move-result-object v0

    .line 564
    .local v0, "token":Lorg/codeaurora/internal/Token;
    const-string v1, "QtiRadioHidlClient"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "queryNrBearerAllocation: slotId = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 565
    invoke-virtual {v0}, Lorg/codeaurora/internal/Token;->get()I

    move-result v1

    .line 566
    .local v1, "serial":I
    iget-object v2, p0, Lcom/qualcomm/qti/internal/nrNetworkService/hidl/QtiRadioHidlClient;->mInflightRequests:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3, v0}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 568
    :try_start_0
    invoke-direct {p0}, Lcom/qualcomm/qti/internal/nrNetworkService/hidl/QtiRadioHidlClient;->getQtiTelephonyComponentFactory()Lcom/qualcomm/qti/internal/telephony/QtiTelephonyComponentFactory;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/qualcomm/qti/internal/telephony/QtiTelephonyComponentFactory;->getRil(I)Lcom/qualcomm/qti/internal/telephony/QtiRIL;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/qualcomm/qti/internal/telephony/QtiRIL;->queryNrBearerAllocation(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 575
    nop

    .line 576
    return-object v0

    .line 569
    :catch_0
    move-exception v2

    .line 570
    .local v2, "e":Ljava/lang/Exception;
    iget-object v3, p0, Lcom/qualcomm/qti/internal/nrNetworkService/hidl/QtiRadioHidlClient;->mInflightRequests:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4, v0}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 571
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "queryNrBearerAllocation: slotId = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " Exception = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "QtiRadioHidlClient"

    invoke-static {v4, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 572
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    .line 574
    throw v2
.end method

.method public queryNrDcParam(I)Lorg/codeaurora/internal/Token;
    .locals 5
    .param p1, "slotId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 545
    invoke-direct {p0}, Lcom/qualcomm/qti/internal/nrNetworkService/hidl/QtiRadioHidlClient;->getNextToken()Lorg/codeaurora/internal/Token;

    move-result-object v0

    .line 546
    .local v0, "token":Lorg/codeaurora/internal/Token;
    const-string v1, "QtiRadioHidlClient"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "queryNrDcParam: slotId = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 547
    invoke-virtual {v0}, Lorg/codeaurora/internal/Token;->get()I

    move-result v1

    .line 548
    .local v1, "serial":I
    iget-object v2, p0, Lcom/qualcomm/qti/internal/nrNetworkService/hidl/QtiRadioHidlClient;->mInflightRequests:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3, v0}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 550
    :try_start_0
    invoke-direct {p0}, Lcom/qualcomm/qti/internal/nrNetworkService/hidl/QtiRadioHidlClient;->getQtiTelephonyComponentFactory()Lcom/qualcomm/qti/internal/telephony/QtiTelephonyComponentFactory;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/qualcomm/qti/internal/telephony/QtiTelephonyComponentFactory;->getRil(I)Lcom/qualcomm/qti/internal/telephony/QtiRIL;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/qualcomm/qti/internal/telephony/QtiRIL;->queryNrDcParam(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 557
    nop

    .line 558
    return-object v0

    .line 551
    :catch_0
    move-exception v2

    .line 552
    .local v2, "e":Ljava/lang/Exception;
    iget-object v3, p0, Lcom/qualcomm/qti/internal/nrNetworkService/hidl/QtiRadioHidlClient;->mInflightRequests:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4, v0}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 553
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "queryNrDcParam: slotId = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " Exception = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "QtiRadioHidlClient"

    invoke-static {v4, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 554
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    .line 556
    throw v2
.end method

.method public queryNrIconType(I)Lorg/codeaurora/internal/Token;
    .locals 5
    .param p1, "slotId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 635
    invoke-direct {p0}, Lcom/qualcomm/qti/internal/nrNetworkService/hidl/QtiRadioHidlClient;->getNextToken()Lorg/codeaurora/internal/Token;

    move-result-object v0

    .line 636
    .local v0, "token":Lorg/codeaurora/internal/Token;
    const-string v1, "QtiRadioHidlClient"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "queryNrIconType: slotId = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " token "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 637
    invoke-virtual {v0}, Lorg/codeaurora/internal/Token;->get()I

    move-result v1

    .line 638
    .local v1, "serial":I
    iget-object v2, p0, Lcom/qualcomm/qti/internal/nrNetworkService/hidl/QtiRadioHidlClient;->mInflightRequests:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3, v0}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 640
    :try_start_0
    invoke-direct {p0}, Lcom/qualcomm/qti/internal/nrNetworkService/hidl/QtiRadioHidlClient;->getQtiTelephonyComponentFactory()Lcom/qualcomm/qti/internal/telephony/QtiTelephonyComponentFactory;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/qualcomm/qti/internal/telephony/QtiTelephonyComponentFactory;->getRil(I)Lcom/qualcomm/qti/internal/telephony/QtiRIL;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/qualcomm/qti/internal/telephony/QtiRIL;->queryNrIconType(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 647
    nop

    .line 648
    return-object v0

    .line 641
    :catch_0
    move-exception v2

    .line 642
    .local v2, "e":Ljava/lang/Exception;
    iget-object v3, p0, Lcom/qualcomm/qti/internal/nrNetworkService/hidl/QtiRadioHidlClient;->mInflightRequests:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4, v0}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 643
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "queryNrIconType: slotId = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " Exception = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "QtiRadioHidlClient"

    invoke-static {v4, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 644
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    .line 646
    throw v2
.end method

.method public queryNrSignalStrength(I)Lorg/codeaurora/internal/Token;
    .locals 5
    .param p1, "slotId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 581
    invoke-direct {p0}, Lcom/qualcomm/qti/internal/nrNetworkService/hidl/QtiRadioHidlClient;->getNextToken()Lorg/codeaurora/internal/Token;

    move-result-object v0

    .line 582
    .local v0, "token":Lorg/codeaurora/internal/Token;
    const-string v1, "QtiRadioHidlClient"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "queryNrSignalStrength: slotId = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 583
    invoke-virtual {v0}, Lorg/codeaurora/internal/Token;->get()I

    move-result v1

    .line 584
    .local v1, "serial":I
    iget-object v2, p0, Lcom/qualcomm/qti/internal/nrNetworkService/hidl/QtiRadioHidlClient;->mInflightRequests:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3, v0}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 586
    :try_start_0
    invoke-direct {p0}, Lcom/qualcomm/qti/internal/nrNetworkService/hidl/QtiRadioHidlClient;->getQtiTelephonyComponentFactory()Lcom/qualcomm/qti/internal/telephony/QtiTelephonyComponentFactory;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/qualcomm/qti/internal/telephony/QtiTelephonyComponentFactory;->getRil(I)Lcom/qualcomm/qti/internal/telephony/QtiRIL;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/qualcomm/qti/internal/telephony/QtiRIL;->queryNrSignalStrength(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 593
    nop

    .line 594
    return-object v0

    .line 587
    :catch_0
    move-exception v2

    .line 588
    .local v2, "e":Ljava/lang/Exception;
    iget-object v3, p0, Lcom/qualcomm/qti/internal/nrNetworkService/hidl/QtiRadioHidlClient;->mInflightRequests:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4, v0}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 589
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "queryNrSignalStrength: slotId = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " Exception = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "QtiRadioHidlClient"

    invoke-static {v4, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 590
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    .line 592
    throw v2
.end method

.method public queryUpperLayerIndInfo(I)Lorg/codeaurora/internal/Token;
    .locals 5
    .param p1, "slotId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 599
    invoke-direct {p0}, Lcom/qualcomm/qti/internal/nrNetworkService/hidl/QtiRadioHidlClient;->getNextToken()Lorg/codeaurora/internal/Token;

    move-result-object v0

    .line 600
    .local v0, "token":Lorg/codeaurora/internal/Token;
    const-string v1, "QtiRadioHidlClient"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "queryUpperLayerIndInfo: slotId = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " token "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 601
    invoke-virtual {v0}, Lorg/codeaurora/internal/Token;->get()I

    move-result v1

    .line 602
    .local v1, "serial":I
    iget-object v2, p0, Lcom/qualcomm/qti/internal/nrNetworkService/hidl/QtiRadioHidlClient;->mInflightRequests:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3, v0}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 604
    :try_start_0
    invoke-direct {p0}, Lcom/qualcomm/qti/internal/nrNetworkService/hidl/QtiRadioHidlClient;->getQtiTelephonyComponentFactory()Lcom/qualcomm/qti/internal/telephony/QtiTelephonyComponentFactory;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/qualcomm/qti/internal/telephony/QtiTelephonyComponentFactory;->getRil(I)Lcom/qualcomm/qti/internal/telephony/QtiRIL;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/qualcomm/qti/internal/telephony/QtiRIL;->queryUpperLayerIndInfo(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 611
    nop

    .line 612
    return-object v0

    .line 605
    :catch_0
    move-exception v2

    .line 606
    .local v2, "e":Ljava/lang/Exception;
    iget-object v3, p0, Lcom/qualcomm/qti/internal/nrNetworkService/hidl/QtiRadioHidlClient;->mInflightRequests:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4, v0}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 607
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "queryUpperLayerIndInfo: slotId = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " Exception = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "QtiRadioHidlClient"

    invoke-static {v4, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 608
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    .line 610
    throw v2
.end method

.method public registerCallback(Lcom/qualcomm/qti/internal/nrNetworkService/hidl/IHidlConnectionCallback;)V
    .locals 3
    .param p1, "callback"    # Lcom/qualcomm/qti/internal/nrNetworkService/hidl/IHidlConnectionCallback;

    .line 691
    const-string v0, "QtiRadioHidlClient"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "registerCallback: callback = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 692
    iput-object p1, p0, Lcom/qualcomm/qti/internal/nrNetworkService/hidl/QtiRadioHidlClient;->mCallback:Lcom/qualcomm/qti/internal/nrNetworkService/hidl/IHidlConnectionCallback;

    .line 693
    return-void
.end method

.method public unRegisterCallback(Lcom/qualcomm/qti/internal/nrNetworkService/hidl/IHidlConnectionCallback;)V
    .locals 3
    .param p1, "callback"    # Lcom/qualcomm/qti/internal/nrNetworkService/hidl/IHidlConnectionCallback;

    .line 697
    const-string v0, "QtiRadioHidlClient"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unRegisterCallback: callback = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 698
    iget-object v0, p0, Lcom/qualcomm/qti/internal/nrNetworkService/hidl/QtiRadioHidlClient;->mCallback:Lcom/qualcomm/qti/internal/nrNetworkService/hidl/IHidlConnectionCallback;

    if-ne v0, p1, :cond_0

    .line 699
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/qualcomm/qti/internal/nrNetworkService/hidl/QtiRadioHidlClient;->mCallback:Lcom/qualcomm/qti/internal/nrNetworkService/hidl/IHidlConnectionCallback;

    .line 701
    :cond_0
    return-void
.end method
