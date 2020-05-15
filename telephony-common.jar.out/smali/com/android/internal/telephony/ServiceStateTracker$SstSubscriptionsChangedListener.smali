.class Lcom/android/internal/telephony/ServiceStateTracker$SstSubscriptionsChangedListener;
.super Landroid/telephony/SubscriptionManager$OnSubscriptionsChangedListener;
.source "ServiceStateTracker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/ServiceStateTracker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SstSubscriptionsChangedListener"
.end annotation


# instance fields
.field public final mPreviousSubId:Ljava/util/concurrent/atomic/AtomicInteger;

.field final synthetic this$0:Lcom/android/internal/telephony/ServiceStateTracker;


# direct methods
.method private constructor <init>(Lcom/android/internal/telephony/ServiceStateTracker;)V
    .locals 1

    .line 292
    iput-object p1, p0, Lcom/android/internal/telephony/ServiceStateTracker$SstSubscriptionsChangedListener;->this$0:Lcom/android/internal/telephony/ServiceStateTracker;

    invoke-direct {p0}, Landroid/telephony/SubscriptionManager$OnSubscriptionsChangedListener;-><init>()V

    .line 293
    new-instance p1, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v0, -0x1

    invoke-direct {p1, v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object p1, p0, Lcom/android/internal/telephony/ServiceStateTracker$SstSubscriptionsChangedListener;->mPreviousSubId:Ljava/util/concurrent/atomic/AtomicInteger;

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/internal/telephony/ServiceStateTracker;Lcom/android/internal/telephony/ServiceStateTracker$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/internal/telephony/ServiceStateTracker;
    .param p2, "x1"    # Lcom/android/internal/telephony/ServiceStateTracker$1;

    .line 292
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/ServiceStateTracker$SstSubscriptionsChangedListener;-><init>(Lcom/android/internal/telephony/ServiceStateTracker;)V

    return-void
.end method


# virtual methods
.method public onSubscriptionsChanged()V
    .locals 10

    .line 302
    iget-object v0, p0, Lcom/android/internal/telephony/ServiceStateTracker$SstSubscriptionsChangedListener;->this$0:Lcom/android/internal/telephony/ServiceStateTracker;

    const-string v1, "SubscriptionListener.onSubscriptionInfoChanged"

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/ServiceStateTracker;->log(Ljava/lang/String;)V

    .line 304
    iget-object v0, p0, Lcom/android/internal/telephony/ServiceStateTracker$SstSubscriptionsChangedListener;->this$0:Lcom/android/internal/telephony/ServiceStateTracker;

    iget-object v0, v0, Lcom/android/internal/telephony/ServiceStateTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/GsmCdmaPhone;->getSubId()I

    move-result v0

    .line 305
    .local v0, "subId":I
    iget-object v1, p0, Lcom/android/internal/telephony/ServiceStateTracker$SstSubscriptionsChangedListener;->this$0:Lcom/android/internal/telephony/ServiceStateTracker;

    iget-object v2, p0, Lcom/android/internal/telephony/ServiceStateTracker$SstSubscriptionsChangedListener;->mPreviousSubId:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v2

    invoke-static {v1, v2}, Lcom/android/internal/telephony/ServiceStateTracker;->access$102(Lcom/android/internal/telephony/ServiceStateTracker;I)I

    .line 306
    iget-object v1, p0, Lcom/android/internal/telephony/ServiceStateTracker$SstSubscriptionsChangedListener;->mPreviousSubId:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1, v0}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndSet(I)I

    move-result v1

    if-eq v1, v0, :cond_4

    .line 307
    iget-object v1, p0, Lcom/android/internal/telephony/ServiceStateTracker$SstSubscriptionsChangedListener;->this$0:Lcom/android/internal/telephony/ServiceStateTracker;

    invoke-static {v1}, Lcom/android/internal/telephony/ServiceStateTracker;->access$200(Lcom/android/internal/telephony/ServiceStateTracker;)Lcom/android/internal/telephony/SubscriptionController;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/internal/telephony/SubscriptionController;->isActiveSubId(I)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 308
    iget-object v1, p0, Lcom/android/internal/telephony/ServiceStateTracker$SstSubscriptionsChangedListener;->this$0:Lcom/android/internal/telephony/ServiceStateTracker;

    iget-object v1, v1, Lcom/android/internal/telephony/ServiceStateTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    invoke-virtual {v1}, Lcom/android/internal/telephony/GsmCdmaPhone;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 310
    .local v1, "context":Landroid/content/Context;
    iget-object v2, p0, Lcom/android/internal/telephony/ServiceStateTracker$SstSubscriptionsChangedListener;->this$0:Lcom/android/internal/telephony/ServiceStateTracker;

    iget-object v2, v2, Lcom/android/internal/telephony/ServiceStateTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    invoke-virtual {v2}, Lcom/android/internal/telephony/GsmCdmaPhone;->notifyPhoneStateChanged()V

    .line 311
    iget-object v2, p0, Lcom/android/internal/telephony/ServiceStateTracker$SstSubscriptionsChangedListener;->this$0:Lcom/android/internal/telephony/ServiceStateTracker;

    iget-object v2, v2, Lcom/android/internal/telephony/ServiceStateTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    invoke-virtual {v2}, Lcom/android/internal/telephony/GsmCdmaPhone;->notifyCallForwardingIndicator()V

    .line 313
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x1120102

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v2

    xor-int/lit8 v2, v2, 0x1

    .line 315
    .local v2, "restoreSelection":Z
    iget-object v3, p0, Lcom/android/internal/telephony/ServiceStateTracker$SstSubscriptionsChangedListener;->this$0:Lcom/android/internal/telephony/ServiceStateTracker;

    iget-object v3, v3, Lcom/android/internal/telephony/ServiceStateTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    invoke-virtual {v3, v2}, Lcom/android/internal/telephony/GsmCdmaPhone;->sendSubscriptionSettings(Z)V

    .line 317
    iget-object v3, p0, Lcom/android/internal/telephony/ServiceStateTracker$SstSubscriptionsChangedListener;->this$0:Lcom/android/internal/telephony/ServiceStateTracker;

    iget-object v3, v3, Lcom/android/internal/telephony/ServiceStateTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    const-string v4, "gsm.network.type"

    iget-object v5, p0, Lcom/android/internal/telephony/ServiceStateTracker$SstSubscriptionsChangedListener;->this$0:Lcom/android/internal/telephony/ServiceStateTracker;

    iget-object v5, v5, Lcom/android/internal/telephony/ServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    .line 319
    invoke-virtual {v5}, Landroid/telephony/ServiceState;->getRilDataRadioTechnology()I

    move-result v5

    .line 318
    invoke-static {v5}, Landroid/telephony/ServiceState;->rilRadioTechnologyToString(I)Ljava/lang/String;

    move-result-object v5

    .line 317
    invoke-virtual {v3, v4, v5}, Lcom/android/internal/telephony/GsmCdmaPhone;->setSystemProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 321
    iget-object v3, p0, Lcom/android/internal/telephony/ServiceStateTracker$SstSubscriptionsChangedListener;->this$0:Lcom/android/internal/telephony/ServiceStateTracker;

    invoke-static {v3}, Lcom/android/internal/telephony/ServiceStateTracker;->access$300(Lcom/android/internal/telephony/ServiceStateTracker;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 322
    iget-object v3, p0, Lcom/android/internal/telephony/ServiceStateTracker$SstSubscriptionsChangedListener;->this$0:Lcom/android/internal/telephony/ServiceStateTracker;

    invoke-static {v3}, Lcom/android/internal/telephony/ServiceStateTracker;->access$200(Lcom/android/internal/telephony/ServiceStateTracker;)Lcom/android/internal/telephony/SubscriptionController;

    move-result-object v4

    iget-object v3, p0, Lcom/android/internal/telephony/ServiceStateTracker$SstSubscriptionsChangedListener;->this$0:Lcom/android/internal/telephony/ServiceStateTracker;

    iget-object v3, v3, Lcom/android/internal/telephony/ServiceStateTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    invoke-virtual {v3}, Lcom/android/internal/telephony/GsmCdmaPhone;->getPhoneId()I

    move-result v5

    iget-object v3, p0, Lcom/android/internal/telephony/ServiceStateTracker$SstSubscriptionsChangedListener;->this$0:Lcom/android/internal/telephony/ServiceStateTracker;

    invoke-static {v3}, Lcom/android/internal/telephony/ServiceStateTracker;->access$400(Lcom/android/internal/telephony/ServiceStateTracker;)Z

    move-result v6

    iget-object v3, p0, Lcom/android/internal/telephony/ServiceStateTracker$SstSubscriptionsChangedListener;->this$0:Lcom/android/internal/telephony/ServiceStateTracker;

    .line 323
    invoke-static {v3}, Lcom/android/internal/telephony/ServiceStateTracker;->access$500(Lcom/android/internal/telephony/ServiceStateTracker;)Ljava/lang/String;

    move-result-object v7

    iget-object v3, p0, Lcom/android/internal/telephony/ServiceStateTracker$SstSubscriptionsChangedListener;->this$0:Lcom/android/internal/telephony/ServiceStateTracker;

    invoke-static {v3}, Lcom/android/internal/telephony/ServiceStateTracker;->access$600(Lcom/android/internal/telephony/ServiceStateTracker;)Z

    move-result v8

    iget-object v3, p0, Lcom/android/internal/telephony/ServiceStateTracker$SstSubscriptionsChangedListener;->this$0:Lcom/android/internal/telephony/ServiceStateTracker;

    invoke-static {v3}, Lcom/android/internal/telephony/ServiceStateTracker;->access$700(Lcom/android/internal/telephony/ServiceStateTracker;)Ljava/lang/String;

    move-result-object v9

    .line 322
    invoke-virtual/range {v4 .. v9}, Lcom/android/internal/telephony/SubscriptionController;->setPlmnSpn(IZLjava/lang/String;ZLjava/lang/String;)Z

    .line 324
    iget-object v3, p0, Lcom/android/internal/telephony/ServiceStateTracker$SstSubscriptionsChangedListener;->this$0:Lcom/android/internal/telephony/ServiceStateTracker;

    const/4 v4, 0x0

    invoke-static {v3, v4}, Lcom/android/internal/telephony/ServiceStateTracker;->access$302(Lcom/android/internal/telephony/ServiceStateTracker;Z)Z

    .line 330
    :cond_0
    invoke-static {v1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v3

    .line 332
    .local v3, "sp":Landroid/content/SharedPreferences;
    const-string v4, "network_selection_key"

    const-string v5, ""

    invoke-interface {v3, v4, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 334
    .local v4, "oldNetworkSelection":Ljava/lang/String;
    const-string v5, "network_selection_name_key"

    const-string v6, ""

    invoke-interface {v3, v5, v6}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 336
    .local v5, "oldNetworkSelectionName":Ljava/lang/String;
    const-string v6, "network_selection_short_key"

    const-string v7, ""

    invoke-interface {v3, v6, v7}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 338
    .local v6, "oldNetworkSelectionShort":Ljava/lang/String;
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 339
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 340
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_2

    .line 341
    :cond_1
    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v7

    .line 342
    .local v7, "editor":Landroid/content/SharedPreferences$Editor;
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "network_selection_key"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v7, v8, v4}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 344
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "network_selection_name_key"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v7, v8, v5}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 346
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "network_selection_short_key"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v7, v8, v6}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 348
    const-string v8, "network_selection_key"

    invoke-interface {v7, v8}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 349
    const-string v8, "network_selection_name_key"

    invoke-interface {v7, v8}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 350
    const-string v8, "network_selection_short_key"

    invoke-interface {v7, v8}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 351
    invoke-interface {v7}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 357
    .end local v7    # "editor":Landroid/content/SharedPreferences$Editor;
    :cond_2
    iget-object v7, p0, Lcom/android/internal/telephony/ServiceStateTracker$SstSubscriptionsChangedListener;->this$0:Lcom/android/internal/telephony/ServiceStateTracker;

    invoke-virtual {v7}, Lcom/android/internal/telephony/ServiceStateTracker;->updateSpnDisplay()V

    .line 360
    .end local v1    # "context":Landroid/content/Context;
    .end local v2    # "restoreSelection":Z
    .end local v3    # "sp":Landroid/content/SharedPreferences;
    .end local v4    # "oldNetworkSelection":Ljava/lang/String;
    .end local v5    # "oldNetworkSelectionName":Ljava/lang/String;
    .end local v6    # "oldNetworkSelectionShort":Ljava/lang/String;
    :cond_3
    iget-object v1, p0, Lcom/android/internal/telephony/ServiceStateTracker$SstSubscriptionsChangedListener;->this$0:Lcom/android/internal/telephony/ServiceStateTracker;

    iget-object v1, v1, Lcom/android/internal/telephony/ServiceStateTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    invoke-virtual {v1}, Lcom/android/internal/telephony/GsmCdmaPhone;->updateVoiceMail()V

    .line 362
    :cond_4
    return-void
.end method
