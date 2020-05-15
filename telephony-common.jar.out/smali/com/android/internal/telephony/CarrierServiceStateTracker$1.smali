.class Lcom/android/internal/telephony/CarrierServiceStateTracker$1;
.super Landroid/telephony/SubscriptionManager$OnSubscriptionsChangedListener;
.source "CarrierServiceStateTracker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/telephony/CarrierServiceStateTracker;-><init>(Lcom/android/internal/telephony/Phone;Lcom/android/internal/telephony/ServiceStateTracker;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/telephony/CarrierServiceStateTracker;


# direct methods
.method constructor <init>(Lcom/android/internal/telephony/CarrierServiceStateTracker;Landroid/os/Looper;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/internal/telephony/CarrierServiceStateTracker;
    .param p2, "x0"    # Landroid/os/Looper;

    .line 76
    iput-object p1, p0, Lcom/android/internal/telephony/CarrierServiceStateTracker$1;->this$0:Lcom/android/internal/telephony/CarrierServiceStateTracker;

    invoke-direct {p0, p2}, Landroid/telephony/SubscriptionManager$OnSubscriptionsChangedListener;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public onSubscriptionsChanged()V
    .locals 2

    .line 79
    iget-object v0, p0, Lcom/android/internal/telephony/CarrierServiceStateTracker$1;->this$0:Lcom/android/internal/telephony/CarrierServiceStateTracker;

    invoke-static {v0}, Lcom/android/internal/telephony/CarrierServiceStateTracker;->access$000(Lcom/android/internal/telephony/CarrierServiceStateTracker;)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getSubId()I

    move-result v0

    .line 80
    .local v0, "subId":I
    iget-object v1, p0, Lcom/android/internal/telephony/CarrierServiceStateTracker$1;->this$0:Lcom/android/internal/telephony/CarrierServiceStateTracker;

    invoke-static {v1}, Lcom/android/internal/telephony/CarrierServiceStateTracker;->access$100(Lcom/android/internal/telephony/CarrierServiceStateTracker;)I

    move-result v1

    if-eq v1, v0, :cond_0

    .line 81
    iget-object v1, p0, Lcom/android/internal/telephony/CarrierServiceStateTracker$1;->this$0:Lcom/android/internal/telephony/CarrierServiceStateTracker;

    invoke-static {v1, v0}, Lcom/android/internal/telephony/CarrierServiceStateTracker;->access$102(Lcom/android/internal/telephony/CarrierServiceStateTracker;I)I

    .line 82
    iget-object v1, p0, Lcom/android/internal/telephony/CarrierServiceStateTracker$1;->this$0:Lcom/android/internal/telephony/CarrierServiceStateTracker;

    invoke-static {v1}, Lcom/android/internal/telephony/CarrierServiceStateTracker;->access$200(Lcom/android/internal/telephony/CarrierServiceStateTracker;)V

    .line 84
    :cond_0
    return-void
.end method
