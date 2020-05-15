.class public final enum Lcom/android/internal/telephony/dataconnection/DataConnectionReasons$DataDisallowedReasonType;
.super Ljava/lang/Enum;
.source "DataConnectionReasons.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/dataconnection/DataConnectionReasons;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "DataDisallowedReasonType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/android/internal/telephony/dataconnection/DataConnectionReasons$DataDisallowedReasonType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/internal/telephony/dataconnection/DataConnectionReasons$DataDisallowedReasonType;

.field public static final enum APN_NOT_CONNECTABLE:Lcom/android/internal/telephony/dataconnection/DataConnectionReasons$DataDisallowedReasonType;

.field public static final enum CONCURRENT_VOICE_DATA_NOT_ALLOWED:Lcom/android/internal/telephony/dataconnection/DataConnectionReasons$DataDisallowedReasonType;

.field public static final enum DATA_DISABLED:Lcom/android/internal/telephony/dataconnection/DataConnectionReasons$DataDisallowedReasonType;

.field public static final enum DEFAULT_DATA_UNSELECTED:Lcom/android/internal/telephony/dataconnection/DataConnectionReasons$DataDisallowedReasonType;

.field public static final enum INTERNAL_DATA_DISABLED:Lcom/android/internal/telephony/dataconnection/DataConnectionReasons$DataDisallowedReasonType;

.field public static final enum INVALID_PHONE_STATE:Lcom/android/internal/telephony/dataconnection/DataConnectionReasons$DataDisallowedReasonType;

.field public static final enum IN_ECBM:Lcom/android/internal/telephony/dataconnection/DataConnectionReasons$DataDisallowedReasonType;

.field public static final enum NOT_ATTACHED:Lcom/android/internal/telephony/dataconnection/DataConnectionReasons$DataDisallowedReasonType;

.field public static final enum ON_IWLAN:Lcom/android/internal/telephony/dataconnection/DataConnectionReasons$DataDisallowedReasonType;

.field public static final enum PS_RESTRICTED:Lcom/android/internal/telephony/dataconnection/DataConnectionReasons$DataDisallowedReasonType;

.field public static final enum RADIO_DISABLED_BY_CARRIER:Lcom/android/internal/telephony/dataconnection/DataConnectionReasons$DataDisallowedReasonType;

.field public static final enum RECORD_NOT_LOADED:Lcom/android/internal/telephony/dataconnection/DataConnectionReasons$DataDisallowedReasonType;

.field public static final enum ROAMING_DISABLED:Lcom/android/internal/telephony/dataconnection/DataConnectionReasons$DataDisallowedReasonType;

.field public static final enum UNDESIRED_POWER_STATE:Lcom/android/internal/telephony/dataconnection/DataConnectionReasons$DataDisallowedReasonType;


# instance fields
.field private mIsHardReason:Z


# direct methods
.method static constructor <clinit>()V
    .locals 16

    .line 103
    new-instance v0, Lcom/android/internal/telephony/dataconnection/DataConnectionReasons$DataDisallowedReasonType;

    const-string v1, "DATA_DISABLED"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/android/internal/telephony/dataconnection/DataConnectionReasons$DataDisallowedReasonType;-><init>(Ljava/lang/String;IZ)V

    sput-object v0, Lcom/android/internal/telephony/dataconnection/DataConnectionReasons$DataDisallowedReasonType;->DATA_DISABLED:Lcom/android/internal/telephony/dataconnection/DataConnectionReasons$DataDisallowedReasonType;

    .line 104
    new-instance v0, Lcom/android/internal/telephony/dataconnection/DataConnectionReasons$DataDisallowedReasonType;

    const-string v1, "ROAMING_DISABLED"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3, v2}, Lcom/android/internal/telephony/dataconnection/DataConnectionReasons$DataDisallowedReasonType;-><init>(Ljava/lang/String;IZ)V

    sput-object v0, Lcom/android/internal/telephony/dataconnection/DataConnectionReasons$DataDisallowedReasonType;->ROAMING_DISABLED:Lcom/android/internal/telephony/dataconnection/DataConnectionReasons$DataDisallowedReasonType;

    .line 107
    new-instance v0, Lcom/android/internal/telephony/dataconnection/DataConnectionReasons$DataDisallowedReasonType;

    const-string v1, "NOT_ATTACHED"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4, v3}, Lcom/android/internal/telephony/dataconnection/DataConnectionReasons$DataDisallowedReasonType;-><init>(Ljava/lang/String;IZ)V

    sput-object v0, Lcom/android/internal/telephony/dataconnection/DataConnectionReasons$DataDisallowedReasonType;->NOT_ATTACHED:Lcom/android/internal/telephony/dataconnection/DataConnectionReasons$DataDisallowedReasonType;

    .line 108
    new-instance v0, Lcom/android/internal/telephony/dataconnection/DataConnectionReasons$DataDisallowedReasonType;

    const-string v1, "RECORD_NOT_LOADED"

    const/4 v5, 0x3

    invoke-direct {v0, v1, v5, v3}, Lcom/android/internal/telephony/dataconnection/DataConnectionReasons$DataDisallowedReasonType;-><init>(Ljava/lang/String;IZ)V

    sput-object v0, Lcom/android/internal/telephony/dataconnection/DataConnectionReasons$DataDisallowedReasonType;->RECORD_NOT_LOADED:Lcom/android/internal/telephony/dataconnection/DataConnectionReasons$DataDisallowedReasonType;

    .line 109
    new-instance v0, Lcom/android/internal/telephony/dataconnection/DataConnectionReasons$DataDisallowedReasonType;

    const-string v1, "INVALID_PHONE_STATE"

    const/4 v6, 0x4

    invoke-direct {v0, v1, v6, v3}, Lcom/android/internal/telephony/dataconnection/DataConnectionReasons$DataDisallowedReasonType;-><init>(Ljava/lang/String;IZ)V

    sput-object v0, Lcom/android/internal/telephony/dataconnection/DataConnectionReasons$DataDisallowedReasonType;->INVALID_PHONE_STATE:Lcom/android/internal/telephony/dataconnection/DataConnectionReasons$DataDisallowedReasonType;

    .line 110
    new-instance v0, Lcom/android/internal/telephony/dataconnection/DataConnectionReasons$DataDisallowedReasonType;

    const-string v1, "CONCURRENT_VOICE_DATA_NOT_ALLOWED"

    const/4 v7, 0x5

    invoke-direct {v0, v1, v7, v3}, Lcom/android/internal/telephony/dataconnection/DataConnectionReasons$DataDisallowedReasonType;-><init>(Ljava/lang/String;IZ)V

    sput-object v0, Lcom/android/internal/telephony/dataconnection/DataConnectionReasons$DataDisallowedReasonType;->CONCURRENT_VOICE_DATA_NOT_ALLOWED:Lcom/android/internal/telephony/dataconnection/DataConnectionReasons$DataDisallowedReasonType;

    .line 111
    new-instance v0, Lcom/android/internal/telephony/dataconnection/DataConnectionReasons$DataDisallowedReasonType;

    const-string v1, "PS_RESTRICTED"

    const/4 v8, 0x6

    invoke-direct {v0, v1, v8, v3}, Lcom/android/internal/telephony/dataconnection/DataConnectionReasons$DataDisallowedReasonType;-><init>(Ljava/lang/String;IZ)V

    sput-object v0, Lcom/android/internal/telephony/dataconnection/DataConnectionReasons$DataDisallowedReasonType;->PS_RESTRICTED:Lcom/android/internal/telephony/dataconnection/DataConnectionReasons$DataDisallowedReasonType;

    .line 112
    new-instance v0, Lcom/android/internal/telephony/dataconnection/DataConnectionReasons$DataDisallowedReasonType;

    const-string v1, "UNDESIRED_POWER_STATE"

    const/4 v9, 0x7

    invoke-direct {v0, v1, v9, v3}, Lcom/android/internal/telephony/dataconnection/DataConnectionReasons$DataDisallowedReasonType;-><init>(Ljava/lang/String;IZ)V

    sput-object v0, Lcom/android/internal/telephony/dataconnection/DataConnectionReasons$DataDisallowedReasonType;->UNDESIRED_POWER_STATE:Lcom/android/internal/telephony/dataconnection/DataConnectionReasons$DataDisallowedReasonType;

    .line 113
    new-instance v0, Lcom/android/internal/telephony/dataconnection/DataConnectionReasons$DataDisallowedReasonType;

    const-string v1, "INTERNAL_DATA_DISABLED"

    const/16 v10, 0x8

    invoke-direct {v0, v1, v10, v3}, Lcom/android/internal/telephony/dataconnection/DataConnectionReasons$DataDisallowedReasonType;-><init>(Ljava/lang/String;IZ)V

    sput-object v0, Lcom/android/internal/telephony/dataconnection/DataConnectionReasons$DataDisallowedReasonType;->INTERNAL_DATA_DISABLED:Lcom/android/internal/telephony/dataconnection/DataConnectionReasons$DataDisallowedReasonType;

    .line 114
    new-instance v0, Lcom/android/internal/telephony/dataconnection/DataConnectionReasons$DataDisallowedReasonType;

    const-string v1, "DEFAULT_DATA_UNSELECTED"

    const/16 v11, 0x9

    invoke-direct {v0, v1, v11, v3}, Lcom/android/internal/telephony/dataconnection/DataConnectionReasons$DataDisallowedReasonType;-><init>(Ljava/lang/String;IZ)V

    sput-object v0, Lcom/android/internal/telephony/dataconnection/DataConnectionReasons$DataDisallowedReasonType;->DEFAULT_DATA_UNSELECTED:Lcom/android/internal/telephony/dataconnection/DataConnectionReasons$DataDisallowedReasonType;

    .line 115
    new-instance v0, Lcom/android/internal/telephony/dataconnection/DataConnectionReasons$DataDisallowedReasonType;

    const-string v1, "RADIO_DISABLED_BY_CARRIER"

    const/16 v12, 0xa

    invoke-direct {v0, v1, v12, v3}, Lcom/android/internal/telephony/dataconnection/DataConnectionReasons$DataDisallowedReasonType;-><init>(Ljava/lang/String;IZ)V

    sput-object v0, Lcom/android/internal/telephony/dataconnection/DataConnectionReasons$DataDisallowedReasonType;->RADIO_DISABLED_BY_CARRIER:Lcom/android/internal/telephony/dataconnection/DataConnectionReasons$DataDisallowedReasonType;

    .line 116
    new-instance v0, Lcom/android/internal/telephony/dataconnection/DataConnectionReasons$DataDisallowedReasonType;

    const-string v1, "APN_NOT_CONNECTABLE"

    const/16 v13, 0xb

    invoke-direct {v0, v1, v13, v3}, Lcom/android/internal/telephony/dataconnection/DataConnectionReasons$DataDisallowedReasonType;-><init>(Ljava/lang/String;IZ)V

    sput-object v0, Lcom/android/internal/telephony/dataconnection/DataConnectionReasons$DataDisallowedReasonType;->APN_NOT_CONNECTABLE:Lcom/android/internal/telephony/dataconnection/DataConnectionReasons$DataDisallowedReasonType;

    .line 117
    new-instance v0, Lcom/android/internal/telephony/dataconnection/DataConnectionReasons$DataDisallowedReasonType;

    const-string v1, "ON_IWLAN"

    const/16 v14, 0xc

    invoke-direct {v0, v1, v14, v3}, Lcom/android/internal/telephony/dataconnection/DataConnectionReasons$DataDisallowedReasonType;-><init>(Ljava/lang/String;IZ)V

    sput-object v0, Lcom/android/internal/telephony/dataconnection/DataConnectionReasons$DataDisallowedReasonType;->ON_IWLAN:Lcom/android/internal/telephony/dataconnection/DataConnectionReasons$DataDisallowedReasonType;

    .line 118
    new-instance v0, Lcom/android/internal/telephony/dataconnection/DataConnectionReasons$DataDisallowedReasonType;

    const-string v1, "IN_ECBM"

    const/16 v15, 0xd

    invoke-direct {v0, v1, v15, v3}, Lcom/android/internal/telephony/dataconnection/DataConnectionReasons$DataDisallowedReasonType;-><init>(Ljava/lang/String;IZ)V

    sput-object v0, Lcom/android/internal/telephony/dataconnection/DataConnectionReasons$DataDisallowedReasonType;->IN_ECBM:Lcom/android/internal/telephony/dataconnection/DataConnectionReasons$DataDisallowedReasonType;

    .line 101
    const/16 v0, 0xe

    new-array v0, v0, [Lcom/android/internal/telephony/dataconnection/DataConnectionReasons$DataDisallowedReasonType;

    sget-object v1, Lcom/android/internal/telephony/dataconnection/DataConnectionReasons$DataDisallowedReasonType;->DATA_DISABLED:Lcom/android/internal/telephony/dataconnection/DataConnectionReasons$DataDisallowedReasonType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/internal/telephony/dataconnection/DataConnectionReasons$DataDisallowedReasonType;->ROAMING_DISABLED:Lcom/android/internal/telephony/dataconnection/DataConnectionReasons$DataDisallowedReasonType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/android/internal/telephony/dataconnection/DataConnectionReasons$DataDisallowedReasonType;->NOT_ATTACHED:Lcom/android/internal/telephony/dataconnection/DataConnectionReasons$DataDisallowedReasonType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/android/internal/telephony/dataconnection/DataConnectionReasons$DataDisallowedReasonType;->RECORD_NOT_LOADED:Lcom/android/internal/telephony/dataconnection/DataConnectionReasons$DataDisallowedReasonType;

    aput-object v1, v0, v5

    sget-object v1, Lcom/android/internal/telephony/dataconnection/DataConnectionReasons$DataDisallowedReasonType;->INVALID_PHONE_STATE:Lcom/android/internal/telephony/dataconnection/DataConnectionReasons$DataDisallowedReasonType;

    aput-object v1, v0, v6

    sget-object v1, Lcom/android/internal/telephony/dataconnection/DataConnectionReasons$DataDisallowedReasonType;->CONCURRENT_VOICE_DATA_NOT_ALLOWED:Lcom/android/internal/telephony/dataconnection/DataConnectionReasons$DataDisallowedReasonType;

    aput-object v1, v0, v7

    sget-object v1, Lcom/android/internal/telephony/dataconnection/DataConnectionReasons$DataDisallowedReasonType;->PS_RESTRICTED:Lcom/android/internal/telephony/dataconnection/DataConnectionReasons$DataDisallowedReasonType;

    aput-object v1, v0, v8

    sget-object v1, Lcom/android/internal/telephony/dataconnection/DataConnectionReasons$DataDisallowedReasonType;->UNDESIRED_POWER_STATE:Lcom/android/internal/telephony/dataconnection/DataConnectionReasons$DataDisallowedReasonType;

    aput-object v1, v0, v9

    sget-object v1, Lcom/android/internal/telephony/dataconnection/DataConnectionReasons$DataDisallowedReasonType;->INTERNAL_DATA_DISABLED:Lcom/android/internal/telephony/dataconnection/DataConnectionReasons$DataDisallowedReasonType;

    aput-object v1, v0, v10

    sget-object v1, Lcom/android/internal/telephony/dataconnection/DataConnectionReasons$DataDisallowedReasonType;->DEFAULT_DATA_UNSELECTED:Lcom/android/internal/telephony/dataconnection/DataConnectionReasons$DataDisallowedReasonType;

    aput-object v1, v0, v11

    sget-object v1, Lcom/android/internal/telephony/dataconnection/DataConnectionReasons$DataDisallowedReasonType;->RADIO_DISABLED_BY_CARRIER:Lcom/android/internal/telephony/dataconnection/DataConnectionReasons$DataDisallowedReasonType;

    aput-object v1, v0, v12

    sget-object v1, Lcom/android/internal/telephony/dataconnection/DataConnectionReasons$DataDisallowedReasonType;->APN_NOT_CONNECTABLE:Lcom/android/internal/telephony/dataconnection/DataConnectionReasons$DataDisallowedReasonType;

    aput-object v1, v0, v13

    sget-object v1, Lcom/android/internal/telephony/dataconnection/DataConnectionReasons$DataDisallowedReasonType;->ON_IWLAN:Lcom/android/internal/telephony/dataconnection/DataConnectionReasons$DataDisallowedReasonType;

    aput-object v1, v0, v14

    sget-object v1, Lcom/android/internal/telephony/dataconnection/DataConnectionReasons$DataDisallowedReasonType;->IN_ECBM:Lcom/android/internal/telephony/dataconnection/DataConnectionReasons$DataDisallowedReasonType;

    aput-object v1, v0, v15

    sput-object v0, Lcom/android/internal/telephony/dataconnection/DataConnectionReasons$DataDisallowedReasonType;->$VALUES:[Lcom/android/internal/telephony/dataconnection/DataConnectionReasons$DataDisallowedReasonType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IZ)V
    .locals 0
    .param p3, "isHardReason"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)V"
        }
    .end annotation

    .line 126
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 127
    iput-boolean p3, p0, Lcom/android/internal/telephony/dataconnection/DataConnectionReasons$DataDisallowedReasonType;->mIsHardReason:Z

    .line 128
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/internal/telephony/dataconnection/DataConnectionReasons$DataDisallowedReasonType;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 101
    const-class v0, Lcom/android/internal/telephony/dataconnection/DataConnectionReasons$DataDisallowedReasonType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/dataconnection/DataConnectionReasons$DataDisallowedReasonType;

    return-object v0
.end method

.method public static values()[Lcom/android/internal/telephony/dataconnection/DataConnectionReasons$DataDisallowedReasonType;
    .locals 1

    .line 101
    sget-object v0, Lcom/android/internal/telephony/dataconnection/DataConnectionReasons$DataDisallowedReasonType;->$VALUES:[Lcom/android/internal/telephony/dataconnection/DataConnectionReasons$DataDisallowedReasonType;

    invoke-virtual {v0}, [Lcom/android/internal/telephony/dataconnection/DataConnectionReasons$DataDisallowedReasonType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/internal/telephony/dataconnection/DataConnectionReasons$DataDisallowedReasonType;

    return-object v0
.end method


# virtual methods
.method isHardReason()Z
    .locals 1

    .line 123
    iget-boolean v0, p0, Lcom/android/internal/telephony/dataconnection/DataConnectionReasons$DataDisallowedReasonType;->mIsHardReason:Z

    return v0
.end method
