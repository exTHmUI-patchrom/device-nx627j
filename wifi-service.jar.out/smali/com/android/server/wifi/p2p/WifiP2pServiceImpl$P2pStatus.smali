.class public final enum Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStatus;
.super Ljava/lang/Enum;
.source "WifiP2pServiceImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "P2pStatus"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStatus;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStatus;

.field public static final enum BOTH_GO_INTENT_15:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStatus;

.field public static final enum INCOMPATIBLE_PARAMETERS:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStatus;

.field public static final enum INCOMPATIBLE_PROVISIONING_METHOD:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStatus;

.field public static final enum INFORMATION_IS_CURRENTLY_UNAVAILABLE:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStatus;

.field public static final enum INVALID_PARAMETER:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStatus;

.field public static final enum LIMIT_REACHED:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStatus;

.field public static final enum NO_COMMON_CHANNEL:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStatus;

.field public static final enum PREVIOUS_PROTOCOL_ERROR:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStatus;

.field public static final enum REJECTED_BY_USER:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStatus;

.field public static final enum SUCCESS:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStatus;

.field public static final enum UNABLE_TO_ACCOMMODATE_REQUEST:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStatus;

.field public static final enum UNKNOWN:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStatus;

.field public static final enum UNKNOWN_P2P_GROUP:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStatus;


# direct methods
.method static constructor <clinit>()V
    .locals 15

    .line 258
    new-instance v0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStatus;

    const-string v1, "SUCCESS"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStatus;->SUCCESS:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStatus;

    .line 261
    new-instance v0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStatus;

    const-string v1, "INFORMATION_IS_CURRENTLY_UNAVAILABLE"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStatus;->INFORMATION_IS_CURRENTLY_UNAVAILABLE:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStatus;

    .line 264
    new-instance v0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStatus;

    const-string v1, "INCOMPATIBLE_PARAMETERS"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStatus;->INCOMPATIBLE_PARAMETERS:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStatus;

    .line 268
    new-instance v0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStatus;

    const-string v1, "LIMIT_REACHED"

    const/4 v5, 0x3

    invoke-direct {v0, v1, v5}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStatus;->LIMIT_REACHED:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStatus;

    .line 271
    new-instance v0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStatus;

    const-string v1, "INVALID_PARAMETER"

    const/4 v6, 0x4

    invoke-direct {v0, v1, v6}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStatus;->INVALID_PARAMETER:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStatus;

    .line 274
    new-instance v0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStatus;

    const-string v1, "UNABLE_TO_ACCOMMODATE_REQUEST"

    const/4 v7, 0x5

    invoke-direct {v0, v1, v7}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStatus;->UNABLE_TO_ACCOMMODATE_REQUEST:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStatus;

    .line 277
    new-instance v0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStatus;

    const-string v1, "PREVIOUS_PROTOCOL_ERROR"

    const/4 v8, 0x6

    invoke-direct {v0, v1, v8}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStatus;->PREVIOUS_PROTOCOL_ERROR:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStatus;

    .line 280
    new-instance v0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStatus;

    const-string v1, "NO_COMMON_CHANNEL"

    const/4 v9, 0x7

    invoke-direct {v0, v1, v9}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStatus;->NO_COMMON_CHANNEL:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStatus;

    .line 284
    new-instance v0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStatus;

    const-string v1, "UNKNOWN_P2P_GROUP"

    const/16 v10, 0x8

    invoke-direct {v0, v1, v10}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStatus;->UNKNOWN_P2P_GROUP:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStatus;

    .line 287
    new-instance v0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStatus;

    const-string v1, "BOTH_GO_INTENT_15"

    const/16 v11, 0x9

    invoke-direct {v0, v1, v11}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStatus;->BOTH_GO_INTENT_15:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStatus;

    .line 290
    new-instance v0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStatus;

    const-string v1, "INCOMPATIBLE_PROVISIONING_METHOD"

    const/16 v12, 0xa

    invoke-direct {v0, v1, v12}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStatus;->INCOMPATIBLE_PROVISIONING_METHOD:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStatus;

    .line 293
    new-instance v0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStatus;

    const-string v1, "REJECTED_BY_USER"

    const/16 v13, 0xb

    invoke-direct {v0, v1, v13}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStatus;->REJECTED_BY_USER:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStatus;

    .line 296
    new-instance v0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStatus;

    const-string v1, "UNKNOWN"

    const/16 v14, 0xc

    invoke-direct {v0, v1, v14}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStatus;->UNKNOWN:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStatus;

    .line 256
    const/16 v0, 0xd

    new-array v0, v0, [Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStatus;

    sget-object v1, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStatus;->SUCCESS:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStatus;

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStatus;->INFORMATION_IS_CURRENTLY_UNAVAILABLE:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStatus;

    aput-object v1, v0, v3

    sget-object v1, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStatus;->INCOMPATIBLE_PARAMETERS:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStatus;

    aput-object v1, v0, v4

    sget-object v1, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStatus;->LIMIT_REACHED:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStatus;

    aput-object v1, v0, v5

    sget-object v1, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStatus;->INVALID_PARAMETER:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStatus;

    aput-object v1, v0, v6

    sget-object v1, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStatus;->UNABLE_TO_ACCOMMODATE_REQUEST:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStatus;

    aput-object v1, v0, v7

    sget-object v1, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStatus;->PREVIOUS_PROTOCOL_ERROR:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStatus;

    aput-object v1, v0, v8

    sget-object v1, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStatus;->NO_COMMON_CHANNEL:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStatus;

    aput-object v1, v0, v9

    sget-object v1, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStatus;->UNKNOWN_P2P_GROUP:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStatus;

    aput-object v1, v0, v10

    sget-object v1, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStatus;->BOTH_GO_INTENT_15:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStatus;

    aput-object v1, v0, v11

    sget-object v1, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStatus;->INCOMPATIBLE_PROVISIONING_METHOD:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStatus;

    aput-object v1, v0, v12

    sget-object v1, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStatus;->REJECTED_BY_USER:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStatus;

    aput-object v1, v0, v13

    sget-object v1, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStatus;->UNKNOWN:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStatus;

    aput-object v1, v0, v14

    sput-object v0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStatus;->$VALUES:[Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStatus;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 256
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(I)Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStatus;
    .locals 1
    .param p0, "error"    # I

    .line 304
    packed-switch p0, :pswitch_data_0

    .line 330
    sget-object v0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStatus;->UNKNOWN:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStatus;

    return-object v0

    .line 328
    :pswitch_0
    sget-object v0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStatus;->REJECTED_BY_USER:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStatus;

    return-object v0

    .line 326
    :pswitch_1
    sget-object v0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStatus;->INCOMPATIBLE_PROVISIONING_METHOD:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStatus;

    return-object v0

    .line 324
    :pswitch_2
    sget-object v0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStatus;->BOTH_GO_INTENT_15:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStatus;

    return-object v0

    .line 322
    :pswitch_3
    sget-object v0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStatus;->UNKNOWN_P2P_GROUP:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStatus;

    return-object v0

    .line 320
    :pswitch_4
    sget-object v0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStatus;->NO_COMMON_CHANNEL:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStatus;

    return-object v0

    .line 318
    :pswitch_5
    sget-object v0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStatus;->PREVIOUS_PROTOCOL_ERROR:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStatus;

    return-object v0

    .line 316
    :pswitch_6
    sget-object v0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStatus;->UNABLE_TO_ACCOMMODATE_REQUEST:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStatus;

    return-object v0

    .line 314
    :pswitch_7
    sget-object v0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStatus;->INVALID_PARAMETER:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStatus;

    return-object v0

    .line 312
    :pswitch_8
    sget-object v0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStatus;->LIMIT_REACHED:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStatus;

    return-object v0

    .line 310
    :pswitch_9
    sget-object v0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStatus;->INCOMPATIBLE_PARAMETERS:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStatus;

    return-object v0

    .line 308
    :pswitch_a
    sget-object v0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStatus;->INFORMATION_IS_CURRENTLY_UNAVAILABLE:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStatus;

    return-object v0

    .line 306
    :pswitch_b
    sget-object v0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStatus;->SUCCESS:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStatus;

    return-object v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
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

.method public static valueOf(Ljava/lang/String;)Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStatus;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 256
    const-class v0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStatus;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStatus;

    return-object v0
.end method

.method public static values()[Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStatus;
    .locals 1

    .line 256
    sget-object v0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStatus;->$VALUES:[Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStatus;

    invoke-virtual {v0}, [Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStatus;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStatus;

    return-object v0
.end method
