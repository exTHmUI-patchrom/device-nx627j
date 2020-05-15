.class Lcom/android/internal/telephony/CarrierIdentifier$SubscriptionsChangedListener;
.super Landroid/telephony/SubscriptionManager$OnSubscriptionsChangedListener;
.source "CarrierIdentifier.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/CarrierIdentifier;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SubscriptionsChangedListener"
.end annotation


# instance fields
.field final mPreviousSubId:Ljava/util/concurrent/atomic/AtomicInteger;

.field final synthetic this$0:Lcom/android/internal/telephony/CarrierIdentifier;


# direct methods
.method private constructor <init>(Lcom/android/internal/telephony/CarrierIdentifier;)V
    .locals 1

    .line 106
    iput-object p1, p0, Lcom/android/internal/telephony/CarrierIdentifier$SubscriptionsChangedListener;->this$0:Lcom/android/internal/telephony/CarrierIdentifier;

    invoke-direct {p0}, Landroid/telephony/SubscriptionManager$OnSubscriptionsChangedListener;-><init>()V

    .line 108
    new-instance p1, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v0, -0x1

    invoke-direct {p1, v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object p1, p0, Lcom/android/internal/telephony/CarrierIdentifier$SubscriptionsChangedListener;->mPreviousSubId:Ljava/util/concurrent/atomic/AtomicInteger;

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/internal/telephony/CarrierIdentifier;Lcom/android/internal/telephony/CarrierIdentifier$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/internal/telephony/CarrierIdentifier;
    .param p2, "x1"    # Lcom/android/internal/telephony/CarrierIdentifier$1;

    .line 106
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/CarrierIdentifier$SubscriptionsChangedListener;-><init>(Lcom/android/internal/telephony/CarrierIdentifier;)V

    return-void
.end method


# virtual methods
.method public onSubscriptionsChanged()V
    .locals 3

    .line 116
    iget-object v0, p0, Lcom/android/internal/telephony/CarrierIdentifier$SubscriptionsChangedListener;->this$0:Lcom/android/internal/telephony/CarrierIdentifier;

    invoke-static {v0}, Lcom/android/internal/telephony/CarrierIdentifier;->access$300(Lcom/android/internal/telephony/CarrierIdentifier;)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getSubId()I

    move-result v0

    .line 117
    .local v0, "subId":I
    iget-object v1, p0, Lcom/android/internal/telephony/CarrierIdentifier$SubscriptionsChangedListener;->mPreviousSubId:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1, v0}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndSet(I)I

    move-result v1

    if-eq v1, v0, :cond_1

    .line 119
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SubscriptionListener.onSubscriptionInfoChanged subId: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/internal/telephony/CarrierIdentifier$SubscriptionsChangedListener;->mPreviousSubId:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/telephony/CarrierIdentifier;->access$200(Ljava/lang/String;)V

    .line 122
    invoke-static {v0}, Landroid/telephony/SubscriptionManager;->isValidSubscriptionId(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 123
    iget-object v1, p0, Lcom/android/internal/telephony/CarrierIdentifier$SubscriptionsChangedListener;->this$0:Lcom/android/internal/telephony/CarrierIdentifier;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/android/internal/telephony/CarrierIdentifier;->sendEmptyMessage(I)Z

    goto :goto_0

    .line 125
    :cond_0
    iget-object v1, p0, Lcom/android/internal/telephony/CarrierIdentifier$SubscriptionsChangedListener;->this$0:Lcom/android/internal/telephony/CarrierIdentifier;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Lcom/android/internal/telephony/CarrierIdentifier;->sendEmptyMessage(I)Z

    .line 128
    :cond_1
    :goto_0
    return-void
.end method
