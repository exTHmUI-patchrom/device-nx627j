.class Lcom/qualcomm/qti/internal/telephony/primarycard/SubsidyLockSettingsObserver$SubsidySettingsHandler;
.super Landroid/os/Handler;
.source "SubsidyLockSettingsObserver.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/qualcomm/qti/internal/telephony/primarycard/SubsidyLockSettingsObserver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SubsidySettingsHandler"
.end annotation


# static fields
.field public static final MSG_ALL_CARDS_READY:I = 0x4

.field public static final MSG_EXIT:I = 0x3

.field public static final MSG_LOCKED:I = 0x0

.field public static final MSG_RESTRICTED:I = 0x1

.field public static final MSG_SET_PRIMARY_CARD:I = 0x5

.field public static final MSG_UNLOCKED:I = 0x2

.field static final PROVISIONED:I = 0x1

.field static final SUCCESS:I


# instance fields
.field private mNumSimSlots:I

.field final synthetic this$0:Lcom/qualcomm/qti/internal/telephony/primarycard/SubsidyLockSettingsObserver;


# direct methods
.method public constructor <init>(Lcom/qualcomm/qti/internal/telephony/primarycard/SubsidyLockSettingsObserver;Landroid/os/Looper;)V
    .locals 0
    .param p2, "looper"    # Landroid/os/Looper;

    .line 183
    iput-object p1, p0, Lcom/qualcomm/qti/internal/telephony/primarycard/SubsidyLockSettingsObserver$SubsidySettingsHandler;->this$0:Lcom/qualcomm/qti/internal/telephony/primarycard/SubsidyLockSettingsObserver;

    .line 184
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 181
    const/4 p1, 0x0

    iput p1, p0, Lcom/qualcomm/qti/internal/telephony/primarycard/SubsidyLockSettingsObserver$SubsidySettingsHandler;->mNumSimSlots:I

    .line 185
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object p1

    invoke-virtual {p1}, Landroid/telephony/TelephonyManager;->getPhoneCount()I

    move-result p1

    iput p1, p0, Lcom/qualcomm/qti/internal/telephony/primarycard/SubsidyLockSettingsObserver$SubsidySettingsHandler;->mNumSimSlots:I

    .line 186
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 8
    .param p1, "msg"    # Landroid/os/Message;

    .line 190
    const-string v0, "SubsidyLockSettingsObserver"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " handleMessage, event  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p1, Landroid/os/Message;->what:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " current state "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/qualcomm/qti/internal/telephony/primarycard/SubsidyLockSettingsObserver;->access$100()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 191
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x3

    const/4 v2, 0x0

    const/4 v3, 0x1

    packed-switch v0, :pswitch_data_0

    goto/16 :goto_8

    .line 276
    :pswitch_0
    invoke-static {}, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardController;->getInstance()Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardController;->trySetPrimarySub()V

    goto/16 :goto_8

    .line 193
    :pswitch_1
    iget-object v0, p0, Lcom/qualcomm/qti/internal/telephony/primarycard/SubsidyLockSettingsObserver$SubsidySettingsHandler;->this$0:Lcom/qualcomm/qti/internal/telephony/primarycard/SubsidyLockSettingsObserver;

    invoke-virtual {v0, v2}, Lcom/qualcomm/qti/internal/telephony/primarycard/SubsidyLockSettingsObserver;->onChange(Z)V

    .line 194
    goto/16 :goto_8

    .line 271
    :pswitch_2
    invoke-virtual {p0}, Lcom/qualcomm/qti/internal/telephony/primarycard/SubsidyLockSettingsObserver$SubsidySettingsHandler;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    if-eq v0, v1, :cond_c

    .line 272
    invoke-virtual {p0}, Lcom/qualcomm/qti/internal/telephony/primarycard/SubsidyLockSettingsObserver$SubsidySettingsHandler;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->quitSafely()V

    goto/16 :goto_8

    .line 268
    :pswitch_3
    const/16 v0, 0x64

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, v3, v0}, Lcom/qualcomm/qti/internal/telephony/primarycard/SubsidyLockSettingsObserver$SubsidySettingsHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 269
    goto/16 :goto_8

    .line 230
    :pswitch_4
    const-string v0, "extphone"

    .line 231
    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 230
    invoke-static {v0}, Lorg/codeaurora/internal/IExtTelephony$Stub;->asInterface(Landroid/os/IBinder;)Lorg/codeaurora/internal/IExtTelephony;

    move-result-object v0

    .line 233
    .local v0, "mExtTelephony1":Lorg/codeaurora/internal/IExtTelephony;
    nop

    .local v2, "i":I
    :goto_0
    :try_start_0
    iget v3, p0, Lcom/qualcomm/qti/internal/telephony/primarycard/SubsidyLockSettingsObserver$SubsidySettingsHandler;->mNumSimSlots:I

    if-ge v2, v3, :cond_5

    .line 234
    iget-object v3, p0, Lcom/qualcomm/qti/internal/telephony/primarycard/SubsidyLockSettingsObserver$SubsidySettingsHandler;->this$0:Lcom/qualcomm/qti/internal/telephony/primarycard/SubsidyLockSettingsObserver;

    invoke-static {v3}, Lcom/qualcomm/qti/internal/telephony/primarycard/SubsidyLockSettingsObserver;->access$000(Lcom/qualcomm/qti/internal/telephony/primarycard/SubsidyLockSettingsObserver;)Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Landroid/telephony/SubscriptionManager;->from(Landroid/content/Context;)Landroid/telephony/SubscriptionManager;

    move-result-object v3

    .line 235
    invoke-virtual {v3, v2}, Landroid/telephony/SubscriptionManager;->getActiveSubscriptionInfoForSimSlotIndex(I)Landroid/telephony/SubscriptionInfo;

    move-result-object v3

    .line 236
    .local v3, "sir":Landroid/telephony/SubscriptionInfo;
    if-eqz v3, :cond_3

    invoke-virtual {v3}, Landroid/telephony/SubscriptionInfo;->getMcc()I

    move-result v4

    if-nez v4, :cond_0

    goto :goto_1

    .line 241
    :cond_0
    invoke-interface {v0, v2}, Lorg/codeaurora/internal/IExtTelephony;->isPrimaryCarrierSlotId(I)Z

    move-result v4

    if-nez v4, :cond_2

    .line 242
    new-instance v4, Lcom/qualcomm/qti/internal/telephony/primarycard/SubsidyLockSettingsObserver$SIMDeactivationRecords;

    iget-object v5, p0, Lcom/qualcomm/qti/internal/telephony/primarycard/SubsidyLockSettingsObserver$SubsidySettingsHandler;->this$0:Lcom/qualcomm/qti/internal/telephony/primarycard/SubsidyLockSettingsObserver;

    invoke-direct {v4, v5}, Lcom/qualcomm/qti/internal/telephony/primarycard/SubsidyLockSettingsObserver$SIMDeactivationRecords;-><init>(Lcom/qualcomm/qti/internal/telephony/primarycard/SubsidyLockSettingsObserver;)V

    .line 243
    .local v4, "records":Lcom/qualcomm/qti/internal/telephony/primarycard/SubsidyLockSettingsObserver$SIMDeactivationRecords;
    nop

    .line 244
    invoke-virtual {v3}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    .line 243
    invoke-virtual {v4, v5}, Lcom/qualcomm/qti/internal/telephony/primarycard/SubsidyLockSettingsObserver$SIMDeactivationRecords;->isDeactivated(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 245
    invoke-interface {v0, v2}, Lorg/codeaurora/internal/IExtTelephony;->activateUiccCard(I)I

    move-result v5

    .line 246
    .local v5, "result":I
    if-nez v5, :cond_1

    .line 247
    nop

    .line 248
    invoke-virtual {v3}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v6

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    .line 247
    invoke-virtual {v4, v6}, Lcom/qualcomm/qti/internal/telephony/primarycard/SubsidyLockSettingsObserver$SIMDeactivationRecords;->removeRecord(Ljava/lang/String;)V

    .line 251
    .end local v4    # "records":Lcom/qualcomm/qti/internal/telephony/primarycard/SubsidyLockSettingsObserver$SIMDeactivationRecords;
    .end local v5    # "result":I
    :cond_1
    goto :goto_2

    :cond_2
    iget-object v4, p0, Lcom/qualcomm/qti/internal/telephony/primarycard/SubsidyLockSettingsObserver$SubsidySettingsHandler;->this$0:Lcom/qualcomm/qti/internal/telephony/primarycard/SubsidyLockSettingsObserver;

    invoke-static {v4}, Lcom/qualcomm/qti/internal/telephony/primarycard/SubsidyLockSettingsObserver;->access$000(Lcom/qualcomm/qti/internal/telephony/primarycard/SubsidyLockSettingsObserver;)Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lcom/qualcomm/qti/internal/telephony/primarycard/SubsidyLockSettingsObserver;->isSubsidyUnlocked(Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 252
    invoke-interface {v0, v2}, Lorg/codeaurora/internal/IExtTelephony;->isPrimaryCarrierSlotId(I)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 253
    iget-object v4, p0, Lcom/qualcomm/qti/internal/telephony/primarycard/SubsidyLockSettingsObserver$SubsidySettingsHandler;->this$0:Lcom/qualcomm/qti/internal/telephony/primarycard/SubsidyLockSettingsObserver;

    invoke-static {v4}, Lcom/qualcomm/qti/internal/telephony/primarycard/SubsidyLockSettingsObserver;->access$000(Lcom/qualcomm/qti/internal/telephony/primarycard/SubsidyLockSettingsObserver;)Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner;->make(Landroid/content/Context;)Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner;

    move-result-object v4

    invoke-virtual {v4, v2}, Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner;->activateUiccCard(I)I

    .end local v3    # "sir":Landroid/telephony/SubscriptionInfo;
    goto :goto_2

    .line 237
    .restart local v3    # "sir":Landroid/telephony/SubscriptionInfo;
    :cond_3
    :goto_1
    const-string v4, "SubsidyLockSettingsObserver"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Invalid subscription info for slot id: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, ", not proceeding further."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 239
    nop

    .line 233
    .end local v3    # "sir":Landroid/telephony/SubscriptionInfo;
    :cond_4
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0

    .line 258
    .end local v2    # "i":I
    :catch_0
    move-exception v2

    .line 259
    .local v2, "e":Ljava/lang/NullPointerException;
    invoke-virtual {v2}, Ljava/lang/NullPointerException;->printStackTrace()V

    .end local v2    # "e":Ljava/lang/NullPointerException;
    goto :goto_3

    .line 256
    :catch_1
    move-exception v2

    .line 257
    .local v2, "e":Landroid/os/RemoteException;
    invoke-virtual {v2}, Landroid/os/RemoteException;->printStackTrace()V

    .line 260
    .end local v2    # "e":Landroid/os/RemoteException;
    :cond_5
    nop

    .line 262
    :goto_3
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-eqz v2, :cond_6

    .line 263
    iget-object v2, p0, Lcom/qualcomm/qti/internal/telephony/primarycard/SubsidyLockSettingsObserver$SubsidySettingsHandler;->this$0:Lcom/qualcomm/qti/internal/telephony/primarycard/SubsidyLockSettingsObserver;

    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-static {v2, v3}, Lcom/qualcomm/qti/internal/telephony/primarycard/SubsidyLockSettingsObserver;->access$200(Lcom/qualcomm/qti/internal/telephony/primarycard/SubsidyLockSettingsObserver;I)V

    .line 265
    :cond_6
    invoke-virtual {p0, v1}, Lcom/qualcomm/qti/internal/telephony/primarycard/SubsidyLockSettingsObserver$SubsidySettingsHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 266
    goto/16 :goto_8

    .line 196
    .end local v0    # "mExtTelephony1":Lorg/codeaurora/internal/IExtTelephony;
    :pswitch_5
    const-string v0, "extphone"

    .line 197
    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 196
    invoke-static {v0}, Lorg/codeaurora/internal/IExtTelephony$Stub;->asInterface(Landroid/os/IBinder;)Lorg/codeaurora/internal/IExtTelephony;

    move-result-object v0

    .line 199
    .local v0, "mExtTelephony":Lorg/codeaurora/internal/IExtTelephony;
    nop

    .local v2, "i":I
    :goto_4
    :try_start_1
    iget v4, p0, Lcom/qualcomm/qti/internal/telephony/primarycard/SubsidyLockSettingsObserver$SubsidySettingsHandler;->mNumSimSlots:I

    if-ge v2, v4, :cond_b

    .line 200
    iget-object v4, p0, Lcom/qualcomm/qti/internal/telephony/primarycard/SubsidyLockSettingsObserver$SubsidySettingsHandler;->this$0:Lcom/qualcomm/qti/internal/telephony/primarycard/SubsidyLockSettingsObserver;

    invoke-static {v4}, Lcom/qualcomm/qti/internal/telephony/primarycard/SubsidyLockSettingsObserver;->access$000(Lcom/qualcomm/qti/internal/telephony/primarycard/SubsidyLockSettingsObserver;)Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Landroid/telephony/SubscriptionManager;->from(Landroid/content/Context;)Landroid/telephony/SubscriptionManager;

    move-result-object v4

    .line 201
    invoke-virtual {v4, v2}, Landroid/telephony/SubscriptionManager;->getActiveSubscriptionInfoForSimSlotIndex(I)Landroid/telephony/SubscriptionInfo;

    move-result-object v4

    .line 202
    .local v4, "sir":Landroid/telephony/SubscriptionInfo;
    if-eqz v4, :cond_9

    invoke-virtual {v4}, Landroid/telephony/SubscriptionInfo;->getMcc()I

    move-result v5

    if-nez v5, :cond_7

    goto :goto_5

    .line 207
    :cond_7
    invoke-interface {v0, v2}, Lorg/codeaurora/internal/IExtTelephony;->isPrimaryCarrierSlotId(I)Z

    move-result v5

    if-eqz v5, :cond_8

    .line 208
    iget-object v5, p0, Lcom/qualcomm/qti/internal/telephony/primarycard/SubsidyLockSettingsObserver$SubsidySettingsHandler;->this$0:Lcom/qualcomm/qti/internal/telephony/primarycard/SubsidyLockSettingsObserver;

    invoke-static {v5}, Lcom/qualcomm/qti/internal/telephony/primarycard/SubsidyLockSettingsObserver;->access$000(Lcom/qualcomm/qti/internal/telephony/primarycard/SubsidyLockSettingsObserver;)Landroid/content/Context;

    move-result-object v5

    invoke-static {v5}, Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner;->make(Landroid/content/Context;)Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner;

    move-result-object v5

    invoke-virtual {v5, v2}, Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner;->activateUiccCard(I)I

    goto :goto_6

    .line 210
    :cond_8
    invoke-interface {v0, v2}, Lorg/codeaurora/internal/IExtTelephony;->getCurrentUiccCardProvisioningStatus(I)I

    move-result v5

    if-ne v5, v3, :cond_a

    .line 212
    iget-object v5, p0, Lcom/qualcomm/qti/internal/telephony/primarycard/SubsidyLockSettingsObserver$SubsidySettingsHandler;->this$0:Lcom/qualcomm/qti/internal/telephony/primarycard/SubsidyLockSettingsObserver;

    invoke-static {v5}, Lcom/qualcomm/qti/internal/telephony/primarycard/SubsidyLockSettingsObserver;->access$000(Lcom/qualcomm/qti/internal/telephony/primarycard/SubsidyLockSettingsObserver;)Landroid/content/Context;

    move-result-object v5

    invoke-static {v5}, Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner;->make(Landroid/content/Context;)Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner;

    move-result-object v5

    .line 213
    invoke-virtual {v5, v2}, Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner;->deactivateUiccCard(I)I

    move-result v5

    .line 214
    .restart local v5    # "result":I
    if-nez v5, :cond_a

    .line 215
    new-instance v6, Lcom/qualcomm/qti/internal/telephony/primarycard/SubsidyLockSettingsObserver$SIMDeactivationRecords;

    iget-object v7, p0, Lcom/qualcomm/qti/internal/telephony/primarycard/SubsidyLockSettingsObserver$SubsidySettingsHandler;->this$0:Lcom/qualcomm/qti/internal/telephony/primarycard/SubsidyLockSettingsObserver;

    invoke-direct {v6, v7}, Lcom/qualcomm/qti/internal/telephony/primarycard/SubsidyLockSettingsObserver$SIMDeactivationRecords;-><init>(Lcom/qualcomm/qti/internal/telephony/primarycard/SubsidyLockSettingsObserver;)V

    .line 216
    invoke-virtual {v4}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v7

    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/qualcomm/qti/internal/telephony/primarycard/SubsidyLockSettingsObserver$SIMDeactivationRecords;->addRecord(Ljava/lang/String;)V

    .end local v4    # "sir":Landroid/telephony/SubscriptionInfo;
    .end local v5    # "result":I
    goto :goto_6

    .line 203
    .restart local v4    # "sir":Landroid/telephony/SubscriptionInfo;
    :cond_9
    :goto_5
    const-string v5, "SubsidyLockSettingsObserver"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Invalid sub info for slot id: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, ", not proceeding further."

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_2

    .line 205
    nop

    .line 199
    .end local v4    # "sir":Landroid/telephony/SubscriptionInfo;
    :cond_a
    :goto_6
    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    .line 223
    .end local v2    # "i":I
    :catch_2
    move-exception v2

    .line 224
    .local v2, "e":Ljava/lang/NullPointerException;
    invoke-virtual {v2}, Ljava/lang/NullPointerException;->printStackTrace()V

    .end local v2    # "e":Ljava/lang/NullPointerException;
    goto :goto_7

    .line 221
    :catch_3
    move-exception v2

    .line 222
    .local v2, "e":Landroid/os/RemoteException;
    invoke-virtual {v2}, Landroid/os/RemoteException;->printStackTrace()V

    .line 225
    .end local v2    # "e":Landroid/os/RemoteException;
    :cond_b
    nop

    .line 226
    :goto_7
    iget-object v2, p0, Lcom/qualcomm/qti/internal/telephony/primarycard/SubsidyLockSettingsObserver$SubsidySettingsHandler;->this$0:Lcom/qualcomm/qti/internal/telephony/primarycard/SubsidyLockSettingsObserver;

    const/16 v3, 0x66

    invoke-static {v2, v3}, Lcom/qualcomm/qti/internal/telephony/primarycard/SubsidyLockSettingsObserver;->access$200(Lcom/qualcomm/qti/internal/telephony/primarycard/SubsidyLockSettingsObserver;I)V

    .line 227
    invoke-virtual {p0, v1}, Lcom/qualcomm/qti/internal/telephony/primarycard/SubsidyLockSettingsObserver$SubsidySettingsHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 228
    nop

    .line 279
    .end local v0    # "mExtTelephony":Lorg/codeaurora/internal/IExtTelephony;
    :cond_c
    :goto_8
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
