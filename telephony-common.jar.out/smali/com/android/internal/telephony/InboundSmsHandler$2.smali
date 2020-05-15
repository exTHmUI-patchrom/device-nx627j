.class Lcom/android/internal/telephony/InboundSmsHandler$2;
.super Ljava/lang/Object;
.source "InboundSmsHandler.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/telephony/InboundSmsHandler;->dispatchSmsDeliveryIntent([[BLcom/android/internal/telephony/InboundSmsTracker;Ljava/lang/String;ILcom/android/internal/telephony/InboundSmsHandler$SmsBroadcastReceiver;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/telephony/InboundSmsHandler;

.field final synthetic val$mode:I

.field final synthetic val$msgs:[Landroid/telephony/SmsMessage;

.field final synthetic val$name:Ljava/lang/String;

.field final synthetic val$reason:I

.field final synthetic val$sms:Landroid/telephony/SmsMessage;

.field final synthetic val$tracker:Lcom/android/internal/telephony/InboundSmsTracker;


# direct methods
.method constructor <init>(Lcom/android/internal/telephony/InboundSmsHandler;Landroid/telephony/SmsMessage;[Landroid/telephony/SmsMessage;IILjava/lang/String;Lcom/android/internal/telephony/InboundSmsTracker;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/internal/telephony/InboundSmsHandler;

    .line 1698
    iput-object p1, p0, Lcom/android/internal/telephony/InboundSmsHandler$2;->this$0:Lcom/android/internal/telephony/InboundSmsHandler;

    iput-object p2, p0, Lcom/android/internal/telephony/InboundSmsHandler$2;->val$sms:Landroid/telephony/SmsMessage;

    iput-object p3, p0, Lcom/android/internal/telephony/InboundSmsHandler$2;->val$msgs:[Landroid/telephony/SmsMessage;

    iput p4, p0, Lcom/android/internal/telephony/InboundSmsHandler$2;->val$mode:I

    iput p5, p0, Lcom/android/internal/telephony/InboundSmsHandler$2;->val$reason:I

    iput-object p6, p0, Lcom/android/internal/telephony/InboundSmsHandler$2;->val$name:Ljava/lang/String;

    iput-object p7, p0, Lcom/android/internal/telephony/InboundSmsHandler$2;->val$tracker:Lcom/android/internal/telephony/InboundSmsTracker;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .line 1700
    const-string v0, "content://newharassintercept/sms"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 1701
    .local v0, "uri":Landroid/net/Uri;
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 1702
    .local v1, "values":Landroid/content/ContentValues;
    const-string v2, "address"

    iget-object v3, p0, Lcom/android/internal/telephony/InboundSmsHandler$2;->val$sms:Landroid/telephony/SmsMessage;

    invoke-virtual {v3}, Landroid/telephony/SmsMessage;->getDisplayOriginatingAddress()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1703
    const-string v2, "body"

    iget-object v3, p0, Lcom/android/internal/telephony/InboundSmsHandler$2;->val$msgs:[Landroid/telephony/SmsMessage;

    invoke-static {v3}, Lcom/android/internal/telephony/InboundSmsHandler;->access$2200([Landroid/telephony/SmsMessage;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1704
    const-string v2, "seen"

    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v2, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1705
    const-string v2, "read"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1706
    const-string v2, "phone_id"

    iget-object v3, p0, Lcom/android/internal/telephony/InboundSmsHandler$2;->this$0:Lcom/android/internal/telephony/InboundSmsHandler;

    iget-object v3, v3, Lcom/android/internal/telephony/InboundSmsHandler;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v3}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1707
    const-string v2, "date"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1708
    const-string v2, "intercept_mode"

    iget v3, p0, Lcom/android/internal/telephony/InboundSmsHandler$2;->val$mode:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1709
    const-string v2, "intercept_reason"

    iget v3, p0, Lcom/android/internal/telephony/InboundSmsHandler$2;->val$reason:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1710
    iget-object v2, p0, Lcom/android/internal/telephony/InboundSmsHandler$2;->val$name:Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 1711
    const-string v2, "person_name"

    iget-object v3, p0, Lcom/android/internal/telephony/InboundSmsHandler$2;->val$name:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1713
    :cond_0
    const-string v2, "person_name"

    const-string v3, ""

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1715
    :goto_0
    iget-object v2, p0, Lcom/android/internal/telephony/InboundSmsHandler$2;->this$0:Lcom/android/internal/telephony/InboundSmsHandler;

    invoke-static {v2}, Lcom/android/internal/telephony/InboundSmsHandler;->access$2300(Lcom/android/internal/telephony/InboundSmsHandler;)Landroid/content/ContentResolver;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    .line 1716
    iget-object v2, p0, Lcom/android/internal/telephony/InboundSmsHandler$2;->this$0:Lcom/android/internal/telephony/InboundSmsHandler;

    invoke-static {v2}, Lcom/android/internal/telephony/InboundSmsHandler;->access$2400(Lcom/android/internal/telephony/InboundSmsHandler;)Lcom/android/internal/telephony/InboundSmsHandler$InterceptServiceConnection;

    move-result-object v2

    iget-object v3, p0, Lcom/android/internal/telephony/InboundSmsHandler$2;->val$sms:Landroid/telephony/SmsMessage;

    invoke-virtual {v3}, Landroid/telephony/SmsMessage;->getDisplayOriginatingAddress()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/internal/telephony/InboundSmsHandler$InterceptServiceConnection;->addName(Ljava/lang/String;)V

    .line 1717
    iget-object v2, p0, Lcom/android/internal/telephony/InboundSmsHandler$2;->this$0:Lcom/android/internal/telephony/InboundSmsHandler;

    iget-object v3, p0, Lcom/android/internal/telephony/InboundSmsHandler$2;->val$tracker:Lcom/android/internal/telephony/InboundSmsTracker;

    invoke-virtual {v3}, Lcom/android/internal/telephony/InboundSmsTracker;->getDeleteWhere()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/android/internal/telephony/InboundSmsHandler$2;->val$tracker:Lcom/android/internal/telephony/InboundSmsTracker;

    invoke-virtual {v4}, Lcom/android/internal/telephony/InboundSmsTracker;->getDeleteWhereArgs()[Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x2

    invoke-static {v2, v3, v4, v5}, Lcom/android/internal/telephony/InboundSmsHandler;->access$1400(Lcom/android/internal/telephony/InboundSmsHandler;Ljava/lang/String;[Ljava/lang/String;I)V

    .line 1719
    return-void
.end method
