.class public final enum Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardUtils$ConfigBits;
.super Ljava/lang/Enum;
.source "QtiPrimaryCardUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ConfigBits"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardUtils$ConfigBits;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardUtils$ConfigBits;

.field public static final enum COMPARE_CARDTYPE:Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardUtils$ConfigBits;

.field public static final enum COMPARE_IIN_CARDTYPE:Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardUtils$ConfigBits;

.field public static final enum COMPARE_MCCMNC:Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardUtils$ConfigBits;

.field public static final enum DEFAULT_NWMODE_GCWTL:Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardUtils$ConfigBits;

.field public static final enum DEFAULT_NWMODE_GSM:Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardUtils$ConfigBits;

.field public static final enum DEFAULT_NWMODE_GW:Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardUtils$ConfigBits;

.field public static final enum DEFAULT_PRIMARY_SLOT_1:Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardUtils$ConfigBits;

.field public static final enum DISABLE_DDS:Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardUtils$ConfigBits;

.field public static final enum DISABLE_USER_SELECTION:Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardUtils$ConfigBits;

.field public static final enum PRIORITY_CONFIG_1:Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardUtils$ConfigBits;

.field public static final enum PRIORITY_CONFIG_2:Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardUtils$ConfigBits;

.field public static final enum PRIORITY_CONFIG_3:Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardUtils$ConfigBits;

.field public static final enum PRIORITY_CONFIG_4:Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardUtils$ConfigBits;

.field public static final enum PRIORITY_SUBSIDY_LOCKED_CONFIG:Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardUtils$ConfigBits;

.field public static final enum READ_4G_FLAG:Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardUtils$ConfigBits;

.field public static final enum RESERVED_1:Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardUtils$ConfigBits;

.field public static final enum SET_PRIMARY_ON_DEACT:Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardUtils$ConfigBits;

.field public static final enum SHOW_USER_SELECTION_FOR_EVERY_CHANGE:Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardUtils$ConfigBits;

.field public static final enum SHOW_USER_SELECTION_ON_PRIORITY_MATCH:Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardUtils$ConfigBits;


# instance fields
.field private mValue:I


# direct methods
.method static constructor <clinit>()V
    .locals 17

    .line 41
    new-instance v0, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardUtils$ConfigBits;

    const-string v1, "RESERVED_1"

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardUtils$ConfigBits;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardUtils$ConfigBits;->RESERVED_1:Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardUtils$ConfigBits;

    .line 42
    new-instance v0, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardUtils$ConfigBits;

    const-string v1, "READ_4G_FLAG"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v3, v4}, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardUtils$ConfigBits;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardUtils$ConfigBits;->READ_4G_FLAG:Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardUtils$ConfigBits;

    .line 43
    new-instance v0, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardUtils$ConfigBits;

    const-string v1, "SET_PRIMARY_ON_DEACT"

    const/4 v5, 0x4

    invoke-direct {v0, v1, v4, v5}, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardUtils$ConfigBits;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardUtils$ConfigBits;->SET_PRIMARY_ON_DEACT:Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardUtils$ConfigBits;

    .line 44
    new-instance v0, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardUtils$ConfigBits;

    const-string v1, "DEFAULT_PRIMARY_SLOT_1"

    const/4 v6, 0x3

    const/16 v7, 0x8

    invoke-direct {v0, v1, v6, v7}, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardUtils$ConfigBits;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardUtils$ConfigBits;->DEFAULT_PRIMARY_SLOT_1:Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardUtils$ConfigBits;

    .line 48
    new-instance v0, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardUtils$ConfigBits;

    const-string v1, "DEFAULT_NWMODE_GSM"

    const/16 v8, 0x10

    invoke-direct {v0, v1, v5, v8}, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardUtils$ConfigBits;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardUtils$ConfigBits;->DEFAULT_NWMODE_GSM:Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardUtils$ConfigBits;

    .line 49
    new-instance v0, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardUtils$ConfigBits;

    const-string v1, "DEFAULT_NWMODE_GW"

    const/4 v9, 0x5

    const/16 v10, 0x20

    invoke-direct {v0, v1, v9, v10}, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardUtils$ConfigBits;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardUtils$ConfigBits;->DEFAULT_NWMODE_GW:Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardUtils$ConfigBits;

    .line 50
    new-instance v0, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardUtils$ConfigBits;

    const-string v1, "DEFAULT_NWMODE_GCWTL"

    const/16 v10, 0x40

    const/4 v11, 0x6

    invoke-direct {v0, v1, v11, v10}, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardUtils$ConfigBits;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardUtils$ConfigBits;->DEFAULT_NWMODE_GCWTL:Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardUtils$ConfigBits;

    .line 54
    new-instance v0, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardUtils$ConfigBits;

    const-string v1, "DISABLE_USER_SELECTION"

    const/4 v12, 0x7

    invoke-direct {v0, v1, v12, v10}, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardUtils$ConfigBits;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardUtils$ConfigBits;->DISABLE_USER_SELECTION:Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardUtils$ConfigBits;

    .line 55
    new-instance v0, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardUtils$ConfigBits;

    const-string v1, "SHOW_USER_SELECTION_ON_PRIORITY_MATCH"

    const/16 v10, 0x80

    invoke-direct {v0, v1, v7, v10}, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardUtils$ConfigBits;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardUtils$ConfigBits;->SHOW_USER_SELECTION_ON_PRIORITY_MATCH:Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardUtils$ConfigBits;

    .line 56
    new-instance v0, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardUtils$ConfigBits;

    const-string v1, "SHOW_USER_SELECTION_FOR_EVERY_CHANGE"

    const/16 v10, 0x9

    const/16 v13, 0xc0

    invoke-direct {v0, v1, v10, v13}, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardUtils$ConfigBits;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardUtils$ConfigBits;->SHOW_USER_SELECTION_FOR_EVERY_CHANGE:Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardUtils$ConfigBits;

    .line 60
    new-instance v0, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardUtils$ConfigBits;

    const-string v1, "COMPARE_IIN_CARDTYPE"

    const/16 v13, 0xa

    const/16 v14, 0x100

    invoke-direct {v0, v1, v13, v14}, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardUtils$ConfigBits;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardUtils$ConfigBits;->COMPARE_IIN_CARDTYPE:Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardUtils$ConfigBits;

    .line 61
    new-instance v0, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardUtils$ConfigBits;

    const-string v1, "COMPARE_CARDTYPE"

    const/16 v14, 0xb

    const/16 v15, 0x200

    invoke-direct {v0, v1, v14, v15}, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardUtils$ConfigBits;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardUtils$ConfigBits;->COMPARE_CARDTYPE:Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardUtils$ConfigBits;

    .line 62
    new-instance v0, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardUtils$ConfigBits;

    const-string v1, "COMPARE_MCCMNC"

    const/16 v15, 0xc

    const/16 v14, 0x300

    invoke-direct {v0, v1, v15, v14}, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardUtils$ConfigBits;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardUtils$ConfigBits;->COMPARE_MCCMNC:Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardUtils$ConfigBits;

    .line 65
    new-instance v0, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardUtils$ConfigBits;

    const-string v1, "DISABLE_DDS"

    const/16 v14, 0xd

    const/16 v15, 0x800

    invoke-direct {v0, v1, v14, v15}, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardUtils$ConfigBits;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardUtils$ConfigBits;->DISABLE_DDS:Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardUtils$ConfigBits;

    .line 69
    new-instance v0, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardUtils$ConfigBits;

    const-string v1, "PRIORITY_CONFIG_1"

    const/16 v14, 0xe

    const/16 v15, 0x1000

    invoke-direct {v0, v1, v14, v15}, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardUtils$ConfigBits;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardUtils$ConfigBits;->PRIORITY_CONFIG_1:Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardUtils$ConfigBits;

    .line 70
    new-instance v0, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardUtils$ConfigBits;

    const-string v1, "PRIORITY_CONFIG_2"

    const/16 v14, 0xf

    const/16 v15, 0x2000

    invoke-direct {v0, v1, v14, v15}, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardUtils$ConfigBits;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardUtils$ConfigBits;->PRIORITY_CONFIG_2:Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardUtils$ConfigBits;

    .line 71
    new-instance v0, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardUtils$ConfigBits;

    const-string v1, "PRIORITY_CONFIG_3"

    const/16 v14, 0x4000

    invoke-direct {v0, v1, v8, v14}, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardUtils$ConfigBits;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardUtils$ConfigBits;->PRIORITY_CONFIG_3:Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardUtils$ConfigBits;

    .line 72
    new-instance v0, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardUtils$ConfigBits;

    const-string v1, "PRIORITY_CONFIG_4"

    const/16 v14, 0x11

    const v15, 0x8000

    invoke-direct {v0, v1, v14, v15}, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardUtils$ConfigBits;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardUtils$ConfigBits;->PRIORITY_CONFIG_4:Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardUtils$ConfigBits;

    .line 73
    new-instance v0, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardUtils$ConfigBits;

    const-string v1, "PRIORITY_SUBSIDY_LOCKED_CONFIG"

    const/16 v14, 0x12

    const v15, 0xc000

    invoke-direct {v0, v1, v14, v15}, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardUtils$ConfigBits;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardUtils$ConfigBits;->PRIORITY_SUBSIDY_LOCKED_CONFIG:Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardUtils$ConfigBits;

    .line 40
    const/16 v0, 0x13

    new-array v0, v0, [Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardUtils$ConfigBits;

    sget-object v1, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardUtils$ConfigBits;->RESERVED_1:Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardUtils$ConfigBits;

    aput-object v1, v0, v2

    sget-object v1, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardUtils$ConfigBits;->READ_4G_FLAG:Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardUtils$ConfigBits;

    aput-object v1, v0, v3

    sget-object v1, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardUtils$ConfigBits;->SET_PRIMARY_ON_DEACT:Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardUtils$ConfigBits;

    aput-object v1, v0, v4

    sget-object v1, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardUtils$ConfigBits;->DEFAULT_PRIMARY_SLOT_1:Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardUtils$ConfigBits;

    aput-object v1, v0, v6

    sget-object v1, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardUtils$ConfigBits;->DEFAULT_NWMODE_GSM:Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardUtils$ConfigBits;

    aput-object v1, v0, v5

    sget-object v1, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardUtils$ConfigBits;->DEFAULT_NWMODE_GW:Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardUtils$ConfigBits;

    aput-object v1, v0, v9

    sget-object v1, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardUtils$ConfigBits;->DEFAULT_NWMODE_GCWTL:Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardUtils$ConfigBits;

    aput-object v1, v0, v11

    sget-object v1, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardUtils$ConfigBits;->DISABLE_USER_SELECTION:Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardUtils$ConfigBits;

    aput-object v1, v0, v12

    sget-object v1, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardUtils$ConfigBits;->SHOW_USER_SELECTION_ON_PRIORITY_MATCH:Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardUtils$ConfigBits;

    aput-object v1, v0, v7

    sget-object v1, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardUtils$ConfigBits;->SHOW_USER_SELECTION_FOR_EVERY_CHANGE:Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardUtils$ConfigBits;

    aput-object v1, v0, v10

    sget-object v1, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardUtils$ConfigBits;->COMPARE_IIN_CARDTYPE:Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardUtils$ConfigBits;

    aput-object v1, v0, v13

    sget-object v1, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardUtils$ConfigBits;->COMPARE_CARDTYPE:Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardUtils$ConfigBits;

    const/16 v2, 0xb

    aput-object v1, v0, v2

    sget-object v1, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardUtils$ConfigBits;->COMPARE_MCCMNC:Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardUtils$ConfigBits;

    const/16 v2, 0xc

    aput-object v1, v0, v2

    sget-object v1, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardUtils$ConfigBits;->DISABLE_DDS:Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardUtils$ConfigBits;

    const/16 v2, 0xd

    aput-object v1, v0, v2

    sget-object v1, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardUtils$ConfigBits;->PRIORITY_CONFIG_1:Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardUtils$ConfigBits;

    const/16 v2, 0xe

    aput-object v1, v0, v2

    sget-object v1, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardUtils$ConfigBits;->PRIORITY_CONFIG_2:Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardUtils$ConfigBits;

    const/16 v2, 0xf

    aput-object v1, v0, v2

    sget-object v1, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardUtils$ConfigBits;->PRIORITY_CONFIG_3:Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardUtils$ConfigBits;

    aput-object v1, v0, v8

    sget-object v1, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardUtils$ConfigBits;->PRIORITY_CONFIG_4:Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardUtils$ConfigBits;

    const/16 v2, 0x11

    aput-object v1, v0, v2

    sget-object v1, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardUtils$ConfigBits;->PRIORITY_SUBSIDY_LOCKED_CONFIG:Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardUtils$ConfigBits;

    const/16 v2, 0x12

    aput-object v1, v0, v2

    sput-object v0, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardUtils$ConfigBits;->$VALUES:[Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardUtils$ConfigBits;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .param p3, "value"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 76
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 77
    iput p3, p0, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardUtils$ConfigBits;->mValue:I

    .line 78
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardUtils$ConfigBits;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 40
    const-class v0, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardUtils$ConfigBits;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardUtils$ConfigBits;

    return-object v0
.end method

.method public static values()[Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardUtils$ConfigBits;
    .locals 1

    .line 40
    sget-object v0, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardUtils$ConfigBits;->$VALUES:[Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardUtils$ConfigBits;

    invoke-virtual {v0}, [Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardUtils$ConfigBits;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardUtils$ConfigBits;

    return-object v0
.end method


# virtual methods
.method value()I
    .locals 1

    .line 81
    iget v0, p0, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardUtils$ConfigBits;->mValue:I

    return v0
.end method
