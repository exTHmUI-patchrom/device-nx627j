.class Lcom/android/internal/telephony/dataconnection/DcController$2;
.super Landroid/net/NetworkPolicyManager$Listener;
.source "DcController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/dataconnection/DcController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/telephony/dataconnection/DcController;


# direct methods
.method constructor <init>(Lcom/android/internal/telephony/dataconnection/DcController;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/internal/telephony/dataconnection/DcController;

    .line 185
    iput-object p1, p0, Lcom/android/internal/telephony/dataconnection/DcController$2;->this$0:Lcom/android/internal/telephony/dataconnection/DcController;

    invoke-direct {p0}, Landroid/net/NetworkPolicyManager$Listener;-><init>()V

    return-void
.end method


# virtual methods
.method public onSubscriptionOverride(III)V
    .locals 3
    .param p1, "subId"    # I
    .param p2, "overrideMask"    # I
    .param p3, "overrideValue"    # I

    .line 188
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DcController$2;->this$0:Lcom/android/internal/telephony/dataconnection/DcController;

    invoke-static {v0}, Lcom/android/internal/telephony/dataconnection/DcController;->access$200(Lcom/android/internal/telephony/dataconnection/DcController;)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DcController$2;->this$0:Lcom/android/internal/telephony/dataconnection/DcController;

    invoke-static {v0}, Lcom/android/internal/telephony/dataconnection/DcController;->access$200(Lcom/android/internal/telephony/dataconnection/DcController;)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getSubId()I

    move-result v0

    if-eq v0, p1, :cond_0

    goto :goto_1

    .line 191
    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DcController$2;->this$0:Lcom/android/internal/telephony/dataconnection/DcController;

    iget-object v0, v0, Lcom/android/internal/telephony/dataconnection/DcController;->mDcListAll:Ljava/util/ArrayList;

    monitor-enter v0

    .line 192
    :try_start_0
    new-instance v1, Ljava/util/HashMap;

    iget-object v2, p0, Lcom/android/internal/telephony/dataconnection/DcController$2;->this$0:Lcom/android/internal/telephony/dataconnection/DcController;

    invoke-static {v2}, Lcom/android/internal/telephony/dataconnection/DcController;->access$300(Lcom/android/internal/telephony/dataconnection/DcController;)Ljava/util/HashMap;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    .line 193
    .local v1, "dcListActiveByCid":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;Lcom/android/internal/telephony/dataconnection/DataConnection;>;"
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 194
    invoke-virtual {v1}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/telephony/dataconnection/DataConnection;

    .line 195
    .local v2, "dc":Lcom/android/internal/telephony/dataconnection/DataConnection;
    invoke-virtual {v2, p2, p3}, Lcom/android/internal/telephony/dataconnection/DataConnection;->onSubscriptionOverride(II)V

    .line 196
    .end local v2    # "dc":Lcom/android/internal/telephony/dataconnection/DataConnection;
    goto :goto_0

    .line 197
    :cond_1
    return-void

    .line 193
    .end local v1    # "dcListActiveByCid":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;Lcom/android/internal/telephony/dataconnection/DataConnection;>;"
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1

    .line 188
    :cond_2
    :goto_1
    return-void
.end method
