.class public Lcom/android/internal/telephony/uicc/euicc/EuiccCard;
.super Lcom/android/internal/telephony/uicc/UiccCard;
.source "EuiccCard.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/uicc/euicc/EuiccCard$ApduExceptionHandler;,
        Lcom/android/internal/telephony/uicc/euicc/EuiccCard$ApduResponseHandler;,
        Lcom/android/internal/telephony/uicc/euicc/EuiccCard$ApduRequestBuilder;
    }
.end annotation


# static fields
.field private static final APDU_ERROR_SIM_REFRESH:I = 0x6f00

.field private static final CODE_NOTHING_TO_DELETE:I = 0x1

.field private static final CODE_NO_RESULT_AVAILABLE:I = 0x1

.field private static final CODE_OK:I = 0x0

.field private static final CODE_PROFILE_NOT_IN_EXPECTED_STATE:I = 0x2

.field private static final DBG:Z = true

.field private static final DEV_CAP_CDMA_1X:Ljava/lang/String; = "cdma1x"

.field private static final DEV_CAP_CRL:Ljava/lang/String; = "crl"

.field private static final DEV_CAP_EHRPD:Ljava/lang/String; = "ehrpd"

.field private static final DEV_CAP_EUTRAN:Ljava/lang/String; = "eutran"

.field private static final DEV_CAP_GSM:Ljava/lang/String; = "gsm"

.field private static final DEV_CAP_HRPD:Ljava/lang/String; = "hrpd"

.field private static final DEV_CAP_NFC:Ljava/lang/String; = "nfc"

.field private static final DEV_CAP_UTRAN:Ljava/lang/String; = "utran"

.field private static final ICCID_LENGTH:I = 0x14

.field private static final ISD_R_AID:Ljava/lang/String; = "A0000005591010FFFFFFFF8900000100"

.field private static final LOG_TAG:Ljava/lang/String; = "EuiccCard"

.field private static final SGP22_V_2_0:Lcom/android/internal/telephony/uicc/euicc/EuiccSpecVersion;

.field private static final SGP22_V_2_1:Lcom/android/internal/telephony/uicc/euicc/EuiccSpecVersion;


# instance fields
.field private final mApduSender:Lcom/android/internal/telephony/uicc/euicc/apdu/ApduSender;

.field private volatile mEid:Ljava/lang/String;

.field private mEidReadyRegistrants:Landroid/os/RegistrantList;

.field private final mLock:Ljava/lang/Object;

.field private mSpecVersion:Lcom/android/internal/telephony/uicc/euicc/EuiccSpecVersion;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 86
    new-instance v0, Lcom/android/internal/telephony/uicc/euicc/EuiccSpecVersion;

    const/4 v1, 0x2

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/android/internal/telephony/uicc/euicc/EuiccSpecVersion;-><init>(III)V

    sput-object v0, Lcom/android/internal/telephony/uicc/euicc/EuiccCard;->SGP22_V_2_0:Lcom/android/internal/telephony/uicc/euicc/EuiccSpecVersion;

    .line 87
    new-instance v0, Lcom/android/internal/telephony/uicc/euicc/EuiccSpecVersion;

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3, v2}, Lcom/android/internal/telephony/uicc/euicc/EuiccSpecVersion;-><init>(III)V

    sput-object v0, Lcom/android/internal/telephony/uicc/euicc/EuiccCard;->SGP22_V_2_1:Lcom/android/internal/telephony/uicc/euicc/EuiccSpecVersion;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/internal/telephony/CommandsInterface;Lcom/android/internal/telephony/uicc/IccCardStatus;ILjava/lang/Object;)V
    .locals 3
    .param p1, "c"    # Landroid/content/Context;
    .param p2, "ci"    # Lcom/android/internal/telephony/CommandsInterface;
    .param p3, "ics"    # Lcom/android/internal/telephony/uicc/IccCardStatus;
    .param p4, "phoneId"    # I
    .param p5, "lock"    # Ljava/lang/Object;

    .line 121
    invoke-direct/range {p0 .. p5}, Lcom/android/internal/telephony/uicc/UiccCard;-><init>(Landroid/content/Context;Lcom/android/internal/telephony/CommandsInterface;Lcom/android/internal/telephony/uicc/IccCardStatus;ILjava/lang/Object;)V

    .line 115
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/uicc/euicc/EuiccCard;->mLock:Ljava/lang/Object;

    .line 123
    new-instance v0, Lcom/android/internal/telephony/uicc/euicc/apdu/ApduSender;

    const-string v1, "A0000005591010FFFFFFFF8900000100"

    const/4 v2, 0x0

    invoke-direct {v0, p2, v1, v2}, Lcom/android/internal/telephony/uicc/euicc/apdu/ApduSender;-><init>(Lcom/android/internal/telephony/CommandsInterface;Ljava/lang/String;Z)V

    iput-object v0, p0, Lcom/android/internal/telephony/uicc/euicc/EuiccCard;->mApduSender:Lcom/android/internal/telephony/uicc/euicc/apdu/ApduSender;

    .line 125
    invoke-virtual {p0}, Lcom/android/internal/telephony/uicc/euicc/EuiccCard;->loadEidAndNotifyRegistrants()V

    .line 126
    return-void
.end method

.method static synthetic access$000(Lcom/android/internal/telephony/uicc/euicc/EuiccCard;)Landroid/os/RegistrantList;
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/telephony/uicc/euicc/EuiccCard;

    .line 62
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/euicc/EuiccCard;->mEidReadyRegistrants:Landroid/os/RegistrantList;

    return-object v0
.end method

.method static synthetic access$102(Lcom/android/internal/telephony/uicc/euicc/EuiccCard;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/telephony/uicc/euicc/EuiccCard;
    .param p1, "x1"    # Ljava/lang/String;

    .line 62
    iput-object p1, p0, Lcom/android/internal/telephony/uicc/euicc/EuiccCard;->mEid:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$202(Lcom/android/internal/telephony/uicc/euicc/EuiccCard;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/telephony/uicc/euicc/EuiccCard;
    .param p1, "x1"    # Ljava/lang/String;

    .line 62
    iput-object p1, p0, Lcom/android/internal/telephony/uicc/euicc/EuiccCard;->mCardId:Ljava/lang/String;

    return-object p1
.end method

.method private static buildCarrierIdentifier(Lcom/android/internal/telephony/uicc/asn1/Asn1Node;)Landroid/service/carrier/CarrierIdentifier;
    .locals 5
    .param p0, "node"    # Lcom/android/internal/telephony/uicc/asn1/Asn1Node;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/uicc/asn1/InvalidAsn1DataException;,
            Lcom/android/internal/telephony/uicc/asn1/TagNotFoundException;
        }
    .end annotation

    .line 1205
    const/4 v0, 0x0

    .line 1206
    .local v0, "gid1":Ljava/lang/String;
    const/4 v1, 0x0

    new-array v2, v1, [I

    const/16 v3, 0x81

    invoke-virtual {p0, v3, v2}, Lcom/android/internal/telephony/uicc/asn1/Asn1Node;->hasChild(I[I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1207
    new-array v2, v1, [I

    invoke-virtual {p0, v3, v2}, Lcom/android/internal/telephony/uicc/asn1/Asn1Node;->getChild(I[I)Lcom/android/internal/telephony/uicc/asn1/Asn1Node;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/telephony/uicc/asn1/Asn1Node;->asBytes()[B

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/telephony/uicc/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v0

    .line 1209
    :cond_0
    const/4 v2, 0x0

    .line 1210
    .local v2, "gid2":Ljava/lang/String;
    new-array v3, v1, [I

    const/16 v4, 0x82

    invoke-virtual {p0, v4, v3}, Lcom/android/internal/telephony/uicc/asn1/Asn1Node;->hasChild(I[I)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1211
    new-array v3, v1, [I

    invoke-virtual {p0, v4, v3}, Lcom/android/internal/telephony/uicc/asn1/Asn1Node;->getChild(I[I)Lcom/android/internal/telephony/uicc/asn1/Asn1Node;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/internal/telephony/uicc/asn1/Asn1Node;->asBytes()[B

    move-result-object v3

    invoke-static {v3}, Lcom/android/internal/telephony/uicc/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v2

    .line 1213
    :cond_1
    new-instance v3, Landroid/service/carrier/CarrierIdentifier;

    const/16 v4, 0x80

    new-array v1, v1, [I

    invoke-virtual {p0, v4, v1}, Lcom/android/internal/telephony/uicc/asn1/Asn1Node;->getChild(I[I)Lcom/android/internal/telephony/uicc/asn1/Asn1Node;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/telephony/uicc/asn1/Asn1Node;->asBytes()[B

    move-result-object v1

    invoke-direct {v3, v1, v0, v2}, Landroid/service/carrier/CarrierIdentifier;-><init>([BLjava/lang/String;Ljava/lang/String;)V

    return-object v3
.end method

.method private static buildProfile(Lcom/android/internal/telephony/uicc/asn1/Asn1Node;Landroid/service/euicc/EuiccProfileInfo$Builder;)V
    .locals 3
    .param p0, "profileNode"    # Lcom/android/internal/telephony/uicc/asn1/Asn1Node;
    .param p1, "profileBuilder"    # Landroid/service/euicc/EuiccProfileInfo$Builder;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/uicc/asn1/TagNotFoundException;,
            Lcom/android/internal/telephony/uicc/asn1/InvalidAsn1DataException;
        }
    .end annotation

    .line 1151
    const/4 v0, 0x0

    new-array v1, v0, [I

    const/16 v2, 0x90

    invoke-virtual {p0, v2, v1}, Lcom/android/internal/telephony/uicc/asn1/Asn1Node;->hasChild(I[I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1152
    new-array v1, v0, [I

    invoke-virtual {p0, v2, v1}, Lcom/android/internal/telephony/uicc/asn1/Asn1Node;->getChild(I[I)Lcom/android/internal/telephony/uicc/asn1/Asn1Node;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/telephony/uicc/asn1/Asn1Node;->asString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/service/euicc/EuiccProfileInfo$Builder;->setNickname(Ljava/lang/String;)Landroid/service/euicc/EuiccProfileInfo$Builder;

    .line 1155
    :cond_0
    new-array v1, v0, [I

    const/16 v2, 0x91

    invoke-virtual {p0, v2, v1}, Lcom/android/internal/telephony/uicc/asn1/Asn1Node;->hasChild(I[I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1156
    new-array v1, v0, [I

    .line 1157
    invoke-virtual {p0, v2, v1}, Lcom/android/internal/telephony/uicc/asn1/Asn1Node;->getChild(I[I)Lcom/android/internal/telephony/uicc/asn1/Asn1Node;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/telephony/uicc/asn1/Asn1Node;->asString()Ljava/lang/String;

    move-result-object v1

    .line 1156
    invoke-virtual {p1, v1}, Landroid/service/euicc/EuiccProfileInfo$Builder;->setServiceProviderName(Ljava/lang/String;)Landroid/service/euicc/EuiccProfileInfo$Builder;

    .line 1160
    :cond_1
    new-array v1, v0, [I

    const/16 v2, 0x92

    invoke-virtual {p0, v2, v1}, Lcom/android/internal/telephony/uicc/asn1/Asn1Node;->hasChild(I[I)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1161
    new-array v1, v0, [I

    .line 1162
    invoke-virtual {p0, v2, v1}, Lcom/android/internal/telephony/uicc/asn1/Asn1Node;->getChild(I[I)Lcom/android/internal/telephony/uicc/asn1/Asn1Node;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/telephony/uicc/asn1/Asn1Node;->asString()Ljava/lang/String;

    move-result-object v1

    .line 1161
    invoke-virtual {p1, v1}, Landroid/service/euicc/EuiccProfileInfo$Builder;->setProfileName(Ljava/lang/String;)Landroid/service/euicc/EuiccProfileInfo$Builder;

    .line 1165
    :cond_2
    new-array v1, v0, [I

    const/16 v2, 0xb7

    invoke-virtual {p0, v2, v1}, Lcom/android/internal/telephony/uicc/asn1/Asn1Node;->hasChild(I[I)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1166
    new-array v1, v0, [I

    .line 1167
    invoke-virtual {p0, v2, v1}, Lcom/android/internal/telephony/uicc/asn1/Asn1Node;->getChild(I[I)Lcom/android/internal/telephony/uicc/asn1/Asn1Node;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/telephony/uicc/euicc/EuiccCard;->buildCarrierIdentifier(Lcom/android/internal/telephony/uicc/asn1/Asn1Node;)Landroid/service/carrier/CarrierIdentifier;

    move-result-object v1

    .line 1166
    invoke-virtual {p1, v1}, Landroid/service/euicc/EuiccProfileInfo$Builder;->setCarrierIdentifier(Landroid/service/carrier/CarrierIdentifier;)Landroid/service/euicc/EuiccProfileInfo$Builder;

    .line 1170
    :cond_3
    new-array v1, v0, [I

    const v2, 0x9f70

    invoke-virtual {p0, v2, v1}, Lcom/android/internal/telephony/uicc/asn1/Asn1Node;->hasChild(I[I)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 1172
    new-array v1, v0, [I

    invoke-virtual {p0, v2, v1}, Lcom/android/internal/telephony/uicc/asn1/Asn1Node;->getChild(I[I)Lcom/android/internal/telephony/uicc/asn1/Asn1Node;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/telephony/uicc/asn1/Asn1Node;->asInteger()I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/service/euicc/EuiccProfileInfo$Builder;->setState(I)Landroid/service/euicc/EuiccProfileInfo$Builder;

    goto :goto_0

    .line 1174
    :cond_4
    invoke-virtual {p1, v0}, Landroid/service/euicc/EuiccProfileInfo$Builder;->setState(I)Landroid/service/euicc/EuiccProfileInfo$Builder;

    .line 1177
    :goto_0
    new-array v1, v0, [I

    const/16 v2, 0x95

    invoke-virtual {p0, v2, v1}, Lcom/android/internal/telephony/uicc/asn1/Asn1Node;->hasChild(I[I)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 1179
    new-array v1, v0, [I

    .line 1180
    invoke-virtual {p0, v2, v1}, Lcom/android/internal/telephony/uicc/asn1/Asn1Node;->getChild(I[I)Lcom/android/internal/telephony/uicc/asn1/Asn1Node;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/telephony/uicc/asn1/Asn1Node;->asInteger()I

    move-result v1

    .line 1179
    invoke-virtual {p1, v1}, Landroid/service/euicc/EuiccProfileInfo$Builder;->setProfileClass(I)Landroid/service/euicc/EuiccProfileInfo$Builder;

    goto :goto_1

    .line 1182
    :cond_5
    const/4 v1, 0x2

    invoke-virtual {p1, v1}, Landroid/service/euicc/EuiccProfileInfo$Builder;->setProfileClass(I)Landroid/service/euicc/EuiccProfileInfo$Builder;

    .line 1185
    :goto_1
    new-array v1, v0, [I

    const/16 v2, 0x99

    invoke-virtual {p0, v2, v1}, Lcom/android/internal/telephony/uicc/asn1/Asn1Node;->hasChild(I[I)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 1187
    new-array v1, v0, [I

    .line 1188
    invoke-virtual {p0, v2, v1}, Lcom/android/internal/telephony/uicc/asn1/Asn1Node;->getChild(I[I)Lcom/android/internal/telephony/uicc/asn1/Asn1Node;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/telephony/uicc/asn1/Asn1Node;->asBits()I

    move-result v1

    .line 1187
    invoke-virtual {p1, v1}, Landroid/service/euicc/EuiccProfileInfo$Builder;->setPolicyRules(I)Landroid/service/euicc/EuiccProfileInfo$Builder;

    .line 1191
    :cond_6
    new-array v1, v0, [I

    const v2, 0xbf76

    invoke-virtual {p0, v2, v1}, Lcom/android/internal/telephony/uicc/asn1/Asn1Node;->hasChild(I[I)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 1192
    new-array v0, v0, [I

    invoke-virtual {p0, v2, v0}, Lcom/android/internal/telephony/uicc/asn1/Asn1Node;->getChild(I[I)Lcom/android/internal/telephony/uicc/asn1/Asn1Node;

    move-result-object v0

    const/16 v1, 0xe2

    .line 1193
    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/uicc/asn1/Asn1Node;->getChildren(I)Ljava/util/List;

    move-result-object v0

    .line 1194
    .local v0, "refArDoNodes":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/telephony/uicc/asn1/Asn1Node;>;"
    invoke-static {v0}, Lcom/android/internal/telephony/uicc/euicc/EuiccCard;->buildUiccAccessRule(Ljava/util/List;)[Landroid/telephony/UiccAccessRule;

    move-result-object v1

    .line 1195
    .local v1, "rules":[Landroid/telephony/UiccAccessRule;
    const/4 v2, 0x0

    .line 1196
    .local v2, "rulesList":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/UiccAccessRule;>;"
    if-eqz v1, :cond_7

    .line 1197
    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    .line 1199
    :cond_7
    invoke-virtual {p1, v2}, Landroid/service/euicc/EuiccProfileInfo$Builder;->setUiccAccessRule(Ljava/util/List;)Landroid/service/euicc/EuiccProfileInfo$Builder;

    .line 1201
    .end local v0    # "refArDoNodes":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/telephony/uicc/asn1/Asn1Node;>;"
    .end local v1    # "rules":[Landroid/telephony/UiccAccessRule;
    .end local v2    # "rulesList":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/UiccAccessRule;>;"
    :cond_8
    return-void
.end method

.method private static buildUiccAccessRule(Ljava/util/List;)[Landroid/telephony/UiccAccessRule;
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/internal/telephony/uicc/asn1/Asn1Node;",
            ">;)[",
            "Landroid/telephony/UiccAccessRule;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/uicc/asn1/InvalidAsn1DataException;,
            Lcom/android/internal/telephony/uicc/asn1/TagNotFoundException;
        }
    .end annotation

    .line 1219
    .local p0, "nodes":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/telephony/uicc/asn1/Asn1Node;>;"
    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1220
    const/4 v0, 0x0

    return-object v0

    .line 1222
    :cond_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    .line 1223
    .local v0, "count":I
    new-array v1, v0, [Landroid/telephony/UiccAccessRule;

    .line 1224
    .local v1, "rules":[Landroid/telephony/UiccAccessRule;
    const/4 v2, 0x0

    move v3, v2

    .local v3, "i":I
    :goto_0
    if-ge v3, v0, :cond_3

    .line 1225
    invoke-interface {p0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/internal/telephony/uicc/asn1/Asn1Node;

    .line 1226
    .local v4, "node":Lcom/android/internal/telephony/uicc/asn1/Asn1Node;
    const/16 v5, 0xe1

    new-array v6, v2, [I

    invoke-virtual {v4, v5, v6}, Lcom/android/internal/telephony/uicc/asn1/Asn1Node;->getChild(I[I)Lcom/android/internal/telephony/uicc/asn1/Asn1Node;

    move-result-object v5

    .line 1227
    .local v5, "refDoNode":Lcom/android/internal/telephony/uicc/asn1/Asn1Node;
    const/16 v6, 0xc1

    new-array v7, v2, [I

    invoke-virtual {v5, v6, v7}, Lcom/android/internal/telephony/uicc/asn1/Asn1Node;->getChild(I[I)Lcom/android/internal/telephony/uicc/asn1/Asn1Node;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/internal/telephony/uicc/asn1/Asn1Node;->asBytes()[B

    move-result-object v6

    .line 1229
    .local v6, "signature":[B
    const/4 v7, 0x0

    .line 1230
    .local v7, "packageName":Ljava/lang/String;
    new-array v8, v2, [I

    const/16 v9, 0xca

    invoke-virtual {v5, v9, v8}, Lcom/android/internal/telephony/uicc/asn1/Asn1Node;->hasChild(I[I)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 1231
    new-array v8, v2, [I

    invoke-virtual {v5, v9, v8}, Lcom/android/internal/telephony/uicc/asn1/Asn1Node;->getChild(I[I)Lcom/android/internal/telephony/uicc/asn1/Asn1Node;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/internal/telephony/uicc/asn1/Asn1Node;->asString()Ljava/lang/String;

    move-result-object v7

    .line 1233
    :cond_1
    const-wide/16 v8, 0x0

    .line 1234
    .local v8, "accessType":J
    const/4 v10, 0x1

    new-array v11, v10, [I

    const/16 v12, 0xdb

    aput v12, v11, v2

    const/16 v13, 0xe3

    invoke-virtual {v4, v13, v11}, Lcom/android/internal/telephony/uicc/asn1/Asn1Node;->hasChild(I[I)Z

    move-result v11

    if-eqz v11, :cond_2

    .line 1235
    new-array v10, v10, [I

    aput v12, v10, v2

    invoke-virtual {v4, v13, v10}, Lcom/android/internal/telephony/uicc/asn1/Asn1Node;->getChild(I[I)Lcom/android/internal/telephony/uicc/asn1/Asn1Node;

    move-result-object v10

    .line 1236
    .local v10, "permArDoNode":Lcom/android/internal/telephony/uicc/asn1/Asn1Node;
    invoke-virtual {v10}, Lcom/android/internal/telephony/uicc/asn1/Asn1Node;->asRawLong()J

    move-result-wide v8

    .line 1238
    .end local v10    # "permArDoNode":Lcom/android/internal/telephony/uicc/asn1/Asn1Node;
    :cond_2
    new-instance v10, Landroid/telephony/UiccAccessRule;

    invoke-direct {v10, v6, v7, v8, v9}, Landroid/telephony/UiccAccessRule;-><init>([BLjava/lang/String;J)V

    aput-object v10, v1, v3

    .line 1224
    .end local v4    # "node":Lcom/android/internal/telephony/uicc/asn1/Asn1Node;
    .end local v5    # "refDoNode":Lcom/android/internal/telephony/uicc/asn1/Asn1Node;
    .end local v6    # "signature":[B
    .end local v7    # "packageName":Ljava/lang/String;
    .end local v8    # "accessType":J
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1240
    .end local v3    # "i":I
    :cond_3
    return-object v1
.end method

.method private static createNotification(Lcom/android/internal/telephony/uicc/asn1/Asn1Node;)Landroid/telephony/euicc/EuiccNotification;
    .locals 7
    .param p0, "node"    # Lcom/android/internal/telephony/uicc/asn1/Asn1Node;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/uicc/asn1/TagNotFoundException;,
            Lcom/android/internal/telephony/uicc/asn1/InvalidAsn1DataException;
        }
    .end annotation

    .line 1254
    invoke-virtual {p0}, Lcom/android/internal/telephony/uicc/asn1/Asn1Node;->getTag()I

    move-result v0

    const v1, 0xbf2f

    const/4 v2, 0x0

    if-ne v0, v1, :cond_0

    .line 1255
    move-object v0, p0

    .local v0, "metadataNode":Lcom/android/internal/telephony/uicc/asn1/Asn1Node;
    :goto_0
    goto :goto_1

    .line 1256
    .end local v0    # "metadataNode":Lcom/android/internal/telephony/uicc/asn1/Asn1Node;
    :cond_0
    invoke-virtual {p0}, Lcom/android/internal/telephony/uicc/asn1/Asn1Node;->getTag()I

    move-result v0

    const v3, 0xbf37

    if-ne v0, v3, :cond_1

    .line 1257
    const v0, 0xbf27

    const/4 v3, 0x1

    new-array v3, v3, [I

    aput v1, v3, v2

    invoke-virtual {p0, v0, v3}, Lcom/android/internal/telephony/uicc/asn1/Asn1Node;->getChild(I[I)Lcom/android/internal/telephony/uicc/asn1/Asn1Node;

    move-result-object v0

    goto :goto_0

    .line 1261
    :cond_1
    new-array v0, v2, [I

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/telephony/uicc/asn1/Asn1Node;->getChild(I[I)Lcom/android/internal/telephony/uicc/asn1/Asn1Node;

    move-result-object v0

    .line 1264
    .restart local v0    # "metadataNode":Lcom/android/internal/telephony/uicc/asn1/Asn1Node;
    :goto_1
    new-instance v3, Landroid/telephony/euicc/EuiccNotification;

    const/16 v4, 0x80

    new-array v5, v2, [I

    invoke-virtual {v0, v4, v5}, Lcom/android/internal/telephony/uicc/asn1/Asn1Node;->getChild(I[I)Lcom/android/internal/telephony/uicc/asn1/Asn1Node;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/internal/telephony/uicc/asn1/Asn1Node;->asInteger()I

    move-result v4

    const/16 v5, 0xc

    new-array v6, v2, [I

    .line 1265
    invoke-virtual {v0, v5, v6}, Lcom/android/internal/telephony/uicc/asn1/Asn1Node;->getChild(I[I)Lcom/android/internal/telephony/uicc/asn1/Asn1Node;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/internal/telephony/uicc/asn1/Asn1Node;->asString()Ljava/lang/String;

    move-result-object v5

    const/16 v6, 0x81

    new-array v2, v2, [I

    .line 1266
    invoke-virtual {v0, v6, v2}, Lcom/android/internal/telephony/uicc/asn1/Asn1Node;->getChild(I[I)Lcom/android/internal/telephony/uicc/asn1/Asn1Node;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/telephony/uicc/asn1/Asn1Node;->asBits()I

    move-result v2

    .line 1267
    invoke-virtual {p0}, Lcom/android/internal/telephony/uicc/asn1/Asn1Node;->getTag()I

    move-result v6

    if-ne v6, v1, :cond_2

    const/4 v1, 0x0

    goto :goto_2

    :cond_2
    invoke-virtual {p0}, Lcom/android/internal/telephony/uicc/asn1/Asn1Node;->toBytes()[B

    move-result-object v1

    :goto_2
    invoke-direct {v3, v4, v5, v2, v1}, Landroid/telephony/euicc/EuiccNotification;-><init>(ILjava/lang/String;I[B)V

    .line 1264
    return-object v3
.end method

.method public static getDeviceId(Ljava/lang/String;Lcom/android/internal/telephony/uicc/euicc/EuiccSpecVersion;)[B
    .locals 5
    .param p0, "imei"    # Ljava/lang/String;
    .param p1, "specVersion"    # Lcom/android/internal/telephony/uicc/euicc/EuiccSpecVersion;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
        visibility = .enum Lcom/android/internal/annotations/VisibleForTesting$Visibility;->PRIVATE:Lcom/android/internal/annotations/VisibleForTesting$Visibility;
    .end annotation

    .line 997
    const/16 v0, 0x8

    new-array v0, v0, [B

    .line 999
    .local v0, "imeiBytes":[B
    sget-object v1, Lcom/android/internal/telephony/uicc/euicc/EuiccCard;->SGP22_V_2_1:Lcom/android/internal/telephony/uicc/euicc/EuiccSpecVersion;

    invoke-virtual {p1, v1}, Lcom/android/internal/telephony/uicc/euicc/EuiccSpecVersion;->compareTo(Lcom/android/internal/telephony/uicc/euicc/EuiccSpecVersion;)I

    move-result v1

    if-ltz v1, :cond_0

    .line 1023
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v2, 0x46

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 1024
    invoke-static {p0, v0}, Lcom/android/internal/telephony/uicc/IccUtils;->bcdToBytes(Ljava/lang/String;[B)V

    .line 1028
    const/4 v1, 0x7

    aget-byte v2, v0, v1

    .line 1029
    .local v2, "last":B
    and-int/lit16 v3, v2, 0xff

    shl-int/lit8 v3, v3, 0x4

    and-int/lit16 v4, v2, 0xff

    ushr-int/lit8 v4, v4, 0x4

    or-int/2addr v3, v4

    int-to-byte v3, v3

    aput-byte v3, v0, v1

    .line 1030
    .end local v2    # "last":B
    goto :goto_0

    .line 1042
    :cond_0
    invoke-static {p0, v0}, Lcom/android/internal/telephony/uicc/IccUtils;->bcdToBytes(Ljava/lang/String;[B)V

    .line 1044
    :goto_0
    return-object v0
.end method

.method private getOrExtractSpecVersion([B)Lcom/android/internal/telephony/uicc/euicc/EuiccSpecVersion;
    .locals 3
    .param p1, "selectResponse"    # [B

    .line 1071
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/euicc/EuiccCard;->mSpecVersion:Lcom/android/internal/telephony/uicc/euicc/EuiccSpecVersion;

    if-eqz v0, :cond_0

    .line 1072
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/euicc/EuiccCard;->mSpecVersion:Lcom/android/internal/telephony/uicc/euicc/EuiccSpecVersion;

    return-object v0

    .line 1075
    :cond_0
    invoke-static {p1}, Lcom/android/internal/telephony/uicc/euicc/EuiccSpecVersion;->fromOpenChannelResponse([B)Lcom/android/internal/telephony/uicc/euicc/EuiccSpecVersion;

    move-result-object v0

    .line 1076
    .local v0, "ver":Lcom/android/internal/telephony/uicc/euicc/EuiccSpecVersion;
    if-eqz v0, :cond_2

    .line 1077
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/euicc/EuiccCard;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1078
    :try_start_0
    iget-object v2, p0, Lcom/android/internal/telephony/uicc/euicc/EuiccCard;->mSpecVersion:Lcom/android/internal/telephony/uicc/euicc/EuiccSpecVersion;

    if-nez v2, :cond_1

    .line 1079
    iput-object v0, p0, Lcom/android/internal/telephony/uicc/euicc/EuiccCard;->mSpecVersion:Lcom/android/internal/telephony/uicc/euicc/EuiccSpecVersion;

    .line 1081
    :cond_1
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .line 1083
    :cond_2
    :goto_0
    return-object v0
.end method

.method public static synthetic lambda$authenticateServer$32(Lcom/android/internal/telephony/uicc/euicc/EuiccCard;Ljava/lang/String;[B[B[B[BLcom/android/internal/telephony/uicc/euicc/apdu/RequestBuilder;)V
    .locals 8
    .param p1, "matchingId"    # Ljava/lang/String;
    .param p2, "serverSigned1"    # [B
    .param p3, "serverSignature1"    # [B
    .param p4, "euiccCiPkIdToBeUsed"    # [B
    .param p5, "serverCertificate"    # [B
    .param p6, "requestBuilder"    # Lcom/android/internal/telephony/uicc/euicc/apdu/RequestBuilder;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/uicc/euicc/EuiccCardException;,
            Lcom/android/internal/telephony/uicc/asn1/TagNotFoundException;,
            Lcom/android/internal/telephony/uicc/asn1/InvalidAsn1DataException;
        }
    .end annotation

    .line 633
    invoke-virtual {p0}, Lcom/android/internal/telephony/uicc/euicc/EuiccCard;->getDeviceId()[B

    move-result-object v0

    .line 635
    .local v0, "imeiBytes":[B
    const/4 v1, 0x4

    new-array v2, v1, [B

    .line 636
    .local v2, "tacBytes":[B
    const/4 v3, 0x0

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 638
    const/16 v1, 0xa1

    invoke-static {v1}, Lcom/android/internal/telephony/uicc/asn1/Asn1Node;->newBuilder(I)Lcom/android/internal/telephony/uicc/asn1/Asn1Node$Builder;

    move-result-object v4

    .line 639
    .local v4, "devCapsBuilder":Lcom/android/internal/telephony/uicc/asn1/Asn1Node$Builder;
    invoke-virtual {p0}, Lcom/android/internal/telephony/uicc/euicc/EuiccCard;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x107004c

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v5

    .line 641
    .local v5, "devCapsStrings":[Ljava/lang/String;
    if-eqz v5, :cond_0

    .line 642
    array-length v6, v5

    :goto_0
    if-ge v3, v6, :cond_1

    aget-object v7, v5, v3

    .line 643
    .local v7, "devCapItem":Ljava/lang/String;
    invoke-virtual {p0, v4, v7}, Lcom/android/internal/telephony/uicc/euicc/EuiccCard;->addDeviceCapability(Lcom/android/internal/telephony/uicc/asn1/Asn1Node$Builder;Ljava/lang/String;)V

    .line 642
    .end local v7    # "devCapItem":Ljava/lang/String;
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 646
    :cond_0
    const-string v3, "No device capabilities set."

    invoke-static {v3}, Lcom/android/internal/telephony/uicc/euicc/EuiccCard;->logd(Ljava/lang/String;)V

    .line 649
    :cond_1
    const/16 v3, 0xa0

    invoke-static {v3}, Lcom/android/internal/telephony/uicc/asn1/Asn1Node;->newBuilder(I)Lcom/android/internal/telephony/uicc/asn1/Asn1Node$Builder;

    move-result-object v3

    .line 650
    const/16 v6, 0x80

    invoke-virtual {v3, v6, p1}, Lcom/android/internal/telephony/uicc/asn1/Asn1Node$Builder;->addChildAsString(ILjava/lang/String;)Lcom/android/internal/telephony/uicc/asn1/Asn1Node$Builder;

    move-result-object v3

    .line 651
    invoke-static {v1}, Lcom/android/internal/telephony/uicc/asn1/Asn1Node;->newBuilder(I)Lcom/android/internal/telephony/uicc/asn1/Asn1Node$Builder;

    move-result-object v1

    .line 652
    invoke-virtual {v1, v6, v2}, Lcom/android/internal/telephony/uicc/asn1/Asn1Node$Builder;->addChildAsBytes(I[B)Lcom/android/internal/telephony/uicc/asn1/Asn1Node$Builder;

    move-result-object v1

    .line 653
    invoke-virtual {v1, v4}, Lcom/android/internal/telephony/uicc/asn1/Asn1Node$Builder;->addChild(Lcom/android/internal/telephony/uicc/asn1/Asn1Node$Builder;)Lcom/android/internal/telephony/uicc/asn1/Asn1Node$Builder;

    move-result-object v1

    const/16 v6, 0x82

    .line 654
    invoke-virtual {v1, v6, v0}, Lcom/android/internal/telephony/uicc/asn1/Asn1Node$Builder;->addChildAsBytes(I[B)Lcom/android/internal/telephony/uicc/asn1/Asn1Node$Builder;

    move-result-object v1

    .line 651
    invoke-virtual {v3, v1}, Lcom/android/internal/telephony/uicc/asn1/Asn1Node$Builder;->addChild(Lcom/android/internal/telephony/uicc/asn1/Asn1Node$Builder;)Lcom/android/internal/telephony/uicc/asn1/Asn1Node$Builder;

    move-result-object v1

    .line 656
    .local v1, "ctxParams1Builder":Lcom/android/internal/telephony/uicc/asn1/Asn1Node$Builder;
    const v3, 0xbf38

    invoke-static {v3}, Lcom/android/internal/telephony/uicc/asn1/Asn1Node;->newBuilder(I)Lcom/android/internal/telephony/uicc/asn1/Asn1Node$Builder;

    move-result-object v3

    new-instance v6, Lcom/android/internal/telephony/uicc/asn1/Asn1Decoder;

    invoke-direct {v6, p2}, Lcom/android/internal/telephony/uicc/asn1/Asn1Decoder;-><init>([B)V

    .line 657
    invoke-virtual {v6}, Lcom/android/internal/telephony/uicc/asn1/Asn1Decoder;->nextNode()Lcom/android/internal/telephony/uicc/asn1/Asn1Node;

    move-result-object v6

    invoke-virtual {v3, v6}, Lcom/android/internal/telephony/uicc/asn1/Asn1Node$Builder;->addChild(Lcom/android/internal/telephony/uicc/asn1/Asn1Node;)Lcom/android/internal/telephony/uicc/asn1/Asn1Node$Builder;

    move-result-object v3

    new-instance v6, Lcom/android/internal/telephony/uicc/asn1/Asn1Decoder;

    invoke-direct {v6, p3}, Lcom/android/internal/telephony/uicc/asn1/Asn1Decoder;-><init>([B)V

    .line 658
    invoke-virtual {v6}, Lcom/android/internal/telephony/uicc/asn1/Asn1Decoder;->nextNode()Lcom/android/internal/telephony/uicc/asn1/Asn1Node;

    move-result-object v6

    invoke-virtual {v3, v6}, Lcom/android/internal/telephony/uicc/asn1/Asn1Node$Builder;->addChild(Lcom/android/internal/telephony/uicc/asn1/Asn1Node;)Lcom/android/internal/telephony/uicc/asn1/Asn1Node$Builder;

    move-result-object v3

    new-instance v6, Lcom/android/internal/telephony/uicc/asn1/Asn1Decoder;

    invoke-direct {v6, p4}, Lcom/android/internal/telephony/uicc/asn1/Asn1Decoder;-><init>([B)V

    .line 659
    invoke-virtual {v6}, Lcom/android/internal/telephony/uicc/asn1/Asn1Decoder;->nextNode()Lcom/android/internal/telephony/uicc/asn1/Asn1Node;

    move-result-object v6

    invoke-virtual {v3, v6}, Lcom/android/internal/telephony/uicc/asn1/Asn1Node$Builder;->addChild(Lcom/android/internal/telephony/uicc/asn1/Asn1Node;)Lcom/android/internal/telephony/uicc/asn1/Asn1Node$Builder;

    move-result-object v3

    new-instance v6, Lcom/android/internal/telephony/uicc/asn1/Asn1Decoder;

    invoke-direct {v6, p5}, Lcom/android/internal/telephony/uicc/asn1/Asn1Decoder;-><init>([B)V

    .line 660
    invoke-virtual {v6}, Lcom/android/internal/telephony/uicc/asn1/Asn1Decoder;->nextNode()Lcom/android/internal/telephony/uicc/asn1/Asn1Node;

    move-result-object v6

    invoke-virtual {v3, v6}, Lcom/android/internal/telephony/uicc/asn1/Asn1Node$Builder;->addChild(Lcom/android/internal/telephony/uicc/asn1/Asn1Node;)Lcom/android/internal/telephony/uicc/asn1/Asn1Node$Builder;

    move-result-object v3

    .line 661
    invoke-virtual {v3, v1}, Lcom/android/internal/telephony/uicc/asn1/Asn1Node$Builder;->addChild(Lcom/android/internal/telephony/uicc/asn1/Asn1Node$Builder;)Lcom/android/internal/telephony/uicc/asn1/Asn1Node$Builder;

    move-result-object v3

    .line 662
    invoke-virtual {v3}, Lcom/android/internal/telephony/uicc/asn1/Asn1Node$Builder;->build()Lcom/android/internal/telephony/uicc/asn1/Asn1Node;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/internal/telephony/uicc/asn1/Asn1Node;->toHex()Ljava/lang/String;

    move-result-object v3

    .line 656
    invoke-virtual {p6, v3}, Lcom/android/internal/telephony/uicc/euicc/apdu/RequestBuilder;->addStoreData(Ljava/lang/String;)V

    .line 663
    return-void
.end method

.method static synthetic lambda$authenticateServer$33([B)[B
    .locals 1
    .param p0, "response"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/uicc/euicc/EuiccCardException;,
            Lcom/android/internal/telephony/uicc/asn1/TagNotFoundException;,
            Lcom/android/internal/telephony/uicc/asn1/InvalidAsn1DataException;
        }
    .end annotation

    .line 665
    const/4 v0, 0x3

    invoke-static {p0, v0}, Lcom/android/internal/telephony/uicc/euicc/EuiccCard;->parseResponseAndCheckSimpleError([BI)Lcom/android/internal/telephony/uicc/asn1/Asn1Node;

    move-result-object v0

    .line 666
    invoke-virtual {v0}, Lcom/android/internal/telephony/uicc/asn1/Asn1Node;->toBytes()[B

    move-result-object v0

    .line 665
    return-object v0
.end method

.method static synthetic lambda$cancelSession$38([BILcom/android/internal/telephony/uicc/euicc/apdu/RequestBuilder;)V
    .locals 2
    .param p0, "transactionId"    # [B
    .param p1, "reason"    # I
    .param p2, "requestBuilder"    # Lcom/android/internal/telephony/uicc/euicc/apdu/RequestBuilder;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/uicc/euicc/EuiccCardException;,
            Lcom/android/internal/telephony/uicc/asn1/TagNotFoundException;,
            Lcom/android/internal/telephony/uicc/asn1/InvalidAsn1DataException;
        }
    .end annotation

    .line 785
    const v0, 0xbf41

    invoke-static {v0}, Lcom/android/internal/telephony/uicc/asn1/Asn1Node;->newBuilder(I)Lcom/android/internal/telephony/uicc/asn1/Asn1Node$Builder;

    move-result-object v0

    .line 786
    const/16 v1, 0x80

    invoke-virtual {v0, v1, p0}, Lcom/android/internal/telephony/uicc/asn1/Asn1Node$Builder;->addChildAsBytes(I[B)Lcom/android/internal/telephony/uicc/asn1/Asn1Node$Builder;

    move-result-object v0

    .line 787
    const/16 v1, 0x81

    invoke-virtual {v0, v1, p1}, Lcom/android/internal/telephony/uicc/asn1/Asn1Node$Builder;->addChildAsInteger(II)Lcom/android/internal/telephony/uicc/asn1/Asn1Node$Builder;

    move-result-object v0

    .line 788
    invoke-virtual {v0}, Lcom/android/internal/telephony/uicc/asn1/Asn1Node$Builder;->build()Lcom/android/internal/telephony/uicc/asn1/Asn1Node;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/uicc/asn1/Asn1Node;->toHex()Ljava/lang/String;

    move-result-object v0

    .line 785
    invoke-virtual {p2, v0}, Lcom/android/internal/telephony/uicc/euicc/apdu/RequestBuilder;->addStoreData(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic lambda$cancelSession$39([B)[B
    .locals 1
    .param p0, "response"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/uicc/euicc/EuiccCardException;,
            Lcom/android/internal/telephony/uicc/asn1/TagNotFoundException;,
            Lcom/android/internal/telephony/uicc/asn1/InvalidAsn1DataException;
        }
    .end annotation

    .line 790
    const/4 v0, 0x4

    invoke-static {p0, v0}, Lcom/android/internal/telephony/uicc/euicc/EuiccCard;->parseResponseAndCheckSimpleError([BI)Lcom/android/internal/telephony/uicc/asn1/Asn1Node;

    move-result-object v0

    .line 791
    invoke-virtual {v0}, Lcom/android/internal/telephony/uicc/asn1/Asn1Node;->toBytes()[B

    move-result-object v0

    .line 790
    return-object v0
.end method

.method static synthetic lambda$deleteProfile$14(Ljava/lang/String;Lcom/android/internal/telephony/uicc/euicc/apdu/RequestBuilder;)V
    .locals 3
    .param p0, "iccid"    # Ljava/lang/String;
    .param p1, "requestBuilder"    # Lcom/android/internal/telephony/uicc/euicc/apdu/RequestBuilder;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/uicc/euicc/EuiccCardException;,
            Lcom/android/internal/telephony/uicc/asn1/TagNotFoundException;,
            Lcom/android/internal/telephony/uicc/asn1/InvalidAsn1DataException;
        }
    .end annotation

    .line 427
    invoke-static {p0}, Lcom/android/internal/telephony/uicc/euicc/EuiccCard;->padTrailingFs(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/telephony/uicc/IccUtils;->bcdToBytes(Ljava/lang/String;)[B

    move-result-object v0

    .line 428
    .local v0, "iccidBytes":[B
    const v1, 0xbf33

    invoke-static {v1}, Lcom/android/internal/telephony/uicc/asn1/Asn1Node;->newBuilder(I)Lcom/android/internal/telephony/uicc/asn1/Asn1Node$Builder;

    move-result-object v1

    .line 429
    const/16 v2, 0x5a

    invoke-virtual {v1, v2, v0}, Lcom/android/internal/telephony/uicc/asn1/Asn1Node$Builder;->addChildAsBytes(I[B)Lcom/android/internal/telephony/uicc/asn1/Asn1Node$Builder;

    move-result-object v1

    .line 430
    invoke-virtual {v1}, Lcom/android/internal/telephony/uicc/asn1/Asn1Node$Builder;->build()Lcom/android/internal/telephony/uicc/asn1/Asn1Node;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/telephony/uicc/asn1/Asn1Node;->toHex()Ljava/lang/String;

    move-result-object v1

    .line 428
    invoke-virtual {p1, v1}, Lcom/android/internal/telephony/uicc/euicc/apdu/RequestBuilder;->addStoreData(Ljava/lang/String;)V

    .line 431
    return-void
.end method

.method static synthetic lambda$deleteProfile$15([B)Ljava/lang/Void;
    .locals 3
    .param p0, "response"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/uicc/euicc/EuiccCardException;,
            Lcom/android/internal/telephony/uicc/asn1/TagNotFoundException;,
            Lcom/android/internal/telephony/uicc/asn1/InvalidAsn1DataException;
        }
    .end annotation

    .line 434
    invoke-static {p0}, Lcom/android/internal/telephony/uicc/euicc/EuiccCard;->parseSimpleResult([B)I

    move-result v0

    .line 435
    .local v0, "result":I
    if-nez v0, :cond_0

    .line 439
    const/4 v1, 0x0

    return-object v1

    .line 436
    :cond_0
    new-instance v1, Lcom/android/internal/telephony/uicc/euicc/EuiccCardErrorException;

    const/16 v2, 0xc

    invoke-direct {v1, v2, v0}, Lcom/android/internal/telephony/uicc/euicc/EuiccCardErrorException;-><init>(II)V

    throw v1
.end method

.method static synthetic lambda$disableProfile$6(Ljava/lang/String;ZLcom/android/internal/telephony/uicc/euicc/apdu/RequestBuilder;)V
    .locals 4
    .param p0, "iccid"    # Ljava/lang/String;
    .param p1, "refresh"    # Z
    .param p2, "requestBuilder"    # Lcom/android/internal/telephony/uicc/euicc/apdu/RequestBuilder;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/uicc/euicc/EuiccCardException;,
            Lcom/android/internal/telephony/uicc/asn1/TagNotFoundException;,
            Lcom/android/internal/telephony/uicc/asn1/InvalidAsn1DataException;
        }
    .end annotation

    .line 287
    invoke-static {p0}, Lcom/android/internal/telephony/uicc/euicc/EuiccCard;->padTrailingFs(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/telephony/uicc/IccUtils;->bcdToBytes(Ljava/lang/String;)[B

    move-result-object v0

    .line 288
    .local v0, "iccidBytes":[B
    const v1, 0xbf32

    invoke-static {v1}, Lcom/android/internal/telephony/uicc/asn1/Asn1Node;->newBuilder(I)Lcom/android/internal/telephony/uicc/asn1/Asn1Node$Builder;

    move-result-object v1

    .line 289
    const/16 v2, 0xa0

    invoke-static {v2}, Lcom/android/internal/telephony/uicc/asn1/Asn1Node;->newBuilder(I)Lcom/android/internal/telephony/uicc/asn1/Asn1Node$Builder;

    move-result-object v2

    .line 290
    const/16 v3, 0x5a

    invoke-virtual {v2, v3, v0}, Lcom/android/internal/telephony/uicc/asn1/Asn1Node$Builder;->addChildAsBytes(I[B)Lcom/android/internal/telephony/uicc/asn1/Asn1Node$Builder;

    move-result-object v2

    .line 289
    invoke-virtual {v1, v2}, Lcom/android/internal/telephony/uicc/asn1/Asn1Node$Builder;->addChild(Lcom/android/internal/telephony/uicc/asn1/Asn1Node$Builder;)Lcom/android/internal/telephony/uicc/asn1/Asn1Node$Builder;

    move-result-object v1

    .line 291
    const/16 v2, 0x81

    invoke-virtual {v1, v2, p1}, Lcom/android/internal/telephony/uicc/asn1/Asn1Node$Builder;->addChildAsBoolean(IZ)Lcom/android/internal/telephony/uicc/asn1/Asn1Node$Builder;

    move-result-object v1

    .line 292
    invoke-virtual {v1}, Lcom/android/internal/telephony/uicc/asn1/Asn1Node$Builder;->build()Lcom/android/internal/telephony/uicc/asn1/Asn1Node;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/telephony/uicc/asn1/Asn1Node;->toHex()Ljava/lang/String;

    move-result-object v1

    .line 288
    invoke-virtual {p2, v1}, Lcom/android/internal/telephony/uicc/euicc/apdu/RequestBuilder;->addStoreData(Ljava/lang/String;)V

    .line 293
    return-void
.end method

.method static synthetic lambda$disableProfile$7(Ljava/lang/String;[B)Ljava/lang/Void;
    .locals 4
    .param p0, "iccid"    # Ljava/lang/String;
    .param p1, "response"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/uicc/euicc/EuiccCardException;,
            Lcom/android/internal/telephony/uicc/asn1/TagNotFoundException;,
            Lcom/android/internal/telephony/uicc/asn1/InvalidAsn1DataException;
        }
    .end annotation

    .line 297
    invoke-static {p1}, Lcom/android/internal/telephony/uicc/euicc/EuiccCard;->parseSimpleResult([B)I

    move-result v0

    .line 298
    .local v0, "result":I
    const/4 v1, 0x0

    if-eqz v0, :cond_1

    const/4 v2, 0x2

    if-ne v0, v2, :cond_0

    .line 302
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Profile is already disabled, iccid: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 303
    invoke-static {p0}, Landroid/telephony/SubscriptionInfo;->givePrintableIccid(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 302
    invoke-static {v2}, Lcom/android/internal/telephony/uicc/euicc/EuiccCard;->logd(Ljava/lang/String;)V

    .line 304
    return-object v1

    .line 306
    :cond_0
    new-instance v1, Lcom/android/internal/telephony/uicc/euicc/EuiccCardErrorException;

    const/16 v2, 0xb

    invoke-direct {v1, v2, v0}, Lcom/android/internal/telephony/uicc/euicc/EuiccCardErrorException;-><init>(II)V

    throw v1

    .line 300
    :cond_1
    return-object v1
.end method

.method static synthetic lambda$getAllProfiles$2(Lcom/android/internal/telephony/uicc/euicc/apdu/RequestBuilder;)V
    .locals 3
    .param p0, "requestBuilder"    # Lcom/android/internal/telephony/uicc/euicc/apdu/RequestBuilder;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/uicc/euicc/EuiccCardException;,
            Lcom/android/internal/telephony/uicc/asn1/TagNotFoundException;,
            Lcom/android/internal/telephony/uicc/asn1/InvalidAsn1DataException;
        }
    .end annotation

    .line 211
    const v0, 0xbf2d

    invoke-static {v0}, Lcom/android/internal/telephony/uicc/asn1/Asn1Node;->newBuilder(I)Lcom/android/internal/telephony/uicc/asn1/Asn1Node$Builder;

    move-result-object v0

    sget-object v1, Lcom/android/internal/telephony/uicc/euicc/Tags;->EUICC_PROFILE_TAGS:[B

    .line 212
    const/16 v2, 0x5c

    invoke-virtual {v0, v2, v1}, Lcom/android/internal/telephony/uicc/asn1/Asn1Node$Builder;->addChildAsBytes(I[B)Lcom/android/internal/telephony/uicc/asn1/Asn1Node$Builder;

    move-result-object v0

    .line 213
    invoke-virtual {v0}, Lcom/android/internal/telephony/uicc/asn1/Asn1Node$Builder;->build()Lcom/android/internal/telephony/uicc/asn1/Asn1Node;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/uicc/asn1/Asn1Node;->toHex()Ljava/lang/String;

    move-result-object v0

    .line 211
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/uicc/euicc/apdu/RequestBuilder;->addStoreData(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic lambda$getAllProfiles$3([B)[Landroid/service/euicc/EuiccProfileInfo;
    .locals 11
    .param p0, "response"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/uicc/euicc/EuiccCardException;,
            Lcom/android/internal/telephony/uicc/asn1/TagNotFoundException;,
            Lcom/android/internal/telephony/uicc/asn1/InvalidAsn1DataException;
        }
    .end annotation

    .line 215
    new-instance v0, Lcom/android/internal/telephony/uicc/asn1/Asn1Decoder;

    invoke-direct {v0, p0}, Lcom/android/internal/telephony/uicc/asn1/Asn1Decoder;-><init>([B)V

    invoke-virtual {v0}, Lcom/android/internal/telephony/uicc/asn1/Asn1Decoder;->nextNode()Lcom/android/internal/telephony/uicc/asn1/Asn1Node;

    move-result-object v0

    const/4 v1, 0x0

    new-array v2, v1, [I

    .line 216
    const/16 v3, 0xa0

    invoke-virtual {v0, v3, v2}, Lcom/android/internal/telephony/uicc/asn1/Asn1Node;->getChild(I[I)Lcom/android/internal/telephony/uicc/asn1/Asn1Node;

    move-result-object v0

    const/16 v2, 0xe3

    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/uicc/asn1/Asn1Node;->getChildren(I)Ljava/util/List;

    move-result-object v0

    .line 217
    .local v0, "profileNodes":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/telephony/uicc/asn1/Asn1Node;>;"
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    .line 218
    .local v2, "size":I
    new-array v3, v2, [Landroid/service/euicc/EuiccProfileInfo;

    .line 219
    .local v3, "profiles":[Landroid/service/euicc/EuiccProfileInfo;
    const/4 v4, 0x0

    .line 220
    .local v4, "profileCount":I
    move v5, v4

    move v4, v1

    .local v4, "i":I
    .local v5, "profileCount":I
    :goto_0
    if-ge v4, v2, :cond_1

    .line 221
    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/internal/telephony/uicc/asn1/Asn1Node;

    .line 222
    .local v6, "profileNode":Lcom/android/internal/telephony/uicc/asn1/Asn1Node;
    new-array v7, v1, [I

    const/16 v8, 0x5a

    invoke-virtual {v6, v8, v7}, Lcom/android/internal/telephony/uicc/asn1/Asn1Node;->hasChild(I[I)Z

    move-result v7

    if-nez v7, :cond_0

    .line 223
    const-string v7, "Profile must have an ICCID."

    invoke-static {v7}, Lcom/android/internal/telephony/uicc/euicc/EuiccCard;->loge(Ljava/lang/String;)V

    .line 224
    goto :goto_1

    .line 226
    :cond_0
    new-array v7, v1, [I

    .line 227
    invoke-virtual {v6, v8, v7}, Lcom/android/internal/telephony/uicc/asn1/Asn1Node;->getChild(I[I)Lcom/android/internal/telephony/uicc/asn1/Asn1Node;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/internal/telephony/uicc/asn1/Asn1Node;->asBytes()[B

    move-result-object v7

    invoke-static {v7}, Lcom/android/internal/telephony/uicc/euicc/EuiccCard;->stripTrailingFs([B)Ljava/lang/String;

    move-result-object v7

    .line 228
    .local v7, "strippedIccIdString":Ljava/lang/String;
    new-instance v8, Landroid/service/euicc/EuiccProfileInfo$Builder;

    invoke-direct {v8, v7}, Landroid/service/euicc/EuiccProfileInfo$Builder;-><init>(Ljava/lang/String;)V

    .line 230
    .local v8, "profileBuilder":Landroid/service/euicc/EuiccProfileInfo$Builder;
    invoke-static {v6, v8}, Lcom/android/internal/telephony/uicc/euicc/EuiccCard;->buildProfile(Lcom/android/internal/telephony/uicc/asn1/Asn1Node;Landroid/service/euicc/EuiccProfileInfo$Builder;)V

    .line 232
    invoke-virtual {v8}, Landroid/service/euicc/EuiccProfileInfo$Builder;->build()Landroid/service/euicc/EuiccProfileInfo;

    move-result-object v9

    .line 233
    .local v9, "profile":Landroid/service/euicc/EuiccProfileInfo;
    add-int/lit8 v10, v5, 0x1

    .local v10, "profileCount":I
    aput-object v9, v3, v5

    .line 220
    .end local v5    # "profileCount":I
    .end local v6    # "profileNode":Lcom/android/internal/telephony/uicc/asn1/Asn1Node;
    .end local v7    # "strippedIccIdString":Ljava/lang/String;
    .end local v8    # "profileBuilder":Landroid/service/euicc/EuiccProfileInfo$Builder;
    .end local v9    # "profile":Landroid/service/euicc/EuiccProfileInfo;
    move v5, v10

    .end local v10    # "profileCount":I
    .restart local v5    # "profileCount":I
    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 235
    .end local v4    # "i":I
    :cond_1
    return-object v3
.end method

.method static synthetic lambda$getDefaultSmdpAddress$18(Lcom/android/internal/telephony/uicc/euicc/apdu/RequestBuilder;)V
    .locals 1
    .param p0, "requestBuilder"    # Lcom/android/internal/telephony/uicc/euicc/apdu/RequestBuilder;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/uicc/euicc/EuiccCardException;,
            Lcom/android/internal/telephony/uicc/asn1/TagNotFoundException;,
            Lcom/android/internal/telephony/uicc/asn1/InvalidAsn1DataException;
        }
    .end annotation

    .line 480
    nop

    .line 481
    const v0, 0xbf3c

    invoke-static {v0}, Lcom/android/internal/telephony/uicc/asn1/Asn1Node;->newBuilder(I)Lcom/android/internal/telephony/uicc/asn1/Asn1Node$Builder;

    move-result-object v0

    .line 482
    invoke-virtual {v0}, Lcom/android/internal/telephony/uicc/asn1/Asn1Node$Builder;->build()Lcom/android/internal/telephony/uicc/asn1/Asn1Node;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/uicc/asn1/Asn1Node;->toHex()Ljava/lang/String;

    move-result-object v0

    .line 480
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/uicc/euicc/apdu/RequestBuilder;->addStoreData(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic lambda$getDefaultSmdpAddress$19([B)Ljava/lang/String;
    .locals 3
    .param p0, "response"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/uicc/euicc/EuiccCardException;,
            Lcom/android/internal/telephony/uicc/asn1/TagNotFoundException;,
            Lcom/android/internal/telephony/uicc/asn1/InvalidAsn1DataException;
        }
    .end annotation

    .line 483
    invoke-static {p0}, Lcom/android/internal/telephony/uicc/euicc/EuiccCard;->parseResponse([B)Lcom/android/internal/telephony/uicc/asn1/Asn1Node;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [I

    const/16 v2, 0x80

    invoke-virtual {v0, v2, v1}, Lcom/android/internal/telephony/uicc/asn1/Asn1Node;->getChild(I[I)Lcom/android/internal/telephony/uicc/asn1/Asn1Node;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/uicc/asn1/Asn1Node;->asString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic lambda$getEid$10(Lcom/android/internal/telephony/uicc/euicc/apdu/RequestBuilder;)V
    .locals 4
    .param p0, "requestBuilder"    # Lcom/android/internal/telephony/uicc/euicc/apdu/RequestBuilder;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/uicc/euicc/EuiccCardException;,
            Lcom/android/internal/telephony/uicc/asn1/TagNotFoundException;,
            Lcom/android/internal/telephony/uicc/asn1/InvalidAsn1DataException;
        }
    .end annotation

    .line 374
    const v0, 0xbf3e

    invoke-static {v0}, Lcom/android/internal/telephony/uicc/asn1/Asn1Node;->newBuilder(I)Lcom/android/internal/telephony/uicc/asn1/Asn1Node$Builder;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [B

    const/4 v2, 0x0

    const/16 v3, 0x5a

    aput-byte v3, v1, v2

    .line 375
    const/16 v2, 0x5c

    invoke-virtual {v0, v2, v1}, Lcom/android/internal/telephony/uicc/asn1/Asn1Node$Builder;->addChildAsBytes(I[B)Lcom/android/internal/telephony/uicc/asn1/Asn1Node$Builder;

    move-result-object v0

    .line 376
    invoke-virtual {v0}, Lcom/android/internal/telephony/uicc/asn1/Asn1Node$Builder;->build()Lcom/android/internal/telephony/uicc/asn1/Asn1Node;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/uicc/asn1/Asn1Node;->toHex()Ljava/lang/String;

    move-result-object v0

    .line 374
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/uicc/euicc/apdu/RequestBuilder;->addStoreData(Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic lambda$getEid$11(Lcom/android/internal/telephony/uicc/euicc/EuiccCard;[B)Ljava/lang/String;
    .locals 3
    .param p1, "response"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/uicc/euicc/EuiccCardException;,
            Lcom/android/internal/telephony/uicc/asn1/TagNotFoundException;,
            Lcom/android/internal/telephony/uicc/asn1/InvalidAsn1DataException;
        }
    .end annotation

    .line 378
    invoke-static {p1}, Lcom/android/internal/telephony/uicc/euicc/EuiccCard;->parseResponse([B)Lcom/android/internal/telephony/uicc/asn1/Asn1Node;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [I

    .line 379
    const/16 v2, 0x5a

    invoke-virtual {v0, v2, v1}, Lcom/android/internal/telephony/uicc/asn1/Asn1Node;->getChild(I[I)Lcom/android/internal/telephony/uicc/asn1/Asn1Node;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/uicc/asn1/Asn1Node;->asBytes()[B

    move-result-object v0

    .line 378
    invoke-static {v0}, Lcom/android/internal/telephony/uicc/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v0

    .line 380
    .local v0, "eid":Ljava/lang/String;
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/euicc/EuiccCard;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 381
    :try_start_0
    iput-object v0, p0, Lcom/android/internal/telephony/uicc/euicc/EuiccCard;->mEid:Ljava/lang/String;

    .line 382
    iput-object v0, p0, Lcom/android/internal/telephony/uicc/euicc/EuiccCard;->mCardId:Ljava/lang/String;

    .line 383
    monitor-exit v1

    .line 384
    return-object v0

    .line 383
    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method static synthetic lambda$getEuiccChallenge$26(Lcom/android/internal/telephony/uicc/euicc/apdu/RequestBuilder;)V
    .locals 1
    .param p0, "requestBuilder"    # Lcom/android/internal/telephony/uicc/euicc/apdu/RequestBuilder;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/uicc/euicc/EuiccCardException;,
            Lcom/android/internal/telephony/uicc/asn1/TagNotFoundException;,
            Lcom/android/internal/telephony/uicc/asn1/InvalidAsn1DataException;
        }
    .end annotation

    .line 576
    nop

    .line 577
    const v0, 0xbf2e

    invoke-static {v0}, Lcom/android/internal/telephony/uicc/asn1/Asn1Node;->newBuilder(I)Lcom/android/internal/telephony/uicc/asn1/Asn1Node$Builder;

    move-result-object v0

    .line 578
    invoke-virtual {v0}, Lcom/android/internal/telephony/uicc/asn1/Asn1Node$Builder;->build()Lcom/android/internal/telephony/uicc/asn1/Asn1Node;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/uicc/asn1/Asn1Node;->toHex()Ljava/lang/String;

    move-result-object v0

    .line 576
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/uicc/euicc/apdu/RequestBuilder;->addStoreData(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic lambda$getEuiccChallenge$27([B)[B
    .locals 3
    .param p0, "response"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/uicc/euicc/EuiccCardException;,
            Lcom/android/internal/telephony/uicc/asn1/TagNotFoundException;,
            Lcom/android/internal/telephony/uicc/asn1/InvalidAsn1DataException;
        }
    .end annotation

    .line 579
    invoke-static {p0}, Lcom/android/internal/telephony/uicc/euicc/EuiccCard;->parseResponse([B)Lcom/android/internal/telephony/uicc/asn1/Asn1Node;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [I

    const/16 v2, 0x80

    invoke-virtual {v0, v2, v1}, Lcom/android/internal/telephony/uicc/asn1/Asn1Node;->getChild(I[I)Lcom/android/internal/telephony/uicc/asn1/Asn1Node;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/uicc/asn1/Asn1Node;->asBytes()[B

    move-result-object v0

    return-object v0
.end method

.method static synthetic lambda$getEuiccInfo1$28(Lcom/android/internal/telephony/uicc/euicc/apdu/RequestBuilder;)V
    .locals 1
    .param p0, "requestBuilder"    # Lcom/android/internal/telephony/uicc/euicc/apdu/RequestBuilder;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/uicc/euicc/EuiccCardException;,
            Lcom/android/internal/telephony/uicc/asn1/TagNotFoundException;,
            Lcom/android/internal/telephony/uicc/asn1/InvalidAsn1DataException;
        }
    .end annotation

    .line 594
    const v0, 0xbf20

    invoke-static {v0}, Lcom/android/internal/telephony/uicc/asn1/Asn1Node;->newBuilder(I)Lcom/android/internal/telephony/uicc/asn1/Asn1Node$Builder;

    move-result-object v0

    .line 595
    invoke-virtual {v0}, Lcom/android/internal/telephony/uicc/asn1/Asn1Node$Builder;->build()Lcom/android/internal/telephony/uicc/asn1/Asn1Node;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/uicc/asn1/Asn1Node;->toHex()Ljava/lang/String;

    move-result-object v0

    .line 594
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/uicc/euicc/apdu/RequestBuilder;->addStoreData(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic lambda$getEuiccInfo1$29([B)[B
    .locals 0
    .param p0, "response"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/uicc/euicc/EuiccCardException;,
            Lcom/android/internal/telephony/uicc/asn1/TagNotFoundException;,
            Lcom/android/internal/telephony/uicc/asn1/InvalidAsn1DataException;
        }
    .end annotation

    .line 596
    return-object p0
.end method

.method static synthetic lambda$getEuiccInfo2$30(Lcom/android/internal/telephony/uicc/euicc/apdu/RequestBuilder;)V
    .locals 1
    .param p0, "requestBuilder"    # Lcom/android/internal/telephony/uicc/euicc/apdu/RequestBuilder;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/uicc/euicc/EuiccCardException;,
            Lcom/android/internal/telephony/uicc/asn1/TagNotFoundException;,
            Lcom/android/internal/telephony/uicc/asn1/InvalidAsn1DataException;
        }
    .end annotation

    .line 611
    const v0, 0xbf22

    invoke-static {v0}, Lcom/android/internal/telephony/uicc/asn1/Asn1Node;->newBuilder(I)Lcom/android/internal/telephony/uicc/asn1/Asn1Node$Builder;

    move-result-object v0

    .line 612
    invoke-virtual {v0}, Lcom/android/internal/telephony/uicc/asn1/Asn1Node$Builder;->build()Lcom/android/internal/telephony/uicc/asn1/Asn1Node;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/uicc/asn1/Asn1Node;->toHex()Ljava/lang/String;

    move-result-object v0

    .line 611
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/uicc/euicc/apdu/RequestBuilder;->addStoreData(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic lambda$getEuiccInfo2$31([B)[B
    .locals 0
    .param p0, "response"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/uicc/euicc/EuiccCardException;,
            Lcom/android/internal/telephony/uicc/asn1/TagNotFoundException;,
            Lcom/android/internal/telephony/uicc/asn1/InvalidAsn1DataException;
        }
    .end annotation

    .line 613
    return-object p0
.end method

.method static synthetic lambda$getProfile$4(Ljava/lang/String;Lcom/android/internal/telephony/uicc/euicc/apdu/RequestBuilder;)V
    .locals 4
    .param p0, "iccid"    # Ljava/lang/String;
    .param p1, "requestBuilder"    # Lcom/android/internal/telephony/uicc/euicc/apdu/RequestBuilder;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/uicc/euicc/EuiccCardException;,
            Lcom/android/internal/telephony/uicc/asn1/TagNotFoundException;,
            Lcom/android/internal/telephony/uicc/asn1/InvalidAsn1DataException;
        }
    .end annotation

    .line 251
    const v0, 0xbf2d

    invoke-static {v0}, Lcom/android/internal/telephony/uicc/asn1/Asn1Node;->newBuilder(I)Lcom/android/internal/telephony/uicc/asn1/Asn1Node$Builder;

    move-result-object v0

    .line 252
    const/16 v1, 0xa0

    invoke-static {v1}, Lcom/android/internal/telephony/uicc/asn1/Asn1Node;->newBuilder(I)Lcom/android/internal/telephony/uicc/asn1/Asn1Node$Builder;

    move-result-object v1

    .line 254
    invoke-static {p0}, Lcom/android/internal/telephony/uicc/euicc/EuiccCard;->padTrailingFs(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/telephony/uicc/IccUtils;->bcdToBytes(Ljava/lang/String;)[B

    move-result-object v2

    .line 253
    const/16 v3, 0x5a

    invoke-virtual {v1, v3, v2}, Lcom/android/internal/telephony/uicc/asn1/Asn1Node$Builder;->addChildAsBytes(I[B)Lcom/android/internal/telephony/uicc/asn1/Asn1Node$Builder;

    move-result-object v1

    .line 255
    invoke-virtual {v1}, Lcom/android/internal/telephony/uicc/asn1/Asn1Node$Builder;->build()Lcom/android/internal/telephony/uicc/asn1/Asn1Node;

    move-result-object v1

    .line 252
    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/uicc/asn1/Asn1Node$Builder;->addChild(Lcom/android/internal/telephony/uicc/asn1/Asn1Node;)Lcom/android/internal/telephony/uicc/asn1/Asn1Node$Builder;

    move-result-object v0

    sget-object v1, Lcom/android/internal/telephony/uicc/euicc/Tags;->EUICC_PROFILE_TAGS:[B

    .line 256
    const/16 v2, 0x5c

    invoke-virtual {v0, v2, v1}, Lcom/android/internal/telephony/uicc/asn1/Asn1Node$Builder;->addChildAsBytes(I[B)Lcom/android/internal/telephony/uicc/asn1/Asn1Node$Builder;

    move-result-object v0

    .line 257
    invoke-virtual {v0}, Lcom/android/internal/telephony/uicc/asn1/Asn1Node$Builder;->build()Lcom/android/internal/telephony/uicc/asn1/Asn1Node;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/uicc/asn1/Asn1Node;->toHex()Ljava/lang/String;

    move-result-object v0

    .line 251
    invoke-virtual {p1, v0}, Lcom/android/internal/telephony/uicc/euicc/apdu/RequestBuilder;->addStoreData(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic lambda$getProfile$5([B)Landroid/service/euicc/EuiccProfileInfo;
    .locals 5
    .param p0, "response"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/uicc/euicc/EuiccCardException;,
            Lcom/android/internal/telephony/uicc/asn1/TagNotFoundException;,
            Lcom/android/internal/telephony/uicc/asn1/InvalidAsn1DataException;
        }
    .end annotation

    .line 259
    new-instance v0, Lcom/android/internal/telephony/uicc/asn1/Asn1Decoder;

    invoke-direct {v0, p0}, Lcom/android/internal/telephony/uicc/asn1/Asn1Decoder;-><init>([B)V

    invoke-virtual {v0}, Lcom/android/internal/telephony/uicc/asn1/Asn1Decoder;->nextNode()Lcom/android/internal/telephony/uicc/asn1/Asn1Node;

    move-result-object v0

    const/4 v1, 0x0

    new-array v2, v1, [I

    .line 260
    const/16 v3, 0xa0

    invoke-virtual {v0, v3, v2}, Lcom/android/internal/telephony/uicc/asn1/Asn1Node;->getChild(I[I)Lcom/android/internal/telephony/uicc/asn1/Asn1Node;

    move-result-object v0

    const/16 v2, 0xe3

    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/uicc/asn1/Asn1Node;->getChildren(I)Ljava/util/List;

    move-result-object v0

    .line 261
    .local v0, "profileNodes":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/telephony/uicc/asn1/Asn1Node;>;"
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 262
    const/4 v1, 0x0

    return-object v1

    .line 264
    :cond_0
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/telephony/uicc/asn1/Asn1Node;

    .line 265
    .local v2, "profileNode":Lcom/android/internal/telephony/uicc/asn1/Asn1Node;
    const/16 v3, 0x5a

    new-array v1, v1, [I

    .line 266
    invoke-virtual {v2, v3, v1}, Lcom/android/internal/telephony/uicc/asn1/Asn1Node;->getChild(I[I)Lcom/android/internal/telephony/uicc/asn1/Asn1Node;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/telephony/uicc/asn1/Asn1Node;->asBytes()[B

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/telephony/uicc/euicc/EuiccCard;->stripTrailingFs([B)Ljava/lang/String;

    move-result-object v1

    .line 267
    .local v1, "strippedIccIdString":Ljava/lang/String;
    new-instance v3, Landroid/service/euicc/EuiccProfileInfo$Builder;

    invoke-direct {v3, v1}, Landroid/service/euicc/EuiccProfileInfo$Builder;-><init>(Ljava/lang/String;)V

    .line 269
    .local v3, "profileBuilder":Landroid/service/euicc/EuiccProfileInfo$Builder;
    invoke-static {v2, v3}, Lcom/android/internal/telephony/uicc/euicc/EuiccCard;->buildProfile(Lcom/android/internal/telephony/uicc/asn1/Asn1Node;Landroid/service/euicc/EuiccProfileInfo$Builder;)V

    .line 270
    invoke-virtual {v3}, Landroid/service/euicc/EuiccProfileInfo$Builder;->build()Landroid/service/euicc/EuiccProfileInfo;

    move-result-object v4

    return-object v4
.end method

.method static synthetic lambda$getRulesAuthTable$24(Lcom/android/internal/telephony/uicc/euicc/apdu/RequestBuilder;)V
    .locals 1
    .param p0, "requestBuilder"    # Lcom/android/internal/telephony/uicc/euicc/apdu/RequestBuilder;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/uicc/euicc/EuiccCardException;,
            Lcom/android/internal/telephony/uicc/asn1/TagNotFoundException;,
            Lcom/android/internal/telephony/uicc/asn1/InvalidAsn1DataException;
        }
    .end annotation

    .line 542
    const v0, 0xbf43

    invoke-static {v0}, Lcom/android/internal/telephony/uicc/asn1/Asn1Node;->newBuilder(I)Lcom/android/internal/telephony/uicc/asn1/Asn1Node$Builder;

    move-result-object v0

    .line 543
    invoke-virtual {v0}, Lcom/android/internal/telephony/uicc/asn1/Asn1Node$Builder;->build()Lcom/android/internal/telephony/uicc/asn1/Asn1Node;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/uicc/asn1/Asn1Node;->toHex()Ljava/lang/String;

    move-result-object v0

    .line 542
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/uicc/euicc/apdu/RequestBuilder;->addStoreData(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic lambda$getRulesAuthTable$25([B)Landroid/telephony/euicc/EuiccRulesAuthTable;
    .locals 14
    .param p0, "response"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/uicc/euicc/EuiccCardException;,
            Lcom/android/internal/telephony/uicc/asn1/TagNotFoundException;,
            Lcom/android/internal/telephony/uicc/asn1/InvalidAsn1DataException;
        }
    .end annotation

    .line 545
    invoke-static {p0}, Lcom/android/internal/telephony/uicc/euicc/EuiccCard;->parseResponse([B)Lcom/android/internal/telephony/uicc/asn1/Asn1Node;

    move-result-object v0

    .line 546
    .local v0, "root":Lcom/android/internal/telephony/uicc/asn1/Asn1Node;
    const/16 v1, 0xa0

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/uicc/asn1/Asn1Node;->getChildren(I)Ljava/util/List;

    move-result-object v1

    .line 547
    .local v1, "nodes":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/telephony/uicc/asn1/Asn1Node;>;"
    new-instance v2, Landroid/telephony/euicc/EuiccRulesAuthTable$Builder;

    .line 548
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    invoke-direct {v2, v3}, Landroid/telephony/euicc/EuiccRulesAuthTable$Builder;-><init>(I)V

    .line 549
    .local v2, "builder":Landroid/telephony/euicc/EuiccRulesAuthTable$Builder;
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    .line 550
    .local v3, "size":I
    const/4 v4, 0x0

    move v5, v4

    .local v5, "i":I
    :goto_0
    if-ge v5, v3, :cond_1

    .line 551
    invoke-interface {v1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/internal/telephony/uicc/asn1/Asn1Node;

    .line 552
    .local v6, "node":Lcom/android/internal/telephony/uicc/asn1/Asn1Node;
    const/16 v7, 0xa1

    new-array v8, v4, [I

    invoke-virtual {v6, v7, v8}, Lcom/android/internal/telephony/uicc/asn1/Asn1Node;->getChild(I[I)Lcom/android/internal/telephony/uicc/asn1/Asn1Node;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/internal/telephony/uicc/asn1/Asn1Node;->getChildren()Ljava/util/List;

    move-result-object v7

    .line 553
    .local v7, "opIdNodes":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/telephony/uicc/asn1/Asn1Node;>;"
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v8

    .line 554
    .local v8, "opIdSize":I
    new-array v9, v8, [Landroid/service/carrier/CarrierIdentifier;

    .line 555
    .local v9, "opIds":[Landroid/service/carrier/CarrierIdentifier;
    move v10, v4

    .local v10, "j":I
    :goto_1
    if-ge v10, v8, :cond_0

    .line 556
    invoke-interface {v7, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/android/internal/telephony/uicc/asn1/Asn1Node;

    invoke-static {v11}, Lcom/android/internal/telephony/uicc/euicc/EuiccCard;->buildCarrierIdentifier(Lcom/android/internal/telephony/uicc/asn1/Asn1Node;)Landroid/service/carrier/CarrierIdentifier;

    move-result-object v11

    aput-object v11, v9, v10

    .line 555
    add-int/lit8 v10, v10, 0x1

    goto :goto_1

    .line 558
    .end local v10    # "j":I
    :cond_0
    const/16 v10, 0x80

    new-array v11, v4, [I

    invoke-virtual {v6, v10, v11}, Lcom/android/internal/telephony/uicc/asn1/Asn1Node;->getChild(I[I)Lcom/android/internal/telephony/uicc/asn1/Asn1Node;

    move-result-object v10

    invoke-virtual {v10}, Lcom/android/internal/telephony/uicc/asn1/Asn1Node;->asBits()I

    move-result v10

    invoke-static {v9}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v11

    const/16 v12, 0x82

    new-array v13, v4, [I

    .line 559
    invoke-virtual {v6, v12, v13}, Lcom/android/internal/telephony/uicc/asn1/Asn1Node;->getChild(I[I)Lcom/android/internal/telephony/uicc/asn1/Asn1Node;

    move-result-object v12

    invoke-virtual {v12}, Lcom/android/internal/telephony/uicc/asn1/Asn1Node;->asBits()I

    move-result v12

    .line 558
    invoke-virtual {v2, v10, v11, v12}, Landroid/telephony/euicc/EuiccRulesAuthTable$Builder;->add(ILjava/util/List;I)Landroid/telephony/euicc/EuiccRulesAuthTable$Builder;

    .line 550
    .end local v6    # "node":Lcom/android/internal/telephony/uicc/asn1/Asn1Node;
    .end local v7    # "opIdNodes":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/telephony/uicc/asn1/Asn1Node;>;"
    .end local v8    # "opIdSize":I
    .end local v9    # "opIds":[Landroid/service/carrier/CarrierIdentifier;
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 561
    .end local v5    # "i":I
    :cond_1
    invoke-virtual {v2}, Landroid/telephony/euicc/EuiccRulesAuthTable$Builder;->build()Landroid/telephony/euicc/EuiccRulesAuthTable;

    move-result-object v4

    return-object v4
.end method

.method static synthetic lambda$getSmdsAddress$20(Lcom/android/internal/telephony/uicc/euicc/apdu/RequestBuilder;)V
    .locals 1
    .param p0, "requestBuilder"    # Lcom/android/internal/telephony/uicc/euicc/apdu/RequestBuilder;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/uicc/euicc/EuiccCardException;,
            Lcom/android/internal/telephony/uicc/asn1/TagNotFoundException;,
            Lcom/android/internal/telephony/uicc/asn1/InvalidAsn1DataException;
        }
    .end annotation

    .line 497
    nop

    .line 498
    const v0, 0xbf3c

    invoke-static {v0}, Lcom/android/internal/telephony/uicc/asn1/Asn1Node;->newBuilder(I)Lcom/android/internal/telephony/uicc/asn1/Asn1Node$Builder;

    move-result-object v0

    .line 499
    invoke-virtual {v0}, Lcom/android/internal/telephony/uicc/asn1/Asn1Node$Builder;->build()Lcom/android/internal/telephony/uicc/asn1/Asn1Node;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/uicc/asn1/Asn1Node;->toHex()Ljava/lang/String;

    move-result-object v0

    .line 497
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/uicc/euicc/apdu/RequestBuilder;->addStoreData(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic lambda$getSmdsAddress$21([B)Ljava/lang/String;
    .locals 3
    .param p0, "response"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/uicc/euicc/EuiccCardException;,
            Lcom/android/internal/telephony/uicc/asn1/TagNotFoundException;,
            Lcom/android/internal/telephony/uicc/asn1/InvalidAsn1DataException;
        }
    .end annotation

    .line 500
    invoke-static {p0}, Lcom/android/internal/telephony/uicc/euicc/EuiccCard;->parseResponse([B)Lcom/android/internal/telephony/uicc/asn1/Asn1Node;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [I

    const/16 v2, 0x81

    invoke-virtual {v0, v2, v1}, Lcom/android/internal/telephony/uicc/asn1/Asn1Node;->getChild(I[I)Lcom/android/internal/telephony/uicc/asn1/Asn1Node;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/uicc/asn1/Asn1Node;->asString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic lambda$getSpecVersion$0(Lcom/android/internal/telephony/uicc/euicc/apdu/RequestBuilder;)V
    .locals 0
    .param p0, "requestBuilder"    # Lcom/android/internal/telephony/uicc/euicc/apdu/RequestBuilder;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/uicc/euicc/EuiccCardException;,
            Lcom/android/internal/telephony/uicc/asn1/TagNotFoundException;,
            Lcom/android/internal/telephony/uicc/asn1/InvalidAsn1DataException;
        }
    .end annotation

    .line 188
    return-void
.end method

.method public static synthetic lambda$getSpecVersion$1(Lcom/android/internal/telephony/uicc/euicc/EuiccCard;[B)Lcom/android/internal/telephony/uicc/euicc/EuiccSpecVersion;
    .locals 1
    .param p1, "response"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/uicc/euicc/EuiccCardException;,
            Lcom/android/internal/telephony/uicc/asn1/TagNotFoundException;,
            Lcom/android/internal/telephony/uicc/asn1/InvalidAsn1DataException;
        }
    .end annotation

    .line 189
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/euicc/EuiccCard;->mSpecVersion:Lcom/android/internal/telephony/uicc/euicc/EuiccSpecVersion;

    return-object v0
.end method

.method static synthetic lambda$listNotifications$40(ILcom/android/internal/telephony/uicc/euicc/apdu/RequestBuilder;)V
    .locals 2
    .param p0, "events"    # I
    .param p1, "requestBuilder"    # Lcom/android/internal/telephony/uicc/euicc/apdu/RequestBuilder;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/uicc/euicc/EuiccCardException;,
            Lcom/android/internal/telephony/uicc/asn1/TagNotFoundException;,
            Lcom/android/internal/telephony/uicc/asn1/InvalidAsn1DataException;
        }
    .end annotation

    .line 807
    const v0, 0xbf28

    invoke-static {v0}, Lcom/android/internal/telephony/uicc/asn1/Asn1Node;->newBuilder(I)Lcom/android/internal/telephony/uicc/asn1/Asn1Node$Builder;

    move-result-object v0

    .line 808
    const/16 v1, 0x81

    invoke-virtual {v0, v1, p0}, Lcom/android/internal/telephony/uicc/asn1/Asn1Node$Builder;->addChildAsBits(II)Lcom/android/internal/telephony/uicc/asn1/Asn1Node$Builder;

    move-result-object v0

    .line 809
    invoke-virtual {v0}, Lcom/android/internal/telephony/uicc/asn1/Asn1Node$Builder;->build()Lcom/android/internal/telephony/uicc/asn1/Asn1Node;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/uicc/asn1/Asn1Node;->toHex()Ljava/lang/String;

    move-result-object v0

    .line 807
    invoke-virtual {p1, v0}, Lcom/android/internal/telephony/uicc/euicc/apdu/RequestBuilder;->addStoreData(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic lambda$listNotifications$41([B)[Landroid/telephony/euicc/EuiccNotification;
    .locals 5
    .param p0, "response"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/uicc/euicc/EuiccCardException;,
            Lcom/android/internal/telephony/uicc/asn1/TagNotFoundException;,
            Lcom/android/internal/telephony/uicc/asn1/InvalidAsn1DataException;
        }
    .end annotation

    .line 811
    const/4 v0, 0x6

    invoke-static {p0, v0}, Lcom/android/internal/telephony/uicc/euicc/EuiccCard;->parseResponseAndCheckSimpleError([BI)Lcom/android/internal/telephony/uicc/asn1/Asn1Node;

    move-result-object v0

    .line 813
    .local v0, "root":Lcom/android/internal/telephony/uicc/asn1/Asn1Node;
    const/4 v1, 0x0

    new-array v2, v1, [I

    const/16 v3, 0xa0

    invoke-virtual {v0, v3, v2}, Lcom/android/internal/telephony/uicc/asn1/Asn1Node;->getChild(I[I)Lcom/android/internal/telephony/uicc/asn1/Asn1Node;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/telephony/uicc/asn1/Asn1Node;->getChildren()Ljava/util/List;

    move-result-object v2

    .line 814
    .local v2, "nodes":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/telephony/uicc/asn1/Asn1Node;>;"
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    new-array v3, v3, [Landroid/telephony/euicc/EuiccNotification;

    .line 815
    .local v3, "notifications":[Landroid/telephony/euicc/EuiccNotification;
    nop

    .local v1, "i":I
    :goto_0
    array-length v4, v3

    if-ge v1, v4, :cond_0

    .line 816
    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/internal/telephony/uicc/asn1/Asn1Node;

    invoke-static {v4}, Lcom/android/internal/telephony/uicc/euicc/EuiccCard;->createNotification(Lcom/android/internal/telephony/uicc/asn1/Asn1Node;)Landroid/telephony/euicc/EuiccNotification;

    move-result-object v4

    aput-object v4, v3, v1

    .line 815
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 818
    .end local v1    # "i":I
    :cond_0
    return-object v3
.end method

.method static synthetic lambda$loadBoundProfilePackage$36([BLcom/android/internal/telephony/uicc/euicc/apdu/RequestBuilder;)V
    .locals 11
    .param p0, "boundProfilePackage"    # [B
    .param p1, "requestBuilder"    # Lcom/android/internal/telephony/uicc/euicc/apdu/RequestBuilder;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/uicc/euicc/EuiccCardException;,
            Lcom/android/internal/telephony/uicc/asn1/TagNotFoundException;,
            Lcom/android/internal/telephony/uicc/asn1/InvalidAsn1DataException;
        }
    .end annotation

    .line 721
    new-instance v0, Lcom/android/internal/telephony/uicc/asn1/Asn1Decoder;

    invoke-direct {v0, p0}, Lcom/android/internal/telephony/uicc/asn1/Asn1Decoder;-><init>([B)V

    invoke-virtual {v0}, Lcom/android/internal/telephony/uicc/asn1/Asn1Decoder;->nextNode()Lcom/android/internal/telephony/uicc/asn1/Asn1Node;

    move-result-object v0

    .line 723
    .local v0, "bppNode":Lcom/android/internal/telephony/uicc/asn1/Asn1Node;
    const/4 v1, 0x0

    new-array v2, v1, [I

    const v3, 0xbf23

    invoke-virtual {v0, v3, v2}, Lcom/android/internal/telephony/uicc/asn1/Asn1Node;->getChild(I[I)Lcom/android/internal/telephony/uicc/asn1/Asn1Node;

    move-result-object v2

    .line 726
    .local v2, "initialiseSecureChannelRequest":Lcom/android/internal/telephony/uicc/asn1/Asn1Node;
    new-array v3, v1, [I

    const/16 v4, 0xa0

    invoke-virtual {v0, v4, v3}, Lcom/android/internal/telephony/uicc/asn1/Asn1Node;->getChild(I[I)Lcom/android/internal/telephony/uicc/asn1/Asn1Node;

    move-result-object v3

    .line 728
    .local v3, "firstSequenceOf87":Lcom/android/internal/telephony/uicc/asn1/Asn1Node;
    new-array v4, v1, [I

    const/16 v5, 0xa1

    invoke-virtual {v0, v5, v4}, Lcom/android/internal/telephony/uicc/asn1/Asn1Node;->getChild(I[I)Lcom/android/internal/telephony/uicc/asn1/Asn1Node;

    move-result-object v4

    .line 729
    .local v4, "sequenceOf88":Lcom/android/internal/telephony/uicc/asn1/Asn1Node;
    const/16 v5, 0x88

    invoke-virtual {v4, v5}, Lcom/android/internal/telephony/uicc/asn1/Asn1Node;->getChildren(I)Ljava/util/List;

    move-result-object v5

    .line 731
    .local v5, "metaDataSeqs":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/telephony/uicc/asn1/Asn1Node;>;"
    new-array v6, v1, [I

    const/16 v7, 0xa3

    invoke-virtual {v0, v7, v6}, Lcom/android/internal/telephony/uicc/asn1/Asn1Node;->getChild(I[I)Lcom/android/internal/telephony/uicc/asn1/Asn1Node;

    move-result-object v6

    .line 732
    .local v6, "sequenceOf86":Lcom/android/internal/telephony/uicc/asn1/Asn1Node;
    const/16 v7, 0x86

    invoke-virtual {v6, v7}, Lcom/android/internal/telephony/uicc/asn1/Asn1Node;->getChildren(I)Ljava/util/List;

    move-result-object v7

    .line 734
    .local v7, "elementSeqs":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/telephony/uicc/asn1/Asn1Node;>;"
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/android/internal/telephony/uicc/asn1/Asn1Node;->getHeadAsHex()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 735
    invoke-virtual {v2}, Lcom/android/internal/telephony/uicc/asn1/Asn1Node;->toHex()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 734
    invoke-virtual {p1, v8}, Lcom/android/internal/telephony/uicc/euicc/apdu/RequestBuilder;->addStoreData(Ljava/lang/String;)V

    .line 737
    invoke-virtual {v3}, Lcom/android/internal/telephony/uicc/asn1/Asn1Node;->toHex()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p1, v8}, Lcom/android/internal/telephony/uicc/euicc/apdu/RequestBuilder;->addStoreData(Ljava/lang/String;)V

    .line 739
    invoke-virtual {v4}, Lcom/android/internal/telephony/uicc/asn1/Asn1Node;->getHeadAsHex()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p1, v8}, Lcom/android/internal/telephony/uicc/euicc/apdu/RequestBuilder;->addStoreData(Ljava/lang/String;)V

    .line 740
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v8

    .line 741
    .local v8, "size":I
    move v9, v1

    .local v9, "i":I
    :goto_0
    if-ge v9, v8, :cond_0

    .line 742
    invoke-interface {v5, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/internal/telephony/uicc/asn1/Asn1Node;

    invoke-virtual {v10}, Lcom/android/internal/telephony/uicc/asn1/Asn1Node;->toHex()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {p1, v10}, Lcom/android/internal/telephony/uicc/euicc/apdu/RequestBuilder;->addStoreData(Ljava/lang/String;)V

    .line 741
    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    .line 745
    .end local v9    # "i":I
    :cond_0
    new-array v9, v1, [I

    const/16 v10, 0xa2

    invoke-virtual {v0, v10, v9}, Lcom/android/internal/telephony/uicc/asn1/Asn1Node;->hasChild(I[I)Z

    move-result v9

    if-eqz v9, :cond_1

    .line 746
    new-array v9, v1, [I

    invoke-virtual {v0, v10, v9}, Lcom/android/internal/telephony/uicc/asn1/Asn1Node;->getChild(I[I)Lcom/android/internal/telephony/uicc/asn1/Asn1Node;

    move-result-object v9

    invoke-virtual {v9}, Lcom/android/internal/telephony/uicc/asn1/Asn1Node;->toHex()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p1, v9}, Lcom/android/internal/telephony/uicc/euicc/apdu/RequestBuilder;->addStoreData(Ljava/lang/String;)V

    .line 749
    :cond_1
    invoke-virtual {v6}, Lcom/android/internal/telephony/uicc/asn1/Asn1Node;->getHeadAsHex()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p1, v9}, Lcom/android/internal/telephony/uicc/euicc/apdu/RequestBuilder;->addStoreData(Ljava/lang/String;)V

    .line 750
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v8

    .line 751
    nop

    .local v1, "i":I
    :goto_1
    if-ge v1, v8, :cond_2

    .line 752
    invoke-interface {v7, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/internal/telephony/uicc/asn1/Asn1Node;

    invoke-virtual {v9}, Lcom/android/internal/telephony/uicc/asn1/Asn1Node;->toHex()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p1, v9}, Lcom/android/internal/telephony/uicc/euicc/apdu/RequestBuilder;->addStoreData(Ljava/lang/String;)V

    .line 751
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 754
    .end local v1    # "i":I
    :cond_2
    return-void
.end method

.method static synthetic lambda$loadBoundProfilePackage$37([B)[B
    .locals 5
    .param p0, "response"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/uicc/euicc/EuiccCardException;,
            Lcom/android/internal/telephony/uicc/asn1/TagNotFoundException;,
            Lcom/android/internal/telephony/uicc/asn1/InvalidAsn1DataException;
        }
    .end annotation

    .line 757
    invoke-static {p0}, Lcom/android/internal/telephony/uicc/euicc/EuiccCard;->parseResponse([B)Lcom/android/internal/telephony/uicc/asn1/Asn1Node;

    move-result-object v0

    .line 758
    .local v0, "root":Lcom/android/internal/telephony/uicc/asn1/Asn1Node;
    const/4 v1, 0x3

    new-array v2, v1, [I

    fill-array-data v2, :array_0

    const v3, 0xbf27

    invoke-virtual {v0, v3, v2}, Lcom/android/internal/telephony/uicc/asn1/Asn1Node;->hasChild(I[I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 767
    invoke-virtual {v0}, Lcom/android/internal/telephony/uicc/asn1/Asn1Node;->toBytes()[B

    move-result-object v1

    return-object v1

    .line 760
    :cond_0
    new-array v1, v1, [I

    fill-array-data v1, :array_1

    invoke-virtual {v0, v3, v1}, Lcom/android/internal/telephony/uicc/asn1/Asn1Node;->getChild(I[I)Lcom/android/internal/telephony/uicc/asn1/Asn1Node;

    move-result-object v1

    .line 763
    .local v1, "errorNode":Lcom/android/internal/telephony/uicc/asn1/Asn1Node;
    new-instance v2, Lcom/android/internal/telephony/uicc/euicc/EuiccCardErrorException;

    const/4 v3, 0x5

    .line 765
    invoke-virtual {v1}, Lcom/android/internal/telephony/uicc/asn1/Asn1Node;->asInteger()I

    move-result v4

    invoke-direct {v2, v3, v4, v1}, Lcom/android/internal/telephony/uicc/euicc/EuiccCardErrorException;-><init>(IILcom/android/internal/telephony/uicc/asn1/Asn1Node;)V

    throw v2

    :array_0
    .array-data 4
        0xa2
        0xa1
        0x81
    .end array-data

    :array_1
    .array-data 4
        0xa2
        0xa1
        0x81
    .end array-data
.end method

.method public static synthetic lambda$newRequestProvider$48(Lcom/android/internal/telephony/uicc/euicc/EuiccCard;Lcom/android/internal/telephony/uicc/euicc/EuiccCard$ApduRequestBuilder;[BLcom/android/internal/telephony/uicc/euicc/apdu/RequestBuilder;)V
    .locals 4
    .param p1, "builder"    # Lcom/android/internal/telephony/uicc/euicc/EuiccCard$ApduRequestBuilder;
    .param p2, "selectResponse"    # [B
    .param p3, "requestBuilder"    # Lcom/android/internal/telephony/uicc/euicc/apdu/RequestBuilder;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 1054
    invoke-direct {p0, p2}, Lcom/android/internal/telephony/uicc/euicc/EuiccCard;->getOrExtractSpecVersion([B)Lcom/android/internal/telephony/uicc/euicc/EuiccSpecVersion;

    move-result-object v0

    .line 1055
    .local v0, "ver":Lcom/android/internal/telephony/uicc/euicc/EuiccSpecVersion;
    if-eqz v0, :cond_1

    .line 1059
    :try_start_0
    sget-object v1, Lcom/android/internal/telephony/uicc/euicc/EuiccCard;->SGP22_V_2_0:Lcom/android/internal/telephony/uicc/euicc/EuiccSpecVersion;

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/uicc/euicc/EuiccSpecVersion;->compareTo(Lcom/android/internal/telephony/uicc/euicc/EuiccSpecVersion;)I

    move-result v1

    if-ltz v1, :cond_0

    .line 1062
    invoke-interface {p1, p3}, Lcom/android/internal/telephony/uicc/euicc/EuiccCard$ApduRequestBuilder;->build(Lcom/android/internal/telephony/uicc/euicc/apdu/RequestBuilder;)V

    .line 1065
    nop

    .line 1066
    return-void

    .line 1060
    :cond_0
    new-instance v1, Lcom/android/internal/telephony/uicc/euicc/EuiccCardException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "eUICC spec version is unsupported: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/android/internal/telephony/uicc/euicc/EuiccCardException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_0
    .catch Lcom/android/internal/telephony/uicc/asn1/InvalidAsn1DataException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/android/internal/telephony/uicc/asn1/TagNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1063
    :catch_0
    move-exception v1

    .line 1064
    .local v1, "e":Ljava/lang/Exception;
    new-instance v2, Lcom/android/internal/telephony/uicc/euicc/EuiccCardException;

    const-string v3, "Cannot parse ASN1 to build request."

    invoke-direct {v2, v3, v1}, Lcom/android/internal/telephony/uicc/euicc/EuiccCardException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    .line 1056
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_1
    new-instance v1, Lcom/android/internal/telephony/uicc/euicc/EuiccCardException;

    const-string v2, "Cannot get eUICC spec version."

    invoke-direct {v1, v2}, Lcom/android/internal/telephony/uicc/euicc/EuiccCardException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method static synthetic lambda$prepareDownload$34([B[B[B[BLcom/android/internal/telephony/uicc/euicc/apdu/RequestBuilder;)V
    .locals 2
    .param p0, "smdpSigned2"    # [B
    .param p1, "smdpSignature2"    # [B
    .param p2, "hashCc"    # [B
    .param p3, "smdpCertificate"    # [B
    .param p4, "requestBuilder"    # Lcom/android/internal/telephony/uicc/euicc/apdu/RequestBuilder;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/uicc/euicc/EuiccCardException;,
            Lcom/android/internal/telephony/uicc/asn1/TagNotFoundException;,
            Lcom/android/internal/telephony/uicc/asn1/InvalidAsn1DataException;
        }
    .end annotation

    .line 686
    const v0, 0xbf21

    invoke-static {v0}, Lcom/android/internal/telephony/uicc/asn1/Asn1Node;->newBuilder(I)Lcom/android/internal/telephony/uicc/asn1/Asn1Node$Builder;

    move-result-object v0

    new-instance v1, Lcom/android/internal/telephony/uicc/asn1/Asn1Decoder;

    invoke-direct {v1, p0}, Lcom/android/internal/telephony/uicc/asn1/Asn1Decoder;-><init>([B)V

    .line 687
    invoke-virtual {v1}, Lcom/android/internal/telephony/uicc/asn1/Asn1Decoder;->nextNode()Lcom/android/internal/telephony/uicc/asn1/Asn1Node;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/uicc/asn1/Asn1Node$Builder;->addChild(Lcom/android/internal/telephony/uicc/asn1/Asn1Node;)Lcom/android/internal/telephony/uicc/asn1/Asn1Node$Builder;

    move-result-object v0

    new-instance v1, Lcom/android/internal/telephony/uicc/asn1/Asn1Decoder;

    invoke-direct {v1, p1}, Lcom/android/internal/telephony/uicc/asn1/Asn1Decoder;-><init>([B)V

    .line 688
    invoke-virtual {v1}, Lcom/android/internal/telephony/uicc/asn1/Asn1Decoder;->nextNode()Lcom/android/internal/telephony/uicc/asn1/Asn1Node;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/uicc/asn1/Asn1Node$Builder;->addChild(Lcom/android/internal/telephony/uicc/asn1/Asn1Node;)Lcom/android/internal/telephony/uicc/asn1/Asn1Node$Builder;

    move-result-object v0

    .line 689
    .local v0, "builder":Lcom/android/internal/telephony/uicc/asn1/Asn1Node$Builder;
    if-eqz p2, :cond_0

    .line 690
    const/4 v1, 0x4

    invoke-virtual {v0, v1, p2}, Lcom/android/internal/telephony/uicc/asn1/Asn1Node$Builder;->addChildAsBytes(I[B)Lcom/android/internal/telephony/uicc/asn1/Asn1Node$Builder;

    .line 692
    :cond_0
    new-instance v1, Lcom/android/internal/telephony/uicc/asn1/Asn1Decoder;

    invoke-direct {v1, p3}, Lcom/android/internal/telephony/uicc/asn1/Asn1Decoder;-><init>([B)V

    .line 693
    invoke-virtual {v1}, Lcom/android/internal/telephony/uicc/asn1/Asn1Decoder;->nextNode()Lcom/android/internal/telephony/uicc/asn1/Asn1Node;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/uicc/asn1/Asn1Node$Builder;->addChild(Lcom/android/internal/telephony/uicc/asn1/Asn1Node;)Lcom/android/internal/telephony/uicc/asn1/Asn1Node$Builder;

    move-result-object v1

    .line 694
    invoke-virtual {v1}, Lcom/android/internal/telephony/uicc/asn1/Asn1Node$Builder;->build()Lcom/android/internal/telephony/uicc/asn1/Asn1Node;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/telephony/uicc/asn1/Asn1Node;->toHex()Ljava/lang/String;

    move-result-object v1

    .line 692
    invoke-virtual {p4, v1}, Lcom/android/internal/telephony/uicc/euicc/apdu/RequestBuilder;->addStoreData(Ljava/lang/String;)V

    .line 695
    return-void
.end method

.method static synthetic lambda$prepareDownload$35([B)[B
    .locals 6
    .param p0, "response"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/uicc/euicc/EuiccCardException;,
            Lcom/android/internal/telephony/uicc/asn1/TagNotFoundException;,
            Lcom/android/internal/telephony/uicc/asn1/InvalidAsn1DataException;
        }
    .end annotation

    .line 697
    invoke-static {p0}, Lcom/android/internal/telephony/uicc/euicc/EuiccCard;->parseResponse([B)Lcom/android/internal/telephony/uicc/asn1/Asn1Node;

    move-result-object v0

    .line 698
    .local v0, "root":Lcom/android/internal/telephony/uicc/asn1/Asn1Node;
    const/4 v1, 0x1

    new-array v2, v1, [I

    const/4 v3, 0x0

    const/4 v4, 0x2

    aput v4, v2, v3

    const/16 v5, 0xa1

    invoke-virtual {v0, v5, v2}, Lcom/android/internal/telephony/uicc/asn1/Asn1Node;->hasChild(I[I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 703
    invoke-virtual {v0}, Lcom/android/internal/telephony/uicc/asn1/Asn1Node;->toBytes()[B

    move-result-object v1

    return-object v1

    .line 699
    :cond_0
    new-instance v2, Lcom/android/internal/telephony/uicc/euicc/EuiccCardErrorException;

    new-array v1, v1, [I

    aput v4, v1, v3

    .line 701
    invoke-virtual {v0, v5, v1}, Lcom/android/internal/telephony/uicc/asn1/Asn1Node;->getChild(I[I)Lcom/android/internal/telephony/uicc/asn1/Asn1Node;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/telephony/uicc/asn1/Asn1Node;->asInteger()I

    move-result v1

    invoke-direct {v2, v4, v1}, Lcom/android/internal/telephony/uicc/euicc/EuiccCardErrorException;-><init>(II)V

    throw v2
.end method

.method static synthetic lambda$removeNotificationFromList$46(ILcom/android/internal/telephony/uicc/euicc/apdu/RequestBuilder;)V
    .locals 2
    .param p0, "seqNumber"    # I
    .param p1, "requestBuilder"    # Lcom/android/internal/telephony/uicc/euicc/apdu/RequestBuilder;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/uicc/euicc/EuiccCardException;,
            Lcom/android/internal/telephony/uicc/asn1/TagNotFoundException;,
            Lcom/android/internal/telephony/uicc/asn1/InvalidAsn1DataException;
        }
    .end annotation

    .line 905
    nop

    .line 906
    const v0, 0xbf30

    invoke-static {v0}, Lcom/android/internal/telephony/uicc/asn1/Asn1Node;->newBuilder(I)Lcom/android/internal/telephony/uicc/asn1/Asn1Node$Builder;

    move-result-object v0

    .line 907
    const/16 v1, 0x80

    invoke-virtual {v0, v1, p0}, Lcom/android/internal/telephony/uicc/asn1/Asn1Node$Builder;->addChildAsInteger(II)Lcom/android/internal/telephony/uicc/asn1/Asn1Node$Builder;

    move-result-object v0

    .line 908
    invoke-virtual {v0}, Lcom/android/internal/telephony/uicc/asn1/Asn1Node$Builder;->build()Lcom/android/internal/telephony/uicc/asn1/Asn1Node;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/uicc/asn1/Asn1Node;->toHex()Ljava/lang/String;

    move-result-object v0

    .line 905
    invoke-virtual {p1, v0}, Lcom/android/internal/telephony/uicc/euicc/apdu/RequestBuilder;->addStoreData(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic lambda$removeNotificationFromList$47([B)Ljava/lang/Void;
    .locals 3
    .param p0, "response"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/uicc/euicc/EuiccCardException;,
            Lcom/android/internal/telephony/uicc/asn1/TagNotFoundException;,
            Lcom/android/internal/telephony/uicc/asn1/InvalidAsn1DataException;
        }
    .end annotation

    .line 911
    invoke-static {p0}, Lcom/android/internal/telephony/uicc/euicc/EuiccCard;->parseSimpleResult([B)I

    move-result v0

    .line 912
    .local v0, "result":I
    if-eqz v0, :cond_1

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    .line 913
    :cond_0
    new-instance v1, Lcom/android/internal/telephony/uicc/euicc/EuiccCardErrorException;

    const/16 v2, 0x9

    invoke-direct {v1, v2, v0}, Lcom/android/internal/telephony/uicc/euicc/EuiccCardErrorException;-><init>(II)V

    throw v1

    .line 917
    :cond_1
    :goto_0
    const/4 v1, 0x0

    return-object v1
.end method

.method static synthetic lambda$resetMemory$16(ILcom/android/internal/telephony/uicc/euicc/apdu/RequestBuilder;)V
    .locals 2
    .param p0, "options"    # I
    .param p1, "requestBuilder"    # Lcom/android/internal/telephony/uicc/euicc/apdu/RequestBuilder;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/uicc/euicc/EuiccCardException;,
            Lcom/android/internal/telephony/uicc/asn1/TagNotFoundException;,
            Lcom/android/internal/telephony/uicc/asn1/InvalidAsn1DataException;
        }
    .end annotation

    .line 456
    const v0, 0xbf34

    invoke-static {v0}, Lcom/android/internal/telephony/uicc/asn1/Asn1Node;->newBuilder(I)Lcom/android/internal/telephony/uicc/asn1/Asn1Node$Builder;

    move-result-object v0

    .line 457
    const/16 v1, 0x82

    invoke-virtual {v0, v1, p0}, Lcom/android/internal/telephony/uicc/asn1/Asn1Node$Builder;->addChildAsBits(II)Lcom/android/internal/telephony/uicc/asn1/Asn1Node$Builder;

    move-result-object v0

    .line 458
    invoke-virtual {v0}, Lcom/android/internal/telephony/uicc/asn1/Asn1Node$Builder;->build()Lcom/android/internal/telephony/uicc/asn1/Asn1Node;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/uicc/asn1/Asn1Node;->toHex()Ljava/lang/String;

    move-result-object v0

    .line 456
    invoke-virtual {p1, v0}, Lcom/android/internal/telephony/uicc/euicc/apdu/RequestBuilder;->addStoreData(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic lambda$resetMemory$17([B)Ljava/lang/Void;
    .locals 3
    .param p0, "response"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/uicc/euicc/EuiccCardException;,
            Lcom/android/internal/telephony/uicc/asn1/TagNotFoundException;,
            Lcom/android/internal/telephony/uicc/asn1/InvalidAsn1DataException;
        }
    .end annotation

    .line 460
    invoke-static {p0}, Lcom/android/internal/telephony/uicc/euicc/EuiccCard;->parseSimpleResult([B)I

    move-result v0

    .line 461
    .local v0, "result":I
    if-eqz v0, :cond_1

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    .line 462
    :cond_0
    new-instance v1, Lcom/android/internal/telephony/uicc/euicc/EuiccCardErrorException;

    const/16 v2, 0xd

    invoke-direct {v1, v2, v0}, Lcom/android/internal/telephony/uicc/euicc/EuiccCardErrorException;-><init>(II)V

    throw v1

    .line 465
    :cond_1
    :goto_0
    const/4 v1, 0x0

    return-object v1
.end method

.method static synthetic lambda$retrieveNotification$44(ILcom/android/internal/telephony/uicc/euicc/apdu/RequestBuilder;)V
    .locals 3
    .param p0, "seqNumber"    # I
    .param p1, "requestBuilder"    # Lcom/android/internal/telephony/uicc/euicc/apdu/RequestBuilder;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/uicc/euicc/EuiccCardException;,
            Lcom/android/internal/telephony/uicc/asn1/TagNotFoundException;,
            Lcom/android/internal/telephony/uicc/asn1/InvalidAsn1DataException;
        }
    .end annotation

    .line 876
    nop

    .line 877
    const v0, 0xbf2b

    invoke-static {v0}, Lcom/android/internal/telephony/uicc/asn1/Asn1Node;->newBuilder(I)Lcom/android/internal/telephony/uicc/asn1/Asn1Node$Builder;

    move-result-object v0

    .line 878
    const/16 v1, 0xa0

    invoke-static {v1}, Lcom/android/internal/telephony/uicc/asn1/Asn1Node;->newBuilder(I)Lcom/android/internal/telephony/uicc/asn1/Asn1Node$Builder;

    move-result-object v1

    .line 879
    const/16 v2, 0x80

    invoke-virtual {v1, v2, p0}, Lcom/android/internal/telephony/uicc/asn1/Asn1Node$Builder;->addChildAsInteger(II)Lcom/android/internal/telephony/uicc/asn1/Asn1Node$Builder;

    move-result-object v1

    .line 878
    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/uicc/asn1/Asn1Node$Builder;->addChild(Lcom/android/internal/telephony/uicc/asn1/Asn1Node$Builder;)Lcom/android/internal/telephony/uicc/asn1/Asn1Node$Builder;

    move-result-object v0

    .line 880
    invoke-virtual {v0}, Lcom/android/internal/telephony/uicc/asn1/Asn1Node$Builder;->build()Lcom/android/internal/telephony/uicc/asn1/Asn1Node;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/uicc/asn1/Asn1Node;->toHex()Ljava/lang/String;

    move-result-object v0

    .line 876
    invoke-virtual {p1, v0}, Lcom/android/internal/telephony/uicc/euicc/apdu/RequestBuilder;->addStoreData(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic lambda$retrieveNotification$45([B)Landroid/telephony/euicc/EuiccNotification;
    .locals 4
    .param p0, "response"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/uicc/euicc/EuiccCardException;,
            Lcom/android/internal/telephony/uicc/asn1/TagNotFoundException;,
            Lcom/android/internal/telephony/uicc/asn1/InvalidAsn1DataException;
        }
    .end annotation

    .line 882
    const/16 v0, 0x8

    invoke-static {p0, v0}, Lcom/android/internal/telephony/uicc/euicc/EuiccCard;->parseResponseAndCheckSimpleError([BI)Lcom/android/internal/telephony/uicc/asn1/Asn1Node;

    move-result-object v0

    .line 884
    .local v0, "root":Lcom/android/internal/telephony/uicc/asn1/Asn1Node;
    const/4 v1, 0x0

    new-array v2, v1, [I

    const/16 v3, 0xa0

    invoke-virtual {v0, v3, v2}, Lcom/android/internal/telephony/uicc/asn1/Asn1Node;->getChild(I[I)Lcom/android/internal/telephony/uicc/asn1/Asn1Node;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/telephony/uicc/asn1/Asn1Node;->getChildren()Ljava/util/List;

    move-result-object v2

    .line 885
    .local v2, "nodes":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/telephony/uicc/asn1/Asn1Node;>;"
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_0

    .line 886
    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/telephony/uicc/asn1/Asn1Node;

    invoke-static {v1}, Lcom/android/internal/telephony/uicc/euicc/EuiccCard;->createNotification(Lcom/android/internal/telephony/uicc/asn1/Asn1Node;)Landroid/telephony/euicc/EuiccNotification;

    move-result-object v1

    return-object v1

    .line 888
    :cond_0
    const/4 v1, 0x0

    return-object v1
.end method

.method static synthetic lambda$retrieveNotificationList$42(ILcom/android/internal/telephony/uicc/euicc/apdu/RequestBuilder;)V
    .locals 3
    .param p0, "events"    # I
    .param p1, "requestBuilder"    # Lcom/android/internal/telephony/uicc/euicc/apdu/RequestBuilder;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/uicc/euicc/EuiccCardException;,
            Lcom/android/internal/telephony/uicc/asn1/TagNotFoundException;,
            Lcom/android/internal/telephony/uicc/asn1/InvalidAsn1DataException;
        }
    .end annotation

    .line 835
    nop

    .line 836
    const v0, 0xbf2b

    invoke-static {v0}, Lcom/android/internal/telephony/uicc/asn1/Asn1Node;->newBuilder(I)Lcom/android/internal/telephony/uicc/asn1/Asn1Node$Builder;

    move-result-object v0

    .line 837
    const/16 v1, 0xa0

    invoke-static {v1}, Lcom/android/internal/telephony/uicc/asn1/Asn1Node;->newBuilder(I)Lcom/android/internal/telephony/uicc/asn1/Asn1Node$Builder;

    move-result-object v1

    .line 838
    const/16 v2, 0x81

    invoke-virtual {v1, v2, p0}, Lcom/android/internal/telephony/uicc/asn1/Asn1Node$Builder;->addChildAsBits(II)Lcom/android/internal/telephony/uicc/asn1/Asn1Node$Builder;

    move-result-object v1

    .line 837
    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/uicc/asn1/Asn1Node$Builder;->addChild(Lcom/android/internal/telephony/uicc/asn1/Asn1Node$Builder;)Lcom/android/internal/telephony/uicc/asn1/Asn1Node$Builder;

    move-result-object v0

    .line 839
    invoke-virtual {v0}, Lcom/android/internal/telephony/uicc/asn1/Asn1Node$Builder;->build()Lcom/android/internal/telephony/uicc/asn1/Asn1Node;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/uicc/asn1/Asn1Node;->toHex()Ljava/lang/String;

    move-result-object v0

    .line 835
    invoke-virtual {p1, v0}, Lcom/android/internal/telephony/uicc/euicc/apdu/RequestBuilder;->addStoreData(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic lambda$retrieveNotificationList$43([B)[Landroid/telephony/euicc/EuiccNotification;
    .locals 5
    .param p0, "response"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/uicc/euicc/EuiccCardException;,
            Lcom/android/internal/telephony/uicc/asn1/TagNotFoundException;,
            Lcom/android/internal/telephony/uicc/asn1/InvalidAsn1DataException;
        }
    .end annotation

    .line 841
    invoke-static {p0}, Lcom/android/internal/telephony/uicc/euicc/EuiccCard;->parseResponse([B)Lcom/android/internal/telephony/uicc/asn1/Asn1Node;

    move-result-object v0

    .line 842
    .local v0, "root":Lcom/android/internal/telephony/uicc/asn1/Asn1Node;
    const/4 v1, 0x0

    new-array v2, v1, [I

    const/16 v3, 0x81

    invoke-virtual {v0, v3, v2}, Lcom/android/internal/telephony/uicc/asn1/Asn1Node;->hasChild(I[I)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 844
    new-array v2, v1, [I

    invoke-virtual {v0, v3, v2}, Lcom/android/internal/telephony/uicc/asn1/Asn1Node;->getChild(I[I)Lcom/android/internal/telephony/uicc/asn1/Asn1Node;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/telephony/uicc/asn1/Asn1Node;->asInteger()I

    move-result v2

    .line 845
    .local v2, "error":I
    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    .line 847
    new-array v1, v1, [Landroid/telephony/euicc/EuiccNotification;

    return-object v1

    .line 849
    :cond_0
    new-instance v1, Lcom/android/internal/telephony/uicc/euicc/EuiccCardErrorException;

    const/16 v3, 0x8

    invoke-direct {v1, v3, v2}, Lcom/android/internal/telephony/uicc/euicc/EuiccCardErrorException;-><init>(II)V

    throw v1

    .line 854
    .end local v2    # "error":I
    :cond_1
    const/16 v2, 0xa0

    new-array v3, v1, [I

    invoke-virtual {v0, v2, v3}, Lcom/android/internal/telephony/uicc/asn1/Asn1Node;->getChild(I[I)Lcom/android/internal/telephony/uicc/asn1/Asn1Node;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/telephony/uicc/asn1/Asn1Node;->getChildren()Ljava/util/List;

    move-result-object v2

    .line 855
    .local v2, "nodes":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/telephony/uicc/asn1/Asn1Node;>;"
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    new-array v3, v3, [Landroid/telephony/euicc/EuiccNotification;

    .line 856
    .local v3, "notifications":[Landroid/telephony/euicc/EuiccNotification;
    nop

    .local v1, "i":I
    :goto_0
    array-length v4, v3

    if-ge v1, v4, :cond_2

    .line 857
    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/internal/telephony/uicc/asn1/Asn1Node;

    invoke-static {v4}, Lcom/android/internal/telephony/uicc/euicc/EuiccCard;->createNotification(Lcom/android/internal/telephony/uicc/asn1/Asn1Node;)Landroid/telephony/euicc/EuiccNotification;

    move-result-object v4

    aput-object v4, v3, v1

    .line 856
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 859
    .end local v1    # "i":I
    :cond_2
    return-object v3
.end method

.method static synthetic lambda$sendApdu$49(Lcom/android/internal/telephony/uicc/euicc/async/AsyncResultCallback;Ljava/lang/Throwable;)V
    .locals 2
    .param p0, "callback"    # Lcom/android/internal/telephony/uicc/euicc/async/AsyncResultCallback;
    .param p1, "e"    # Ljava/lang/Throwable;

    .line 1098
    new-instance v0, Lcom/android/internal/telephony/uicc/euicc/EuiccCardException;

    const-string v1, "Cannot send APDU."

    invoke-direct {v0, v1, p1}, Lcom/android/internal/telephony/uicc/euicc/EuiccCardException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/uicc/euicc/async/AsyncResultCallback;->onException(Ljava/lang/Throwable;)V

    return-void
.end method

.method static synthetic lambda$sendApduWithSimResetErrorWorkaround$50(Lcom/android/internal/telephony/uicc/euicc/async/AsyncResultCallback;Ljava/lang/Throwable;)V
    .locals 2
    .param p0, "callback"    # Lcom/android/internal/telephony/uicc/euicc/async/AsyncResultCallback;
    .param p1, "e"    # Ljava/lang/Throwable;

    .line 1115
    instance-of v0, p1, Lcom/android/internal/telephony/uicc/euicc/apdu/ApduException;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Lcom/android/internal/telephony/uicc/euicc/apdu/ApduException;

    .line 1116
    invoke-virtual {v0}, Lcom/android/internal/telephony/uicc/euicc/apdu/ApduException;->getApduStatus()I

    move-result v0

    const/16 v1, 0x6f00

    if-ne v0, v1, :cond_0

    .line 1117
    const-string v0, "Sim is refreshed after disabling profile, no response got."

    invoke-static {v0}, Lcom/android/internal/telephony/uicc/euicc/EuiccCard;->logi(Ljava/lang/String;)V

    .line 1118
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/uicc/euicc/async/AsyncResultCallback;->onResult(Ljava/lang/Object;)V

    goto :goto_0

    .line 1120
    :cond_0
    new-instance v0, Lcom/android/internal/telephony/uicc/euicc/EuiccCardException;

    const-string v1, "Cannot send APDU."

    invoke-direct {v0, v1, p1}, Lcom/android/internal/telephony/uicc/euicc/EuiccCardException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/uicc/euicc/async/AsyncResultCallback;->onException(Ljava/lang/Throwable;)V

    .line 1122
    :goto_0
    return-void
.end method

.method static synthetic lambda$setDefaultSmdpAddress$22(Ljava/lang/String;Lcom/android/internal/telephony/uicc/euicc/apdu/RequestBuilder;)V
    .locals 2
    .param p0, "defaultSmdpAddress"    # Ljava/lang/String;
    .param p1, "requestBuilder"    # Lcom/android/internal/telephony/uicc/euicc/apdu/RequestBuilder;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/uicc/euicc/EuiccCardException;,
            Lcom/android/internal/telephony/uicc/asn1/TagNotFoundException;,
            Lcom/android/internal/telephony/uicc/asn1/InvalidAsn1DataException;
        }
    .end annotation

    .line 515
    nop

    .line 516
    const v0, 0xbf3f

    invoke-static {v0}, Lcom/android/internal/telephony/uicc/asn1/Asn1Node;->newBuilder(I)Lcom/android/internal/telephony/uicc/asn1/Asn1Node$Builder;

    move-result-object v0

    .line 517
    const/16 v1, 0x80

    invoke-virtual {v0, v1, p0}, Lcom/android/internal/telephony/uicc/asn1/Asn1Node$Builder;->addChildAsString(ILjava/lang/String;)Lcom/android/internal/telephony/uicc/asn1/Asn1Node$Builder;

    move-result-object v0

    .line 518
    invoke-virtual {v0}, Lcom/android/internal/telephony/uicc/asn1/Asn1Node$Builder;->build()Lcom/android/internal/telephony/uicc/asn1/Asn1Node;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/uicc/asn1/Asn1Node;->toHex()Ljava/lang/String;

    move-result-object v0

    .line 515
    invoke-virtual {p1, v0}, Lcom/android/internal/telephony/uicc/euicc/apdu/RequestBuilder;->addStoreData(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic lambda$setDefaultSmdpAddress$23([B)Ljava/lang/Void;
    .locals 3
    .param p0, "response"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/uicc/euicc/EuiccCardException;,
            Lcom/android/internal/telephony/uicc/asn1/TagNotFoundException;,
            Lcom/android/internal/telephony/uicc/asn1/InvalidAsn1DataException;
        }
    .end annotation

    .line 521
    invoke-static {p0}, Lcom/android/internal/telephony/uicc/euicc/EuiccCard;->parseSimpleResult([B)I

    move-result v0

    .line 522
    .local v0, "result":I
    if-nez v0, :cond_0

    .line 526
    const/4 v1, 0x0

    return-object v1

    .line 523
    :cond_0
    new-instance v1, Lcom/android/internal/telephony/uicc/euicc/EuiccCardErrorException;

    const/16 v2, 0xe

    invoke-direct {v1, v2, v0}, Lcom/android/internal/telephony/uicc/euicc/EuiccCardErrorException;-><init>(II)V

    throw v1
.end method

.method static synthetic lambda$setNickname$12(Ljava/lang/String;Ljava/lang/String;Lcom/android/internal/telephony/uicc/euicc/apdu/RequestBuilder;)V
    .locals 3
    .param p0, "iccid"    # Ljava/lang/String;
    .param p1, "nickname"    # Ljava/lang/String;
    .param p2, "requestBuilder"    # Lcom/android/internal/telephony/uicc/euicc/apdu/RequestBuilder;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/uicc/euicc/EuiccCardException;,
            Lcom/android/internal/telephony/uicc/asn1/TagNotFoundException;,
            Lcom/android/internal/telephony/uicc/asn1/InvalidAsn1DataException;
        }
    .end annotation

    .line 400
    const v0, 0xbf29

    invoke-static {v0}, Lcom/android/internal/telephony/uicc/asn1/Asn1Node;->newBuilder(I)Lcom/android/internal/telephony/uicc/asn1/Asn1Node$Builder;

    move-result-object v0

    .line 402
    invoke-static {p0}, Lcom/android/internal/telephony/uicc/euicc/EuiccCard;->padTrailingFs(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/telephony/uicc/IccUtils;->bcdToBytes(Ljava/lang/String;)[B

    move-result-object v1

    .line 401
    const/16 v2, 0x5a

    invoke-virtual {v0, v2, v1}, Lcom/android/internal/telephony/uicc/asn1/Asn1Node$Builder;->addChildAsBytes(I[B)Lcom/android/internal/telephony/uicc/asn1/Asn1Node$Builder;

    move-result-object v0

    .line 403
    const/16 v1, 0x90

    invoke-virtual {v0, v1, p1}, Lcom/android/internal/telephony/uicc/asn1/Asn1Node$Builder;->addChildAsString(ILjava/lang/String;)Lcom/android/internal/telephony/uicc/asn1/Asn1Node$Builder;

    move-result-object v0

    .line 404
    invoke-virtual {v0}, Lcom/android/internal/telephony/uicc/asn1/Asn1Node$Builder;->build()Lcom/android/internal/telephony/uicc/asn1/Asn1Node;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/uicc/asn1/Asn1Node;->toHex()Ljava/lang/String;

    move-result-object v0

    .line 400
    invoke-virtual {p2, v0}, Lcom/android/internal/telephony/uicc/euicc/apdu/RequestBuilder;->addStoreData(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic lambda$setNickname$13([B)Ljava/lang/Void;
    .locals 3
    .param p0, "response"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/uicc/euicc/EuiccCardException;,
            Lcom/android/internal/telephony/uicc/asn1/TagNotFoundException;,
            Lcom/android/internal/telephony/uicc/asn1/InvalidAsn1DataException;
        }
    .end annotation

    .line 407
    invoke-static {p0}, Lcom/android/internal/telephony/uicc/euicc/EuiccCard;->parseSimpleResult([B)I

    move-result v0

    .line 408
    .local v0, "result":I
    if-nez v0, :cond_0

    .line 412
    const/4 v1, 0x0

    return-object v1

    .line 409
    :cond_0
    new-instance v1, Lcom/android/internal/telephony/uicc/euicc/EuiccCardErrorException;

    const/4 v2, 0x7

    invoke-direct {v1, v2, v0}, Lcom/android/internal/telephony/uicc/euicc/EuiccCardErrorException;-><init>(II)V

    throw v1
.end method

.method static synthetic lambda$switchToProfile$8(Ljava/lang/String;ZLcom/android/internal/telephony/uicc/euicc/apdu/RequestBuilder;)V
    .locals 4
    .param p0, "iccid"    # Ljava/lang/String;
    .param p1, "refresh"    # Z
    .param p2, "requestBuilder"    # Lcom/android/internal/telephony/uicc/euicc/apdu/RequestBuilder;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/uicc/euicc/EuiccCardException;,
            Lcom/android/internal/telephony/uicc/asn1/TagNotFoundException;,
            Lcom/android/internal/telephony/uicc/asn1/InvalidAsn1DataException;
        }
    .end annotation

    .line 326
    invoke-static {p0}, Lcom/android/internal/telephony/uicc/euicc/EuiccCard;->padTrailingFs(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/telephony/uicc/IccUtils;->bcdToBytes(Ljava/lang/String;)[B

    move-result-object v0

    .line 327
    .local v0, "iccidBytes":[B
    const v1, 0xbf31

    invoke-static {v1}, Lcom/android/internal/telephony/uicc/asn1/Asn1Node;->newBuilder(I)Lcom/android/internal/telephony/uicc/asn1/Asn1Node$Builder;

    move-result-object v1

    .line 328
    const/16 v2, 0xa0

    invoke-static {v2}, Lcom/android/internal/telephony/uicc/asn1/Asn1Node;->newBuilder(I)Lcom/android/internal/telephony/uicc/asn1/Asn1Node$Builder;

    move-result-object v2

    .line 329
    const/16 v3, 0x5a

    invoke-virtual {v2, v3, v0}, Lcom/android/internal/telephony/uicc/asn1/Asn1Node$Builder;->addChildAsBytes(I[B)Lcom/android/internal/telephony/uicc/asn1/Asn1Node$Builder;

    move-result-object v2

    .line 328
    invoke-virtual {v1, v2}, Lcom/android/internal/telephony/uicc/asn1/Asn1Node$Builder;->addChild(Lcom/android/internal/telephony/uicc/asn1/Asn1Node$Builder;)Lcom/android/internal/telephony/uicc/asn1/Asn1Node$Builder;

    move-result-object v1

    .line 330
    const/16 v2, 0x81

    invoke-virtual {v1, v2, p1}, Lcom/android/internal/telephony/uicc/asn1/Asn1Node$Builder;->addChildAsBoolean(IZ)Lcom/android/internal/telephony/uicc/asn1/Asn1Node$Builder;

    move-result-object v1

    .line 331
    invoke-virtual {v1}, Lcom/android/internal/telephony/uicc/asn1/Asn1Node$Builder;->build()Lcom/android/internal/telephony/uicc/asn1/Asn1Node;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/telephony/uicc/asn1/Asn1Node;->toHex()Ljava/lang/String;

    move-result-object v1

    .line 327
    invoke-virtual {p2, v1}, Lcom/android/internal/telephony/uicc/euicc/apdu/RequestBuilder;->addStoreData(Ljava/lang/String;)V

    .line 332
    return-void
.end method

.method static synthetic lambda$switchToProfile$9(Ljava/lang/String;[B)Ljava/lang/Void;
    .locals 4
    .param p0, "iccid"    # Ljava/lang/String;
    .param p1, "response"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/uicc/euicc/EuiccCardException;,
            Lcom/android/internal/telephony/uicc/asn1/TagNotFoundException;,
            Lcom/android/internal/telephony/uicc/asn1/InvalidAsn1DataException;
        }
    .end annotation

    .line 336
    invoke-static {p1}, Lcom/android/internal/telephony/uicc/euicc/EuiccCard;->parseSimpleResult([B)I

    move-result v0

    .line 337
    .local v0, "result":I
    const/4 v1, 0x0

    if-eqz v0, :cond_1

    const/4 v2, 0x2

    if-ne v0, v2, :cond_0

    .line 341
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Profile is already enabled, iccid: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 342
    invoke-static {p0}, Landroid/telephony/SubscriptionInfo;->givePrintableIccid(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 341
    invoke-static {v2}, Lcom/android/internal/telephony/uicc/euicc/EuiccCard;->logd(Ljava/lang/String;)V

    .line 343
    return-object v1

    .line 345
    :cond_0
    new-instance v1, Lcom/android/internal/telephony/uicc/euicc/EuiccCardErrorException;

    const/16 v2, 0xa

    invoke-direct {v1, v2, v0}, Lcom/android/internal/telephony/uicc/euicc/EuiccCardErrorException;-><init>(II)V

    throw v1

    .line 339
    :cond_1
    return-object v1
.end method

.method private static logd(Ljava/lang/String;)V
    .locals 1
    .param p0, "message"    # Ljava/lang/String;

    .line 1327
    const-string v0, "EuiccCard"

    invoke-static {v0, p0}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1329
    return-void
.end method

.method private static loge(Ljava/lang/String;)V
    .locals 1
    .param p0, "message"    # Ljava/lang/String;

    .line 1314
    const-string v0, "EuiccCard"

    invoke-static {v0, p0}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1315
    return-void
.end method

.method private static loge(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1
    .param p0, "message"    # Ljava/lang/String;
    .param p1, "tr"    # Ljava/lang/Throwable;

    .line 1318
    const-string v0, "EuiccCard"

    invoke-static {v0, p0, p1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1319
    return-void
.end method

.method private static logi(Ljava/lang/String;)V
    .locals 1
    .param p0, "message"    # Ljava/lang/String;

    .line 1322
    const-string v0, "EuiccCard"

    invoke-static {v0, p0}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1323
    return-void
.end method

.method private newRequestProvider(Lcom/android/internal/telephony/uicc/euicc/EuiccCard$ApduRequestBuilder;)Lcom/android/internal/telephony/uicc/euicc/apdu/RequestProvider;
    .locals 1
    .param p1, "builder"    # Lcom/android/internal/telephony/uicc/euicc/EuiccCard$ApduRequestBuilder;

    .line 1053
    new-instance v0, Lcom/android/internal/telephony/uicc/euicc/-$$Lambda$EuiccCard$7vWsDgJ3RMY6kHsGeBw-CxIKViI;

    invoke-direct {v0, p0, p1}, Lcom/android/internal/telephony/uicc/euicc/-$$Lambda$EuiccCard$7vWsDgJ3RMY6kHsGeBw-CxIKViI;-><init>(Lcom/android/internal/telephony/uicc/euicc/EuiccCard;Lcom/android/internal/telephony/uicc/euicc/EuiccCard$ApduRequestBuilder;)V

    return-object v0
.end method

.method private static padTrailingFs(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p0, "iccId"    # Ljava/lang/String;

    .line 1307
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0x14

    if-ge v0, v1, :cond_0

    .line 1308
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v2, Ljava/lang/String;

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    sub-int/2addr v1, v3

    new-array v1, v1, [C

    invoke-direct {v2, v1}, Ljava/lang/String;-><init>([C)V

    const/4 v1, 0x0

    const/16 v3, 0x46

    invoke-virtual {v2, v1, v3}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 1310
    :cond_0
    return-object p0
.end method

.method private static parseResponse([B)Lcom/android/internal/telephony/uicc/asn1/Asn1Node;
    .locals 4
    .param p0, "response"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/uicc/euicc/EuiccCardException;,
            Lcom/android/internal/telephony/uicc/asn1/InvalidAsn1DataException;
        }
    .end annotation

    .line 1278
    new-instance v0, Lcom/android/internal/telephony/uicc/asn1/Asn1Decoder;

    invoke-direct {v0, p0}, Lcom/android/internal/telephony/uicc/asn1/Asn1Decoder;-><init>([B)V

    .line 1279
    .local v0, "decoder":Lcom/android/internal/telephony/uicc/asn1/Asn1Decoder;
    invoke-virtual {v0}, Lcom/android/internal/telephony/uicc/asn1/Asn1Decoder;->hasNextNode()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1282
    invoke-virtual {v0}, Lcom/android/internal/telephony/uicc/asn1/Asn1Decoder;->nextNode()Lcom/android/internal/telephony/uicc/asn1/Asn1Node;

    move-result-object v1

    return-object v1

    .line 1280
    :cond_0
    new-instance v1, Lcom/android/internal/telephony/uicc/euicc/EuiccCardException;

    const/4 v2, 0x0

    const-string v3, "Empty response"

    invoke-direct {v1, v3, v2}, Lcom/android/internal/telephony/uicc/euicc/EuiccCardException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method private static parseResponseAndCheckSimpleError([BI)Lcom/android/internal/telephony/uicc/asn1/Asn1Node;
    .locals 4
    .param p0, "response"    # [B
    .param p1, "opCode"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/uicc/euicc/EuiccCardException;,
            Lcom/android/internal/telephony/uicc/asn1/InvalidAsn1DataException;,
            Lcom/android/internal/telephony/uicc/asn1/TagNotFoundException;
        }
    .end annotation

    .line 1293
    invoke-static {p0}, Lcom/android/internal/telephony/uicc/euicc/EuiccCard;->parseResponse([B)Lcom/android/internal/telephony/uicc/asn1/Asn1Node;

    move-result-object v0

    .line 1294
    .local v0, "root":Lcom/android/internal/telephony/uicc/asn1/Asn1Node;
    const/4 v1, 0x0

    new-array v2, v1, [I

    const/16 v3, 0x81

    invoke-virtual {v0, v3, v2}, Lcom/android/internal/telephony/uicc/asn1/Asn1Node;->hasChild(I[I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1297
    return-object v0

    .line 1295
    :cond_0
    new-instance v2, Lcom/android/internal/telephony/uicc/euicc/EuiccCardErrorException;

    new-array v1, v1, [I

    invoke-virtual {v0, v3, v1}, Lcom/android/internal/telephony/uicc/asn1/Asn1Node;->getChild(I[I)Lcom/android/internal/telephony/uicc/asn1/Asn1Node;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/telephony/uicc/asn1/Asn1Node;->asInteger()I

    move-result v1

    invoke-direct {v2, p1, v1}, Lcom/android/internal/telephony/uicc/euicc/EuiccCardErrorException;-><init>(II)V

    throw v2
.end method

.method private static parseSimpleResult([B)I
    .locals 3
    .param p0, "response"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/uicc/euicc/EuiccCardException;,
            Lcom/android/internal/telephony/uicc/asn1/TagNotFoundException;,
            Lcom/android/internal/telephony/uicc/asn1/InvalidAsn1DataException;
        }
    .end annotation

    .line 1273
    invoke-static {p0}, Lcom/android/internal/telephony/uicc/euicc/EuiccCard;->parseResponse([B)Lcom/android/internal/telephony/uicc/asn1/Asn1Node;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [I

    const/16 v2, 0x80

    invoke-virtual {v0, v2, v1}, Lcom/android/internal/telephony/uicc/asn1/Asn1Node;->getChild(I[I)Lcom/android/internal/telephony/uicc/asn1/Asn1Node;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/uicc/asn1/Asn1Node;->asInteger()I

    move-result v0

    return v0
.end method

.method private sendApdu(Lcom/android/internal/telephony/uicc/euicc/apdu/RequestProvider;Lcom/android/internal/telephony/uicc/euicc/EuiccCard$ApduResponseHandler;Lcom/android/internal/telephony/uicc/euicc/EuiccCard$ApduExceptionHandler;Lcom/android/internal/telephony/uicc/euicc/async/AsyncResultCallback;Landroid/os/Handler;)V
    .locals 2
    .param p1, "requestBuilder"    # Lcom/android/internal/telephony/uicc/euicc/apdu/RequestProvider;
    .param p3, "exceptionHandler"    # Lcom/android/internal/telephony/uicc/euicc/EuiccCard$ApduExceptionHandler;
    .param p5, "handler"    # Landroid/os/Handler;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/android/internal/telephony/uicc/euicc/apdu/RequestProvider;",
            "Lcom/android/internal/telephony/uicc/euicc/EuiccCard$ApduResponseHandler<",
            "TT;>;",
            "Lcom/android/internal/telephony/uicc/euicc/EuiccCard$ApduExceptionHandler;",
            "Lcom/android/internal/telephony/uicc/euicc/async/AsyncResultCallback<",
            "TT;>;",
            "Landroid/os/Handler;",
            ")V"
        }
    .end annotation

    .line 1129
    .local p2, "responseHandler":Lcom/android/internal/telephony/uicc/euicc/EuiccCard$ApduResponseHandler;, "Lcom/android/internal/telephony/uicc/euicc/EuiccCard$ApduResponseHandler<TT;>;"
    .local p4, "callback":Lcom/android/internal/telephony/uicc/euicc/async/AsyncResultCallback;, "Lcom/android/internal/telephony/uicc/euicc/async/AsyncResultCallback<TT;>;"
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/euicc/EuiccCard;->mApduSender:Lcom/android/internal/telephony/uicc/euicc/apdu/ApduSender;

    new-instance v1, Lcom/android/internal/telephony/uicc/euicc/EuiccCard$2;

    invoke-direct {v1, p0, p4, p2, p3}, Lcom/android/internal/telephony/uicc/euicc/EuiccCard$2;-><init>(Lcom/android/internal/telephony/uicc/euicc/EuiccCard;Lcom/android/internal/telephony/uicc/euicc/async/AsyncResultCallback;Lcom/android/internal/telephony/uicc/euicc/EuiccCard$ApduResponseHandler;Lcom/android/internal/telephony/uicc/euicc/EuiccCard$ApduExceptionHandler;)V

    invoke-virtual {v0, p1, v1, p5}, Lcom/android/internal/telephony/uicc/euicc/apdu/ApduSender;->send(Lcom/android/internal/telephony/uicc/euicc/apdu/RequestProvider;Lcom/android/internal/telephony/uicc/euicc/async/AsyncResultCallback;Landroid/os/Handler;)V

    .line 1147
    return-void
.end method

.method private sendApdu(Lcom/android/internal/telephony/uicc/euicc/apdu/RequestProvider;Lcom/android/internal/telephony/uicc/euicc/EuiccCard$ApduResponseHandler;Lcom/android/internal/telephony/uicc/euicc/async/AsyncResultCallback;Landroid/os/Handler;)V
    .locals 6
    .param p1, "requestBuilder"    # Lcom/android/internal/telephony/uicc/euicc/apdu/RequestProvider;
    .param p4, "handler"    # Landroid/os/Handler;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/android/internal/telephony/uicc/euicc/apdu/RequestProvider;",
            "Lcom/android/internal/telephony/uicc/euicc/EuiccCard$ApduResponseHandler<",
            "TT;>;",
            "Lcom/android/internal/telephony/uicc/euicc/async/AsyncResultCallback<",
            "TT;>;",
            "Landroid/os/Handler;",
            ")V"
        }
    .end annotation

    .line 1097
    .local p2, "responseHandler":Lcom/android/internal/telephony/uicc/euicc/EuiccCard$ApduResponseHandler;, "Lcom/android/internal/telephony/uicc/euicc/EuiccCard$ApduResponseHandler<TT;>;"
    .local p3, "callback":Lcom/android/internal/telephony/uicc/euicc/async/AsyncResultCallback;, "Lcom/android/internal/telephony/uicc/euicc/async/AsyncResultCallback<TT;>;"
    new-instance v3, Lcom/android/internal/telephony/uicc/euicc/-$$Lambda$EuiccCard$L4YPgLjdI8c0_VHmXQ199X1DICE;

    invoke-direct {v3, p3}, Lcom/android/internal/telephony/uicc/euicc/-$$Lambda$EuiccCard$L4YPgLjdI8c0_VHmXQ199X1DICE;-><init>(Lcom/android/internal/telephony/uicc/euicc/async/AsyncResultCallback;)V

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/android/internal/telephony/uicc/euicc/EuiccCard;->sendApdu(Lcom/android/internal/telephony/uicc/euicc/apdu/RequestProvider;Lcom/android/internal/telephony/uicc/euicc/EuiccCard$ApduResponseHandler;Lcom/android/internal/telephony/uicc/euicc/EuiccCard$ApduExceptionHandler;Lcom/android/internal/telephony/uicc/euicc/async/AsyncResultCallback;Landroid/os/Handler;)V

    .line 1100
    return-void
.end method

.method private sendApduWithSimResetErrorWorkaround(Lcom/android/internal/telephony/uicc/euicc/apdu/RequestProvider;Lcom/android/internal/telephony/uicc/euicc/EuiccCard$ApduResponseHandler;Lcom/android/internal/telephony/uicc/euicc/async/AsyncResultCallback;Landroid/os/Handler;)V
    .locals 6
    .param p1, "requestBuilder"    # Lcom/android/internal/telephony/uicc/euicc/apdu/RequestProvider;
    .param p4, "handler"    # Landroid/os/Handler;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/internal/telephony/uicc/euicc/apdu/RequestProvider;",
            "Lcom/android/internal/telephony/uicc/euicc/EuiccCard$ApduResponseHandler<",
            "Ljava/lang/Void;",
            ">;",
            "Lcom/android/internal/telephony/uicc/euicc/async/AsyncResultCallback<",
            "Ljava/lang/Void;",
            ">;",
            "Landroid/os/Handler;",
            ")V"
        }
    .end annotation

    .line 1114
    .local p2, "responseHandler":Lcom/android/internal/telephony/uicc/euicc/EuiccCard$ApduResponseHandler;, "Lcom/android/internal/telephony/uicc/euicc/EuiccCard$ApduResponseHandler<Ljava/lang/Void;>;"
    .local p3, "callback":Lcom/android/internal/telephony/uicc/euicc/async/AsyncResultCallback;, "Lcom/android/internal/telephony/uicc/euicc/async/AsyncResultCallback<Ljava/lang/Void;>;"
    new-instance v3, Lcom/android/internal/telephony/uicc/euicc/-$$Lambda$EuiccCard$jFzxc6nh3bkdLVyMXzM3mlnBqrA;

    invoke-direct {v3, p3}, Lcom/android/internal/telephony/uicc/euicc/-$$Lambda$EuiccCard$jFzxc6nh3bkdLVyMXzM3mlnBqrA;-><init>(Lcom/android/internal/telephony/uicc/euicc/async/AsyncResultCallback;)V

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/android/internal/telephony/uicc/euicc/EuiccCard;->sendApdu(Lcom/android/internal/telephony/uicc/euicc/apdu/RequestProvider;Lcom/android/internal/telephony/uicc/euicc/EuiccCard$ApduResponseHandler;Lcom/android/internal/telephony/uicc/euicc/EuiccCard$ApduExceptionHandler;Lcom/android/internal/telephony/uicc/euicc/async/AsyncResultCallback;Landroid/os/Handler;)V

    .line 1123
    return-void
.end method

.method private static stripTrailingFs([B)Ljava/lang/String;
    .locals 2
    .param p0, "iccId"    # [B

    .line 1302
    array-length v0, p0

    const/4 v1, 0x0

    invoke-static {p0, v1, v0}, Lcom/android/internal/telephony/uicc/IccUtils;->bchToString([BII)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/telephony/uicc/IccUtils;->stripTrailingFs(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public addDeviceCapability(Lcom/android/internal/telephony/uicc/asn1/Asn1Node$Builder;Ljava/lang/String;)V
    .locals 10
    .param p1, "devCapBuilder"    # Lcom/android/internal/telephony/uicc/asn1/Asn1Node$Builder;
    .param p2, "devCapItem"    # Ljava/lang/String;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
        visibility = .enum Lcom/android/internal/annotations/VisibleForTesting$Visibility;->PRIVATE:Lcom/android/internal/annotations/VisibleForTesting$Visibility;
    .end annotation

    .line 931
    const-string v0, ","

    invoke-virtual {p2, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 932
    .local v0, "split":[Ljava/lang/String;
    array-length v1, v0

    const/4 v2, 0x2

    if-eq v1, v2, :cond_0

    .line 933
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid device capability item: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/telephony/uicc/euicc/EuiccCard;->loge(Ljava/lang/String;)V

    .line 934
    return-void

    .line 937
    :cond_0
    const/4 v1, 0x0

    aget-object v3, v0, v1

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    .line 940
    .local v3, "devCap":Ljava/lang/String;
    const/4 v4, 0x1

    :try_start_0
    aget-object v5, v0, v4

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 944
    .local v5, "version":Ljava/lang/Integer;
    nop

    .line 943
    nop

    .line 946
    const/4 v6, 0x3

    new-array v7, v6, [B

    invoke-virtual {v5}, Ljava/lang/Integer;->byteValue()B

    move-result v8

    aput-byte v8, v7, v1

    aput-byte v1, v7, v4

    aput-byte v1, v7, v2

    .line 947
    .local v7, "versionBytes":[B
    const/4 v8, -0x1

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v9

    sparse-switch v9, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v1, "utran"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    move v2, v4

    goto :goto_1

    :sswitch_1
    const-string v1, "ehrpd"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v2, 0x4

    goto :goto_1

    :sswitch_2
    const-string v1, "hrpd"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    move v2, v6

    goto :goto_1

    :sswitch_3
    const-string v1, "nfc"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v2, 0x6

    goto :goto_1

    :sswitch_4
    const-string v2, "gsm"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    move v2, v1

    goto :goto_1

    :sswitch_5
    const-string v1, "crl"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v2, 0x7

    goto :goto_1

    :sswitch_6
    const-string v1, "eutran"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v2, 0x5

    goto :goto_1

    :sswitch_7
    const-string v1, "cdma1x"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_1

    :cond_1
    :goto_0
    move v2, v8

    :goto_1
    packed-switch v2, :pswitch_data_0

    .line 973
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid device capability name: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/telephony/uicc/euicc/EuiccCard;->loge(Ljava/lang/String;)V

    goto :goto_2

    .line 970
    :pswitch_0
    const/16 v1, 0x87

    invoke-virtual {p1, v1, v7}, Lcom/android/internal/telephony/uicc/asn1/Asn1Node$Builder;->addChildAsBytes(I[B)Lcom/android/internal/telephony/uicc/asn1/Asn1Node$Builder;

    .line 971
    goto :goto_2

    .line 967
    :pswitch_1
    const/16 v1, 0x86

    invoke-virtual {p1, v1, v7}, Lcom/android/internal/telephony/uicc/asn1/Asn1Node$Builder;->addChildAsBytes(I[B)Lcom/android/internal/telephony/uicc/asn1/Asn1Node$Builder;

    .line 968
    goto :goto_2

    .line 964
    :pswitch_2
    const/16 v1, 0x85

    invoke-virtual {p1, v1, v7}, Lcom/android/internal/telephony/uicc/asn1/Asn1Node$Builder;->addChildAsBytes(I[B)Lcom/android/internal/telephony/uicc/asn1/Asn1Node$Builder;

    .line 965
    goto :goto_2

    .line 961
    :pswitch_3
    const/16 v1, 0x84

    invoke-virtual {p1, v1, v7}, Lcom/android/internal/telephony/uicc/asn1/Asn1Node$Builder;->addChildAsBytes(I[B)Lcom/android/internal/telephony/uicc/asn1/Asn1Node$Builder;

    .line 962
    goto :goto_2

    .line 958
    :pswitch_4
    const/16 v1, 0x83

    invoke-virtual {p1, v1, v7}, Lcom/android/internal/telephony/uicc/asn1/Asn1Node$Builder;->addChildAsBytes(I[B)Lcom/android/internal/telephony/uicc/asn1/Asn1Node$Builder;

    .line 959
    goto :goto_2

    .line 955
    :pswitch_5
    const/16 v1, 0x82

    invoke-virtual {p1, v1, v7}, Lcom/android/internal/telephony/uicc/asn1/Asn1Node$Builder;->addChildAsBytes(I[B)Lcom/android/internal/telephony/uicc/asn1/Asn1Node$Builder;

    .line 956
    goto :goto_2

    .line 952
    :pswitch_6
    const/16 v1, 0x81

    invoke-virtual {p1, v1, v7}, Lcom/android/internal/telephony/uicc/asn1/Asn1Node$Builder;->addChildAsBytes(I[B)Lcom/android/internal/telephony/uicc/asn1/Asn1Node$Builder;

    .line 953
    goto :goto_2

    .line 949
    :pswitch_7
    const/16 v1, 0x80

    invoke-virtual {p1, v1, v7}, Lcom/android/internal/telephony/uicc/asn1/Asn1Node$Builder;->addChildAsBytes(I[B)Lcom/android/internal/telephony/uicc/asn1/Asn1Node$Builder;

    .line 950
    nop

    .line 976
    :goto_2
    return-void

    .line 941
    .end local v5    # "version":Ljava/lang/Integer;
    .end local v7    # "versionBytes":[B
    :catch_0
    move-exception v1

    .line 942
    .local v1, "e":Ljava/lang/NumberFormatException;
    const-string v2, "Invalid device capability version number."

    invoke-static {v2, v1}, Lcom/android/internal/telephony/uicc/euicc/EuiccCard;->loge(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 943
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        -0x515c0d24 -> :sswitch_7
        -0x4cff5825 -> :sswitch_6
        0x181dd -> :sswitch_5
        0x19101 -> :sswitch_4
        0x1a9ab -> :sswitch_3
        0x31007e -> :sswitch_2
        0x5c04663 -> :sswitch_1
        0x6a73120 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public authenticateServer(Ljava/lang/String;[B[B[B[BLcom/android/internal/telephony/uicc/euicc/async/AsyncResultCallback;Landroid/os/Handler;)V
    .locals 8
    .param p1, "matchingId"    # Ljava/lang/String;
    .param p2, "serverSigned1"    # [B
    .param p3, "serverSignature1"    # [B
    .param p4, "euiccCiPkIdToBeUsed"    # [B
    .param p5, "serverCertificate"    # [B
    .param p7, "handler"    # Landroid/os/Handler;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "[B[B[B[B",
            "Lcom/android/internal/telephony/uicc/euicc/async/AsyncResultCallback<",
            "[B>;",
            "Landroid/os/Handler;",
            ")V"
        }
    .end annotation

    .line 631
    .local p6, "callback":Lcom/android/internal/telephony/uicc/euicc/async/AsyncResultCallback;, "Lcom/android/internal/telephony/uicc/euicc/async/AsyncResultCallback<[B>;"
    new-instance v7, Lcom/android/internal/telephony/uicc/euicc/-$$Lambda$EuiccCard$dXiSnJocvC7r6HwRUJlZI7Qnleo;

    move-object v0, v7

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-direct/range {v0 .. v6}, Lcom/android/internal/telephony/uicc/euicc/-$$Lambda$EuiccCard$dXiSnJocvC7r6HwRUJlZI7Qnleo;-><init>(Lcom/android/internal/telephony/uicc/euicc/EuiccCard;Ljava/lang/String;[B[B[B[B)V

    .line 632
    invoke-direct {p0, v7}, Lcom/android/internal/telephony/uicc/euicc/EuiccCard;->newRequestProvider(Lcom/android/internal/telephony/uicc/euicc/EuiccCard$ApduRequestBuilder;)Lcom/android/internal/telephony/uicc/euicc/apdu/RequestProvider;

    move-result-object v0

    sget-object v1, Lcom/android/internal/telephony/uicc/euicc/-$$Lambda$EuiccCard$MRlmz2j6osUyi5hGvD3j9D4Tsrg;->INSTANCE:Lcom/android/internal/telephony/uicc/euicc/-$$Lambda$EuiccCard$MRlmz2j6osUyi5hGvD3j9D4Tsrg;

    .line 631
    invoke-direct {p0, v0, v1, p6, p7}, Lcom/android/internal/telephony/uicc/euicc/EuiccCard;->sendApdu(Lcom/android/internal/telephony/uicc/euicc/apdu/RequestProvider;Lcom/android/internal/telephony/uicc/euicc/EuiccCard$ApduResponseHandler;Lcom/android/internal/telephony/uicc/euicc/async/AsyncResultCallback;Landroid/os/Handler;)V

    .line 668
    return-void
.end method

.method public cancelSession([BILcom/android/internal/telephony/uicc/euicc/async/AsyncResultCallback;Landroid/os/Handler;)V
    .locals 2
    .param p1, "transactionId"    # [B
    .param p2, "reason"    # I
    .param p4, "handler"    # Landroid/os/Handler;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([BI",
            "Lcom/android/internal/telephony/uicc/euicc/async/AsyncResultCallback<",
            "[B>;",
            "Landroid/os/Handler;",
            ")V"
        }
    .end annotation

    .line 783
    .local p3, "callback":Lcom/android/internal/telephony/uicc/euicc/async/AsyncResultCallback;, "Lcom/android/internal/telephony/uicc/euicc/async/AsyncResultCallback<[B>;"
    new-instance v0, Lcom/android/internal/telephony/uicc/euicc/-$$Lambda$EuiccCard$mf0dWT4hLdKlsLFFHVfdGFxHyX0;

    invoke-direct {v0, p1, p2}, Lcom/android/internal/telephony/uicc/euicc/-$$Lambda$EuiccCard$mf0dWT4hLdKlsLFFHVfdGFxHyX0;-><init>([BI)V

    .line 784
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/uicc/euicc/EuiccCard;->newRequestProvider(Lcom/android/internal/telephony/uicc/euicc/EuiccCard$ApduRequestBuilder;)Lcom/android/internal/telephony/uicc/euicc/apdu/RequestProvider;

    move-result-object v0

    sget-object v1, Lcom/android/internal/telephony/uicc/euicc/-$$Lambda$EuiccCard$ItNER0v0H8BgPYIx3JhINdI9slE;->INSTANCE:Lcom/android/internal/telephony/uicc/euicc/-$$Lambda$EuiccCard$ItNER0v0H8BgPYIx3JhINdI9slE;

    .line 783
    invoke-direct {p0, v0, v1, p3, p4}, Lcom/android/internal/telephony/uicc/euicc/EuiccCard;->sendApdu(Lcom/android/internal/telephony/uicc/euicc/apdu/RequestProvider;Lcom/android/internal/telephony/uicc/euicc/EuiccCard$ApduResponseHandler;Lcom/android/internal/telephony/uicc/euicc/async/AsyncResultCallback;Landroid/os/Handler;)V

    .line 793
    return-void
.end method

.method public deleteProfile(Ljava/lang/String;Lcom/android/internal/telephony/uicc/euicc/async/AsyncResultCallback;Landroid/os/Handler;)V
    .locals 2
    .param p1, "iccid"    # Ljava/lang/String;
    .param p3, "handler"    # Landroid/os/Handler;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/android/internal/telephony/uicc/euicc/async/AsyncResultCallback<",
            "Ljava/lang/Void;",
            ">;",
            "Landroid/os/Handler;",
            ")V"
        }
    .end annotation

    .line 425
    .local p2, "callback":Lcom/android/internal/telephony/uicc/euicc/async/AsyncResultCallback;, "Lcom/android/internal/telephony/uicc/euicc/async/AsyncResultCallback<Ljava/lang/Void;>;"
    new-instance v0, Lcom/android/internal/telephony/uicc/euicc/-$$Lambda$EuiccCard$MoRNAw8O6kYG_c2AJkozlJwO2NM;

    invoke-direct {v0, p1}, Lcom/android/internal/telephony/uicc/euicc/-$$Lambda$EuiccCard$MoRNAw8O6kYG_c2AJkozlJwO2NM;-><init>(Ljava/lang/String;)V

    .line 426
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/uicc/euicc/EuiccCard;->newRequestProvider(Lcom/android/internal/telephony/uicc/euicc/EuiccCard$ApduRequestBuilder;)Lcom/android/internal/telephony/uicc/euicc/apdu/RequestProvider;

    move-result-object v0

    sget-object v1, Lcom/android/internal/telephony/uicc/euicc/-$$Lambda$EuiccCard$6M0Cvkh43ith8i9YF2YZNZ-YvOM;->INSTANCE:Lcom/android/internal/telephony/uicc/euicc/-$$Lambda$EuiccCard$6M0Cvkh43ith8i9YF2YZNZ-YvOM;

    .line 425
    invoke-direct {p0, v0, v1, p2, p3}, Lcom/android/internal/telephony/uicc/euicc/EuiccCard;->sendApdu(Lcom/android/internal/telephony/uicc/euicc/apdu/RequestProvider;Lcom/android/internal/telephony/uicc/euicc/EuiccCard$ApduResponseHandler;Lcom/android/internal/telephony/uicc/euicc/async/AsyncResultCallback;Landroid/os/Handler;)V

    .line 442
    return-void
.end method

.method public disableProfile(Ljava/lang/String;ZLcom/android/internal/telephony/uicc/euicc/async/AsyncResultCallback;Landroid/os/Handler;)V
    .locals 2
    .param p1, "iccid"    # Ljava/lang/String;
    .param p2, "refresh"    # Z
    .param p4, "handler"    # Landroid/os/Handler;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Z",
            "Lcom/android/internal/telephony/uicc/euicc/async/AsyncResultCallback<",
            "Ljava/lang/Void;",
            ">;",
            "Landroid/os/Handler;",
            ")V"
        }
    .end annotation

    .line 285
    .local p3, "callback":Lcom/android/internal/telephony/uicc/euicc/async/AsyncResultCallback;, "Lcom/android/internal/telephony/uicc/euicc/async/AsyncResultCallback<Ljava/lang/Void;>;"
    new-instance v0, Lcom/android/internal/telephony/uicc/euicc/-$$Lambda$EuiccCard$0N6_V0pqmnTfKxVMU5IUj_svXDA;

    invoke-direct {v0, p1, p2}, Lcom/android/internal/telephony/uicc/euicc/-$$Lambda$EuiccCard$0N6_V0pqmnTfKxVMU5IUj_svXDA;-><init>(Ljava/lang/String;Z)V

    .line 286
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/uicc/euicc/EuiccCard;->newRequestProvider(Lcom/android/internal/telephony/uicc/euicc/EuiccCard$ApduRequestBuilder;)Lcom/android/internal/telephony/uicc/euicc/apdu/RequestProvider;

    move-result-object v0

    new-instance v1, Lcom/android/internal/telephony/uicc/euicc/-$$Lambda$EuiccCard$Rc41c7zRLip3RrHuKqZ-Sv7h8wI;

    invoke-direct {v1, p1}, Lcom/android/internal/telephony/uicc/euicc/-$$Lambda$EuiccCard$Rc41c7zRLip3RrHuKqZ-Sv7h8wI;-><init>(Ljava/lang/String;)V

    .line 285
    invoke-direct {p0, v0, v1, p3, p4}, Lcom/android/internal/telephony/uicc/euicc/EuiccCard;->sendApduWithSimResetErrorWorkaround(Lcom/android/internal/telephony/uicc/euicc/apdu/RequestProvider;Lcom/android/internal/telephony/uicc/euicc/EuiccCard$ApduResponseHandler;Lcom/android/internal/telephony/uicc/euicc/async/AsyncResultCallback;Landroid/os/Handler;)V

    .line 311
    return-void
.end method

.method public getAllProfiles(Lcom/android/internal/telephony/uicc/euicc/async/AsyncResultCallback;Landroid/os/Handler;)V
    .locals 2
    .param p2, "handler"    # Landroid/os/Handler;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/internal/telephony/uicc/euicc/async/AsyncResultCallback<",
            "[",
            "Landroid/service/euicc/EuiccProfileInfo;",
            ">;",
            "Landroid/os/Handler;",
            ")V"
        }
    .end annotation

    .line 209
    .local p1, "callback":Lcom/android/internal/telephony/uicc/euicc/async/AsyncResultCallback;, "Lcom/android/internal/telephony/uicc/euicc/async/AsyncResultCallback<[Landroid/service/euicc/EuiccProfileInfo;>;"
    sget-object v0, Lcom/android/internal/telephony/uicc/euicc/-$$Lambda$EuiccCard$toN63DWLt72dzp0WCl28UOMSmzE;->INSTANCE:Lcom/android/internal/telephony/uicc/euicc/-$$Lambda$EuiccCard$toN63DWLt72dzp0WCl28UOMSmzE;

    .line 210
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/uicc/euicc/EuiccCard;->newRequestProvider(Lcom/android/internal/telephony/uicc/euicc/EuiccCard$ApduRequestBuilder;)Lcom/android/internal/telephony/uicc/euicc/apdu/RequestProvider;

    move-result-object v0

    sget-object v1, Lcom/android/internal/telephony/uicc/euicc/-$$Lambda$EuiccCard$B99bQ-FkeD9OwB8_qTcKScitlrM;->INSTANCE:Lcom/android/internal/telephony/uicc/euicc/-$$Lambda$EuiccCard$B99bQ-FkeD9OwB8_qTcKScitlrM;

    .line 209
    invoke-direct {p0, v0, v1, p1, p2}, Lcom/android/internal/telephony/uicc/euicc/EuiccCard;->sendApdu(Lcom/android/internal/telephony/uicc/euicc/apdu/RequestProvider;Lcom/android/internal/telephony/uicc/euicc/EuiccCard$ApduResponseHandler;Lcom/android/internal/telephony/uicc/euicc/async/AsyncResultCallback;Landroid/os/Handler;)V

    .line 238
    return-void
.end method

.method public getDefaultSmdpAddress(Lcom/android/internal/telephony/uicc/euicc/async/AsyncResultCallback;Landroid/os/Handler;)V
    .locals 2
    .param p2, "handler"    # Landroid/os/Handler;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/internal/telephony/uicc/euicc/async/AsyncResultCallback<",
            "Ljava/lang/String;",
            ">;",
            "Landroid/os/Handler;",
            ")V"
        }
    .end annotation

    .line 478
    .local p1, "callback":Lcom/android/internal/telephony/uicc/euicc/async/AsyncResultCallback;, "Lcom/android/internal/telephony/uicc/euicc/async/AsyncResultCallback<Ljava/lang/String;>;"
    sget-object v0, Lcom/android/internal/telephony/uicc/euicc/-$$Lambda$EuiccCard$3LRPBN7jGieBA4qKqsiYoON1xT0;->INSTANCE:Lcom/android/internal/telephony/uicc/euicc/-$$Lambda$EuiccCard$3LRPBN7jGieBA4qKqsiYoON1xT0;

    .line 479
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/uicc/euicc/EuiccCard;->newRequestProvider(Lcom/android/internal/telephony/uicc/euicc/EuiccCard$ApduRequestBuilder;)Lcom/android/internal/telephony/uicc/euicc/apdu/RequestProvider;

    move-result-object v0

    sget-object v1, Lcom/android/internal/telephony/uicc/euicc/-$$Lambda$EuiccCard$Qej04bOzl5rj_T7NIjvbnJX7b2s;->INSTANCE:Lcom/android/internal/telephony/uicc/euicc/-$$Lambda$EuiccCard$Qej04bOzl5rj_T7NIjvbnJX7b2s;

    .line 478
    invoke-direct {p0, v0, v1, p1, p2}, Lcom/android/internal/telephony/uicc/euicc/EuiccCard;->sendApdu(Lcom/android/internal/telephony/uicc/euicc/apdu/RequestProvider;Lcom/android/internal/telephony/uicc/euicc/EuiccCard$ApduResponseHandler;Lcom/android/internal/telephony/uicc/euicc/async/AsyncResultCallback;Landroid/os/Handler;)V

    .line 485
    return-void
.end method

.method protected getDeviceId()[B
    .locals 3
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
        visibility = .enum Lcom/android/internal/annotations/VisibleForTesting$Visibility;->PRIVATE:Lcom/android/internal/annotations/VisibleForTesting$Visibility;
    .end annotation

    .line 980
    invoke-virtual {p0}, Lcom/android/internal/telephony/uicc/euicc/EuiccCard;->getPhoneId()I

    move-result v0

    invoke-static {v0}, Lcom/android/internal/telephony/PhoneFactory;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    .line 981
    .local v0, "phone":Lcom/android/internal/telephony/Phone;
    if-nez v0, :cond_0

    .line 982
    const/16 v1, 0x8

    new-array v1, v1, [B

    return-object v1

    .line 984
    :cond_0
    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getDeviceId()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/telephony/uicc/euicc/EuiccCard;->mSpecVersion:Lcom/android/internal/telephony/uicc/euicc/EuiccSpecVersion;

    invoke-static {v1, v2}, Lcom/android/internal/telephony/uicc/euicc/EuiccCard;->getDeviceId(Ljava/lang/String;Lcom/android/internal/telephony/uicc/euicc/EuiccSpecVersion;)[B

    move-result-object v1

    return-object v1
.end method

.method public getEid()Ljava/lang/String;
    .locals 1

    .line 357
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/euicc/EuiccCard;->mEid:Ljava/lang/String;

    return-object v0
.end method

.method public getEid(Lcom/android/internal/telephony/uicc/euicc/async/AsyncResultCallback;Landroid/os/Handler;)V
    .locals 2
    .param p2, "handler"    # Landroid/os/Handler;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/internal/telephony/uicc/euicc/async/AsyncResultCallback<",
            "Ljava/lang/String;",
            ">;",
            "Landroid/os/Handler;",
            ")V"
        }
    .end annotation

    .line 368
    .local p1, "callback":Lcom/android/internal/telephony/uicc/euicc/async/AsyncResultCallback;, "Lcom/android/internal/telephony/uicc/euicc/async/AsyncResultCallback<Ljava/lang/String;>;"
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/euicc/EuiccCard;->mEid:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 369
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/euicc/EuiccCard;->mEid:Ljava/lang/String;

    invoke-static {v0, p1, p2}, Lcom/android/internal/telephony/uicc/euicc/async/AsyncResultHelper;->returnResult(Ljava/lang/Object;Lcom/android/internal/telephony/uicc/euicc/async/AsyncResultCallback;Landroid/os/Handler;)V

    .line 370
    return-void

    .line 372
    :cond_0
    sget-object v0, Lcom/android/internal/telephony/uicc/euicc/-$$Lambda$EuiccCard$HBn5KBGylwjLqIEm3rBhXnUU_8U;->INSTANCE:Lcom/android/internal/telephony/uicc/euicc/-$$Lambda$EuiccCard$HBn5KBGylwjLqIEm3rBhXnUU_8U;

    .line 373
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/uicc/euicc/EuiccCard;->newRequestProvider(Lcom/android/internal/telephony/uicc/euicc/EuiccCard$ApduRequestBuilder;)Lcom/android/internal/telephony/uicc/euicc/apdu/RequestProvider;

    move-result-object v0

    new-instance v1, Lcom/android/internal/telephony/uicc/euicc/-$$Lambda$EuiccCard$okradEAowCk8rNBK1OaJIA6l6eA;

    invoke-direct {v1, p0}, Lcom/android/internal/telephony/uicc/euicc/-$$Lambda$EuiccCard$okradEAowCk8rNBK1OaJIA6l6eA;-><init>(Lcom/android/internal/telephony/uicc/euicc/EuiccCard;)V

    .line 372
    invoke-direct {p0, v0, v1, p1, p2}, Lcom/android/internal/telephony/uicc/euicc/EuiccCard;->sendApdu(Lcom/android/internal/telephony/uicc/euicc/apdu/RequestProvider;Lcom/android/internal/telephony/uicc/euicc/EuiccCard$ApduResponseHandler;Lcom/android/internal/telephony/uicc/euicc/async/AsyncResultCallback;Landroid/os/Handler;)V

    .line 387
    return-void
.end method

.method public getEuiccChallenge(Lcom/android/internal/telephony/uicc/euicc/async/AsyncResultCallback;Landroid/os/Handler;)V
    .locals 2
    .param p2, "handler"    # Landroid/os/Handler;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/internal/telephony/uicc/euicc/async/AsyncResultCallback<",
            "[B>;",
            "Landroid/os/Handler;",
            ")V"
        }
    .end annotation

    .line 574
    .local p1, "callback":Lcom/android/internal/telephony/uicc/euicc/async/AsyncResultCallback;, "Lcom/android/internal/telephony/uicc/euicc/async/AsyncResultCallback<[B>;"
    sget-object v0, Lcom/android/internal/telephony/uicc/euicc/-$$Lambda$EuiccCard$8wofF-Li1V6a8rJQc-M2IGeJ26E;->INSTANCE:Lcom/android/internal/telephony/uicc/euicc/-$$Lambda$EuiccCard$8wofF-Li1V6a8rJQc-M2IGeJ26E;

    .line 575
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/uicc/euicc/EuiccCard;->newRequestProvider(Lcom/android/internal/telephony/uicc/euicc/EuiccCard$ApduRequestBuilder;)Lcom/android/internal/telephony/uicc/euicc/apdu/RequestProvider;

    move-result-object v0

    sget-object v1, Lcom/android/internal/telephony/uicc/euicc/-$$Lambda$EuiccCard$AGpR_ArLREPF7xVOCf0sgHwbDtA;->INSTANCE:Lcom/android/internal/telephony/uicc/euicc/-$$Lambda$EuiccCard$AGpR_ArLREPF7xVOCf0sgHwbDtA;

    .line 574
    invoke-direct {p0, v0, v1, p1, p2}, Lcom/android/internal/telephony/uicc/euicc/EuiccCard;->sendApdu(Lcom/android/internal/telephony/uicc/euicc/apdu/RequestProvider;Lcom/android/internal/telephony/uicc/euicc/EuiccCard$ApduResponseHandler;Lcom/android/internal/telephony/uicc/euicc/async/AsyncResultCallback;Landroid/os/Handler;)V

    .line 581
    return-void
.end method

.method public getEuiccInfo1(Lcom/android/internal/telephony/uicc/euicc/async/AsyncResultCallback;Landroid/os/Handler;)V
    .locals 2
    .param p2, "handler"    # Landroid/os/Handler;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/internal/telephony/uicc/euicc/async/AsyncResultCallback<",
            "[B>;",
            "Landroid/os/Handler;",
            ")V"
        }
    .end annotation

    .line 592
    .local p1, "callback":Lcom/android/internal/telephony/uicc/euicc/async/AsyncResultCallback;, "Lcom/android/internal/telephony/uicc/euicc/async/AsyncResultCallback<[B>;"
    sget-object v0, Lcom/android/internal/telephony/uicc/euicc/-$$Lambda$EuiccCard$WE7TDTe507w4dBh1UvCgBgp3xVk;->INSTANCE:Lcom/android/internal/telephony/uicc/euicc/-$$Lambda$EuiccCard$WE7TDTe507w4dBh1UvCgBgp3xVk;

    .line 593
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/uicc/euicc/EuiccCard;->newRequestProvider(Lcom/android/internal/telephony/uicc/euicc/EuiccCard$ApduRequestBuilder;)Lcom/android/internal/telephony/uicc/euicc/apdu/RequestProvider;

    move-result-object v0

    sget-object v1, Lcom/android/internal/telephony/uicc/euicc/-$$Lambda$EuiccCard$hCCBghNOkOgvjeYe8LWQml6I9Ow;->INSTANCE:Lcom/android/internal/telephony/uicc/euicc/-$$Lambda$EuiccCard$hCCBghNOkOgvjeYe8LWQml6I9Ow;

    .line 592
    invoke-direct {p0, v0, v1, p1, p2}, Lcom/android/internal/telephony/uicc/euicc/EuiccCard;->sendApdu(Lcom/android/internal/telephony/uicc/euicc/apdu/RequestProvider;Lcom/android/internal/telephony/uicc/euicc/EuiccCard$ApduResponseHandler;Lcom/android/internal/telephony/uicc/euicc/async/AsyncResultCallback;Landroid/os/Handler;)V

    .line 598
    return-void
.end method

.method public getEuiccInfo2(Lcom/android/internal/telephony/uicc/euicc/async/AsyncResultCallback;Landroid/os/Handler;)V
    .locals 2
    .param p2, "handler"    # Landroid/os/Handler;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/internal/telephony/uicc/euicc/async/AsyncResultCallback<",
            "[B>;",
            "Landroid/os/Handler;",
            ")V"
        }
    .end annotation

    .line 609
    .local p1, "callback":Lcom/android/internal/telephony/uicc/euicc/async/AsyncResultCallback;, "Lcom/android/internal/telephony/uicc/euicc/async/AsyncResultCallback<[B>;"
    sget-object v0, Lcom/android/internal/telephony/uicc/euicc/-$$Lambda$EuiccCard$UxQlywWQ3cqQ7G7vS2KuMEwtYro;->INSTANCE:Lcom/android/internal/telephony/uicc/euicc/-$$Lambda$EuiccCard$UxQlywWQ3cqQ7G7vS2KuMEwtYro;

    .line 610
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/uicc/euicc/EuiccCard;->newRequestProvider(Lcom/android/internal/telephony/uicc/euicc/EuiccCard$ApduRequestBuilder;)Lcom/android/internal/telephony/uicc/euicc/apdu/RequestProvider;

    move-result-object v0

    sget-object v1, Lcom/android/internal/telephony/uicc/euicc/-$$Lambda$EuiccCard$X8OWFy8Bi7TMh117x6vCBqzSqVY;->INSTANCE:Lcom/android/internal/telephony/uicc/euicc/-$$Lambda$EuiccCard$X8OWFy8Bi7TMh117x6vCBqzSqVY;

    .line 609
    invoke-direct {p0, v0, v1, p1, p2}, Lcom/android/internal/telephony/uicc/euicc/EuiccCard;->sendApdu(Lcom/android/internal/telephony/uicc/euicc/apdu/RequestProvider;Lcom/android/internal/telephony/uicc/euicc/EuiccCard$ApduResponseHandler;Lcom/android/internal/telephony/uicc/euicc/async/AsyncResultCallback;Landroid/os/Handler;)V

    .line 615
    return-void
.end method

.method public final getProfile(Ljava/lang/String;Lcom/android/internal/telephony/uicc/euicc/async/AsyncResultCallback;Landroid/os/Handler;)V
    .locals 2
    .param p1, "iccid"    # Ljava/lang/String;
    .param p3, "handler"    # Landroid/os/Handler;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/android/internal/telephony/uicc/euicc/async/AsyncResultCallback<",
            "Landroid/service/euicc/EuiccProfileInfo;",
            ">;",
            "Landroid/os/Handler;",
            ")V"
        }
    .end annotation

    .line 249
    .local p2, "callback":Lcom/android/internal/telephony/uicc/euicc/async/AsyncResultCallback;, "Lcom/android/internal/telephony/uicc/euicc/async/AsyncResultCallback<Landroid/service/euicc/EuiccProfileInfo;>;"
    new-instance v0, Lcom/android/internal/telephony/uicc/euicc/-$$Lambda$EuiccCard$QGtQZCF6KEnI-x59_tp1eo8mWew;

    invoke-direct {v0, p1}, Lcom/android/internal/telephony/uicc/euicc/-$$Lambda$EuiccCard$QGtQZCF6KEnI-x59_tp1eo8mWew;-><init>(Ljava/lang/String;)V

    .line 250
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/uicc/euicc/EuiccCard;->newRequestProvider(Lcom/android/internal/telephony/uicc/euicc/EuiccCard$ApduRequestBuilder;)Lcom/android/internal/telephony/uicc/euicc/apdu/RequestProvider;

    move-result-object v0

    sget-object v1, Lcom/android/internal/telephony/uicc/euicc/-$$Lambda$EuiccCard$TTvsStUIyUFrPpvGTlsjBCy3NyM;->INSTANCE:Lcom/android/internal/telephony/uicc/euicc/-$$Lambda$EuiccCard$TTvsStUIyUFrPpvGTlsjBCy3NyM;

    .line 249
    invoke-direct {p0, v0, v1, p2, p3}, Lcom/android/internal/telephony/uicc/euicc/EuiccCard;->sendApdu(Lcom/android/internal/telephony/uicc/euicc/apdu/RequestProvider;Lcom/android/internal/telephony/uicc/euicc/EuiccCard$ApduResponseHandler;Lcom/android/internal/telephony/uicc/euicc/async/AsyncResultCallback;Landroid/os/Handler;)V

    .line 273
    return-void
.end method

.method protected getResources()Landroid/content/res/Resources;
    .locals 1
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
        visibility = .enum Lcom/android/internal/annotations/VisibleForTesting$Visibility;->PRIVATE:Lcom/android/internal/annotations/VisibleForTesting$Visibility;
    .end annotation

    .line 1049
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v0

    return-object v0
.end method

.method public getRulesAuthTable(Lcom/android/internal/telephony/uicc/euicc/async/AsyncResultCallback;Landroid/os/Handler;)V
    .locals 2
    .param p2, "handler"    # Landroid/os/Handler;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/internal/telephony/uicc/euicc/async/AsyncResultCallback<",
            "Landroid/telephony/euicc/EuiccRulesAuthTable;",
            ">;",
            "Landroid/os/Handler;",
            ")V"
        }
    .end annotation

    .line 540
    .local p1, "callback":Lcom/android/internal/telephony/uicc/euicc/async/AsyncResultCallback;, "Lcom/android/internal/telephony/uicc/euicc/async/AsyncResultCallback<Landroid/telephony/euicc/EuiccRulesAuthTable;>;"
    sget-object v0, Lcom/android/internal/telephony/uicc/euicc/-$$Lambda$EuiccCard$AWltG4uFbHn2Xq7ZPpU3U1qOqVM;->INSTANCE:Lcom/android/internal/telephony/uicc/euicc/-$$Lambda$EuiccCard$AWltG4uFbHn2Xq7ZPpU3U1qOqVM;

    .line 541
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/uicc/euicc/EuiccCard;->newRequestProvider(Lcom/android/internal/telephony/uicc/euicc/EuiccCard$ApduRequestBuilder;)Lcom/android/internal/telephony/uicc/euicc/apdu/RequestProvider;

    move-result-object v0

    sget-object v1, Lcom/android/internal/telephony/uicc/euicc/-$$Lambda$EuiccCard$IMmMA3gSh1g8aaHsYtCih61EKmo;->INSTANCE:Lcom/android/internal/telephony/uicc/euicc/-$$Lambda$EuiccCard$IMmMA3gSh1g8aaHsYtCih61EKmo;

    .line 540
    invoke-direct {p0, v0, v1, p1, p2}, Lcom/android/internal/telephony/uicc/euicc/EuiccCard;->sendApdu(Lcom/android/internal/telephony/uicc/euicc/apdu/RequestProvider;Lcom/android/internal/telephony/uicc/euicc/EuiccCard$ApduResponseHandler;Lcom/android/internal/telephony/uicc/euicc/async/AsyncResultCallback;Landroid/os/Handler;)V

    .line 564
    return-void
.end method

.method public getSmdsAddress(Lcom/android/internal/telephony/uicc/euicc/async/AsyncResultCallback;Landroid/os/Handler;)V
    .locals 2
    .param p2, "handler"    # Landroid/os/Handler;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/internal/telephony/uicc/euicc/async/AsyncResultCallback<",
            "Ljava/lang/String;",
            ">;",
            "Landroid/os/Handler;",
            ")V"
        }
    .end annotation

    .line 495
    .local p1, "callback":Lcom/android/internal/telephony/uicc/euicc/async/AsyncResultCallback;, "Lcom/android/internal/telephony/uicc/euicc/async/AsyncResultCallback<Ljava/lang/String;>;"
    sget-object v0, Lcom/android/internal/telephony/uicc/euicc/-$$Lambda$EuiccCard$tPSWjOKtm9yQg21kHmLX49PPf_4;->INSTANCE:Lcom/android/internal/telephony/uicc/euicc/-$$Lambda$EuiccCard$tPSWjOKtm9yQg21kHmLX49PPf_4;

    .line 496
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/uicc/euicc/EuiccCard;->newRequestProvider(Lcom/android/internal/telephony/uicc/euicc/EuiccCard$ApduRequestBuilder;)Lcom/android/internal/telephony/uicc/euicc/apdu/RequestProvider;

    move-result-object v0

    sget-object v1, Lcom/android/internal/telephony/uicc/euicc/-$$Lambda$EuiccCard$u2-6zCuoZP9CLxIS2g4BREHHECI;->INSTANCE:Lcom/android/internal/telephony/uicc/euicc/-$$Lambda$EuiccCard$u2-6zCuoZP9CLxIS2g4BREHHECI;

    .line 495
    invoke-direct {p0, v0, v1, p1, p2}, Lcom/android/internal/telephony/uicc/euicc/EuiccCard;->sendApdu(Lcom/android/internal/telephony/uicc/euicc/apdu/RequestProvider;Lcom/android/internal/telephony/uicc/euicc/EuiccCard$ApduResponseHandler;Lcom/android/internal/telephony/uicc/euicc/async/AsyncResultCallback;Landroid/os/Handler;)V

    .line 502
    return-void
.end method

.method public getSpecVersion(Lcom/android/internal/telephony/uicc/euicc/async/AsyncResultCallback;Landroid/os/Handler;)V
    .locals 2
    .param p2, "handler"    # Landroid/os/Handler;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/internal/telephony/uicc/euicc/async/AsyncResultCallback<",
            "Lcom/android/internal/telephony/uicc/euicc/EuiccSpecVersion;",
            ">;",
            "Landroid/os/Handler;",
            ")V"
        }
    .end annotation

    .line 183
    .local p1, "callback":Lcom/android/internal/telephony/uicc/euicc/async/AsyncResultCallback;, "Lcom/android/internal/telephony/uicc/euicc/async/AsyncResultCallback<Lcom/android/internal/telephony/uicc/euicc/EuiccSpecVersion;>;"
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/euicc/EuiccCard;->mSpecVersion:Lcom/android/internal/telephony/uicc/euicc/EuiccSpecVersion;

    if-eqz v0, :cond_0

    .line 184
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/euicc/EuiccCard;->mSpecVersion:Lcom/android/internal/telephony/uicc/euicc/EuiccSpecVersion;

    invoke-static {v0, p1, p2}, Lcom/android/internal/telephony/uicc/euicc/async/AsyncResultHelper;->returnResult(Ljava/lang/Object;Lcom/android/internal/telephony/uicc/euicc/async/AsyncResultCallback;Landroid/os/Handler;)V

    .line 185
    return-void

    .line 188
    :cond_0
    sget-object v0, Lcom/android/internal/telephony/uicc/euicc/-$$Lambda$EuiccCard$HgCDP54gCppk81aqhuCG0YGJWEc;->INSTANCE:Lcom/android/internal/telephony/uicc/euicc/-$$Lambda$EuiccCard$HgCDP54gCppk81aqhuCG0YGJWEc;

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/uicc/euicc/EuiccCard;->newRequestProvider(Lcom/android/internal/telephony/uicc/euicc/EuiccCard$ApduRequestBuilder;)Lcom/android/internal/telephony/uicc/euicc/apdu/RequestProvider;

    move-result-object v0

    new-instance v1, Lcom/android/internal/telephony/uicc/euicc/-$$Lambda$EuiccCard$U1ORE3W_o_HdXWc6N59UnRQmLQI;

    invoke-direct {v1, p0}, Lcom/android/internal/telephony/uicc/euicc/-$$Lambda$EuiccCard$U1ORE3W_o_HdXWc6N59UnRQmLQI;-><init>(Lcom/android/internal/telephony/uicc/euicc/EuiccCard;)V

    invoke-direct {p0, v0, v1, p1, p2}, Lcom/android/internal/telephony/uicc/euicc/EuiccCard;->sendApdu(Lcom/android/internal/telephony/uicc/euicc/apdu/RequestProvider;Lcom/android/internal/telephony/uicc/euicc/EuiccCard$ApduResponseHandler;Lcom/android/internal/telephony/uicc/euicc/async/AsyncResultCallback;Landroid/os/Handler;)V

    .line 190
    return-void
.end method

.method public listNotifications(ILcom/android/internal/telephony/uicc/euicc/async/AsyncResultCallback;Landroid/os/Handler;)V
    .locals 2
    .param p1, "events"    # I
    .param p3, "handler"    # Landroid/os/Handler;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/android/internal/telephony/uicc/euicc/async/AsyncResultCallback<",
            "[",
            "Landroid/telephony/euicc/EuiccNotification;",
            ">;",
            "Landroid/os/Handler;",
            ")V"
        }
    .end annotation

    .line 805
    .local p2, "callback":Lcom/android/internal/telephony/uicc/euicc/async/AsyncResultCallback;, "Lcom/android/internal/telephony/uicc/euicc/async/AsyncResultCallback<[Landroid/telephony/euicc/EuiccNotification;>;"
    new-instance v0, Lcom/android/internal/telephony/uicc/euicc/-$$Lambda$EuiccCard$Ktn9yHrkajo1XOdBNZaiNkYG4vA;

    invoke-direct {v0, p1}, Lcom/android/internal/telephony/uicc/euicc/-$$Lambda$EuiccCard$Ktn9yHrkajo1XOdBNZaiNkYG4vA;-><init>(I)V

    .line 806
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/uicc/euicc/EuiccCard;->newRequestProvider(Lcom/android/internal/telephony/uicc/euicc/EuiccCard$ApduRequestBuilder;)Lcom/android/internal/telephony/uicc/euicc/apdu/RequestProvider;

    move-result-object v0

    sget-object v1, Lcom/android/internal/telephony/uicc/euicc/-$$Lambda$EuiccCard$nNX2R6O4UzJoFix96ifwgIx0npQ;->INSTANCE:Lcom/android/internal/telephony/uicc/euicc/-$$Lambda$EuiccCard$nNX2R6O4UzJoFix96ifwgIx0npQ;

    .line 805
    invoke-direct {p0, v0, v1, p2, p3}, Lcom/android/internal/telephony/uicc/euicc/EuiccCard;->sendApdu(Lcom/android/internal/telephony/uicc/euicc/apdu/RequestProvider;Lcom/android/internal/telephony/uicc/euicc/EuiccCard$ApduResponseHandler;Lcom/android/internal/telephony/uicc/euicc/async/AsyncResultCallback;Landroid/os/Handler;)V

    .line 821
    return-void
.end method

.method public loadBoundProfilePackage([BLcom/android/internal/telephony/uicc/euicc/async/AsyncResultCallback;Landroid/os/Handler;)V
    .locals 2
    .param p1, "boundProfilePackage"    # [B
    .param p3, "handler"    # Landroid/os/Handler;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B",
            "Lcom/android/internal/telephony/uicc/euicc/async/AsyncResultCallback<",
            "[B>;",
            "Landroid/os/Handler;",
            ")V"
        }
    .end annotation

    .line 719
    .local p2, "callback":Lcom/android/internal/telephony/uicc/euicc/async/AsyncResultCallback;, "Lcom/android/internal/telephony/uicc/euicc/async/AsyncResultCallback<[B>;"
    new-instance v0, Lcom/android/internal/telephony/uicc/euicc/-$$Lambda$EuiccCard$XDNTzAU-9I92HztVAJQr4NXR3DU;

    invoke-direct {v0, p1}, Lcom/android/internal/telephony/uicc/euicc/-$$Lambda$EuiccCard$XDNTzAU-9I92HztVAJQr4NXR3DU;-><init>([B)V

    .line 720
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/uicc/euicc/EuiccCard;->newRequestProvider(Lcom/android/internal/telephony/uicc/euicc/EuiccCard$ApduRequestBuilder;)Lcom/android/internal/telephony/uicc/euicc/apdu/RequestProvider;

    move-result-object v0

    sget-object v1, Lcom/android/internal/telephony/uicc/euicc/-$$Lambda$EuiccCard$g0LHcTcRLtF0WE8Tyv2BvipGgrM;->INSTANCE:Lcom/android/internal/telephony/uicc/euicc/-$$Lambda$EuiccCard$g0LHcTcRLtF0WE8Tyv2BvipGgrM;

    .line 719
    invoke-direct {p0, v0, v1, p2, p3}, Lcom/android/internal/telephony/uicc/euicc/EuiccCard;->sendApdu(Lcom/android/internal/telephony/uicc/euicc/apdu/RequestProvider;Lcom/android/internal/telephony/uicc/euicc/EuiccCard$ApduResponseHandler;Lcom/android/internal/telephony/uicc/euicc/async/AsyncResultCallback;Landroid/os/Handler;)V

    .line 770
    return-void
.end method

.method protected loadEidAndNotifyRegistrants()V
    .locals 2
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
        visibility = .enum Lcom/android/internal/annotations/VisibleForTesting$Visibility;->PRIVATE:Lcom/android/internal/annotations/VisibleForTesting$Visibility;
    .end annotation

    .line 155
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    .line 156
    .local v0, "euiccMainThreadHandler":Landroid/os/Handler;
    new-instance v1, Lcom/android/internal/telephony/uicc/euicc/EuiccCard$1;

    invoke-direct {v1, p0}, Lcom/android/internal/telephony/uicc/euicc/EuiccCard$1;-><init>(Lcom/android/internal/telephony/uicc/euicc/EuiccCard;)V

    .line 175
    .local v1, "cardCb":Lcom/android/internal/telephony/uicc/euicc/async/AsyncResultCallback;, "Lcom/android/internal/telephony/uicc/euicc/async/AsyncResultCallback<Ljava/lang/String;>;"
    invoke-virtual {p0, v1, v0}, Lcom/android/internal/telephony/uicc/euicc/EuiccCard;->getEid(Lcom/android/internal/telephony/uicc/euicc/async/AsyncResultCallback;Landroid/os/Handler;)V

    .line 176
    return-void
.end method

.method public prepareDownload([B[B[B[BLcom/android/internal/telephony/uicc/euicc/async/AsyncResultCallback;Landroid/os/Handler;)V
    .locals 2
    .param p1, "hashCc"    # [B
    .param p2, "smdpSigned2"    # [B
    .param p3, "smdpSignature2"    # [B
    .param p4, "smdpCertificate"    # [B
    .param p6, "handler"    # Landroid/os/Handler;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B[B[B[B",
            "Lcom/android/internal/telephony/uicc/euicc/async/AsyncResultCallback<",
            "[B>;",
            "Landroid/os/Handler;",
            ")V"
        }
    .end annotation

    .line 684
    .local p5, "callback":Lcom/android/internal/telephony/uicc/euicc/async/AsyncResultCallback;, "Lcom/android/internal/telephony/uicc/euicc/async/AsyncResultCallback<[B>;"
    new-instance v0, Lcom/android/internal/telephony/uicc/euicc/-$$Lambda$EuiccCard$5wK_r0z9fLtA1ZRVlbk3WfOYXJI;

    invoke-direct {v0, p2, p3, p1, p4}, Lcom/android/internal/telephony/uicc/euicc/-$$Lambda$EuiccCard$5wK_r0z9fLtA1ZRVlbk3WfOYXJI;-><init>([B[B[B[B)V

    .line 685
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/uicc/euicc/EuiccCard;->newRequestProvider(Lcom/android/internal/telephony/uicc/euicc/EuiccCard$ApduRequestBuilder;)Lcom/android/internal/telephony/uicc/euicc/apdu/RequestProvider;

    move-result-object v0

    sget-object v1, Lcom/android/internal/telephony/uicc/euicc/-$$Lambda$EuiccCard$v0S5B6MBAksDVSST9c1nk2Movvk;->INSTANCE:Lcom/android/internal/telephony/uicc/euicc/-$$Lambda$EuiccCard$v0S5B6MBAksDVSST9c1nk2Movvk;

    .line 684
    invoke-direct {p0, v0, v1, p5, p6}, Lcom/android/internal/telephony/uicc/euicc/EuiccCard;->sendApdu(Lcom/android/internal/telephony/uicc/euicc/apdu/RequestProvider;Lcom/android/internal/telephony/uicc/euicc/EuiccCard$ApduResponseHandler;Lcom/android/internal/telephony/uicc/euicc/async/AsyncResultCallback;Landroid/os/Handler;)V

    .line 706
    return-void
.end method

.method public registerForEidReady(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 3
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .line 133
    new-instance v0, Landroid/os/Registrant;

    invoke-direct {v0, p1, p2, p3}, Landroid/os/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 134
    .local v0, "r":Landroid/os/Registrant;
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/euicc/EuiccCard;->mEid:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 135
    new-instance v1, Landroid/os/AsyncResult;

    const/4 v2, 0x0

    invoke-direct {v1, v2, v2, v2}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {v0, v1}, Landroid/os/Registrant;->notifyRegistrant(Landroid/os/AsyncResult;)V

    goto :goto_0

    .line 137
    :cond_0
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/euicc/EuiccCard;->mEidReadyRegistrants:Landroid/os/RegistrantList;

    if-nez v1, :cond_1

    .line 138
    new-instance v1, Landroid/os/RegistrantList;

    invoke-direct {v1}, Landroid/os/RegistrantList;-><init>()V

    iput-object v1, p0, Lcom/android/internal/telephony/uicc/euicc/EuiccCard;->mEidReadyRegistrants:Landroid/os/RegistrantList;

    .line 140
    :cond_1
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/euicc/EuiccCard;->mEidReadyRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v1, v0}, Landroid/os/RegistrantList;->add(Landroid/os/Registrant;)V

    .line 142
    :goto_0
    return-void
.end method

.method public removeNotificationFromList(ILcom/android/internal/telephony/uicc/euicc/async/AsyncResultCallback;Landroid/os/Handler;)V
    .locals 2
    .param p1, "seqNumber"    # I
    .param p3, "handler"    # Landroid/os/Handler;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/android/internal/telephony/uicc/euicc/async/AsyncResultCallback<",
            "Ljava/lang/Void;",
            ">;",
            "Landroid/os/Handler;",
            ")V"
        }
    .end annotation

    .line 903
    .local p2, "callback":Lcom/android/internal/telephony/uicc/euicc/async/AsyncResultCallback;, "Lcom/android/internal/telephony/uicc/euicc/async/AsyncResultCallback<Ljava/lang/Void;>;"
    new-instance v0, Lcom/android/internal/telephony/uicc/euicc/-$$Lambda$EuiccCard$7VXOA-y5ZAskOFBWhqVLPntT7K0;

    invoke-direct {v0, p1}, Lcom/android/internal/telephony/uicc/euicc/-$$Lambda$EuiccCard$7VXOA-y5ZAskOFBWhqVLPntT7K0;-><init>(I)V

    .line 904
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/uicc/euicc/EuiccCard;->newRequestProvider(Lcom/android/internal/telephony/uicc/euicc/EuiccCard$ApduRequestBuilder;)Lcom/android/internal/telephony/uicc/euicc/apdu/RequestProvider;

    move-result-object v0

    sget-object v1, Lcom/android/internal/telephony/uicc/euicc/-$$Lambda$EuiccCard$7T_o46uJcfxyJtjGMX_0X0kMk84;->INSTANCE:Lcom/android/internal/telephony/uicc/euicc/-$$Lambda$EuiccCard$7T_o46uJcfxyJtjGMX_0X0kMk84;

    .line 903
    invoke-direct {p0, v0, v1, p2, p3}, Lcom/android/internal/telephony/uicc/euicc/EuiccCard;->sendApdu(Lcom/android/internal/telephony/uicc/euicc/apdu/RequestProvider;Lcom/android/internal/telephony/uicc/euicc/EuiccCard$ApduResponseHandler;Lcom/android/internal/telephony/uicc/euicc/async/AsyncResultCallback;Landroid/os/Handler;)V

    .line 920
    return-void
.end method

.method public resetMemory(ILcom/android/internal/telephony/uicc/euicc/async/AsyncResultCallback;Landroid/os/Handler;)V
    .locals 2
    .param p1, "options"    # I
    .param p3, "handler"    # Landroid/os/Handler;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/android/internal/telephony/uicc/euicc/async/AsyncResultCallback<",
            "Ljava/lang/Void;",
            ">;",
            "Landroid/os/Handler;",
            ")V"
        }
    .end annotation

    .line 454
    .local p2, "callback":Lcom/android/internal/telephony/uicc/euicc/async/AsyncResultCallback;, "Lcom/android/internal/telephony/uicc/euicc/async/AsyncResultCallback<Ljava/lang/Void;>;"
    new-instance v0, Lcom/android/internal/telephony/uicc/euicc/-$$Lambda$EuiccCard$Wx9UmYdMwRy23Rf6Vd7b2aSx6S8;

    invoke-direct {v0, p1}, Lcom/android/internal/telephony/uicc/euicc/-$$Lambda$EuiccCard$Wx9UmYdMwRy23Rf6Vd7b2aSx6S8;-><init>(I)V

    .line 455
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/uicc/euicc/EuiccCard;->newRequestProvider(Lcom/android/internal/telephony/uicc/euicc/EuiccCard$ApduRequestBuilder;)Lcom/android/internal/telephony/uicc/euicc/apdu/RequestProvider;

    move-result-object v0

    sget-object v1, Lcom/android/internal/telephony/uicc/euicc/-$$Lambda$EuiccCard$0NUjmK32-r6146hGb0RCJUAfiOg;->INSTANCE:Lcom/android/internal/telephony/uicc/euicc/-$$Lambda$EuiccCard$0NUjmK32-r6146hGb0RCJUAfiOg;

    .line 454
    invoke-direct {p0, v0, v1, p2, p3}, Lcom/android/internal/telephony/uicc/euicc/EuiccCard;->sendApduWithSimResetErrorWorkaround(Lcom/android/internal/telephony/uicc/euicc/apdu/RequestProvider;Lcom/android/internal/telephony/uicc/euicc/EuiccCard$ApduResponseHandler;Lcom/android/internal/telephony/uicc/euicc/async/AsyncResultCallback;Landroid/os/Handler;)V

    .line 468
    return-void
.end method

.method public retrieveNotification(ILcom/android/internal/telephony/uicc/euicc/async/AsyncResultCallback;Landroid/os/Handler;)V
    .locals 2
    .param p1, "seqNumber"    # I
    .param p3, "handler"    # Landroid/os/Handler;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/android/internal/telephony/uicc/euicc/async/AsyncResultCallback<",
            "Landroid/telephony/euicc/EuiccNotification;",
            ">;",
            "Landroid/os/Handler;",
            ")V"
        }
    .end annotation

    .line 874
    .local p2, "callback":Lcom/android/internal/telephony/uicc/euicc/async/AsyncResultCallback;, "Lcom/android/internal/telephony/uicc/euicc/async/AsyncResultCallback<Landroid/telephony/euicc/EuiccNotification;>;"
    new-instance v0, Lcom/android/internal/telephony/uicc/euicc/-$$Lambda$EuiccCard$KOXfsx-q_NGiOmoDdBfBkea98mo;

    invoke-direct {v0, p1}, Lcom/android/internal/telephony/uicc/euicc/-$$Lambda$EuiccCard$KOXfsx-q_NGiOmoDdBfBkea98mo;-><init>(I)V

    .line 875
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/uicc/euicc/EuiccCard;->newRequestProvider(Lcom/android/internal/telephony/uicc/euicc/EuiccCard$ApduRequestBuilder;)Lcom/android/internal/telephony/uicc/euicc/apdu/RequestProvider;

    move-result-object v0

    sget-object v1, Lcom/android/internal/telephony/uicc/euicc/-$$Lambda$EuiccCard$ICeXAGilnO8X0GNWbK6HW7brq-s;->INSTANCE:Lcom/android/internal/telephony/uicc/euicc/-$$Lambda$EuiccCard$ICeXAGilnO8X0GNWbK6HW7brq-s;

    .line 874
    invoke-direct {p0, v0, v1, p2, p3}, Lcom/android/internal/telephony/uicc/euicc/EuiccCard;->sendApdu(Lcom/android/internal/telephony/uicc/euicc/apdu/RequestProvider;Lcom/android/internal/telephony/uicc/euicc/EuiccCard$ApduResponseHandler;Lcom/android/internal/telephony/uicc/euicc/async/AsyncResultCallback;Landroid/os/Handler;)V

    .line 891
    return-void
.end method

.method public retrieveNotificationList(ILcom/android/internal/telephony/uicc/euicc/async/AsyncResultCallback;Landroid/os/Handler;)V
    .locals 2
    .param p1, "events"    # I
    .param p3, "handler"    # Landroid/os/Handler;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/android/internal/telephony/uicc/euicc/async/AsyncResultCallback<",
            "[",
            "Landroid/telephony/euicc/EuiccNotification;",
            ">;",
            "Landroid/os/Handler;",
            ")V"
        }
    .end annotation

    .line 833
    .local p2, "callback":Lcom/android/internal/telephony/uicc/euicc/async/AsyncResultCallback;, "Lcom/android/internal/telephony/uicc/euicc/async/AsyncResultCallback<[Landroid/telephony/euicc/EuiccNotification;>;"
    new-instance v0, Lcom/android/internal/telephony/uicc/euicc/-$$Lambda$EuiccCard$w7krlzKo4ZhEQOPUsWoy_EH6S6w;

    invoke-direct {v0, p1}, Lcom/android/internal/telephony/uicc/euicc/-$$Lambda$EuiccCard$w7krlzKo4ZhEQOPUsWoy_EH6S6w;-><init>(I)V

    .line 834
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/uicc/euicc/EuiccCard;->newRequestProvider(Lcom/android/internal/telephony/uicc/euicc/EuiccCard$ApduRequestBuilder;)Lcom/android/internal/telephony/uicc/euicc/apdu/RequestProvider;

    move-result-object v0

    sget-object v1, Lcom/android/internal/telephony/uicc/euicc/-$$Lambda$EuiccCard$47aYJh9ifWZ2OFC8SQNq0T5EePE;->INSTANCE:Lcom/android/internal/telephony/uicc/euicc/-$$Lambda$EuiccCard$47aYJh9ifWZ2OFC8SQNq0T5EePE;

    .line 833
    invoke-direct {p0, v0, v1, p2, p3}, Lcom/android/internal/telephony/uicc/euicc/EuiccCard;->sendApdu(Lcom/android/internal/telephony/uicc/euicc/apdu/RequestProvider;Lcom/android/internal/telephony/uicc/euicc/EuiccCard$ApduResponseHandler;Lcom/android/internal/telephony/uicc/euicc/async/AsyncResultCallback;Landroid/os/Handler;)V

    .line 862
    return-void
.end method

.method public setDefaultSmdpAddress(Ljava/lang/String;Lcom/android/internal/telephony/uicc/euicc/async/AsyncResultCallback;Landroid/os/Handler;)V
    .locals 2
    .param p1, "defaultSmdpAddress"    # Ljava/lang/String;
    .param p3, "handler"    # Landroid/os/Handler;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/android/internal/telephony/uicc/euicc/async/AsyncResultCallback<",
            "Ljava/lang/Void;",
            ">;",
            "Landroid/os/Handler;",
            ")V"
        }
    .end annotation

    .line 513
    .local p2, "callback":Lcom/android/internal/telephony/uicc/euicc/async/AsyncResultCallback;, "Lcom/android/internal/telephony/uicc/euicc/async/AsyncResultCallback<Ljava/lang/Void;>;"
    new-instance v0, Lcom/android/internal/telephony/uicc/euicc/-$$Lambda$EuiccCard$FbRMt6fKnYLkYt6oi5qhs1ZyEvc;

    invoke-direct {v0, p1}, Lcom/android/internal/telephony/uicc/euicc/-$$Lambda$EuiccCard$FbRMt6fKnYLkYt6oi5qhs1ZyEvc;-><init>(Ljava/lang/String;)V

    .line 514
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/uicc/euicc/EuiccCard;->newRequestProvider(Lcom/android/internal/telephony/uicc/euicc/EuiccCard$ApduRequestBuilder;)Lcom/android/internal/telephony/uicc/euicc/apdu/RequestProvider;

    move-result-object v0

    sget-object v1, Lcom/android/internal/telephony/uicc/euicc/-$$Lambda$EuiccCard$wgj93ukgzqjttFzrDLqGFk_Sd5A;->INSTANCE:Lcom/android/internal/telephony/uicc/euicc/-$$Lambda$EuiccCard$wgj93ukgzqjttFzrDLqGFk_Sd5A;

    .line 513
    invoke-direct {p0, v0, v1, p2, p3}, Lcom/android/internal/telephony/uicc/euicc/EuiccCard;->sendApdu(Lcom/android/internal/telephony/uicc/euicc/apdu/RequestProvider;Lcom/android/internal/telephony/uicc/euicc/EuiccCard$ApduResponseHandler;Lcom/android/internal/telephony/uicc/euicc/async/AsyncResultCallback;Landroid/os/Handler;)V

    .line 529
    return-void
.end method

.method public setNickname(Ljava/lang/String;Ljava/lang/String;Lcom/android/internal/telephony/uicc/euicc/async/AsyncResultCallback;Landroid/os/Handler;)V
    .locals 2
    .param p1, "iccid"    # Ljava/lang/String;
    .param p2, "nickname"    # Ljava/lang/String;
    .param p4, "handler"    # Landroid/os/Handler;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/android/internal/telephony/uicc/euicc/async/AsyncResultCallback<",
            "Ljava/lang/Void;",
            ">;",
            "Landroid/os/Handler;",
            ")V"
        }
    .end annotation

    .line 398
    .local p3, "callback":Lcom/android/internal/telephony/uicc/euicc/async/AsyncResultCallback;, "Lcom/android/internal/telephony/uicc/euicc/async/AsyncResultCallback<Ljava/lang/Void;>;"
    new-instance v0, Lcom/android/internal/telephony/uicc/euicc/-$$Lambda$EuiccCard$_VOB5FQfE7RUMgpmr8bK-j3CsUA;

    invoke-direct {v0, p1, p2}, Lcom/android/internal/telephony/uicc/euicc/-$$Lambda$EuiccCard$_VOB5FQfE7RUMgpmr8bK-j3CsUA;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 399
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/uicc/euicc/EuiccCard;->newRequestProvider(Lcom/android/internal/telephony/uicc/euicc/EuiccCard$ApduRequestBuilder;)Lcom/android/internal/telephony/uicc/euicc/apdu/RequestProvider;

    move-result-object v0

    sget-object v1, Lcom/android/internal/telephony/uicc/euicc/-$$Lambda$EuiccCard$4gL9ssytVrnit44qHJ-7-Uy6ZOQ;->INSTANCE:Lcom/android/internal/telephony/uicc/euicc/-$$Lambda$EuiccCard$4gL9ssytVrnit44qHJ-7-Uy6ZOQ;

    .line 398
    invoke-direct {p0, v0, v1, p3, p4}, Lcom/android/internal/telephony/uicc/euicc/EuiccCard;->sendApdu(Lcom/android/internal/telephony/uicc/euicc/apdu/RequestProvider;Lcom/android/internal/telephony/uicc/euicc/EuiccCard$ApduResponseHandler;Lcom/android/internal/telephony/uicc/euicc/async/AsyncResultCallback;Landroid/os/Handler;)V

    .line 415
    return-void
.end method

.method public switchToProfile(Ljava/lang/String;ZLcom/android/internal/telephony/uicc/euicc/async/AsyncResultCallback;Landroid/os/Handler;)V
    .locals 2
    .param p1, "iccid"    # Ljava/lang/String;
    .param p2, "refresh"    # Z
    .param p4, "handler"    # Landroid/os/Handler;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Z",
            "Lcom/android/internal/telephony/uicc/euicc/async/AsyncResultCallback<",
            "Ljava/lang/Void;",
            ">;",
            "Landroid/os/Handler;",
            ")V"
        }
    .end annotation

    .line 324
    .local p3, "callback":Lcom/android/internal/telephony/uicc/euicc/async/AsyncResultCallback;, "Lcom/android/internal/telephony/uicc/euicc/async/AsyncResultCallback<Ljava/lang/Void;>;"
    new-instance v0, Lcom/android/internal/telephony/uicc/euicc/-$$Lambda$EuiccCard$AYHfF2w_VlO00s9p-djcPJl_1no;

    invoke-direct {v0, p1, p2}, Lcom/android/internal/telephony/uicc/euicc/-$$Lambda$EuiccCard$AYHfF2w_VlO00s9p-djcPJl_1no;-><init>(Ljava/lang/String;Z)V

    .line 325
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/uicc/euicc/EuiccCard;->newRequestProvider(Lcom/android/internal/telephony/uicc/euicc/EuiccCard$ApduRequestBuilder;)Lcom/android/internal/telephony/uicc/euicc/apdu/RequestProvider;

    move-result-object v0

    new-instance v1, Lcom/android/internal/telephony/uicc/euicc/-$$Lambda$EuiccCard$fcz5l0a6JlSxs8MXCst7wXG4bUc;

    invoke-direct {v1, p1}, Lcom/android/internal/telephony/uicc/euicc/-$$Lambda$EuiccCard$fcz5l0a6JlSxs8MXCst7wXG4bUc;-><init>(Ljava/lang/String;)V

    .line 324
    invoke-direct {p0, v0, v1, p3, p4}, Lcom/android/internal/telephony/uicc/euicc/EuiccCard;->sendApduWithSimResetErrorWorkaround(Lcom/android/internal/telephony/uicc/euicc/apdu/RequestProvider;Lcom/android/internal/telephony/uicc/euicc/EuiccCard$ApduResponseHandler;Lcom/android/internal/telephony/uicc/euicc/async/AsyncResultCallback;Landroid/os/Handler;)V

    .line 350
    return-void
.end method

.method public unregisterForEidReady(Landroid/os/Handler;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;

    .line 148
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/euicc/EuiccCard;->mEidReadyRegistrants:Landroid/os/RegistrantList;

    if-eqz v0, :cond_0

    .line 149
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/euicc/EuiccCard;->mEidReadyRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    .line 151
    :cond_0
    return-void
.end method

.method protected updateCardId()V
    .locals 1

    .line 194
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/euicc/EuiccCard;->mEid:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 195
    invoke-super {p0}, Lcom/android/internal/telephony/uicc/UiccCard;->updateCardId()V

    goto :goto_0

    .line 197
    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/euicc/EuiccCard;->mEid:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/internal/telephony/uicc/euicc/EuiccCard;->mCardId:Ljava/lang/String;

    .line 199
    :goto_0
    return-void
.end method
