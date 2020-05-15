.class public Lcom/android/internal/telephony/uicc/UiccCard;
.super Ljava/lang/Object;
.source "UiccCard.java"


# static fields
.field protected static final DBG:Z = true

.field public static final EXTRA_ICC_CARD_ADDED:Ljava/lang/String; = "com.android.internal.telephony.uicc.ICC_CARD_ADDED"

.field protected static final LOG_TAG:Ljava/lang/String; = "UiccCard"


# instance fields
.field protected mCardId:Ljava/lang/String;

.field private mCardState:Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;

.field private mCi:Lcom/android/internal/telephony/CommandsInterface;

.field private mContext:Landroid/content/Context;

.field private mIccid:Ljava/lang/String;

.field private final mLock:Ljava/lang/Object;

.field private final mPhoneId:I

.field private mUiccProfile:Lcom/android/internal/telephony/uicc/UiccProfile;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/internal/telephony/CommandsInterface;Lcom/android/internal/telephony/uicc/IccCardStatus;ILjava/lang/Object;)V
    .locals 1
    .param p1, "c"    # Landroid/content/Context;
    .param p2, "ci"    # Lcom/android/internal/telephony/CommandsInterface;
    .param p3, "ics"    # Lcom/android/internal/telephony/uicc/IccCardStatus;
    .param p4, "phoneId"    # I
    .param p5, "lock"    # Ljava/lang/Object;

    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 61
    const-string v0, "Creating"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/uicc/UiccCard;->log(Ljava/lang/String;)V

    .line 62
    iget-object v0, p3, Lcom/android/internal/telephony/uicc/IccCardStatus;->mCardState:Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;

    iput-object v0, p0, Lcom/android/internal/telephony/uicc/UiccCard;->mCardState:Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;

    .line 63
    iput p4, p0, Lcom/android/internal/telephony/uicc/UiccCard;->mPhoneId:I

    .line 64
    iput-object p5, p0, Lcom/android/internal/telephony/uicc/UiccCard;->mLock:Ljava/lang/Object;

    .line 65
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/internal/telephony/uicc/UiccCard;->update(Landroid/content/Context;Lcom/android/internal/telephony/CommandsInterface;Lcom/android/internal/telephony/uicc/IccCardStatus;)V

    .line 66
    return-void
.end method

.method private log(Ljava/lang/String;)V
    .locals 1
    .param p1, "msg"    # Ljava/lang/String;

    .line 501
    const-string v0, "UiccCard"

    invoke-static {v0, p1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 502
    return-void
.end method

.method private loge(Ljava/lang/String;)V
    .locals 1
    .param p1, "msg"    # Ljava/lang/String;

    .line 505
    const-string v0, "UiccCard"

    invoke-static {v0, p1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 506
    return-void
.end method


# virtual methods
.method public areCarrierPriviligeRulesLoaded()Z
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 362
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/UiccCard;->mUiccProfile:Lcom/android/internal/telephony/uicc/UiccProfile;

    if-eqz v0, :cond_0

    .line 363
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/UiccCard;->mUiccProfile:Lcom/android/internal/telephony/uicc/UiccProfile;

    invoke-virtual {v0}, Lcom/android/internal/telephony/uicc/UiccProfile;->areCarrierPriviligeRulesLoaded()Z

    move-result v0

    return v0

    .line 365
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public dispose()V
    .locals 2

    .line 69
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/UiccCard;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 70
    :try_start_0
    const-string v1, "Disposing card"

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/uicc/UiccCard;->log(Ljava/lang/String;)V

    .line 71
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/UiccCard;->mUiccProfile:Lcom/android/internal/telephony/uicc/UiccProfile;

    if-eqz v1, :cond_0

    .line 72
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/UiccCard;->mUiccProfile:Lcom/android/internal/telephony/uicc/UiccProfile;

    invoke-virtual {v1}, Lcom/android/internal/telephony/uicc/UiccProfile;->dispose()V

    .line 74
    :cond_0
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/internal/telephony/uicc/UiccCard;->mUiccProfile:Lcom/android/internal/telephony/uicc/UiccProfile;

    .line 75
    monitor-exit v0

    .line 76
    return-void

    .line 75
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 2
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    .line 509
    const-string v0, "UiccCard:"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 510
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " mCi="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/internal/telephony/uicc/UiccCard;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 511
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " mCardState="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/internal/telephony/uicc/UiccCard;->mCardState:Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 512
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    .line 513
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/UiccCard;->mUiccProfile:Lcom/android/internal/telephony/uicc/UiccProfile;

    if-eqz v0, :cond_0

    .line 514
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/UiccCard;->mUiccProfile:Lcom/android/internal/telephony/uicc/UiccProfile;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/internal/telephony/uicc/UiccProfile;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 516
    :cond_0
    return-void
.end method

.method protected finalize()V
    .locals 1

    .line 101
    const-string v0, "UiccCard finalized"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/uicc/UiccCard;->log(Ljava/lang/String;)V

    .line 102
    return-void
.end method

.method public getApplication(I)Lcom/android/internal/telephony/uicc/UiccCardApplication;
    .locals 2
    .param p1, "family"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 186
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/UiccCard;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 187
    :try_start_0
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/UiccCard;->mUiccProfile:Lcom/android/internal/telephony/uicc/UiccProfile;

    if-eqz v1, :cond_0

    .line 188
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/UiccCard;->mUiccProfile:Lcom/android/internal/telephony/uicc/UiccProfile;

    invoke-virtual {v1, p1}, Lcom/android/internal/telephony/uicc/UiccProfile;->getApplication(I)Lcom/android/internal/telephony/uicc/UiccCardApplication;

    move-result-object v1

    monitor-exit v0

    return-object v1

    .line 190
    :cond_0
    const/4 v1, 0x0

    monitor-exit v0

    return-object v1

    .line 192
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getApplicationByType(I)Lcom/android/internal/telephony/uicc/UiccCardApplication;
    .locals 2
    .param p1, "type"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 219
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/UiccCard;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 220
    :try_start_0
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/UiccCard;->mUiccProfile:Lcom/android/internal/telephony/uicc/UiccProfile;

    if-eqz v1, :cond_0

    .line 221
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/UiccCard;->mUiccProfile:Lcom/android/internal/telephony/uicc/UiccProfile;

    invoke-virtual {v1, p1}, Lcom/android/internal/telephony/uicc/UiccProfile;->getApplicationByType(I)Lcom/android/internal/telephony/uicc/UiccCardApplication;

    move-result-object v1

    monitor-exit v0

    return-object v1

    .line 223
    :cond_0
    const/4 v1, 0x0

    monitor-exit v0

    return-object v1

    .line 225
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getApplicationIndex(I)Lcom/android/internal/telephony/uicc/UiccCardApplication;
    .locals 2
    .param p1, "index"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 200
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/UiccCard;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 201
    :try_start_0
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/UiccCard;->mUiccProfile:Lcom/android/internal/telephony/uicc/UiccProfile;

    if-eqz v1, :cond_0

    .line 202
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/UiccCard;->mUiccProfile:Lcom/android/internal/telephony/uicc/UiccProfile;

    invoke-virtual {v1, p1}, Lcom/android/internal/telephony/uicc/UiccProfile;->getApplicationIndex(I)Lcom/android/internal/telephony/uicc/UiccCardApplication;

    move-result-object v1

    monitor-exit v0

    return-object v1

    .line 204
    :cond_0
    const/4 v1, 0x0

    monitor-exit v0

    return-object v1

    .line 206
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getCardId()Ljava/lang/String;
    .locals 1

    .line 491
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/UiccCard;->mCardId:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 492
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/UiccCard;->mCardId:Ljava/lang/String;

    return-object v0

    .line 493
    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/UiccCard;->mUiccProfile:Lcom/android/internal/telephony/uicc/UiccProfile;

    if-eqz v0, :cond_1

    .line 494
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/UiccCard;->mUiccProfile:Lcom/android/internal/telephony/uicc/UiccProfile;

    invoke-virtual {v0}, Lcom/android/internal/telephony/uicc/UiccProfile;->getIccId()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 496
    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method public getCardState()Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;
    .locals 2

    .line 162
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/UiccCard;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 163
    :try_start_0
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/UiccCard;->mCardState:Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;

    monitor-exit v0

    return-object v1

    .line 164
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getCarrierPackageNamesForIntent(Landroid/content/pm/PackageManager;Landroid/content/Intent;)Ljava/util/List;
    .locals 1
    .param p1, "packageManager"    # Landroid/content/pm/PackageManager;
    .param p2, "intent"    # Landroid/content/Intent;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/pm/PackageManager;",
            "Landroid/content/Intent;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 445
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/UiccCard;->mUiccProfile:Lcom/android/internal/telephony/uicc/UiccProfile;

    if-eqz v0, :cond_0

    .line 446
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/UiccCard;->mUiccProfile:Lcom/android/internal/telephony/uicc/UiccProfile;

    invoke-virtual {v0, p1, p2}, Lcom/android/internal/telephony/uicc/UiccProfile;->getCarrierPackageNamesForIntent(Landroid/content/pm/PackageManager;Landroid/content/Intent;)Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 448
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getCarrierPrivilegeStatus(Landroid/content/pm/PackageInfo;)I
    .locals 1
    .param p1, "packageInfo"    # Landroid/content/pm/PackageInfo;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 416
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/UiccCard;->mUiccProfile:Lcom/android/internal/telephony/uicc/UiccProfile;

    if-eqz v0, :cond_0

    .line 417
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/UiccCard;->mUiccProfile:Lcom/android/internal/telephony/uicc/UiccProfile;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/uicc/UiccProfile;->getCarrierPrivilegeStatus(Landroid/content/pm/PackageInfo;)I

    move-result v0

    return v0

    .line 419
    :cond_0
    const/4 v0, -0x1

    return v0
.end method

.method public getCarrierPrivilegeStatus(Landroid/content/pm/PackageManager;Ljava/lang/String;)I
    .locals 1
    .param p1, "packageManager"    # Landroid/content/pm/PackageManager;
    .param p2, "packageName"    # Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 403
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/UiccCard;->mUiccProfile:Lcom/android/internal/telephony/uicc/UiccProfile;

    if-eqz v0, :cond_0

    .line 404
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/UiccCard;->mUiccProfile:Lcom/android/internal/telephony/uicc/UiccProfile;

    invoke-virtual {v0, p1, p2}, Lcom/android/internal/telephony/uicc/UiccProfile;->getCarrierPrivilegeStatus(Landroid/content/pm/PackageManager;Ljava/lang/String;)I

    move-result v0

    return v0

    .line 406
    :cond_0
    const/4 v0, -0x1

    return v0
.end method

.method public getCarrierPrivilegeStatus(Landroid/content/pm/Signature;Ljava/lang/String;)I
    .locals 1
    .param p1, "signature"    # Landroid/content/pm/Signature;
    .param p2, "packageName"    # Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 389
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/UiccCard;->mUiccProfile:Lcom/android/internal/telephony/uicc/UiccProfile;

    if-eqz v0, :cond_0

    .line 390
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/UiccCard;->mUiccProfile:Lcom/android/internal/telephony/uicc/UiccProfile;

    invoke-virtual {v0, p1, p2}, Lcom/android/internal/telephony/uicc/UiccProfile;->getCarrierPrivilegeStatus(Landroid/content/pm/Signature;Ljava/lang/String;)I

    move-result v0

    return v0

    .line 392
    :cond_0
    const/4 v0, -0x1

    return v0
.end method

.method public getCarrierPrivilegeStatusForCurrentTransaction(Landroid/content/pm/PackageManager;)I
    .locals 1
    .param p1, "packageManager"    # Landroid/content/pm/PackageManager;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 430
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/UiccCard;->mUiccProfile:Lcom/android/internal/telephony/uicc/UiccProfile;

    if-eqz v0, :cond_0

    .line 431
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/UiccCard;->mUiccProfile:Lcom/android/internal/telephony/uicc/UiccProfile;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/uicc/UiccProfile;->getCarrierPrivilegeStatusForCurrentTransaction(Landroid/content/pm/PackageManager;)I

    move-result v0

    return v0

    .line 433
    :cond_0
    const/4 v0, -0x1

    return v0
.end method

.method public getIccId()Ljava/lang/String;
    .locals 1

    .line 477
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/UiccCard;->mIccid:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 478
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/UiccCard;->mIccid:Ljava/lang/String;

    return-object v0

    .line 479
    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/UiccCard;->mUiccProfile:Lcom/android/internal/telephony/uicc/UiccProfile;

    if-eqz v0, :cond_1

    .line 480
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/UiccCard;->mUiccProfile:Lcom/android/internal/telephony/uicc/UiccProfile;

    invoke-virtual {v0}, Lcom/android/internal/telephony/uicc/UiccProfile;->getIccId()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 482
    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method public getNumApplications()I
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 341
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/UiccCard;->mUiccProfile:Lcom/android/internal/telephony/uicc/UiccProfile;

    if-eqz v0, :cond_0

    .line 342
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/UiccCard;->mUiccProfile:Lcom/android/internal/telephony/uicc/UiccProfile;

    invoke-virtual {v0}, Lcom/android/internal/telephony/uicc/UiccProfile;->getNumApplications()I

    move-result v0

    return v0

    .line 344
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public getOperatorBrandOverride()Ljava/lang/String;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 469
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/UiccCard;->mUiccProfile:Lcom/android/internal/telephony/uicc/UiccProfile;

    if-eqz v0, :cond_0

    .line 470
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/UiccCard;->mUiccProfile:Lcom/android/internal/telephony/uicc/UiccProfile;

    invoke-virtual {v0}, Lcom/android/internal/telephony/uicc/UiccProfile;->getOperatorBrandOverride()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 472
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getPhoneId()I
    .locals 1

    .line 349
    iget v0, p0, Lcom/android/internal/telephony/uicc/UiccCard;->mPhoneId:I

    return v0
.end method

.method public getUiccProfile()Lcom/android/internal/telephony/uicc/UiccProfile;
    .locals 1

    .line 353
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/UiccCard;->mUiccProfile:Lcom/android/internal/telephony/uicc/UiccProfile;

    return-object v0
.end method

.method public getUniversalPinState()Lcom/android/internal/telephony/uicc/IccCardStatus$PinState;
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 172
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/UiccCard;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 173
    :try_start_0
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/UiccCard;->mUiccProfile:Lcom/android/internal/telephony/uicc/UiccProfile;

    if-eqz v1, :cond_0

    .line 174
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/UiccCard;->mUiccProfile:Lcom/android/internal/telephony/uicc/UiccProfile;

    invoke-virtual {v1}, Lcom/android/internal/telephony/uicc/UiccProfile;->getUniversalPinState()Lcom/android/internal/telephony/uicc/IccCardStatus$PinState;

    move-result-object v1

    monitor-exit v0

    return-object v1

    .line 176
    :cond_0
    sget-object v1, Lcom/android/internal/telephony/uicc/IccCardStatus$PinState;->PINSTATE_UNKNOWN:Lcom/android/internal/telephony/uicc/IccCardStatus$PinState;

    monitor-exit v0

    return-object v1

    .line 178
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public hasCarrierPrivilegeRules()Z
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 375
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/UiccCard;->mUiccProfile:Lcom/android/internal/telephony/uicc/UiccProfile;

    if-eqz v0, :cond_0

    .line 376
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/UiccCard;->mUiccProfile:Lcom/android/internal/telephony/uicc/UiccProfile;

    invoke-virtual {v0}, Lcom/android/internal/telephony/uicc/UiccProfile;->hasCarrierPrivilegeRules()Z

    move-result v0

    return v0

    .line 378
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public iccCloseLogicalChannel(ILandroid/os/Message;)V
    .locals 1
    .param p1, "channel"    # I
    .param p2, "response"    # Landroid/os/Message;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 267
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/UiccCard;->mUiccProfile:Lcom/android/internal/telephony/uicc/UiccProfile;

    if-eqz v0, :cond_0

    .line 268
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/UiccCard;->mUiccProfile:Lcom/android/internal/telephony/uicc/UiccProfile;

    invoke-virtual {v0, p1, p2}, Lcom/android/internal/telephony/uicc/UiccProfile;->iccCloseLogicalChannel(ILandroid/os/Message;)V

    goto :goto_0

    .line 270
    :cond_0
    const-string v0, "iccCloseLogicalChannel Failed!"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/uicc/UiccCard;->loge(Ljava/lang/String;)V

    .line 272
    :goto_0
    return-void
.end method

.method public iccExchangeSimIO(IIIIILjava/lang/String;Landroid/os/Message;)V
    .locals 10
    .param p1, "fileID"    # I
    .param p2, "command"    # I
    .param p3, "p1"    # I
    .param p4, "p2"    # I
    .param p5, "p3"    # I
    .param p6, "pathID"    # Ljava/lang/String;
    .param p7, "response"    # Landroid/os/Message;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    move-object v0, p0

    .line 315
    iget-object v1, v0, Lcom/android/internal/telephony/uicc/UiccCard;->mUiccProfile:Lcom/android/internal/telephony/uicc/UiccProfile;

    if-eqz v1, :cond_0

    .line 316
    iget-object v2, v0, Lcom/android/internal/telephony/uicc/UiccCard;->mUiccProfile:Lcom/android/internal/telephony/uicc/UiccProfile;

    move v3, p1

    move v4, p2

    move v5, p3

    move v6, p4

    move v7, p5

    move-object/from16 v8, p6

    move-object/from16 v9, p7

    invoke-virtual/range {v2 .. v9}, Lcom/android/internal/telephony/uicc/UiccProfile;->iccExchangeSimIO(IIIIILjava/lang/String;Landroid/os/Message;)V

    goto :goto_0

    .line 318
    :cond_0
    const-string v1, "iccExchangeSimIO Failed!"

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/uicc/UiccCard;->loge(Ljava/lang/String;)V

    .line 320
    :goto_0
    return-void
.end method

.method public iccOpenLogicalChannel(Ljava/lang/String;ILandroid/os/Message;)V
    .locals 1
    .param p1, "AID"    # Ljava/lang/String;
    .param p2, "p2"    # I
    .param p3, "response"    # Landroid/os/Message;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 253
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/UiccCard;->mUiccProfile:Lcom/android/internal/telephony/uicc/UiccProfile;

    if-eqz v0, :cond_0

    .line 254
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/UiccCard;->mUiccProfile:Lcom/android/internal/telephony/uicc/UiccProfile;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/internal/telephony/uicc/UiccProfile;->iccOpenLogicalChannel(Ljava/lang/String;ILandroid/os/Message;)V

    goto :goto_0

    .line 256
    :cond_0
    const-string v0, "iccOpenLogicalChannel Failed!"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/uicc/UiccCard;->loge(Ljava/lang/String;)V

    .line 258
    :goto_0
    return-void
.end method

.method public iccTransmitApduBasicChannel(IIIIILjava/lang/String;Landroid/os/Message;)V
    .locals 10
    .param p1, "cla"    # I
    .param p2, "command"    # I
    .param p3, "p1"    # I
    .param p4, "p2"    # I
    .param p5, "p3"    # I
    .param p6, "data"    # Ljava/lang/String;
    .param p7, "response"    # Landroid/os/Message;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    move-object v0, p0

    .line 300
    iget-object v1, v0, Lcom/android/internal/telephony/uicc/UiccCard;->mUiccProfile:Lcom/android/internal/telephony/uicc/UiccProfile;

    if-eqz v1, :cond_0

    .line 301
    iget-object v2, v0, Lcom/android/internal/telephony/uicc/UiccCard;->mUiccProfile:Lcom/android/internal/telephony/uicc/UiccProfile;

    move v3, p1

    move v4, p2

    move v5, p3

    move v6, p4

    move v7, p5

    move-object/from16 v8, p6

    move-object/from16 v9, p7

    invoke-virtual/range {v2 .. v9}, Lcom/android/internal/telephony/uicc/UiccProfile;->iccTransmitApduBasicChannel(IIIIILjava/lang/String;Landroid/os/Message;)V

    goto :goto_0

    .line 303
    :cond_0
    const-string v1, "iccTransmitApduBasicChannel Failed!"

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/uicc/UiccCard;->loge(Ljava/lang/String;)V

    .line 305
    :goto_0
    return-void
.end method

.method public iccTransmitApduLogicalChannel(IIIIIILjava/lang/String;Landroid/os/Message;)V
    .locals 11
    .param p1, "channel"    # I
    .param p2, "cla"    # I
    .param p3, "command"    # I
    .param p4, "p1"    # I
    .param p5, "p2"    # I
    .param p6, "p3"    # I
    .param p7, "data"    # Ljava/lang/String;
    .param p8, "response"    # Landroid/os/Message;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    move-object v0, p0

    .line 283
    iget-object v1, v0, Lcom/android/internal/telephony/uicc/UiccCard;->mUiccProfile:Lcom/android/internal/telephony/uicc/UiccProfile;

    if-eqz v1, :cond_0

    .line 284
    iget-object v2, v0, Lcom/android/internal/telephony/uicc/UiccCard;->mUiccProfile:Lcom/android/internal/telephony/uicc/UiccProfile;

    move v3, p1

    move v4, p2

    move v5, p3

    move v6, p4

    move/from16 v7, p5

    move/from16 v8, p6

    move-object/from16 v9, p7

    move-object/from16 v10, p8

    invoke-virtual/range {v2 .. v10}, Lcom/android/internal/telephony/uicc/UiccProfile;->iccTransmitApduLogicalChannel(IIIIIILjava/lang/String;Landroid/os/Message;)V

    goto :goto_0

    .line 287
    :cond_0
    const-string v1, "iccTransmitApduLogicalChannel Failed!"

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/uicc/UiccCard;->loge(Ljava/lang/String;)V

    .line 289
    :goto_0
    return-void
.end method

.method public isApplicationOnIcc(Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;)Z
    .locals 2
    .param p1, "type"    # Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 152
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/UiccCard;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 153
    :try_start_0
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/UiccCard;->mUiccProfile:Lcom/android/internal/telephony/uicc/UiccProfile;

    if-eqz v1, :cond_0

    .line 154
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/UiccCard;->mUiccProfile:Lcom/android/internal/telephony/uicc/UiccProfile;

    invoke-virtual {v1, p1}, Lcom/android/internal/telephony/uicc/UiccProfile;->isApplicationOnIcc(Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;)Z

    move-result v1

    monitor-exit v0

    return v1

    .line 156
    :cond_0
    const/4 v1, 0x0

    monitor-exit v0

    return v1

    .line 158
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public registerForCarrierPrivilegeRulesLoaded(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 2
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 123
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/UiccCard;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 124
    :try_start_0
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/UiccCard;->mUiccProfile:Lcom/android/internal/telephony/uicc/UiccProfile;

    if-eqz v1, :cond_0

    .line 125
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/UiccCard;->mUiccProfile:Lcom/android/internal/telephony/uicc/UiccProfile;

    invoke-virtual {v1, p1, p2, p3}, Lcom/android/internal/telephony/uicc/UiccProfile;->registerForCarrierPrivilegeRulesLoaded(Landroid/os/Handler;ILjava/lang/Object;)V

    goto :goto_0

    .line 127
    :cond_0
    const-string v1, "registerForCarrierPrivilegeRulesLoaded Failed!"

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/uicc/UiccCard;->loge(Ljava/lang/String;)V

    .line 129
    :goto_0
    monitor-exit v0

    .line 130
    return-void

    .line 129
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public resetAppWithAid(Ljava/lang/String;Z)Z
    .locals 2
    .param p1, "aid"    # Ljava/lang/String;
    .param p2, "disposeCatService"    # Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 237
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/UiccCard;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 238
    :try_start_0
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/UiccCard;->mUiccProfile:Lcom/android/internal/telephony/uicc/UiccProfile;

    if-eqz v1, :cond_0

    .line 239
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/UiccCard;->mUiccProfile:Lcom/android/internal/telephony/uicc/UiccProfile;

    invoke-virtual {v1, p1, p2}, Lcom/android/internal/telephony/uicc/UiccProfile;->resetAppWithAid(Ljava/lang/String;Z)Z

    move-result v1

    monitor-exit v0

    return v1

    .line 241
    :cond_0
    const/4 v1, 0x0

    monitor-exit v0

    return v1

    .line 243
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public sendEnvelopeWithStatus(Ljava/lang/String;Landroid/os/Message;)V
    .locals 1
    .param p1, "contents"    # Ljava/lang/String;
    .param p2, "response"    # Landroid/os/Message;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 328
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/UiccCard;->mUiccProfile:Lcom/android/internal/telephony/uicc/UiccProfile;

    if-eqz v0, :cond_0

    .line 329
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/UiccCard;->mUiccProfile:Lcom/android/internal/telephony/uicc/UiccProfile;

    invoke-virtual {v0, p1, p2}, Lcom/android/internal/telephony/uicc/UiccProfile;->sendEnvelopeWithStatus(Ljava/lang/String;Landroid/os/Message;)V

    goto :goto_0

    .line 331
    :cond_0
    const-string v0, "sendEnvelopeWithStatus Failed!"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/uicc/UiccCard;->loge(Ljava/lang/String;)V

    .line 333
    :goto_0
    return-void
.end method

.method public setOperatorBrandOverride(Ljava/lang/String;)Z
    .locals 1
    .param p1, "brand"    # Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 457
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/UiccCard;->mUiccProfile:Lcom/android/internal/telephony/uicc/UiccProfile;

    if-eqz v0, :cond_0

    .line 458
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/UiccCard;->mUiccProfile:Lcom/android/internal/telephony/uicc/UiccProfile;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/uicc/UiccProfile;->setOperatorBrandOverride(Ljava/lang/String;)Z

    move-result v0

    return v0

    .line 460
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public unregisterForCarrierPrivilegeRulesLoaded(Landroid/os/Handler;)V
    .locals 2
    .param p1, "h"    # Landroid/os/Handler;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 138
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/UiccCard;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 139
    :try_start_0
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/UiccCard;->mUiccProfile:Lcom/android/internal/telephony/uicc/UiccProfile;

    if-eqz v1, :cond_0

    .line 140
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/UiccCard;->mUiccProfile:Lcom/android/internal/telephony/uicc/UiccProfile;

    invoke-virtual {v1, p1}, Lcom/android/internal/telephony/uicc/UiccProfile;->unregisterForCarrierPrivilegeRulesLoaded(Landroid/os/Handler;)V

    goto :goto_0

    .line 142
    :cond_0
    const-string v1, "unregisterForCarrierPrivilegeRulesLoaded Failed!"

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/uicc/UiccCard;->loge(Ljava/lang/String;)V

    .line 144
    :goto_0
    monitor-exit v0

    .line 145
    return-void

    .line 144
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public update(Landroid/content/Context;Lcom/android/internal/telephony/CommandsInterface;Lcom/android/internal/telephony/uicc/IccCardStatus;)V
    .locals 9
    .param p1, "c"    # Landroid/content/Context;
    .param p2, "ci"    # Lcom/android/internal/telephony/CommandsInterface;
    .param p3, "ics"    # Lcom/android/internal/telephony/uicc/IccCardStatus;

    .line 79
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/UiccCard;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 80
    :try_start_0
    iget-object v1, p3, Lcom/android/internal/telephony/uicc/IccCardStatus;->mCardState:Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;

    iput-object v1, p0, Lcom/android/internal/telephony/uicc/UiccCard;->mCardState:Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;

    .line 81
    iput-object p1, p0, Lcom/android/internal/telephony/uicc/UiccCard;->mContext:Landroid/content/Context;

    .line 82
    iput-object p2, p0, Lcom/android/internal/telephony/uicc/UiccCard;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    .line 83
    iget-object v1, p3, Lcom/android/internal/telephony/uicc/IccCardStatus;->iccid:Ljava/lang/String;

    iput-object v1, p0, Lcom/android/internal/telephony/uicc/UiccCard;->mIccid:Ljava/lang/String;

    .line 84
    invoke-virtual {p0}, Lcom/android/internal/telephony/uicc/UiccCard;->updateCardId()V

    .line 86
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/UiccCard;->mCardState:Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;

    sget-object v2, Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;->CARDSTATE_ABSENT:Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;

    if-eq v1, v2, :cond_1

    .line 87
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/UiccCard;->mUiccProfile:Lcom/android/internal/telephony/uicc/UiccProfile;

    if-nez v1, :cond_0

    .line 88
    invoke-static {}, Lcom/android/internal/telephony/TelephonyComponentFactory;->getInstance()Lcom/android/internal/telephony/TelephonyComponentFactory;

    move-result-object v2

    iget-object v3, p0, Lcom/android/internal/telephony/uicc/UiccCard;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/android/internal/telephony/uicc/UiccCard;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    iget v6, p0, Lcom/android/internal/telephony/uicc/UiccCard;->mPhoneId:I

    iget-object v8, p0, Lcom/android/internal/telephony/uicc/UiccCard;->mLock:Ljava/lang/Object;

    move-object v5, p3

    move-object v7, p0

    invoke-virtual/range {v2 .. v8}, Lcom/android/internal/telephony/TelephonyComponentFactory;->makeUiccProfile(Landroid/content/Context;Lcom/android/internal/telephony/CommandsInterface;Lcom/android/internal/telephony/uicc/IccCardStatus;ILcom/android/internal/telephony/uicc/UiccCard;Ljava/lang/Object;)Lcom/android/internal/telephony/uicc/UiccProfile;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/telephony/uicc/UiccCard;->mUiccProfile:Lcom/android/internal/telephony/uicc/UiccProfile;

    goto :goto_0

    .line 91
    :cond_0
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/UiccCard;->mUiccProfile:Lcom/android/internal/telephony/uicc/UiccProfile;

    iget-object v2, p0, Lcom/android/internal/telephony/uicc/UiccCard;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/internal/telephony/uicc/UiccCard;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-virtual {v1, v2, v3, p3}, Lcom/android/internal/telephony/uicc/UiccProfile;->update(Landroid/content/Context;Lcom/android/internal/telephony/CommandsInterface;Lcom/android/internal/telephony/uicc/IccCardStatus;)V

    .line 96
    :goto_0
    monitor-exit v0

    .line 97
    return-void

    .line 94
    :cond_1
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Card state is absent when updating!"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 96
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method protected updateCardId()V
    .locals 1

    .line 113
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/UiccCard;->mIccid:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/internal/telephony/uicc/UiccCard;->mCardId:Ljava/lang/String;

    .line 114
    return-void
.end method
