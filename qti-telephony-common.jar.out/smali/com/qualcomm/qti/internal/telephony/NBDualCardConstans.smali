.class public Lcom/qualcomm/qti/internal/telephony/NBDualCardConstans;
.super Ljava/lang/Object;
.source "NBDualCardConstans.java"


# static fields
.field public static final ACTION_CHANGE_PRIMARY:Ljava/lang/String; = "android.phone.action.CHANGE.PRIMARY"

.field public static final ACTION_UICC_MANUAL_PROVISION_STATUS_CHANGED:Ljava/lang/String; = "org.codeaurora.intent.action.ACTION_UICC_MANUAL_PROVISION_STATUS_CHANGED"

.field public static final DUMMY_SUB_ID_BASE:I = 0x7ffffffb

.field public static final NUBIA_SMART_SELECTION:Ljava/lang/String; = "nubia_smart_selection"

.field public static final PHONE_COUNT:I

.field public static final SIM_NOT_INSERT:Ljava/lang/String; = "N/A"

.field public static final SIM_NOT_PROVISIONED:Ljava/lang/String; = "SIM_NOT_PROVISIONED"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 10
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getPhoneCount()I

    move-result v0

    sput v0, Lcom/qualcomm/qti/internal/telephony/NBDualCardConstans;->PHONE_COUNT:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
