.class public final enum Lcom/android/internal/telephony/uicc/IccSlotStatus$SlotState;
.super Ljava/lang/Enum;
.source "IccSlotStatus.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/uicc/IccSlotStatus;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "SlotState"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/android/internal/telephony/uicc/IccSlotStatus$SlotState;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/internal/telephony/uicc/IccSlotStatus$SlotState;

.field public static final enum SLOTSTATE_ACTIVE:Lcom/android/internal/telephony/uicc/IccSlotStatus$SlotState;

.field public static final enum SLOTSTATE_INACTIVE:Lcom/android/internal/telephony/uicc/IccSlotStatus$SlotState;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 28
    new-instance v0, Lcom/android/internal/telephony/uicc/IccSlotStatus$SlotState;

    const-string v1, "SLOTSTATE_INACTIVE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/uicc/IccSlotStatus$SlotState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/internal/telephony/uicc/IccSlotStatus$SlotState;->SLOTSTATE_INACTIVE:Lcom/android/internal/telephony/uicc/IccSlotStatus$SlotState;

    .line 29
    new-instance v0, Lcom/android/internal/telephony/uicc/IccSlotStatus$SlotState;

    const-string v1, "SLOTSTATE_ACTIVE"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lcom/android/internal/telephony/uicc/IccSlotStatus$SlotState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/internal/telephony/uicc/IccSlotStatus$SlotState;->SLOTSTATE_ACTIVE:Lcom/android/internal/telephony/uicc/IccSlotStatus$SlotState;

    .line 27
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/android/internal/telephony/uicc/IccSlotStatus$SlotState;

    sget-object v1, Lcom/android/internal/telephony/uicc/IccSlotStatus$SlotState;->SLOTSTATE_INACTIVE:Lcom/android/internal/telephony/uicc/IccSlotStatus$SlotState;

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/internal/telephony/uicc/IccSlotStatus$SlotState;->SLOTSTATE_ACTIVE:Lcom/android/internal/telephony/uicc/IccSlotStatus$SlotState;

    aput-object v1, v0, v3

    sput-object v0, Lcom/android/internal/telephony/uicc/IccSlotStatus$SlotState;->$VALUES:[Lcom/android/internal/telephony/uicc/IccSlotStatus$SlotState;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 27
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/internal/telephony/uicc/IccSlotStatus$SlotState;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 27
    const-class v0, Lcom/android/internal/telephony/uicc/IccSlotStatus$SlotState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/uicc/IccSlotStatus$SlotState;

    return-object v0
.end method

.method public static values()[Lcom/android/internal/telephony/uicc/IccSlotStatus$SlotState;
    .locals 1

    .line 27
    sget-object v0, Lcom/android/internal/telephony/uicc/IccSlotStatus$SlotState;->$VALUES:[Lcom/android/internal/telephony/uicc/IccSlotStatus$SlotState;

    invoke-virtual {v0}, [Lcom/android/internal/telephony/uicc/IccSlotStatus$SlotState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/internal/telephony/uicc/IccSlotStatus$SlotState;

    return-object v0
.end method
