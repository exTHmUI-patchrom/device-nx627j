.class public Lcom/android/internal/telephony/uicc/UiccPkcs15;
.super Landroid/os/Handler;
.source "UiccPkcs15.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/uicc/UiccPkcs15$Pkcs15Selector;,
        Lcom/android/internal/telephony/uicc/UiccPkcs15$FileHandler;
    }
.end annotation


# static fields
.field private static final CARRIER_RULE_AID:Ljava/lang/String; = "FFFFFFFFFFFF"

.field private static final DBG:Z = true

.field private static final EVENT_CLOSE_LOGICAL_CHANNEL_DONE:I = 0x7

.field private static final EVENT_LOAD_ACCF_DONE:I = 0x6

.field private static final EVENT_LOAD_ACMF_DONE:I = 0x4

.field private static final EVENT_LOAD_ACRF_DONE:I = 0x5

.field private static final EVENT_LOAD_DODF_DONE:I = 0x3

.field private static final EVENT_LOAD_ODF_DONE:I = 0x2

.field private static final EVENT_SELECT_PKCS15_DONE:I = 0x1

.field private static final ID_ACRF:Ljava/lang/String; = "4300"

.field private static final LOG_TAG:Ljava/lang/String; = "UiccPkcs15"

.field private static final TAG_ASN_OCTET_STRING:Ljava/lang/String; = "04"

.field private static final TAG_ASN_SEQUENCE:Ljava/lang/String; = "30"

.field private static final TAG_TARGET_AID:Ljava/lang/String; = "A0"


# instance fields
.field private mChannelId:I

.field private mFh:Lcom/android/internal/telephony/uicc/UiccPkcs15$FileHandler;

.field private mLoadedCallback:Landroid/os/Message;

.field private mPkcs15Selector:Lcom/android/internal/telephony/uicc/UiccPkcs15$Pkcs15Selector;

.field private mRules:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mUiccProfile:Lcom/android/internal/telephony/uicc/UiccProfile;


# direct methods
.method public constructor <init>(Lcom/android/internal/telephony/uicc/UiccProfile;Landroid/os/Message;)V
    .locals 2
    .param p1, "uiccProfile"    # Lcom/android/internal/telephony/uicc/UiccProfile;
    .param p2, "loadedCallback"    # Landroid/os/Message;

    .line 185
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 172
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/internal/telephony/uicc/UiccPkcs15;->mChannelId:I

    .line 173
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/uicc/UiccPkcs15;->mRules:Ljava/util/List;

    .line 186
    const-string v0, "Creating UiccPkcs15"

    invoke-static {v0}, Lcom/android/internal/telephony/uicc/UiccPkcs15;->log(Ljava/lang/String;)V

    .line 187
    iput-object p1, p0, Lcom/android/internal/telephony/uicc/UiccPkcs15;->mUiccProfile:Lcom/android/internal/telephony/uicc/UiccProfile;

    .line 188
    iput-object p2, p0, Lcom/android/internal/telephony/uicc/UiccPkcs15;->mLoadedCallback:Landroid/os/Message;

    .line 189
    new-instance v0, Lcom/android/internal/telephony/uicc/UiccPkcs15$Pkcs15Selector;

    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/uicc/UiccPkcs15;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/internal/telephony/uicc/UiccPkcs15$Pkcs15Selector;-><init>(Lcom/android/internal/telephony/uicc/UiccPkcs15;Landroid/os/Message;)V

    iput-object v0, p0, Lcom/android/internal/telephony/uicc/UiccPkcs15;->mPkcs15Selector:Lcom/android/internal/telephony/uicc/UiccPkcs15$Pkcs15Selector;

    .line 190
    return-void
.end method

.method static synthetic access$000(Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Ljava/lang/String;

    .line 47
    invoke-static {p0}, Lcom/android/internal/telephony/uicc/UiccPkcs15;->log(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$100(Lcom/android/internal/telephony/uicc/UiccPkcs15;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/telephony/uicc/UiccPkcs15;

    .line 47
    iget v0, p0, Lcom/android/internal/telephony/uicc/UiccPkcs15;->mChannelId:I

    return v0
.end method

.method static synthetic access$102(Lcom/android/internal/telephony/uicc/UiccPkcs15;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/telephony/uicc/UiccPkcs15;
    .param p1, "x1"    # I

    .line 47
    iput p1, p0, Lcom/android/internal/telephony/uicc/UiccPkcs15;->mChannelId:I

    return p1
.end method

.method static synthetic access$200(Lcom/android/internal/telephony/uicc/UiccPkcs15;)Lcom/android/internal/telephony/uicc/UiccProfile;
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/telephony/uicc/UiccPkcs15;

    .line 47
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/UiccPkcs15;->mUiccProfile:Lcom/android/internal/telephony/uicc/UiccProfile;

    return-object v0
.end method

.method private cleanUp()V
    .locals 3

    .line 241
    const-string v0, "cleanUp"

    invoke-static {v0}, Lcom/android/internal/telephony/uicc/UiccPkcs15;->log(Ljava/lang/String;)V

    .line 242
    iget v0, p0, Lcom/android/internal/telephony/uicc/UiccPkcs15;->mChannelId:I

    if-ltz v0, :cond_0

    .line 243
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/UiccPkcs15;->mUiccProfile:Lcom/android/internal/telephony/uicc/UiccProfile;

    iget v1, p0, Lcom/android/internal/telephony/uicc/UiccPkcs15;->mChannelId:I

    const/4 v2, 0x7

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/uicc/UiccPkcs15;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/uicc/UiccProfile;->iccCloseLogicalChannel(ILandroid/os/Message;)V

    .line 245
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/internal/telephony/uicc/UiccPkcs15;->mChannelId:I

    .line 247
    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/UiccPkcs15;->mLoadedCallback:Landroid/os/Message;

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 248
    return-void
.end method

.method private static log(Ljava/lang/String;)V
    .locals 1
    .param p0, "msg"    # Ljava/lang/String;

    .line 323
    const-string v0, "UiccPkcs15"

    invoke-static {v0, p0}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 324
    return-void
.end method

.method private parseAccf(Ljava/lang/String;)V
    .locals 6
    .param p1, "data"    # Ljava/lang/String;

    .line 301
    move-object v0, p1

    .line 302
    .local v0, "acCondition":Ljava/lang/String;
    :goto_0
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    .line 303
    new-instance v1, Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules$TLV;

    const-string v2, "30"

    invoke-direct {v1, v2}, Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules$TLV;-><init>(Ljava/lang/String;)V

    .line 304
    .local v1, "tlvCondition":Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules$TLV;
    new-instance v2, Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules$TLV;

    const-string v3, "04"

    invoke-direct {v2, v3}, Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules$TLV;-><init>(Ljava/lang/String;)V

    .line 306
    .local v2, "tlvCert":Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules$TLV;
    const/4 v3, 0x0

    :try_start_0
    invoke-virtual {v1, v0, v3}, Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules$TLV;->parse(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v3

    move-object v0, v3

    .line 307
    invoke-virtual {v1}, Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules$TLV;->getValue()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v4}, Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules$TLV;->parse(Ljava/lang/String;Z)Ljava/lang/String;

    .line 308
    invoke-virtual {v2}, Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules$TLV;->getValue()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_0

    .line 309
    iget-object v3, p0, Lcom/android/internal/telephony/uicc/UiccPkcs15;->mRules:Ljava/util/List;

    invoke-virtual {v2}, Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules$TLV;->getValue()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 314
    :cond_0
    nop

    .line 315
    .end local v1    # "tlvCondition":Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules$TLV;
    .end local v2    # "tlvCert":Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules$TLV;
    goto :goto_0

    .line 311
    .restart local v1    # "tlvCondition":Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules$TLV;
    .restart local v2    # "tlvCert":Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules$TLV;
    :catch_0
    move-exception v3

    .line 312
    .local v3, "ex":Ljava/lang/RuntimeException;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Error: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/android/internal/telephony/uicc/UiccPkcs15;->log(Ljava/lang/String;)V

    .line 313
    nop

    .line 316
    .end local v1    # "tlvCondition":Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules$TLV;
    .end local v2    # "tlvCert":Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules$TLV;
    .end local v3    # "ex":Ljava/lang/RuntimeException;
    :cond_1
    return-void
.end method

.method private parseAcrf(Ljava/lang/String;)Ljava/lang/String;
    .locals 11
    .param p1, "data"    # Ljava/lang/String;

    .line 260
    const/4 v0, 0x0

    .line 262
    .local v0, "ret":Ljava/lang/String;
    move-object v1, v0

    move-object v0, p1

    .line 263
    .local v0, "acRules":Ljava/lang/String;
    .local v1, "ret":Ljava/lang/String;
    :goto_0
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_1

    .line 264
    new-instance v2, Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules$TLV;

    const-string v3, "30"

    invoke-direct {v2, v3}, Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules$TLV;-><init>(Ljava/lang/String;)V

    .line 266
    .local v2, "tlvRule":Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules$TLV;
    const/4 v3, 0x0

    :try_start_0
    invoke-virtual {v2, v0, v3}, Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules$TLV;->parse(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v4

    move-object v0, v4

    .line 267
    invoke-virtual {v2}, Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules$TLV;->getValue()Ljava/lang/String;

    move-result-object v4

    .line 268
    .local v4, "ruleString":Ljava/lang/String;
    const-string v5, "A0"

    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 272
    new-instance v5, Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules$TLV;

    const-string v6, "A0"

    invoke-direct {v5, v6}, Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules$TLV;-><init>(Ljava/lang/String;)V

    .line 273
    .local v5, "tlvTarget":Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules$TLV;
    new-instance v6, Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules$TLV;

    const-string v7, "04"

    invoke-direct {v6, v7}, Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules$TLV;-><init>(Ljava/lang/String;)V

    .line 274
    .local v6, "tlvAid":Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules$TLV;
    new-instance v7, Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules$TLV;

    const-string v8, "30"

    invoke-direct {v7, v8}, Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules$TLV;-><init>(Ljava/lang/String;)V

    .line 275
    .local v7, "tlvAsnPath":Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules$TLV;
    new-instance v8, Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules$TLV;

    const-string v9, "04"

    invoke-direct {v8, v9}, Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules$TLV;-><init>(Ljava/lang/String;)V

    .line 279
    .local v8, "tlvPath":Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules$TLV;
    invoke-virtual {v5, v4, v3}, Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules$TLV;->parse(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v3

    move-object v4, v3

    .line 282
    invoke-virtual {v5}, Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules$TLV;->getValue()Ljava/lang/String;

    move-result-object v3

    const/4 v9, 0x1

    invoke-virtual {v6, v3, v9}, Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules$TLV;->parse(Ljava/lang/String;Z)Ljava/lang/String;

    .line 284
    const-string v3, "FFFFFFFFFFFF"

    invoke-virtual {v6}, Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules$TLV;->getValue()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v3, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 285
    invoke-virtual {v7, v4, v9}, Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules$TLV;->parse(Ljava/lang/String;Z)Ljava/lang/String;

    .line 286
    invoke-virtual {v7}, Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules$TLV;->getValue()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v8, v3, v9}, Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules$TLV;->parse(Ljava/lang/String;Z)Ljava/lang/String;

    .line 287
    invoke-virtual {v8}, Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules$TLV;->getValue()Ljava/lang/String;

    move-result-object v3
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v1, v3

    .line 290
    .end local v5    # "tlvTarget":Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules$TLV;
    .end local v6    # "tlvAid":Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules$TLV;
    .end local v7    # "tlvAsnPath":Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules$TLV;
    .end local v8    # "tlvPath":Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules$TLV;
    :cond_0
    goto :goto_0

    .line 291
    .end local v4    # "ruleString":Ljava/lang/String;
    :catch_0
    move-exception v3

    .line 292
    .local v3, "ex":Ljava/lang/RuntimeException;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Error: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/android/internal/telephony/uicc/UiccPkcs15;->log(Ljava/lang/String;)V

    .line 293
    nop

    .line 296
    .end local v2    # "tlvRule":Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules$TLV;
    .end local v3    # "ex":Ljava/lang/RuntimeException;
    :cond_1
    return-object v1
.end method


# virtual methods
.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 4
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    .line 330
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/UiccPkcs15;->mRules:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 331
    const-string v0, " mRules:"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 332
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/UiccPkcs15;->mRules:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 333
    .local v1, "cert":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "  "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 334
    .end local v1    # "cert":Ljava/lang/String;
    goto :goto_0

    .line 336
    :cond_0
    return-void
.end method

.method public getRules()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 319
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/UiccPkcs15;->mRules:Ljava/util/List;

    return-object v0
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 4
    .param p1, "msg"    # Landroid/os/Message;

    .line 194
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "handleMessage: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p1, Landroid/os/Message;->what:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/telephony/uicc/UiccPkcs15;->log(Ljava/lang/String;)V

    .line 195
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 197
    .local v0, "ar":Landroid/os/AsyncResult;
    iget v1, p1, Landroid/os/Message;->what:I

    const/4 v2, 0x1

    if-eq v1, v2, :cond_3

    packed-switch v1, :pswitch_data_0

    .line 236
    const-string v1, "UiccPkcs15"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unknown event "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p1, Landroid/os/Message;->what:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 233
    :pswitch_0
    goto/16 :goto_0

    .line 225
    :pswitch_1
    iget-object v1, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v1, :cond_0

    iget-object v1, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    if-eqz v1, :cond_0

    .line 226
    iget-object v1, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/uicc/UiccPkcs15;->parseAccf(Ljava/lang/String;)V

    .line 229
    :cond_0
    invoke-direct {p0}, Lcom/android/internal/telephony/uicc/UiccPkcs15;->cleanUp()V

    .line 230
    goto :goto_0

    .line 214
    :pswitch_2
    iget-object v1, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v1, :cond_2

    iget-object v1, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    if-eqz v1, :cond_2

    .line 215
    iget-object v1, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/uicc/UiccPkcs15;->parseAcrf(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 216
    .local v1, "idAccf":Ljava/lang/String;
    iget-object v2, p0, Lcom/android/internal/telephony/uicc/UiccPkcs15;->mFh:Lcom/android/internal/telephony/uicc/UiccPkcs15$FileHandler;

    const/4 v3, 0x6

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/uicc/UiccPkcs15;->obtainMessage(I)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v2, v1, v3}, Lcom/android/internal/telephony/uicc/UiccPkcs15$FileHandler;->loadFile(Ljava/lang/String;Landroid/os/Message;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 217
    invoke-direct {p0}, Lcom/android/internal/telephony/uicc/UiccPkcs15;->cleanUp()V

    .line 219
    .end local v1    # "idAccf":Ljava/lang/String;
    :cond_1
    goto :goto_0

    .line 220
    :cond_2
    invoke-direct {p0}, Lcom/android/internal/telephony/uicc/UiccPkcs15;->cleanUp()V

    .line 222
    goto :goto_0

    .line 199
    :cond_3
    iget-object v1, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v1, :cond_4

    .line 202
    new-instance v1, Lcom/android/internal/telephony/uicc/UiccPkcs15$FileHandler;

    iget-object v2, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    invoke-direct {v1, p0, v2}, Lcom/android/internal/telephony/uicc/UiccPkcs15$FileHandler;-><init>(Lcom/android/internal/telephony/uicc/UiccPkcs15;Ljava/lang/String;)V

    iput-object v1, p0, Lcom/android/internal/telephony/uicc/UiccPkcs15;->mFh:Lcom/android/internal/telephony/uicc/UiccPkcs15$FileHandler;

    .line 203
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/UiccPkcs15;->mFh:Lcom/android/internal/telephony/uicc/UiccPkcs15$FileHandler;

    const-string v2, "4300"

    const/4 v3, 0x5

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/uicc/UiccPkcs15;->obtainMessage(I)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/android/internal/telephony/uicc/UiccPkcs15$FileHandler;->loadFile(Ljava/lang/String;Landroid/os/Message;)Z

    move-result v1

    if-nez v1, :cond_5

    .line 204
    invoke-direct {p0}, Lcom/android/internal/telephony/uicc/UiccPkcs15;->cleanUp()V

    goto :goto_0

    .line 207
    :cond_4
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "select pkcs15 failed: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/telephony/uicc/UiccPkcs15;->log(Ljava/lang/String;)V

    .line 209
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/UiccPkcs15;->mLoadedCallback:Landroid/os/Message;

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 211
    nop

    .line 238
    :cond_5
    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x5
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
