.class public final enum Lcom/android/internal/telephony/cat/ComprehensionTlvTag;
.super Ljava/lang/Enum;
.source "ComprehensionTlvTag.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/android/internal/telephony/cat/ComprehensionTlvTag;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/internal/telephony/cat/ComprehensionTlvTag;

.field public static final enum ADDRESS:Lcom/android/internal/telephony/cat/ComprehensionTlvTag;

.field public static final enum ALPHA_ID:Lcom/android/internal/telephony/cat/ComprehensionTlvTag;

.field public static final enum BROWSER_TERMINATION_CAUSE:Lcom/android/internal/telephony/cat/ComprehensionTlvTag;

.field public static final enum COMMAND_DETAILS:Lcom/android/internal/telephony/cat/ComprehensionTlvTag;

.field public static final enum DEFAULT_TEXT:Lcom/android/internal/telephony/cat/ComprehensionTlvTag;

.field public static final enum DEVICE_IDENTITIES:Lcom/android/internal/telephony/cat/ComprehensionTlvTag;

.field public static final enum DURATION:Lcom/android/internal/telephony/cat/ComprehensionTlvTag;

.field public static final enum EVENT_LIST:Lcom/android/internal/telephony/cat/ComprehensionTlvTag;

.field public static final enum FILE_LIST:Lcom/android/internal/telephony/cat/ComprehensionTlvTag;

.field public static final enum HELP_REQUEST:Lcom/android/internal/telephony/cat/ComprehensionTlvTag;

.field public static final enum ICON_ID:Lcom/android/internal/telephony/cat/ComprehensionTlvTag;

.field public static final enum IMMEDIATE_RESPONSE:Lcom/android/internal/telephony/cat/ComprehensionTlvTag;

.field public static final enum ITEM:Lcom/android/internal/telephony/cat/ComprehensionTlvTag;

.field public static final enum ITEM_ICON_ID_LIST:Lcom/android/internal/telephony/cat/ComprehensionTlvTag;

.field public static final enum ITEM_ID:Lcom/android/internal/telephony/cat/ComprehensionTlvTag;

.field public static final enum LANGUAGE:Lcom/android/internal/telephony/cat/ComprehensionTlvTag;

.field public static final enum RESPONSE_LENGTH:Lcom/android/internal/telephony/cat/ComprehensionTlvTag;

.field public static final enum RESULT:Lcom/android/internal/telephony/cat/ComprehensionTlvTag;

.field public static final enum SMS_TPDU:Lcom/android/internal/telephony/cat/ComprehensionTlvTag;

.field public static final enum TEXT_ATTRIBUTE:Lcom/android/internal/telephony/cat/ComprehensionTlvTag;

.field public static final enum TEXT_STRING:Lcom/android/internal/telephony/cat/ComprehensionTlvTag;

.field public static final enum TONE:Lcom/android/internal/telephony/cat/ComprehensionTlvTag;

.field public static final enum URL:Lcom/android/internal/telephony/cat/ComprehensionTlvTag;

.field public static final enum USSD_STRING:Lcom/android/internal/telephony/cat/ComprehensionTlvTag;


# instance fields
.field private mValue:I


# direct methods
.method static constructor <clinit>()V
    .locals 17

    .line 26
    new-instance v0, Lcom/android/internal/telephony/cat/ComprehensionTlvTag;

    const-string v1, "COMMAND_DETAILS"

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-direct {v0, v1, v3, v2}, Lcom/android/internal/telephony/cat/ComprehensionTlvTag;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/internal/telephony/cat/ComprehensionTlvTag;->COMMAND_DETAILS:Lcom/android/internal/telephony/cat/ComprehensionTlvTag;

    .line 27
    new-instance v0, Lcom/android/internal/telephony/cat/ComprehensionTlvTag;

    const-string v1, "DEVICE_IDENTITIES"

    const/4 v3, 0x2

    invoke-direct {v0, v1, v2, v3}, Lcom/android/internal/telephony/cat/ComprehensionTlvTag;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/internal/telephony/cat/ComprehensionTlvTag;->DEVICE_IDENTITIES:Lcom/android/internal/telephony/cat/ComprehensionTlvTag;

    .line 28
    new-instance v0, Lcom/android/internal/telephony/cat/ComprehensionTlvTag;

    const-string v1, "RESULT"

    const/4 v4, 0x3

    invoke-direct {v0, v1, v3, v4}, Lcom/android/internal/telephony/cat/ComprehensionTlvTag;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/internal/telephony/cat/ComprehensionTlvTag;->RESULT:Lcom/android/internal/telephony/cat/ComprehensionTlvTag;

    .line 29
    new-instance v0, Lcom/android/internal/telephony/cat/ComprehensionTlvTag;

    const-string v1, "DURATION"

    const/4 v5, 0x4

    invoke-direct {v0, v1, v4, v5}, Lcom/android/internal/telephony/cat/ComprehensionTlvTag;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/internal/telephony/cat/ComprehensionTlvTag;->DURATION:Lcom/android/internal/telephony/cat/ComprehensionTlvTag;

    .line 30
    new-instance v0, Lcom/android/internal/telephony/cat/ComprehensionTlvTag;

    const-string v1, "ALPHA_ID"

    const/4 v6, 0x5

    invoke-direct {v0, v1, v5, v6}, Lcom/android/internal/telephony/cat/ComprehensionTlvTag;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/internal/telephony/cat/ComprehensionTlvTag;->ALPHA_ID:Lcom/android/internal/telephony/cat/ComprehensionTlvTag;

    .line 31
    new-instance v0, Lcom/android/internal/telephony/cat/ComprehensionTlvTag;

    const-string v1, "ADDRESS"

    const/4 v7, 0x6

    invoke-direct {v0, v1, v6, v7}, Lcom/android/internal/telephony/cat/ComprehensionTlvTag;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/internal/telephony/cat/ComprehensionTlvTag;->ADDRESS:Lcom/android/internal/telephony/cat/ComprehensionTlvTag;

    .line 32
    new-instance v0, Lcom/android/internal/telephony/cat/ComprehensionTlvTag;

    const-string v1, "USSD_STRING"

    const/16 v8, 0xa

    invoke-direct {v0, v1, v7, v8}, Lcom/android/internal/telephony/cat/ComprehensionTlvTag;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/internal/telephony/cat/ComprehensionTlvTag;->USSD_STRING:Lcom/android/internal/telephony/cat/ComprehensionTlvTag;

    .line 33
    new-instance v0, Lcom/android/internal/telephony/cat/ComprehensionTlvTag;

    const-string v1, "SMS_TPDU"

    const/16 v9, 0xb

    const/4 v10, 0x7

    invoke-direct {v0, v1, v10, v9}, Lcom/android/internal/telephony/cat/ComprehensionTlvTag;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/internal/telephony/cat/ComprehensionTlvTag;->SMS_TPDU:Lcom/android/internal/telephony/cat/ComprehensionTlvTag;

    .line 34
    new-instance v0, Lcom/android/internal/telephony/cat/ComprehensionTlvTag;

    const-string v1, "TEXT_STRING"

    const/16 v10, 0xd

    const/16 v11, 0x8

    invoke-direct {v0, v1, v11, v10}, Lcom/android/internal/telephony/cat/ComprehensionTlvTag;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/internal/telephony/cat/ComprehensionTlvTag;->TEXT_STRING:Lcom/android/internal/telephony/cat/ComprehensionTlvTag;

    .line 35
    new-instance v0, Lcom/android/internal/telephony/cat/ComprehensionTlvTag;

    const-string v1, "TONE"

    const/16 v11, 0xe

    const/16 v12, 0x9

    invoke-direct {v0, v1, v12, v11}, Lcom/android/internal/telephony/cat/ComprehensionTlvTag;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/internal/telephony/cat/ComprehensionTlvTag;->TONE:Lcom/android/internal/telephony/cat/ComprehensionTlvTag;

    .line 36
    new-instance v0, Lcom/android/internal/telephony/cat/ComprehensionTlvTag;

    const-string v1, "ITEM"

    const/16 v12, 0xf

    invoke-direct {v0, v1, v8, v12}, Lcom/android/internal/telephony/cat/ComprehensionTlvTag;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/internal/telephony/cat/ComprehensionTlvTag;->ITEM:Lcom/android/internal/telephony/cat/ComprehensionTlvTag;

    .line 37
    new-instance v0, Lcom/android/internal/telephony/cat/ComprehensionTlvTag;

    const-string v1, "ITEM_ID"

    const/16 v13, 0x10

    invoke-direct {v0, v1, v9, v13}, Lcom/android/internal/telephony/cat/ComprehensionTlvTag;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/internal/telephony/cat/ComprehensionTlvTag;->ITEM_ID:Lcom/android/internal/telephony/cat/ComprehensionTlvTag;

    .line 38
    new-instance v0, Lcom/android/internal/telephony/cat/ComprehensionTlvTag;

    const-string v1, "RESPONSE_LENGTH"

    const/16 v14, 0x11

    const/16 v15, 0xc

    invoke-direct {v0, v1, v15, v14}, Lcom/android/internal/telephony/cat/ComprehensionTlvTag;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/internal/telephony/cat/ComprehensionTlvTag;->RESPONSE_LENGTH:Lcom/android/internal/telephony/cat/ComprehensionTlvTag;

    .line 39
    new-instance v0, Lcom/android/internal/telephony/cat/ComprehensionTlvTag;

    const-string v1, "FILE_LIST"

    const/16 v15, 0x12

    invoke-direct {v0, v1, v10, v15}, Lcom/android/internal/telephony/cat/ComprehensionTlvTag;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/internal/telephony/cat/ComprehensionTlvTag;->FILE_LIST:Lcom/android/internal/telephony/cat/ComprehensionTlvTag;

    .line 40
    new-instance v0, Lcom/android/internal/telephony/cat/ComprehensionTlvTag;

    const-string v1, "HELP_REQUEST"

    const/16 v10, 0x15

    invoke-direct {v0, v1, v11, v10}, Lcom/android/internal/telephony/cat/ComprehensionTlvTag;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/internal/telephony/cat/ComprehensionTlvTag;->HELP_REQUEST:Lcom/android/internal/telephony/cat/ComprehensionTlvTag;

    .line 41
    new-instance v0, Lcom/android/internal/telephony/cat/ComprehensionTlvTag;

    const-string v1, "DEFAULT_TEXT"

    const/16 v11, 0x17

    invoke-direct {v0, v1, v12, v11}, Lcom/android/internal/telephony/cat/ComprehensionTlvTag;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/internal/telephony/cat/ComprehensionTlvTag;->DEFAULT_TEXT:Lcom/android/internal/telephony/cat/ComprehensionTlvTag;

    .line 42
    new-instance v0, Lcom/android/internal/telephony/cat/ComprehensionTlvTag;

    const-string v1, "EVENT_LIST"

    const/16 v11, 0x19

    invoke-direct {v0, v1, v13, v11}, Lcom/android/internal/telephony/cat/ComprehensionTlvTag;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/internal/telephony/cat/ComprehensionTlvTag;->EVENT_LIST:Lcom/android/internal/telephony/cat/ComprehensionTlvTag;

    .line 43
    new-instance v0, Lcom/android/internal/telephony/cat/ComprehensionTlvTag;

    const-string v1, "ICON_ID"

    const/16 v11, 0x1e

    invoke-direct {v0, v1, v14, v11}, Lcom/android/internal/telephony/cat/ComprehensionTlvTag;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/internal/telephony/cat/ComprehensionTlvTag;->ICON_ID:Lcom/android/internal/telephony/cat/ComprehensionTlvTag;

    .line 44
    new-instance v0, Lcom/android/internal/telephony/cat/ComprehensionTlvTag;

    const-string v1, "ITEM_ICON_ID_LIST"

    const/16 v11, 0x1f

    invoke-direct {v0, v1, v15, v11}, Lcom/android/internal/telephony/cat/ComprehensionTlvTag;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/internal/telephony/cat/ComprehensionTlvTag;->ITEM_ICON_ID_LIST:Lcom/android/internal/telephony/cat/ComprehensionTlvTag;

    .line 45
    new-instance v0, Lcom/android/internal/telephony/cat/ComprehensionTlvTag;

    const-string v1, "IMMEDIATE_RESPONSE"

    const/16 v11, 0x13

    const/16 v15, 0x2b

    invoke-direct {v0, v1, v11, v15}, Lcom/android/internal/telephony/cat/ComprehensionTlvTag;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/internal/telephony/cat/ComprehensionTlvTag;->IMMEDIATE_RESPONSE:Lcom/android/internal/telephony/cat/ComprehensionTlvTag;

    .line 46
    new-instance v0, Lcom/android/internal/telephony/cat/ComprehensionTlvTag;

    const-string v1, "LANGUAGE"

    const/16 v11, 0x14

    const/16 v15, 0x2d

    invoke-direct {v0, v1, v11, v15}, Lcom/android/internal/telephony/cat/ComprehensionTlvTag;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/internal/telephony/cat/ComprehensionTlvTag;->LANGUAGE:Lcom/android/internal/telephony/cat/ComprehensionTlvTag;

    .line 47
    new-instance v0, Lcom/android/internal/telephony/cat/ComprehensionTlvTag;

    const-string v1, "URL"

    const/16 v11, 0x31

    invoke-direct {v0, v1, v10, v11}, Lcom/android/internal/telephony/cat/ComprehensionTlvTag;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/internal/telephony/cat/ComprehensionTlvTag;->URL:Lcom/android/internal/telephony/cat/ComprehensionTlvTag;

    .line 48
    new-instance v0, Lcom/android/internal/telephony/cat/ComprehensionTlvTag;

    const-string v1, "BROWSER_TERMINATION_CAUSE"

    const/16 v11, 0x16

    const/16 v15, 0x34

    invoke-direct {v0, v1, v11, v15}, Lcom/android/internal/telephony/cat/ComprehensionTlvTag;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/internal/telephony/cat/ComprehensionTlvTag;->BROWSER_TERMINATION_CAUSE:Lcom/android/internal/telephony/cat/ComprehensionTlvTag;

    .line 49
    new-instance v0, Lcom/android/internal/telephony/cat/ComprehensionTlvTag;

    const-string v1, "TEXT_ATTRIBUTE"

    const/16 v11, 0x17

    const/16 v15, 0x50

    invoke-direct {v0, v1, v11, v15}, Lcom/android/internal/telephony/cat/ComprehensionTlvTag;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/internal/telephony/cat/ComprehensionTlvTag;->TEXT_ATTRIBUTE:Lcom/android/internal/telephony/cat/ComprehensionTlvTag;

    .line 25
    const/16 v0, 0x18

    new-array v0, v0, [Lcom/android/internal/telephony/cat/ComprehensionTlvTag;

    sget-object v1, Lcom/android/internal/telephony/cat/ComprehensionTlvTag;->COMMAND_DETAILS:Lcom/android/internal/telephony/cat/ComprehensionTlvTag;

    const/4 v11, 0x0

    aput-object v1, v0, v11

    sget-object v1, Lcom/android/internal/telephony/cat/ComprehensionTlvTag;->DEVICE_IDENTITIES:Lcom/android/internal/telephony/cat/ComprehensionTlvTag;

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/internal/telephony/cat/ComprehensionTlvTag;->RESULT:Lcom/android/internal/telephony/cat/ComprehensionTlvTag;

    aput-object v1, v0, v3

    sget-object v1, Lcom/android/internal/telephony/cat/ComprehensionTlvTag;->DURATION:Lcom/android/internal/telephony/cat/ComprehensionTlvTag;

    aput-object v1, v0, v4

    sget-object v1, Lcom/android/internal/telephony/cat/ComprehensionTlvTag;->ALPHA_ID:Lcom/android/internal/telephony/cat/ComprehensionTlvTag;

    aput-object v1, v0, v5

    sget-object v1, Lcom/android/internal/telephony/cat/ComprehensionTlvTag;->ADDRESS:Lcom/android/internal/telephony/cat/ComprehensionTlvTag;

    aput-object v1, v0, v6

    sget-object v1, Lcom/android/internal/telephony/cat/ComprehensionTlvTag;->USSD_STRING:Lcom/android/internal/telephony/cat/ComprehensionTlvTag;

    aput-object v1, v0, v7

    sget-object v1, Lcom/android/internal/telephony/cat/ComprehensionTlvTag;->SMS_TPDU:Lcom/android/internal/telephony/cat/ComprehensionTlvTag;

    const/4 v2, 0x7

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/internal/telephony/cat/ComprehensionTlvTag;->TEXT_STRING:Lcom/android/internal/telephony/cat/ComprehensionTlvTag;

    const/16 v2, 0x8

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/internal/telephony/cat/ComprehensionTlvTag;->TONE:Lcom/android/internal/telephony/cat/ComprehensionTlvTag;

    const/16 v2, 0x9

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/internal/telephony/cat/ComprehensionTlvTag;->ITEM:Lcom/android/internal/telephony/cat/ComprehensionTlvTag;

    aput-object v1, v0, v8

    sget-object v1, Lcom/android/internal/telephony/cat/ComprehensionTlvTag;->ITEM_ID:Lcom/android/internal/telephony/cat/ComprehensionTlvTag;

    aput-object v1, v0, v9

    sget-object v1, Lcom/android/internal/telephony/cat/ComprehensionTlvTag;->RESPONSE_LENGTH:Lcom/android/internal/telephony/cat/ComprehensionTlvTag;

    const/16 v2, 0xc

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/internal/telephony/cat/ComprehensionTlvTag;->FILE_LIST:Lcom/android/internal/telephony/cat/ComprehensionTlvTag;

    const/16 v2, 0xd

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/internal/telephony/cat/ComprehensionTlvTag;->HELP_REQUEST:Lcom/android/internal/telephony/cat/ComprehensionTlvTag;

    const/16 v2, 0xe

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/internal/telephony/cat/ComprehensionTlvTag;->DEFAULT_TEXT:Lcom/android/internal/telephony/cat/ComprehensionTlvTag;

    aput-object v1, v0, v12

    sget-object v1, Lcom/android/internal/telephony/cat/ComprehensionTlvTag;->EVENT_LIST:Lcom/android/internal/telephony/cat/ComprehensionTlvTag;

    aput-object v1, v0, v13

    sget-object v1, Lcom/android/internal/telephony/cat/ComprehensionTlvTag;->ICON_ID:Lcom/android/internal/telephony/cat/ComprehensionTlvTag;

    aput-object v1, v0, v14

    sget-object v1, Lcom/android/internal/telephony/cat/ComprehensionTlvTag;->ITEM_ICON_ID_LIST:Lcom/android/internal/telephony/cat/ComprehensionTlvTag;

    const/16 v2, 0x12

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/internal/telephony/cat/ComprehensionTlvTag;->IMMEDIATE_RESPONSE:Lcom/android/internal/telephony/cat/ComprehensionTlvTag;

    const/16 v2, 0x13

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/internal/telephony/cat/ComprehensionTlvTag;->LANGUAGE:Lcom/android/internal/telephony/cat/ComprehensionTlvTag;

    const/16 v2, 0x14

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/internal/telephony/cat/ComprehensionTlvTag;->URL:Lcom/android/internal/telephony/cat/ComprehensionTlvTag;

    aput-object v1, v0, v10

    sget-object v1, Lcom/android/internal/telephony/cat/ComprehensionTlvTag;->BROWSER_TERMINATION_CAUSE:Lcom/android/internal/telephony/cat/ComprehensionTlvTag;

    const/16 v2, 0x16

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/internal/telephony/cat/ComprehensionTlvTag;->TEXT_ATTRIBUTE:Lcom/android/internal/telephony/cat/ComprehensionTlvTag;

    const/16 v2, 0x17

    aput-object v1, v0, v2

    sput-object v0, Lcom/android/internal/telephony/cat/ComprehensionTlvTag;->$VALUES:[Lcom/android/internal/telephony/cat/ComprehensionTlvTag;

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

    .line 53
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 54
    iput p3, p0, Lcom/android/internal/telephony/cat/ComprehensionTlvTag;->mValue:I

    .line 55
    return-void
.end method

.method public static fromInt(I)Lcom/android/internal/telephony/cat/ComprehensionTlvTag;
    .locals 5
    .param p0, "value"    # I

    .line 67
    invoke-static {}, Lcom/android/internal/telephony/cat/ComprehensionTlvTag;->values()[Lcom/android/internal/telephony/cat/ComprehensionTlvTag;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    .line 68
    .local v3, "e":Lcom/android/internal/telephony/cat/ComprehensionTlvTag;
    iget v4, v3, Lcom/android/internal/telephony/cat/ComprehensionTlvTag;->mValue:I

    if-ne v4, p0, :cond_0

    .line 69
    return-object v3

    .line 67
    .end local v3    # "e":Lcom/android/internal/telephony/cat/ComprehensionTlvTag;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 72
    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/internal/telephony/cat/ComprehensionTlvTag;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 25
    const-class v0, Lcom/android/internal/telephony/cat/ComprehensionTlvTag;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/cat/ComprehensionTlvTag;

    return-object v0
.end method

.method public static values()[Lcom/android/internal/telephony/cat/ComprehensionTlvTag;
    .locals 1

    .line 25
    sget-object v0, Lcom/android/internal/telephony/cat/ComprehensionTlvTag;->$VALUES:[Lcom/android/internal/telephony/cat/ComprehensionTlvTag;

    invoke-virtual {v0}, [Lcom/android/internal/telephony/cat/ComprehensionTlvTag;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/internal/telephony/cat/ComprehensionTlvTag;

    return-object v0
.end method


# virtual methods
.method public value()I
    .locals 1

    .line 63
    iget v0, p0, Lcom/android/internal/telephony/cat/ComprehensionTlvTag;->mValue:I

    return v0
.end method
