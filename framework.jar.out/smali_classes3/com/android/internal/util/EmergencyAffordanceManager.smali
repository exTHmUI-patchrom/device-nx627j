.class public Lcom/android/internal/util/EmergencyAffordanceManager;
.super Ljava/lang/Object;
.source "EmergencyAffordanceManager.java"


# static fields
.field private static final EMERGENCY_CALL_NUMBER_SETTING:Ljava/lang/String; = "emergency_affordance_number"

.field public static final ENABLED:Z = true

.field private static final FORCE_EMERGENCY_AFFORDANCE_SETTING:Ljava/lang/String; = "force_emergency_affordance"


# instance fields
.field private final mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    iput-object p1, p0, Lcom/android/internal/util/EmergencyAffordanceManager;->mContext:Landroid/content/Context;

    .line 48
    return-void
.end method

.method private forceShowing()Z
    .locals 3

    .line 97
    iget-object v0, p0, Lcom/android/internal/util/EmergencyAffordanceManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "force_emergency_affordance"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v2, 0x1

    nop

    :cond_0
    return v2
.end method

.method private static getPhoneUri(Landroid/content/Context;)Landroid/net/Uri;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .line 58
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x1040137

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 60
    .local v0, "number":Ljava/lang/String;
    sget-boolean v1, Landroid/os/Build;->IS_DEBUGGABLE:Z

    if-eqz v1, :cond_0

    .line 61
    nop

    .line 62
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "emergency_affordance_number"

    .line 61
    invoke-static {v1, v2}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 63
    .local v1, "override":Ljava/lang/String;
    if-eqz v1, :cond_0

    .line 64
    move-object v0, v1

    .line 67
    .end local v1    # "override":Ljava/lang/String;
    :cond_0
    const-string v1, "tel"

    const/4 v2, 0x0

    invoke-static {v1, v0, v2}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    return-object v1
.end method

.method private isEmergencyAffordanceNeeded()Z
    .locals 3

    .line 91
    iget-object v0, p0, Lcom/android/internal/util/EmergencyAffordanceManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "emergency_affordance_needed"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v2, 0x1

    nop

    :cond_0
    return v2
.end method

.method private static performEmergencyCall(Landroid/content/Context;)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .line 71
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.CALL_EMERGENCY"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 72
    .local v0, "intent":Landroid/content/Intent;
    invoke-static {p0}, Lcom/android/internal/util/EmergencyAffordanceManager;->getPhoneUri(Landroid/content/Context;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 73
    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 74
    sget-object v1, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 75
    return-void
.end method


# virtual methods
.method public needsEmergencyAffordance()Z
    .locals 1

    .line 84
    invoke-direct {p0}, Lcom/android/internal/util/EmergencyAffordanceManager;->forceShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 85
    const/4 v0, 0x1

    return v0

    .line 87
    :cond_0
    invoke-direct {p0}, Lcom/android/internal/util/EmergencyAffordanceManager;->isEmergencyAffordanceNeeded()Z

    move-result v0

    return v0
.end method

.method public final performEmergencyCall()V
    .locals 1

    .line 54
    iget-object v0, p0, Lcom/android/internal/util/EmergencyAffordanceManager;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/internal/util/EmergencyAffordanceManager;->performEmergencyCall(Landroid/content/Context;)V

    .line 55
    return-void
.end method
