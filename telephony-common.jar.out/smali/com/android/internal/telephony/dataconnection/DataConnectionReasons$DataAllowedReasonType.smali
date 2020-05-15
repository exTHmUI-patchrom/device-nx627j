.class final enum Lcom/android/internal/telephony/dataconnection/DataConnectionReasons$DataAllowedReasonType;
.super Ljava/lang/Enum;
.source "DataConnectionReasons.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/dataconnection/DataConnectionReasons;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "DataAllowedReasonType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/android/internal/telephony/dataconnection/DataConnectionReasons$DataAllowedReasonType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/internal/telephony/dataconnection/DataConnectionReasons$DataAllowedReasonType;

.field public static final enum EMERGENCY_APN:Lcom/android/internal/telephony/dataconnection/DataConnectionReasons$DataAllowedReasonType;

.field public static final enum NONE:Lcom/android/internal/telephony/dataconnection/DataConnectionReasons$DataAllowedReasonType;

.field public static final enum NORMAL:Lcom/android/internal/telephony/dataconnection/DataConnectionReasons$DataAllowedReasonType;

.field public static final enum RESTRICTED_REQUEST:Lcom/android/internal/telephony/dataconnection/DataConnectionReasons$DataAllowedReasonType;

.field public static final enum UNMETERED_APN:Lcom/android/internal/telephony/dataconnection/DataConnectionReasons$DataAllowedReasonType;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 136
    new-instance v0, Lcom/android/internal/telephony/dataconnection/DataConnectionReasons$DataAllowedReasonType;

    const-string v1, "NONE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/dataconnection/DataConnectionReasons$DataAllowedReasonType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/internal/telephony/dataconnection/DataConnectionReasons$DataAllowedReasonType;->NONE:Lcom/android/internal/telephony/dataconnection/DataConnectionReasons$DataAllowedReasonType;

    .line 137
    new-instance v0, Lcom/android/internal/telephony/dataconnection/DataConnectionReasons$DataAllowedReasonType;

    const-string v1, "NORMAL"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lcom/android/internal/telephony/dataconnection/DataConnectionReasons$DataAllowedReasonType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/internal/telephony/dataconnection/DataConnectionReasons$DataAllowedReasonType;->NORMAL:Lcom/android/internal/telephony/dataconnection/DataConnectionReasons$DataAllowedReasonType;

    .line 138
    new-instance v0, Lcom/android/internal/telephony/dataconnection/DataConnectionReasons$DataAllowedReasonType;

    const-string v1, "UNMETERED_APN"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Lcom/android/internal/telephony/dataconnection/DataConnectionReasons$DataAllowedReasonType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/internal/telephony/dataconnection/DataConnectionReasons$DataAllowedReasonType;->UNMETERED_APN:Lcom/android/internal/telephony/dataconnection/DataConnectionReasons$DataAllowedReasonType;

    .line 139
    new-instance v0, Lcom/android/internal/telephony/dataconnection/DataConnectionReasons$DataAllowedReasonType;

    const-string v1, "RESTRICTED_REQUEST"

    const/4 v5, 0x3

    invoke-direct {v0, v1, v5}, Lcom/android/internal/telephony/dataconnection/DataConnectionReasons$DataAllowedReasonType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/internal/telephony/dataconnection/DataConnectionReasons$DataAllowedReasonType;->RESTRICTED_REQUEST:Lcom/android/internal/telephony/dataconnection/DataConnectionReasons$DataAllowedReasonType;

    .line 140
    new-instance v0, Lcom/android/internal/telephony/dataconnection/DataConnectionReasons$DataAllowedReasonType;

    const-string v1, "EMERGENCY_APN"

    const/4 v6, 0x4

    invoke-direct {v0, v1, v6}, Lcom/android/internal/telephony/dataconnection/DataConnectionReasons$DataAllowedReasonType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/internal/telephony/dataconnection/DataConnectionReasons$DataAllowedReasonType;->EMERGENCY_APN:Lcom/android/internal/telephony/dataconnection/DataConnectionReasons$DataAllowedReasonType;

    .line 132
    const/4 v0, 0x5

    new-array v0, v0, [Lcom/android/internal/telephony/dataconnection/DataConnectionReasons$DataAllowedReasonType;

    sget-object v1, Lcom/android/internal/telephony/dataconnection/DataConnectionReasons$DataAllowedReasonType;->NONE:Lcom/android/internal/telephony/dataconnection/DataConnectionReasons$DataAllowedReasonType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/internal/telephony/dataconnection/DataConnectionReasons$DataAllowedReasonType;->NORMAL:Lcom/android/internal/telephony/dataconnection/DataConnectionReasons$DataAllowedReasonType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/android/internal/telephony/dataconnection/DataConnectionReasons$DataAllowedReasonType;->UNMETERED_APN:Lcom/android/internal/telephony/dataconnection/DataConnectionReasons$DataAllowedReasonType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/android/internal/telephony/dataconnection/DataConnectionReasons$DataAllowedReasonType;->RESTRICTED_REQUEST:Lcom/android/internal/telephony/dataconnection/DataConnectionReasons$DataAllowedReasonType;

    aput-object v1, v0, v5

    sget-object v1, Lcom/android/internal/telephony/dataconnection/DataConnectionReasons$DataAllowedReasonType;->EMERGENCY_APN:Lcom/android/internal/telephony/dataconnection/DataConnectionReasons$DataAllowedReasonType;

    aput-object v1, v0, v6

    sput-object v0, Lcom/android/internal/telephony/dataconnection/DataConnectionReasons$DataAllowedReasonType;->$VALUES:[Lcom/android/internal/telephony/dataconnection/DataConnectionReasons$DataAllowedReasonType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 132
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/internal/telephony/dataconnection/DataConnectionReasons$DataAllowedReasonType;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 132
    const-class v0, Lcom/android/internal/telephony/dataconnection/DataConnectionReasons$DataAllowedReasonType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/dataconnection/DataConnectionReasons$DataAllowedReasonType;

    return-object v0
.end method

.method public static values()[Lcom/android/internal/telephony/dataconnection/DataConnectionReasons$DataAllowedReasonType;
    .locals 1

    .line 132
    sget-object v0, Lcom/android/internal/telephony/dataconnection/DataConnectionReasons$DataAllowedReasonType;->$VALUES:[Lcom/android/internal/telephony/dataconnection/DataConnectionReasons$DataAllowedReasonType;

    invoke-virtual {v0}, [Lcom/android/internal/telephony/dataconnection/DataConnectionReasons$DataAllowedReasonType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/internal/telephony/dataconnection/DataConnectionReasons$DataAllowedReasonType;

    return-object v0
.end method
