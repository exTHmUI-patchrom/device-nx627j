.class public Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardController$ProvisionerThread;
.super Ljava/lang/Thread;
.source "QtiPrimaryCardController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "ProvisionerThread"
.end annotation


# static fields
.field public static final ACTIVATE:I


# instance fields
.field private mEventId:I

.field private mSlotId:I

.field final synthetic this$0:Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardController;


# direct methods
.method public constructor <init>(Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardController;II)V
    .locals 0
    .param p1, "this$0"    # Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardController;
    .param p2, "eventId"    # I
    .param p3, "slotId"    # I

    .line 140
    iput-object p1, p0, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardController$ProvisionerThread;->this$0:Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardController;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 141
    iput p2, p0, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardController$ProvisionerThread;->mEventId:I

    .line 142
    iput p3, p0, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardController$ProvisionerThread;->mSlotId:I

    .line 143
    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 147
    iget v0, p0, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardController$ProvisionerThread;->mEventId:I

    if-eqz v0, :cond_0

    goto :goto_0

    .line 149
    :cond_0
    invoke-static {}, Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner;->getInstance()Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner;

    move-result-object v0

    iget v1, p0, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardController$ProvisionerThread;->mSlotId:I

    invoke-virtual {v0, v1}, Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner;->activateUiccCard(I)I

    .line 150
    nop

    .line 154
    :goto_0
    return-void
.end method
