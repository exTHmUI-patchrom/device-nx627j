.class Lcom/android/internal/telephony/SubscriptionMonitor$2;
.super Landroid/content/BroadcastReceiver;
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

    .line 143
    iput-object p1, p0, Lcom/android/internal/telephony/SubscriptionMonitor$2;->this$0:Lcom/android/internal/telephony/SubscriptionMonitor;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 10
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .line 146
    iget-object v0, p0, Lcom/android/internal/telephony/SubscriptionMonitor$2;->this$0:Lcom/android/internal/telephony/SubscriptionMonitor;

    invoke-static {v0}, Lcom/android/internal/telephony/SubscriptionMonitor;->access$200(Lcom/android/internal/telephony/SubscriptionMonitor;)Lcom/android/internal/telephony/SubscriptionController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/SubscriptionController;->getDefaultDataSubId()I

    move-result v0

    .line 147
    .local v0, "newDefaultDataSubId":I
    iget-object v1, p0, Lcom/android/internal/telephony/SubscriptionMonitor$2;->this$0:Lcom/android/internal/telephony/SubscriptionMonitor;

    invoke-static {v1}, Lcom/android/internal/telephony/SubscriptionMonitor;->access$000(Lcom/android/internal/telephony/SubscriptionMonitor;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 148
    :try_start_0
    iget-object v2, p0, Lcom/android/internal/telephony/SubscriptionMonitor$2;->this$0:Lcom/android/internal/telephony/SubscriptionMonitor;

    invoke-static {v2}, Lcom/android/internal/telephony/SubscriptionMonitor;->access$500(Lcom/android/internal/telephony/SubscriptionMonitor;)I

    move-result v2

    if-eq v2, v0, :cond_5

    .line 149
    iget-object v2, p0, Lcom/android/internal/telephony/SubscriptionMonitor$2;->this$0:Lcom/android/internal/telephony/SubscriptionMonitor;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Default changed "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/internal/telephony/SubscriptionMonitor$2;->this$0:Lcom/android/internal/telephony/SubscriptionMonitor;

    invoke-static {v4}, Lcom/android/internal/telephony/SubscriptionMonitor;->access$500(Lcom/android/internal/telephony/SubscriptionMonitor;)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, "->"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/internal/telephony/SubscriptionMonitor;->access$400(Lcom/android/internal/telephony/SubscriptionMonitor;Ljava/lang/String;)V

    .line 150
    iget-object v2, p0, Lcom/android/internal/telephony/SubscriptionMonitor$2;->this$0:Lcom/android/internal/telephony/SubscriptionMonitor;

    invoke-static {v2}, Lcom/android/internal/telephony/SubscriptionMonitor;->access$500(Lcom/android/internal/telephony/SubscriptionMonitor;)I

    move-result v2

    .line 151
    .local v2, "oldDefaultDataSubId":I
    iget-object v3, p0, Lcom/android/internal/telephony/SubscriptionMonitor$2;->this$0:Lcom/android/internal/telephony/SubscriptionMonitor;

    invoke-static {v3}, Lcom/android/internal/telephony/SubscriptionMonitor;->access$700(Lcom/android/internal/telephony/SubscriptionMonitor;)I

    move-result v3

    .line 152
    .local v3, "oldDefaultDataPhoneId":I
    iget-object v4, p0, Lcom/android/internal/telephony/SubscriptionMonitor$2;->this$0:Lcom/android/internal/telephony/SubscriptionMonitor;

    invoke-static {v4, v0}, Lcom/android/internal/telephony/SubscriptionMonitor;->access$502(Lcom/android/internal/telephony/SubscriptionMonitor;I)I

    .line 154
    iget-object v4, p0, Lcom/android/internal/telephony/SubscriptionMonitor$2;->this$0:Lcom/android/internal/telephony/SubscriptionMonitor;

    .line 155
    invoke-static {v4}, Lcom/android/internal/telephony/SubscriptionMonitor;->access$200(Lcom/android/internal/telephony/SubscriptionMonitor;)Lcom/android/internal/telephony/SubscriptionController;

    move-result-object v4

    const/4 v5, -0x1

    invoke-virtual {v4, v5}, Lcom/android/internal/telephony/SubscriptionController;->getPhoneId(I)I

    move-result v4

    .line 156
    .local v4, "newDefaultDataPhoneId":I
    const/4 v6, 0x0

    if-eq v0, v5, :cond_1

    .line 157
    move v5, v6

    .local v5, "phoneId":I
    :goto_0
    iget-object v7, p0, Lcom/android/internal/telephony/SubscriptionMonitor$2;->this$0:Lcom/android/internal/telephony/SubscriptionMonitor;

    invoke-static {v7}, Lcom/android/internal/telephony/SubscriptionMonitor;->access$100(Lcom/android/internal/telephony/SubscriptionMonitor;)[I

    move-result-object v7

    array-length v7, v7

    if-ge v5, v7, :cond_1

    .line 158
    iget-object v7, p0, Lcom/android/internal/telephony/SubscriptionMonitor$2;->this$0:Lcom/android/internal/telephony/SubscriptionMonitor;

    invoke-static {v7}, Lcom/android/internal/telephony/SubscriptionMonitor;->access$100(Lcom/android/internal/telephony/SubscriptionMonitor;)[I

    move-result-object v7

    aget v7, v7, v5

    if-ne v7, v0, :cond_0

    .line 159
    move v4, v5

    .line 160
    iget-object v7, p0, Lcom/android/internal/telephony/SubscriptionMonitor$2;->this$0:Lcom/android/internal/telephony/SubscriptionMonitor;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "newDefaultDataPhoneId="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/android/internal/telephony/SubscriptionMonitor;->access$400(Lcom/android/internal/telephony/SubscriptionMonitor;Ljava/lang/String;)V

    .line 161
    goto :goto_1

    .line 157
    :cond_0
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 165
    .end local v5    # "phoneId":I
    :cond_1
    :goto_1
    if-eq v4, v3, :cond_5

    .line 166
    iget-object v5, p0, Lcom/android/internal/telephony/SubscriptionMonitor$2;->this$0:Lcom/android/internal/telephony/SubscriptionMonitor;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Default phoneId changed "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, "->"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, ", "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 168
    iget-object v8, p0, Lcom/android/internal/telephony/SubscriptionMonitor$2;->this$0:Lcom/android/internal/telephony/SubscriptionMonitor;

    invoke-static {v8, v3}, Lcom/android/internal/telephony/SubscriptionMonitor;->access$800(Lcom/android/internal/telephony/SubscriptionMonitor;I)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 169
    nop

    .line 170
    move v8, v6

    goto :goto_2

    :cond_2
    iget-object v8, p0, Lcom/android/internal/telephony/SubscriptionMonitor$2;->this$0:Lcom/android/internal/telephony/SubscriptionMonitor;

    invoke-static {v8}, Lcom/android/internal/telephony/SubscriptionMonitor;->access$600(Lcom/android/internal/telephony/SubscriptionMonitor;)[Landroid/os/RegistrantList;

    move-result-object v8

    aget-object v8, v8, v3

    invoke-virtual {v8}, Landroid/os/RegistrantList;->size()I

    move-result v8

    :goto_2
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, ","

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 171
    iget-object v8, p0, Lcom/android/internal/telephony/SubscriptionMonitor$2;->this$0:Lcom/android/internal/telephony/SubscriptionMonitor;

    invoke-static {v8, v4}, Lcom/android/internal/telephony/SubscriptionMonitor;->access$800(Lcom/android/internal/telephony/SubscriptionMonitor;I)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 172
    goto :goto_3

    .line 173
    :cond_3
    iget-object v6, p0, Lcom/android/internal/telephony/SubscriptionMonitor$2;->this$0:Lcom/android/internal/telephony/SubscriptionMonitor;

    invoke-static {v6}, Lcom/android/internal/telephony/SubscriptionMonitor;->access$600(Lcom/android/internal/telephony/SubscriptionMonitor;)[Landroid/os/RegistrantList;

    move-result-object v6

    aget-object v6, v6, v4

    invoke-virtual {v6}, Landroid/os/RegistrantList;->size()I

    move-result v6

    :goto_3
    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " registrants"

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 166
    invoke-static {v5, v6}, Lcom/android/internal/telephony/SubscriptionMonitor;->access$400(Lcom/android/internal/telephony/SubscriptionMonitor;Ljava/lang/String;)V

    .line 175
    iget-object v5, p0, Lcom/android/internal/telephony/SubscriptionMonitor$2;->this$0:Lcom/android/internal/telephony/SubscriptionMonitor;

    invoke-static {v5, v4}, Lcom/android/internal/telephony/SubscriptionMonitor;->access$702(Lcom/android/internal/telephony/SubscriptionMonitor;I)I

    .line 176
    iget-object v5, p0, Lcom/android/internal/telephony/SubscriptionMonitor$2;->this$0:Lcom/android/internal/telephony/SubscriptionMonitor;

    invoke-static {v5, v3}, Lcom/android/internal/telephony/SubscriptionMonitor;->access$800(Lcom/android/internal/telephony/SubscriptionMonitor;I)Z

    move-result v5

    if-nez v5, :cond_4

    .line 177
    iget-object v5, p0, Lcom/android/internal/telephony/SubscriptionMonitor$2;->this$0:Lcom/android/internal/telephony/SubscriptionMonitor;

    invoke-static {v5}, Lcom/android/internal/telephony/SubscriptionMonitor;->access$600(Lcom/android/internal/telephony/SubscriptionMonitor;)[Landroid/os/RegistrantList;

    move-result-object v5

    aget-object v5, v5, v3

    .line 178
    invoke-virtual {v5}, Landroid/os/RegistrantList;->notifyRegistrants()V

    .line 180
    :cond_4
    iget-object v5, p0, Lcom/android/internal/telephony/SubscriptionMonitor$2;->this$0:Lcom/android/internal/telephony/SubscriptionMonitor;

    invoke-static {v5, v4}, Lcom/android/internal/telephony/SubscriptionMonitor;->access$800(Lcom/android/internal/telephony/SubscriptionMonitor;I)Z

    move-result v5

    if-nez v5, :cond_5

    .line 181
    iget-object v5, p0, Lcom/android/internal/telephony/SubscriptionMonitor$2;->this$0:Lcom/android/internal/telephony/SubscriptionMonitor;

    invoke-static {v5}, Lcom/android/internal/telephony/SubscriptionMonitor;->access$600(Lcom/android/internal/telephony/SubscriptionMonitor;)[Landroid/os/RegistrantList;

    move-result-object v5

    aget-object v5, v5, v4

    .line 182
    invoke-virtual {v5}, Landroid/os/RegistrantList;->notifyRegistrants()V

    .line 186
    .end local v2    # "oldDefaultDataSubId":I
    .end local v3    # "oldDefaultDataPhoneId":I
    .end local v4    # "newDefaultDataPhoneId":I
    :cond_5
    monitor-exit v1

    .line 187
    return-void

    .line 186
    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method
