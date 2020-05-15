.class public Lcom/android/ims/ImsConfig;
.super Ljava/lang/Object;
.source "ImsConfig.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/ims/ImsConfig$WfcModeFeatureValueConstants;,
        Lcom/android/ims/ImsConfig$FeatureValueConstants;,
        Lcom/android/ims/ImsConfig$VideoQualityFeatureValuesConstants;,
        Lcom/android/ims/ImsConfig$OperationValuesConstants;,
        Lcom/android/ims/ImsConfig$OperationStatusConstants;,
        Lcom/android/ims/ImsConfig$ConfigConstants;,
        Lcom/android/ims/ImsConfig$FeatureConstants;
    }
.end annotation


# static fields
.field public static final ACTION_IMS_CONFIG_CHANGED:Ljava/lang/String; = "com.android.intent.action.IMS_CONFIG_CHANGED"

.field public static final ACTION_IMS_FEATURE_CHANGED:Ljava/lang/String; = "com.android.intent.action.IMS_FEATURE_CHANGED"

.field public static final EXTRA_CHANGED_ITEM:Ljava/lang/String; = "item"

.field public static final EXTRA_NEW_VALUE:Ljava/lang/String; = "value"

.field private static final TAG:Ljava/lang/String; = "ImsConfig"


# instance fields
.field private DBG:Z

.field private final miConfig:Landroid/telephony/ims/aidl/IImsConfig;


# direct methods
.method public constructor <init>(Landroid/telephony/ims/aidl/IImsConfig;)V
    .locals 1
    .param p1, "iconfig"    # Landroid/telephony/ims/aidl/IImsConfig;

    .line 543
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/ims/ImsConfig;->DBG:Z

    .line 544
    iput-object p1, p0, Lcom/android/ims/ImsConfig;->miConfig:Landroid/telephony/ims/aidl/IImsConfig;

    .line 545
    return-void
.end method


# virtual methods
.method public addConfigCallback(Landroid/telephony/ims/stub/ImsConfigImplBase$Callback;)V
    .locals 4
    .param p1, "callback"    # Landroid/telephony/ims/stub/ImsConfigImplBase$Callback;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/ims/ImsException;
        }
    .end annotation

    .line 683
    iget-boolean v0, p0, Lcom/android/ims/ImsConfig;->DBG:Z

    if-eqz v0, :cond_0

    const-string v0, "ImsConfig"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "addConfigCallback: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 685
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/android/ims/ImsConfig;->miConfig:Landroid/telephony/ims/aidl/IImsConfig;

    invoke-interface {v0, p1}, Landroid/telephony/ims/aidl/IImsConfig;->addImsConfigCallback(Landroid/telephony/ims/aidl/IImsConfigCallback;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 689
    nop

    .line 690
    return-void

    .line 686
    :catch_0
    move-exception v0

    .line 687
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Lcom/android/ims/ImsException;

    const/16 v2, 0x83

    const-string v3, "addConfigCallback()"

    invoke-direct {v1, v3, v0, v2}, Lcom/android/ims/ImsException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;I)V

    throw v1
.end method

.method public getConfigInt(I)I
    .locals 5
    .param p1, "item"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/ims/ImsException;
        }
    .end annotation

    .line 562
    const/4 v0, 0x0

    .line 564
    .local v0, "ret":I
    :try_start_0
    iget-object v1, p0, Lcom/android/ims/ImsConfig;->miConfig:Landroid/telephony/ims/aidl/IImsConfig;

    invoke-interface {v1, p1}, Landroid/telephony/ims/aidl/IImsConfig;->getConfigInt(I)I

    move-result v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v1

    .line 568
    nop

    .line 569
    iget-boolean v1, p0, Lcom/android/ims/ImsConfig;->DBG:Z

    if-eqz v1, :cond_0

    const-string v1, "ImsConfig"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getInt(): item = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", ret ="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 571
    :cond_0
    return v0

    .line 565
    :catch_0
    move-exception v1

    .line 566
    .local v1, "e":Landroid/os/RemoteException;
    new-instance v2, Lcom/android/ims/ImsException;

    const/16 v3, 0x83

    const-string v4, "getInt()"

    invoke-direct {v2, v4, v1, v3}, Lcom/android/ims/ImsException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;I)V

    throw v2
.end method

.method public getConfigString(I)Ljava/lang/String;
    .locals 5
    .param p1, "item"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/ims/ImsException;
        }
    .end annotation

    .line 590
    const-string v0, "Unknown"

    .line 592
    .local v0, "ret":Ljava/lang/String;
    :try_start_0
    iget-object v1, p0, Lcom/android/ims/ImsConfig;->miConfig:Landroid/telephony/ims/aidl/IImsConfig;

    invoke-interface {v1, p1}, Landroid/telephony/ims/aidl/IImsConfig;->getConfigString(I)Ljava/lang/String;

    move-result-object v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v1

    .line 596
    nop

    .line 597
    iget-boolean v1, p0, Lcom/android/ims/ImsConfig;->DBG:Z

    if-eqz v1, :cond_0

    const-string v1, "ImsConfig"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getConfigString(): item = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", ret ="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 599
    :cond_0
    return-object v0

    .line 593
    :catch_0
    move-exception v1

    .line 594
    .local v1, "e":Landroid/os/RemoteException;
    new-instance v2, Lcom/android/ims/ImsException;

    const/16 v3, 0x83

    const-string v4, "getConfigString()"

    invoke-direct {v2, v4, v1, v3}, Lcom/android/ims/ImsException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;I)V

    throw v2
.end method

.method public getProvisionedStringValue(I)Ljava/lang/String;
    .locals 1
    .param p1, "item"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/ims/ImsException;
        }
    .end annotation

    .line 578
    invoke-virtual {p0, p1}, Lcom/android/ims/ImsConfig;->getConfigString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getProvisionedValue(I)I
    .locals 1
    .param p1, "item"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/ims/ImsException;
        }
    .end annotation

    .line 551
    invoke-virtual {p0, p1}, Lcom/android/ims/ImsConfig;->getConfigInt(I)I

    move-result v0

    return v0
.end method

.method public isBinderAlive()Z
    .locals 1

    .line 710
    iget-object v0, p0, Lcom/android/ims/ImsConfig;->miConfig:Landroid/telephony/ims/aidl/IImsConfig;

    invoke-interface {v0}, Landroid/telephony/ims/aidl/IImsConfig;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-interface {v0}, Landroid/os/IBinder;->isBinderAlive()Z

    move-result v0

    return v0
.end method

.method public removeConfigCallback(Landroid/telephony/ims/stub/ImsConfigImplBase$Callback;)V
    .locals 4
    .param p1, "callback"    # Landroid/telephony/ims/stub/ImsConfigImplBase$Callback;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/ims/ImsException;
        }
    .end annotation

    .line 697
    iget-boolean v0, p0, Lcom/android/ims/ImsConfig;->DBG:Z

    if-eqz v0, :cond_0

    const-string v0, "ImsConfig"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "removeConfigCallback: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 699
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/android/ims/ImsConfig;->miConfig:Landroid/telephony/ims/aidl/IImsConfig;

    invoke-interface {v0, p1}, Landroid/telephony/ims/aidl/IImsConfig;->removeImsConfigCallback(Landroid/telephony/ims/aidl/IImsConfigCallback;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 703
    nop

    .line 704
    return-void

    .line 700
    :catch_0
    move-exception v0

    .line 701
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Lcom/android/ims/ImsException;

    const/16 v2, 0x83

    const-string/jumbo v3, "removeConfigCallback()"

    invoke-direct {v1, v3, v0, v2}, Lcom/android/ims/ImsException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;I)V

    throw v1
.end method

.method public setConfig(II)I
    .locals 5
    .param p1, "item"    # I
    .param p2, "value"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/ims/ImsException;
        }
    .end annotation

    .line 626
    const/4 v0, -0x1

    .line 627
    .local v0, "ret":I
    iget-boolean v1, p0, Lcom/android/ims/ImsConfig;->DBG:Z

    if-eqz v1, :cond_0

    .line 628
    const-string v1, "ImsConfig"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "setConfig(): item = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo v3, "value = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 632
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/android/ims/ImsConfig;->miConfig:Landroid/telephony/ims/aidl/IImsConfig;

    invoke-interface {v1, p1, p2}, Landroid/telephony/ims/aidl/IImsConfig;->setConfigInt(II)I

    move-result v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v1

    .line 636
    nop

    .line 637
    iget-boolean v1, p0, Lcom/android/ims/ImsConfig;->DBG:Z

    if-eqz v1, :cond_1

    .line 638
    const-string v1, "ImsConfig"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "setConfig(): item = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " value = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " ret = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 642
    :cond_1
    return v0

    .line 633
    :catch_0
    move-exception v1

    .line 634
    .local v1, "e":Landroid/os/RemoteException;
    new-instance v2, Lcom/android/ims/ImsException;

    const/16 v3, 0x83

    const-string/jumbo v4, "setConfig()"

    invoke-direct {v2, v4, v1, v3}, Lcom/android/ims/ImsException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;I)V

    throw v2
.end method

.method public setConfig(ILjava/lang/String;)I
    .locals 5
    .param p1, "item"    # I
    .param p2, "value"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/ims/ImsException;
        }
    .end annotation

    .line 656
    const/4 v0, -0x1

    .line 657
    .local v0, "ret":I
    iget-boolean v1, p0, Lcom/android/ims/ImsConfig;->DBG:Z

    if-eqz v1, :cond_0

    .line 658
    const-string v1, "ImsConfig"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "setConfig(): item = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo v3, "value = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 662
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/android/ims/ImsConfig;->miConfig:Landroid/telephony/ims/aidl/IImsConfig;

    invoke-interface {v1, p1, p2}, Landroid/telephony/ims/aidl/IImsConfig;->setConfigString(ILjava/lang/String;)I

    move-result v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v1

    .line 666
    nop

    .line 667
    iget-boolean v1, p0, Lcom/android/ims/ImsConfig;->DBG:Z

    if-eqz v1, :cond_1

    .line 668
    const-string v1, "ImsConfig"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "setConfig(): item = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " value = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " ret = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 672
    :cond_1
    return v0

    .line 663
    :catch_0
    move-exception v1

    .line 664
    .local v1, "e":Landroid/os/RemoteException;
    new-instance v2, Lcom/android/ims/ImsException;

    const/16 v3, 0x83

    const-string/jumbo v4, "setConfig()"

    invoke-direct {v2, v4, v1, v3}, Lcom/android/ims/ImsException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;I)V

    throw v2
.end method

.method public setProvisionedStringValue(ILjava/lang/String;)I
    .locals 1
    .param p1, "item"    # I
    .param p2, "value"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/ims/ImsException;
        }
    .end annotation

    .line 613
    invoke-virtual {p0, p1, p2}, Lcom/android/ims/ImsConfig;->setConfig(ILjava/lang/String;)I

    move-result v0

    return v0
.end method

.method public setProvisionedValue(II)I
    .locals 1
    .param p1, "item"    # I
    .param p2, "value"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/ims/ImsException;
        }
    .end annotation

    .line 606
    invoke-virtual {p0, p1, p2}, Lcom/android/ims/ImsConfig;->setConfig(II)I

    move-result v0

    return v0
.end method
