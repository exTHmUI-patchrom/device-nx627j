.class Lcom/android/internal/telephony/CarrierServiceStateTracker$3;
.super Landroid/content/BroadcastReceiver;
.source "CarrierServiceStateTracker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/CarrierServiceStateTracker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/telephony/CarrierServiceStateTracker;


# direct methods
.method constructor <init>(Lcom/android/internal/telephony/CarrierServiceStateTracker;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/internal/telephony/CarrierServiceStateTracker;

    .line 269
    iput-object p1, p0, Lcom/android/internal/telephony/CarrierServiceStateTracker$3;->this$0:Lcom/android/internal/telephony/CarrierServiceStateTracker;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .line 272
    const-string v0, "carrier_config"

    .line 273
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/CarrierConfigManager;

    .line 274
    .local v0, "carrierConfigManager":Landroid/telephony/CarrierConfigManager;
    iget-object v1, p0, Lcom/android/internal/telephony/CarrierServiceStateTracker$3;->this$0:Lcom/android/internal/telephony/CarrierServiceStateTracker;

    invoke-static {v1}, Lcom/android/internal/telephony/CarrierServiceStateTracker;->access$000(Lcom/android/internal/telephony/CarrierServiceStateTracker;)Lcom/android/internal/telephony/Phone;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/telephony/Phone;->getSubId()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/telephony/CarrierConfigManager;->getConfigForSubId(I)Landroid/os/PersistableBundle;

    move-result-object v1

    .line 276
    .local v1, "b":Landroid/os/PersistableBundle;
    iget-object v2, p0, Lcom/android/internal/telephony/CarrierServiceStateTracker$3;->this$0:Lcom/android/internal/telephony/CarrierServiceStateTracker;

    invoke-static {v2}, Lcom/android/internal/telephony/CarrierServiceStateTracker;->access$400(Lcom/android/internal/telephony/CarrierServiceStateTracker;)Ljava/util/Map;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 277
    .local v3, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Lcom/android/internal/telephony/CarrierServiceStateTracker$NotificationType;>;"
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/internal/telephony/CarrierServiceStateTracker$NotificationType;

    .line 278
    .local v4, "notificationType":Lcom/android/internal/telephony/CarrierServiceStateTracker$NotificationType;
    invoke-interface {v4, v1}, Lcom/android/internal/telephony/CarrierServiceStateTracker$NotificationType;->setDelay(Landroid/os/PersistableBundle;)V

    .line 279
    .end local v3    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Lcom/android/internal/telephony/CarrierServiceStateTracker$NotificationType;>;"
    .end local v4    # "notificationType":Lcom/android/internal/telephony/CarrierServiceStateTracker$NotificationType;
    goto :goto_0

    .line 280
    :cond_0
    iget-object v2, p0, Lcom/android/internal/telephony/CarrierServiceStateTracker$3;->this$0:Lcom/android/internal/telephony/CarrierServiceStateTracker;

    invoke-static {v2}, Lcom/android/internal/telephony/CarrierServiceStateTracker;->access$500(Lcom/android/internal/telephony/CarrierServiceStateTracker;)V

    .line 281
    return-void
.end method
