.class public Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules;
.super Landroid/os/Handler;
.source "UiccCarrierPrivilegeRules.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules$TLV;
    }
.end annotation


# static fields
.field private static final ARAD:I = 0x0

.field private static final ARAD_AID:Ljava/lang/String; = "A00000015144414300"

.field private static final ARAM:I = 0x1

.field private static final ARAM_AID:Ljava/lang/String; = "A00000015141434C00"

.field private static final CARRIER_PRIVILEGE_AID:Ljava/lang/String; = "FFFFFFFFFFFF"

.field private static final CLA:I = 0x80

.field private static final COMMAND:I = 0xca

.field private static final DATA:Ljava/lang/String; = ""

.field private static final DBG:Z = false

.field private static final EVENT_CLOSE_LOGICAL_CHANNEL_DONE:I = 0x3

.field private static final EVENT_OPEN_LOGICAL_CHANNEL_DONE:I = 0x1

.field private static final EVENT_PKCS15_READ_DONE:I = 0x4

.field private static final EVENT_TRANSMIT_LOGICAL_CHANNEL_DONE:I = 0x2

.field private static final LOG_TAG:Ljava/lang/String; = "UiccCarrierPrivilegeRules"

.field private static final MAX_RETRY:I = 0x1

.field private static final P1:I = 0xff

.field private static final P2:I = 0x40

.field private static final P2_EXTENDED_DATA:I = 0x60

.field private static final P3:I = 0x0

.field private static final RETRY_INTERVAL_MS:I = 0x2710

.field private static final STATE_ERROR:I = 0x2

.field private static final STATE_LOADED:I = 0x1

.field private static final STATE_LOADING:I = 0x0

.field private static final TAG_AID_REF_DO:Ljava/lang/String; = "4F"

.field private static final TAG_ALL_REF_AR_DO:Ljava/lang/String; = "FF40"

.field private static final TAG_AR_DO:Ljava/lang/String; = "E3"

.field private static final TAG_DEVICE_APP_ID_REF_DO:Ljava/lang/String; = "C1"

.field private static final TAG_PERM_AR_DO:Ljava/lang/String; = "DB"

.field private static final TAG_PKG_REF_DO:Ljava/lang/String; = "CA"

.field private static final TAG_REF_AR_DO:Ljava/lang/String; = "E2"

.field private static final TAG_REF_DO:Ljava/lang/String; = "E1"


# instance fields
.field private mAIDInUse:I

.field private mAccessRules:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/telephony/UiccAccessRule;",
            ">;"
        }
    .end annotation
.end field

.field private mChannelId:I

.field private mCheckedRules:Z

.field private mLoadedCallback:Landroid/os/Message;

.field private mRetryCount:I

.field private final mRetryRunnable:Ljava/lang/Runnable;

.field private mRules:Ljava/lang/String;

.field private mState:Ljava/util/concurrent/atomic/AtomicInteger;

.field private mStatusMessage:Ljava/lang/String;

.field private mUiccPkcs15:Lcom/android/internal/telephony/uicc/UiccPkcs15;

.field private mUiccProfile:Lcom/android/internal/telephony/uicc/UiccProfile;


# direct methods
.method public constructor <init>(Lcom/android/internal/telephony/uicc/UiccProfile;Landroid/os/Message;)V
    .locals 2
    .param p1, "uiccProfile"    # Lcom/android/internal/telephony/uicc/UiccProfile;
    .param p2, "loadedCallback"    # Landroid/os/Message;

    .line 208
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 191
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules;->mCheckedRules:Z

    .line 193
    new-instance v1, Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules$1;

    invoke-direct {v1, p0}, Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules$1;-><init>(Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules;)V

    iput-object v1, p0, Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules;->mRetryRunnable:Ljava/lang/Runnable;

    .line 209
    const-string v1, "Creating UiccCarrierPrivilegeRules"

    invoke-static {v1}, Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules;->log(Ljava/lang/String;)V

    .line 210
    iput-object p1, p0, Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules;->mUiccProfile:Lcom/android/internal/telephony/uicc/UiccProfile;

    .line 211
    new-instance v1, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v1, v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v1, p0, Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules;->mState:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 212
    const-string v1, "Not loaded."

    iput-object v1, p0, Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules;->mStatusMessage:Ljava/lang/String;

    .line 213
    iput-object p2, p0, Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules;->mLoadedCallback:Landroid/os/Message;

    .line 214
    const-string v1, ""

    iput-object v1, p0, Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules;->mRules:Ljava/lang/String;

    .line 215
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules;->mAccessRules:Ljava/util/List;

    .line 218
    iput v0, p0, Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules;->mAIDInUse:I

    .line 219
    iget v0, p0, Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules;->mAIDInUse:I

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules;->openChannel(I)V

    .line 220
    return-void
.end method

.method static synthetic access$000(Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Ljava/lang/String;

    .line 54
    invoke-static {p0}, Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules;->log(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$100(Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules;

    .line 54
    iget v0, p0, Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules;->mAIDInUse:I

    return v0
.end method

.method static synthetic access$200(Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules;
    .param p1, "x1"    # I

    .line 54
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules;->openChannel(I)V

    return-void
.end method

.method private getPackageName(Landroid/content/pm/ResolveInfo;)Ljava/lang/String;
    .locals 1
    .param p1, "resolveInfo"    # Landroid/content/pm/ResolveInfo;

    .line 412
    iget-object v0, p1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    if-eqz v0, :cond_0

    .line 413
    iget-object v0, p1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    return-object v0

    .line 414
    :cond_0
    iget-object v0, p1, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    if-eqz v0, :cond_1

    .line 415
    iget-object v0, p1, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v0, v0, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    return-object v0

    .line 416
    :cond_1
    iget-object v0, p1, Landroid/content/pm/ResolveInfo;->providerInfo:Landroid/content/pm/ProviderInfo;

    if-eqz v0, :cond_2

    .line 417
    iget-object v0, p1, Landroid/content/pm/ResolveInfo;->providerInfo:Landroid/content/pm/ProviderInfo;

    iget-object v0, v0, Landroid/content/pm/ProviderInfo;->packageName:Ljava/lang/String;

    return-object v0

    .line 419
    :cond_2
    const/4 v0, 0x0

    return-object v0
.end method

.method private getStateString(I)Ljava/lang/String;
    .locals 1
    .param p1, "state"    # I

    .line 705
    packed-switch p1, :pswitch_data_0

    .line 713
    const-string v0, "UNKNOWN"

    return-object v0

    .line 711
    :pswitch_0
    const-string v0, "STATE_ERROR"

    return-object v0

    .line 709
    :pswitch_1
    const-string v0, "STATE_LOADED"

    return-object v0

    .line 707
    :pswitch_2
    const-string v0, "STATE_LOADING"

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private isDataComplete()Z
    .locals 5

    .line 547
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "isDataComplete mRules:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules;->mRules:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules;->log(Ljava/lang/String;)V

    .line 548
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules;->mRules:Ljava/lang/String;

    const-string v1, "FF40"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 549
    new-instance v0, Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules$TLV;

    const-string v1, "FF40"

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules$TLV;-><init>(Ljava/lang/String;)V

    .line 550
    .local v0, "allRules":Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules$TLV;
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules;->mRules:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules$TLV;->parseLength(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 551
    .local v1, "lengthBytes":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isDataComplete lengthBytes: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules;->log(Ljava/lang/String;)V

    .line 552
    iget-object v2, p0, Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules;->mRules:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    const-string v3, "FF40"

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v4

    add-int/2addr v3, v4

    .line 553
    invoke-static {v0}, Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules$TLV;->access$300(Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules$TLV;)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    add-int/2addr v3, v4

    if-ne v2, v3, :cond_0

    .line 554
    const-string v2, "isDataComplete yes"

    invoke-static {v2}, Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules;->log(Ljava/lang/String;)V

    .line 555
    const/4 v2, 0x1

    return v2

    .line 557
    :cond_0
    const-string v2, "isDataComplete no"

    invoke-static {v2}, Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules;->log(Ljava/lang/String;)V

    .line 558
    const/4 v2, 0x0

    return v2

    .line 561
    .end local v0    # "allRules":Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules$TLV;
    .end local v1    # "lengthBytes":Ljava/lang/String;
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Tags don\'t match."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static log(Ljava/lang/String;)V
    .locals 0
    .param p0, "msg"    # Ljava/lang/String;

    .line 675
    return-void
.end method

.method private openChannel(I)V
    .locals 6
    .param p1, "aidId"    # I

    .line 202
    if-nez p1, :cond_0

    const-string v0, "A00000015144414300"

    goto :goto_0

    :cond_0
    const-string v0, "A00000015141434C00"

    .line 203
    .local v0, "aid":Ljava/lang/String;
    :goto_0
    const/4 v1, 0x0

    .line 204
    .local v1, "p2":I
    iget-object v2, p0, Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules;->mUiccProfile:Lcom/android/internal/telephony/uicc/UiccProfile;

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x0

    .line 205
    invoke-virtual {p0, v3, v4, p1, v5}, Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    .line 204
    invoke-virtual {v2, v0, v1, v3}, Lcom/android/internal/telephony/uicc/UiccProfile;->iccOpenLogicalChannel(Ljava/lang/String;ILandroid/os/Message;)V

    .line 206
    return-void
.end method

.method private static parseRefArdo(Ljava/lang/String;)Landroid/telephony/UiccAccessRule;
    .locals 14
    .param p0, "rule"    # Ljava/lang/String;

    .line 593
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Got rule: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules;->log(Ljava/lang/String;)V

    .line 595
    const/4 v0, 0x0

    .line 596
    .local v0, "certificateHash":Ljava/lang/String;
    const/4 v1, 0x0

    .line 597
    .local v1, "packageName":Ljava/lang/String;
    const/4 v2, 0x0

    .line 598
    .local v2, "tmp":Ljava/lang/String;
    const-wide/16 v3, 0x0

    .line 600
    .local v3, "accessType":J
    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_a

    .line 601
    const-string v5, "E1"

    invoke-virtual {p0, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    const/4 v6, 0x1

    const/4 v7, 0x0

    const/4 v8, 0x0

    if-eqz v5, :cond_6

    .line 602
    new-instance v5, Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules$TLV;

    const-string v9, "E1"

    invoke-direct {v5, v9}, Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules$TLV;-><init>(Ljava/lang/String;)V

    .line 603
    .local v5, "refDo":Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules$TLV;
    invoke-virtual {v5, p0, v8}, Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules$TLV;->parse(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object p0

    .line 609
    new-instance v9, Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules$TLV;

    const-string v10, "C1"

    invoke-direct {v9, v10}, Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules$TLV;-><init>(Ljava/lang/String;)V

    .line 610
    .local v9, "deviceDo":Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules$TLV;
    invoke-static {v5}, Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules$TLV;->access$400(Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules$TLV;)Ljava/lang/String;

    move-result-object v10

    const-string v11, "4F"

    invoke-virtual {v10, v11}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_2

    .line 611
    new-instance v10, Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules$TLV;

    const-string v11, "4F"

    invoke-direct {v10, v11}, Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules$TLV;-><init>(Ljava/lang/String;)V

    .line 612
    .local v10, "cpDo":Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules$TLV;
    invoke-static {v5}, Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules$TLV;->access$400(Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules$TLV;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11, v8}, Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules$TLV;->parse(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v11

    .line 613
    .local v11, "remain":Ljava/lang/String;
    invoke-static {v10}, Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules$TLV;->access$500(Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules$TLV;)Ljava/lang/String;

    move-result-object v12

    const-string v13, "06"

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_1

    invoke-static {v10}, Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules$TLV;->access$400(Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules$TLV;)Ljava/lang/String;

    move-result-object v12

    const-string v13, "FFFFFFFFFFFF"

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_1

    .line 614
    invoke-virtual {v11}, Ljava/lang/String;->isEmpty()Z

    move-result v12

    if-nez v12, :cond_1

    const-string v12, "C1"

    invoke-virtual {v11, v12}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v12

    if-nez v12, :cond_0

    goto :goto_1

    .line 617
    :cond_0
    invoke-virtual {v9, v11, v8}, Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules$TLV;->parse(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v2

    .line 618
    invoke-static {v9}, Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules$TLV;->access$400(Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules$TLV;)Ljava/lang/String;

    move-result-object v0

    .line 619
    .end local v10    # "cpDo":Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules$TLV;
    .end local v11    # "remain":Ljava/lang/String;
    goto :goto_2

    .line 615
    .restart local v10    # "cpDo":Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules$TLV;
    .restart local v11    # "remain":Ljava/lang/String;
    :cond_1
    :goto_1
    return-object v7

    .line 619
    .end local v10    # "cpDo":Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules$TLV;
    .end local v11    # "remain":Ljava/lang/String;
    :cond_2
    invoke-static {v5}, Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules$TLV;->access$400(Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules$TLV;)Ljava/lang/String;

    move-result-object v10

    const-string v11, "C1"

    invoke-virtual {v10, v11}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_5

    .line 620
    invoke-static {v5}, Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules$TLV;->access$400(Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules$TLV;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10, v8}, Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules$TLV;->parse(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v2

    .line 621
    invoke-static {v9}, Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules$TLV;->access$400(Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules$TLV;)Ljava/lang/String;

    move-result-object v0

    .line 625
    :goto_2
    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v8

    if-nez v8, :cond_4

    .line 626
    const-string v8, "CA"

    invoke-virtual {v2, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_3

    .line 627
    return-object v7

    .line 629
    :cond_3
    new-instance v7, Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules$TLV;

    const-string v8, "CA"

    invoke-direct {v7, v8}, Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules$TLV;-><init>(Ljava/lang/String;)V

    .line 630
    .local v7, "pkgDo":Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules$TLV;
    invoke-virtual {v7, v2, v6}, Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules$TLV;->parse(Ljava/lang/String;Z)Ljava/lang/String;

    .line 631
    new-instance v6, Ljava/lang/String;

    invoke-static {v7}, Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules$TLV;->access$400(Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules$TLV;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/android/internal/telephony/uicc/IccUtils;->hexStringToBytes(Ljava/lang/String;)[B

    move-result-object v8

    invoke-direct {v6, v8}, Ljava/lang/String;-><init>([B)V

    move-object v1, v6

    .line 632
    .end local v7    # "pkgDo":Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules$TLV;
    goto :goto_3

    .line 633
    :cond_4
    const/4 v1, 0x0

    .line 635
    .end local v5    # "refDo":Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules$TLV;
    .end local v9    # "deviceDo":Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules$TLV;
    :goto_3
    goto/16 :goto_0

    .line 623
    .restart local v5    # "refDo":Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules$TLV;
    .restart local v9    # "deviceDo":Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules$TLV;
    :cond_5
    return-object v7

    .line 635
    .end local v5    # "refDo":Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules$TLV;
    .end local v9    # "deviceDo":Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules$TLV;
    :cond_6
    const-string v5, "E3"

    invoke-virtual {p0, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_9

    .line 636
    new-instance v5, Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules$TLV;

    const-string v9, "E3"

    invoke-direct {v5, v9}, Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules$TLV;-><init>(Ljava/lang/String;)V

    .line 637
    .local v5, "arDo":Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules$TLV;
    invoke-virtual {v5, p0, v8}, Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules$TLV;->parse(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object p0

    .line 640
    invoke-static {v5}, Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules$TLV;->access$400(Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules$TLV;)Ljava/lang/String;

    move-result-object v9

    .line 641
    .local v9, "remain":Ljava/lang/String;
    :goto_4
    invoke-virtual {v9}, Ljava/lang/String;->isEmpty()Z

    move-result v10

    if-nez v10, :cond_7

    const-string v10, "DB"

    invoke-virtual {v9, v10}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v10

    if-nez v10, :cond_7

    .line 642
    new-instance v10, Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules$TLV;

    const/4 v11, 0x2

    invoke-virtual {v9, v8, v11}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules$TLV;-><init>(Ljava/lang/String;)V

    .line 643
    .local v10, "tmpDo":Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules$TLV;
    invoke-virtual {v10, v9, v8}, Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules$TLV;->parse(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v9

    .line 644
    .end local v10    # "tmpDo":Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules$TLV;
    goto :goto_4

    .line 645
    :cond_7
    invoke-virtual {v9}, Ljava/lang/String;->isEmpty()Z

    move-result v8

    if-eqz v8, :cond_8

    .line 646
    return-object v7

    .line 648
    :cond_8
    new-instance v7, Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules$TLV;

    const-string v8, "DB"

    invoke-direct {v7, v8}, Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules$TLV;-><init>(Ljava/lang/String;)V

    .line 649
    .local v7, "permDo":Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules$TLV;
    invoke-virtual {v7, v9, v6}, Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules$TLV;->parse(Ljava/lang/String;Z)Ljava/lang/String;

    .line 650
    .end local v5    # "arDo":Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules$TLV;
    .end local v7    # "permDo":Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules$TLV;
    .end local v9    # "remain":Ljava/lang/String;
    goto/16 :goto_0

    .line 652
    :cond_9
    new-instance v5, Ljava/lang/RuntimeException;

    const-string v6, "Invalid Rule type"

    invoke-direct {v5, v6}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 656
    :cond_a
    new-instance v5, Landroid/telephony/UiccAccessRule;

    .line 657
    invoke-static {v0}, Lcom/android/internal/telephony/uicc/IccUtils;->hexStringToBytes(Ljava/lang/String;)[B

    move-result-object v6

    invoke-direct {v5, v6, v1, v3, v4}, Landroid/telephony/UiccAccessRule;-><init>([BLjava/lang/String;J)V

    .line 658
    .local v5, "accessRule":Landroid/telephony/UiccAccessRule;
    return-object v5
.end method

.method private static parseRules(Ljava/lang/String;)Ljava/util/List;
    .locals 8
    .param p0, "rules"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Landroid/telephony/UiccAccessRule;",
            ">;"
        }
    .end annotation

    .line 569
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Got rules: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules;->log(Ljava/lang/String;)V

    .line 571
    new-instance v0, Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules$TLV;

    const-string v1, "FF40"

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules$TLV;-><init>(Ljava/lang/String;)V

    .line 572
    .local v0, "allRefArDo":Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules$TLV;
    const/4 v1, 0x1

    invoke-virtual {v0, p0, v1}, Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules$TLV;->parse(Ljava/lang/String;Z)Ljava/lang/String;

    .line 574
    invoke-static {v0}, Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules$TLV;->access$400(Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules$TLV;)Ljava/lang/String;

    move-result-object v1

    .line 575
    .local v1, "arDos":Ljava/lang/String;
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 576
    .local v2, "accessRules":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/UiccAccessRule;>;"
    :goto_0
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_1

    .line 577
    new-instance v3, Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules$TLV;

    const-string v4, "E2"

    invoke-direct {v3, v4}, Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules$TLV;-><init>(Ljava/lang/String;)V

    .line 578
    .local v3, "refArDo":Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules$TLV;
    const/4 v4, 0x0

    invoke-virtual {v3, v1, v4}, Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules$TLV;->parse(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v1

    .line 579
    invoke-static {v3}, Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules$TLV;->access$400(Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules$TLV;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules;->parseRefArdo(Ljava/lang/String;)Landroid/telephony/UiccAccessRule;

    move-result-object v4

    .line 580
    .local v4, "accessRule":Landroid/telephony/UiccAccessRule;
    if-eqz v4, :cond_0

    .line 581
    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 583
    :cond_0
    const-string v5, "UiccCarrierPrivilegeRules"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Skip unrecognized rule."

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v3}, Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules$TLV;->access$400(Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules$TLV;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 585
    .end local v3    # "refArDo":Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules$TLV;
    .end local v4    # "accessRule":Landroid/telephony/UiccAccessRule;
    :goto_1
    goto :goto_0

    .line 586
    :cond_1
    return-object v2
.end method

.method private updateState(ILjava/lang/String;)V
    .locals 1
    .param p1, "newState"    # I
    .param p2, "statusMessage"    # Ljava/lang/String;

    .line 665
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules;->mState:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 666
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules;->mLoadedCallback:Landroid/os/Message;

    if-eqz v0, :cond_0

    .line 667
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules;->mLoadedCallback:Landroid/os/Message;

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 670
    :cond_0
    iput-object p2, p0, Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules;->mStatusMessage:Ljava/lang/String;

    .line 671
    return-void
.end method


# virtual methods
.method public areCarrierPriviligeRulesLoaded()Z
    .locals 1

    .line 226
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules;->mState:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 4
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    .line 681
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "UiccCarrierPrivilegeRules: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 682
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " mState="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules;->mState:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules;->getStateString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 683
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " mStatusMessage=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules;->mStatusMessage:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 684
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules;->mAccessRules:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 685
    const-string v0, " mAccessRules: "

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 686
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules;->mAccessRules:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/UiccAccessRule;

    .line 687
    .local v1, "ar":Landroid/telephony/UiccAccessRule;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "  rule=\'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, "\'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 688
    .end local v1    # "ar":Landroid/telephony/UiccAccessRule;
    goto :goto_0

    .line 690
    :cond_0
    const-string v0, " mAccessRules: null"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 692
    :cond_1
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules;->mUiccPkcs15:Lcom/android/internal/telephony/uicc/UiccPkcs15;

    if-eqz v0, :cond_2

    .line 693
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " mUiccPkcs15: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules;->mUiccPkcs15:Lcom/android/internal/telephony/uicc/UiccPkcs15;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 694
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules;->mUiccPkcs15:Lcom/android/internal/telephony/uicc/UiccPkcs15;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/internal/telephony/uicc/UiccPkcs15;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    goto :goto_1

    .line 696
    :cond_2
    const-string v0, " mUiccPkcs15: null"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 698
    :goto_1
    invoke-virtual {p2}, Ljava/io/PrintWriter;->flush()V

    .line 699
    return-void
.end method

.method public getAccessRules()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/telephony/UiccAccessRule;",
            ">;"
        }
    .end annotation

    .line 257
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules;->mAccessRules:Ljava/util/List;

    if-nez v0, :cond_0

    .line 258
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 260
    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules;->mAccessRules:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getCarrierPackageNamesForIntent(Landroid/content/pm/PackageManager;Landroid/content/Intent;)Ljava/util/List;
    .locals 7
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

    .line 385
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 386
    .local v0, "packages":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 387
    .local v1, "receivers":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    const/4 v2, 0x0

    invoke-virtual {p1, p2, v2}, Landroid/content/pm/PackageManager;->queryBroadcastReceivers(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 388
    invoke-virtual {p1, p2, v2}, Landroid/content/pm/PackageManager;->queryIntentContentProviders(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 389
    invoke-virtual {p1, p2, v2}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 390
    invoke-virtual {p1, p2, v2}, Landroid/content/pm/PackageManager;->queryIntentServices(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 392
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/ResolveInfo;

    .line 393
    .local v3, "resolveInfo":Landroid/content/pm/ResolveInfo;
    invoke-direct {p0, v3}, Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules;->getPackageName(Landroid/content/pm/ResolveInfo;)Ljava/lang/String;

    move-result-object v4

    .line 394
    .local v4, "packageName":Ljava/lang/String;
    if-nez v4, :cond_0

    .line 395
    goto :goto_0

    .line 398
    :cond_0
    invoke-virtual {p0, p1, v4}, Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules;->getCarrierPrivilegeStatus(Landroid/content/pm/PackageManager;Ljava/lang/String;)I

    move-result v5

    .line 399
    .local v5, "status":I
    const/4 v6, 0x1

    if-ne v5, v6, :cond_1

    .line 400
    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 401
    :cond_1
    if-eqz v5, :cond_2

    .line 403
    const/4 v2, 0x0

    return-object v2

    .line 405
    .end local v3    # "resolveInfo":Landroid/content/pm/ResolveInfo;
    .end local v4    # "packageName":Ljava/lang/String;
    .end local v5    # "status":I
    :cond_2
    :goto_1
    goto :goto_0

    .line 407
    :cond_3
    return-object v0
.end method

.method public getCarrierPrivilegeStatus(Landroid/content/pm/PackageInfo;)I
    .locals 4
    .param p1, "packageInfo"    # Landroid/content/pm/PackageInfo;

    .line 329
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules;->mState:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    .line 330
    .local v0, "state":I
    if-nez v0, :cond_0

    .line 331
    const/4 v1, -0x1

    return v1

    .line 332
    :cond_0
    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 333
    const/4 v1, -0x2

    return v1

    .line 336
    :cond_1
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules;->mAccessRules:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/UiccAccessRule;

    .line 337
    .local v2, "ar":Landroid/telephony/UiccAccessRule;
    invoke-virtual {v2, p1}, Landroid/telephony/UiccAccessRule;->getCarrierPrivilegeStatus(Landroid/content/pm/PackageInfo;)I

    move-result v3

    .line 338
    .local v3, "accessStatus":I
    if-eqz v3, :cond_2

    .line 339
    return v3

    .line 341
    .end local v2    # "ar":Landroid/telephony/UiccAccessRule;
    .end local v3    # "accessStatus":I
    :cond_2
    goto :goto_0

    .line 342
    :cond_3
    const/4 v1, 0x0

    return v1
.end method

.method public getCarrierPrivilegeStatus(Landroid/content/pm/PackageManager;Ljava/lang/String;)I
    .locals 4
    .param p1, "packageManager"    # Landroid/content/pm/PackageManager;
    .param p2, "packageName"    # Ljava/lang/String;

    .line 299
    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p0}, Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules;->hasCarrierPrivilegeRules()Z

    move-result v1

    if-nez v1, :cond_2

    .line 300
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules;->mState:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v1

    .line 301
    .local v1, "state":I
    if-nez v1, :cond_0

    .line 302
    const/4 v0, -0x1

    return v0

    .line 303
    :cond_0
    const/4 v2, 0x2

    if-ne v1, v2, :cond_1

    .line 304
    const/4 v0, -0x2

    return v0

    .line 306
    :cond_1
    return v0

    .line 311
    .end local v1    # "state":I
    :cond_2
    const v1, 0x20008040

    invoke-virtual {p1, p2, v1}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    .line 315
    .local v1, "pInfo":Landroid/content/pm/PackageInfo;
    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules;->getCarrierPrivilegeStatus(Landroid/content/pm/PackageInfo;)I

    move-result v2
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return v2

    .line 316
    .end local v1    # "pInfo":Landroid/content/pm/PackageInfo;
    :catch_0
    move-exception v1

    .line 317
    .local v1, "ex":Landroid/content/pm/PackageManager$NameNotFoundException;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Package "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " not found for carrier privilege status check"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules;->log(Ljava/lang/String;)V

    .line 319
    .end local v1    # "ex":Landroid/content/pm/PackageManager$NameNotFoundException;
    return v0
.end method

.method public getCarrierPrivilegeStatus(Landroid/content/pm/Signature;Ljava/lang/String;)I
    .locals 4
    .param p1, "signature"    # Landroid/content/pm/Signature;
    .param p2, "packageName"    # Ljava/lang/String;

    .line 271
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules;->mState:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    .line 272
    .local v0, "state":I
    if-nez v0, :cond_0

    .line 273
    const/4 v1, -0x1

    return v1

    .line 274
    :cond_0
    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 275
    const/4 v1, -0x2

    return v1

    .line 278
    :cond_1
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules;->mAccessRules:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/UiccAccessRule;

    .line 279
    .local v2, "ar":Landroid/telephony/UiccAccessRule;
    invoke-virtual {v2, p1, p2}, Landroid/telephony/UiccAccessRule;->getCarrierPrivilegeStatus(Landroid/content/pm/Signature;Ljava/lang/String;)I

    move-result v3

    .line 280
    .local v3, "accessStatus":I
    if-eqz v3, :cond_2

    .line 281
    return v3

    .line 283
    .end local v2    # "ar":Landroid/telephony/UiccAccessRule;
    .end local v3    # "accessStatus":I
    :cond_2
    goto :goto_0

    .line 285
    :cond_3
    const/4 v1, 0x0

    return v1
.end method

.method public getCarrierPrivilegeStatusForCurrentTransaction(Landroid/content/pm/PackageManager;)I
    .locals 1
    .param p1, "packageManager"    # Landroid/content/pm/PackageManager;

    .line 352
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    invoke-virtual {p0, p1, v0}, Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules;->getCarrierPrivilegeStatusForUid(Landroid/content/pm/PackageManager;I)I

    move-result v0

    return v0
.end method

.method public getCarrierPrivilegeStatusForUid(Landroid/content/pm/PackageManager;I)I
    .locals 6
    .param p1, "packageManager"    # Landroid/content/pm/PackageManager;
    .param p2, "uid"    # I

    .line 363
    invoke-virtual {p1, p2}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v0

    .line 365
    .local v0, "packages":[Ljava/lang/String;
    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_1

    aget-object v4, v0, v3

    .line 366
    .local v4, "pkg":Ljava/lang/String;
    invoke-virtual {p0, p1, v4}, Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules;->getCarrierPrivilegeStatus(Landroid/content/pm/PackageManager;Ljava/lang/String;)I

    move-result v5

    .line 367
    .local v5, "accessStatus":I
    if-eqz v5, :cond_0

    .line 368
    return v5

    .line 365
    .end local v4    # "pkg":Ljava/lang/String;
    .end local v5    # "accessStatus":I
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 371
    :cond_1
    return v2
.end method

.method public getPackageNames()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 242
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 243
    .local v0, "pkgNames":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules;->mAccessRules:Ljava/util/List;

    if-eqz v1, :cond_1

    .line 244
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules;->mAccessRules:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/UiccAccessRule;

    .line 245
    .local v2, "ar":Landroid/telephony/UiccAccessRule;
    invoke-virtual {v2}, Landroid/telephony/UiccAccessRule;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 246
    invoke-virtual {v2}, Landroid/telephony/UiccAccessRule;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 248
    .end local v2    # "ar":Landroid/telephony/UiccAccessRule;
    :cond_0
    goto :goto_0

    .line 250
    :cond_1
    return-object v0
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 18
    .param p1, "msg"    # Landroid/os/Message;

    move-object/from16 v1, p0

    .line 425
    move-object/from16 v2, p1

    iget v0, v2, Landroid/os/Message;->arg2:I

    iput v0, v1, Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules;->mAIDInUse:I

    .line 427
    iget v0, v2, Landroid/os/Message;->what:I

    const/4 v4, 0x2

    const/4 v5, 0x1

    packed-switch v0, :pswitch_data_0

    .line 538
    const-string v0, "UiccCarrierPrivilegeRules"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unknown event "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, v2, Landroid/os/Message;->what:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_5

    .line 524
    :pswitch_0
    const-string v0, "EVENT_PKCS15_READ_DONE"

    invoke-static {v0}, Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules;->log(Ljava/lang/String;)V

    .line 525
    iget-object v0, v1, Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules;->mUiccPkcs15:Lcom/android/internal/telephony/uicc/UiccPkcs15;

    if-eqz v0, :cond_2

    iget-object v0, v1, Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules;->mUiccPkcs15:Lcom/android/internal/telephony/uicc/UiccPkcs15;

    invoke-virtual {v0}, Lcom/android/internal/telephony/uicc/UiccPkcs15;->getRules()Ljava/util/List;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_1

    .line 528
    :cond_0
    iget-object v0, v1, Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules;->mUiccPkcs15:Lcom/android/internal/telephony/uicc/UiccPkcs15;

    invoke-virtual {v0}, Lcom/android/internal/telephony/uicc/UiccPkcs15;->getRules()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 529
    .local v3, "cert":Ljava/lang/String;
    new-instance v4, Landroid/telephony/UiccAccessRule;

    .line 530
    invoke-static {v3}, Lcom/android/internal/telephony/uicc/IccUtils;->hexStringToBytes(Ljava/lang/String;)[B

    move-result-object v6

    const-string v7, ""

    const-wide/16 v8, 0x0

    invoke-direct {v4, v6, v7, v8, v9}, Landroid/telephony/UiccAccessRule;-><init>([BLjava/lang/String;J)V

    .line 531
    .local v4, "accessRule":Landroid/telephony/UiccAccessRule;
    iget-object v6, v1, Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules;->mAccessRules:Ljava/util/List;

    invoke-interface {v6, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 532
    .end local v3    # "cert":Ljava/lang/String;
    .end local v4    # "accessRule":Landroid/telephony/UiccAccessRule;
    goto :goto_0

    .line 533
    :cond_1
    const-string v0, "Success!"

    invoke-direct {v1, v5, v0}, Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules;->updateState(ILjava/lang/String;)V

    .line 535
    goto/16 :goto_5

    .line 526
    :cond_2
    :goto_1
    const-string v0, "No ARA or ARF."

    invoke-direct {v1, v4, v0}, Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules;->updateState(ILjava/lang/String;)V

    goto/16 :goto_5

    .line 515
    :pswitch_1
    const-string v0, "EVENT_CLOSE_LOGICAL_CHANNEL_DONE"

    invoke-static {v0}, Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules;->log(Ljava/lang/String;)V

    .line 516
    iget v0, v1, Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules;->mAIDInUse:I

    if-nez v0, :cond_e

    .line 518
    const-string v0, ""

    iput-object v0, v1, Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules;->mRules:Ljava/lang/String;

    .line 519
    invoke-direct {v1, v5}, Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules;->openChannel(I)V

    goto/16 :goto_5

    .line 468
    :pswitch_2
    const-string v0, "EVENT_TRANSMIT_LOGICAL_CHANNEL_DONE"

    invoke-static {v0}, Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules;->log(Ljava/lang/String;)V

    .line 469
    iget-object v0, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object v6, v0

    check-cast v6, Landroid/os/AsyncResult;

    .line 470
    .local v6, "ar":Landroid/os/AsyncResult;
    iget-object v0, v6, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v0, :cond_8

    iget-object v0, v6, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    if-eqz v0, :cond_8

    .line 471
    iget-object v0, v6, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    move-object v7, v0

    check-cast v7, Lcom/android/internal/telephony/uicc/IccIoResult;

    .line 472
    .local v7, "response":Lcom/android/internal/telephony/uicc/IccIoResult;
    iget v0, v7, Lcom/android/internal/telephony/uicc/IccIoResult;->sw1:I

    const/16 v8, 0x90

    if-ne v0, v8, :cond_6

    iget v0, v7, Lcom/android/internal/telephony/uicc/IccIoResult;->sw2:I

    if-nez v0, :cond_6

    iget-object v0, v7, Lcom/android/internal/telephony/uicc/IccIoResult;->payload:[B

    if-eqz v0, :cond_6

    iget-object v0, v7, Lcom/android/internal/telephony/uicc/IccIoResult;->payload:[B

    array-length v0, v0

    if-lez v0, :cond_6

    .line 475
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v8, v1, Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules;->mRules:Ljava/lang/String;

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, v7, Lcom/android/internal/telephony/uicc/IccIoResult;->payload:[B

    invoke-static {v8}, Lcom/android/internal/telephony/uicc/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v8

    sget-object v9, Ljava/util/Locale;->US:Ljava/util/Locale;

    .line 476
    invoke-virtual {v8, v9}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules;->mRules:Ljava/lang/String;

    .line 477
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules;->isDataComplete()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 478
    iget-object v0, v1, Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules;->mAccessRules:Ljava/util/List;

    iget-object v8, v1, Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules;->mRules:Ljava/lang/String;

    invoke-static {v8}, Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules;->parseRules(Ljava/lang/String;)Ljava/util/List;

    move-result-object v8

    invoke-interface {v0, v8}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 479
    iget v0, v1, Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules;->mAIDInUse:I

    if-nez v0, :cond_3

    .line 480
    iput-boolean v5, v1, Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules;->mCheckedRules:Z

    goto :goto_2

    .line 482
    :cond_3
    const-string v0, "Success!"

    invoke-direct {v1, v5, v0}, Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules;->updateState(ILjava/lang/String;)V

    goto :goto_2

    .line 485
    :cond_4
    iget-object v8, v1, Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules;->mUiccProfile:Lcom/android/internal/telephony/uicc/UiccProfile;

    iget v9, v1, Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules;->mChannelId:I

    const/16 v10, 0x80

    const/16 v11, 0xca

    const/16 v12, 0xff

    const/16 v13, 0x60

    const/4 v14, 0x0

    const-string v15, ""

    iget v0, v1, Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules;->mChannelId:I

    iget v3, v1, Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules;->mAIDInUse:I

    .line 487
    invoke-virtual {v1, v4, v0, v3}, Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules;->obtainMessage(III)Landroid/os/Message;

    move-result-object v16

    .line 485
    invoke-virtual/range {v8 .. v16}, Lcom/android/internal/telephony/uicc/UiccProfile;->iccTransmitApduLogicalChannel(IIIIIILjava/lang/String;Landroid/os/Message;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 489
    goto/16 :goto_5

    .line 491
    :catch_0
    move-exception v0

    .line 492
    .local v0, "ex":Ljava/lang/RuntimeException;
    iget v3, v1, Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules;->mAIDInUse:I

    if-ne v3, v5, :cond_5

    .line 493
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Error parsing rules: "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v4, v3}, Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules;->updateState(ILjava/lang/String;)V

    .line 495
    .end local v0    # "ex":Ljava/lang/RuntimeException;
    :cond_5
    :goto_2
    goto :goto_3

    .line 497
    :cond_6
    iget v0, v1, Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules;->mAIDInUse:I

    if-ne v0, v5, :cond_7

    .line 498
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid response: payload="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v7, Lcom/android/internal/telephony/uicc/IccIoResult;->payload:[B

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " sw1="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v7, Lcom/android/internal/telephony/uicc/IccIoResult;->sw1:I

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " sw2="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v7, Lcom/android/internal/telephony/uicc/IccIoResult;->sw2:I

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 500
    .local v0, "errorMsg":Ljava/lang/String;
    invoke-direct {v1, v4, v0}, Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules;->updateState(ILjava/lang/String;)V

    .line 503
    .end local v0    # "errorMsg":Ljava/lang/String;
    .end local v7    # "response":Lcom/android/internal/telephony/uicc/IccIoResult;
    :cond_7
    :goto_3
    goto :goto_4

    .line 504
    :cond_8
    iget v0, v1, Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules;->mAIDInUse:I

    if-ne v0, v5, :cond_9

    .line 505
    const-string v0, "Error reading value from SIM."

    invoke-direct {v1, v4, v0}, Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules;->updateState(ILjava/lang/String;)V

    .line 509
    :cond_9
    :goto_4
    iget-object v0, v1, Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules;->mUiccProfile:Lcom/android/internal/telephony/uicc/UiccProfile;

    iget v3, v1, Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules;->mChannelId:I

    const/4 v4, 0x3

    iget v5, v1, Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules;->mAIDInUse:I

    const/4 v7, 0x0

    invoke-virtual {v1, v4, v7, v5}, Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules;->obtainMessage(III)Landroid/os/Message;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Lcom/android/internal/telephony/uicc/UiccProfile;->iccCloseLogicalChannel(ILandroid/os/Message;)V

    .line 511
    const/4 v0, -0x1

    iput v0, v1, Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules;->mChannelId:I

    .line 512
    goto/16 :goto_5

    .line 430
    .end local v6    # "ar":Landroid/os/AsyncResult;
    :pswitch_3
    const-string v0, "EVENT_OPEN_LOGICAL_CHANNEL_DONE"

    invoke-static {v0}, Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules;->log(Ljava/lang/String;)V

    .line 431
    iget-object v0, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 432
    .local v0, "ar":Landroid/os/AsyncResult;
    iget-object v3, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v3, :cond_a

    iget-object v3, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    if-eqz v3, :cond_a

    .line 433
    iget-object v3, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v3, [I

    const/4 v5, 0x0

    aget v3, v3, v5

    iput v3, v1, Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules;->mChannelId:I

    .line 434
    iget-object v5, v1, Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules;->mUiccProfile:Lcom/android/internal/telephony/uicc/UiccProfile;

    iget v6, v1, Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules;->mChannelId:I

    const/16 v7, 0x80

    const/16 v8, 0xca

    const/16 v9, 0xff

    const/16 v10, 0x40

    const/4 v11, 0x0

    const-string v12, ""

    iget v3, v1, Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules;->mChannelId:I

    iget v13, v1, Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules;->mAIDInUse:I

    .line 435
    invoke-virtual {v1, v4, v3, v13}, Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules;->obtainMessage(III)Landroid/os/Message;

    move-result-object v13

    .line 434
    invoke-virtual/range {v5 .. v13}, Lcom/android/internal/telephony/uicc/UiccProfile;->iccTransmitApduLogicalChannel(IIIIIILjava/lang/String;Landroid/os/Message;)V

    goto :goto_5

    .line 440
    :cond_a
    iget-object v3, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    instance-of v3, v3, Lcom/android/internal/telephony/CommandException;

    if-eqz v3, :cond_b

    iget v3, v1, Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules;->mRetryCount:I

    if-ge v3, v5, :cond_b

    iget-object v3, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    check-cast v3, Lcom/android/internal/telephony/CommandException;

    .line 441
    invoke-virtual {v3}, Lcom/android/internal/telephony/CommandException;->getCommandError()Lcom/android/internal/telephony/CommandException$Error;

    move-result-object v3

    sget-object v4, Lcom/android/internal/telephony/CommandException$Error;->MISSING_RESOURCE:Lcom/android/internal/telephony/CommandException$Error;

    if-ne v3, v4, :cond_b

    .line 443
    iget v3, v1, Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules;->mRetryCount:I

    add-int/2addr v3, v5

    iput v3, v1, Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules;->mRetryCount:I

    .line 444
    iget-object v3, v1, Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules;->mRetryRunnable:Ljava/lang/Runnable;

    invoke-virtual {v1, v3}, Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 445
    iget-object v3, v1, Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules;->mRetryRunnable:Ljava/lang/Runnable;

    const-wide/16 v4, 0x2710

    invoke-virtual {v1, v3, v4, v5}, Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_5

    .line 447
    :cond_b
    iget v3, v1, Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules;->mAIDInUse:I

    if-nez v3, :cond_c

    .line 449
    const-string v3, ""

    iput-object v3, v1, Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules;->mRules:Ljava/lang/String;

    .line 450
    invoke-direct {v1, v5}, Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules;->openChannel(I)V

    .line 452
    :cond_c
    iget v3, v1, Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules;->mAIDInUse:I

    if-ne v3, v5, :cond_e

    .line 453
    iget-boolean v3, v1, Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules;->mCheckedRules:Z

    if-eqz v3, :cond_d

    .line 454
    const-string v3, "Success!"

    invoke-direct {v1, v5, v3}, Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules;->updateState(ILjava/lang/String;)V

    goto :goto_5

    .line 458
    :cond_d
    const-string v3, "No ARA, try ARF next."

    invoke-static {v3}, Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules;->log(Ljava/lang/String;)V

    .line 459
    new-instance v3, Lcom/android/internal/telephony/uicc/UiccPkcs15;

    iget-object v4, v1, Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules;->mUiccProfile:Lcom/android/internal/telephony/uicc/UiccProfile;

    const/4 v5, 0x4

    .line 460
    invoke-virtual {v1, v5}, Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules;->obtainMessage(I)Landroid/os/Message;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Lcom/android/internal/telephony/uicc/UiccPkcs15;-><init>(Lcom/android/internal/telephony/uicc/UiccProfile;Landroid/os/Message;)V

    iput-object v3, v1, Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules;->mUiccPkcs15:Lcom/android/internal/telephony/uicc/UiccPkcs15;

    .line 540
    .end local v0    # "ar":Landroid/os/AsyncResult;
    :cond_e
    :goto_5
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public hasCarrierPrivilegeRules()Z
    .locals 1

    .line 234
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules;->mState:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules;->mAccessRules:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules;->mAccessRules:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
