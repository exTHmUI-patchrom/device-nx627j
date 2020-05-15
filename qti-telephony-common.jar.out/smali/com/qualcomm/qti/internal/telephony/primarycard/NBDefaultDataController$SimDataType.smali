.class final enum Lcom/qualcomm/qti/internal/telephony/primarycard/NBDefaultDataController$SimDataType;
.super Ljava/lang/Enum;
.source "NBDefaultDataController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/qualcomm/qti/internal/telephony/primarycard/NBDefaultDataController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "SimDataType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/qualcomm/qti/internal/telephony/primarycard/NBDefaultDataController$SimDataType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/qualcomm/qti/internal/telephony/primarycard/NBDefaultDataController$SimDataType;

.field public static final enum CARD_TYPE_DATA:Lcom/qualcomm/qti/internal/telephony/primarycard/NBDefaultDataController$SimDataType;

.field public static final enum CARD_TYPE_NEW_CARD:Lcom/qualcomm/qti/internal/telephony/primarycard/NBDefaultDataController$SimDataType;

.field public static final enum CARD_TYPE_NOT_DATA:Lcom/qualcomm/qti/internal/telephony/primarycard/NBDefaultDataController$SimDataType;

.field public static final enum CARD_TYPE_UNKNOWN:Lcom/qualcomm/qti/internal/telephony/primarycard/NBDefaultDataController$SimDataType;


# instance fields
.field private mValue:I


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 50
    new-instance v0, Lcom/qualcomm/qti/internal/telephony/primarycard/NBDefaultDataController$SimDataType;

    const-string v1, "CARD_TYPE_UNKNOWN"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/qualcomm/qti/internal/telephony/primarycard/NBDefaultDataController$SimDataType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/qualcomm/qti/internal/telephony/primarycard/NBDefaultDataController$SimDataType;->CARD_TYPE_UNKNOWN:Lcom/qualcomm/qti/internal/telephony/primarycard/NBDefaultDataController$SimDataType;

    .line 51
    new-instance v0, Lcom/qualcomm/qti/internal/telephony/primarycard/NBDefaultDataController$SimDataType;

    const-string v1, "CARD_TYPE_NOT_DATA"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3, v3}, Lcom/qualcomm/qti/internal/telephony/primarycard/NBDefaultDataController$SimDataType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/qualcomm/qti/internal/telephony/primarycard/NBDefaultDataController$SimDataType;->CARD_TYPE_NOT_DATA:Lcom/qualcomm/qti/internal/telephony/primarycard/NBDefaultDataController$SimDataType;

    .line 52
    new-instance v0, Lcom/qualcomm/qti/internal/telephony/primarycard/NBDefaultDataController$SimDataType;

    const-string v1, "CARD_TYPE_NEW_CARD"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4, v4}, Lcom/qualcomm/qti/internal/telephony/primarycard/NBDefaultDataController$SimDataType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/qualcomm/qti/internal/telephony/primarycard/NBDefaultDataController$SimDataType;->CARD_TYPE_NEW_CARD:Lcom/qualcomm/qti/internal/telephony/primarycard/NBDefaultDataController$SimDataType;

    .line 53
    new-instance v0, Lcom/qualcomm/qti/internal/telephony/primarycard/NBDefaultDataController$SimDataType;

    const-string v1, "CARD_TYPE_DATA"

    const/4 v5, 0x4

    const/4 v6, 0x3

    invoke-direct {v0, v1, v6, v5}, Lcom/qualcomm/qti/internal/telephony/primarycard/NBDefaultDataController$SimDataType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/qualcomm/qti/internal/telephony/primarycard/NBDefaultDataController$SimDataType;->CARD_TYPE_DATA:Lcom/qualcomm/qti/internal/telephony/primarycard/NBDefaultDataController$SimDataType;

    .line 49
    new-array v0, v5, [Lcom/qualcomm/qti/internal/telephony/primarycard/NBDefaultDataController$SimDataType;

    sget-object v1, Lcom/qualcomm/qti/internal/telephony/primarycard/NBDefaultDataController$SimDataType;->CARD_TYPE_UNKNOWN:Lcom/qualcomm/qti/internal/telephony/primarycard/NBDefaultDataController$SimDataType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/qualcomm/qti/internal/telephony/primarycard/NBDefaultDataController$SimDataType;->CARD_TYPE_NOT_DATA:Lcom/qualcomm/qti/internal/telephony/primarycard/NBDefaultDataController$SimDataType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/qualcomm/qti/internal/telephony/primarycard/NBDefaultDataController$SimDataType;->CARD_TYPE_NEW_CARD:Lcom/qualcomm/qti/internal/telephony/primarycard/NBDefaultDataController$SimDataType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/qualcomm/qti/internal/telephony/primarycard/NBDefaultDataController$SimDataType;->CARD_TYPE_DATA:Lcom/qualcomm/qti/internal/telephony/primarycard/NBDefaultDataController$SimDataType;

    aput-object v1, v0, v6

    sput-object v0, Lcom/qualcomm/qti/internal/telephony/primarycard/NBDefaultDataController$SimDataType;->$VALUES:[Lcom/qualcomm/qti/internal/telephony/primarycard/NBDefaultDataController$SimDataType;

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

    .line 55
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 56
    iput p3, p0, Lcom/qualcomm/qti/internal/telephony/primarycard/NBDefaultDataController$SimDataType;->mValue:I

    .line 57
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/qualcomm/qti/internal/telephony/primarycard/NBDefaultDataController$SimDataType;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 49
    const-class v0, Lcom/qualcomm/qti/internal/telephony/primarycard/NBDefaultDataController$SimDataType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/qualcomm/qti/internal/telephony/primarycard/NBDefaultDataController$SimDataType;

    return-object v0
.end method

.method public static values()[Lcom/qualcomm/qti/internal/telephony/primarycard/NBDefaultDataController$SimDataType;
    .locals 1

    .line 49
    sget-object v0, Lcom/qualcomm/qti/internal/telephony/primarycard/NBDefaultDataController$SimDataType;->$VALUES:[Lcom/qualcomm/qti/internal/telephony/primarycard/NBDefaultDataController$SimDataType;

    invoke-virtual {v0}, [Lcom/qualcomm/qti/internal/telephony/primarycard/NBDefaultDataController$SimDataType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/qualcomm/qti/internal/telephony/primarycard/NBDefaultDataController$SimDataType;

    return-object v0
.end method


# virtual methods
.method public getValue()I
    .locals 1

    .line 60
    iget v0, p0, Lcom/qualcomm/qti/internal/telephony/primarycard/NBDefaultDataController$SimDataType;->mValue:I

    return v0
.end method
