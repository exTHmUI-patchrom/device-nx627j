.class public Lcom/android/internal/telephony/RadioConfigIndication;
.super Landroid/hardware/radio/config/V1_0/IRadioConfigIndication$Stub;
.source "RadioConfigIndication.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "RadioConfigIndication"


# instance fields
.field private final mRadioConfig:Lcom/android/internal/telephony/RadioConfig;


# direct methods
.method public constructor <init>(Lcom/android/internal/telephony/RadioConfig;)V
    .locals 0
    .param p1, "radioConfig"    # Lcom/android/internal/telephony/RadioConfig;

    .line 35
    invoke-direct {p0}, Landroid/hardware/radio/config/V1_0/IRadioConfigIndication$Stub;-><init>()V

    .line 36
    iput-object p1, p0, Lcom/android/internal/telephony/RadioConfigIndication;->mRadioConfig:Lcom/android/internal/telephony/RadioConfig;

    .line 37
    return-void
.end method


# virtual methods
.method public simSlotsStatusChanged(ILjava/util/ArrayList;)V
    .locals 4
    .param p1, "indicationType"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/ArrayList<",
            "Landroid/hardware/radio/config/V1_0/SimSlotStatus;",
            ">;)V"
        }
    .end annotation

    .line 43
    .local p2, "slotStatus":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/radio/config/V1_0/SimSlotStatus;>;"
    invoke-static {p2}, Lcom/android/internal/telephony/RadioConfig;->convertHalSlotStatus(Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object v0

    .line 44
    .local v0, "ret":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/telephony/uicc/IccSlotStatus;>;"
    const-string v1, "RadioConfigIndication"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[UNSL]<  UNSOL_SIM_SLOT_STATUS_CHANGED "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/util/ArrayList;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 45
    iget-object v1, p0, Lcom/android/internal/telephony/RadioConfigIndication;->mRadioConfig:Lcom/android/internal/telephony/RadioConfig;

    iget-object v1, v1, Lcom/android/internal/telephony/RadioConfig;->mSimSlotStatusRegistrant:Landroid/os/Registrant;

    if-eqz v1, :cond_0

    .line 46
    iget-object v1, p0, Lcom/android/internal/telephony/RadioConfigIndication;->mRadioConfig:Lcom/android/internal/telephony/RadioConfig;

    iget-object v1, v1, Lcom/android/internal/telephony/RadioConfig;->mSimSlotStatusRegistrant:Landroid/os/Registrant;

    new-instance v2, Landroid/os/AsyncResult;

    const/4 v3, 0x0

    invoke-direct {v2, v3, v0, v3}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {v1, v2}, Landroid/os/Registrant;->notifyRegistrant(Landroid/os/AsyncResult;)V

    .line 49
    :cond_0
    return-void
.end method
