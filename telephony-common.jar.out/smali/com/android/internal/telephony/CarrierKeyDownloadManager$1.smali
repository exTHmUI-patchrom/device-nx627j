.class Lcom/android/internal/telephony/CarrierKeyDownloadManager$1;
.super Landroid/content/BroadcastReceiver;
.source "CarrierKeyDownloadManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/CarrierKeyDownloadManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/telephony/CarrierKeyDownloadManager;


# direct methods
.method constructor <init>(Lcom/android/internal/telephony/CarrierKeyDownloadManager;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/internal/telephony/CarrierKeyDownloadManager;

    .line 127
    iput-object p1, p0, Lcom/android/internal/telephony/CarrierKeyDownloadManager$1;->this$0:Lcom/android/internal/telephony/CarrierKeyDownloadManager;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .line 130
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 131
    .local v0, "action":Ljava/lang/String;
    iget-object v1, p0, Lcom/android/internal/telephony/CarrierKeyDownloadManager$1;->this$0:Lcom/android/internal/telephony/CarrierKeyDownloadManager;

    invoke-static {v1}, Lcom/android/internal/telephony/CarrierKeyDownloadManager;->access$000(Lcom/android/internal/telephony/CarrierKeyDownloadManager;)Lcom/android/internal/telephony/Phone;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result v1

    .line 132
    .local v1, "slotId":I
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "com.android.internal.telephony.carrier_key_download_alarm"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 133
    const-string v2, "CarrierKeyDownloadManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Handling key renewal alarm: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 134
    iget-object v2, p0, Lcom/android/internal/telephony/CarrierKeyDownloadManager$1;->this$0:Lcom/android/internal/telephony/CarrierKeyDownloadManager;

    invoke-static {v2}, Lcom/android/internal/telephony/CarrierKeyDownloadManager;->access$100(Lcom/android/internal/telephony/CarrierKeyDownloadManager;)V

    goto/16 :goto_0

    .line 135
    :cond_0
    const-string v2, "com.android.internal.telephony.ACTION_CARRIER_CERTIFICATE_DOWNLOAD"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const/4 v3, -0x1

    if-eqz v2, :cond_1

    .line 136
    const-string v2, "phone"

    invoke-virtual {p2, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    if-ne v1, v2, :cond_3

    .line 138
    const-string v2, "CarrierKeyDownloadManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Handling reset intent: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 139
    iget-object v2, p0, Lcom/android/internal/telephony/CarrierKeyDownloadManager$1;->this$0:Lcom/android/internal/telephony/CarrierKeyDownloadManager;

    invoke-static {v2}, Lcom/android/internal/telephony/CarrierKeyDownloadManager;->access$100(Lcom/android/internal/telephony/CarrierKeyDownloadManager;)V

    goto :goto_0

    .line 141
    :cond_1
    const-string v2, "android.telephony.action.CARRIER_CONFIG_CHANGED"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 142
    const-string v2, "phone"

    invoke-virtual {p2, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    if-ne v1, v2, :cond_3

    .line 144
    const-string v2, "CarrierKeyDownloadManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Carrier Config changed: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 145
    iget-object v2, p0, Lcom/android/internal/telephony/CarrierKeyDownloadManager$1;->this$0:Lcom/android/internal/telephony/CarrierKeyDownloadManager;

    invoke-static {v2}, Lcom/android/internal/telephony/CarrierKeyDownloadManager;->access$100(Lcom/android/internal/telephony/CarrierKeyDownloadManager;)V

    goto :goto_0

    .line 147
    :cond_2
    const-string v2, "android.intent.action.DOWNLOAD_COMPLETE"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 148
    const-string v2, "CarrierKeyDownloadManager"

    const-string v3, "Download Complete"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 149
    const-string v2, "extra_download_id"

    const-wide/16 v3, 0x0

    .line 150
    invoke-virtual {p2, v2, v3, v4}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v2

    .line 151
    .local v2, "carrierKeyDownloadIdentifier":J
    iget-object v4, p0, Lcom/android/internal/telephony/CarrierKeyDownloadManager$1;->this$0:Lcom/android/internal/telephony/CarrierKeyDownloadManager;

    invoke-static {v4}, Lcom/android/internal/telephony/CarrierKeyDownloadManager;->access$200(Lcom/android/internal/telephony/CarrierKeyDownloadManager;)Ljava/lang/String;

    move-result-object v4

    .line 152
    .local v4, "mccMnc":Ljava/lang/String;
    iget-object v5, p0, Lcom/android/internal/telephony/CarrierKeyDownloadManager$1;->this$0:Lcom/android/internal/telephony/CarrierKeyDownloadManager;

    invoke-virtual {v5, v4}, Lcom/android/internal/telephony/CarrierKeyDownloadManager;->isValidDownload(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 153
    iget-object v5, p0, Lcom/android/internal/telephony/CarrierKeyDownloadManager$1;->this$0:Lcom/android/internal/telephony/CarrierKeyDownloadManager;

    invoke-static {v5, v2, v3, v4}, Lcom/android/internal/telephony/CarrierKeyDownloadManager;->access$300(Lcom/android/internal/telephony/CarrierKeyDownloadManager;JLjava/lang/String;)V

    .line 154
    iget-object v5, p0, Lcom/android/internal/telephony/CarrierKeyDownloadManager$1;->this$0:Lcom/android/internal/telephony/CarrierKeyDownloadManager;

    invoke-static {v5, v2, v3}, Lcom/android/internal/telephony/CarrierKeyDownloadManager;->access$400(Lcom/android/internal/telephony/CarrierKeyDownloadManager;J)V

    .line 157
    .end local v2    # "carrierKeyDownloadIdentifier":J
    .end local v4    # "mccMnc":Ljava/lang/String;
    :cond_3
    :goto_0
    return-void
.end method
