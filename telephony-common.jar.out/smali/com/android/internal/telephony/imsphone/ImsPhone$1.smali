.class Lcom/android/internal/telephony/imsphone/ImsPhone$1;
.super Landroid/content/BroadcastReceiver;
.source "ImsPhone.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/imsphone/ImsPhone;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/telephony/imsphone/ImsPhone;


# direct methods
.method constructor <init>(Lcom/android/internal/telephony/imsphone/ImsPhone;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/internal/telephony/imsphone/ImsPhone;

    .line 1656
    iput-object p1, p0, Lcom/android/internal/telephony/imsphone/ImsPhone$1;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhone;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 11
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .line 1660
    invoke-virtual {p0}, Lcom/android/internal/telephony/imsphone/ImsPhone$1;->getResultCode()I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 1664
    const-string v0, "alertTitle"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getCharSequenceExtra(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v0

    .line 1665
    .local v0, "title":Ljava/lang/CharSequence;
    const-string v1, "alertMessage"

    invoke-virtual {p2, v1}, Landroid/content/Intent;->getCharSequenceExtra(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v1

    .line 1666
    .local v1, "messageAlert":Ljava/lang/CharSequence;
    const-string v2, "notificationMessage"

    invoke-virtual {p2, v2}, Landroid/content/Intent;->getCharSequenceExtra(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v2

    .line 1668
    .local v2, "messageNotification":Ljava/lang/CharSequence;
    new-instance v3, Landroid/content/Intent;

    const-string v4, "android.intent.action.MAIN"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1669
    .local v3, "resultIntent":Landroid/content/Intent;
    const-string v4, "com.android.settings"

    const-string v5, "com.android.settings.Settings$WifiCallingSettingsActivity"

    invoke-virtual {v3, v4, v5}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1671
    const-string v4, "alertShow"

    const/4 v5, 0x1

    invoke-virtual {v3, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1672
    const-string v4, "alertTitle"

    invoke-virtual {v3, v4, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/CharSequence;)Landroid/content/Intent;

    .line 1673
    const-string v4, "alertMessage"

    invoke-virtual {v3, v4, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/CharSequence;)Landroid/content/Intent;

    .line 1674
    iget-object v4, p0, Lcom/android/internal/telephony/imsphone/ImsPhone$1;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhone;

    .line 1676
    invoke-static {v4}, Lcom/android/internal/telephony/imsphone/ImsPhone;->access$300(Lcom/android/internal/telephony/imsphone/ImsPhone;)Landroid/content/Context;

    move-result-object v4

    const/4 v6, 0x0

    const/high16 v7, 0x8000000

    .line 1675
    invoke-static {v4, v6, v3, v7}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v4

    .line 1682
    .local v4, "resultPendingIntent":Landroid/app/PendingIntent;
    new-instance v6, Landroid/app/Notification$Builder;

    iget-object v7, p0, Lcom/android/internal/telephony/imsphone/ImsPhone$1;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhone;

    invoke-static {v7}, Lcom/android/internal/telephony/imsphone/ImsPhone;->access$400(Lcom/android/internal/telephony/imsphone/ImsPhone;)Landroid/content/Context;

    move-result-object v7

    invoke-direct {v6, v7}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;)V

    const v7, 0x108008a

    .line 1683
    invoke-virtual {v6, v7}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    move-result-object v6

    .line 1684
    invoke-virtual {v6, v0}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v6

    .line 1685
    invoke-virtual {v6, v2}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v6

    .line 1686
    invoke-virtual {v6, v5}, Landroid/app/Notification$Builder;->setAutoCancel(Z)Landroid/app/Notification$Builder;

    move-result-object v6

    .line 1687
    invoke-virtual {v6, v4}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    move-result-object v6

    new-instance v7, Landroid/app/Notification$BigTextStyle;

    invoke-direct {v7}, Landroid/app/Notification$BigTextStyle;-><init>()V

    .line 1689
    invoke-virtual {v7, v2}, Landroid/app/Notification$BigTextStyle;->bigText(Ljava/lang/CharSequence;)Landroid/app/Notification$BigTextStyle;

    move-result-object v7

    .line 1688
    invoke-virtual {v6, v7}, Landroid/app/Notification$Builder;->setStyle(Landroid/app/Notification$Style;)Landroid/app/Notification$Builder;

    move-result-object v6

    const-string v7, "wfc"

    .line 1690
    invoke-virtual {v6, v7}, Landroid/app/Notification$Builder;->setChannelId(Ljava/lang/String;)Landroid/app/Notification$Builder;

    move-result-object v6

    .line 1691
    invoke-virtual {v6}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object v6

    .line 1692
    .local v6, "notification":Landroid/app/Notification;
    const-string v7, "wifi_calling"

    .line 1693
    .local v7, "notificationTag":Ljava/lang/String;
    const/4 v8, 0x1

    .line 1695
    .local v8, "notificationId":I
    iget-object v9, p0, Lcom/android/internal/telephony/imsphone/ImsPhone$1;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhone;

    .line 1696
    invoke-static {v9}, Lcom/android/internal/telephony/imsphone/ImsPhone;->access$500(Lcom/android/internal/telephony/imsphone/ImsPhone;)Landroid/content/Context;

    move-result-object v9

    const-string v10, "notification"

    invoke-virtual {v9, v10}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/app/NotificationManager;

    .line 1698
    .local v9, "notificationManager":Landroid/app/NotificationManager;
    const-string v10, "wifi_calling"

    invoke-virtual {v9, v10, v5, v6}, Landroid/app/NotificationManager;->notify(Ljava/lang/String;ILandroid/app/Notification;)V

    .line 1701
    .end local v0    # "title":Ljava/lang/CharSequence;
    .end local v1    # "messageAlert":Ljava/lang/CharSequence;
    .end local v2    # "messageNotification":Ljava/lang/CharSequence;
    .end local v3    # "resultIntent":Landroid/content/Intent;
    .end local v4    # "resultPendingIntent":Landroid/app/PendingIntent;
    .end local v6    # "notification":Landroid/app/Notification;
    .end local v7    # "notificationTag":Ljava/lang/String;
    .end local v8    # "notificationId":I
    .end local v9    # "notificationManager":Landroid/app/NotificationManager;
    :cond_0
    return-void
.end method
