.class Lcom/android/internal/telephony/SubscriptionMonitor$1;
.super Lcom/android/internal/telephony/IOnSubscriptionsChangedListener$Stub;
.source "SubscriptionMonitor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/SubscriptionMonitor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/telephony/SubscriptionMonitor;


# direct methods
.method constructor <init>(Lcom/android/internal/telephony/SubscriptionMonitor;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/internal/telephony/SubscriptionMonitor;

    .line 107
    iput-object p1, p0, Lcom/android/internal/telephony/SubscriptionMonitor$1;->this$0:Lcom/android/internal/telephony/SubscriptionMonitor;

    invoke-direct {p0}, Lcom/android/internal/telephony/IOnSubscriptionsChangedListener$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onSubscriptionsChanged()V
    .locals 8

    .line 110
    iget-object v0, p0, Lcom/android/internal/telephony/SubscriptionMonitor$1;->this$0:Lcom/android/internal/telephony/SubscriptionMonitor;

    invoke-static {v0}, Lcom/android/internal/telephony/SubscriptionMonitor;->access$000(Lcom/android/internal/telephony/SubscriptionMonitor;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 111
    const/4 v1, -0x1

    .line 112
    .local v1, "newDefaultDataPhoneId":I
    const/4 v2, 0x0

    .local v2, "phoneId":I
    :goto_0
    :try_start_0
    iget-object v3, p0, Lcom/android/internal/telephony/SubscriptionMonitor$1;->this$0:Lcom/android/internal/telephony/SubscriptionMonitor;

    invoke-static {v3}, Lcom/android/internal/telephony/SubscriptionMonitor;->access$100(Lcom/android/internal/telephony/SubscriptionMonitor;)[I

    move-result-object v3

    array-length v3, v3

    if-ge v2, v3, :cond_4

    .line 113
    iget-object v3, p0, Lcom/android/internal/telephony/SubscriptionMonitor$1;->this$0:Lcom/android/internal/telephony/SubscriptionMonitor;

    invoke-static {v3}, Lcom/android/internal/telephony/SubscriptionMonitor;->access$200(Lcom/android/internal/telephony/SubscriptionMonitor;)Lcom/android/internal/telephony/SubscriptionController;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/android/internal/telephony/SubscriptionController;->getSubIdUsingPhoneId(I)I

    move-result v3

    .line 114
    .local v3, "newSubId":I
    iget-object v4, p0, Lcom/android/internal/telephony/SubscriptionMonitor$1;->this$0:Lcom/android/internal/telephony/SubscriptionMonitor;

    invoke-static {v4}, Lcom/android/internal/telephony/SubscriptionMonitor;->access$100(Lcom/android/internal/telephony/SubscriptionMonitor;)[I

    move-result-object v4

    aget v4, v4, v2

    .line 115
    .local v4, "oldSubId":I
    if-eq v4, v3, :cond_2

    .line 116
    iget-object v5, p0, Lcom/android/internal/telephony/SubscriptionMonitor$1;->this$0:Lcom/android/internal/telephony/SubscriptionMonitor;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Phone["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, "] subId changed "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, "->"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, ", "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, p0, Lcom/android/internal/telephony/SubscriptionMonitor$1;->this$0:Lcom/android/internal/telephony/SubscriptionMonitor;

    .line 118
    invoke-static {v7}, Lcom/android/internal/telephony/SubscriptionMonitor;->access$300(Lcom/android/internal/telephony/SubscriptionMonitor;)[Landroid/os/RegistrantList;

    move-result-object v7

    aget-object v7, v7, v2

    invoke-virtual {v7}, Landroid/os/RegistrantList;->size()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, " registrants"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 116
    invoke-static {v5, v6}, Lcom/android/internal/telephony/SubscriptionMonitor;->access$400(Lcom/android/internal/telephony/SubscriptionMonitor;Ljava/lang/String;)V

    .line 119
    iget-object v5, p0, Lcom/android/internal/telephony/SubscriptionMonitor$1;->this$0:Lcom/android/internal/telephony/SubscriptionMonitor;

    invoke-static {v5}, Lcom/android/internal/telephony/SubscriptionMonitor;->access$100(Lcom/android/internal/telephony/SubscriptionMonitor;)[I

    move-result-object v5

    aput v3, v5, v2

    .line 120
    iget-object v5, p0, Lcom/android/internal/telephony/SubscriptionMonitor$1;->this$0:Lcom/android/internal/telephony/SubscriptionMonitor;

    invoke-static {v5}, Lcom/android/internal/telephony/SubscriptionMonitor;->access$300(Lcom/android/internal/telephony/SubscriptionMonitor;)[Landroid/os/RegistrantList;

    move-result-object v5

    aget-object v5, v5, v2

    invoke-virtual {v5}, Landroid/os/RegistrantList;->notifyRegistrants()V

    .line 123
    iget-object v5, p0, Lcom/android/internal/telephony/SubscriptionMonitor$1;->this$0:Lcom/android/internal/telephony/SubscriptionMonitor;

    invoke-static {v5}, Lcom/android/internal/telephony/SubscriptionMonitor;->access$500(Lcom/android/internal/telephony/SubscriptionMonitor;)I

    move-result v5

    const/4 v6, -0x1

    if-ne v5, v6, :cond_0

    .end local v3    # "newSubId":I
    .end local v4    # "oldSubId":I
    goto :goto_1

    .line 126
    .restart local v3    # "newSubId":I
    .restart local v4    # "oldSubId":I
    :cond_0
    iget-object v5, p0, Lcom/android/internal/telephony/SubscriptionMonitor$1;->this$0:Lcom/android/internal/telephony/SubscriptionMonitor;

    invoke-static {v5}, Lcom/android/internal/telephony/SubscriptionMonitor;->access$500(Lcom/android/internal/telephony/SubscriptionMonitor;)I

    move-result v5

    if-eq v3, v5, :cond_1

    iget-object v5, p0, Lcom/android/internal/telephony/SubscriptionMonitor$1;->this$0:Lcom/android/internal/telephony/SubscriptionMonitor;

    invoke-static {v5}, Lcom/android/internal/telephony/SubscriptionMonitor;->access$500(Lcom/android/internal/telephony/SubscriptionMonitor;)I

    move-result v5

    if-ne v4, v5, :cond_2

    .line 127
    :cond_1
    iget-object v5, p0, Lcom/android/internal/telephony/SubscriptionMonitor$1;->this$0:Lcom/android/internal/telephony/SubscriptionMonitor;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "mDefaultDataSubId = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, p0, Lcom/android/internal/telephony/SubscriptionMonitor$1;->this$0:Lcom/android/internal/telephony/SubscriptionMonitor;

    invoke-static {v7}, Lcom/android/internal/telephony/SubscriptionMonitor;->access$500(Lcom/android/internal/telephony/SubscriptionMonitor;)I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, ", "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, p0, Lcom/android/internal/telephony/SubscriptionMonitor$1;->this$0:Lcom/android/internal/telephony/SubscriptionMonitor;

    .line 128
    invoke-static {v7}, Lcom/android/internal/telephony/SubscriptionMonitor;->access$600(Lcom/android/internal/telephony/SubscriptionMonitor;)[Landroid/os/RegistrantList;

    move-result-object v7

    aget-object v7, v7, v2

    invoke-virtual {v7}, Landroid/os/RegistrantList;->size()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, " registrants"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 127
    invoke-static {v5, v6}, Lcom/android/internal/telephony/SubscriptionMonitor;->access$400(Lcom/android/internal/telephony/SubscriptionMonitor;Ljava/lang/String;)V

    .line 130
    iget-object v5, p0, Lcom/android/internal/telephony/SubscriptionMonitor$1;->this$0:Lcom/android/internal/telephony/SubscriptionMonitor;

    invoke-static {v5}, Lcom/android/internal/telephony/SubscriptionMonitor;->access$600(Lcom/android/internal/telephony/SubscriptionMonitor;)[Landroid/os/RegistrantList;

    move-result-object v5

    aget-object v5, v5, v2

    invoke-virtual {v5}, Landroid/os/RegistrantList;->notifyRegistrants()V

    .line 133
    :cond_2
    iget-object v5, p0, Lcom/android/internal/telephony/SubscriptionMonitor$1;->this$0:Lcom/android/internal/telephony/SubscriptionMonitor;

    invoke-static {v5}, Lcom/android/internal/telephony/SubscriptionMonitor;->access$500(Lcom/android/internal/telephony/SubscriptionMonitor;)I

    move-result v5

    if-ne v3, v5, :cond_3

    .line 134
    move v1, v2

    .line 112
    .end local v3    # "newSubId":I
    .end local v4    # "oldSubId":I
    :cond_3
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0

    .line 137
    .end local v2    # "phoneId":I
    :cond_4
    iget-object v2, p0, Lcom/android/internal/telephony/SubscriptionMonitor$1;->this$0:Lcom/android/internal/telephony/SubscriptionMonitor;

    invoke-static {v2, v1}, Lcom/android/internal/telephony/SubscriptionMonitor;->access$702(Lcom/android/internal/telephony/SubscriptionMonitor;I)I

    .line 138
    .end local v1    # "newDefaultDataPhoneId":I
    monitor-exit v0

    .line 139
    return-void

    .line 138
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
