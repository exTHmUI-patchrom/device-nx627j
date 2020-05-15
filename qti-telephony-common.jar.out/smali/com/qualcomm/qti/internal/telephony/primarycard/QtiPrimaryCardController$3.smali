.class Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardController$3;
.super Landroid/telephony/SubscriptionManager$OnSubscriptionsChangedListener;
.source "QtiPrimaryCardController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardController;


# direct methods
.method constructor <init>(Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardController;)V
    .locals 0
    .param p1, "this$0"    # Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardController;

    .line 972
    iput-object p1, p0, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardController$3;->this$0:Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardController;

    invoke-direct {p0}, Landroid/telephony/SubscriptionManager$OnSubscriptionsChangedListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onSubscriptionsChanged()V
    .locals 4

    .line 975
    const/4 v0, 0x0

    move v1, v0

    .local v1, "index":I
    :goto_0
    sget v2, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardUtils;->PHONE_COUNT:I

    if-ge v1, v2, :cond_1

    .line 976
    invoke-static {v1}, Lcom/qualcomm/qti/internal/telephony/NBDualCardUtils;->isCardPresent(I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 977
    iget-object v2, p0, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardController$3;->this$0:Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardController;

    invoke-static {v2}, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardController;->access$600(Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardController;)Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Landroid/telephony/SubscriptionManager;->from(Landroid/content/Context;)Landroid/telephony/SubscriptionManager;

    move-result-object v2

    .line 978
    invoke-static {}, Lcom/android/internal/telephony/SubscriptionController;->getInstance()Lcom/android/internal/telephony/SubscriptionController;

    move-result-object v3

    invoke-virtual {v3, v1}, Lcom/android/internal/telephony/SubscriptionController;->getSubIdUsingPhoneId(I)I

    move-result v3

    .line 977
    invoke-virtual {v2, v3}, Landroid/telephony/SubscriptionManager;->isActiveSubId(I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 979
    return-void

    .line 975
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 983
    .end local v1    # "index":I
    :cond_1
    iget-object v1, p0, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardController$3;->this$0:Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardController;

    invoke-static {v1, v0}, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardController;->access$700(Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardController;Z)V

    .line 984
    return-void
.end method
