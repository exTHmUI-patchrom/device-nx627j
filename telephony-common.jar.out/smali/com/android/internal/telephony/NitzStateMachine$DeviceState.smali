.class public Lcom/android/internal/telephony/NitzStateMachine$DeviceState;
.super Ljava/lang/Object;
.source "NitzStateMachine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/NitzStateMachine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DeviceState"
.end annotation


# static fields
.field private static final NITZ_UPDATE_DIFF_DEFAULT:I = 0x7d0

.field private static final NITZ_UPDATE_SPACING_DEFAULT:I = 0x927c0


# instance fields
.field private final mCr:Landroid/content/ContentResolver;

.field private final mNitzUpdateDiff:I

.field private final mNitzUpdateSpacing:I

.field private final mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

.field private final mTelephonyManager:Landroid/telephony/TelephonyManager;


# direct methods
.method public constructor <init>(Lcom/android/internal/telephony/GsmCdmaPhone;)V
    .locals 3
    .param p1, "phone"    # Lcom/android/internal/telephony/GsmCdmaPhone;

    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 64
    iput-object p1, p0, Lcom/android/internal/telephony/NitzStateMachine$DeviceState;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    .line 66
    invoke-virtual {p1}, Lcom/android/internal/telephony/GsmCdmaPhone;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 67
    .local v0, "context":Landroid/content/Context;
    const-string v1, "phone"

    .line 68
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/TelephonyManager;

    iput-object v1, p0, Lcom/android/internal/telephony/NitzStateMachine$DeviceState;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    .line 69
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/telephony/NitzStateMachine$DeviceState;->mCr:Landroid/content/ContentResolver;

    .line 70
    const-string v1, "ro.nitz_update_spacing"

    .line 71
    const v2, 0x927c0

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/android/internal/telephony/NitzStateMachine$DeviceState;->mNitzUpdateSpacing:I

    .line 72
    const-string v1, "ro.nitz_update_diff"

    .line 73
    const/16 v2, 0x7d0

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/android/internal/telephony/NitzStateMachine$DeviceState;->mNitzUpdateDiff:I

    .line 74
    return-void
.end method


# virtual methods
.method public getIgnoreNitz()Z
    .locals 2

    .line 97
    const-string v0, "gsm.ignore-nitz"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 98
    .local v0, "ignoreNitz":Ljava/lang/String;
    if-eqz v0, :cond_0

    const-string v1, "yes"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public getNetworkCountryIsoForPhone()Ljava/lang/String;
    .locals 2

    .line 102
    iget-object v0, p0, Lcom/android/internal/telephony/NitzStateMachine$DeviceState;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    iget-object v1, p0, Lcom/android/internal/telephony/NitzStateMachine$DeviceState;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    invoke-virtual {v1}, Lcom/android/internal/telephony/GsmCdmaPhone;->getPhoneId()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/telephony/TelephonyManager;->getNetworkCountryIsoForPhone(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getNitzUpdateDiffMillis()I
    .locals 3

    .line 90
    iget-object v0, p0, Lcom/android/internal/telephony/NitzStateMachine$DeviceState;->mCr:Landroid/content/ContentResolver;

    const-string v1, "nitz_update_diff"

    iget v2, p0, Lcom/android/internal/telephony/NitzStateMachine$DeviceState;->mNitzUpdateDiff:I

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public getNitzUpdateSpacingMillis()I
    .locals 3

    .line 81
    iget-object v0, p0, Lcom/android/internal/telephony/NitzStateMachine$DeviceState;->mCr:Landroid/content/ContentResolver;

    const-string v1, "nitz_update_spacing"

    iget v2, p0, Lcom/android/internal/telephony/NitzStateMachine$DeviceState;->mNitzUpdateSpacing:I

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    return v0
.end method
