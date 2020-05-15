.class public final enum Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$PersoSubState;
.super Ljava/lang/Enum;
.source "IccCardApplicationStatus.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/uicc/IccCardApplicationStatus;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "PersoSubState"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$PersoSubState;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$PersoSubState;

.field public static final enum PERSOSUBSTATE_IN_PROGRESS:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$PersoSubState;

.field public static final enum PERSOSUBSTATE_READY:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$PersoSubState;

.field public static final enum PERSOSUBSTATE_RUIM_CORPORATE:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$PersoSubState;

.field public static final enum PERSOSUBSTATE_RUIM_CORPORATE_PUK:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$PersoSubState;

.field public static final enum PERSOSUBSTATE_RUIM_HRPD:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$PersoSubState;

.field public static final enum PERSOSUBSTATE_RUIM_HRPD_PUK:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$PersoSubState;

.field public static final enum PERSOSUBSTATE_RUIM_NETWORK1:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$PersoSubState;

.field public static final enum PERSOSUBSTATE_RUIM_NETWORK1_PUK:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$PersoSubState;

.field public static final enum PERSOSUBSTATE_RUIM_NETWORK2:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$PersoSubState;

.field public static final enum PERSOSUBSTATE_RUIM_NETWORK2_PUK:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$PersoSubState;

.field public static final enum PERSOSUBSTATE_RUIM_RUIM:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$PersoSubState;

.field public static final enum PERSOSUBSTATE_RUIM_RUIM_PUK:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$PersoSubState;

.field public static final enum PERSOSUBSTATE_RUIM_SERVICE_PROVIDER:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$PersoSubState;

.field public static final enum PERSOSUBSTATE_RUIM_SERVICE_PROVIDER_PUK:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$PersoSubState;

.field public static final enum PERSOSUBSTATE_SIM_CORPORATE:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$PersoSubState;

.field public static final enum PERSOSUBSTATE_SIM_CORPORATE_PUK:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$PersoSubState;

.field public static final enum PERSOSUBSTATE_SIM_ICCID:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$PersoSubState;

.field public static final enum PERSOSUBSTATE_SIM_ICCID_PUK:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$PersoSubState;

.field public static final enum PERSOSUBSTATE_SIM_IMPI:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$PersoSubState;

.field public static final enum PERSOSUBSTATE_SIM_IMPI_PUK:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$PersoSubState;

.field public static final enum PERSOSUBSTATE_SIM_NETWORK:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$PersoSubState;

.field public static final enum PERSOSUBSTATE_SIM_NETWORK_PUK:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$PersoSubState;

.field public static final enum PERSOSUBSTATE_SIM_NETWORK_SUBSET:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$PersoSubState;

.field public static final enum PERSOSUBSTATE_SIM_NETWORK_SUBSET_PUK:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$PersoSubState;

.field public static final enum PERSOSUBSTATE_SIM_NS_SP:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$PersoSubState;

.field public static final enum PERSOSUBSTATE_SIM_NS_SP_PUK:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$PersoSubState;

.field public static final enum PERSOSUBSTATE_SIM_SERVICE_PROVIDER:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$PersoSubState;

.field public static final enum PERSOSUBSTATE_SIM_SERVICE_PROVIDER_PUK:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$PersoSubState;

.field public static final enum PERSOSUBSTATE_SIM_SIM:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$PersoSubState;

.field public static final enum PERSOSUBSTATE_SIM_SIM_PUK:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$PersoSubState;

.field public static final enum PERSOSUBSTATE_SIM_SPN:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$PersoSubState;

.field public static final enum PERSOSUBSTATE_SIM_SPN_PUK:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$PersoSubState;

.field public static final enum PERSOSUBSTATE_SIM_SP_EHPLMN:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$PersoSubState;

.field public static final enum PERSOSUBSTATE_SIM_SP_EHPLMN_PUK:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$PersoSubState;

.field public static final enum PERSOSUBSTATE_UNKNOWN:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$PersoSubState;


# instance fields
.field private State:I


# direct methods
.method static constructor <clinit>()V
    .locals 17

    .line 71
    new-instance v0, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$PersoSubState;

    const-string v1, "PERSOSUBSTATE_UNKNOWN"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$PersoSubState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$PersoSubState;->PERSOSUBSTATE_UNKNOWN:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$PersoSubState;

    .line 72
    new-instance v0, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$PersoSubState;

    const-string v1, "PERSOSUBSTATE_IN_PROGRESS"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$PersoSubState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$PersoSubState;->PERSOSUBSTATE_IN_PROGRESS:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$PersoSubState;

    .line 73
    new-instance v0, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$PersoSubState;

    const-string v1, "PERSOSUBSTATE_READY"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$PersoSubState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$PersoSubState;->PERSOSUBSTATE_READY:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$PersoSubState;

    .line 74
    new-instance v0, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$PersoSubState;

    const-string v1, "PERSOSUBSTATE_SIM_NETWORK"

    const/4 v5, 0x3

    invoke-direct {v0, v1, v5}, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$PersoSubState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$PersoSubState;->PERSOSUBSTATE_SIM_NETWORK:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$PersoSubState;

    .line 75
    new-instance v0, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$PersoSubState;

    const-string v1, "PERSOSUBSTATE_SIM_NETWORK_SUBSET"

    const/4 v6, 0x4

    invoke-direct {v0, v1, v6}, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$PersoSubState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$PersoSubState;->PERSOSUBSTATE_SIM_NETWORK_SUBSET:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$PersoSubState;

    .line 76
    new-instance v0, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$PersoSubState;

    const-string v1, "PERSOSUBSTATE_SIM_CORPORATE"

    const/4 v7, 0x5

    invoke-direct {v0, v1, v7}, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$PersoSubState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$PersoSubState;->PERSOSUBSTATE_SIM_CORPORATE:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$PersoSubState;

    .line 77
    new-instance v0, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$PersoSubState;

    const-string v1, "PERSOSUBSTATE_SIM_SERVICE_PROVIDER"

    const/4 v8, 0x6

    invoke-direct {v0, v1, v8}, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$PersoSubState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$PersoSubState;->PERSOSUBSTATE_SIM_SERVICE_PROVIDER:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$PersoSubState;

    .line 78
    new-instance v0, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$PersoSubState;

    const-string v1, "PERSOSUBSTATE_SIM_SIM"

    const/4 v9, 0x7

    invoke-direct {v0, v1, v9}, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$PersoSubState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$PersoSubState;->PERSOSUBSTATE_SIM_SIM:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$PersoSubState;

    .line 79
    new-instance v0, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$PersoSubState;

    const-string v1, "PERSOSUBSTATE_SIM_NETWORK_PUK"

    const/16 v10, 0x8

    invoke-direct {v0, v1, v10}, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$PersoSubState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$PersoSubState;->PERSOSUBSTATE_SIM_NETWORK_PUK:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$PersoSubState;

    .line 80
    new-instance v0, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$PersoSubState;

    const-string v1, "PERSOSUBSTATE_SIM_NETWORK_SUBSET_PUK"

    const/16 v11, 0x9

    invoke-direct {v0, v1, v11}, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$PersoSubState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$PersoSubState;->PERSOSUBSTATE_SIM_NETWORK_SUBSET_PUK:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$PersoSubState;

    .line 81
    new-instance v0, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$PersoSubState;

    const-string v1, "PERSOSUBSTATE_SIM_CORPORATE_PUK"

    const/16 v12, 0xa

    invoke-direct {v0, v1, v12}, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$PersoSubState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$PersoSubState;->PERSOSUBSTATE_SIM_CORPORATE_PUK:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$PersoSubState;

    .line 82
    new-instance v0, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$PersoSubState;

    const-string v1, "PERSOSUBSTATE_SIM_SERVICE_PROVIDER_PUK"

    const/16 v13, 0xb

    invoke-direct {v0, v1, v13}, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$PersoSubState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$PersoSubState;->PERSOSUBSTATE_SIM_SERVICE_PROVIDER_PUK:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$PersoSubState;

    .line 83
    new-instance v0, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$PersoSubState;

    const-string v1, "PERSOSUBSTATE_SIM_SIM_PUK"

    const/16 v14, 0xc

    invoke-direct {v0, v1, v14}, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$PersoSubState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$PersoSubState;->PERSOSUBSTATE_SIM_SIM_PUK:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$PersoSubState;

    .line 84
    new-instance v0, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$PersoSubState;

    const-string v1, "PERSOSUBSTATE_RUIM_NETWORK1"

    const/16 v15, 0xd

    invoke-direct {v0, v1, v15}, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$PersoSubState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$PersoSubState;->PERSOSUBSTATE_RUIM_NETWORK1:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$PersoSubState;

    .line 85
    new-instance v0, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$PersoSubState;

    const-string v1, "PERSOSUBSTATE_RUIM_NETWORK2"

    const/16 v15, 0xe

    invoke-direct {v0, v1, v15}, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$PersoSubState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$PersoSubState;->PERSOSUBSTATE_RUIM_NETWORK2:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$PersoSubState;

    .line 86
    new-instance v0, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$PersoSubState;

    const-string v1, "PERSOSUBSTATE_RUIM_HRPD"

    const/16 v15, 0xf

    invoke-direct {v0, v1, v15}, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$PersoSubState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$PersoSubState;->PERSOSUBSTATE_RUIM_HRPD:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$PersoSubState;

    .line 87
    new-instance v0, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$PersoSubState;

    const-string v1, "PERSOSUBSTATE_RUIM_CORPORATE"

    const/16 v15, 0x10

    invoke-direct {v0, v1, v15}, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$PersoSubState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$PersoSubState;->PERSOSUBSTATE_RUIM_CORPORATE:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$PersoSubState;

    .line 88
    new-instance v0, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$PersoSubState;

    const-string v1, "PERSOSUBSTATE_RUIM_SERVICE_PROVIDER"

    const/16 v15, 0x11

    invoke-direct {v0, v1, v15}, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$PersoSubState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$PersoSubState;->PERSOSUBSTATE_RUIM_SERVICE_PROVIDER:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$PersoSubState;

    .line 89
    new-instance v0, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$PersoSubState;

    const-string v1, "PERSOSUBSTATE_RUIM_RUIM"

    const/16 v15, 0x12

    invoke-direct {v0, v1, v15}, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$PersoSubState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$PersoSubState;->PERSOSUBSTATE_RUIM_RUIM:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$PersoSubState;

    .line 90
    new-instance v0, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$PersoSubState;

    const-string v1, "PERSOSUBSTATE_RUIM_NETWORK1_PUK"

    const/16 v15, 0x13

    invoke-direct {v0, v1, v15}, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$PersoSubState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$PersoSubState;->PERSOSUBSTATE_RUIM_NETWORK1_PUK:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$PersoSubState;

    .line 91
    new-instance v0, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$PersoSubState;

    const-string v1, "PERSOSUBSTATE_RUIM_NETWORK2_PUK"

    const/16 v15, 0x14

    invoke-direct {v0, v1, v15}, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$PersoSubState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$PersoSubState;->PERSOSUBSTATE_RUIM_NETWORK2_PUK:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$PersoSubState;

    .line 92
    new-instance v0, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$PersoSubState;

    const-string v1, "PERSOSUBSTATE_RUIM_HRPD_PUK"

    const/16 v15, 0x15

    invoke-direct {v0, v1, v15}, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$PersoSubState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$PersoSubState;->PERSOSUBSTATE_RUIM_HRPD_PUK:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$PersoSubState;

    .line 93
    new-instance v0, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$PersoSubState;

    const-string v1, "PERSOSUBSTATE_RUIM_CORPORATE_PUK"

    const/16 v15, 0x16

    invoke-direct {v0, v1, v15}, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$PersoSubState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$PersoSubState;->PERSOSUBSTATE_RUIM_CORPORATE_PUK:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$PersoSubState;

    .line 94
    new-instance v0, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$PersoSubState;

    const-string v1, "PERSOSUBSTATE_RUIM_SERVICE_PROVIDER_PUK"

    const/16 v15, 0x17

    invoke-direct {v0, v1, v15}, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$PersoSubState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$PersoSubState;->PERSOSUBSTATE_RUIM_SERVICE_PROVIDER_PUK:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$PersoSubState;

    .line 95
    new-instance v0, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$PersoSubState;

    const-string v1, "PERSOSUBSTATE_RUIM_RUIM_PUK"

    const/16 v15, 0x18

    invoke-direct {v0, v1, v15}, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$PersoSubState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$PersoSubState;->PERSOSUBSTATE_RUIM_RUIM_PUK:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$PersoSubState;

    .line 96
    new-instance v0, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$PersoSubState;

    const-string v1, "PERSOSUBSTATE_SIM_SPN"

    const/16 v15, 0x19

    const/16 v14, 0x64

    invoke-direct {v0, v1, v15, v14}, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$PersoSubState;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$PersoSubState;->PERSOSUBSTATE_SIM_SPN:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$PersoSubState;

    .line 97
    new-instance v0, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$PersoSubState;

    const-string v1, "PERSOSUBSTATE_SIM_SPN_PUK"

    const/16 v14, 0x1a

    const/16 v15, 0x65

    invoke-direct {v0, v1, v14, v15}, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$PersoSubState;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$PersoSubState;->PERSOSUBSTATE_SIM_SPN_PUK:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$PersoSubState;

    .line 98
    new-instance v0, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$PersoSubState;

    const-string v1, "PERSOSUBSTATE_SIM_SP_EHPLMN"

    const/16 v14, 0x1b

    const/16 v15, 0x66

    invoke-direct {v0, v1, v14, v15}, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$PersoSubState;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$PersoSubState;->PERSOSUBSTATE_SIM_SP_EHPLMN:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$PersoSubState;

    .line 99
    new-instance v0, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$PersoSubState;

    const-string v1, "PERSOSUBSTATE_SIM_SP_EHPLMN_PUK"

    const/16 v14, 0x1c

    const/16 v15, 0x67

    invoke-direct {v0, v1, v14, v15}, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$PersoSubState;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$PersoSubState;->PERSOSUBSTATE_SIM_SP_EHPLMN_PUK:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$PersoSubState;

    .line 100
    new-instance v0, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$PersoSubState;

    const-string v1, "PERSOSUBSTATE_SIM_ICCID"

    const/16 v14, 0x1d

    const/16 v15, 0x68

    invoke-direct {v0, v1, v14, v15}, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$PersoSubState;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$PersoSubState;->PERSOSUBSTATE_SIM_ICCID:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$PersoSubState;

    .line 101
    new-instance v0, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$PersoSubState;

    const-string v1, "PERSOSUBSTATE_SIM_ICCID_PUK"

    const/16 v14, 0x1e

    const/16 v15, 0x69

    invoke-direct {v0, v1, v14, v15}, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$PersoSubState;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$PersoSubState;->PERSOSUBSTATE_SIM_ICCID_PUK:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$PersoSubState;

    .line 102
    new-instance v0, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$PersoSubState;

    const-string v1, "PERSOSUBSTATE_SIM_IMPI"

    const/16 v14, 0x1f

    const/16 v15, 0x6a

    invoke-direct {v0, v1, v14, v15}, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$PersoSubState;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$PersoSubState;->PERSOSUBSTATE_SIM_IMPI:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$PersoSubState;

    .line 103
    new-instance v0, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$PersoSubState;

    const-string v1, "PERSOSUBSTATE_SIM_IMPI_PUK"

    const/16 v14, 0x20

    const/16 v15, 0x6b

    invoke-direct {v0, v1, v14, v15}, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$PersoSubState;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$PersoSubState;->PERSOSUBSTATE_SIM_IMPI_PUK:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$PersoSubState;

    .line 104
    new-instance v0, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$PersoSubState;

    const-string v1, "PERSOSUBSTATE_SIM_NS_SP"

    const/16 v14, 0x21

    const/16 v15, 0x6c

    invoke-direct {v0, v1, v14, v15}, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$PersoSubState;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$PersoSubState;->PERSOSUBSTATE_SIM_NS_SP:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$PersoSubState;

    .line 105
    new-instance v0, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$PersoSubState;

    const-string v1, "PERSOSUBSTATE_SIM_NS_SP_PUK"

    const/16 v14, 0x22

    const/16 v15, 0x6d

    invoke-direct {v0, v1, v14, v15}, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$PersoSubState;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$PersoSubState;->PERSOSUBSTATE_SIM_NS_SP_PUK:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$PersoSubState;

    .line 70
    const/16 v0, 0x23

    new-array v0, v0, [Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$PersoSubState;

    sget-object v1, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$PersoSubState;->PERSOSUBSTATE_UNKNOWN:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$PersoSubState;

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$PersoSubState;->PERSOSUBSTATE_IN_PROGRESS:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$PersoSubState;

    aput-object v1, v0, v3

    sget-object v1, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$PersoSubState;->PERSOSUBSTATE_READY:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$PersoSubState;

    aput-object v1, v0, v4

    sget-object v1, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$PersoSubState;->PERSOSUBSTATE_SIM_NETWORK:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$PersoSubState;

    aput-object v1, v0, v5

    sget-object v1, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$PersoSubState;->PERSOSUBSTATE_SIM_NETWORK_SUBSET:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$PersoSubState;

    aput-object v1, v0, v6

    sget-object v1, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$PersoSubState;->PERSOSUBSTATE_SIM_CORPORATE:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$PersoSubState;

    aput-object v1, v0, v7

    sget-object v1, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$PersoSubState;->PERSOSUBSTATE_SIM_SERVICE_PROVIDER:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$PersoSubState;

    aput-object v1, v0, v8

    sget-object v1, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$PersoSubState;->PERSOSUBSTATE_SIM_SIM:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$PersoSubState;

    aput-object v1, v0, v9

    sget-object v1, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$PersoSubState;->PERSOSUBSTATE_SIM_NETWORK_PUK:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$PersoSubState;

    aput-object v1, v0, v10

    sget-object v1, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$PersoSubState;->PERSOSUBSTATE_SIM_NETWORK_SUBSET_PUK:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$PersoSubState;

    aput-object v1, v0, v11

    sget-object v1, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$PersoSubState;->PERSOSUBSTATE_SIM_CORPORATE_PUK:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$PersoSubState;

    aput-object v1, v0, v12

    sget-object v1, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$PersoSubState;->PERSOSUBSTATE_SIM_SERVICE_PROVIDER_PUK:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$PersoSubState;

    aput-object v1, v0, v13

    sget-object v1, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$PersoSubState;->PERSOSUBSTATE_SIM_SIM_PUK:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$PersoSubState;

    const/16 v2, 0xc

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$PersoSubState;->PERSOSUBSTATE_RUIM_NETWORK1:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$PersoSubState;

    const/16 v2, 0xd

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$PersoSubState;->PERSOSUBSTATE_RUIM_NETWORK2:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$PersoSubState;

    const/16 v2, 0xe

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$PersoSubState;->PERSOSUBSTATE_RUIM_HRPD:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$PersoSubState;

    const/16 v2, 0xf

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$PersoSubState;->PERSOSUBSTATE_RUIM_CORPORATE:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$PersoSubState;

    const/16 v2, 0x10

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$PersoSubState;->PERSOSUBSTATE_RUIM_SERVICE_PROVIDER:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$PersoSubState;

    const/16 v2, 0x11

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$PersoSubState;->PERSOSUBSTATE_RUIM_RUIM:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$PersoSubState;

    const/16 v2, 0x12

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$PersoSubState;->PERSOSUBSTATE_RUIM_NETWORK1_PUK:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$PersoSubState;

    const/16 v2, 0x13

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$PersoSubState;->PERSOSUBSTATE_RUIM_NETWORK2_PUK:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$PersoSubState;

    const/16 v2, 0x14

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$PersoSubState;->PERSOSUBSTATE_RUIM_HRPD_PUK:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$PersoSubState;

    const/16 v2, 0x15

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$PersoSubState;->PERSOSUBSTATE_RUIM_CORPORATE_PUK:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$PersoSubState;

    const/16 v2, 0x16

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$PersoSubState;->PERSOSUBSTATE_RUIM_SERVICE_PROVIDER_PUK:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$PersoSubState;

    const/16 v2, 0x17

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$PersoSubState;->PERSOSUBSTATE_RUIM_RUIM_PUK:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$PersoSubState;

    const/16 v2, 0x18

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$PersoSubState;->PERSOSUBSTATE_SIM_SPN:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$PersoSubState;

    const/16 v2, 0x19

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$PersoSubState;->PERSOSUBSTATE_SIM_SPN_PUK:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$PersoSubState;

    const/16 v2, 0x1a

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$PersoSubState;->PERSOSUBSTATE_SIM_SP_EHPLMN:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$PersoSubState;

    const/16 v2, 0x1b

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$PersoSubState;->PERSOSUBSTATE_SIM_SP_EHPLMN_PUK:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$PersoSubState;

    const/16 v2, 0x1c

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$PersoSubState;->PERSOSUBSTATE_SIM_ICCID:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$PersoSubState;

    const/16 v2, 0x1d

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$PersoSubState;->PERSOSUBSTATE_SIM_ICCID_PUK:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$PersoSubState;

    const/16 v2, 0x1e

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$PersoSubState;->PERSOSUBSTATE_SIM_IMPI:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$PersoSubState;

    const/16 v2, 0x1f

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$PersoSubState;->PERSOSUBSTATE_SIM_IMPI_PUK:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$PersoSubState;

    const/16 v2, 0x20

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$PersoSubState;->PERSOSUBSTATE_SIM_NS_SP:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$PersoSubState;

    const/16 v2, 0x21

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$PersoSubState;->PERSOSUBSTATE_SIM_NS_SP_PUK:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$PersoSubState;

    const/16 v2, 0x22

    aput-object v1, v0, v2

    sput-object v0, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$PersoSubState;->$VALUES:[Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$PersoSubState;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 113
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 114
    invoke-virtual {p0}, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$PersoSubState;->ordinal()I

    move-result p1

    iput p1, p0, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$PersoSubState;->State:I

    .line 115
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .param p3, "state"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 109
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 110
    iput p3, p0, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$PersoSubState;->State:I

    .line 111
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$PersoSubState;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 70
    const-class v0, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$PersoSubState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$PersoSubState;

    return-object v0
.end method

.method public static values()[Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$PersoSubState;
    .locals 1

    .line 70
    sget-object v0, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$PersoSubState;->$VALUES:[Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$PersoSubState;

    invoke-virtual {v0}, [Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$PersoSubState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$PersoSubState;

    return-object v0
.end method


# virtual methods
.method public getState()I
    .locals 1

    .line 118
    iget v0, p0, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$PersoSubState;->State:I

    return v0
.end method

.method isPersoSubStateUnknown()Z
    .locals 1

    .line 122
    sget-object v0, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$PersoSubState;->PERSOSUBSTATE_UNKNOWN:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$PersoSubState;

    if-ne p0, v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
