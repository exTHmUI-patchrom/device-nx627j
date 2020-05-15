.class public Landroid/net/NetworkTemplate;
.super Ljava/lang/Object;
.source "NetworkTemplate.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field private static final BACKUP_VERSION:I = 0x1

.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/net/NetworkTemplate;",
            ">;"
        }
    .end annotation
.end field

.field public static final MATCH_BLUETOOTH:I = 0x8

.field public static final MATCH_ETHERNET:I = 0x5

.field public static final MATCH_MOBILE:I = 0x1

.field public static final MATCH_MOBILE_WILDCARD:I = 0x6

.field public static final MATCH_PROXY:I = 0x9

.field public static final MATCH_WIFI:I = 0x4

.field public static final MATCH_WIFI_WILDCARD:I = 0x7

.field private static final TAG:Ljava/lang/String; = "NetworkTemplate"

.field private static sForceAllNetworkTypes:Z


# instance fields
.field private final mDefaultNetwork:I

.field private final mMatchRule:I

.field private final mMatchSubscriberIds:[Ljava/lang/String;

.field private final mMetered:I

.field private final mNetworkId:Ljava/lang/String;

.field private final mRoaming:I

.field private final mSubscriberId:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 89
    const/4 v0, 0x0

    sput-boolean v0, Landroid/net/NetworkTemplate;->sForceAllNetworkTypes:Z

    .line 474
    new-instance v0, Landroid/net/NetworkTemplate$1;

    invoke-direct {v0}, Landroid/net/NetworkTemplate$1;-><init>()V

    sput-object v0, Landroid/net/NetworkTemplate;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "matchRule"    # I
    .param p2, "subscriberId"    # Ljava/lang/String;
    .param p3, "networkId"    # Ljava/lang/String;

    .line 177
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    aput-object p2, v0, v1

    invoke-direct {p0, p1, p2, v0, p3}, Landroid/net/NetworkTemplate;-><init>(ILjava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    .line 178
    return-void
.end method

.method public constructor <init>(ILjava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V
    .locals 8
    .param p1, "matchRule"    # I
    .param p2, "subscriberId"    # Ljava/lang/String;
    .param p3, "matchSubscriberIds"    # [Ljava/lang/String;
    .param p4, "networkId"    # Ljava/lang/String;

    .line 182
    const/4 v5, -0x1

    const/4 v6, -0x1

    const/4 v7, -0x1

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-direct/range {v0 .. v7}, Landroid/net/NetworkTemplate;-><init>(ILjava/lang/String;[Ljava/lang/String;Ljava/lang/String;III)V

    .line 184
    return-void
.end method

.method public constructor <init>(ILjava/lang/String;[Ljava/lang/String;Ljava/lang/String;III)V
    .locals 3
    .param p1, "matchRule"    # I
    .param p2, "subscriberId"    # Ljava/lang/String;
    .param p3, "matchSubscriberIds"    # [Ljava/lang/String;
    .param p4, "networkId"    # Ljava/lang/String;
    .param p5, "metered"    # I
    .param p6, "roaming"    # I
    .param p7, "defaultNetwork"    # I

    .line 187
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 188
    iput p1, p0, Landroid/net/NetworkTemplate;->mMatchRule:I

    .line 189
    iput-object p2, p0, Landroid/net/NetworkTemplate;->mSubscriberId:Ljava/lang/String;

    .line 190
    iput-object p3, p0, Landroid/net/NetworkTemplate;->mMatchSubscriberIds:[Ljava/lang/String;

    .line 191
    iput-object p4, p0, Landroid/net/NetworkTemplate;->mNetworkId:Ljava/lang/String;

    .line 192
    iput p5, p0, Landroid/net/NetworkTemplate;->mMetered:I

    .line 193
    iput p6, p0, Landroid/net/NetworkTemplate;->mRoaming:I

    .line 194
    iput p7, p0, Landroid/net/NetworkTemplate;->mDefaultNetwork:I

    .line 196
    invoke-static {p1}, Landroid/net/NetworkTemplate;->isKnownMatchRule(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 197
    const-string v0, "NetworkTemplate"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown network template rule "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " will not match any identity."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 200
    :cond_0
    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    .line 202
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 203
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/net/NetworkTemplate;->mMatchRule:I

    .line 204
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/net/NetworkTemplate;->mSubscriberId:Ljava/lang/String;

    .line 205
    invoke-virtual {p1}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/net/NetworkTemplate;->mMatchSubscriberIds:[Ljava/lang/String;

    .line 206
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/net/NetworkTemplate;->mNetworkId:Ljava/lang/String;

    .line 207
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/net/NetworkTemplate;->mMetered:I

    .line 208
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/net/NetworkTemplate;->mRoaming:I

    .line 209
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/net/NetworkTemplate;->mDefaultNetwork:I

    .line 210
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Landroid/net/NetworkTemplate$1;)V
    .locals 0
    .param p1, "x0"    # Landroid/os/Parcel;
    .param p2, "x1"    # Landroid/net/NetworkTemplate$1;

    .line 57
    invoke-direct {p0, p1}, Landroid/net/NetworkTemplate;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public static buildTemplateBluetooth()Landroid/net/NetworkTemplate;
    .locals 3

    .line 145
    new-instance v0, Landroid/net/NetworkTemplate;

    const/4 v1, 0x0

    const/16 v2, 0x8

    invoke-direct {v0, v2, v1, v1}, Landroid/net/NetworkTemplate;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public static buildTemplateEthernet()Landroid/net/NetworkTemplate;
    .locals 3

    .line 137
    new-instance v0, Landroid/net/NetworkTemplate;

    const/4 v1, 0x0

    const/4 v2, 0x5

    invoke-direct {v0, v2, v1, v1}, Landroid/net/NetworkTemplate;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public static buildTemplateMobileAll(Ljava/lang/String;)Landroid/net/NetworkTemplate;
    .locals 3
    .param p0, "subscriberId"    # Ljava/lang/String;

    .line 100
    new-instance v0, Landroid/net/NetworkTemplate;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-direct {v0, v1, p0, v2}, Landroid/net/NetworkTemplate;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public static buildTemplateMobileWildcard()Landroid/net/NetworkTemplate;
    .locals 3

    .line 108
    new-instance v0, Landroid/net/NetworkTemplate;

    const/4 v1, 0x0

    const/4 v2, 0x6

    invoke-direct {v0, v2, v1, v1}, Landroid/net/NetworkTemplate;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public static buildTemplateProxy()Landroid/net/NetworkTemplate;
    .locals 3

    .line 153
    new-instance v0, Landroid/net/NetworkTemplate;

    const/4 v1, 0x0

    const/16 v2, 0x9

    invoke-direct {v0, v2, v1, v1}, Landroid/net/NetworkTemplate;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public static buildTemplateWifi()Landroid/net/NetworkTemplate;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 121
    invoke-static {}, Landroid/net/NetworkTemplate;->buildTemplateWifiWildcard()Landroid/net/NetworkTemplate;

    move-result-object v0

    return-object v0
.end method

.method public static buildTemplateWifi(Ljava/lang/String;)Landroid/net/NetworkTemplate;
    .locals 3
    .param p0, "networkId"    # Ljava/lang/String;

    .line 129
    new-instance v0, Landroid/net/NetworkTemplate;

    const/4 v1, 0x4

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, p0}, Landroid/net/NetworkTemplate;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public static buildTemplateWifiWildcard()Landroid/net/NetworkTemplate;
    .locals 3

    .line 116
    new-instance v0, Landroid/net/NetworkTemplate;

    const/4 v1, 0x0

    const/4 v2, 0x7

    invoke-direct {v0, v2, v1, v1}, Landroid/net/NetworkTemplate;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public static forceAllNetworkTypes()V
    .locals 1

    .line 92
    const/4 v0, 0x1

    sput-boolean v0, Landroid/net/NetworkTemplate;->sForceAllNetworkTypes:Z

    .line 93
    return-void
.end method

.method private static getMatchRuleName(I)Ljava/lang/String;
    .locals 2
    .param p0, "matchRule"    # I

    .line 433
    const/4 v0, 0x1

    if-eq p0, v0, :cond_0

    packed-switch p0, :pswitch_data_0

    .line 449
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "UNKNOWN("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 447
    :pswitch_0
    const-string v0, "PROXY"

    return-object v0

    .line 445
    :pswitch_1
    const-string v0, "BLUETOOTH"

    return-object v0

    .line 443
    :pswitch_2
    const-string v0, "WIFI_WILDCARD"

    return-object v0

    .line 441
    :pswitch_3
    const-string v0, "MOBILE_WILDCARD"

    return-object v0

    .line 439
    :pswitch_4
    const-string v0, "ETHERNET"

    return-object v0

    .line 437
    :pswitch_5
    const-string v0, "WIFI"

    return-object v0

    .line 435
    :cond_0
    const-string v0, "MOBILE"

    return-object v0

    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static getNetworkTemplateFromBackup(Ljava/io/DataInputStream;)Landroid/net/NetworkTemplate;
    .locals 7
    .param p0, "in"    # Ljava/io/DataInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Landroid/util/BackupUtils$BadVersionException;
        }
    .end annotation

    .line 501
    invoke-virtual {p0}, Ljava/io/DataInputStream;->readInt()I

    move-result v0

    .line 502
    .local v0, "version":I
    const/4 v1, 0x1

    if-lt v0, v1, :cond_1

    if-gt v0, v1, :cond_1

    .line 506
    invoke-virtual {p0}, Ljava/io/DataInputStream;->readInt()I

    move-result v1

    .line 507
    .local v1, "matchRule":I
    invoke-static {p0}, Landroid/util/BackupUtils;->readString(Ljava/io/DataInputStream;)Ljava/lang/String;

    move-result-object v2

    .line 508
    .local v2, "subscriberId":Ljava/lang/String;
    invoke-static {p0}, Landroid/util/BackupUtils;->readString(Ljava/io/DataInputStream;)Ljava/lang/String;

    move-result-object v3

    .line 510
    .local v3, "networkId":Ljava/lang/String;
    invoke-static {v1}, Landroid/net/NetworkTemplate;->isKnownMatchRule(I)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 515
    new-instance v4, Landroid/net/NetworkTemplate;

    invoke-direct {v4, v1, v2, v3}, Landroid/net/NetworkTemplate;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    return-object v4

    .line 511
    :cond_0
    new-instance v4, Landroid/util/BackupUtils$BadVersionException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Restored network template contains unknown match rule "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/util/BackupUtils$BadVersionException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 503
    .end local v1    # "matchRule":I
    .end local v2    # "subscriberId":Ljava/lang/String;
    .end local v3    # "networkId":Ljava/lang/String;
    :cond_1
    new-instance v1, Landroid/util/BackupUtils$BadVersionException;

    const-string v2, "Unknown Backup Serialization Version"

    invoke-direct {v1, v2}, Landroid/util/BackupUtils$BadVersionException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private static isKnownMatchRule(I)Z
    .locals 1
    .param p0, "rule"    # I

    .line 74
    const/4 v0, 0x1

    if-eq p0, v0, :cond_0

    packed-switch p0, :pswitch_data_0

    .line 85
    const/4 v0, 0x0

    return v0

    .line 82
    :cond_0
    :pswitch_0
    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private matchesBluetooth(Landroid/net/NetworkIdentity;)Z
    .locals 2
    .param p1, "ident"    # Landroid/net/NetworkIdentity;

    .line 419
    iget v0, p1, Landroid/net/NetworkIdentity;->mType:I

    const/4 v1, 0x7

    if-ne v0, v1, :cond_0

    .line 420
    const/4 v0, 0x1

    return v0

    .line 422
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private matchesDefaultNetwork(Landroid/net/NetworkIdentity;)Z
    .locals 3
    .param p1, "ident"    # Landroid/net/NetworkIdentity;

    .line 351
    iget v0, p0, Landroid/net/NetworkTemplate;->mDefaultNetwork:I

    const/4 v1, 0x1

    const/4 v2, -0x1

    if-eq v0, v2, :cond_2

    iget v0, p0, Landroid/net/NetworkTemplate;->mDefaultNetwork:I

    if-ne v0, v1, :cond_0

    iget-boolean v0, p1, Landroid/net/NetworkIdentity;->mDefaultNetwork:Z

    if-nez v0, :cond_2

    :cond_0
    iget v0, p0, Landroid/net/NetworkTemplate;->mDefaultNetwork:I

    if-nez v0, :cond_1

    iget-boolean v0, p1, Landroid/net/NetworkIdentity;->mDefaultNetwork:Z

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    nop

    :cond_2
    :goto_0
    return v1
.end method

.method private matchesEthernet(Landroid/net/NetworkIdentity;)Z
    .locals 2
    .param p1, "ident"    # Landroid/net/NetworkIdentity;

    .line 391
    iget v0, p1, Landroid/net/NetworkIdentity;->mType:I

    const/16 v1, 0x9

    if-ne v0, v1, :cond_0

    .line 392
    const/4 v0, 0x1

    return v0

    .line 394
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private matchesMetered(Landroid/net/NetworkIdentity;)Z
    .locals 3
    .param p1, "ident"    # Landroid/net/NetworkIdentity;

    .line 339
    iget v0, p0, Landroid/net/NetworkTemplate;->mMetered:I

    const/4 v1, 0x1

    const/4 v2, -0x1

    if-eq v0, v2, :cond_2

    iget v0, p0, Landroid/net/NetworkTemplate;->mMetered:I

    if-ne v0, v1, :cond_0

    iget-boolean v0, p1, Landroid/net/NetworkIdentity;->mMetered:Z

    if-nez v0, :cond_2

    :cond_0
    iget v0, p0, Landroid/net/NetworkTemplate;->mMetered:I

    if-nez v0, :cond_1

    iget-boolean v0, p1, Landroid/net/NetworkIdentity;->mMetered:Z

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    nop

    :cond_2
    :goto_0
    return v1
.end method

.method private matchesMobile(Landroid/net/NetworkIdentity;)Z
    .locals 3
    .param p1, "ident"    # Landroid/net/NetworkIdentity;

    .line 364
    iget v0, p1, Landroid/net/NetworkIdentity;->mType:I

    const/4 v1, 0x1

    const/4 v2, 0x6

    if-ne v0, v2, :cond_0

    .line 366
    return v1

    .line 368
    :cond_0
    sget-boolean v0, Landroid/net/NetworkTemplate;->sForceAllNetworkTypes:Z

    if-nez v0, :cond_1

    iget v0, p1, Landroid/net/NetworkIdentity;->mType:I

    if-nez v0, :cond_2

    iget-boolean v0, p1, Landroid/net/NetworkIdentity;->mMetered:Z

    if-eqz v0, :cond_2

    :cond_1
    iget-object v0, p0, Landroid/net/NetworkTemplate;->mMatchSubscriberIds:[Ljava/lang/String;

    .line 369
    invoke-static {v0}, Lcom/android/internal/util/ArrayUtils;->isEmpty([Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Landroid/net/NetworkTemplate;->mMatchSubscriberIds:[Ljava/lang/String;

    iget-object v2, p1, Landroid/net/NetworkIdentity;->mSubscriberId:Ljava/lang/String;

    .line 370
    invoke-static {v0, v2}, Lcom/android/internal/util/ArrayUtils;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    .line 368
    :goto_0
    return v1
.end method

.method private matchesMobileWildcard(Landroid/net/NetworkIdentity;)Z
    .locals 3
    .param p1, "ident"    # Landroid/net/NetworkIdentity;

    .line 398
    iget v0, p1, Landroid/net/NetworkIdentity;->mType:I

    const/4 v1, 0x1

    const/4 v2, 0x6

    if-ne v0, v2, :cond_0

    .line 399
    return v1

    .line 401
    :cond_0
    sget-boolean v0, Landroid/net/NetworkTemplate;->sForceAllNetworkTypes:Z

    if-nez v0, :cond_2

    iget v0, p1, Landroid/net/NetworkIdentity;->mType:I

    if-nez v0, :cond_1

    iget-boolean v0, p1, Landroid/net/NetworkIdentity;->mMetered:Z

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    nop

    :cond_2
    :goto_0
    return v1
.end method

.method private matchesProxy(Landroid/net/NetworkIdentity;)Z
    .locals 2
    .param p1, "ident"    # Landroid/net/NetworkIdentity;

    .line 429
    iget v0, p1, Landroid/net/NetworkIdentity;->mType:I

    const/16 v1, 0x10

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private matchesRoaming(Landroid/net/NetworkIdentity;)Z
    .locals 3
    .param p1, "ident"    # Landroid/net/NetworkIdentity;

    .line 345
    iget v0, p0, Landroid/net/NetworkTemplate;->mRoaming:I

    const/4 v1, 0x1

    const/4 v2, -0x1

    if-eq v0, v2, :cond_2

    iget v0, p0, Landroid/net/NetworkTemplate;->mRoaming:I

    if-ne v0, v1, :cond_0

    iget-boolean v0, p1, Landroid/net/NetworkIdentity;->mRoaming:Z

    if-nez v0, :cond_2

    :cond_0
    iget v0, p0, Landroid/net/NetworkTemplate;->mRoaming:I

    if-nez v0, :cond_1

    iget-boolean v0, p1, Landroid/net/NetworkIdentity;->mRoaming:Z

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    nop

    :cond_2
    :goto_0
    return v1
.end method

.method private matchesWifi(Landroid/net/NetworkIdentity;)Z
    .locals 2
    .param p1, "ident"    # Landroid/net/NetworkIdentity;

    .line 378
    iget v0, p1, Landroid/net/NetworkIdentity;->mType:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    .line 383
    const/4 v0, 0x0

    return v0

    .line 380
    :cond_0
    iget-object v0, p0, Landroid/net/NetworkTemplate;->mNetworkId:Ljava/lang/String;

    .line 381
    invoke-static {v0}, Landroid/net/wifi/WifiInfo;->removeDoubleQuotes(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p1, Landroid/net/NetworkIdentity;->mNetworkId:Ljava/lang/String;

    invoke-static {v1}, Landroid/net/wifi/WifiInfo;->removeDoubleQuotes(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 380
    invoke-static {v0, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method private matchesWifiWildcard(Landroid/net/NetworkIdentity;)Z
    .locals 3
    .param p1, "ident"    # Landroid/net/NetworkIdentity;

    .line 406
    iget v0, p1, Landroid/net/NetworkIdentity;->mType:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    const/16 v2, 0xd

    if-eq v0, v2, :cond_0

    .line 411
    const/4 v0, 0x0

    return v0

    .line 409
    :cond_0
    return v1
.end method

.method public static normalize(Landroid/net/NetworkTemplate;[Ljava/lang/String;)Landroid/net/NetworkTemplate;
    .locals 4
    .param p0, "template"    # Landroid/net/NetworkTemplate;
    .param p1, "merged"    # [Ljava/lang/String;

    .line 464
    invoke-virtual {p0}, Landroid/net/NetworkTemplate;->isMatchRuleMobile()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/net/NetworkTemplate;->mSubscriberId:Ljava/lang/String;

    invoke-static {p1, v0}, Lcom/android/internal/util/ArrayUtils;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 467
    new-instance v0, Landroid/net/NetworkTemplate;

    iget v1, p0, Landroid/net/NetworkTemplate;->mMatchRule:I

    const/4 v2, 0x0

    aget-object v2, p1, v2

    iget-object v3, p0, Landroid/net/NetworkTemplate;->mNetworkId:Ljava/lang/String;

    invoke-direct {v0, v1, v2, p1, v3}, Landroid/net/NetworkTemplate;-><init>(ILjava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    return-object v0

    .line 470
    :cond_0
    return-object p0
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .line 225
    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1, "obj"    # Ljava/lang/Object;

    .line 264
    instance-of v0, p1, Landroid/net/NetworkTemplate;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 265
    move-object v0, p1

    check-cast v0, Landroid/net/NetworkTemplate;

    .line 266
    .local v0, "other":Landroid/net/NetworkTemplate;
    iget v2, p0, Landroid/net/NetworkTemplate;->mMatchRule:I

    iget v3, v0, Landroid/net/NetworkTemplate;->mMatchRule:I

    if-ne v2, v3, :cond_0

    iget-object v2, p0, Landroid/net/NetworkTemplate;->mSubscriberId:Ljava/lang/String;

    iget-object v3, v0, Landroid/net/NetworkTemplate;->mSubscriberId:Ljava/lang/String;

    .line 267
    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Landroid/net/NetworkTemplate;->mNetworkId:Ljava/lang/String;

    iget-object v3, v0, Landroid/net/NetworkTemplate;->mNetworkId:Ljava/lang/String;

    .line 268
    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget v2, p0, Landroid/net/NetworkTemplate;->mMetered:I

    iget v3, v0, Landroid/net/NetworkTemplate;->mMetered:I

    if-ne v2, v3, :cond_0

    iget v2, p0, Landroid/net/NetworkTemplate;->mRoaming:I

    iget v3, v0, Landroid/net/NetworkTemplate;->mRoaming:I

    if-ne v2, v3, :cond_0

    iget v2, p0, Landroid/net/NetworkTemplate;->mDefaultNetwork:I

    iget v3, v0, Landroid/net/NetworkTemplate;->mDefaultNetwork:I

    if-ne v2, v3, :cond_0

    const/4 v1, 0x1

    nop

    .line 266
    :cond_0
    return v1

    .line 273
    .end local v0    # "other":Landroid/net/NetworkTemplate;
    :cond_1
    return v1
.end method

.method public getBytesForBackup()[B
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 487
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 488
    .local v0, "baos":Ljava/io/ByteArrayOutputStream;
    new-instance v1, Ljava/io/DataOutputStream;

    invoke-direct {v1, v0}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 490
    .local v1, "out":Ljava/io/DataOutputStream;
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 492
    iget v2, p0, Landroid/net/NetworkTemplate;->mMatchRule:I

    invoke-virtual {v1, v2}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 493
    iget-object v2, p0, Landroid/net/NetworkTemplate;->mSubscriberId:Ljava/lang/String;

    invoke-static {v1, v2}, Landroid/util/BackupUtils;->writeString(Ljava/io/DataOutputStream;Ljava/lang/String;)V

    .line 494
    iget-object v2, p0, Landroid/net/NetworkTemplate;->mNetworkId:Ljava/lang/String;

    invoke-static {v1, v2}, Landroid/util/BackupUtils;->writeString(Ljava/io/DataOutputStream;Ljava/lang/String;)V

    .line 496
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v2

    return-object v2
.end method

.method public getMatchRule()I
    .locals 1

    .line 297
    iget v0, p0, Landroid/net/NetworkTemplate;->mMatchRule:I

    return v0
.end method

.method public getNetworkId()Ljava/lang/String;
    .locals 1

    .line 305
    iget-object v0, p0, Landroid/net/NetworkTemplate;->mNetworkId:Ljava/lang/String;

    return-object v0
.end method

.method public getSubscriberId()Ljava/lang/String;
    .locals 1

    .line 301
    iget-object v0, p0, Landroid/net/NetworkTemplate;->mSubscriberId:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    .line 258
    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/Object;

    iget v1, p0, Landroid/net/NetworkTemplate;->mMatchRule:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v1, p0, Landroid/net/NetworkTemplate;->mSubscriberId:Ljava/lang/String;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget-object v1, p0, Landroid/net/NetworkTemplate;->mNetworkId:Ljava/lang/String;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    iget v1, p0, Landroid/net/NetworkTemplate;->mMetered:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x3

    aput-object v1, v0, v2

    iget v1, p0, Landroid/net/NetworkTemplate;->mRoaming:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x4

    aput-object v1, v0, v2

    iget v1, p0, Landroid/net/NetworkTemplate;->mDefaultNetwork:I

    .line 259
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x5

    aput-object v1, v0, v2

    .line 258
    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public isMatchRuleMobile()Z
    .locals 3

    .line 277
    iget v0, p0, Landroid/net/NetworkTemplate;->mMatchRule:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    const/4 v2, 0x6

    if-eq v0, v2, :cond_0

    .line 282
    const/4 v0, 0x0

    return v0

    .line 280
    :cond_0
    return v1
.end method

.method public isPersistable()Z
    .locals 1

    .line 287
    iget v0, p0, Landroid/net/NetworkTemplate;->mMatchRule:I

    packed-switch v0, :pswitch_data_0

    .line 292
    const/4 v0, 0x1

    return v0

    .line 290
    :pswitch_0
    const/4 v0, 0x0

    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x6
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public matches(Landroid/net/NetworkIdentity;)Z
    .locals 3
    .param p1, "ident"    # Landroid/net/NetworkIdentity;

    .line 312
    invoke-direct {p0, p1}, Landroid/net/NetworkTemplate;->matchesMetered(Landroid/net/NetworkIdentity;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 313
    :cond_0
    invoke-direct {p0, p1}, Landroid/net/NetworkTemplate;->matchesRoaming(Landroid/net/NetworkIdentity;)Z

    move-result v0

    if-nez v0, :cond_1

    return v1

    .line 314
    :cond_1
    invoke-direct {p0, p1}, Landroid/net/NetworkTemplate;->matchesDefaultNetwork(Landroid/net/NetworkIdentity;)Z

    move-result v0

    if-nez v0, :cond_2

    return v1

    .line 316
    :cond_2
    iget v0, p0, Landroid/net/NetworkTemplate;->mMatchRule:I

    const/4 v2, 0x1

    if-eq v0, v2, :cond_3

    packed-switch v0, :pswitch_data_0

    .line 334
    return v1

    .line 330
    :pswitch_0
    invoke-direct {p0, p1}, Landroid/net/NetworkTemplate;->matchesProxy(Landroid/net/NetworkIdentity;)Z

    move-result v0

    return v0

    .line 328
    :pswitch_1
    invoke-direct {p0, p1}, Landroid/net/NetworkTemplate;->matchesBluetooth(Landroid/net/NetworkIdentity;)Z

    move-result v0

    return v0

    .line 326
    :pswitch_2
    invoke-direct {p0, p1}, Landroid/net/NetworkTemplate;->matchesWifiWildcard(Landroid/net/NetworkIdentity;)Z

    move-result v0

    return v0

    .line 324
    :pswitch_3
    invoke-direct {p0, p1}, Landroid/net/NetworkTemplate;->matchesMobileWildcard(Landroid/net/NetworkIdentity;)Z

    move-result v0

    return v0

    .line 322
    :pswitch_4
    invoke-direct {p0, p1}, Landroid/net/NetworkTemplate;->matchesEthernet(Landroid/net/NetworkIdentity;)Z

    move-result v0

    return v0

    .line 320
    :pswitch_5
    invoke-direct {p0, p1}, Landroid/net/NetworkTemplate;->matchesWifi(Landroid/net/NetworkIdentity;)Z

    move-result v0

    return v0

    .line 318
    :cond_3
    invoke-direct {p0, p1}, Landroid/net/NetworkTemplate;->matchesMobile(Landroid/net/NetworkIdentity;)Z

    move-result v0

    return v0

    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public matchesSubscriberId(Ljava/lang/String;)Z
    .locals 1
    .param p1, "subscriberId"    # Ljava/lang/String;

    .line 357
    iget-object v0, p0, Landroid/net/NetworkTemplate;->mMatchSubscriberIds:[Ljava/lang/String;

    invoke-static {v0, p1}, Lcom/android/internal/util/ArrayUtils;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 230
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "NetworkTemplate: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 231
    .local v0, "builder":Ljava/lang/StringBuilder;
    const-string/jumbo v1, "matchRule="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/net/NetworkTemplate;->mMatchRule:I

    invoke-static {v1}, Landroid/net/NetworkTemplate;->getMatchRuleName(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 232
    iget-object v1, p0, Landroid/net/NetworkTemplate;->mSubscriberId:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 233
    const-string v1, ", subscriberId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroid/net/NetworkTemplate;->mSubscriberId:Ljava/lang/String;

    .line 234
    invoke-static {v1}, Landroid/net/NetworkIdentity;->scrubSubscriberId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 233
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 236
    :cond_0
    iget-object v1, p0, Landroid/net/NetworkTemplate;->mMatchSubscriberIds:[Ljava/lang/String;

    if-eqz v1, :cond_1

    .line 237
    const-string v1, ", matchSubscriberIds="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroid/net/NetworkTemplate;->mMatchSubscriberIds:[Ljava/lang/String;

    .line 238
    invoke-static {v1}, Landroid/net/NetworkIdentity;->scrubSubscriberId([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 237
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 240
    :cond_1
    iget-object v1, p0, Landroid/net/NetworkTemplate;->mNetworkId:Ljava/lang/String;

    if-eqz v1, :cond_2

    .line 241
    const-string v1, ", networkId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroid/net/NetworkTemplate;->mNetworkId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 243
    :cond_2
    iget v1, p0, Landroid/net/NetworkTemplate;->mMetered:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_3

    .line 244
    const-string v1, ", metered="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/net/NetworkTemplate;->mMetered:I

    invoke-static {v1}, Landroid/net/NetworkStats;->meteredToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 246
    :cond_3
    iget v1, p0, Landroid/net/NetworkTemplate;->mRoaming:I

    if-eq v1, v2, :cond_4

    .line 247
    const-string v1, ", roaming="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/net/NetworkTemplate;->mRoaming:I

    invoke-static {v1}, Landroid/net/NetworkStats;->roamingToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 249
    :cond_4
    iget v1, p0, Landroid/net/NetworkTemplate;->mDefaultNetwork:I

    if-eq v1, v2, :cond_5

    .line 250
    const-string v1, ", defaultNetwork="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/net/NetworkTemplate;->mDefaultNetwork:I

    invoke-static {v1}, Landroid/net/NetworkStats;->defaultNetworkToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 253
    :cond_5
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 214
    iget v0, p0, Landroid/net/NetworkTemplate;->mMatchRule:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 215
    iget-object v0, p0, Landroid/net/NetworkTemplate;->mSubscriberId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 216
    iget-object v0, p0, Landroid/net/NetworkTemplate;->mMatchSubscriberIds:[Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    .line 217
    iget-object v0, p0, Landroid/net/NetworkTemplate;->mNetworkId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 218
    iget v0, p0, Landroid/net/NetworkTemplate;->mMetered:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 219
    iget v0, p0, Landroid/net/NetworkTemplate;->mRoaming:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 220
    iget v0, p0, Landroid/net/NetworkTemplate;->mDefaultNetwork:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 221
    return-void
.end method
