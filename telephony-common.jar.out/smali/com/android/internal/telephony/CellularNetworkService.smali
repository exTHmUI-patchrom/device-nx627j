.class public Lcom/android/internal/telephony/CellularNetworkService;
.super Landroid/telephony/NetworkService;
.source "CellularNetworkService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/CellularNetworkService$CellularNetworkServiceProvider;
    }
.end annotation


# static fields
.field private static final DBG:Z = false

.field private static final GET_CS_REGISTRATION_STATE_DONE:I = 0x1

.field private static final GET_PS_REGISTRATION_STATE_DONE:I = 0x2

.field private static final NETWORK_REGISTRATION_STATE_CHANGED:I = 0x3

.field private static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 51
    const-class v0, Lcom/android/internal/telephony/CellularNetworkService;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/internal/telephony/CellularNetworkService;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 48
    invoke-direct {p0}, Landroid/telephony/NetworkService;-><init>()V

    return-void
.end method

.method static synthetic access$200(Lcom/android/internal/telephony/CellularNetworkService;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/telephony/CellularNetworkService;
    .param p1, "x1"    # Ljava/lang/String;

    .line 48
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/CellularNetworkService;->loge(Ljava/lang/String;)V

    return-void
.end method

.method private log(Ljava/lang/String;)V
    .locals 1
    .param p1, "s"    # Ljava/lang/String;

    .line 508
    sget-object v0, Lcom/android/internal/telephony/CellularNetworkService;->TAG:Ljava/lang/String;

    invoke-static {v0, p1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 509
    return-void
.end method

.method private loge(Ljava/lang/String;)V
    .locals 1
    .param p1, "s"    # Ljava/lang/String;

    .line 512
    sget-object v0, Lcom/android/internal/telephony/CellularNetworkService;->TAG:Ljava/lang/String;

    invoke-static {v0, p1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 513
    return-void
.end method


# virtual methods
.method protected createNetworkServiceProvider(I)Landroid/telephony/NetworkService$NetworkServiceProvider;
    .locals 2
    .param p1, "slotId"    # I

    .line 500
    invoke-static {p1}, Landroid/telephony/SubscriptionManager;->isValidSlotIndex(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 501
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Tried to Cellular network service with invalid slotId "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/CellularNetworkService;->loge(Ljava/lang/String;)V

    .line 502
    const/4 v0, 0x0

    return-object v0

    .line 504
    :cond_0
    new-instance v0, Lcom/android/internal/telephony/CellularNetworkService$CellularNetworkServiceProvider;

    invoke-direct {v0, p0, p1}, Lcom/android/internal/telephony/CellularNetworkService$CellularNetworkServiceProvider;-><init>(Lcom/android/internal/telephony/CellularNetworkService;I)V

    return-object v0
.end method
