.class public final enum Lcom/android/internal/telephony/gsm/SsData$ServiceType;
.super Ljava/lang/Enum;
.source "SsData.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/gsm/SsData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ServiceType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/android/internal/telephony/gsm/SsData$ServiceType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/internal/telephony/gsm/SsData$ServiceType;

.field public static final enum SS_ALL_BARRING:Lcom/android/internal/telephony/gsm/SsData$ServiceType;

.field public static final enum SS_BAIC:Lcom/android/internal/telephony/gsm/SsData$ServiceType;

.field public static final enum SS_BAIC_ROAMING:Lcom/android/internal/telephony/gsm/SsData$ServiceType;

.field public static final enum SS_BAOC:Lcom/android/internal/telephony/gsm/SsData$ServiceType;

.field public static final enum SS_BAOIC:Lcom/android/internal/telephony/gsm/SsData$ServiceType;

.field public static final enum SS_BAOIC_EXC_HOME:Lcom/android/internal/telephony/gsm/SsData$ServiceType;

.field public static final enum SS_CFU:Lcom/android/internal/telephony/gsm/SsData$ServiceType;

.field public static final enum SS_CF_ALL:Lcom/android/internal/telephony/gsm/SsData$ServiceType;

.field public static final enum SS_CF_ALL_CONDITIONAL:Lcom/android/internal/telephony/gsm/SsData$ServiceType;

.field public static final enum SS_CF_BUSY:Lcom/android/internal/telephony/gsm/SsData$ServiceType;

.field public static final enum SS_CF_NOT_REACHABLE:Lcom/android/internal/telephony/gsm/SsData$ServiceType;

.field public static final enum SS_CF_NO_REPLY:Lcom/android/internal/telephony/gsm/SsData$ServiceType;

.field public static final enum SS_CLIP:Lcom/android/internal/telephony/gsm/SsData$ServiceType;

.field public static final enum SS_CLIR:Lcom/android/internal/telephony/gsm/SsData$ServiceType;

.field public static final enum SS_COLP:Lcom/android/internal/telephony/gsm/SsData$ServiceType;

.field public static final enum SS_COLR:Lcom/android/internal/telephony/gsm/SsData$ServiceType;

.field public static final enum SS_INCOMING_BARRING:Lcom/android/internal/telephony/gsm/SsData$ServiceType;

.field public static final enum SS_OUTGOING_BARRING:Lcom/android/internal/telephony/gsm/SsData$ServiceType;

.field public static final enum SS_WAIT:Lcom/android/internal/telephony/gsm/SsData$ServiceType;


# direct methods
.method static constructor <clinit>()V
    .locals 17

    .line 35
    new-instance v0, Lcom/android/internal/telephony/gsm/SsData$ServiceType;

    const-string v1, "SS_CFU"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/gsm/SsData$ServiceType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/internal/telephony/gsm/SsData$ServiceType;->SS_CFU:Lcom/android/internal/telephony/gsm/SsData$ServiceType;

    .line 36
    new-instance v0, Lcom/android/internal/telephony/gsm/SsData$ServiceType;

    const-string v1, "SS_CF_BUSY"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lcom/android/internal/telephony/gsm/SsData$ServiceType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/internal/telephony/gsm/SsData$ServiceType;->SS_CF_BUSY:Lcom/android/internal/telephony/gsm/SsData$ServiceType;

    .line 37
    new-instance v0, Lcom/android/internal/telephony/gsm/SsData$ServiceType;

    const-string v1, "SS_CF_NO_REPLY"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Lcom/android/internal/telephony/gsm/SsData$ServiceType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/internal/telephony/gsm/SsData$ServiceType;->SS_CF_NO_REPLY:Lcom/android/internal/telephony/gsm/SsData$ServiceType;

    .line 38
    new-instance v0, Lcom/android/internal/telephony/gsm/SsData$ServiceType;

    const-string v1, "SS_CF_NOT_REACHABLE"

    const/4 v5, 0x3

    invoke-direct {v0, v1, v5}, Lcom/android/internal/telephony/gsm/SsData$ServiceType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/internal/telephony/gsm/SsData$ServiceType;->SS_CF_NOT_REACHABLE:Lcom/android/internal/telephony/gsm/SsData$ServiceType;

    .line 39
    new-instance v0, Lcom/android/internal/telephony/gsm/SsData$ServiceType;

    const-string v1, "SS_CF_ALL"

    const/4 v6, 0x4

    invoke-direct {v0, v1, v6}, Lcom/android/internal/telephony/gsm/SsData$ServiceType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/internal/telephony/gsm/SsData$ServiceType;->SS_CF_ALL:Lcom/android/internal/telephony/gsm/SsData$ServiceType;

    .line 40
    new-instance v0, Lcom/android/internal/telephony/gsm/SsData$ServiceType;

    const-string v1, "SS_CF_ALL_CONDITIONAL"

    const/4 v7, 0x5

    invoke-direct {v0, v1, v7}, Lcom/android/internal/telephony/gsm/SsData$ServiceType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/internal/telephony/gsm/SsData$ServiceType;->SS_CF_ALL_CONDITIONAL:Lcom/android/internal/telephony/gsm/SsData$ServiceType;

    .line 41
    new-instance v0, Lcom/android/internal/telephony/gsm/SsData$ServiceType;

    const-string v1, "SS_CLIP"

    const/4 v8, 0x6

    invoke-direct {v0, v1, v8}, Lcom/android/internal/telephony/gsm/SsData$ServiceType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/internal/telephony/gsm/SsData$ServiceType;->SS_CLIP:Lcom/android/internal/telephony/gsm/SsData$ServiceType;

    .line 42
    new-instance v0, Lcom/android/internal/telephony/gsm/SsData$ServiceType;

    const-string v1, "SS_CLIR"

    const/4 v9, 0x7

    invoke-direct {v0, v1, v9}, Lcom/android/internal/telephony/gsm/SsData$ServiceType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/internal/telephony/gsm/SsData$ServiceType;->SS_CLIR:Lcom/android/internal/telephony/gsm/SsData$ServiceType;

    .line 43
    new-instance v0, Lcom/android/internal/telephony/gsm/SsData$ServiceType;

    const-string v1, "SS_COLP"

    const/16 v10, 0x8

    invoke-direct {v0, v1, v10}, Lcom/android/internal/telephony/gsm/SsData$ServiceType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/internal/telephony/gsm/SsData$ServiceType;->SS_COLP:Lcom/android/internal/telephony/gsm/SsData$ServiceType;

    .line 44
    new-instance v0, Lcom/android/internal/telephony/gsm/SsData$ServiceType;

    const-string v1, "SS_COLR"

    const/16 v11, 0x9

    invoke-direct {v0, v1, v11}, Lcom/android/internal/telephony/gsm/SsData$ServiceType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/internal/telephony/gsm/SsData$ServiceType;->SS_COLR:Lcom/android/internal/telephony/gsm/SsData$ServiceType;

    .line 45
    new-instance v0, Lcom/android/internal/telephony/gsm/SsData$ServiceType;

    const-string v1, "SS_WAIT"

    const/16 v12, 0xa

    invoke-direct {v0, v1, v12}, Lcom/android/internal/telephony/gsm/SsData$ServiceType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/internal/telephony/gsm/SsData$ServiceType;->SS_WAIT:Lcom/android/internal/telephony/gsm/SsData$ServiceType;

    .line 46
    new-instance v0, Lcom/android/internal/telephony/gsm/SsData$ServiceType;

    const-string v1, "SS_BAOC"

    const/16 v13, 0xb

    invoke-direct {v0, v1, v13}, Lcom/android/internal/telephony/gsm/SsData$ServiceType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/internal/telephony/gsm/SsData$ServiceType;->SS_BAOC:Lcom/android/internal/telephony/gsm/SsData$ServiceType;

    .line 47
    new-instance v0, Lcom/android/internal/telephony/gsm/SsData$ServiceType;

    const-string v1, "SS_BAOIC"

    const/16 v14, 0xc

    invoke-direct {v0, v1, v14}, Lcom/android/internal/telephony/gsm/SsData$ServiceType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/internal/telephony/gsm/SsData$ServiceType;->SS_BAOIC:Lcom/android/internal/telephony/gsm/SsData$ServiceType;

    .line 48
    new-instance v0, Lcom/android/internal/telephony/gsm/SsData$ServiceType;

    const-string v1, "SS_BAOIC_EXC_HOME"

    const/16 v15, 0xd

    invoke-direct {v0, v1, v15}, Lcom/android/internal/telephony/gsm/SsData$ServiceType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/internal/telephony/gsm/SsData$ServiceType;->SS_BAOIC_EXC_HOME:Lcom/android/internal/telephony/gsm/SsData$ServiceType;

    .line 49
    new-instance v0, Lcom/android/internal/telephony/gsm/SsData$ServiceType;

    const-string v1, "SS_BAIC"

    const/16 v15, 0xe

    invoke-direct {v0, v1, v15}, Lcom/android/internal/telephony/gsm/SsData$ServiceType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/internal/telephony/gsm/SsData$ServiceType;->SS_BAIC:Lcom/android/internal/telephony/gsm/SsData$ServiceType;

    .line 50
    new-instance v0, Lcom/android/internal/telephony/gsm/SsData$ServiceType;

    const-string v1, "SS_BAIC_ROAMING"

    const/16 v15, 0xf

    invoke-direct {v0, v1, v15}, Lcom/android/internal/telephony/gsm/SsData$ServiceType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/internal/telephony/gsm/SsData$ServiceType;->SS_BAIC_ROAMING:Lcom/android/internal/telephony/gsm/SsData$ServiceType;

    .line 51
    new-instance v0, Lcom/android/internal/telephony/gsm/SsData$ServiceType;

    const-string v1, "SS_ALL_BARRING"

    const/16 v15, 0x10

    invoke-direct {v0, v1, v15}, Lcom/android/internal/telephony/gsm/SsData$ServiceType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/internal/telephony/gsm/SsData$ServiceType;->SS_ALL_BARRING:Lcom/android/internal/telephony/gsm/SsData$ServiceType;

    .line 52
    new-instance v0, Lcom/android/internal/telephony/gsm/SsData$ServiceType;

    const-string v1, "SS_OUTGOING_BARRING"

    const/16 v15, 0x11

    invoke-direct {v0, v1, v15}, Lcom/android/internal/telephony/gsm/SsData$ServiceType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/internal/telephony/gsm/SsData$ServiceType;->SS_OUTGOING_BARRING:Lcom/android/internal/telephony/gsm/SsData$ServiceType;

    .line 53
    new-instance v0, Lcom/android/internal/telephony/gsm/SsData$ServiceType;

    const-string v1, "SS_INCOMING_BARRING"

    const/16 v15, 0x12

    invoke-direct {v0, v1, v15}, Lcom/android/internal/telephony/gsm/SsData$ServiceType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/internal/telephony/gsm/SsData$ServiceType;->SS_INCOMING_BARRING:Lcom/android/internal/telephony/gsm/SsData$ServiceType;

    .line 34
    const/16 v0, 0x13

    new-array v0, v0, [Lcom/android/internal/telephony/gsm/SsData$ServiceType;

    sget-object v1, Lcom/android/internal/telephony/gsm/SsData$ServiceType;->SS_CFU:Lcom/android/internal/telephony/gsm/SsData$ServiceType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/internal/telephony/gsm/SsData$ServiceType;->SS_CF_BUSY:Lcom/android/internal/telephony/gsm/SsData$ServiceType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/android/internal/telephony/gsm/SsData$ServiceType;->SS_CF_NO_REPLY:Lcom/android/internal/telephony/gsm/SsData$ServiceType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/android/internal/telephony/gsm/SsData$ServiceType;->SS_CF_NOT_REACHABLE:Lcom/android/internal/telephony/gsm/SsData$ServiceType;

    aput-object v1, v0, v5

    sget-object v1, Lcom/android/internal/telephony/gsm/SsData$ServiceType;->SS_CF_ALL:Lcom/android/internal/telephony/gsm/SsData$ServiceType;

    aput-object v1, v0, v6

    sget-object v1, Lcom/android/internal/telephony/gsm/SsData$ServiceType;->SS_CF_ALL_CONDITIONAL:Lcom/android/internal/telephony/gsm/SsData$ServiceType;

    aput-object v1, v0, v7

    sget-object v1, Lcom/android/internal/telephony/gsm/SsData$ServiceType;->SS_CLIP:Lcom/android/internal/telephony/gsm/SsData$ServiceType;

    aput-object v1, v0, v8

    sget-object v1, Lcom/android/internal/telephony/gsm/SsData$ServiceType;->SS_CLIR:Lcom/android/internal/telephony/gsm/SsData$ServiceType;

    aput-object v1, v0, v9

    sget-object v1, Lcom/android/internal/telephony/gsm/SsData$ServiceType;->SS_COLP:Lcom/android/internal/telephony/gsm/SsData$ServiceType;

    aput-object v1, v0, v10

    sget-object v1, Lcom/android/internal/telephony/gsm/SsData$ServiceType;->SS_COLR:Lcom/android/internal/telephony/gsm/SsData$ServiceType;

    aput-object v1, v0, v11

    sget-object v1, Lcom/android/internal/telephony/gsm/SsData$ServiceType;->SS_WAIT:Lcom/android/internal/telephony/gsm/SsData$ServiceType;

    aput-object v1, v0, v12

    sget-object v1, Lcom/android/internal/telephony/gsm/SsData$ServiceType;->SS_BAOC:Lcom/android/internal/telephony/gsm/SsData$ServiceType;

    aput-object v1, v0, v13

    sget-object v1, Lcom/android/internal/telephony/gsm/SsData$ServiceType;->SS_BAOIC:Lcom/android/internal/telephony/gsm/SsData$ServiceType;

    aput-object v1, v0, v14

    sget-object v1, Lcom/android/internal/telephony/gsm/SsData$ServiceType;->SS_BAOIC_EXC_HOME:Lcom/android/internal/telephony/gsm/SsData$ServiceType;

    const/16 v2, 0xd

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/internal/telephony/gsm/SsData$ServiceType;->SS_BAIC:Lcom/android/internal/telephony/gsm/SsData$ServiceType;

    const/16 v2, 0xe

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/internal/telephony/gsm/SsData$ServiceType;->SS_BAIC_ROAMING:Lcom/android/internal/telephony/gsm/SsData$ServiceType;

    const/16 v2, 0xf

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/internal/telephony/gsm/SsData$ServiceType;->SS_ALL_BARRING:Lcom/android/internal/telephony/gsm/SsData$ServiceType;

    const/16 v2, 0x10

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/internal/telephony/gsm/SsData$ServiceType;->SS_OUTGOING_BARRING:Lcom/android/internal/telephony/gsm/SsData$ServiceType;

    const/16 v2, 0x11

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/internal/telephony/gsm/SsData$ServiceType;->SS_INCOMING_BARRING:Lcom/android/internal/telephony/gsm/SsData$ServiceType;

    const/16 v2, 0x12

    aput-object v1, v0, v2

    sput-object v0, Lcom/android/internal/telephony/gsm/SsData$ServiceType;->$VALUES:[Lcom/android/internal/telephony/gsm/SsData$ServiceType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 34
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/internal/telephony/gsm/SsData$ServiceType;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 34
    const-class v0, Lcom/android/internal/telephony/gsm/SsData$ServiceType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/gsm/SsData$ServiceType;

    return-object v0
.end method

.method public static values()[Lcom/android/internal/telephony/gsm/SsData$ServiceType;
    .locals 1

    .line 34
    sget-object v0, Lcom/android/internal/telephony/gsm/SsData$ServiceType;->$VALUES:[Lcom/android/internal/telephony/gsm/SsData$ServiceType;

    invoke-virtual {v0}, [Lcom/android/internal/telephony/gsm/SsData$ServiceType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/internal/telephony/gsm/SsData$ServiceType;

    return-object v0
.end method


# virtual methods
.method public isTypeBarring()Z
    .locals 1

    .line 78
    sget-object v0, Lcom/android/internal/telephony/gsm/SsData$ServiceType;->SS_BAOC:Lcom/android/internal/telephony/gsm/SsData$ServiceType;

    if-eq p0, v0, :cond_1

    sget-object v0, Lcom/android/internal/telephony/gsm/SsData$ServiceType;->SS_BAOIC:Lcom/android/internal/telephony/gsm/SsData$ServiceType;

    if-eq p0, v0, :cond_1

    sget-object v0, Lcom/android/internal/telephony/gsm/SsData$ServiceType;->SS_BAOIC_EXC_HOME:Lcom/android/internal/telephony/gsm/SsData$ServiceType;

    if-eq p0, v0, :cond_1

    sget-object v0, Lcom/android/internal/telephony/gsm/SsData$ServiceType;->SS_BAIC:Lcom/android/internal/telephony/gsm/SsData$ServiceType;

    if-eq p0, v0, :cond_1

    sget-object v0, Lcom/android/internal/telephony/gsm/SsData$ServiceType;->SS_BAIC_ROAMING:Lcom/android/internal/telephony/gsm/SsData$ServiceType;

    if-eq p0, v0, :cond_1

    sget-object v0, Lcom/android/internal/telephony/gsm/SsData$ServiceType;->SS_ALL_BARRING:Lcom/android/internal/telephony/gsm/SsData$ServiceType;

    if-eq p0, v0, :cond_1

    sget-object v0, Lcom/android/internal/telephony/gsm/SsData$ServiceType;->SS_OUTGOING_BARRING:Lcom/android/internal/telephony/gsm/SsData$ServiceType;

    if-eq p0, v0, :cond_1

    sget-object v0, Lcom/android/internal/telephony/gsm/SsData$ServiceType;->SS_INCOMING_BARRING:Lcom/android/internal/telephony/gsm/SsData$ServiceType;

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public isTypeCF()Z
    .locals 1

    .line 56
    sget-object v0, Lcom/android/internal/telephony/gsm/SsData$ServiceType;->SS_CFU:Lcom/android/internal/telephony/gsm/SsData$ServiceType;

    if-eq p0, v0, :cond_1

    sget-object v0, Lcom/android/internal/telephony/gsm/SsData$ServiceType;->SS_CF_BUSY:Lcom/android/internal/telephony/gsm/SsData$ServiceType;

    if-eq p0, v0, :cond_1

    sget-object v0, Lcom/android/internal/telephony/gsm/SsData$ServiceType;->SS_CF_NO_REPLY:Lcom/android/internal/telephony/gsm/SsData$ServiceType;

    if-eq p0, v0, :cond_1

    sget-object v0, Lcom/android/internal/telephony/gsm/SsData$ServiceType;->SS_CF_NOT_REACHABLE:Lcom/android/internal/telephony/gsm/SsData$ServiceType;

    if-eq p0, v0, :cond_1

    sget-object v0, Lcom/android/internal/telephony/gsm/SsData$ServiceType;->SS_CF_ALL:Lcom/android/internal/telephony/gsm/SsData$ServiceType;

    if-eq p0, v0, :cond_1

    sget-object v0, Lcom/android/internal/telephony/gsm/SsData$ServiceType;->SS_CF_ALL_CONDITIONAL:Lcom/android/internal/telephony/gsm/SsData$ServiceType;

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public isTypeCW()Z
    .locals 1

    .line 66
    sget-object v0, Lcom/android/internal/telephony/gsm/SsData$ServiceType;->SS_WAIT:Lcom/android/internal/telephony/gsm/SsData$ServiceType;

    if-ne p0, v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isTypeClip()Z
    .locals 1

    .line 70
    sget-object v0, Lcom/android/internal/telephony/gsm/SsData$ServiceType;->SS_CLIP:Lcom/android/internal/telephony/gsm/SsData$ServiceType;

    if-ne p0, v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isTypeClir()Z
    .locals 1

    .line 74
    sget-object v0, Lcom/android/internal/telephony/gsm/SsData$ServiceType;->SS_CLIR:Lcom/android/internal/telephony/gsm/SsData$ServiceType;

    if-ne p0, v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isTypeUnConditional()Z
    .locals 1

    .line 62
    sget-object v0, Lcom/android/internal/telephony/gsm/SsData$ServiceType;->SS_CFU:Lcom/android/internal/telephony/gsm/SsData$ServiceType;

    if-eq p0, v0, :cond_1

    sget-object v0, Lcom/android/internal/telephony/gsm/SsData$ServiceType;->SS_CF_ALL:Lcom/android/internal/telephony/gsm/SsData$ServiceType;

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method
