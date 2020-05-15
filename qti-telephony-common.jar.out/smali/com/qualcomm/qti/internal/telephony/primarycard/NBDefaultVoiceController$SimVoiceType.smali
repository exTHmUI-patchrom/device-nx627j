.class final enum Lcom/qualcomm/qti/internal/telephony/primarycard/NBDefaultVoiceController$SimVoiceType;
.super Ljava/lang/Enum;
.source "NBDefaultVoiceController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/qualcomm/qti/internal/telephony/primarycard/NBDefaultVoiceController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "SimVoiceType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/qualcomm/qti/internal/telephony/primarycard/NBDefaultVoiceController$SimVoiceType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/qualcomm/qti/internal/telephony/primarycard/NBDefaultVoiceController$SimVoiceType;

.field public static final enum CARD_TYPE_UNKNOWN:Lcom/qualcomm/qti/internal/telephony/primarycard/NBDefaultVoiceController$SimVoiceType;

.field public static final enum CARD_TYPE_VOICE:Lcom/qualcomm/qti/internal/telephony/primarycard/NBDefaultVoiceController$SimVoiceType;


# instance fields
.field private mValue:I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 37
    new-instance v0, Lcom/qualcomm/qti/internal/telephony/primarycard/NBDefaultVoiceController$SimVoiceType;

    const-string v1, "CARD_TYPE_UNKNOWN"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/qualcomm/qti/internal/telephony/primarycard/NBDefaultVoiceController$SimVoiceType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/qualcomm/qti/internal/telephony/primarycard/NBDefaultVoiceController$SimVoiceType;->CARD_TYPE_UNKNOWN:Lcom/qualcomm/qti/internal/telephony/primarycard/NBDefaultVoiceController$SimVoiceType;

    .line 38
    new-instance v0, Lcom/qualcomm/qti/internal/telephony/primarycard/NBDefaultVoiceController$SimVoiceType;

    const-string v1, "CARD_TYPE_VOICE"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3, v3}, Lcom/qualcomm/qti/internal/telephony/primarycard/NBDefaultVoiceController$SimVoiceType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/qualcomm/qti/internal/telephony/primarycard/NBDefaultVoiceController$SimVoiceType;->CARD_TYPE_VOICE:Lcom/qualcomm/qti/internal/telephony/primarycard/NBDefaultVoiceController$SimVoiceType;

    .line 36
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/qualcomm/qti/internal/telephony/primarycard/NBDefaultVoiceController$SimVoiceType;

    sget-object v1, Lcom/qualcomm/qti/internal/telephony/primarycard/NBDefaultVoiceController$SimVoiceType;->CARD_TYPE_UNKNOWN:Lcom/qualcomm/qti/internal/telephony/primarycard/NBDefaultVoiceController$SimVoiceType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/qualcomm/qti/internal/telephony/primarycard/NBDefaultVoiceController$SimVoiceType;->CARD_TYPE_VOICE:Lcom/qualcomm/qti/internal/telephony/primarycard/NBDefaultVoiceController$SimVoiceType;

    aput-object v1, v0, v3

    sput-object v0, Lcom/qualcomm/qti/internal/telephony/primarycard/NBDefaultVoiceController$SimVoiceType;->$VALUES:[Lcom/qualcomm/qti/internal/telephony/primarycard/NBDefaultVoiceController$SimVoiceType;

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

    .line 40
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 41
    iput p3, p0, Lcom/qualcomm/qti/internal/telephony/primarycard/NBDefaultVoiceController$SimVoiceType;->mValue:I

    .line 42
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/qualcomm/qti/internal/telephony/primarycard/NBDefaultVoiceController$SimVoiceType;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 36
    const-class v0, Lcom/qualcomm/qti/internal/telephony/primarycard/NBDefaultVoiceController$SimVoiceType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/qualcomm/qti/internal/telephony/primarycard/NBDefaultVoiceController$SimVoiceType;

    return-object v0
.end method

.method public static values()[Lcom/qualcomm/qti/internal/telephony/primarycard/NBDefaultVoiceController$SimVoiceType;
    .locals 1

    .line 36
    sget-object v0, Lcom/qualcomm/qti/internal/telephony/primarycard/NBDefaultVoiceController$SimVoiceType;->$VALUES:[Lcom/qualcomm/qti/internal/telephony/primarycard/NBDefaultVoiceController$SimVoiceType;

    invoke-virtual {v0}, [Lcom/qualcomm/qti/internal/telephony/primarycard/NBDefaultVoiceController$SimVoiceType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/qualcomm/qti/internal/telephony/primarycard/NBDefaultVoiceController$SimVoiceType;

    return-object v0
.end method


# virtual methods
.method public getValue()I
    .locals 1

    .line 45
    iget v0, p0, Lcom/qualcomm/qti/internal/telephony/primarycard/NBDefaultVoiceController$SimVoiceType;->mValue:I

    return v0
.end method
