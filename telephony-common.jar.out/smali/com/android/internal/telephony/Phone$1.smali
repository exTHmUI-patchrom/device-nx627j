.class Lcom/android/internal/telephony/Phone$1;
.super Landroid/content/BroadcastReceiver;
.source "Phone.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/Phone;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/telephony/Phone;


# direct methods
.method constructor <init>(Lcom/android/internal/telephony/Phone;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/internal/telephony/Phone;

    .line 111
    iput-object p1, p0, Lcom/android/internal/telephony/Phone$1;->this$0:Lcom/android/internal/telephony/Phone;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .line 114
    const-string v0, "Phone"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mImsIntentReceiver: action "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 115
    const-string v0, "android:phone_id"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 116
    const-string v0, "android:phone_id"

    const/4 v1, -0x1

    invoke-virtual {p2, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 118
    .local v0, "extraPhoneId":I
    const-string v2, "Phone"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mImsIntentReceiver: extraPhoneId = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 119
    if-eq v0, v1, :cond_0

    iget-object v1, p0, Lcom/android/internal/telephony/Phone$1;->this$0:Lcom/android/internal/telephony/Phone;

    .line 120
    invoke-virtual {v1}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result v1

    if-eq v0, v1, :cond_1

    .line 121
    :cond_0
    return-void

    .line 125
    .end local v0    # "extraPhoneId":I
    :cond_1
    sget-object v0, Lcom/android/internal/telephony/Phone;->lockForRadioTechnologyChange:Ljava/lang/Object;

    monitor-enter v0

    .line 126
    :try_start_0
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    const-string v2, "com.android.ims.IMS_SERVICE_UP"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    .line 127
    iget-object v1, p0, Lcom/android/internal/telephony/Phone$1;->this$0:Lcom/android/internal/telephony/Phone;

    const/4 v3, 0x1

    invoke-static {v1, v3}, Lcom/android/internal/telephony/Phone;->access$002(Lcom/android/internal/telephony/Phone;Z)Z

    .line 128
    iget-object v1, p0, Lcom/android/internal/telephony/Phone$1;->this$0:Lcom/android/internal/telephony/Phone;

    invoke-static {v1}, Lcom/android/internal/telephony/Phone;->access$100(Lcom/android/internal/telephony/Phone;)V

    .line 129
    iget-object v1, p0, Lcom/android/internal/telephony/Phone$1;->this$0:Lcom/android/internal/telephony/Phone;

    iget-object v1, v1, Lcom/android/internal/telephony/Phone;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/internal/telephony/Phone$1;->this$0:Lcom/android/internal/telephony/Phone;

    iget v3, v3, Lcom/android/internal/telephony/Phone;->mPhoneId:I

    invoke-static {v1, v3}, Lcom/android/ims/ImsManager;->getInstance(Landroid/content/Context;I)Lcom/android/ims/ImsManager;

    move-result-object v1

    invoke-virtual {v1, v2}, Lcom/android/ims/ImsManager;->updateImsServiceConfig(Z)V

    goto :goto_0

    .line 130
    :cond_2
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    const-string v3, "com.android.ims.IMS_SERVICE_DOWN"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 131
    iget-object v1, p0, Lcom/android/internal/telephony/Phone$1;->this$0:Lcom/android/internal/telephony/Phone;

    invoke-static {v1, v2}, Lcom/android/internal/telephony/Phone;->access$002(Lcom/android/internal/telephony/Phone;Z)Z

    .line 132
    iget-object v1, p0, Lcom/android/internal/telephony/Phone$1;->this$0:Lcom/android/internal/telephony/Phone;

    invoke-static {v1}, Lcom/android/internal/telephony/Phone;->access$100(Lcom/android/internal/telephony/Phone;)V

    .line 134
    :cond_3
    :goto_0
    monitor-exit v0

    .line 135
    return-void

    .line 134
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
