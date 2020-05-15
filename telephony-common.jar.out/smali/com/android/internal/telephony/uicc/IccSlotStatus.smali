.class public Lcom/android/internal/telephony/uicc/IccSlotStatus;
.super Ljava/lang/Object;
.source "IccSlotStatus.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/uicc/IccSlotStatus$SlotState;
    }
.end annotation


# instance fields
.field public atr:Ljava/lang/String;

.field public cardState:Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;

.field public iccid:Ljava/lang/String;

.field public logicalSlotIndex:I

.field public slotState:Lcom/android/internal/telephony/uicc/IccSlotStatus$SlotState;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "obj"    # Ljava/lang/Object;

    .line 91
    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    .line 92
    return v0

    .line 94
    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_3

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_1

    .line 98
    :cond_1
    move-object v2, p1

    check-cast v2, Lcom/android/internal/telephony/uicc/IccSlotStatus;

    .line 99
    .local v2, "that":Lcom/android/internal/telephony/uicc/IccSlotStatus;
    iget-object v3, p0, Lcom/android/internal/telephony/uicc/IccSlotStatus;->cardState:Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;

    iget-object v4, v2, Lcom/android/internal/telephony/uicc/IccSlotStatus;->cardState:Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;

    if-ne v3, v4, :cond_2

    iget-object v3, p0, Lcom/android/internal/telephony/uicc/IccSlotStatus;->slotState:Lcom/android/internal/telephony/uicc/IccSlotStatus$SlotState;

    iget-object v4, v2, Lcom/android/internal/telephony/uicc/IccSlotStatus;->slotState:Lcom/android/internal/telephony/uicc/IccSlotStatus$SlotState;

    if-ne v3, v4, :cond_2

    iget v3, p0, Lcom/android/internal/telephony/uicc/IccSlotStatus;->logicalSlotIndex:I

    iget v4, v2, Lcom/android/internal/telephony/uicc/IccSlotStatus;->logicalSlotIndex:I

    if-ne v3, v4, :cond_2

    iget-object v3, p0, Lcom/android/internal/telephony/uicc/IccSlotStatus;->atr:Ljava/lang/String;

    iget-object v4, v2, Lcom/android/internal/telephony/uicc/IccSlotStatus;->atr:Ljava/lang/String;

    .line 102
    invoke-static {v3, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/android/internal/telephony/uicc/IccSlotStatus;->iccid:Ljava/lang/String;

    iget-object v4, v2, Lcom/android/internal/telephony/uicc/IccSlotStatus;->iccid:Ljava/lang/String;

    .line 103
    invoke-static {v3, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_2

    goto :goto_0

    .line 99
    :cond_2
    move v0, v1

    :goto_0
    return v0

    .line 95
    .end local v2    # "that":Lcom/android/internal/telephony/uicc/IccSlotStatus;
    :cond_3
    :goto_1
    return v1
.end method

.method public setCardState(I)V
    .locals 3
    .param p1, "state"    # I

    .line 42
    packed-switch p1, :pswitch_data_0

    .line 56
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unrecognized RIL_CardState: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 53
    :pswitch_0
    sget-object v0, Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;->CARDSTATE_RESTRICTED:Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;

    iput-object v0, p0, Lcom/android/internal/telephony/uicc/IccSlotStatus;->cardState:Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;

    .line 54
    goto :goto_0

    .line 50
    :pswitch_1
    sget-object v0, Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;->CARDSTATE_ERROR:Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;

    iput-object v0, p0, Lcom/android/internal/telephony/uicc/IccSlotStatus;->cardState:Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;

    .line 51
    goto :goto_0

    .line 47
    :pswitch_2
    sget-object v0, Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;->CARDSTATE_PRESENT:Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;

    iput-object v0, p0, Lcom/android/internal/telephony/uicc/IccSlotStatus;->cardState:Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;

    .line 48
    goto :goto_0

    .line 44
    :pswitch_3
    sget-object v0, Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;->CARDSTATE_ABSENT:Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;

    iput-object v0, p0, Lcom/android/internal/telephony/uicc/IccSlotStatus;->cardState:Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;

    .line 45
    nop

    .line 58
    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public setSlotState(I)V
    .locals 3
    .param p1, "state"    # I

    .line 64
    packed-switch p1, :pswitch_data_0

    .line 72
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unrecognized RIL_SlotState: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 69
    :pswitch_0
    sget-object v0, Lcom/android/internal/telephony/uicc/IccSlotStatus$SlotState;->SLOTSTATE_ACTIVE:Lcom/android/internal/telephony/uicc/IccSlotStatus$SlotState;

    iput-object v0, p0, Lcom/android/internal/telephony/uicc/IccSlotStatus;->slotState:Lcom/android/internal/telephony/uicc/IccSlotStatus$SlotState;

    .line 70
    goto :goto_0

    .line 66
    :pswitch_1
    sget-object v0, Lcom/android/internal/telephony/uicc/IccSlotStatus$SlotState;->SLOTSTATE_INACTIVE:Lcom/android/internal/telephony/uicc/IccSlotStatus$SlotState;

    iput-object v0, p0, Lcom/android/internal/telephony/uicc/IccSlotStatus;->slotState:Lcom/android/internal/telephony/uicc/IccSlotStatus$SlotState;

    .line 67
    nop

    .line 74
    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 78
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 79
    .local v0, "sb":Ljava/lang/StringBuilder;
    const-string v1, "IccSlotStatus {"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/internal/telephony/uicc/IccSlotStatus;->cardState:Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/internal/telephony/uicc/IccSlotStatus;->slotState:Lcom/android/internal/telephony/uicc/IccSlotStatus$SlotState;

    .line 80
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "logicalSlotIndex="

    .line 81
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/internal/telephony/uicc/IccSlotStatus;->logicalSlotIndex:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "atr="

    .line 82
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/internal/telephony/uicc/IccSlotStatus;->atr:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ",iccid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/internal/telephony/uicc/IccSlotStatus;->iccid:Ljava/lang/String;

    .line 83
    invoke-static {v1}, Landroid/telephony/SubscriptionInfo;->givePrintableIccid(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 85
    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 86
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
