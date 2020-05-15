.class public final enum Lcom/android/server/wifi/hotspot2/anqp/Constants$ANQPElementType;
.super Ljava/lang/Enum;
.source "Constants.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wifi/hotspot2/anqp/Constants;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ANQPElementType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/android/server/wifi/hotspot2/anqp/Constants$ANQPElementType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/server/wifi/hotspot2/anqp/Constants$ANQPElementType;

.field public static final enum ANQP3GPPNetwork:Lcom/android/server/wifi/hotspot2/anqp/Constants$ANQPElementType;

.field public static final enum ANQPDomName:Lcom/android/server/wifi/hotspot2/anqp/Constants$ANQPElementType;

.field public static final enum ANQPIPAddrAvailability:Lcom/android/server/wifi/hotspot2/anqp/Constants$ANQPElementType;

.field public static final enum ANQPNAIRealm:Lcom/android/server/wifi/hotspot2/anqp/Constants$ANQPElementType;

.field public static final enum ANQPQueryList:Lcom/android/server/wifi/hotspot2/anqp/Constants$ANQPElementType;

.field public static final enum ANQPRoamingConsortium:Lcom/android/server/wifi/hotspot2/anqp/Constants$ANQPElementType;

.field public static final enum ANQPVendorSpec:Lcom/android/server/wifi/hotspot2/anqp/Constants$ANQPElementType;

.field public static final enum ANQPVenueName:Lcom/android/server/wifi/hotspot2/anqp/Constants$ANQPElementType;

.field public static final enum HSConnCapability:Lcom/android/server/wifi/hotspot2/anqp/Constants$ANQPElementType;

.field public static final enum HSFriendlyName:Lcom/android/server/wifi/hotspot2/anqp/Constants$ANQPElementType;

.field public static final enum HSIconFile:Lcom/android/server/wifi/hotspot2/anqp/Constants$ANQPElementType;

.field public static final enum HSIconRequest:Lcom/android/server/wifi/hotspot2/anqp/Constants$ANQPElementType;

.field public static final enum HSNAIHomeRealmQuery:Lcom/android/server/wifi/hotspot2/anqp/Constants$ANQPElementType;

.field public static final enum HSOSUProviders:Lcom/android/server/wifi/hotspot2/anqp/Constants$ANQPElementType;

.field public static final enum HSQueryList:Lcom/android/server/wifi/hotspot2/anqp/Constants$ANQPElementType;

.field public static final enum HSWANMetrics:Lcom/android/server/wifi/hotspot2/anqp/Constants$ANQPElementType;


# direct methods
.method static constructor <clinit>()V
    .locals 17

    .line 54
    new-instance v0, Lcom/android/server/wifi/hotspot2/anqp/Constants$ANQPElementType;

    const-string v1, "ANQPQueryList"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/android/server/wifi/hotspot2/anqp/Constants$ANQPElementType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/server/wifi/hotspot2/anqp/Constants$ANQPElementType;->ANQPQueryList:Lcom/android/server/wifi/hotspot2/anqp/Constants$ANQPElementType;

    .line 55
    new-instance v0, Lcom/android/server/wifi/hotspot2/anqp/Constants$ANQPElementType;

    const-string v1, "ANQPVenueName"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lcom/android/server/wifi/hotspot2/anqp/Constants$ANQPElementType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/server/wifi/hotspot2/anqp/Constants$ANQPElementType;->ANQPVenueName:Lcom/android/server/wifi/hotspot2/anqp/Constants$ANQPElementType;

    .line 56
    new-instance v0, Lcom/android/server/wifi/hotspot2/anqp/Constants$ANQPElementType;

    const-string v1, "ANQPRoamingConsortium"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Lcom/android/server/wifi/hotspot2/anqp/Constants$ANQPElementType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/server/wifi/hotspot2/anqp/Constants$ANQPElementType;->ANQPRoamingConsortium:Lcom/android/server/wifi/hotspot2/anqp/Constants$ANQPElementType;

    .line 57
    new-instance v0, Lcom/android/server/wifi/hotspot2/anqp/Constants$ANQPElementType;

    const-string v1, "ANQPIPAddrAvailability"

    const/4 v5, 0x3

    invoke-direct {v0, v1, v5}, Lcom/android/server/wifi/hotspot2/anqp/Constants$ANQPElementType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/server/wifi/hotspot2/anqp/Constants$ANQPElementType;->ANQPIPAddrAvailability:Lcom/android/server/wifi/hotspot2/anqp/Constants$ANQPElementType;

    .line 58
    new-instance v0, Lcom/android/server/wifi/hotspot2/anqp/Constants$ANQPElementType;

    const-string v1, "ANQPNAIRealm"

    const/4 v6, 0x4

    invoke-direct {v0, v1, v6}, Lcom/android/server/wifi/hotspot2/anqp/Constants$ANQPElementType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/server/wifi/hotspot2/anqp/Constants$ANQPElementType;->ANQPNAIRealm:Lcom/android/server/wifi/hotspot2/anqp/Constants$ANQPElementType;

    .line 59
    new-instance v0, Lcom/android/server/wifi/hotspot2/anqp/Constants$ANQPElementType;

    const-string v1, "ANQP3GPPNetwork"

    const/4 v7, 0x5

    invoke-direct {v0, v1, v7}, Lcom/android/server/wifi/hotspot2/anqp/Constants$ANQPElementType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/server/wifi/hotspot2/anqp/Constants$ANQPElementType;->ANQP3GPPNetwork:Lcom/android/server/wifi/hotspot2/anqp/Constants$ANQPElementType;

    .line 60
    new-instance v0, Lcom/android/server/wifi/hotspot2/anqp/Constants$ANQPElementType;

    const-string v1, "ANQPDomName"

    const/4 v8, 0x6

    invoke-direct {v0, v1, v8}, Lcom/android/server/wifi/hotspot2/anqp/Constants$ANQPElementType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/server/wifi/hotspot2/anqp/Constants$ANQPElementType;->ANQPDomName:Lcom/android/server/wifi/hotspot2/anqp/Constants$ANQPElementType;

    .line 61
    new-instance v0, Lcom/android/server/wifi/hotspot2/anqp/Constants$ANQPElementType;

    const-string v1, "ANQPVendorSpec"

    const/4 v9, 0x7

    invoke-direct {v0, v1, v9}, Lcom/android/server/wifi/hotspot2/anqp/Constants$ANQPElementType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/server/wifi/hotspot2/anqp/Constants$ANQPElementType;->ANQPVendorSpec:Lcom/android/server/wifi/hotspot2/anqp/Constants$ANQPElementType;

    .line 62
    new-instance v0, Lcom/android/server/wifi/hotspot2/anqp/Constants$ANQPElementType;

    const-string v1, "HSQueryList"

    const/16 v10, 0x8

    invoke-direct {v0, v1, v10}, Lcom/android/server/wifi/hotspot2/anqp/Constants$ANQPElementType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/server/wifi/hotspot2/anqp/Constants$ANQPElementType;->HSQueryList:Lcom/android/server/wifi/hotspot2/anqp/Constants$ANQPElementType;

    .line 63
    new-instance v0, Lcom/android/server/wifi/hotspot2/anqp/Constants$ANQPElementType;

    const-string v1, "HSFriendlyName"

    const/16 v11, 0x9

    invoke-direct {v0, v1, v11}, Lcom/android/server/wifi/hotspot2/anqp/Constants$ANQPElementType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/server/wifi/hotspot2/anqp/Constants$ANQPElementType;->HSFriendlyName:Lcom/android/server/wifi/hotspot2/anqp/Constants$ANQPElementType;

    .line 64
    new-instance v0, Lcom/android/server/wifi/hotspot2/anqp/Constants$ANQPElementType;

    const-string v1, "HSWANMetrics"

    const/16 v12, 0xa

    invoke-direct {v0, v1, v12}, Lcom/android/server/wifi/hotspot2/anqp/Constants$ANQPElementType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/server/wifi/hotspot2/anqp/Constants$ANQPElementType;->HSWANMetrics:Lcom/android/server/wifi/hotspot2/anqp/Constants$ANQPElementType;

    .line 65
    new-instance v0, Lcom/android/server/wifi/hotspot2/anqp/Constants$ANQPElementType;

    const-string v1, "HSConnCapability"

    const/16 v13, 0xb

    invoke-direct {v0, v1, v13}, Lcom/android/server/wifi/hotspot2/anqp/Constants$ANQPElementType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/server/wifi/hotspot2/anqp/Constants$ANQPElementType;->HSConnCapability:Lcom/android/server/wifi/hotspot2/anqp/Constants$ANQPElementType;

    .line 66
    new-instance v0, Lcom/android/server/wifi/hotspot2/anqp/Constants$ANQPElementType;

    const-string v1, "HSNAIHomeRealmQuery"

    const/16 v14, 0xc

    invoke-direct {v0, v1, v14}, Lcom/android/server/wifi/hotspot2/anqp/Constants$ANQPElementType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/server/wifi/hotspot2/anqp/Constants$ANQPElementType;->HSNAIHomeRealmQuery:Lcom/android/server/wifi/hotspot2/anqp/Constants$ANQPElementType;

    .line 67
    new-instance v0, Lcom/android/server/wifi/hotspot2/anqp/Constants$ANQPElementType;

    const-string v1, "HSOSUProviders"

    const/16 v15, 0xd

    invoke-direct {v0, v1, v15}, Lcom/android/server/wifi/hotspot2/anqp/Constants$ANQPElementType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/server/wifi/hotspot2/anqp/Constants$ANQPElementType;->HSOSUProviders:Lcom/android/server/wifi/hotspot2/anqp/Constants$ANQPElementType;

    .line 68
    new-instance v0, Lcom/android/server/wifi/hotspot2/anqp/Constants$ANQPElementType;

    const-string v1, "HSIconRequest"

    const/16 v15, 0xe

    invoke-direct {v0, v1, v15}, Lcom/android/server/wifi/hotspot2/anqp/Constants$ANQPElementType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/server/wifi/hotspot2/anqp/Constants$ANQPElementType;->HSIconRequest:Lcom/android/server/wifi/hotspot2/anqp/Constants$ANQPElementType;

    .line 69
    new-instance v0, Lcom/android/server/wifi/hotspot2/anqp/Constants$ANQPElementType;

    const-string v1, "HSIconFile"

    const/16 v15, 0xf

    invoke-direct {v0, v1, v15}, Lcom/android/server/wifi/hotspot2/anqp/Constants$ANQPElementType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/server/wifi/hotspot2/anqp/Constants$ANQPElementType;->HSIconFile:Lcom/android/server/wifi/hotspot2/anqp/Constants$ANQPElementType;

    .line 53
    const/16 v0, 0x10

    new-array v0, v0, [Lcom/android/server/wifi/hotspot2/anqp/Constants$ANQPElementType;

    sget-object v1, Lcom/android/server/wifi/hotspot2/anqp/Constants$ANQPElementType;->ANQPQueryList:Lcom/android/server/wifi/hotspot2/anqp/Constants$ANQPElementType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/server/wifi/hotspot2/anqp/Constants$ANQPElementType;->ANQPVenueName:Lcom/android/server/wifi/hotspot2/anqp/Constants$ANQPElementType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/android/server/wifi/hotspot2/anqp/Constants$ANQPElementType;->ANQPRoamingConsortium:Lcom/android/server/wifi/hotspot2/anqp/Constants$ANQPElementType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/android/server/wifi/hotspot2/anqp/Constants$ANQPElementType;->ANQPIPAddrAvailability:Lcom/android/server/wifi/hotspot2/anqp/Constants$ANQPElementType;

    aput-object v1, v0, v5

    sget-object v1, Lcom/android/server/wifi/hotspot2/anqp/Constants$ANQPElementType;->ANQPNAIRealm:Lcom/android/server/wifi/hotspot2/anqp/Constants$ANQPElementType;

    aput-object v1, v0, v6

    sget-object v1, Lcom/android/server/wifi/hotspot2/anqp/Constants$ANQPElementType;->ANQP3GPPNetwork:Lcom/android/server/wifi/hotspot2/anqp/Constants$ANQPElementType;

    aput-object v1, v0, v7

    sget-object v1, Lcom/android/server/wifi/hotspot2/anqp/Constants$ANQPElementType;->ANQPDomName:Lcom/android/server/wifi/hotspot2/anqp/Constants$ANQPElementType;

    aput-object v1, v0, v8

    sget-object v1, Lcom/android/server/wifi/hotspot2/anqp/Constants$ANQPElementType;->ANQPVendorSpec:Lcom/android/server/wifi/hotspot2/anqp/Constants$ANQPElementType;

    aput-object v1, v0, v9

    sget-object v1, Lcom/android/server/wifi/hotspot2/anqp/Constants$ANQPElementType;->HSQueryList:Lcom/android/server/wifi/hotspot2/anqp/Constants$ANQPElementType;

    aput-object v1, v0, v10

    sget-object v1, Lcom/android/server/wifi/hotspot2/anqp/Constants$ANQPElementType;->HSFriendlyName:Lcom/android/server/wifi/hotspot2/anqp/Constants$ANQPElementType;

    aput-object v1, v0, v11

    sget-object v1, Lcom/android/server/wifi/hotspot2/anqp/Constants$ANQPElementType;->HSWANMetrics:Lcom/android/server/wifi/hotspot2/anqp/Constants$ANQPElementType;

    aput-object v1, v0, v12

    sget-object v1, Lcom/android/server/wifi/hotspot2/anqp/Constants$ANQPElementType;->HSConnCapability:Lcom/android/server/wifi/hotspot2/anqp/Constants$ANQPElementType;

    aput-object v1, v0, v13

    sget-object v1, Lcom/android/server/wifi/hotspot2/anqp/Constants$ANQPElementType;->HSNAIHomeRealmQuery:Lcom/android/server/wifi/hotspot2/anqp/Constants$ANQPElementType;

    aput-object v1, v0, v14

    sget-object v1, Lcom/android/server/wifi/hotspot2/anqp/Constants$ANQPElementType;->HSOSUProviders:Lcom/android/server/wifi/hotspot2/anqp/Constants$ANQPElementType;

    const/16 v2, 0xd

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/server/wifi/hotspot2/anqp/Constants$ANQPElementType;->HSIconRequest:Lcom/android/server/wifi/hotspot2/anqp/Constants$ANQPElementType;

    const/16 v2, 0xe

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/server/wifi/hotspot2/anqp/Constants$ANQPElementType;->HSIconFile:Lcom/android/server/wifi/hotspot2/anqp/Constants$ANQPElementType;

    const/16 v2, 0xf

    aput-object v1, v0, v2

    sput-object v0, Lcom/android/server/wifi/hotspot2/anqp/Constants$ANQPElementType;->$VALUES:[Lcom/android/server/wifi/hotspot2/anqp/Constants$ANQPElementType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 53
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/server/wifi/hotspot2/anqp/Constants$ANQPElementType;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 53
    const-class v0, Lcom/android/server/wifi/hotspot2/anqp/Constants$ANQPElementType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/android/server/wifi/hotspot2/anqp/Constants$ANQPElementType;

    return-object v0
.end method

.method public static values()[Lcom/android/server/wifi/hotspot2/anqp/Constants$ANQPElementType;
    .locals 1

    .line 53
    sget-object v0, Lcom/android/server/wifi/hotspot2/anqp/Constants$ANQPElementType;->$VALUES:[Lcom/android/server/wifi/hotspot2/anqp/Constants$ANQPElementType;

    invoke-virtual {v0}, [Lcom/android/server/wifi/hotspot2/anqp/Constants$ANQPElementType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/server/wifi/hotspot2/anqp/Constants$ANQPElementType;

    return-object v0
.end method
